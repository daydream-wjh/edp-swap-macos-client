1001dc60: push     ebp
1001dc61: mov      ebp, esp
1001dc63: sub      esp, 0x10
1001dc66: mov      dword ptr [ebp - 0x10], ecx
1001dc69: cmp      dword ptr [ebp + 0x10], 0
1001dc6d: jne      0x1001dc82
1001dc6f: mov      eax, dword ptr [ebp - 0x10]
1001dc72: mov      ecx, dword ptr [ebp + 0xc]
1001dc75: cmp      ecx, dword ptr [eax + 0x14]
1001dc78: ja       0x1001dc82
1001dc7a: mov      eax, dword ptr [ebp + 0xc]
1001dc7d: jmp      0x1001dd2e
1001dc82: mov      edx, dword ptr [ebp - 0x10]
1001dc85: mov      eax, dword ptr [ebp + 0xc]
1001dc88: cmp      eax, dword ptr [edx + 0x14]
1001dc8b: jae      0x1001dd29
1001dc91: mov      ecx, dword ptr [ebp - 0x10]
1001dc94: mov      edx, dword ptr [ecx + 0x14]
1001dc97: sub      edx, dword ptr [ebp + 0xc]
1001dc9a: mov      dword ptr [ebp - 4], edx
1001dc9d: mov      eax, dword ptr [ebp + 0x10]
1001dca0: cmp      eax, dword ptr [ebp - 4]
1001dca3: ja       0x1001dd29
1001dca9: mov      ecx, dword ptr [ebp + 0x10]
1001dcac: sub      ecx, 1
1001dcaf: mov      edx, dword ptr [ebp - 4]
1001dcb2: sub      edx, ecx
1001dcb4: mov      dword ptr [ebp - 4], edx
1001dcb7: mov      ecx, dword ptr [ebp - 0x10]
1001dcba: call     0x100039b0
1001dcbf: add      eax, dword ptr [ebp + 0xc]
1001dcc2: mov      dword ptr [ebp - 0xc], eax
1001dcc5: jmp      0x1001dce1
1001dcc7: mov      eax, dword ptr [ebp - 8]
1001dcca: sub      eax, dword ptr [ebp - 0xc]
1001dccd: add      eax, 1
1001dcd0: mov      ecx, dword ptr [ebp - 4]
1001dcd3: sub      ecx, eax
1001dcd5: mov      dword ptr [ebp - 4], ecx
1001dcd8: mov      edx, dword ptr [ebp - 8]
1001dcdb: add      edx, 1
1001dcde: mov      dword ptr [ebp - 0xc], edx
1001dce1: mov      eax, dword ptr [ebp + 8]
1001dce4: push     eax
1001dce5: mov      ecx, dword ptr [ebp - 4]
1001dce8: push     ecx
1001dce9: mov      edx, dword ptr [ebp - 0xc]
1001dcec: push     edx
1001dced: call     0x1001c6f0
1001dcf2: add      esp, 0xc
1001dcf5: mov      dword ptr [ebp - 8], eax
1001dcf8: cmp      dword ptr [ebp - 8], 0
1001dcfc: je       0x1001dd29
1001dcfe: mov      eax, dword ptr [ebp + 0x10]
1001dd01: push     eax
1001dd02: mov      ecx, dword ptr [ebp + 8]
1001dd05: push     ecx
1001dd06: mov      edx, dword ptr [ebp - 8]
1001dd09: push     edx
1001dd0a: call     0x100045b0
1001dd0f: add      esp, 0xc
1001dd12: test     eax, eax
1001dd14: jne      0x1001dd27
1001dd16: mov      ecx, dword ptr [ebp - 0x10]
1001dd19: call     0x100039b0
1001dd1e: mov      ecx, dword ptr [ebp - 8]
1001dd21: sub      ecx, eax
1001dd23: mov      eax, ecx
1001dd25: jmp      0x1001dd2e
1001dd27: jmp      0x1001dcc7
1001dd29: mov      eax, dword ptr [0x10084268]
1001dd2e: mov      esp, ebp
1001dd30: pop      ebp
1001dd31: ret      0xc
1001dd34: int3     
1001dd35: int3     
1001dd36: int3     
1001dd37: int3     
1001dd38: int3     
1001dd39: int3     
1001dd3a: int3     
1001dd3b: int3     
1001dd3c: int3     
1001dd3d: int3     
1001dd3e: int3     
1001dd3f: int3     
1001dd40: push     ebp
1001dd41: mov      ebp, esp
1001dd43: push     ecx
1001dd44: mov      dword ptr [ebp - 4], ecx
1001dd47: mov      eax, dword ptr [ebp - 4]
1001dd4a: push     eax
1001dd4b: mov      ecx, dword ptr [ebp + 8]
1001dd4e: call     0x10037380
1001dd53: mov      eax, dword ptr [ebp + 8]
1001dd56: mov      esp, ebp
1001dd58: pop      ebp
1001dd59: ret      4
1001dd5c: int3     
1001dd5d: int3     
1001dd5e: int3     
1001dd5f: int3     
1001dd60: push     ebp
1001dd61: mov      ebp, esp
1001dd63: sub      esp, 8
1001dd66: mov      dword ptr [ebp - 4], ecx
1001dd69: mov      eax, dword ptr [ebp - 4]
1001dd6c: cmp      dword ptr [eax + 0xc], 0
1001dd70: jne      0x1001dd7b
1001dd72: mov      dword ptr [ebp - 8], 0
1001dd79: jmp      0x1001dd92
1001dd7b: mov      ecx, dword ptr [ebp - 4]
1001dd7e: mov      edx, dword ptr [ebp - 4]
1001dd81: mov      eax, dword ptr [ecx + 0x14]
1001dd84: sub      eax, dword ptr [edx + 0xc]
1001dd87: cdq      
1001dd88: mov      ecx, 0x1c
1001dd8d: idiv     ecx
1001dd8f: .byte    0x89