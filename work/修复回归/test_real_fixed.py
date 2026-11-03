from pathlib import Path
import json,time,hashlib,os,sys
ROOT=Path('/Volumes/交换区');CACHE=Path('/Users/daydream/Library/Caches/edp-mount');OUT=Path('/Users/daydream/Desktop/u-macos-usb-bot-scsi-linux/outputs/验证证据/修复回归-真盘-20261027.json');T=ROOT/'Codex修复回归-20261027-最终';R={'saves':{},'checks':{},'started':time.strftime('%Y-%m-%d %H:%M:%S')}
def persist():OUT.write_text(json.dumps(R,ensure_ascii=False,indent=2))
def state():
 try:return json.loads((CACHE/'state.json').read_text())
 except:return {}
def hashfile(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  for b in iter(lambda:f.read(4*1024*1024),b''):h.update(b)
 return h.hexdigest()
def save(name):
 before=state().get('completed_save_id',0);start=time.monotonic();(CACHE/'ctrl').write_text('save\n')
 while time.monotonic()-start<240:
  s=state();phase=s.get('phase','')
  if s.get('completed_save_id',0)>before:
   if phase.startswith('保存未完成'):raise RuntimeError(s.get('error'))
   if phase.startswith('已加密保存'):
    sync=s['last_sync'];record={'seconds_wall':time.monotonic()-start,'seconds_reported':s['last_save_secs'],'mib_s_reported':s['last_save_mbs'],'last_sync':sync,'error':s.get('error'),'phase':phase};R['saves'][name]=record;R['checks'][name+'_error_cleared']=not s.get('error');changed=sync.get('changed_bytes',0)
    if changed:R['checks'][name+'_full_readback']=sync.get('verified_bytes')==changed and sync.get('verification')=='full_changed_ranges'
    R['checks'][name+'_timing_includes_wait']=0<=record['seconds_wall']-record['seconds_reported']<2;persist();print(name,json.dumps(record,ensure_ascii=False),flush=True);return
  time.sleep(.1)
 raise TimeoutError(name)
try:
 for _ in range(240):
  if state().get('running') and 'completed_save_id' in state() and ROOT.exists():break
  time.sleep(.25)
 else:raise TimeoutError('mount')
 R['checks']['old_mount_error_cleared']=not state().get('error');baseline=json.loads(Path('/Users/daydream/Desktop/u-macos-usb-bot-scsi-linux/work/修复回归/真盘原文件基准.json').read_text());R['checks']['originals_before_match']=all((ROOT/k).stat().st_size==v['size'] and hashfile(ROOT/k)==v['sha256'] for k,v in baseline.items());assert R['checks']['originals_before_match'];assert not T.exists();T.mkdir();p=T/'128MiB随机数据.bin';chunk=os.urandom(4*1024*1024)
 with p.open('xb') as f:
  for _ in range(32):f.write(chunk)
  f.flush();os.fsync(f.fileno())
 save('new_128mib');R['checks']['new_file_hash_matches']=hashfile(p)==hashlib.sha256(chunk*32).hexdigest()
 with p.open('r+b') as f:f.seek(1024*1024-123);f.write(os.urandom(2*1024*1024));f.flush();os.fsync(f.fileno())
 q=T/'缩短.txt';q.write_bytes(os.urandom(1024*1024));save('overwrite_and_create');q.write_text('修复后缩短\n',encoding='utf8');nested=T/'中文 空格 😀';nested.mkdir();p.rename(nested/'重命名.bin');(nested/'空文件.txt').touch();(nested/'全零.bin').write_bytes(bytes(1024*1024));save('rename_truncate_zero');save('no_change');
 if R['saves']['no_change']['last_sync']['changed_bytes']!=0:save('no_change_retry')
 R['checks']['no_change_detected']=any(v['last_sync']['changed_bytes']==0 for k,v in R['saves'].items() if k.startswith('no_change'));R['expected']={str(x.relative_to(T)):{'size':x.stat().st_size,'sha256':hashfile(x)} for x in T.rglob('*') if x.is_file()};R['checks']['originals_after_match']=all(hashfile(ROOT/k)==v['sha256'] for k,v in baseline.items());R['status']='awaiting_independent_device_remount';persist();(CACHE/'ctrl').write_text('quit\n');print('READY_FOR_INDEPENDENT_REMOUNT',flush=True)
except Exception as e:R['status']='failed';R['exception']=repr(e);persist();print('FAILED',repr(e),flush=True);sys.exit(1)
