1004b99b: mov      edi, edi
1004b99d: push     ebp
1004b99e: mov      ebp, esp
1004b9a0: cmp      dword ptr [0x10091db8], 0
1004b9a7: jne      0x1004b9b9
1004b9a9: mov      eax, dword ptr [ebp + 8]
1004b9ac: lea      ecx, [eax - 0x41]
1004b9af: cmp      ecx, 0x19
1004b9b2: ja       0x1004b9c5
1004b9b4: add      eax, 0x20
1004b9b7: pop      ebp
1004b9b8: ret      
1004b9b9: push     0
1004b9bb: push     dword ptr [ebp + 8]
1004b9be: call     0x1004b886
1004b9c3: pop      ecx
1004b9c4: pop      ecx
1004b9c5: pop      ebp
1004b9c6: ret      
1004b9c7: int3     
1004b9c8: int3     
1004b9c9: int3     
1004b9ca: int3     
1004b9cb: int3     
1004b9cc: int3     
1004b9cd: int3     
1004b9ce: int3     
1004b9cf: int3     