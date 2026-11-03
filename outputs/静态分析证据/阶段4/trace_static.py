"""Annotate static x86 evidence; does not execute target code."""
from pathlib import Path
import struct,json,re
import pefile
from capstone import Cs,CS_ARCH_X86,CS_MODE_32

root=Path(__file__).resolve().parent
dest=root/'analysis/traces';dest.mkdir(exist_ok=True)
def trace(file,lo,hi,name):
 p=pefile.PE(str(file));base=p.OPTIONAL_HEADER.ImageBase
 imports={i.address:(i.name.decode() if i.name else str(i.ordinal)) for d in getattr(p,'DIRECTORY_ENTRY_IMPORT',[]) for i in d.imports}
 def string_at(va):
  if not base<=va<base+p.OPTIONAL_HEADER.SizeOfImage:return ''
  try:
   b=p.get_data(va-base,180).split(b'\0')[0]
   if len(b)>=4 and all(32<=x<127 for x in b):return repr(b.decode())
  except Exception:pass
  return ''
 md=Cs(CS_ARCH_X86,CS_MODE_32);md.skipdata=True
 lines=[]
 for i in md.disasm(p.get_data(lo-base,hi-lo),lo):
  notes=[]
  if len(i.bytes)==6 and i.bytes[:2] in (b'\xff\x15',b'\xff\x25'):
   a=struct.unpack_from('<I',i.bytes,2)[0]
   if a in imports:notes.append(imports[a])
  for m in re.finditer(r'0x[0-9a-f]+',i.op_str):
   s=string_at(int(m.group(),16))
   if s:notes.append(s)
  lines.append(f'{i.address:08x}: {i.mnemonic:8} {i.op_str}'+(' ; '+' | '.join(notes) if notes else ''))
 (dest/(name+'.asm')).write_text('\n'.join(lines))

ctrl=root/'usb-copies/EdpEDiskCtrl.extracted.dll'
trace(ctrl,0x10026550,0x10027b80,'login-annotated')
trace(ctrl,0x10029e80,0x1002a260,'loader-annotated')
trace(ctrl,0x10028340,0x100288d0,'wst-annotated')
trace(root/'usb-copies/EdpEDisk.mount.dll',0x10007350,0x100078f0,'mount-annotated')
print(dest)
