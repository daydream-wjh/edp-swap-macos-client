1004b560: mov      edi, edi
1004b562: push     ebp
1004b563: mov      ebp, esp
1004b565: sub      esp, 0xc
1004b568: mov      eax, dword ptr [0x1008d020]
1004b56d: xor      eax, ebp
1004b56f: mov      dword ptr [ebp - 4], eax
1004b572: push     ebx
1004b573: push     esi
1004b574: push     edi
1004b575: mov      edi, dword ptr [ebp + 8]
1004b578: xor      ebx, ebx
1004b57a: cmp      edi, ebx
1004b57c: jne      0x1004b59a
1004b57e: call     0x1004bf63
1004b583: push     0x16
1004b585: pop      esi
1004b586: push     ebx
1004b587: push     ebx
1004b588: push     ebx
1004b589: push     ebx
1004b58a: push     ebx
1004b58b: mov      dword ptr [eax], esi
1004b58d: call     0x1004af9d
1004b592: add      esp, 0x14
1004b595: jmp      0x1004b6cf
1004b59a: push     dword ptr [ebp + 0xc]
1004b59d: push     edi
1004b59e: call     0x10049694
1004b5a3: pop      ecx
1004b5a4: pop      ecx
1004b5a5: cmp      eax, dword ptr [ebp + 0xc]
1004b5a8: jb       0x1004b5ae
1004b5aa: mov      byte ptr [edi], bl
1004b5ac: jmp      0x1004b57e
1004b5ae: mov      edx, dword ptr [ebp + 0x10]
1004b5b1: mov      eax, dword ptr [edx]
1004b5b3: mov      ecx, dword ptr [eax + 0x14]
1004b5b6: cmp      ecx, ebx
1004b5b8: jne      0x1004b5da
1004b5ba: mov      ecx, edi
1004b5bc: cmp      byte ptr [edi], bl
1004b5be: je       0x1004b5d3
1004b5c0: mov      al, byte ptr [ecx]
1004b5c2: cmp      al, 0x41
1004b5c4: jl       0x1004b5ce
1004b5c6: cmp      al, 0x5a
1004b5c8: jg       0x1004b5ce
1004b5ca: add      al, 0x20
1004b5cc: mov      byte ptr [ecx], al
1004b5ce: inc      ecx
1004b5cf: cmp      byte ptr [ecx], bl
1004b5d1: jne      0x1004b5c0
1004b5d3: xor      eax, eax
1004b5d5: jmp      0x1004b6d1
1004b5da: push     1
1004b5dc: push     dword ptr [eax + 4]
1004b5df: mov      esi, 0x100
1004b5e4: push     ebx
1004b5e5: push     ebx
1004b5e6: push     -1
1004b5e8: push     edi
1004b5e9: push     esi
1004b5ea: push     ecx
1004b5eb: push     edx
1004b5ec: call     0x10053a10
1004b5f1: mov      ecx, eax
1004b5f3: add      esp, 0x24
1004b5f6: mov      dword ptr [ebp - 0xc], ecx
1004b5f9: cmp      ecx, ebx
1004b5fb: jne      0x1004b614
1004b5fd: .byte    0xe8
1004b5fe: popal    
1004b5ff: .byte    0x09