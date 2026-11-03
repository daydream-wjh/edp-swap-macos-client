"""Decode the non-password metadata header from an existing read-only capture."""
from pathlib import Path
import re,struct,json
root=Path(__file__).resolve().parent
raw=(root/'device-metadata/head.bin').read_bytes()
sector=bytearray(raw[4*512:5*512])
m=re.match(rb'\$\$\$(\d+)\$\$\$',sector)
if not m:raise SystemExit('Header envelope not recognized')
value=int(m.group(1));mask=((value&65535)^(value>>16))&65535
for i in range(244):
 offset=24+i*2
 struct.pack_into('<H',sector,offset,struct.unpack_from('<H',sector,offset)[0]^mask)
 mask=(mask+256-i-1)&65535
h=bytes(sector[24:71])
assert struct.unpack_from('<I',h)[0]==value^0x88888888
assert h[33:37]==b'LLGB'
boot=raw[63*512:64*512]
u16=lambda n:struct.unpack_from('<H',boot,n)[0]
u32=lambda n:struct.unpack_from('<I',boot,n)[0]
bs=u16(11);spc=boot[13];total=u16(19) or u32(32)
root_sectors=(u16(17)*32+bs-1)//bs
clusters=(total-u16(14)-boot[16]*(u16(22) or u32(36))-root_sectors)//spc
result={'header_envelope_valid':True,'header_check_valid':True,'header_magic':'LLGB',
 'metadata_selector_bytes':list(h[41:45]),
 'boot_filesystem':{'bytes_per_sector':bs,'sectors_per_cluster':spc,'total_sectors':total,'cluster_count':clusters,'type':'FAT12' if clusters<4085 else 'FAT16' if clusters<65525 else 'FAT32'},
 'partition_record_status':'Not decoded; identifier derivation remains unverified',
 'scope':'Captured metadata only; no authentication attempt or device write'}
(root/'analysis/metadata-header-summary.json').write_text(json.dumps(result,indent=2))
print(json.dumps(result,indent=2))
