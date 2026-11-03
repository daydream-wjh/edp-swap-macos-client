"""Single entry point: reuse a healthy session or replace an expired one."""
import sys,os,json,tempfile,time,subprocess,shutil,urllib.request
from pathlib import Path
from urllib.parse import urlparse
app=Path(__file__).resolve().parent
process=None

def request(state,path,post=False):
 url=state.get('url','');u=urlparse(url)
 if u.hostname!='127.0.0.1' or u.scheme!='http':raise ValueError('无效本机会话地址')
 req=urllib.request.Request(url+'api/'+path,data=b'{}' if post else None,headers={'Content-Type':'application/json'} if post else {})
 return json.loads(urllib.request.urlopen(req,timeout=3).read())

def previous():
 try:
  session=Path((app/'.last_session').read_text().strip())
  state=json.loads((session/'state.json').read_text());live=request(state,'status')
  if not live.get('error') and not live.get('closed'):return session,live
  request(state,'stop',True)
  for _ in range(40):
   try:request(state,'status')
   except Exception:break
   time.sleep(.1)
 except Exception:pass
 return None,None

try:
 session,state=previous()
 if session is None:
  session=Path(tempfile.mkdtemp(prefix='codex-usb-rw-',dir='/private/tmp'))
  (app/'.last_session').write_text(str(session));os.chmod(app/'.last_session',0o600)
  shutil.copy2(app/'open_device.py',session/'open_device.py')
  process=subprocess.Popen([sys.executable,str(app/'mirror_server.py'),str(session)])
  for _ in range(100):
   if process.poll() is not None:raise RuntimeError('读写服务未能启动；请检查是否已有其他读写会话')
   if (session/'device.sock').exists() and (session/'state.json').exists():break
   time.sleep(.1)
  else:raise RuntimeError('读写服务启动超时')
  state=json.loads((session/'state.json').read_text())
 if not state.get('device_ready'):
  shutil.copy2(app/'open_device.py',session/'open_device.py')
  base_python=Path(sys.base_prefix)/'bin/python3'
  print('请在此处输入 Mac 管理员密码。此授权阶段不会向交换区写入。',flush=True)
  subprocess.run(['sudo',str(base_python),'-I','-S',str(session/'open_device.py'),str(session/'device.sock')],check=True)
  for _ in range(100):
   state=request(state,'status')
   if state.get('error'):raise RuntimeError(state['error'])
   if state.get('device_ready'):break
   time.sleep(.1)
  else:raise RuntimeError('设备句柄交付后未就绪')
 print('设备已就绪，正在打开本机 U 盘密码页面。',flush=True)
 subprocess.run(['/usr/bin/open',state['url']],check=True)
 if process is not None:process.wait()
except KeyboardInterrupt:
 print('\n关闭本次启动的读写服务。')
except Exception as e:
 print('未能启动：'+str(e))
finally:
 if process is not None and process.poll() is None:
  process.terminate()
  try:process.wait(timeout=5)
  except subprocess.TimeoutExpired:process.kill()
