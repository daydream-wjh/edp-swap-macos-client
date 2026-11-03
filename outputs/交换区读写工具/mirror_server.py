"""Finder workspace with explicit, encrypted writeback to the exchange area."""
import sys,os,json,threading,subprocess,hashlib,secrets,fcntl,plistlib,time
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parent))
import reader as base
from mirror_core import Mirror,restore_pending

manager=None
workspace=Path(__file__).resolve().parent.parent/'交换区读写工作区'
workspace.mkdir(mode=0o700,exist_ok=True);os.chmod(workspace,0o700)
lockfile=open(workspace/'.active.lock','a+b');os.chmod(workspace/'.active.lock',0o600)
try:fcntl.flock(lockfile,fcntl.LOCK_EX|fcntl.LOCK_NB)
except BlockingIOError:raise SystemExit('已有读写会话，请使用已打开的页面')

def update(**kwargs):base.state.update(kwargs);base.write_state()
def recover(fd,part):
 result=restore_pending(fd,part,workspace)
 if result:base.state['recovered_journals']=result
base.device_hook=recover
def progress(phase,done,total):
 now=time.monotonic()
 if now-getattr(progress,'last',0)>0.5 or done==total:
  progress.last=now;update(phase=phase,progress_bytes=done,progress_total=total)
original_unlock=base.unlock
def begin_unlock(password):
 if base.state.get('busy'):raise ValueError('操作进行中，请稍候')
 original_unlock(password)
 if base.state.get('mirror_ready'):return
 update(busy=True,phase='准备读写工作区',error=None)
 threading.Thread(target=prepare,daemon=True).start()
base.unlock=begin_unlock
def prepare():
 global manager
 try:
  with base.LOCK:
   manager=Mirror(base.fd,base.layout,bytes(base.image.key),workspace,progress)
   manager.prepare();manager.mount()
   update(mirror_ready=True,mountpoint=str(manager.mountpoint),workspace=str(workspace),phase='可在 Finder 中读写；修改后点击“保存到 U 盘”',busy=False)
   subprocess.run(['/usr/bin/open',str(manager.mountpoint)],check=True)
 except Exception as e:update(error=str(e),busy=False)
def refresh():
 old=base.image
 key=bytes(old.key)
 base.image=base.DecryptedImage(base.fd,base.layout,key)
 base.fs=base.pytsk3.FS_Info(base.image)
 base.state['root_inode']=int(base.fs.info.root_inum)
 try:old.close()
 except Exception:pass
def save():
 try:
  with base.LOCK:
   result=manager.synchronize();refresh()
   update(busy=False,phase='已加密保存到 U 盘，并完成写入回读校验',last_sync=result,mountpoint=str(manager.mountpoint),error=None)
 except Exception as e:update(busy=False,error=str(e),phase='保存未完成；工作镜像与回滚记录保留')
def hashes():
 result={};todo=[('/',int(base.fs.info.root_inum))]
 while todo:
  prefix,ino=todo.pop()
  for e in base.fs.open_dir(inode=ino):
   if not e.info.name or not e.info.meta or e.info.name.name in (b'.',b'..') or not e.info.name.flags&base.pytsk3.TSK_FS_NAME_FLAG_ALLOC:continue
   name=e.info.name.name.decode('utf-8',errors='replace');path=prefix+name
   if e.info.meta.type==base.pytsk3.TSK_FS_META_TYPE_DIR:
    if not name.startswith(('.','$','System Volume')):todo.append((path+'/',int(e.info.meta.addr)))
   elif e.info.meta.type==base.pytsk3.TSK_FS_META_TYPE_REG and not name.startswith(('.','$')):
    f=base.fs.open_meta(inode=e.info.meta.addr);h=hashlib.sha256()
    for o in range(0,f.info.meta.size,1024*1024):h.update(f.read_random(o,min(1024*1024,f.info.meta.size-o)))
    result[path]=h.hexdigest()
 return result
def root_names():
 result=[]
 for e in base.fs.open_dir(path='/'):
  if e.info.name and e.info.name.flags&base.pytsk3.TSK_FS_NAME_FLAG_ALLOC:
   result.append(e.info.name.name.decode('utf-8',errors='replace'))
 return result
def cleanup_leftovers():
 removed=[]
 try:
  for n in root_names():
   if n.startswith('Codex读写验证-') or n.startswith('._Codex读写验证-'):
    try:
     (manager.mountpoint/n).unlink();removed.append(n)
    except FileNotFoundError:pass
  if removed:
   manager.synchronize();refresh()
 except Exception as e:
  update(error='清理遗留验证文件失败：'+str(e),busy=False,phase='读写验证未完成；镜像和回滚记录保留')
  raise
 return removed
def self_test():
 name='Codex读写验证-'+time.strftime('%Y%m%d-%H%M%S')+'-'+secrets.token_hex(3)+'.txt'
 payload=('Mac exchange-area read/write validation.\n'+name+'\n').encode()
 try:
  with base.LOCK:
   leftovers=cleanup_leftovers()
   refresh();before=hashes()
   p=manager.mountpoint/name
   if p.exists():raise ValueError('验证文件名冲突')
   p.write_bytes(payload);first=manager.synchronize();refresh()
   f=base.fs.open('/'+name)
   if not f.info.meta.flags&base.pytsk3.TSK_FS_META_FLAG_ALLOC or f.read_random(0,f.info.meta.size)!=payload:raise ValueError('真实写入回读验证失败；已保留验证文件与回滚记录')
   p=manager.mountpoint/name
   if p.read_bytes()!=payload:raise ValueError('验证文件发生外部变化，未删除')
   p.unlink();second=manager.synchronize();refresh()
   allocated=[e.info.name.name.decode('utf-8',errors='replace') for e in base.fs.open_dir(inode=base.fs.info.root_inum) if e.info.name and e.info.name.flags&base.pytsk3.TSK_FS_NAME_FLAG_ALLOC]
   if name in allocated:raise ValueError('删除回读验证失败')
   after=hashes()
   if any(after.get(path)!=digest for path,digest in before.items()):raise ValueError('原文件内容校验不一致，已停止')
   result={'real_create_and_readback':True,'real_delete_and_readback':True,'original_files_hash_verified':len(before),'original_files_unchanged':True,'create_commit':first,'delete_commit':second,'test_file':name,'payload_bytes':len(payload),'leftovers_cleaned':leftovers,'device':base.state.get('device'),'exchange_bytes':base.state.get('exchange_bytes'),'algorithm':'SM4','verified_at':time.strftime('%Y-%m-%dT%H:%M:%S')}
   target=workspace.parent/'真实读写验证.json';target.write_text(json.dumps(result,ensure_ascii=False,indent=2));os.chmod(target,0o600)
   update(write_verified=True,self_test=result,busy=False,phase='真实写入、删除和回读验证通过；原文件内容校验一致',mountpoint=str(manager.mountpoint),error=None)
 except Exception as e:update(busy=False,error=str(e),phase='读写验证未完成；镜像和回滚记录保留')

HTML=r'''<!doctype html><html lang="zh"><meta charset="utf-8"><meta name="viewport" content="width=device-width"><title>交换区读写工作区</title><style>body{font:16px system-ui;max-width:780px;margin:64px auto;padding:0 20px;background:#f3f6fa;color:#172537}main{padding:32px;border-radius:18px;background:white}button,input{font:inherit;padding:12px;border-radius:8px;border:1px solid #bbc9dc}button{background:#eaf1ff;cursor:pointer;margin:5px}button:disabled{opacity:.45;cursor:wait}p{line-height:1.7}#status{white-space:pre-wrap}small{color:#5f7086}</style><main><h1>交换区读写工作区</h1><p>在 Finder 中打开、修改、复制或删除文件。完成后点击“保存到 U 盘”，将工作区的修改加密写回。</p><p id="status">等待本机设备授权…</p><form id="login" hidden><label>U 盘交换区密码（不是 Mac 密码）<br><input type="password" id="password" autocomplete="off" required></label><button>打开读写工作区</button></form><div id="actions" hidden><button id="finder">打开 Finder 工作区</button><button id="save">保存到 U 盘</button><button id="verify">验证读写</button></div><p><small>保存前自动保留受影响扇区的回滚副本。关闭前请先保存；未同步修改会保留在本地工作镜像。</small></p><button id="close">关闭会话</button></main><script>
const base=location.pathname;async function api(path,data){let r=await fetch(base+'api/'+path,{method:data?'POST':'GET',headers:data?{'Content-Type':'application/json'}:{},body:data?JSON.stringify(data):undefined});let j=await r.json();if(!r.ok)throw Error(j.error||'操作失败');return j}
function error(e){document.querySelector('#status').textContent=e.message}
document.querySelector('#login').onsubmit=async e=>{e.preventDefault();let input=document.querySelector('#password'),password=input.value;input.value='';try{await api('unlock',{password});password=''}catch(e){password='';error(e)}};
document.querySelector('#finder').onclick=()=>api('finder',{}).catch(error);document.querySelector('#save').onclick=()=>api('save',{}).catch(error);document.querySelector('#verify').onclick=()=>api('self-test',{}).catch(error);document.querySelector('#close').onclick=async()=>{try{await api('stop',{});document.querySelector('main').textContent='会话已关闭。本地未同步修改和回滚记录已保留。'}catch(e){error(e)}};
async function poll(){try{let s=await api('status');let text=s.error||s.phase||(s.device_ready?'设备已就绪，请输入 U 盘交换区密码。':'等待本机设备授权…');if(s.busy&&s.progress_total)text+='\n'+Math.round(s.progress_bytes/s.progress_total*100)+'%';document.querySelector('#status').textContent=text;document.querySelector('#login').hidden=!s.device_ready||s.unlocked;document.querySelector('#actions').hidden=!s.mirror_ready;for(let b of document.querySelectorAll('button'))b.disabled=!!s.busy;if(!s.closed)setTimeout(poll,1500)}catch(e){error(e)}}poll();
</script></html>'''

class Handler(base.Handler):
 def do_GET(self):
  if self.route()[0]=='':
   data=HTML.encode();self.send_response(200);self.send_header('Content-Type','text/html; charset=utf-8');self.send_header('Cache-Control','no-store');self.send_header('X-Frame-Options','DENY');self.send_header('Content-Length',str(len(data)));self.end_headers();self.wfile.write(data);return
  super().do_GET()
 def do_POST(self):
  path,_=self.route()
  origin='http://127.0.0.1:'+str(base.server.server_port)
  if self.headers.get('Host')!='127.0.0.1:'+str(base.server.server_port) or self.headers.get('Origin',origin)!=origin:return self.reply({'error':'请求来源不匹配'},403)
  if path=='api/unlock':return super().do_POST()
  if path not in ['api/finder','api/save','api/self-test','api/stop'] or self.headers.get('Content-Type')!='application/json':return self.reply({'error':'无效请求'},400)
  try:
   n=int(self.headers.get('Content-Length','0'))
   if not 0<=n<=2048:raise ValueError('无效请求长度')
   self.rfile.read(n)
   if base.state.get('busy'):return self.reply({'error':'操作进行中，请稍候'},409)
   if path=='api/stop':
    if manager:manager.detach()
    self.reply({'closed':True});threading.Thread(target=base.server.shutdown,daemon=True).start();return
   if not base.state.get('mirror_ready'):raise ValueError('工作区尚未就绪')
   if path=='api/finder':subprocess.run(['/usr/bin/open',str(manager.mountpoint)],check=True);return self.reply({'opened':True})
   update(busy=True,phase='正在验证实际读写' if path=='api/self-test' else '正在保存到 U 盘',error=None)
   threading.Thread(target=self_test if path=='api/self-test' else save,daemon=True).start();self.reply({'started':True},202)
  except Exception as e:self.reply({'error':str(e)},400)

base.SESSION.mkdir(mode=0o700,exist_ok=True);os.chmod(base.SESSION,0o700)
base.server=base.ThreadingHTTPServer(('127.0.0.1',0),Handler)
base.state['url']='http://127.0.0.1:'+str(base.server.server_port)+'/'+base.TOKEN+'/'
base.write_state();threading.Thread(target=base.receive_device,daemon=True).start()
print('Read/write workspace service started; status:',base.SESSION/'state.json',flush=True)
try:base.server.serve_forever()
finally:
 with base.LOCK:
  if manager:
   try:manager.detach()
   except Exception:pass
   manager.key=b'\0'*16
  if base.image:base.image.close()
  if base.fd is not None:os.close(base.fd)
  update(unlocked=False,closed=True,busy=False)
 base.server.server_close()
 startup=base.state.get('startup');uuid=base.state.get('startup_uuid')
 if startup and uuid:
  try:
   d=plistlib.loads(subprocess.check_output(['/usr/sbin/diskutil','info','-plist',startup]))
   if d.get('VolumeUUID')==uuid:subprocess.run(['/usr/sbin/diskutil','mount',startup],capture_output=True)
  except Exception:pass
