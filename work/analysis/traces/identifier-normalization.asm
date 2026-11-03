1004b717: mov      edi, edi
1004b719: push     ebp
1004b71a: mov      ebp, esp
1004b71c: push     0
1004b71e: push     dword ptr [ebp + 0xc]
1004b721: push     dword ptr [ebp + 8]
1004b724: call     0x1004b6e3
1004b729: add      esp, 0xc
1004b72c: pop      ebp
1004b72d: ret      
1004b72e: mov      edi, edi
1004b730: push     ebp
1004b731: mov      ebp, esp
1004b733: sub      esp, 0x18
1004b736: push     ebx
1004b737: push     dword ptr [ebp + 0x10]
1004b73a: lea      ecx, [ebp - 0x18]
1004b73d: call     0x10048968
1004b742: mov      eax, dword ptr [ebp - 0x14]
1004b745: xor      ebx, ebx
1004b747: cmp      dword ptr [eax + 8], ebx
1004b74a: jne      0x1004b76e
1004b74c: push     dword ptr [ebp + 0xc]
1004b74f: push     dword ptr [ebp + 8]
1004b752: call     0x1004ade0
1004b757: pop      ecx
1004b758: pop      ecx
1004b759: cmp      byte ptr [ebp - 0xc], bl
1004b75c: je       0x1004b85c
1004b762: mov      ecx, dword ptr [ebp - 0x10]
1004b765: and      dword ptr [ecx + 0x70], 0xfffffffd
1004b769: jmp      0x1004b85c
1004b76e: mov      eax, dword ptr [ebp + 0xc]
1004b771: cmp      eax, ebx
1004b773: jne      0x1004b7a0
1004b775: call     0x1004bf63
1004b77a: push     ebx
1004b77b: push     ebx
1004b77c: push     ebx
1004b77d: push     ebx
1004b77e: push     ebx
1004b77f: mov      dword ptr [eax], 0x16
1004b785: call     0x1004af9d
1004b78a: add      esp, 0x14
1004b78d: cmp      byte ptr [ebp - 0xc], bl
1004b790: je       0x1004b799
1004b792: mov      eax, dword ptr [ebp - 0x10]
1004b795: and      dword ptr [eax + 0x70], 0xfffffffd
1004b799: xor      eax, eax
1004b79b: jmp      0x1004b85c
1004b7a0: cmp      byte ptr [eax], bl
1004b7a2: jne      0x1004b7b8
1004b7a4: cmp      byte ptr [ebp - 0xc], bl
1004b7a7: je       0x1004b7b0
1004b7a9: mov      eax, dword ptr [ebp - 0x10]
1004b7ac: and      dword ptr [eax + 0x70], 0xfffffffd
1004b7b0: mov      eax, dword ptr [ebp + 8]
1004b7b3: jmp      0x1004b85c
1004b7b8: push     esi
1004b7b9: mov      esi, dword ptr [ebp + 8]
1004b7bc: cmp      esi, ebx
1004b7be: jne      0x1004b7e8
1004b7c0: call     0x1004bf63
1004b7c5: push     ebx
1004b7c6: push     ebx
1004b7c7: push     ebx
1004b7c8: push     ebx
1004b7c9: push     ebx
1004b7ca: mov      dword ptr [eax], 0x16
1004b7d0: call     0x1004af9d
1004b7d5: add      esp, 0x14
1004b7d8: cmp      byte ptr [ebp - 0xc], bl
1004b7db: je       0x1004b7e4
1004b7dd: mov      eax, dword ptr [ebp - 0x10]
1004b7e0: and      dword ptr [eax + 0x70], 0xfffffffd
1004b7e4: xor      eax, eax
1004b7e6: jmp      0x1004b85b
1004b7e8: push     edi
1004b7e9: push     eax
1004b7ea: mov      edi, esi
1004b7ec: call     0x1004fa00
1004b7f1: mov      dword ptr [ebp - 8], esi
1004b7f4: sub      dword ptr [ebp - 8], eax
1004b7f7: push     esi
1004b7f8: call     0x1004fa00
1004b7fd: add      eax, dword ptr [ebp - 8]
1004b800: pop      ecx
1004b801: pop      ecx
1004b802: cmp      byte ptr [esi], bl
1004b804: je       0x1004b84c
1004b806: sub      esi, dword ptr [ebp + 0xc]
1004b809: cmp      edi, eax
1004b80b: ja       0x1004b84c
1004b80d: mov      dl, byte ptr [edi]
1004b80f: mov      ecx, dword ptr [ebp + 0xc]
1004b812: mov      byte ptr [ebp - 1], dl
1004b815: cmp      dl, bl
1004b817: je       0x1004b82a
1004b819: mov      dl, byte ptr [ecx]
1004b81b: cmp      dl, bl
1004b81d: je       0x1004b85f
1004b81f: .byte    0x38