from pathlib import Path
import struct,zlib,pefile,hashlib,json
root=Path(__file__).resolve().parent
src=next((root/'analysis/EdpEDisk.exe.resources').glob('SECDISKCTRLDLL*'))
b=src.read_bytes(); declared=struct.unpack_from('<I',b)[0]
d=zlib.decompress(b[0xaa:])
pe=pefile.PE(data=d)
assert d[:2]==b'MZ'
assert {e.name for e in pe.DIRECTORY_ENTRY_EXPORT.symbols} >= {b'CreateEdpEDiskCtrlIntObj',b'ReleaseEdpEDiskCtrlIntObj'}
(root/'usb-copies/EdpEDiskCtrl.extracted.dll').write_bytes(d)
meta={'source':src.name,'header_size':170,'declared_size':declared,'decoded_size':len(d),'sha256':hashlib.sha256(d).hexdigest(),'note':'Decoded output retained in full; declared size is one byte shorter.'}
(root/'analysis/control-extraction.json').write_text(json.dumps(meta,indent=2))
print(json.dumps(meta,indent=2))
