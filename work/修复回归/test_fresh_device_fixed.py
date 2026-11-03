from pathlib import Path
import json,time,hashlib,shutil,sys
ROOT=Path('/Volumes/交换区');C=Path('/private/tmp/edp-fixed-real-fresh');OUT=Path('/Users/daydream/Desktop/u-macos-usb-bot-scsi-linux/outputs/验证证据/修复回归-真盘-20261027.json');R=json.loads(OUT.read_text());BASE=Path('/Users/daydream/Desktop/u-macos-usb-bot-scsi-linux');folders=[('Codex修复回归-20261027-最终',R['expected']),('Codex修复回归-20261027',json.loads((BASE/'outputs/验证证据/修复回归-真盘-中间版本-20261027.json').read_text())['expected'])]
def state():
 try:return json.loads((C/'state.json').read_text())
 except:return {}
def persist():OUT.write_text(json.dumps(R,ensure_ascii=False,indent=2))
def digest(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  for b in iter(lambda:f.read(4*1024*1024),b''):h.update(b)
 return h.hexdigest()
def snap(folder):return {str(p.relative_to(folder)):{'size':p.stat().st_size,'sha256':digest(p)} for p in folder.rglob('*') if p.is_file()}
def err(fn,p,info):
 if not isinstance(info[1],FileNotFoundError):raise info[1]
try:
 for _ in range(600):
  s=state()
  if s.get('running') and 'completed_save_id' in s and ROOT.exists() and (C/'edp.pid').exists():break
  time.sleep(.3)
 else:raise TimeoutError('independent remount')
 elapsed=(C/'edp.pid').stat().st_mtime-float((C/'start-time.txt').read_text());R['fresh_import_seconds_including_launch']=elapsed
 for _ in range(30):
  s=state()
  if s.get('read_total_mb',0)>0:break
  time.sleep(.2)
 R['fresh_import_logical_read_mib']=s.get('read_total_mb',0);R['checks']['fresh_mount_error_cleared']=not s.get('error')
 for folder,expected in folders:R['checks']['fresh_'+folder]=snap(ROOT/folder)==expected
 baseline=json.loads((BASE/'work/修复回归/真盘原文件基准.json').read_text());R['checks']['fresh_originals_match']=all((ROOT/k).stat().st_size==v['size'] and digest(ROOT/k)==v['sha256'] for k,v in baseline.items());persist();print('FRESH_DEVICE_HASH_CHECKS',json.dumps(R['checks'],ensure_ascii=False),flush=True)
 if not all(R['checks'].values()):raise RuntimeError('real device check failed; leave data for diagnosis')
 for folder,_ in folders:shutil.rmtree(ROOT/folder,onerror=err)
 before=state().get('completed_save_id',0);start=time.monotonic();(C/'ctrl').write_text('save\n')
 while time.monotonic()-start<180:
  s=state();phase=s.get('phase','')
  if s.get('completed_save_id',0)!=before:
   if phase.startswith('保存未完成'):raise RuntimeError(s.get('error'))
   if phase.startswith('已加密保存'):break
  time.sleep(.1)
 else:raise TimeoutError('cleanup save')
 R['cleanup']={'directories_removed':all(not (ROOT/f).exists() for f,_ in folders),'phase':s['phase'],'last_sync':s['last_sync'],'seconds':time.monotonic()-start};R['checks']['cleanup_complete_readback']=s['last_sync'].get('verified_bytes')==s['last_sync'].get('changed_bytes');R['status']='passed';R['tool_sha256']='beb2a0413faafa85f457b932ae646007f22d847e13c2c90ab6a627013374ae54';persist();(C/'ctrl').write_text('quit\n');print('CLEANUP_SAVED_AND_QUIT',flush=True)
except Exception as e:R['status']='failed';R['exception']=repr(e);persist();print('FAILED',repr(e),flush=True);sys.exit(1)
