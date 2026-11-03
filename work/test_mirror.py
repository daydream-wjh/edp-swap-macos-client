import sys,os,json,hashlib,subprocess,struct,tempfile
from pathlib import Path
import pytsk3
from mirror_core import Mirror
from sm4_native import crypt

root=Path(__file__).resolve().parent/'rw-tests';raw=root/'base.raw'
img=pytsk3.Img_Info(str(raw));volume=next(v for v in pytsk3.Volume_Info(img) if v.start==40)
size=volume.len*512;source=root/'encrypted-source.bin';key=bytes(range(16))
with open(raw,'rb') as f,open(source,'wb') as out:
 for off in range(0,size,1024*1024):out.write(crypt(os.pread(f.fileno(),min(1024*1024,size-off),40*512+off),key,False))
fd=os.open(source,os.O_RDWR);mirror=Mirror(fd,{'offset':0,'size':size},key,Path(tempfile.mkdtemp(prefix='workspace-',dir=root)))
class Image(pytsk3.Img_Info):
 def __init__(self):super().__init__(url='',type=pytsk3.TSK_IMG_TYPE_EXTERNAL)
 def get_size(self):return size
 def close(self):pass
 def read(self,o,n):
  a=o//512*512;b=min(size,(o+n+511)//512*512)
  return crypt(os.pread(fd,b-a,a),key)[o-a:o-a+n]
def content(path):
 i=Image();fs=pytsk3.FS_Info(i);f=fs.open(path)
 if not f.info.meta.flags&pytsk3.TSK_FS_META_FLAG_ALLOC:raise IOError('File is deleted')
 return f.read_random(0,f.info.meta.size)
result={}
try:
 mirror.prepare();mirror.mount();mount=mirror.mountpoint
 p=mount/'中文创建验证.txt';payload=(b'Native exFAT encrypted writeback test\n'*1000);p.write_bytes(payload)
 first=mirror.synchronize();assert content('/中文创建验证.txt')==payload;result['create_and_persist']=True
 renamed=mount/'重命名验证.txt';p.rename(renamed);renamed.write_bytes(b'modified and shortened\n');(mount/'新建文件夹').mkdir();(mount/'新建文件夹'/'nested.txt').write_bytes(b'nested data')
 second=mirror.synchronize();assert content('/重命名验证.txt')==b'modified and shortened\n';assert content('/新建文件夹/nested.txt')==b'nested data';result.update(rename_modify_shrink=True,nested_directory_write=True)
 renamed.write_bytes(b'rollback failure injection test')
 before=hashlib.sha256(source.read_bytes()).hexdigest();import mirror_core
 original=mirror_core.os.pwrite;counter=[0]
 def fail_once(*args):
  counter[0]+=1
  if counter[0]==2:raise OSError('Synthetic injected write failure')
  return original(*args)
 mirror_core.os.pwrite=fail_once
 try:
  try:mirror.synchronize(remount=False);raise AssertionError('Failure injection did not fire')
  except OSError as e:assert 'Synthetic' in str(e)
 finally:mirror_core.os.pwrite=original
 assert hashlib.sha256(source.read_bytes()).hexdigest()==before;result['injected_failure_restores_entire_source_hash']=True
 mirror.mount();mirror.synchronize();assert content('/重命名验证.txt')==b'rollback failure injection test';result['retry_after_rollback']=True
 (mount/'重命名验证.txt').unlink();(mount/'新建文件夹'/'nested.txt').unlink();(mount/'新建文件夹').rmdir();mirror.synchronize(remount=False)
 try:content('/重命名验证.txt');raise AssertionError('Deleted file remains allocated')
 except IOError:result['delete_and_persist']=True
 result['first_commit_changed_sectors']=first['changed_sectors'];result['second_commit_changed_sectors']=second['changed_sectors']
 (root.parent/'analysis/rw-mirror-test.json').write_text(json.dumps(result,indent=2));print(json.dumps(result,indent=2))
finally:
 try:mirror.detach()
 finally:os.close(fd)
