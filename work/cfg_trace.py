from pathlib import Path
from collections import deque
import json,pefile
from capstone import Cs,CS_ARCH_X86,CS_MODE_32,CS_OP_IMM

root=Path(__file__).resolve().parent
p=pefile.PE(str(root/'usb-copies/EdpEDiskCtrl.extracted.dll'));base=p.OPTIONAL_HEADER.ImageBase
md=Cs(CS_ARCH_X86,CS_MODE_32);md.detail=True
folder=root/'analysis/cfg';folder.mkdir(exist_ok=True)
def walk(start,limit,name):
 todo=deque([start]);seen={};calls=[]
 while todo:
  pc=todo.popleft()
  while start<=pc<limit and pc not in seen:
   i=next(md.disasm(p.get_data(pc-base,15),pc,count=1),None)
   if i is None:break
   seen[pc]=f'{pc:08x}: {i.mnemonic:8} {i.op_str}'
   nxt=pc+i.size
   target=i.operands[0].imm if i.operands and i.operands[0].type==CS_OP_IMM else None
   if i.mnemonic=='call':calls.append({'va':hex(pc),'target':hex(target) if target is not None else i.op_str})
   if i.mnemonic.startswith('ret') or i.mnemonic in ['int3','ud2']:break
   if i.mnemonic=='jmp':
    if target is not None:todo.append(target)
    break
   if i.mnemonic.startswith('j') or i.mnemonic.startswith('loop'):
    if target is not None:todo.append(target)
   pc=nxt
 (folder/(name+'.asm')).write_text('\n'.join(seen[a] for a in sorted(seen)))
 (folder/(name+'.calls.json')).write_text(json.dumps(calls,indent=2))
 print(name,'instructions',len(seen),'calls',len(calls))
for spec in [(0x10026500,0x10027b80,'UserLogin'),(0x100282a0,0x10028a00,'WSTUserLogin'),(0x1002cc70,0x1002cfa0,'mount_parameters')]:walk(*spec)
