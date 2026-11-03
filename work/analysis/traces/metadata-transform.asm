1003a6b0: push     ebp
1003a6b1: mov      ebp, esp
1003a6b3: sub      esp, 0x184
1003a6b9: mov      eax, dword ptr [0x1008d020]
1003a6be: xor      eax, ebp
1003a6c0: mov      dword ptr [ebp - 4], eax
1003a6c3: mov      dword ptr [ebp - 0x180], 0
1003a6cd: jmp      0x1003a6de
1003a6cf: mov      eax, dword ptr [ebp - 0x180]
1003a6d5: add      eax, 1
1003a6d8: mov      dword ptr [ebp - 0x180], eax
1003a6de: cmp      dword ptr [ebp - 0x180], 0x10
1003a6e5: jae      0x1003a714
1003a6e7: mov      eax, dword ptr [ebp - 0x180]
1003a6ed: xor      edx, edx
1003a6ef: div      dword ptr [ebp + 0x1c]
1003a6f2: mov      ecx, dword ptr [ebp + 0x18]
1003a6f5: movzx    edx, byte ptr [ecx + edx]
1003a6f9: mov      eax, dword ptr [ebp - 0x180]
1003a6ff: movzx    ecx, byte ptr [eax + 0x1006cba8]
1003a706: xor      edx, ecx
1003a708: mov      eax, dword ptr [ebp - 0x180]
1003a70e: mov      byte ptr [ebp + eax - 0x14], dl
1003a712: jmp      0x1003a6cf
1003a714: mov      ecx, dword ptr [ebp + 0x14]
1003a717: shr      ecx, 4
1003a71a: mov      dword ptr [ebp - 0x17c], ecx
1003a720: mov      eax, dword ptr [ebp + 0x14]
1003a723: xor      edx, edx
1003a725: mov      ecx, 0x10
1003a72a: div      ecx
1003a72c: mov      dword ptr [ebp - 0x184], edx
1003a732: cmp      dword ptr [ebp - 0x184], 0
1003a739: je       0x1003a742
1003a73b: xor      al, al
1003a73d: jmp      0x1003a7e0
1003a742: lea      edx, [ebp - 0xc8]
1003a748: push     edx
1003a749: lea      eax, [ebp - 0x14]
1003a74c: push     eax
1003a74d: call     0x1003a260
1003a752: add      esp, 8
1003a755: mov      dword ptr [ebp - 0x180], 0
1003a75f: jmp      0x1003a770
1003a761: mov      ecx, dword ptr [ebp - 0x180]
1003a767: add      ecx, 1
1003a76a: mov      dword ptr [ebp - 0x180], ecx
1003a770: mov      edx, dword ptr [ebp - 0x180]
1003a776: cmp      edx, dword ptr [ebp - 0x17c]
1003a77c: jae      0x1003a7de
1003a77e: mov      eax, dword ptr [ebp + 0xc]
1003a781: push     eax
1003a782: mov      ecx, dword ptr [ebp + 8]
1003a785: push     ecx
1003a786: push     0xb0
1003a78b: lea      edx, [ebp - 0x178]
1003a791: push     edx
1003a792: lea      eax, [ebp - 0xc8]
1003a798: push     eax
1003a799: call     0x1003a930
1003a79e: add      esp, 0x14
1003a7a1: mov      ecx, dword ptr [ebp + 0x20]
1003a7a4: push     ecx
1003a7a5: lea      edx, [ebp - 0x178]
1003a7ab: push     edx
1003a7ac: mov      eax, dword ptr [ebp + 0x10]
1003a7af: push     eax
1003a7b0: call     0x1003a550
1003a7b5: add      esp, 0xc
1003a7b8: mov      ecx, dword ptr [ebp + 0x10]
1003a7bb: add      ecx, 0x10
1003a7be: mov      dword ptr [ebp + 0x10], ecx
1003a7c1: mov      edx, dword ptr [ebp + 0x20]
1003a7c4: add      edx, 0x10
1003a7c7: mov      dword ptr [ebp + 0x20], edx
1003a7ca: mov      eax, dword ptr [ebp + 8]
1003a7cd: add      eax, 0x10
1003a7d0: mov      ecx, dword ptr [ebp + 0xc]
1003a7d3: adc      ecx, 0
1003a7d6: mov      dword ptr [ebp + 8], eax
1003a7d9: mov      dword ptr [ebp + 0xc], ecx
1003a7dc: jmp      0x1003a761
1003a7de: mov      al, 1
1003a7e0: mov      ecx, dword ptr [ebp - 4]
1003a7e3: xor      ecx, ebp
1003a7e5: call     0x10048939
1003a7ea: mov      esp, ebp
1003a7ec: pop      ebp
1003a7ed: ret      
1003a7ee: int3     
1003a7ef: int3     