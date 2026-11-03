"""Launch the local user process and request a narrow read-only FD via Terminal."""
import sys,os,json,tempfile,time,subprocess,shlex,shutil
from pathlib import Path
app=Path(__file__).resolve().parent
session=Path(tempfile.mkdtemp(prefix='codex-usb-reader-',dir='/private/tmp'))
helper=session/'open_device.py';shutil.copy2(app/'open_device.py',helper)
process=subprocess.Popen([sys.executable,str(app/'reader.py'),str(session)])
try:
 for _ in range(100):
  if (session/'device.sock').exists():break
  if process.poll() is not None:raise RuntimeError('读取进程未能启动')
  time.sleep(0.1)
 else:raise RuntimeError('读取进程启动超时')
 base_python=Path(sys.base_prefix)/'bin/python3'
 command=shlex.join(['sudo',str(base_python),'-I','-S',str(helper),str(session/'device.sock')])
 script='tell application "Terminal"\nactivate\ndo script '+json.dumps(command,ensure_ascii=False)+'\nend tell'
 subprocess.run(['/usr/bin/osascript','-e',script],check=True)
 print('请在新打开的 Terminal 窗口完成 Mac 管理员授权。请勿把密码发到聊天。',flush=True)
 for _ in range(600):
  if process.poll() is not None:raise RuntimeError('读取进程已退出')
  try:state=json.loads((session/'state.json').read_text())
  except (OSError,ValueError):time.sleep(1);continue
  if state.get('error'):raise RuntimeError(state['error'])
  if state.get('device_ready'):
   print('设备只读访问已就绪；正在打开本机密码输入页面。',flush=True)
   subprocess.run(['/usr/bin/open',state['url']],check=True);break
  time.sleep(1)
 else:raise RuntimeError('等待本机设备授权超时')
 process.wait()
except KeyboardInterrupt:
 print('\n关闭读取进程。')
except Exception as e:
 print('未能启动：'+str(e))
finally:
 if process.poll() is None:
  process.terminate()
  try:process.wait(timeout=5)
  except subprocess.TimeoutExpired:process.kill()
