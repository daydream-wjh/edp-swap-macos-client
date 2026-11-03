1002cc70: push     ebp
1002cc71: mov      ebp, esp
1002cc73: sub      esp, 0x168
1002cc79: mov      eax, dword ptr [0x1008d020]
1002cc7e: xor      eax, ebp
1002cc80: mov      dword ptr [ebp - 8], eax
1002cc83: jmp      0x1002cc95
1002cc85: push     esi
1002cc86: dec      ebp
1002cc87: push     eax
1002cc88: jb       0x1002ccf9
1002cc8a: je       0x1002ccf1
1002cc8c: arpl     word ptr [eax + 0x62], si
1002cc90: imul     ebp, dword ptr gs:[bp], 0xfef085c6
1002cc99: .byte    0xff
1002cc9a: inc      dword ptr [eax]
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
1002cd4d: push     0x10078c00 ; 'DPDE'
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
1002ce0e: .byte    0x8d
1002ce0f: .byte    0x85