"""Read exactly one MBR sector; never opens a writable descriptor."""
import os,struct,json,subprocess
from pathlib import Path
import plistlib
info=plistlib.loads(subprocess.check_output(['/usr/sbin/diskutil','info','-plist','/Volumes/启动区']))
device=info['ParentWholeDisk']
whole=plistlib.loads(subprocess.check_output(['/usr/sbin/diskutil','info','-plist',device]))
if whole.get('Internal') or not 62_000_000_000 < whole.get('TotalSize',0) < 64_000_000_000:
    raise SystemExit('Device identity/size guard failed')
fd=os.open('/dev/r'+device,os.O_RDONLY)
try: b=os.read(fd,512)
finally: os.close(fd)
if len(b)!=512:raise SystemExit('Short read')
out=Path(__file__).resolve().parent/'analysis'
out.mkdir(exist_ok=True)
(out/'mbr.bin').write_bytes(b)
rows=[]
for n in range(4):
 e=b[446+n*16:462+n*16]
 rows.append({'index':n+1,'type':hex(e[4]),'lba_start':struct.unpack_from('<I',e,8)[0],'sectors':struct.unpack_from('<I',e,12)[0]})
result={'device':device,'signature':b[510:].hex(),'partitions':rows}
(out/'mbr.json').write_text(json.dumps(result,indent=2))
print(json.dumps(result,indent=2))
