"""End-to-end synthetic encrypted FAT image test. Never opens a real device."""
import importlib.util,struct,tempfile,hashlib,threading,urllib.request,urllib.error,json,os
from pathlib import Path
root=Path(__file__).resolve().parent.parent
spec=importlib.util.spec_from_file_location('testreader',root/'outputs/交换区只读浏览器/reader.py')
m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
data=bytearray(2880*512);data[:11]=b'\xeb\x3c\x90MSDOS5.0'
struct.pack_into('<HBHBHHBHHHII',data,11,512,1,1,2,224,2880,0xf0,9,18,2,0,0)
data[38]=0x29;data[43:54]=b'TESTDISK   ';data[54:62]=b'FAT12   ';data[510:512]=b'\x55\xaa'
for sector in [1,10]:data[sector*512:sector*512+5]=b'\xf0\xff\xff\xff\x0f'
payload=b'synthetic-read-check\n';off=19*512
data[off:off+11]=b'HELLO   TXT';data[off+11]=0x20;struct.pack_into('<H',data,off+26,2);struct.pack_into('<I',data,off+28,len(payload));data[33*512:33*512+len(payload)]=payload
password='synthetic-test-password'[:20];key=bytes(range(16));encrypted=m.crypt(bytes(data),key,False)
with tempfile.TemporaryDirectory(prefix='usb-reader-test-') as directory:
 path=Path(directory)/'encrypted.img';path.write_bytes(encrypted);m.fd=os.open(path,os.O_RDONLY)
 r=bytearray(96);p=password.encode('gbk');struct.pack_into('<I',r,48,m.crc(p));struct.pack_into('<I',r,52,m.crc(key));r[56:72]=m.crypt(key,hashlib.md5(p).digest(),False)
 m.layout={'raw':bytes(r),'offset':0,'size':len(encrypted),'algorithm':2};m.SESSION=Path(directory);m.state.update(device_ready=True)
 m.server=m.ThreadingHTTPServer(('127.0.0.1',0),m.Handler);url=f'http://127.0.0.1:{m.server.server_port}/{m.TOKEN}/'
 t=threading.Thread(target=m.server.serve_forever,daemon=True);t.start()
 def post(route,body):return urllib.request.urlopen(urllib.request.Request(url+'api/'+route,data=json.dumps(body).encode(),headers={'Content-Type':'application/json'}))
 try:
  try:post('unlock',{'password':'wrong'});raise AssertionError('Wrong password accepted')
  except urllib.error.HTTPError as e:assert e.code==400
  s=json.loads(post('unlock',{'password':password}).read());assert s['unlocked']
  entries=json.loads(urllib.request.urlopen(url+'api/list').read())['entries'];entry=next(e for e in entries if e['name']=='HELLO.TXT')
  content=urllib.request.urlopen(url+'api/download?inode='+str(entry['inode'])+'&name=HELLO.TXT').read();assert content==payload
  assert path.read_bytes()==encrypted
  # Wrong HTTP origin is rejected even with a valid local session URL.
  req=urllib.request.Request(url+'api/stop',data=b'{}',headers={'Content-Type':'application/json','Origin':'https://example.invalid'})
  try:urllib.request.urlopen(req);raise AssertionError('Cross-origin POST accepted')
  except urllib.error.HTTPError as e:assert e.code==403
  result={'wrong_password_rejected':True,'encrypted_filesystem_opened':True,'directory_listing_verified':True,'download_content_verified':True,'source_image_unchanged':True,'cross_origin_post_rejected':True}
  (root/'work/analysis/reader-e2e-test.json').write_text(json.dumps(result,indent=2));print(json.dumps(result,indent=2))
 finally:
  m.server.shutdown();m.server.server_close()
  if m.image:m.image.close()
  os.close(m.fd)
