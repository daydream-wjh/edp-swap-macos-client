#!/usr/bin/env python3
"""Isolated syncToDevice regression; macOS + swiftc, no mounts or privileges.

Run only AFTER the synthetic suite has stopped and left its 24 MiB big.bin.
Reads the fixture; all compilation, instrumentation and writes use a private
temporary directory. Does not read meta.txt, credentials, or the keychain.
The password/key below belong exclusively to gen_synthetic_device.py's fixture.
"""
import argparse
import hashlib
import json
from pathlib import Path
import shutil
import stat
import subprocess
import sys
import tempfile


INSTRUMENTATION = r'''
var rtDevice: Int32 = -1
var rtInject = false
var rtInjected = false
var rtWrites: [(UInt64, [UInt8])] = []
var rtEvents: [[String: Any]] = []

func preadAll(_ fd: Int32, _ n: Int, _ off: UInt64) -> [UInt8] {
    var data = rtOriginalPreadAll(fd, n, off)
    if fd == rtDevice && !rtWrites.isEmpty {
        // Preflight source reads precede every write and are deliberately excluded.
        var injected = false
        if rtInject && !rtInjected && !data.isEmpty {
            data[0] ^= 1
            rtInjected = true
            injected = true
        }
        var matches = false
        // Compare against the most recent write fully containing this read.
        for (start, bytes) in rtWrites.reversed() {
            if off >= start && off - start <= UInt64(bytes.count) {
                let local = Int(off - start)
                if n <= bytes.count - local {
                    matches = data.count == n && data == Array(bytes[local..<local+n])
                    break
                }
            }
        }
        rtEvents.append(["kind": "read", "offset": off, "length": n,
                         "actual": data.count, "matches": matches, "injected": injected])
    }
    return data
}

@discardableResult
func pwriteAll(_ fd: Int32, _ data: [UInt8], _ off: UInt64) -> Bool {
    let ok = rtOriginalPwriteAll(fd, data, off)
    if fd == rtDevice {
        rtEvents.append(["kind": "write", "offset": off, "length": data.count, "ok": ok])
        if ok { rtWrites.append((off, data)) }
    }
    return ok
}
'''


HARNESS = r'''
func rtRequire(_ condition: Bool, _ message: String) throws {
    if !condition { throw Err("TEST: " + message) }
}

// Exclude every root-directory and allocation-bitmap cluster, not just their heads.
func rtMetadata(_ layout: ExfatLayout) throws -> [(UInt64, UInt64)] {
    func chain(_ first: UInt32, _ limit: Int?) throws -> [UInt32] {
        var result: [UInt32] = [], seen = Set<UInt32>(), c = first
        while c < 0xfffffff8 {
            try rtRequire(c >= 2 && UInt64(c) < layout.count + 2 && !seen.contains(c),
                          "invalid metadata cluster chain")
            seen.insert(c); result.append(c)
            if let limit = limit, result.count >= limit { break }
            c = layout.nextCluster(c)
        }
        return result
    }
    let roots = try chain(layout.root, nil)
    var clusters = Set(roots)
    var foundBitmap = false
    for c in roots {
        let bytes = layout.readFn(layout.clusterOffset(c), Int(layout.cs))
        try rtRequire(bytes.count == Int(layout.cs), "short root read")
        for i in stride(from: 0, to: bytes.count, by: 32) {
            if bytes[i] == 0x81 {
                let first = u32le(bytes, i + 20), size = u64le(bytes, i + 24)
                let count = Int((size + layout.cs - 1) / layout.cs)
                try rtRequire(count > 0 && UInt64(count) <= layout.count, "invalid bitmap length")
                let bitmap = try chain(first, count)
                try rtRequire(bitmap.count == count, "short bitmap chain")
                clusters.formUnion(bitmap); foundBitmap = true
            }
        }
    }
    try rtRequire(foundBitmap, "bitmap not found")
    return clusters.map { (layout.clusterOffset($0), layout.cs) }
}

do {
    let argv = CommandLine.arguments
    try rtRequire(argv.count == 4, "expected device, work, mode")
    let device = argv[1], work = argv[2], mode = argv[3]
    rtDevice = open(device, O_RDWR)
    try rtRequire(rtDevice >= 0, "cannot open private device copy")
    defer { close(rtDevice) }
    let size = deviceSize(rtDevice)
    var volume = try decodeVolume(rtDevice, totalSize: size)
    try unlockVolume(&volume, password: "test-password-123")
    try rtRequire(volume.key == (0..<16).map { UInt8($0) }, "not the synthetic fixture key")
    guard let manifest = readManifest(work),
          let base = RawFile(work + "/基线镜像.raw"),
          let image = RawFile(work + "/工作镜像.raw", write: true) else {
        throw Err("TEST: missing copied fixture files")
    }
    try rtRequire(manifest.size == volume.size && manifest.offset == volume.offset,
                  "manifest geometry differs from fixture")
    let layout = try ExfatLayout(read: { o, n in base.read(manifest.imageOffset + o, n) },
                                 size: volume.size)
    let metadata = try rtMetadata(layout)
    let mib: UInt64 = 1024 * 1024, length: UInt64 = 16 * mib
    var selected: UInt64? = nil
    for (start, count) in layout.ranges() where start >= layout.heap && count >= 20 * mib {
        let candidate = start + 4 * mib
        if metadata.allSatisfy({ candidate + length <= $0.0 || candidate >= $0.0 + $0.1 }) {
            selected = candidate; break
        }
    }
    guard let start = selected else {
        throw Err("TEST: need allocated 20 MiB contiguous range away from root/bitmap; finish synthetic suite first")
    }
    let original = base.read(manifest.imageOffset + start, Int(length))
    try rtRequire(original.count == Int(length), "short baseline data")
    let mutated = original.map { $0 ^ 0xa5 } // Every byte/sector differs; exactly 16 MiB.
    try rtRequire(image.write(mutated, manifest.imageOffset + start), "mutation write failed")
    try rtRequire(fsync(image.fd) == 0, "mutation fsync failed")
    rtInject = mode == "corrupt"
    var result: [String: Any] = [:], failure = ""
    do {
        result = try syncToDevice(fd: rtDevice, vol: volume, work: work,
                                  m: manifest, progress: { _, _ in })
    } catch { failure = String(describing: error) }
    let report: [String: Any] = ["mode": mode, "result": result, "error": failure,
        "injected": rtInjected, "events": rtEvents, "changed_offset": volume.offset + start,
        "expected_bytes": length]
    let data = try JSONSerialization.data(withJSONObject: report, options: [.sortedKeys])
    print(String(data: data, encoding: .utf8)!)
} catch {
    FileHandle.standardError.write(Data((String(describing: error) + "\n").utf8))
    exit(1)
}
'''


def require(condition, message):
    if not condition:
        raise RuntimeError(message)


def digest(path):
    h = hashlib.sha256()
    with path.open('rb') as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b''):
            h.update(block)
    return h.hexdigest()


def regular(path):
    require(stat.S_ISREG(path.lstat().st_mode), f'Expected ordinary file, not symlink/device: {path}')
    require(not path.resolve().is_relative_to('/dev'), f'Device path refused: {path}')


def coverage(events, start, length):
    """Each successful write must have matching, complete subsequent reads."""
    writes = [(i, e) for i, e in enumerate(events) if e['kind'] == 'write']
    require(writes, 'No device writes recorded')
    require(sum(e['length'] for _, e in writes) == length, 'Unexpected total write bytes')
    cursor = start
    for index, write in sorted(writes, key=lambda item: item[1]['offset']):
        require(write['ok'] and write['offset'] == cursor, 'Failed/overlapping/missing write interval')
        end = cursor + write['length']
        reads = sorted((e['offset'], e['offset'] + e['length'])
                       for e in events[index + 1:]
                       if e['kind'] == 'read' and e['matches'] and e['actual'] == e['length'])
        for left, right in reads:
            if left <= cursor < right:
                cursor = min(end, right)
            if cursor == end:
                break
        require(cursor == end, f'Write at {write["offset"]} not fully read back after writing')
    require(cursor == start + length, 'Incomplete coverage')
    return len(writes)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source', type=Path, default=Path(__file__).resolve().parents[2] /
                        'outputs/启动程序源码/edp.swift')
    parser.add_argument('--fixture', type=Path, default=Path('/tmp/edp-synth-test'))
    args = parser.parse_args()
    regular(args.source)
    files = [Path('device.raw')] + [Path('work') / name for name in
             ('工作镜像.raw', '基线镜像.raw', 'manifest.json')]
    for relative in files:
        regular(args.fixture / relative)
    originals = {str(p): digest(args.fixture / p) for p in files}
    require(originals['work/工作镜像.raw'] == originals['work/基线镜像.raw'],
            'Fixture has unsaved edits; stop synthetic suite and finish saving first')
    source = args.source.read_text(encoding='utf-8')
    require(source.count('// 入口') == 1, 'Expected exactly one production entry marker')
    prefix = source.split('// 入口', 1)[0]
    for name in ('preadAll', 'pwriteAll'):
        needle = f'func {name}('
        require(prefix.count(needle) == 1, f'Instrumentation anchor changed: {name}')
        prefix = prefix.replace(needle, f'func rtOriginal{name[0].upper() + name[1:]}(', 1)
    # Runtime-created artifacts are private and deleted on either success or failure.
    with tempfile.TemporaryDirectory(prefix='edp-full-readback-') as temporary:
        root = Path(temporary)
        swift = root / 'main.swift'
        swift.write_text(prefix + '\n' + INSTRUMENTATION + '\n' + HARNESS, encoding='utf-8')
        binary = root / 'harness'
        subprocess.run(['xcrun', 'swiftc', '-O', '-module-cache-path', str(root / 'module-cache'),
                        str(swift), '-o', str(binary)], check=True, timeout=300,
                       stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        for mode in ('success', 'corrupt'):
            case = root / mode
            for relative in files:
                target = case / relative
                target.parent.mkdir(parents=True, exist_ok=True)
                shutil.copyfile(args.fixture / relative, target)
                require(digest(target) == originals[str(relative)], 'Fixture changed during copy')
            device = case / 'device.raw'
            work = case / 'work'
            before = digest(device)
            completed = subprocess.run([str(binary), str(device), str(work), mode],
                                       capture_output=True, text=True, timeout=300, check=True)
            report = json.loads(completed.stdout)
            events = report['events']
            require(report['expected_bytes'] == 16 * 1024 * 1024, 'Wrong mutation length')
            journals = list((work / '回滚记录').iterdir())
            if mode == 'success':
                require(not report['error'], f'Save unexpectedly failed: {report["error"]}')
                result = report['result']
                require(result.get('verified_bytes') == result.get('changed_bytes') == report['expected_bytes'],
                        'verified_bytes/changed_bytes must both equal 16 MiB')
                count = coverage(events, report['changed_offset'], report['expected_bytes'])
                require(digest(device) != before, 'Successful save did not change device')
                require(digest(work / '基线镜像.raw') == digest(work / '工作镜像.raw'),
                        'Baseline not committed to saved image')
                require(len(journals) == 1 and journals[0].name.endswith('.done'), 'Missing done journal')
                print(f'PASS full readback: {count} write intervals, 16777216 verified bytes', flush=True)
            else:
                require(report['injected'] and report['error'], 'Corrupt readback must inject and throw')
                require('回读' in report['error'], f'Failure was not readback failure: {report["error"]}')
                first_read = next(e for e in events if e['kind'] == 'read')
                require(first_read['injected'] and first_read['offset'] == report['changed_offset'],
                        'Injection did not hit first changed-interval readback')
                require(digest(device) == before, 'Rollback did not restore entire device SHA256')
                require(digest(work / '基线镜像.raw') == originals['work/基线镜像.raw'],
                        'Failed save changed baseline')
                require(digest(work / '工作镜像.raw') != originals['work/工作镜像.raw'],
                        'Failed save lost pending edits')
                require(len(journals) == 1 and journals[0].name.endswith('.rolledback'),
                        'Expected one rolledback journal and no pending/done journal')
                print('PASS injected readback failure: throws, full device SHA256 restored, journal rolledback',
                      flush=True)
        for relative in files:
            require(digest(args.fixture / relative) == originals[str(relative)], 'Original fixture changed')
    print('PASS fixture unchanged; private temporary copies removed')


if __name__ == '__main__':
    try:
        main()
    except subprocess.CalledProcessError as exc:
        print(f'FAIL command exited {exc.returncode}\n{exc.stdout or ""}\n{exc.stderr or ""}', file=sys.stderr)
        sys.exit(1)
    except Exception as exc:
        print(f'FAIL {exc}', file=sys.stderr)
        sys.exit(1)
