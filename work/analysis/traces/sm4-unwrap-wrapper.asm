1002fe80: push     ebp
1002fe81: mov      ebp, esp
1002fe83: sub      esp, 0x38
1002fe86: mov      eax, dword ptr [0x1008d020]
1002fe8b: xor      eax, ebp
1002fe8d: mov      dword ptr [ebp - 0xc], eax
1002fe90: mov      dword ptr [ebp - 0x38], ecx
1002fe93: mov      eax, dword ptr [ebp + 8]
1002fe96: cmp      dword ptr [eax], 0
1002fe99: jne      0x1002fea2
1002fe9b: xor      al, al
1002fe9d: jmp      0x1002ff39
1002fea2: mov      ecx, dword ptr [ebp + 8]
1002fea5: mov      edx, dword ptr [ecx]
1002fea7: and      edx, 0x8000000f
1002fead: jns      0x1002feb4
1002feaf: dec      edx
1002feb0: or       edx, 0xfffffff0
1002feb3: inc      edx
1002feb4: test     edx, edx
1002feb6: je       0x1002febc
1002feb8: xor      al, al
1002feba: jmp      0x1002ff39
1002febc: mov      eax, dword ptr [ebp + 8]
1002febf: mov      eax, dword ptr [eax]
1002fec1: cdq      
1002fec2: and      edx, 0xf
1002fec5: add      eax, edx
1002fec7: sar      eax, 4
1002feca: mov      dword ptr [ebp - 4], eax
1002fecd: mov      dword ptr [ebp - 8], 0
1002fed4: jmp      0x1002fedf
1002fed6: mov      ecx, dword ptr [ebp - 8]
1002fed9: add      ecx, 1
1002fedc: mov      dword ptr [ebp - 8], ecx
1002fedf: mov      edx, dword ptr [ebp - 8]
1002fee2: cmp      edx, dword ptr [ebp - 4]
1002fee5: jge      0x1002ff37
1002fee7: push     0
1002fee9: push     0x10
1002feeb: mov      eax, dword ptr [ebp - 8]
1002feee: shl      eax, 4
1002fef1: mov      ecx, dword ptr [ebp + 8]
1002fef4: add      eax, dword ptr [ecx + 4]
1002fef7: push     eax
1002fef8: lea      edx, [ebp - 0x20]
1002fefb: push     edx
1002fefc: call     0x1001f130
1002ff01: add      esp, 0x10
1002ff04: lea      eax, [ebp - 0x34]
1002ff07: push     eax
1002ff08: mov      ecx, dword ptr [ebp + 0xc]
1002ff0b: push     ecx
1002ff0c: lea      edx, [ebp - 0x20]
1002ff0f: push     edx
1002ff10: mov      ecx, dword ptr [ebp - 0x38]
1002ff13: call     0x1002fd20
1002ff18: push     0
1002ff1a: push     0x10
1002ff1c: lea      eax, [ebp - 0x34]
1002ff1f: push     eax
1002ff20: mov      ecx, dword ptr [ebp - 8]
1002ff23: shl      ecx, 4
1002ff26: mov      edx, dword ptr [ebp + 8]
1002ff29: add      ecx, dword ptr [edx + 4]
1002ff2c: push     ecx
1002ff2d: call     0x1001f130
1002ff32: add      esp, 0x10
1002ff35: jmp      0x1002fed6
1002ff37: mov      al, 1
1002ff39: mov      ecx, dword ptr [ebp - 0xc]
1002ff3c: xor      ecx, ebp
1002ff3e: call     0x10048939
1002ff43: mov      esp, ebp
1002ff45: pop      ebp
1002ff46: ret      8
1002ff49: int3     
1002ff4a: int3     
1002ff4b: int3     
1002ff4c: int3     
1002ff4d: int3     
1002ff4e: int3     
1002ff4f: int3     