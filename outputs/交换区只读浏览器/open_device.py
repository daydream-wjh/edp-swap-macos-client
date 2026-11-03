"""Elevated helper: opens only the verified USB read-only, passes FD, exits."""
import os,sys,json,hashlib,plistlib,subprocess,socket,array,ctypes
from pathlib import Path
target=Path(sys.argv[1]);owner=target.parent.stat().st_uid
if os.geteuid()!=0:raise SystemExit('需要本机管理员授权')
def info(v):return plistlib.loads(subprocess.check_output(['/usr/sbin/diskutil','info','-plist',v]))
volume=Path('/Volumes/启动区')
if hashlib.sha256((volume/'EdpEDisk.exe').read_bytes()).hexdigest()!='cfa1317775801381b6ca51f13857d1e52506ff48ac4df94d7b9f91f742d3e4a1':raise SystemExit('设备指纹不匹配')
device=info(str(volume))['ParentWholeDisk'];d=info(device);size=d['TotalSize']
if d.get('Internal') or not d.get('WholeDisk') or d.get('VirtualOrPhysical')!='Physical' or d.get('BusProtocol')!='USB' or not 62_000_000_000<size<64_000_000_000:raise SystemExit('设备身份或容量不匹配')
sock=socket.socket(socket.AF_UNIX,socket.SOCK_STREAM);sock.connect(str(target))
uid=ctypes.c_uint();gid=ctypes.c_uint();lib=ctypes.CDLL('/usr/lib/libSystem.B.dylib')
if lib.getpeereid(sock.fileno(),ctypes.byref(uid),ctypes.byref(gid)) or uid.value!=owner:raise SystemExit('本机读取进程身份不匹配')
fd=os.open('/dev/r'+device,os.O_RDONLY)
try:
 sock.sendmsg([json.dumps({'device':device,'size':size}).encode()],[(socket.SOL_SOCKET,socket.SCM_RIGHTS,array.array('i',[fd]))])
finally:os.close(fd);sock.close()
print('已交付只读设备句柄；管理员辅助进程已退出。')
