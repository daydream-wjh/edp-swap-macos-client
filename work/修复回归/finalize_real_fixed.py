from pathlib import Path
import json,time,hashlib
BASE=Path('/Users/daydream/Desktop/u-macos-usb-bot-scsi-linux');ROOT=Path('/Volumes/交换区');CACHE=Path('/Users/daydream/Library/Caches/edp-mount');TEMP=Path('/private/tmp/edp-fixed-real-fresh');OUT=BASE/'outputs/验证证据/修复回归-真盘-20261027.json'
for _ in range(600):
 try:s=json.loads((CACHE/'state.json').read_text())
 except:s={}
 if s.get('running') and ROOT.exists() and 'completed_save_id' in s:break
 time.sleep(.3)
else:raise TimeoutError('normal remount timeout')
def digest(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  for b in iter(lambda:f.read(4*1024*1024),b''):h.update(b)
 return h.hexdigest()
r=json.loads(OUT.read_text());expected=json.loads((BASE/'work/修复回归/真盘原文件基准.json').read_text());r['checks']['final_normal_mount_originals_match']=all((ROOT/k).stat().st_size==v['size'] and digest(ROOT/k)==v['sha256'] for k,v in expected.items());r['checks']['final_normal_mount_test_dirs_absent']=all(not (ROOT/f).exists() for f in ['Codex修复回归-20261027','Codex修复回归-20261027-最终']);r['checks']['final_error_clear']=not s.get('error');r['normal_session_restored']=True
assert not json.loads((TEMP/'state.json').read_text()).get('running')
for f in ['工作镜像.raw','基线镜像.raw','同步快照.raw','基线镜像.raw.new']:
 p=TEMP/f
 if p.exists():p.unlink()
r['temporary_plaintext_images_removed']=True;r['finished']=time.strftime('%Y-%m-%d %H:%M:%S');r['status']='passed' if all(r['checks'].values()) else 'failed';OUT.write_text(json.dumps(r,ensure_ascii=False,indent=2));print('FINAL',r['status'],'checks',len(r['checks']),'normal_session',s.get('phase'),'error',s.get('error'),flush=True)
assert r['status']=='passed'
