1002cc70: push     ebp
1002cc71: mov      ebp, esp
1002cc73: sub      esp, 0x168
1002cc79: mov      eax, dword ptr [0x1008d020]
1002cc7e: xor      eax, ebp
1002cc80: mov      dword ptr [ebp - 8], eax
1002cc83: jmp      0x1002cc95
1002cc95: mov      byte ptr [ebp - 0x110], 0
1002cc9c: push     0x7f
1002cc9e: push     0
1002cca0: lea      eax, [ebp - 0x10f]
1002cca6: push     eax
1002cca7: call     0x1004f490
1002ccac: add      esp, 0xc
1002ccaf: mov      byte ptr [ebp - 0x18], 0
1002ccb3: xor      ecx, ecx
1002ccb5: mov      dword ptr [ebp - 0x17], ecx
1002ccb8: mov      dword ptr [ebp - 0x13], ecx
1002ccbb: mov      dword ptr [ebp - 0xf], ecx
1002ccbe: mov      word ptr [ebp - 0xb], cx
1002ccc2: mov      byte ptr [ebp - 9], cl
1002ccc5: mov      byte ptr [ebp - 4], 0
1002ccc9: xor      edx, edx
1002cccb: mov      word ptr [ebp - 3], dx
1002cccf: mov      byte ptr [ebp - 1], dl
1002ccd2: mov      eax, dword ptr [ebp + 8]
1002ccd5: mov      dword ptr [ebp - 0x8c], eax
1002ccdb: cmp      dword ptr [ebp + 0xc], 0
1002ccdf: jne      0x1002cce8
1002cce1: xor      eax, eax
1002cce3: jmp      0x1002cf80
1002cce8: lea      ecx, [ebp - 0x88]
1002ccee: call     0x1002ff50
1002ccf3: lea      ecx, [ebp - 0x88]
1002ccf9: call     0x1002ffa0
1002ccfe: mov      ecx, dword ptr [ebp + 0xc]
1002cd01: push     ecx
1002cd02: lea      ecx, [ebp - 0x14c]
1002cd08: call     0x10003200
1002cd0d: lea      edx, [ebp - 0x14c]
1002cd13: push     edx
1002cd14: lea      ecx, [ebp - 0x88]
1002cd1a: call     0x10030010
1002cd1f: lea      ecx, [ebp - 0x14c]
1002cd25: call     0x10003280
1002cd2a: push     0
1002cd2c: push     0x10
1002cd2e: lea      ecx, [ebp - 0x88]
1002cd34: call     0x1002ff70
1002cd39: push     eax
1002cd3a: mov      eax, dword ptr [ebp + 8]
1002cd3d: add      eax, 0x4c
1002cd40: push     eax
1002cd41: call     0x1001f130
1002cd46: add      esp, 0x10
1002cd49: push     0
1002cd4b: push     4
1002cd4d: push     0x10078c00
1002cd52: lea      ecx, [ebp - 4]
1002cd55: push     ecx
1002cd56: call     0x1001f130
1002cd5b: add      esp, 0x10
1002cd5e: mov      dword ptr [ebp - 0x12c], 0
1002cd68: jmp      0x1002cd79
1002cd6a: mov      edx, dword ptr [ebp - 0x12c]
1002cd70: add      edx, 1
1002cd73: mov      dword ptr [ebp - 0x12c], edx
1002cd79: cmp      dword ptr [ebp - 0x12c], 4
1002cd80: jge      0x1002cdcc
1002cd82: mov      eax, dword ptr [ebp - 0x12c]
1002cd88: movsx    ecx, byte ptr [ebp + eax - 4]
1002cd8d: mov      edx, dword ptr [ebp - 0x8c]
1002cd93: add      edx, dword ptr [ebp - 0x12c]
1002cd99: movzx    eax, byte ptr [edx]
1002cd9c: xor      eax, ecx
1002cd9e: mov      ecx, dword ptr [ebp - 0x8c]
1002cda4: add      ecx, dword ptr [ebp - 0x12c]
1002cdaa: mov      byte ptr [ecx], al
1002cdac: mov      edx, dword ptr [ebp - 0x8c]
1002cdb2: add      edx, dword ptr [ebp - 0x12c]
1002cdb8: mov      al, byte ptr [edx]
1002cdba: add      al, 1
1002cdbc: mov      ecx, dword ptr [ebp - 0x8c]
1002cdc2: add      ecx, dword ptr [ebp - 0x12c]
1002cdc8: mov      byte ptr [ecx], al
1002cdca: jmp      0x1002cd6a
1002cdcc: call     0x1003a990
1002cdd1: push     0x10
1002cdd3: mov      edx, dword ptr [ebp + 8]
1002cdd6: add      edx, 0x24
1002cdd9: push     edx
1002cdda: push     0
1002cddc: call     0x1003aa10
1002cde1: add      esp, 0xc
1002cde4: mov      ecx, dword ptr [ebp + 8]
1002cde7: mov      dword ptr [ecx + 0x48], eax
1002cdea: mov      dword ptr [ebp - 0x130], 0
1002cdf4: jmp      0x1002ce05
1002cdf6: mov      edx, dword ptr [ebp - 0x130]
1002cdfc: add      edx, 1
1002cdff: mov      dword ptr [ebp - 0x130], edx
1002ce05: cmp      dword ptr [ebp - 0x130], 0xa
1002ce0c: jge      0x1002ce4d
1002ce0e: lea      eax, [ebp - 0x120]
1002ce14: push     eax
1002ce15: call     dword ptr [0x1006826c]
1002ce1b: movzx    ecx, word ptr [ebp - 0x114]
1002ce22: add      ecx, 1
1002ce25: and      ecx, 0xfff0
1002ce2b: movzx    edx, word ptr [ebp - 0x114]
1002ce32: and      edx, 0xfff0
1002ce38: cmp      ecx, edx
1002ce3a: je       0x1002ce49
1002ce3c: push     0x1f4
1002ce41: call     dword ptr [0x100682dc]
1002ce47: jmp      0x1002ce4b
1002ce49: jmp      0x1002ce4d
1002ce4b: jmp      0x1002cdf6
1002ce4d: movzx    eax, word ptr [ebp - 0x114]
1002ce54: and      eax, 0xfff0
1002ce59: mov      word ptr [ebp - 0x114], ax
1002ce60: movzx    ecx, word ptr [ebp - 0x114]
1002ce67: push     ecx
1002ce68: movzx    edx, word ptr [ebp - 0x116]
1002ce6f: push     edx
1002ce70: movzx    eax, word ptr [ebp - 0x118]
1002ce77: push     eax
1002ce78: movzx    ecx, word ptr [ebp - 0x11a]
1002ce7f: push     ecx
1002ce80: movzx    edx, word ptr [ebp - 0x11e]
1002ce87: push     edx
1002ce88: movzx    eax, word ptr [ebp - 0x120]
1002ce8f: push     eax
1002ce90: push     0x10078c08
1002ce95: push     0x80
1002ce9a: lea      ecx, [ebp - 0x110]
1002cea0: push     ecx
1002cea1: call     0x10048e63
1002cea6: add      esp, 0x24
1002cea9: lea      ecx, [ebp - 0x88]
1002ceaf: call     0x1002ffa0
1002ceb4: lea      edx, [ebp - 0x110]
1002ceba: push     edx
1002cebb: lea      ecx, [ebp - 0x168]
1002cec1: call     0x10003200
1002cec6: lea      eax, [ebp - 0x168]
1002cecc: push     eax
1002cecd: lea      ecx, [ebp - 0x88]
1002ced3: call     0x10030010
1002ced8: lea      ecx, [ebp - 0x168]
1002cede: call     0x10003280
1002cee3: push     0
1002cee5: push     0x10
1002cee7: lea      ecx, [ebp - 0x88]
1002ceed: call     0x1002ff70
1002cef2: push     eax
1002cef3: lea      ecx, [ebp - 0x18]
1002cef6: push     ecx
1002cef7: call     0x1001f130
1002cefc: add      esp, 0x10
1002ceff: mov      dword ptr [ebp - 0x128], 0x10
1002cf09: mov      edx, dword ptr [ebp + 8]
1002cf0c: add      edx, 0x24
1002cf0f: mov      dword ptr [ebp - 0x124], edx
1002cf15: lea      eax, [ebp - 0x18]
1002cf18: push     eax
1002cf19: lea      ecx, [ebp - 0x128]
1002cf1f: push     ecx
1002cf20: mov      ecx, 0x10092768
1002cf25: call     0x1002fdb0
1002cf2a: movzx    edx, al
1002cf2d: test     edx, edx
1002cf2f: jne      0x1002cf35
1002cf31: xor      eax, eax
1002cf33: jmp      0x1002cf80
1002cf35: mov      dword ptr [ebp - 0x128], 0x10
1002cf3f: mov      eax, dword ptr [ebp + 8]
1002cf42: add      eax, 0x4c
1002cf45: mov      dword ptr [ebp - 0x124], eax
1002cf4b: lea      ecx, [ebp - 0x18]
1002cf4e: push     ecx
1002cf4f: lea      edx, [ebp - 0x128]
1002cf55: push     edx
1002cf56: mov      ecx, 0x10092768
1002cf5b: call     0x1002fdb0
1002cf60: movzx    eax, al
1002cf63: test     eax, eax
1002cf65: jne      0x1002cf6b
1002cf67: xor      eax, eax
1002cf69: jmp      0x1002cf80
1002cf6b: jmp      0x1002cf7b
1002cf7b: mov      eax, 1
1002cf80: mov      ecx, dword ptr [ebp - 8]
1002cf83: xor      ecx, ebp
1002cf85: call     0x10048939
1002cf8a: mov      esp, ebp
1002cf8c: pop      ebp
1002cf8d: ret      