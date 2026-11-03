from pathlib import Path
import json,subprocess,shutil,sys
root=Path('/tmp/usb-fixed-verify');m=dict(x.split('=') for x in (root/'meta.txt').read_text().split());w=root/'verify-work';w.mkdir(exist_ok=True);device=root/'device.raw';full=device.read_bytes();original=Path('/Users/daydream/Desktop/u-macos-usb-bot-scsi-linux/work/rw-tests/base.raw').read_bytes();base=w/'基线镜像.raw';base.write_bytes(original);(w/'manifest.json').write_text(json.dumps({'image_offset':int(m['VOL_OFF']),'size':int(m['VOL_SIZE']),'exchange_offset':int(m['EX_OFF'])}));binary=sys.argv[1] if len(sys.argv)>1 else '/tmp/edp-fixed-arm64'
def verify():
 p=subprocess.run([binary,'verify',str(device),str(w),m['DEV_SIZE']],input=(m['PASSWORD']+'\n').encode(),capture_output=True);return {'exit':p.returncode,'stdout':p.stdout.decode(errors='replace'),'stderr':p.stderr.decode(errors='replace')}
r={'valid':verify()}
b=bytearray(full);b[int(m['EX_OFF'])+512]^=1;device.write_bytes(b);r['data_mismatch']=verify();device.write_bytes(full)
for name,length in [('device_short_aligned',int(m['EX_OFF'])+512),('device_short_unaligned',int(m['EX_OFF'])+513)]:
 with device.open('r+b') as f:f.truncate(length)
 r[name]=verify();device.write_bytes(full)
with base.open('r+b') as f:f.truncate(int(m['VOL_OFF'])+512)
r['baseline_short']=verify();base.write_bytes(original)
r['passed']=r['valid']['exit']==0 and '差异扇区数: 0' in r['valid']['stdout'] and all(r[k]['exit']==1 for k in ['data_mismatch','device_short_aligned','device_short_unaligned','baseline_short']) and all('差异扇区数: 0' not in r[k]['stdout'] for k in ['device_short_aligned','device_short_unaligned','baseline_short'])
out=Path('/Users/daydream/Desktop/u-macos-usb-bot-scsi-linux/outputs/验证证据/修复回归-校验失败边界-20261027.json');out.write_text(json.dumps(r,ensure_ascii=False,indent=2));print(json.dumps(r,ensure_ascii=False,indent=2));sys.exit(0 if r['passed'] else 1)
