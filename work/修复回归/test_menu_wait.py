from pathlib import Path
import subprocess,json,tempfile,time,threading
text=Path('outputs/启动程序源码/EDP交换区.command').read_text();functions=text[text.index('request_save() {'):text.index('\nmenu() {')];results=[]
with tempfile.TemporaryDirectory(prefix='edp-menu-test-') as d:
 p=Path(d);state=p/'state.json'
 for name,phase,expected in [('success','已加密保存到 U 盘，并完整回读全部改动数据',0),('failure','保存未完成；工作镜像与回滚记录保留',1)]:
  state.write_text(json.dumps({'phase':'已加密保存上一次的结果','completed_save_id':2}));harness='CACHE='+str(p)+'\njget() { /usr/bin/plutil -extract "$1" raw -o - "$CACHE/state.json" 2>/dev/null; }\nphase_now() { jget phase; }\n'+functions+'\nrequest_save\nwait_saved\nexit $?\n';f=p/'test.zsh';f.write_text(harness)
  def update():
   time.sleep(1);tmp=p/'state.next';tmp.write_text(json.dumps({'phase':phase,'completed_save_id':3}));tmp.replace(state)
  thread=threading.Thread(target=update);thread.start();start=time.monotonic();r=subprocess.run(['/bin/zsh','-f',str(f)],capture_output=True);elapsed=time.monotonic()-start;thread.join();results.append({'name':name,'exit':r.returncode,'seconds':elapsed,'passed':r.returncode==expected and elapsed>=.9})
Path('outputs/验证证据/修复回归-菜单等待-20261027.json').write_text(json.dumps(results,ensure_ascii=False,indent=2));print(json.dumps(results,ensure_ascii=False,indent=2));assert all(x['passed'] for x in results)
