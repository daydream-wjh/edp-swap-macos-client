#!/usr/bin/env python3
"""Real-USB smoke test for the patched edp-mount. Runs as root (via sudo in the
user's Terminal). Reads the exchange password as the first line of stdin.
Test scope: mount -> create file -> save -> verify -> delete -> save -> verify ->
remount -> confirm originals unchanged. No crash simulation on real data."""
import os, sys, json, time, subprocess, hashlib, shutil, traceback

BIN = '/tmp/edp-universal-new'
WORK = '/tmp/edp-real-test/work'
OUT = '/tmp/edp-real-test'
DEV, SIZE, STARTUP_ID = sys.argv[1], sys.argv[2], sys.argv[3]
PW = sys.stdin.readline().strip().encode()
if not PW:
    try:
        open(OUT + '/no-password.txt', 'w').write('stdin had no password\n')
    except Exception:
        pass
    print('NO-PASSWORD-ON-STDIN'); sys.exit(2)
try:
    open(OUT + '/started.txt', 'w').write('pid=%d pwlen=%d\n' % (os.getpid(), len(PW)))
except Exception:
    pass

passed, failed = [], []
def check(name, cond, detail=''):
    (passed if cond else failed).append(name)
    print(('PASS ' if cond else 'FAIL ') + name + (('  ' + detail) if detail else ''), flush=True)

def read_state():
    for _ in range(30):
        try:
            with open(WORK + '/state.json') as f:
                return json.load(f)
        except Exception:
            time.sleep(0.05)
    return {}

def launch(tag):
    logf = open('%s/daemon-%s.log' % (OUT, tag), 'wb')
    p = subprocess.Popen([BIN, 'mount', DEV, WORK, SIZE], stdin=subprocess.PIPE,
                         stdout=logf, stderr=logf)
    p.stdin.write(PW + b'\n'); p.stdin.close()
    return p, logf.name

def wait_mounted(p, logpath, timeout=240):
    t0 = time.time()
    while time.time() - t0 < timeout:
        if p.poll() is not None:
            raise RuntimeError('daemon exited: ' +
                               open(logpath, 'rb').read().decode('utf-8', 'replace'))
        s = read_state()
        mp = s.get('mountpoint', '')
        if s.get('running') is True and mp and os.path.isdir(mp):
            return mp
        time.sleep(0.2)
    raise TimeoutError('mount timeout')

def ctl(cmd):
    with open(WORK + '/ctrl', 'w') as f:
        f.write(cmd + '\n')

def wait_phase(prefixes, timeout=300):
    t0 = time.time()
    while time.time() - t0 < timeout:
        ph = read_state().get('phase', '')
        for pre in prefixes:
            if ph.startswith(pre):
                return ph
        time.sleep(0.1)
    raise TimeoutError('phase timeout: ' + json.dumps(read_state(), ensure_ascii=False))

def run_verify():
    r = subprocess.run([BIN, 'verify', DEV, WORK, SIZE], input=PW + b'\n',
                       capture_output=True)
    return (r.stdout + r.stderr).decode('utf-8', 'replace')

def remount_startup():
    subprocess.run(['/usr/sbin/diskutil', 'mount', STARTUP_ID], capture_output=True)
    for _ in range(30):
        if os.path.isdir('/Volumes/启动区'):
            return True
        time.sleep(1)
    return False

def snapshot(mp):
    out = {}
    for root, dirs, files in os.walk(mp):
        dirs[:] = [d for d in dirs if not d.startswith('.') and d != 'System Volume Information']
        for f in files:
            if f.startswith('.') or f.startswith('$'):
                continue
            p = os.path.join(root, f)
            try:
                with open(p, 'rb') as fh:
                    out[os.path.relpath(p, mp)] = hashlib.sha256(fh.read()).hexdigest()
            except OSError:
                pass
    return out

def stop(p, cmd='discard'):
    if p.poll() is None:
        ctl(cmd)
        try:
            p.wait(timeout=60)
        except subprocess.TimeoutExpired:
            p.kill(); p.wait()

test_name = 'Codex真盘验证-' + time.strftime('%Y%m%d-%H%M%S') + '.txt'
payload = ('patched edp-mount real-disk smoke test\n' + test_name + '\n').encode()
daemon = None
verifies = {}
try:
    check('startup volume present', os.path.isdir('/Volumes/启动区'))
    check('exchange volume not already mounted', not os.path.isdir('/Volumes/交换区'))

    # ---- session 1 ----
    daemon, lg = launch('1')
    mp = wait_mounted(daemon, lg)
    check('mount real exchange area', True, mp)
    before = snapshot(mp)
    check('original files visible', len(before) > 0, '%d files' % len(before))

    tp = os.path.join(mp, test_name)
    with open(tp, 'wb') as f:
        f.write(payload)
    ctl('save')
    ph = wait_phase(('已加密保存', '保存未完成'))
    check('real save completed', ph.startswith('已加密保存'), ph)
    v = run_verify(); verifies['after_save'] = v
    print('--- verify after save ---\n' + v.strip() + '\n---', flush=True)
    check('device matches baseline after save', '差异扇区数: 0' in v)
    check('test file readable from workspace', open(tp, 'rb').read() == payload)

    os.remove(tp)
    ctl('save')
    ph = wait_phase(('已加密保存', '保存未完成'))
    check('delete save completed', ph.startswith('已加密保存'), ph)
    v = run_verify(); verifies['after_delete'] = v
    print('--- verify after delete ---\n' + v.strip() + '\n---', flush=True)
    check('device matches baseline after delete', '差异扇区数: 0' in v)
    after = snapshot(mp)
    check('original files unchanged', after == before,
          '%d files' % len(after))
    stop(daemon, 'quit'); daemon = None
    v = run_verify(); verifies['after_quit'] = v
    print('--- verify after quit ---\n' + v.strip() + '\n---', flush=True)
    check('device matches baseline after quit', '差异扇区数: 0' in v)

    # ---- session 2: fresh mount from device ----
    daemon, lg = launch('2')
    mp = wait_mounted(daemon, lg)
    check('remount after test files removed', True, mp)
    check('test file gone after remount', not os.path.exists(os.path.join(mp, test_name)))
    check('original file set unchanged after remount', snapshot(mp) == before)
    stop(daemon, 'quit'); daemon = None
except Exception:
    traceback.print_exc()
    failed.append('exception')
finally:
    if daemon is not None:
        try:
            mp = read_state().get('mountpoint', '')
            tp = os.path.join(mp, test_name) if mp else ''
            if tp and os.path.exists(tp):
                os.remove(tp)
                ctl('save')
                wait_phase(('已加密保存', '保存未完成'), timeout=120)
        except Exception:
            pass
        stop(daemon, 'discard')
    ok = remount_startup()
    check('startup volume remounted', ok)
    shutil.rmtree(WORK, ignore_errors=True)
    result = {'passed': passed, 'failed': failed, 'test_file': test_name,
              'files_before': len(before) if 'before' in dir() else None,
              'verify': verifies}
    with open(OUT + '/result.json', 'w') as f:
        json.dump(result, f, ensure_ascii=False, indent=2)
    print('\n==== REAL-DISK RESULT: %d passed, %d failed ====' % (len(passed), len(failed)))
    sys.exit(0 if not failed else 1)
