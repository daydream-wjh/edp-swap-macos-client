#!/usr/bin/env python3
"""End-to-end tests for the patched edp-mount against a synthetic device.
Never touches the real USB disk."""
import os, sys, json, time, struct, subprocess, shutil

BASE = '/tmp/edp-synth-test'
DEV = BASE + '/device.raw'
WORK = BASE + '/work'
BIN = '/tmp/edp-universal-new'
REAL_WORK = '/Users/daydream/Desktop/u-macos-usb-bot-scsi-linux/work'
sys.path.insert(0, REAL_WORK)
from sm4_native import crypt as sm4
from mirror_core import ExfatLayout

meta = dict(kv.split('=') for kv in open(BASE + '/meta.txt').read().split())
VOL_SIZE = int(meta['VOL_SIZE']); DEV_SIZE = int(meta['DEV_SIZE'])
EX_OFF = int(meta['EX_OFF']); PW = meta['PASSWORD']; KEY = bytes(range(16))
PASS, FAIL = [], []

def check(name, cond, detail=''):
    (PASS if cond else FAIL).append(name)
    print(('PASS ' if cond else 'FAIL ') + name + (('  ' + detail) if detail else ''), flush=True)

def read_state():
    for _ in range(30):
        try:
            return json.load(open(WORK + '/state.json'))
        except Exception:
            time.sleep(0.05)
    return {}

def launch(tag):
    os.makedirs(WORK, exist_ok=True)
    logpath = '%s/daemon-%s.log' % (BASE, tag)
    logf = open(logpath, 'wb')
    p = subprocess.Popen([BIN, 'mount', DEV, WORK, str(DEV_SIZE)],
                         stdin=subprocess.PIPE, stdout=logf, stderr=logf)
    p.stdin.write((PW + '\n').encode())
    p.stdin.close()
    return p, logpath

def wait_mounted(p, logpath, timeout=240):
    t0 = time.time()
    while time.time() - t0 < timeout:
        if p.poll() is not None:
            raise RuntimeError('daemon exited: ' + open(logpath, 'rb').read().decode('utf-8', 'replace'))
        s = read_state()
        mp = s.get('mountpoint', '')
        if s.get('running') is True and mp and os.path.isdir(mp):
            return mp
        time.sleep(0.2)
    raise TimeoutError('mount timeout')

def ctl(cmd):
    open(WORK + '/ctrl', 'w').write(cmd + '\n')

def wait_phase(prefixes, timeout=300):
    t0 = time.time()
    while time.time() - t0 < timeout:
        s = read_state()
        ph = s.get('phase', '')
        for pre in prefixes:
            if ph.startswith(pre):
                return s
        time.sleep(0.1)
    raise TimeoutError('phase timeout: ' + json.dumps(read_state(), ensure_ascii=False))

def stop(p, cmd):
    if p.poll() is None:
        ctl(cmd)
        try:
            p.wait(timeout=60)
        except subprocess.TimeoutExpired:
            p.kill(); p.wait()

def slice_vol(path):
    b = open(path, 'rb').read()
    off = struct.unpack_from('<I', b, 454)[0] * 512
    return b[off:off + VOL_SIZE], off

def used_ranges(img):
    lay = ExfatLayout(lambda o, n: img[o:o + n], VOL_SIZE)
    return list(lay.ranges())

def diff_offsets(img, base, ranges):
    out = []
    for start, n in ranges:
        for off in range(start, start + n, 512):
            if img[off:off + 512] != base[off:off + 512]:
                out.append(off)
    return out

def verify_subcmd():
    r = subprocess.run([BIN, 'verify', DEV, WORK, str(DEV_SIZE)],
                       input=(PW + '\n').encode(), capture_output=True)
    return r.stdout.decode('utf-8', 'replace') + r.stderr.decode('utf-8', 'replace')

def device_matches(img_cipher, ranges):
    dev = open(DEV, 'rb').read()
    for start, n in ranges:
        if dev[EX_OFF + start:EX_OFF + start + n] != img_cipher[start:start + n]:
            return False
    return True

# ---------- fresh work dir ----------
if os.path.isdir(WORK):
    shutil.rmtree(WORK)
os.makedirs(WORK)
open(WORK + '/autosave', 'w').write('0')   # 关闭自动保存，测试中手动控制
open(WORK + '/autosave.conf', 'w').write('off\n')

# ---------- 1. mount & basic save ----------
p, lg = launch('1')
mp = wait_mounted(p, lg)
check('mount synthetic volume', True, mp)
open(mp + '/synth-test-1.txt', 'w').write('hello one\n')
ctl('save')
s = wait_phase(('已加密保存', '保存未完成'))
check('basic save completed', s.get('phase', '').startswith('已加密保存'), s.get('phase', ''))
check('post-save verify has 0 diffs', '差异扇区数: 0' in verify_subcmd())

# ---------- 2. create big + small files, quit without saving ----------
big = mp + '/big.bin'
with open(big, 'wb') as f:
    f.write(os.urandom(24 * 1024 * 1024))
open(mp + '/b.txt', 'w').write('v1\n')
time.sleep(0.5)
stop(p, 'discard')
check('discard quit (unsaved edits kept in workspace)',
      os.path.exists(WORK + '/工作镜像.raw') and os.path.exists(WORK + '/基线镜像.raw'))

# ---------- 3. simulated crash mid-save ----------
img, _ = slice_vol(WORK + '/工作镜像.raw')
base, _ = slice_vol(WORK + '/基线镜像.raw')
ranges = used_ranges(img)
base_layout = ExfatLayout(lambda o, n: base[o:o + n], VOL_SIZE)
def old_used(off):
    if off < base_layout.heap:
        return True
    c = (off - base_layout.heap) // base_layout.cs + 2
    return c < base_layout.count + 2 and base_layout.used(c)
# 与工具一致：内容变化，或基线中空闲、本次新分配的扇区，都要写回
changed = []
for start, n in ranges:
    for off in range(start, start + n, 512):
        if img[off:off + 512] != base[off:off + 512] or not old_used(off):
            changed.append(off)
check('workspace has unsaved edits', len(changed) > 1000, 'changed sectors=%d' % len(changed))
after_full = sm4(img, KEY, False)
before_full = sm4(base, KEY, False)
with open(DEV, 'r+b') as f:
    for i, off in enumerate(changed):
        if i % 2 == 0:                      # 模拟只写了一半就断电
            f.seek(EX_OFF + off)
            f.write(after_full[off:off + 512])
jdir = WORK + '/回滚记录'
os.makedirs(jdir, exist_ok=True)
jpath = jdir + '/test-crash-%d.jrn' % int(time.time())
open(jpath, 'wb').write(b'EDPJRN02' + struct.pack('<I', len(changed)) +
                        b''.join(struct.pack('<Q', o) for o in changed))
check('crafted crash journal written', True, '%d sectors' % len(changed))

# ---------- 4. recovery on next mount ----------
p, lg = launch('2')
mp = wait_mounted(p, lg)
log2 = open(lg, 'rb').read().decode('utf-8', 'replace')
check('recovery rolled back unfinished journal', '已回滚未完成的写回' in log2)
check('journal archived as .rolledback', os.path.exists(jpath + '.rolledback'))
img2, _ = slice_vol(WORK + '/工作镜像.raw')
base2, _ = slice_vol(WORK + '/基线镜像.raw')
before2 = sm4(base2, KEY, False)
# 崩溃回滚保证的是「基线已分配的扇区」回到写前状态；基线中空闲的新簇内容本就不重要
check('device baseline-used ranges restored', device_matches(before2, used_ranges(base2)))
check('workspace edits preserved (big.bin visible)',
      os.path.exists(mp + '/big.bin') and os.path.getsize(mp + '/big.bin') == 24 * 1024 * 1024)
check('post-recovery verify has 0 diffs', '差异扇区数: 0' in verify_subcmd())

# ---------- 5. re-save preserved edits ----------
ctl('save')
s = wait_phase(('已加密保存', '保存未完成'))
check('re-save after recovery completed', s.get('phase', '').startswith('已加密保存'), s.get('phase', ''))
check('device now holds the preserved edits', '差异扇区数: 0' in verify_subcmd())

# ---------- 6. edit during save must not be swallowed ----------
with open(mp + '/big.bin', 'wb') as f:
    f.write(os.urandom(24 * 1024 * 1024))
ctl('save')
t0 = time.time()
while time.time() - t0 < 20:
    if read_state().get('phase', '').startswith('正在保存'):
        break
    time.sleep(0.02)
open(mp + '/b.txt', 'w').write('v2-mid-save\n')
s = wait_phase(('已加密保存', '保存未完成'))
# 把卷缓存强制刷到镜像文件后，再与基线比较（基线是保存开始时的快照）
subprocess.run(['/bin/sync'], check=False)
time.sleep(0.5)
img3, _ = slice_vol(WORK + '/工作镜像.raw')
base3, _ = slice_vol(WORK + '/基线镜像.raw')
changed3 = diff_offsets(img3, base3, used_ranges(img3))
dev_plain_now = sm4(open(DEV, 'rb').read()[EX_OFF:EX_OFF + VOL_SIZE], KEY, True)
if len(changed3) > 0:
    check('mid-save edit not lost', True, 'preserved as diff (%d sectors)' % len(changed3))
else:
    # 编辑已被本轮保存一起写入设备，同样没有丢失
    check('mid-save edit not lost', b'v2-mid-save' in dev_plain_now, 'saved in same pass')
ctl('save')
s = wait_phase(('已加密保存', '保存未完成'))
check('second save persists mid-save edit', s.get('phase', '').startswith('已加密保存'))
check('final verify has 0 diffs', '差异扇区数: 0' in verify_subcmd())
dev_plain = sm4(open(DEV, 'rb').read()[EX_OFF:EX_OFF + VOL_SIZE], KEY, True)
check('device plaintext contains mid-save content', b'v2-mid-save' in dev_plain)
stop(p, 'quit')

# ---------- 7. stale journal (device already baseline) ----------
stale = jdir + '/test-stale-%d.jrn' % int(time.time())
open(stale, 'wb').write(b'EDPJRN02' + struct.pack('<I', 1) + struct.pack('<Q', 0))
p, lg = launch('3')
mp = wait_mounted(p, lg)
check('stale journal archived as .stale', os.path.exists(stale + '.stale'))
stop(p, 'quit')

# ---------- 8. mismatched journal must abort without touching device ----------
dev_all = open(DEV, 'rb').read()
orig0 = dev_all[EX_OFF:EX_OFF + 512]
with open(DEV, 'r+b') as f:
    f.seek(EX_OFF)
    f.write(bytes([0xA5]) * 512)           # 与基线、镜像都对不上
bad = jdir + '/test-mismatch-%d.jrn' % int(time.time())
open(bad, 'wb').write(b'EDPJRN02' + struct.pack('<I', 1) + struct.pack('<Q', 0))
p, lg = launch('4')
try:
    rc = p.wait(timeout=120)
except subprocess.TimeoutExpired:
    p.kill(); rc = None
log4 = open(lg, 'rb').read().decode('utf-8', 'replace')
check('mismatched journal aborts mount', rc == 1, 'exit=%s' % rc)
check('mismatch error message', '未完成写回日志与设备内容不符' in log4)
still = open(DEV, 'rb').read()[EX_OFF:EX_OFF + 512]
check('device not modified on mismatch abort', still == bytes([0xA5]) * 512)
# 恢复现场
with open(DEV, 'r+b') as f:
    f.seek(EX_OFF)
    f.write(orig0)
os.remove(bad)

print('\n==== RESULT: %d passed, %d failed ====' % (len(PASS), len(FAIL)))
if FAIL:
    print('FAILED:', FAIL)
sys.exit(1 if FAIL else 0)
