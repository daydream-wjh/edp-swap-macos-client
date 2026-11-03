"""Sparse exFAT workspace and encrypted, journaled writeback.

Only partition-relative ranges are accepted. Mounting the workspace never writes
the source. Each source write is preceded by a durable ciphertext undo journal.
"""
import os,struct,json,sqlite3,time,subprocess,plistlib,hashlib
from pathlib import Path
from sm4_native import crypt

SECTOR=512
def restore_pending(fd,part,folder):
 """Recover only unfinished ciphertext journals that match the attached source."""
 recovered=[]
 for path in sorted((Path(folder)/'回滚记录').glob('*.sqlite3')):
  db=sqlite3.connect(path)
  try:
   meta=dict(db.execute('SELECT key,value FROM meta'))
   if meta.get('status')!='writing':continue
   recorded=json.loads(meta['partition'])
   if recorded!={k:part[k] for k in ['offset','size']}:raise ValueError('未完成写入日志与当前交换区不匹配')
   for off,before,after in db.execute('SELECT off,before,after FROM blocks'):
    if off<0 or off%512 or off+512>part['size'] or len(before)!=512 or len(after)!=512:raise ValueError('回滚日志范围无效')
    if os.pread(fd,512,part['offset']+off) not in (before,after):raise ValueError('源盘与未完成日志不符，已停止自动恢复')
   for off,before in db.execute('SELECT off,before FROM blocks ORDER BY off'):
    if os.pwrite(fd,before,part['offset']+off)!=512:raise IOError('恢复写入不完整')
   os.fsync(fd)
   for off,before in db.execute('SELECT off,before FROM blocks'):
    if os.pread(fd,512,part['offset']+off)!=before:raise IOError('恢复回读校验失败')
   db.execute('UPDATE meta SET value=? WHERE key=?',('recovered','status'));db.commit();recovered.append(str(path))
  finally:db.close()
 return recovered

class ExfatLayout:
 def __init__(self,read,size):
  self.read=read;self.size=size;b=read(0,512)
  if b[3:11]!=b'EXFAT   ':raise ValueError('exFAT signature missing')
  self.bs=1<<b[108];self.spc=1<<b[109];self.cs=self.bs*self.spc
  self.fat=struct.unpack_from('<I',b,80)[0]*self.bs
  self.heap=struct.unpack_from('<I',b,88)[0]*self.bs
  self.count=struct.unpack_from('<I',b,92)[0];self.root=struct.unpack_from('<I',b,96)[0]
  if self.bs!=512 or self.cs>32*1024*1024 or self.heap+self.count*self.cs>size or self.heap>256*1024*1024:raise ValueError('Unsupported or invalid exFAT geometry')
  if b[110]!=1:raise ValueError('Multiple FATs are not supported by this writeback implementation')
  seen=set();c=self.root;bitmap=None
  while c not in seen and len(seen)<128:
   seen.add(c);block=read(self.cluster_offset(c),self.cs)
   for o in range(0,len(block),32):
    e=block[o:o+32]
    if e[0]==0x81 and e[1]&1==0:bitmap=(struct.unpack_from('<I',e,20)[0],struct.unpack_from('<Q',e,24)[0]);break
   if bitmap:break
   c=self.next_cluster(c)
   if c>=0xfffffff8:break
  if not bitmap or bitmap[1]<(self.count+7)//8 or bitmap[1]>32*1024*1024:raise ValueError('Valid allocation bitmap not found')
  self.bitmap=bytearray();c,n=bitmap;seen=set()
  while n:
   if c in seen:raise ValueError('Allocation bitmap cycle')
   seen.add(c);take=min(n,self.cs);self.bitmap.extend(read(self.cluster_offset(c),take));n-=take
   if n:c=self.next_cluster(c)
 def cluster_offset(self,c):
  if not 2<=c<self.count+2:raise ValueError('Cluster outside partition')
  return self.heap+(c-2)*self.cs
 def next_cluster(self,c):return struct.unpack('<I',self.read(self.fat+c*4,4))[0]
 def used(self,c):return bool(self.bitmap[(c-2)//8]&(1<<((c-2)%8)))
 def ranges(self):
  yield 0,self.heap
  start=None
  for c in range(2,self.count+2):
   used=self.used(c)
   if used and start is None:start=c
   if not used and start is not None:yield self.cluster_offset(start),(c-start)*self.cs;start=None
  if start is not None:yield self.cluster_offset(start),(self.count+2-start)*self.cs

class Mirror:
 def __init__(self,fd,part,key,folder,progress=None):
  self.fd=fd;self.part=part;self.key=key;self.folder=Path(folder);self.folder.mkdir(mode=0o700,parents=True,exist_ok=True);os.chmod(self.folder,0o700)
  self.image=self.folder/'工作镜像.raw';self.baseline=self.folder/'基线镜像.raw';self.progress=progress or (lambda *args:None);self.device=None;self.whole_device=None;self.mountpoint=self.folder/'交换区工作区'
  self.image_offset=struct.unpack_from('<Q',self.plain(0,512),64)[0]*512
  if self.image_offset>64*1024*1024:raise ValueError('Unsupported image partition offset')
 def raw(self,off,n):
  if off<0 or n<0 or off+n>self.part['size'] or off%512 or n%512:raise ValueError('Raw read outside exchange area or unaligned')
  data=os.pread(self.fd,n,self.part['offset']+off)
  if len(data)!=n:raise IOError('Short source read')
  return data
 def plain(self,off,n):
  a=off//512*512;b=(off+n+511)//512*512
  return crypt(self.raw(a,b-a),self.key)[off-a:off-a+n]
 def copy_sparse(self,read,size,path):
  layout=ExfatLayout(read,size);total=sum(n for _,n in layout.ranges());done=0
  with open(path,'w+b') as f:
   os.chmod(path,0o600);f.truncate(size+self.image_offset)
   if self.image_offset:
    mbr=bytearray(512);mbr[446+4]=7;struct.pack_into('<II',mbr,454,self.image_offset//512,size//512);mbr[510:]=b'\x55\xaa';f.write(mbr)
   for start,n in layout.ranges():
    for off in range(start,start+n,1024*1024):
     take=min(1024*1024,start+n-off);f.seek(self.image_offset+off);f.write(read(off,take));done+=take;self.progress('准备工作镜像',done,total)
   f.flush();os.fsync(f.fileno())
  return layout
 def clone(self):
  target=self.folder/'新基线.raw'
  if target.exists():target.unlink()
  p=subprocess.run(['/bin/cp','-c',str(self.image),str(target)],capture_output=True)
  if p.returncode:
   if target.exists():target.unlink()
   with open(self.image,'rb') as f:self.copy_sparse(lambda o,n:os.pread(f.fileno(),n,self.image_offset+o),self.part['size'],target)
  os.chmod(target,0o600);os.replace(target,self.baseline)
 def prepare(self):
  # Never discard an existing unsynchronized workspace.
  if self.image.exists() or self.baseline.exists():
   if not self.image.exists() or not self.baseline.exists():raise ValueError('工作区不完整，已保留现有文件，请使用新的工作区路径')
   with open(self.baseline,'rb') as f:
    read=lambda o,n:os.pread(f.fileno(),n,self.image_offset+o);layout=ExfatLayout(read,self.part['size'])
    for start,n in layout.ranges():
     for off in range(start,start+n,1024*1024):
      take=min(1024*1024,start+n-off)
      if self.plain(off,take)!=read(off,take):raise ValueError('U 盘与保留的基线不同；未同步镜像已保留，已停止以避免覆盖')
  else:self.copy_sparse(self.plain,self.part['size'],self.image);self.clone()
 def mount(self):
  if self.device:return
  p=subprocess.run(['/usr/bin/hdiutil','attach','-imagekey','diskimage-class=CRawDiskImage','-nomount','-noautofsck','-plist',str(self.image)],capture_output=True,check=True)
  result=plistlib.loads(p.stdout);devices=[e['dev-entry'] for e in result['system-entities'] if 'dev-entry'in e]
  volumes=[e['dev-entry'] for e in result['system-entities'] if e.get('volume-kind')=='exfat']
  if len(volumes)!=1:
   for d in devices[:1]:subprocess.run(['/usr/bin/hdiutil','detach',d],capture_output=True)
   raise ValueError('工作镜像没有呈现单一 exFAT 卷')
  self.whole_device=min(devices,key=len);self.device=volumes[0]
  p=subprocess.run(['/usr/sbin/diskutil','mount','-mountOptions','nobrowse,noatime',self.device],capture_output=True)
  if p.returncode:
   subprocess.run(['/usr/bin/hdiutil','detach',self.whole_device],capture_output=True);self.device=None;raise ValueError('macOS 无法挂载工作镜像：'+p.stderr.decode(errors='replace'))
  info=plistlib.loads(subprocess.check_output(['/usr/sbin/diskutil','info','-plist',self.device]))
  self.mountpoint=Path(info['MountPoint'])
 def detach(self):
  if not self.device:return
  p=subprocess.run(['/usr/sbin/diskutil','unmount',self.device],capture_output=True)
  if p.returncode:raise ValueError('工作区仍被占用，请关闭打开的文件后再保存；未强制卸载')
  subprocess.run(['/usr/bin/hdiutil','detach',self.whole_device],capture_output=True,check=True);self.device=None;self.whole_device=None
 def make_journal(self):
  directory=self.folder/'回滚记录';directory.mkdir(mode=0o700,exist_ok=True)
  path=directory/(time.strftime('%Y%m%d-%H%M%S')+'-'+str(time.time_ns()%1000000)+'.sqlite3')
  db=sqlite3.connect(path);os.chmod(path,0o600)
  db.execute('PRAGMA synchronous=FULL');db.execute('CREATE TABLE blocks(off INTEGER PRIMARY KEY,before BLOB NOT NULL,after BLOB NOT NULL)');db.execute('CREATE TABLE meta(key TEXT PRIMARY KEY,value TEXT)')
  db.execute('INSERT INTO meta VALUES (?,?)',('status','preparing'));db.execute('INSERT INTO meta VALUES (?,?)',('partition',json.dumps({k:v for k,v in self.part.items() if k in ['offset','size']})))
  try:
   with open(self.image,'rb') as current,open(self.baseline,'rb') as base:
    rd=lambda o,n:os.pread(current.fileno(),n,self.image_offset+o);oldrd=lambda o,n:os.pread(base.fileno(),n,self.image_offset+o)
    new=ExfatLayout(rd,self.part['size']);old=ExfatLayout(oldrd,self.part['size'])
    if (new.heap,new.cs,new.count)!=(old.heap,old.cs,old.count):raise ValueError('工作镜像几何发生变化，不能同步')
    for start,n in new.ranges():
     for off in range(start,start+n,1024*1024):
      take=min(1024*1024,start+n-off);a=oldrd(off,take);b=rd(off,take);source=self.raw(off,take);plain=crypt(source,self.key)
      for i in range(0,take,512):
       pos=off+i;was_used=pos<old.heap or old.used((pos-old.heap)//old.cs+2)
       if was_used and plain[i:i+512]!=a[i:i+512]:raise ValueError('源盘内容已变化，未写入；请保留工作镜像')
       if was_used and a[i:i+512]==b[i:i+512]:continue
       after=crypt(b[i:i+512],self.key,False)
       db.execute('INSERT INTO blocks VALUES (?,?,?)',(pos,source[i:i+512],after))
   count=db.execute('SELECT COUNT(*) FROM blocks').fetchone()[0];db.execute('UPDATE meta SET value=? WHERE key=?',('prepared','status'));db.commit()
   return db,path,count
  except Exception:
   db.close();raise
 def synchronize(self,remount=True):
  self.detach();db=None;written=False
  try:
   db,path,count=self.make_journal()
   # Verify all old ciphertext before touching the first source sector.
   for off,before,after in db.execute('SELECT off,before,after FROM blocks ORDER BY off'):
    if self.raw(off,512)!=before:raise ValueError('源盘在同步前改变，未写入')
   db.execute('UPDATE meta SET value=? WHERE key=?',('writing','status'));db.commit()
   try:
    for off,before,after in db.execute('SELECT off,before,after FROM blocks ORDER BY off'):
     written=True
     if os.pwrite(self.fd,after,self.part['offset']+off)!=512:raise IOError('Short write')
    os.fsync(self.fd)
    for off,before,after in db.execute('SELECT off,before,after FROM blocks ORDER BY off'):
     if self.raw(off,512)!=after:raise IOError('写入后回读不一致')
   except Exception:
    if written:
     for off,before in db.execute('SELECT off,before FROM blocks ORDER BY off'):
      if os.pwrite(self.fd,before,self.part['offset']+off)!=512:raise IOError('回滚写入失败，保留日志并停止操作')
     os.fsync(self.fd)
     for off,before in db.execute('SELECT off,before FROM blocks ORDER BY off'):
      if self.raw(off,512)!=before:raise IOError('回滚回读失败，保留日志并停止操作')
    db.execute('UPDATE meta SET value=? WHERE key=?',('rolled_back','status'));db.commit();raise
   db.execute('UPDATE meta SET value=? WHERE key=?',('committed','status'));db.commit();self.clone()
   return {'changed_sectors':count,'changed_bytes':count*512,'journal':str(path)}
  finally:
   if db:db.close()
   if remount:self.mount()
