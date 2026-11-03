"""Local, read-only exchange-area browser. Device FD is supplied by a small helper."""
import sys,os,json,struct,hashlib,zlib,socket,array,ctypes,secrets,threading,fcntl
from pathlib import Path
from collections import OrderedDict
from http.server import ThreadingHTTPServer,BaseHTTPRequestHandler
from urllib.parse import urlparse,parse_qs,quote
sys.path.insert(0,str(Path(__file__).resolve().parent))
import pytsk3
from native_crypto import offset_transform
from sm4_native import crypt

BASE=Path(__file__).resolve().parent
CONFIG=json.loads((BASE/'config.json').read_text())
SESSION=Path(sys.argv[1]) if len(sys.argv)>1 else None
TOKEN=secrets.token_urlsafe(24)
LOCK=threading.RLock()
state={'device_ready':False,'unlocked':False,'error':None}
fd=None;image=None;fs=None;layout=None
def crc(data):return (zlib.crc32(data,0xffffffff)^0xffffffff)&0xffffffff
def write_state():
 p=SESSION/'state.json';p.write_text(json.dumps(state,ensure_ascii=False,indent=2));os.chmod(p,0o600)
def decode_layout(head,size):
 import re
 s=bytearray(head[2048:2560]);m=re.match(rb'\$\$\$(\d+)\$\$\$',s)
 if not m:raise ValueError('设备元数据头无法识别')
 v=int(m.group(1));mask=((v&65535)^(v>>16))&65535
 for i in range(244):
  o=24+i*2;struct.pack_into('<H',s,o,struct.unpack_from('<H',s,o)[0]^mask);mask=(mask+255-i)&65535
 h=bytes(s[24:71])
 if struct.unpack_from('<I',h)[0]!=(v^0x88888888) or h[33:37]!=b'LLGB':raise ValueError('设备元数据头校验失败')
 salt=bytes.fromhex(CONFIG['metadata_salt'])
 back=head[11*512:12*512]
 if back[:4]!=b'DRKB':raise ValueError('缺少设备标识记录')
 material=back[:256]+CONFIG['vid'].encode()+CONFIG['pid'].encode()+struct.pack('<Q',size)
 decoded=offset_transform(back[256:],struct.pack('<I',crc(material)),salt,0)
 if decoded[:4]!=b'PDKB':raise ValueError('设备标识记录校验失败')
 identity=decoded[4:].split(b'\0')[0].lower()
 start=h[43]*512;length=h[44]*512
 if length!=512 or start+length>len(head):raise ValueError('暂不支持该元数据布局')
 table=offset_transform(head[start:start+512],struct.pack('<I',crc(identity)),salt,0)
 if table[:4]!=b'EDPF' or (struct.unpack_from('<H',table,288)[0]^0x88)!=0x206:raise ValueError('分区记录版本或校验不匹配')
 records=[]
 for i in range(3):
  r=table[i*96:(i+1)*96]
  if r[:4]!=b'EDPF':raise ValueError('分区记录标记无效')
  kind=struct.unpack_from('<I',r,12)[0];sector=struct.unpack_from('<Q',r,24)[0];n=struct.unpack_from('<Q',r,40)[0]
  if sector*512+n>size or n%512:raise ValueError('分区边界无效')
  if kind==2:records.append({'raw':r,'offset':sector*512,'size':n,'algorithm':r[88]})
 if len(records)!=1 or records[0]['algorithm']!=2:raise ValueError('暂不支持这支盘的交换区算法或布局')
 return records[0]

class DecryptedImage(pytsk3.Img_Info):
 def __init__(self,device_fd,part,key):
  self.device_fd=device_fd;self.part=part;self.key=bytearray(key);self.cache=OrderedDict()
  super().__init__(url='',type=pytsk3.TSK_IMG_TYPE_EXTERNAL)
 def get_size(self):return self.part['size']
 def close(self):
  self.cache.clear()
  for i in range(len(self.key)):self.key[i]=0
 def read(self,offset,size):
  if offset<0 or size<0:raise IOError('Invalid read range')
  if offset>=self.part['size']:return b''
  end=min(offset+size,self.part['size']);out=bytearray();chunk_size=1024*1024
  while offset<end:
   chunk=offset//chunk_size;start=chunk*chunk_size
   if chunk not in self.cache:
    n=min(chunk_size,self.part['size']-start)
    raw=os.pread(self.device_fd,n,self.part['offset']+start)
    if len(raw)!=n:raise IOError('设备读取不完整，请检查连接')
    self.cache[chunk]=crypt(raw,bytes(self.key))
    if len(self.cache)>32:self.cache.popitem(last=False)
   data=self.cache[chunk];self.cache.move_to_end(chunk)
   n=min(end-offset,len(data)-(offset-start));out.extend(data[offset-start:offset-start+n]);offset+=n
  return bytes(out)

def unlock(password):
 global image,fs
 if fd is None:raise ValueError('请先完成本机设备授权')
 if state['unlocked']:return
 try:p=password.encode('gbk')
 except UnicodeEncodeError:raise ValueError('密码包含此版本客户端不支持的字符')
 if not p or len(p)>20:raise ValueError('此版本客户端要求密码为 1–20 字节')
 r=layout['raw']
 if crc(p)!=struct.unpack_from('<I',r,48)[0]:raise ValueError('交换区密码校验未通过；未向设备提交口令')
 key=crypt(r[56:72],hashlib.md5(p).digest())
 if crc(key)!=struct.unpack_from('<I',r,52)[0]:raise ValueError('密钥校验未通过，已停止读取')
 candidate=DecryptedImage(fd,layout,key)
 try:
  candidate_fs=pytsk3.FS_Info(candidate)
  root=candidate_fs.open_dir(inode=candidate_fs.info.root_inum)
  count=sum(1 for e in root if e.info.name and e.info.name.name not in (b'.',b'..'))
 except Exception:
  candidate.close();raise ValueError('密码校验通过，但解密后的文件系统尚未验证，已停止')
 image=candidate;fs=candidate_fs
 state.update(unlocked=True,root_inode=int(fs.info.root_inum),root_entries=count,filesystem_type=int(fs.info.ftype))
 write_state()

def receive_device():
 global fd,layout
 sock=socket.socket(socket.AF_UNIX,socket.SOCK_STREAM)
 try:
  path=SESSION/'device.sock';sock.bind(str(path));os.chmod(path,0o600);sock.listen(1);sock.settimeout(600)
  conn,_=sock.accept()
  with conn:
   uid=ctypes.c_uint();gid=ctypes.c_uint();lib=ctypes.CDLL('/usr/lib/libSystem.B.dylib')
   if lib.getpeereid(conn.fileno(),ctypes.byref(uid),ctypes.byref(gid)) or uid.value!=0:raise ValueError('设备授权进程身份不匹配')
   message,anc,flags,addr=conn.recvmsg(4096,socket.CMSG_SPACE(array.array('i').itemsize))
   handles=[]
   for level,kind,data in anc:
    if level==socket.SOL_SOCKET and kind==socket.SCM_RIGHTS:
     a=array.array('i');a.frombytes(data[:len(data)//a.itemsize*a.itemsize]);handles.extend(a)
   if len(handles)!=1:raise ValueError('设备授权未返回预期的只读句柄')
   fd=handles[0];info=json.loads(message)
   if fcntl.fcntl(fd,fcntl.F_GETFL)&os.O_ACCMODE!=os.O_RDONLY:raise ValueError('设备句柄不是只读模式')
   layout=decode_layout(os.pread(fd,32768,0),info['size'])
   state.update(device_ready=True,exchange_bytes=layout['size'],device=info['device'])
 except Exception as e:state['error']=str(e)
 finally:sock.close();write_state()

HTML='''<!doctype html><html lang="zh"><meta charset="utf-8"><meta name="viewport" content="width=device-width"><title>交换区只读浏览器</title><style>body{font:16px system-ui;max-width:940px;margin:48px auto;padding:0 22px;color:#172537;background:#f5f7fb}section{background:white;padding:28px;border-radius:16px}input,button{font:inherit;padding:10px;border:1px solid #c6d0de;border-radius:7px}button{cursor:pointer;background:#eaf1ff}table{width:100%;border-collapse:collapse}td,th{text-align:left;padding:13px 6px;border-bottom:1px solid #edf0f5}#message{white-space:pre-wrap;color:#46576d}.muted{color:#607087;font-size:14px}</style><section><h1>交换区只读浏览器</h1><p class="muted">在这台 Mac 上浏览文件并下载到本机。此入口不写回 U 盘。</p><p id="message">正在等待本机设备授权…</p><form id="login" hidden><label>U 盘交换区密码（不是 Mac 密码）<br><input id="password" type="password" autocomplete="off" required></label> <button>打开交换区</button><p class="muted">密码与密钥仅在本机内存中处理，不保存到文件。</p></form><div id="files" hidden><button id="back" hidden>返回上级</button><h2 id="folder">交换区</h2><table><thead><tr><th>名称</th><th>大小</th><th></th></tr></thead><tbody id="rows"></tbody></table></div><p><button id="stop">关闭读取会话</button></p></section><script>
const base=location.pathname;let stack=[],current=null;
async function api(path,data){let r=await fetch(base+'api/'+path,{method:data?'POST':'GET',headers:data?{'Content-Type':'application/json'}:{},body:data?JSON.stringify(data):undefined});let j=await r.json();if(!r.ok)throw Error(j.error||'操作失败');return j}
async function list(inode,name){let j=await api('list?inode='+inode);current=inode;document.querySelector('#folder').textContent=name;let rows=document.querySelector('#rows');rows.replaceChildren();for(let e of j.entries){let tr=document.createElement('tr'),td=document.createElement('td'),size=document.createElement('td'),act=document.createElement('td');td.textContent=e.name;size.textContent=e.directory?'文件夹':e.size.toLocaleString()+' 字节';let a=document.createElement(e.directory?'button':'a');a.textContent=e.directory?'打开':'下载';if(e.directory)a.onclick=()=>{stack.push({inode:current,name:document.querySelector('#folder').textContent});list(e.inode,e.name).catch(err)};else a.href=base+'api/download?inode='+e.inode+'&name='+encodeURIComponent(e.name);act.append(a);tr.append(td,size,act);rows.append(tr)}document.querySelector('#back').hidden=!stack.length}
function err(e){document.querySelector('#message').textContent=e.message}
document.querySelector('#login').onsubmit=async e=>{e.preventDefault();let input=document.querySelector('#password');let password=input.value;input.value='';try{let s=await api('unlock',{password});password='';await show(s)}catch(e){password='';err(e)}};
async function show(s){document.querySelector('#message').textContent=s.error|| (s.unlocked?'交换区已通过密码与文件系统验证，可以只读浏览和下载。':s.device_ready?'设备已就绪，请输入 U 盘交换区密码。':'正在等待本机设备授权…');document.querySelector('#login').hidden=!s.device_ready||s.unlocked;document.querySelector('#files').hidden=!s.unlocked;if(s.unlocked&&current===null)await list(s.root_inode,'交换区')}
document.querySelector('#back').onclick=()=>{let p=stack.pop();list(p.inode,p.name).catch(err)};
document.querySelector('#stop').onclick=async()=>{await api('stop',{});document.querySelector('section').textContent='读取会话已关闭，密钥与设备句柄已释放。'};
async function poll(){try{let s=await api('status');await show(s);if(!s.unlocked&&!s.error)setTimeout(poll,1500)}catch(e){err(e)}}poll();
</script></html>'''

class Handler(BaseHTTPRequestHandler):
 def log_message(self,*args):pass
 def reply(self,value,status=200):
  data=json.dumps(value,ensure_ascii=False).encode();self.send_response(status);self.send_header('Content-Type','application/json; charset=utf-8');self.send_header('Cache-Control','no-store');self.send_header('Content-Length',str(len(data)));self.end_headers();self.wfile.write(data)
 def route(self):
  u=urlparse(self.path);prefix='/'+TOKEN+'/'
  if not u.path.startswith(prefix):return None,None
  return u.path[len(prefix):],parse_qs(u.query)
 def do_GET(self):
  path,q=self.route()
  try:
   if path=='':
    data=HTML.encode();self.send_response(200);self.send_header('Content-Type','text/html; charset=utf-8');self.send_header('Cache-Control','no-store');self.send_header('X-Frame-Options','DENY');self.send_header('Referrer-Policy','no-referrer');self.send_header('Content-Length',str(len(data)));self.end_headers();self.wfile.write(data);return
   if path=='api/status':return self.reply(state)
   with LOCK:
    if not state['unlocked']:return self.reply({'error':'交换区尚未打开'},403)
    inode=int(q.get('inode',[state['root_inode']])[0])
    if path=='api/list':
     entries=[]
     for e in fs.open_dir(inode=inode):
      if not e.info.name or e.info.name.name in (b'.',b'..') or not e.info.meta:continue
      if not (e.info.name.flags&pytsk3.TSK_FS_NAME_FLAG_ALLOC):continue
      entries.append({'name':e.info.name.name.decode('utf-8',errors='replace'),'inode':int(e.info.meta.addr),'size':int(e.info.meta.size),'directory':e.info.meta.type==pytsk3.TSK_FS_META_TYPE_DIR})
     entries.sort(key=lambda e:(not e['directory'],e['name'].casefold()));return self.reply({'entries':entries})
    if path=='api/download':
     f=fs.open_meta(inode=inode)
     if not f.info.meta.flags&pytsk3.TSK_FS_META_FLAG_ALLOC:raise ValueError('该文件已删除')
     if f.info.meta.type!=pytsk3.TSK_FS_META_TYPE_REG:raise ValueError('该记录不是普通文件')
     n=int(f.info.meta.size);name=q.get('name',['file'])[0].replace('/','_').replace('\\','_')
     self.send_response(200);self.send_header('Content-Type','application/octet-stream');self.send_header('Cache-Control','no-store');self.send_header('Content-Disposition',"attachment; filename*=UTF-8''"+quote(name,safe=''));self.send_header('Content-Length',str(n));self.end_headers()
     for off in range(0,n,1024*1024):
      data=f.read_random(off,min(1024*1024,n-off))
      if not data:raise IOError('文件读取提前结束')
      self.wfile.write(data)
     return
   self.reply({'error':'未找到入口'},404)
  except (BrokenPipeError,ConnectionResetError):pass
  except Exception as e:self.reply({'error':str(e)},400)
 def do_POST(self):
  path,q=self.route()
  if self.headers.get('Host')!='127.0.0.1:'+str(server.server_port):return self.reply({'error':'无效主机'},403)
  origin=self.headers.get('Origin')
  if origin and origin!='http://127.0.0.1:'+str(server.server_port):return self.reply({'error':'来源不匹配'},403)
  if path not in ['api/unlock','api/stop'] or self.headers.get('Content-Type')!='application/json':return self.reply({'error':'无效请求'},400)
  try:
   n=int(self.headers.get('Content-Length','0'))
   if n>2048:raise ValueError('请求过长')
   body=json.loads(self.rfile.read(n))
   with LOCK:
    if path=='api/unlock':unlock(body.get('password',''));return self.reply(state)
    self.reply({'closed':True});threading.Thread(target=server.shutdown,daemon=True).start()
  except Exception as e:self.reply({'error':str(e)},400)

if __name__=='__main__':
 if SESSION is None:raise SystemExit('Usage: reader.py SESSION_DIRECTORY')
 SESSION.mkdir(mode=0o700,exist_ok=True);os.chmod(SESSION,0o700)
 server=ThreadingHTTPServer(('127.0.0.1',0),Handler)
 state['url']='http://127.0.0.1:'+str(server.server_port)+'/'+TOKEN+'/'
 write_state();threading.Thread(target=receive_device,daemon=True).start()
 print('Local read-only browser started; status file:',SESSION/'state.json',flush=True)
 try:server.serve_forever()
 finally:
  with LOCK:
   if image:image.close()
   if fd is not None:os.close(fd)
   state.update(unlocked=False,closed=True);write_state()
  server.server_close()
