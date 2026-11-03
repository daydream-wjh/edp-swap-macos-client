from pathlib import Path
import hashlib, json, struct, re
import pefile
from capstone import Cs, CS_ARCH_X86, CS_MODE_32

root=Path(__file__).resolve().parent
out=root/'analysis'; out.mkdir(exist_ok=True)
targets={'CreateFileA','CreateFileW','DeviceIoControl','ReadFile','WriteFile','LoadLibraryA','LoadLibraryW','GetProcAddress','FindResourceA','FindResourceW','LoadResource','LockResource'}
results=[]
for path in sorted((root/'usb-copies').glob('*')):
    data=path.read_bytes()
    row={'file':path.name,'size':len(data),'sha256':hashlib.sha256(data).hexdigest()}
    if data[:2]!=b'MZ':
        results.append(row); continue
    pe=pefile.PE(data=data)
    row.update(image_base=hex(pe.OPTIONAL_HEADER.ImageBase),entry_rva=hex(pe.OPTIONAL_HEADER.AddressOfEntryPoint),timestamp=pe.FILE_HEADER.TimeDateStamp)
    row['sections']=[{'name':s.Name.rstrip(b'\0').decode(errors='replace'),'rva':hex(s.VirtualAddress),'raw_size':s.SizeOfRawData,'entropy':s.get_entropy()} for s in pe.sections]
    imports={}
    for desc in getattr(pe,'DIRECTORY_ENTRY_IMPORT',[]):
        for imp in desc.imports:
            name=imp.name.decode(errors='replace') if imp.name else '#'+str(imp.ordinal)
            imports[imp.address]=(desc.dll.decode(),name)
    row['imports']=[{'iat_va':hex(a),'dll':d,'name':n} for a,(d,n) in imports.items()]
    row['versions']=[]
    for group in getattr(pe,'FileInfo',[]):
        for info in group:
            for table in getattr(info,'StringTable',[]):
                row['versions'].append({k.decode(errors='replace'):v.decode(errors='replace') for k,v in table.entries.items()})
    resources=[]
    def walk(node,parts):
        for e in node.entries:
            label=str(e.name) if e.name is not None else str(e.id)
            if hasattr(e,'directory'): walk(e.directory,parts+[label])
            elif hasattr(e,'data'):
                b=pe.get_data(e.data.struct.OffsetToData,e.data.struct.Size)
                name=re.sub(r'[^\w.-]','_', '_'.join(parts+[label]))+'.bin'
                folder=out/(path.name+'.resources'); folder.mkdir(exist_ok=True)
                (folder/name).write_bytes(b)
                resources.append({'path':'/'.join(parts+[label]),'size':len(b),'magic':b[:16].hex(),'sha256':hashlib.sha256(b).hexdigest()})
    if hasattr(pe,'DIRECTORY_ENTRY_RESOURCE'): walk(pe.DIRECTORY_ENTRY_RESOURCE,[])
    row['resources']=resources
    row['api_references']=[]
    md=Cs(CS_ARCH_X86,CS_MODE_32)
    # Linear disassembly of executable sections; candidates, not a recovered CFG.
    for s in pe.sections:
        if not s.Characteristics & 0x20000000: continue
        md.skipdata=True
        history=[]
        for ins in md.disasm(s.get_data(),pe.OPTIONAL_HEADER.ImageBase+s.VirtualAddress):
            line=f'{ins.address:08x}: {ins.mnemonic} {ins.op_str}'
            if ins.mnemonic in ('call','jmp') and len(ins.bytes)==6 and ins.bytes[:2] in (b'\xff\x15',b'\xff\x25'):
                addr=struct.unpack('<I',ins.bytes[2:])[0]
                if addr in imports and imports[addr][1] in targets:
                    row['api_references'].append({'va':hex(ins.address),'api':imports[addr][1],'kind':ins.mnemonic,'context':history[-10:]+[line]})
            history.append(line)
            if len(history)>12: history.pop(0)
    results.append(row)
(out/'inventory.json').write_text(json.dumps(results,ensure_ascii=False,indent=2))
for r in results:
    print(r['file'],r['size'],r['sha256'])
    print('versions:',r.get('versions',[]))
    print('API reference candidates:',len(r.get('api_references',[])))
    for x in r.get('api_references',[]): print(x['va'],x['api'],x['kind'])
