"""Bounded, read-only metadata capture for the verified USB device."""
from pathlib import Path
import hashlib,os,plistlib,subprocess,json
volume=Path('/Volumes/启动区')
expected='cfa1317775801381b6ca51f13857d1e52506ff48ac4df94d7b9f91f742d3e4a1'
if hashlib.sha256((volume/'EdpEDisk.exe').read_bytes()).hexdigest()!=expected:
 raise SystemExit('Client fingerprint mismatch')
def info(target):return plistlib.loads(subprocess.check_output(['/usr/sbin/diskutil','info','-plist',target]))
device=info(str(volume))['ParentWholeDisk'];whole=info(device);size=whole['TotalSize']
if whole.get('Internal') or not 62_000_000_000<size<64_000_000_000:raise SystemExit('Device guard failed')
out=Path(__file__).resolve().parent/'metadata';out.mkdir(exist_ok=True,mode=0o700)
owner=Path(__file__).stat().st_uid;os.chown(out,owner,-1)
fd=os.open('/dev/r'+device,os.O_RDONLY)
summary=[]
try:
 for label,offset,count in [('head',0,64*512),('tail',size-64*512,64*512)]:
  data=os.pread(fd,count,offset)
  if len(data)!=count:raise SystemExit('Short read')
  p=out/(label+'.bin');p.write_bytes(data);os.chmod(p,0o600);os.chown(p,owner,-1)
  summary.append({'region':label,'offset':offset,'bytes':len(data),'sha256':hashlib.sha256(data).hexdigest()})
finally:os.close(fd)
result={'device':device,'total_size':size,'regions':summary,'access':'O_RDONLY; total read 65536 bytes'}
p=out/'capture.json';p.write_text(json.dumps(result,indent=2));os.chmod(p,0o600);os.chown(p,owner,-1)
print(json.dumps(result,indent=2))
