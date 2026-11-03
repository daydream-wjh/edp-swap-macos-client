1004b600: add      byte ptr [eax], al
1004b602: mov      dword ptr [eax], 0x2a
1004b608: call     0x1004bf63
1004b60d: mov      eax, dword ptr [eax]
1004b60f: jmp      0x1004b6d1
1004b614: cmp      dword ptr [ebp + 0xc], ecx
1004b617: jae      0x1004b627
1004b619: mov      byte ptr [edi], bl
1004b61b: call     0x1004bf63
1004b620: push     0x22
1004b622: jmp      0x1004b585
1004b627: cmp      ecx, ebx
1004b629: jle      0x1004b670
1004b62b: push     -0x20
1004b62d: xor      edx, edx
1004b62f: pop      eax
1004b630: div      ecx
1004b632: cmp      eax, 1
1004b635: jb       0x1004b670
1004b637: lea      eax, [ecx + 8]
1004b63a: cmp      eax, 0x400
1004b63f: ja       0x1004b654
1004b641: call     0x1004fd90
1004b646: mov      eax, esp
1004b648: cmp      eax, ebx
1004b64a: je       0x1004b668
1004b64c: mov      dword ptr [eax], 0xcccc
1004b652: jmp      0x1004b665
1004b654: push     eax
1004b655: call     0x1004b14c
1004b65a: pop      ecx
1004b65b: cmp      eax, ebx
1004b65d: je       0x1004b668
1004b65f: mov      dword ptr [eax], 0xdddd
1004b665: add      eax, 8
1004b668: mov      ecx, dword ptr [ebp - 0xc]
1004b66b: mov      dword ptr [ebp - 8], eax
1004b66e: jmp      0x1004b673
1004b670: mov      dword ptr [ebp - 8], ebx
1004b673: cmp      dword ptr [ebp - 8], ebx
1004b676: jne      0x1004b685
1004b678: call     0x1004bf63
1004b67d: mov      dword ptr [eax], 0xc
1004b683: jmp      0x1004b608
1004b685: mov      edx, dword ptr [ebp + 0x10]
1004b688: mov      eax, dword ptr [edx]
1004b68a: push     1
1004b68c: push     dword ptr [eax + 4]
1004b68f: push     ecx
1004b690: push     dword ptr [ebp - 8]
1004b693: push     -1
1004b695: push     edi
1004b696: push     esi
1004b697: push     dword ptr [eax + 0x14]
1004b69a: push     edx
1004b69b: call     0x10053a10
1004b6a0: add      esp, 0x24
1004b6a3: test     eax, eax
1004b6a5: je       0x1004b6ba
1004b6a7: push     dword ptr [ebp - 8]
1004b6aa: push     dword ptr [ebp + 0xc]
1004b6ad: push     edi
1004b6ae: call     0x10048ea2
1004b6b3: add      esp, 0xc
1004b6b6: mov      esi, eax
1004b6b8: jmp      0x1004b6c6
1004b6ba: call     0x1004bf63
1004b6bf: push     0x2a
1004b6c1: pop      ecx
1004b6c2: mov      dword ptr [eax], ecx
1004b6c4: mov      esi, ecx
1004b6c6: push     dword ptr [ebp - 8]
1004b6c9: call     0x10048948
1004b6ce: pop      ecx
1004b6cf: mov      eax, esi
1004b6d1: lea      esp, [ebp - 0x18]
1004b6d4: pop      edi
1004b6d5: pop      esi
1004b6d6: pop      ebx
1004b6d7: mov      ecx, dword ptr [ebp - 4]
1004b6da: xor      ecx, ebp
1004b6dc: call     0x10048939
1004b6e1: leave    
1004b6e2: ret      
1004b6e3: mov      edi, edi
1004b6e5: push     ebp
1004b6e6: mov      ebp, esp
1004b6e8: sub      esp, 0x10
1004b6eb: push     dword ptr [ebp + 0x10]
1004b6ee: lea      ecx, [ebp - 0x10]
1004b6f1: call     0x10048968
1004b6f6: lea      eax, [ebp - 0x10]
1004b6f9: push     eax
1004b6fa: push     dword ptr [ebp + 0xc]
1004b6fd: push     dword ptr [ebp + 8]
1004b700: call     0x1004b560
1004b705: add      esp, 0xc
1004b708: cmp      byte ptr [ebp - 4], 0
1004b70c: je       0x1004b715
1004b70e: mov      ecx, dword ptr [ebp - 8]
1004b711: and      dword ptr [ecx + 0x70], 0xfffffffd
1004b715: leave    
1004b716: ret      