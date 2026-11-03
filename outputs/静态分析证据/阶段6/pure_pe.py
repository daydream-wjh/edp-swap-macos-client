"""Isolated PE arithmetic emulator: no host API forwarding."""
import struct
from pathlib import Path
import pefile
from unicorn import Uc,UC_ARCH_X86,UC_MODE_32,UC_HOOK_CODE
from unicorn.x86_const import UC_X86_REG_ESP,UC_X86_REG_EBP,UC_X86_REG_EAX,UC_X86_REG_EIP
class PurePE:
 def __init__(self,path):
  self.p=pefile.PE(str(path));base=self.p.OPTIONAL_HEADER.ImageBase
  self.u=Uc(UC_ARCH_X86,UC_MODE_32)
  self.u.mem_map(base,(self.p.OPTIONAL_HEADER.SizeOfImage+4095)&~4095)
  self.u.mem_write(base,self.p.get_memory_mapped_image())
  self.u.mem_map(0x20000000,0x40000);self.u.mem_map(0x21000000,0x100000)
  self.u.mem_map(0x30000000,0x1000);self.u.mem_map(0x60000000,0x10000)
  for n,desc in enumerate(getattr(self.p,'DIRECTORY_ENTRY_IMPORT',[])):
   for j,i in enumerate(desc.imports):
    stub=0x60000000+n*0x1000+j*8
    self.u.mem_write(i.address,struct.pack('<I',stub))
  def forbidden(u,addr,size,user):
   if 0x60000000<=addr<0x60010000:raise RuntimeError('OS API call blocked in pure emulator')
  self.u.hook_add(UC_HOOK_CODE,forbidden,begin=0x60000000,end=0x6000ffff)
 def call(self,va,args):
  sp=0x2003f000;self.u.mem_write(sp,struct.pack('<'+'I'*(len(args)+1),0x30000000,*args))
  self.u.reg_write(UC_X86_REG_ESP,sp);self.u.reg_write(UC_X86_REG_EBP,0)
  self.u.emu_start(va,0x30000000,count=5_000_000)
  if self.u.reg_read(UC_X86_REG_EIP)!=0x30000000:raise RuntimeError('Instruction budget exhausted')
  return self.u.reg_read(UC_X86_REG_EAX)
