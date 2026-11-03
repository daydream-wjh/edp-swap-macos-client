#!/usr/bin/env python3
"""Generate a synthetic EDP device image from work/rw-tests/base.raw for testing.
Writes device.raw (raw disk with metadata + SM4-encrypted exchange area) to OUT."""
import sys, os, struct, zlib, hashlib

WORK = '/Users/daydream/Desktop/u-macos-usb-bot-scsi-linux/work'
sys.path.insert(0, WORK)
import native_crypto as nc
from sm4_native import crypt as sm4

OUT = sys.argv[1]
os.makedirs(OUT, exist_ok=True)
raw = open(WORK + '/rw-tests/base.raw', 'rb').read()

FIRST_LBA, LAST_LBA = 40, 124959          # GPT partition 0 (exFAT exchange area)
VOL_OFF = FIRST_LBA * 512
VOL_SIZE = (LAST_LBA - FIRST_LBA + 1) * 512
volume = raw[VOL_OFF:VOL_OFF + VOL_SIZE]
assert volume[3:11] == b'EXFAT   ' and VOL_SIZE % 16 == 0

# 让空闲簇里带脏数据（真实 U 盘就是这样），用于验证「新分配簇必须写回」
from mirror_core import ExfatLayout
_lay = ExfatLayout(lambda o, n: volume[o:o + n], VOL_SIZE)
_vol = bytearray(volume)
_pat = bytes((i * 37 + 11) & 0xff for i in range(4096))
for _c in range(2, _lay.count + 2):
    if not _lay.used(_c):
        _off = _lay.heap + (_c - 2) * _lay.cs
        _n = min(_lay.cs, 4096)
        _vol[_off:_off + _n] = _pat[:_n]
volume = bytes(_vol)

SALT = bytes.fromhex('4544505345434449534b323030373039')
VID, PID = b'0dd8', b'2005'
PASSWORD = b'test-password-123'
key = bytes(range(16))
identity = b'synthetic-test'

def crc(d):
    return (zlib.crc32(d, 0xffffffff) ^ 0xffffffff) & 0xffffffff

EX_SECTOR = 64
EX_OFF = EX_SECTOR * 512
DEV_SIZE = EX_OFF + VOL_SIZE

rec = bytearray(96)
rec[0:4] = b'EDPF'
struct.pack_into('<I', rec, 12, 2)
struct.pack_into('<Q', rec, 24, EX_SECTOR)
struct.pack_into('<Q', rec, 40, VOL_SIZE)
struct.pack_into('<I', rec, 48, crc(PASSWORD))
struct.pack_into('<I', rec, 52, crc(key))
rec[56:72] = sm4(key, hashlib.md5(PASSWORD).digest(), False)
rec[88] = 2

t = bytearray(512)
t[0:4] = b'EDPF'
t[0:96] = rec
for k in (1, 2):
    t[k * 96:k * 96 + 4] = b'EDPF'
struct.pack_into('<H', t, 288, 0x206 ^ 0x88)
enc_table = nc.offset_transform(bytes(t), struct.pack('<I', crc(identity)), SALT, 0, decrypt=False)

back_plain = bytearray(256)
back_plain[0:4] = b'PDKB'
back_plain[4:4 + len(identity)] = identity
stored = bytearray(512)
stored[0:4] = b'DRKB'
material = bytes(stored[0:256]) + VID + PID + struct.pack('<Q', DEV_SIZE)
key4 = struct.pack('<I', crc(material))
stored[256:512] = nc.offset_transform(bytes(back_plain), key4, SALT, 0, decrypt=False)

v = 0x12345678
s = bytearray(512)
hdr = b'$$$' + str(v).encode() + b'$$$'
s[0:len(hdr)] = hdr
h = bytearray(47)
h[0:4] = struct.pack('<I', v ^ 0x88888888)
h[33:37] = b'LLGB'
h[43] = 1
h[44] = 1
s[24:71] = h
mask = ((v & 0xffff) ^ (v >> 16)) & 0xffff
for i in range(244):
    o = 24 + i * 2
    struct.pack_into('<H', s, o, struct.unpack_from('<H', s, o)[0] ^ mask)
    mask = (mask + 255 - i) & 0xffff

head = bytearray(32768)
head[512:1024] = enc_table
head[2048:2560] = s
head[11 * 512:12 * 512] = stored

device = bytes(head) + sm4(volume, key, False)
print('debug len(device)=%d DEV_SIZE=%d len(head)=%d len(volume)=%d' % (len(device), DEV_SIZE, len(head), len(volume)))
assert len(device) == DEV_SIZE
with open(os.path.join(OUT, 'device.raw'), 'wb') as f:
    f.write(device)
with open(os.path.join(OUT, 'meta.txt'), 'w') as f:
    f.write('VOL_OFF=%d VOL_SIZE=%d DEV_SIZE=%d EX_OFF=%d PASSWORD=%s\n'
            % (VOL_OFF, VOL_SIZE, DEV_SIZE, EX_OFF, PASSWORD.decode()))
print('device=%d vol=%d ex_off=%d dev_size=%d' % (len(device), VOL_SIZE, EX_OFF, DEV_SIZE))
