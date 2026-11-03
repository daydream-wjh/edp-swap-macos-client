from pathlib import Path
import tempfile,subprocess,json
src=Path('outputs/启动程序源码/EDP交换区.command').read_text();body=src[src.index('while true; do\n  if ! kill -0 $DAEMON'):src.index('\nwait $DAEMON 2>/dev/null\n')];results=[]
with tempfile.TemporaryDirectory(prefix='edp-exit-guard-') as d:
 root=Path(d)
 for choice in ['2','3']:
  c=root/'ctrl';c.write_text('');prefix='CACHE='+d+'\nDAEMON=999999\nkill() { return 0; }\nmenu() { :; }\nrequest_save() { print save > "$CACHE/ctrl"; }\nwait_saved() { return 1; }\nsave_summary() { :; }\n'
  script=root/'test.zsh';script.write_text(prefix+body);p=subprocess.Popen(['/bin/zsh','-f',str(script)],stdin=subprocess.PIPE,stdout=subprocess.PIPE,stderr=subprocess.PIPE)
  try:p.communicate((choice+'\n').encode(),timeout=.7)
  except subprocess.TimeoutExpired:p.kill();p.communicate()
  result={'choice':choice,'control':c.read_text().strip(),'passed':c.read_text().strip()=='save'};results.append(result)
Path('outputs/验证证据/修复回归-失败禁止退出弹盘-20261027.json').write_text(json.dumps(results,ensure_ascii=False,indent=2));print(results);assert all(x['passed'] for x in results)
