"""Emulate only isolated arithmetic routines with synthetic test vectors.

No host system-call bridge, kernel loading, device access or password input.
"""
from pathlib import Path
import json,struct,hashlib
import pefile
from unicorn import Uc,UC_ARCH_X86,UC_MODE_32
from unicorn.x86_const import UC_X86_REG_ESP,UC_X86_REG_EBP,UC_X86_REG_EAX,UC_X86_REG_EIP
from Crypto.Cipher import AES
from native_crypto import expand,block,offset_transform

root=Path(__file__).resolve().parent
driver=root/'usb-copies/EdpEDisk.x86.sys'
p=pefile.PE(str(driver));base=p.OPTIONAL_HEADER.ImageBase
u=Uc(UC_ARCH_X86,UC_MODE_32)
u.mem_map(base,(p.OPTIONAL_HEADER.SizeOfImage+4095)&~4095)
u.mem_write(base,p.get_memory_mapped_image())
u.mem_map(0x20000000,0x20000);u.mem_map(0x30000000,0x1000)
def call(va,args):
 sp=0x2001f000
 u.mem_write(sp,struct.pack('<'+'I'*(len(args)+1),0x30000000,*args))
 u.reg_write(UC_X86_REG_ESP,sp);u.reg_write(UC_X86_REG_EBP,0)
 u.emu_start(va,0x30000000,count=2_000_000)
 if u.reg_read(UC_X86_REG_EIP)!=0x30000000:raise RuntimeError('Instruction budget reached')
 return u.reg_read(UC_X86_REG_EAX)

key=bytes.fromhex('000102030405060708090a0b0c0d0e0f')
plain=bytes.fromhex('00112233445566778899aabbccddeeff')
keyptr=0x20001000;schedule=0x20002000;inp=0x20003000;out=0x20004000
u.mem_write(keyptr,key);u.mem_write(inp,plain)
call(0x12598,[keyptr,schedule])
call(0x1266c,[inp,schedule,out])
encrypted=bytes(u.mem_read(out,16))
expected=AES.new(key,AES.MODE_ECB).encrypt(plain)
assert encrypted==expected,(encrypted.hex(),expected.hex())
u.mem_write(inp,encrypted);call(0x12726,[inp,schedule,out])
assert bytes(u.mem_read(out,16))==plain
tests=[{'test':'AES-128 block encryption matches independent implementation','passed':True}, {'test':'AES-128 block decryption recovers synthetic plaintext','passed':True}]
salt=p.get_data(0x16120-base,16)
sample_key=bytes(range(8));sample_data=bytes(range(64))
for offset in [0,16,512,0x100000200]:
 u.mem_write(keyptr,sample_key);u.mem_write(inp,sample_data)
 ret=call(0x128dc,[offset&0xffffffff,offset>>32,inp,len(sample_data),keyptr,len(sample_key),out])
 assert ret&255==1
 encrypted=bytes(u.mem_read(out,len(sample_data)))
 native=offset_transform(sample_data,sample_key,salt,offset,decrypt=False)
 assert native==encrypted,('offset encryption mismatch',offset)
 u.mem_write(inp,encrypted)
 ret=call(0x1281a,[offset&0xffffffff,offset>>32,inp,len(encrypted),keyptr,len(sample_key),out])
 assert ret&255==1
 recovered=bytes(u.mem_read(out,len(sample_data)))
 assert recovered==sample_data
 assert offset_transform(encrypted,sample_key,salt,offset,decrypt=True)==sample_data
 tests.append({'test':f'Portable offset transform equals driver emulation and roundtrips at byte offset {offset}','passed':True})
result={'driver_sha256':hashlib.sha256(driver.read_bytes()).hexdigest(),'scope':'Pure routines under Unicorn; no OS/device emulation; synthetic data only','tests':tests}
(root/'analysis/crypto-validation.json').write_text(json.dumps(result,indent=2))
print(json.dumps(result,indent=2))
