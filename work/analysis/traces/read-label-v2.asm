100167c0: push     ebp
100167c1: mov      ebp, esp
100167c3: sub      esp, 0x224
100167c9: mov      eax, dword ptr [0x1008d020]
100167ce: xor      eax, ebp
100167d0: mov      dword ptr [ebp - 8], eax
100167d3: push     esi
100167d4: push     edi
100167d5: mov      dword ptr [ebp - 0x120], 0
100167df: push     0x110
100167e4: push     0
100167e6: lea      eax, [ebp - 0x11c]
100167ec: push     eax
100167ed: call     0x1004f490
100167f2: add      esp, 0xc
100167f5: mov      dword ptr [ebp - 4], 1
100167fc: mov      byte ptr [ebp - 0x220], 0
10016803: push     0xff
10016808: push     0
1001680a: lea      ecx, [ebp - 0x21f]
10016810: push     ecx
10016811: call     0x1004f490
10016816: add      esp, 0xc
10016819: mov      dword ptr [ebp - 0x224], 0
10016823: cmp      dword ptr [ebp + 8], 0
10016827: je       0x1001683b
10016829: cmp      dword ptr [ebp + 8], -1
1001682d: je       0x1001683b
1001682f: cmp      dword ptr [ebp + 0x1c], 0
10016833: je       0x1001683b
10016835: cmp      dword ptr [ebp + 0xc], 0
10016839: jne      0x10016845
1001683b: mov      eax, 1
10016840: jmp      0x100169cf
10016845: mov      edx, dword ptr [0x10092754]
1001684b: mov      dword ptr [ebp - 0x114], edx
10016851: push     0xff
10016856: push     0x10093d88
1001685b: lea      eax, [ebp - 0x110]
10016861: push     eax
10016862: call     0x1004b9d0
10016867: add      esp, 0xc
1001686a: push     0x1007c76c
1001686f: call     dword ptr [0x10068340] ; OutputDebugStringA
10016875: mov      ecx, dword ptr [ebp + 0xc]
10016878: push     ecx
10016879: sub      esp, 0x114
1001687f: mov      ecx, 0x45
10016884: lea      esi, [ebp - 0x120]
1001688a: mov      edi, esp
1001688c: rep movsd dword ptr es:[edi], dword ptr [esi]
1001688e: mov      edx, dword ptr [ebp + 8]
10016891: push     edx
10016892: call     0x10015b80
10016897: test     eax, eax
10016899: je       0x100168bd
1001689b: push     0x1007c78c
100168a0: call     dword ptr [0x10068340] ; OutputDebugStringA
100168a6: push     0x1007c7b0
100168ab: call     0x1001fa30
100168b0: add      esp, 4
100168b3: mov      eax, 1
100168b8: jmp      0x100169cf
100168bd: push     0x1007c7d4
100168c2: call     dword ptr [0x10068340] ; OutputDebugStringA
100168c8: mov      eax, dword ptr [ebp + 0xc]
100168cb: cmp      dword ptr [eax + 0x21], 0x42474c4c
100168d2: je       0x100168f6
100168d4: push     0x1007c7f4
100168d9: call     dword ptr [0x10068340] ; OutputDebugStringA
100168df: push     0x1007c818
100168e4: call     0x1001fa30
100168e9: add      esp, 4
100168ec: mov      eax, 1
100168f1: jmp      0x100169cf
100168f6: mov      ecx, dword ptr [ebp + 0xc]
100168f9: movzx    edx, byte ptr [ecx + 0x2b]
100168fd: mov      dword ptr [ebp - 0x11c], edx
10016903: mov      eax, dword ptr [ebp + 0xc]
10016906: movzx    ecx, byte ptr [eax + 0x2c]
1001690a: mov      dword ptr [ebp - 0x118], ecx
10016910: push     0x1007c83c
10016915: call     dword ptr [0x10068340] ; OutputDebugStringA
1001691b: mov      edx, dword ptr [ebp + 0x18]
1001691e: push     edx
1001691f: mov      eax, dword ptr [ebp + 0x14]
10016922: push     eax
10016923: mov      ecx, dword ptr [ebp + 0x10]
10016926: push     ecx
10016927: lea      edx, [ebp - 0x120]
1001692d: push     edx
1001692e: mov      eax, dword ptr [ebp + 8]
10016931: push     eax
10016932: call     0x100156b0
10016937: mov      dword ptr [ebp - 0x224], eax
1001693d: push     0x1007c864
10016942: call     dword ptr [0x10068340] ; OutputDebugStringA
10016948: cmp      dword ptr [ebp - 0x224], 0
1001694f: je       0x10016971
10016951: push     0x1007c88c
10016956: call     dword ptr [0x10068340] ; OutputDebugStringA
1001695c: push     0x1007c8b8
10016961: call     0x1001fa30
10016966: add      esp, 4
10016969: mov      eax, dword ptr [ebp - 0x224]
1001696f: jmp      0x100169cf
10016971: mov      ecx, dword ptr [ebp + 0xc]
10016974: movzx    edx, byte ptr [ecx + 0x29]
10016978: mov      dword ptr [ebp - 0x11c], edx
1001697e: mov      eax, dword ptr [ebp + 0xc]
10016981: movzx    ecx, byte ptr [eax + 0x2a]
10016985: mov      dword ptr [ebp - 0x118], ecx
1001698b: push     0x1007c8e4
10016990: call     dword ptr [0x10068340] ; OutputDebugStringA
10016996: mov      edx, dword ptr [ebp + 0x1c]
10016999: push     edx
1001699a: sub      esp, 0x114
100169a0: mov      ecx, 0x45
100169a5: lea      esi, [ebp - 0x120]
100169ab: mov      edi, esp
100169ad: rep movsd dword ptr es:[edi], dword ptr [esi]
100169af: mov      eax, dword ptr [ebp + 8]
100169b2: push     eax
100169b3: call     0x10016260
100169b8: mov      dword ptr [ebp - 0x224], eax
100169be: push     0x1007c904
100169c3: call     dword ptr [0x10068340] ; OutputDebugStringA
100169c9: mov      eax, dword ptr [ebp - 0x224]
100169cf: pop      edi
100169d0: pop      esi
100169d1: mov      ecx, dword ptr [ebp - 8]
100169d4: xor      ecx, ebp
100169d6: call     0x10048939
100169db: mov      esp, ebp
100169dd: pop      ebp
100169de: ret      0x18
100169e1: int3     
100169e2: int3     
100169e3: int3     
100169e4: int3     
100169e5: int3     
100169e6: int3     
100169e7: int3     
100169e8: int3     
100169e9: int3     
100169ea: int3     
100169eb: int3     
100169ec: int3     
100169ed: int3     
100169ee: int3     
100169ef: int3     
100169f0: push     ebp
100169f1: mov      ebp, esp
100169f3: mov      eax, 0x1020
100169f8: call     0x100513f0
100169fd: mov      eax, dword ptr [0x1008d020]
10016a02: xor      eax, ebp
10016a04: mov      dword ptr [ebp - 4], eax
10016a07: jmp      0x10016a19
10016a09: push     esi
10016a0a: dec      ebp
10016a0b: push     eax
10016a0c: jb       0x10016a7d
10016a0e: je       0x10016a75
10016a10: arpl     word ptr [eax + 0x62], si
10016a14: imul     ebp, dword ptr gs:[bp], 0xeff085c6
10016a1d: .byte    0xff
10016a1e: inc      dword ptr [eax]
10016a20: push     0xfff
10016a25: push     0
10016a27: lea      eax, [ebp - 0x100f]
10016a2d: push     eax
10016a2e: call     0x1004f490
10016a33: add      esp, 0xc
10016a36: cmp      dword ptr [ebp + 0x10], 0
10016a3a: jne      0x10016a43
10016a3c: mov      dword ptr [ebp + 0x10], 0xc
10016a43: mov      ecx, dword ptr [ebp + 0x128]
10016a49: movzx    edx, byte ptr [ecx + 3]
10016a4d: xor      edx, 0x88
10016a53: mov      eax, dword ptr [ebp + 0x128]
10016a59: mov      byte ptr [eax + 3], dl
10016a5c: mov      ecx, dword ptr [ebp + 0x128]
10016a62: movzx    edx, word ptr [ecx]
10016a65: xor      edx, 0x88
10016a6b: mov      eax, dword ptr [ebp + 0x128]
10016a71: mov      word ptr [eax], dx
10016a74: mov      ecx, dword ptr [ebp + 0x128]
10016a7a: movzx    edx, byte ptr [ecx + 6]
10016a7e: xor      edx, 0x88
10016a84: mov      eax, dword ptr [ebp + 0x128]
10016a8a: mov      byte ptr [eax + 6], dl
10016a8d: movzx    ecx, word ptr [ebp + 0x11c]
10016a94: cmp      ecx, 0x206
10016a9a: jne      0x10016ad5
10016a9c: push     0
10016a9e: push     0x120
10016aa3: mov      edx, dword ptr [ebp + 0x120]
10016aa9: push     edx
10016aaa: lea      eax, [ebp - 0x1010]
10016ab0: push     eax
10016ab1: call     0x1001f130
10016ab6: add      esp, 0x10
10016ab9: push     0
10016abb: push     0xe
10016abd: mov      ecx, dword ptr [ebp + 0x128]
10016ac3: push     ecx
10016ac4: lea      edx, [ebp - 0xef0]
10016aca: push     edx
10016acb: call     0x1001f130
10016ad0: add      esp, 0x10
10016ad3: jmp      0x10016b34
10016ad5: movzx    eax, word ptr [ebp + 0x11c]
10016adc: cmp      eax, 0x202
10016ae1: jne      0x10016b1c
10016ae3: push     0
10016ae5: push     0xc0
10016aea: mov      ecx, dword ptr [ebp + 0x124]
10016af0: push     ecx
10016af1: lea      edx, [ebp - 0x1010]
10016af7: push     edx
10016af8: call     0x1001f130
10016afd: add      esp, 0x10
10016b00: push     0
10016b02: push     0xe
10016b04: mov      eax, dword ptr [ebp + 0x128]
10016b0a: push     eax
10016b0b: lea      ecx, [ebp - 0xf50]
10016b11: push     ecx
10016b12: call     0x1001f130
10016b17: add      esp, 0x10
10016b1a: jmp      0x10016b34
10016b1c: push     0x1007c924
10016b21: call     dword ptr [0x10068340] ; OutputDebugStringA
10016b27: push     0x1007c930
10016b2c: call     0x1001fa30
10016b31: add      esp, 4
10016b34: call     0x1003a990
10016b39: mov      dword ptr [ebp - 0x1014], 0x10093d88
10016b43: mov      edx, dword ptr [ebp - 0x1014]
10016b49: add      edx, 1
10016b4c: mov      dword ptr [ebp - 0x1018], edx
10016b52: mov      eax, dword ptr [ebp - 0x1014]
10016b58: mov      cl, byte ptr [eax]
10016b5a: mov      byte ptr [ebp - 0x1019], cl
10016b60: add      dword ptr [ebp - 0x1014], 1
10016b67: cmp      byte ptr [ebp - 0x1019], 0
10016b6e: jne      0x10016b52
10016b70: mov      edx, dword ptr [ebp - 0x1014]
10016b76: sub      edx, dword ptr [ebp - 0x1018]
10016b7c: mov      dword ptr [ebp - 0x1020], edx
10016b82: mov      eax, dword ptr [ebp - 0x1020]
10016b88: push     eax
10016b89: push     0x10093d88
10016b8e: push     0
10016b90: call     0x1003aa10
10016b95: add      esp, 0xc
10016b98: mov      dword ptr [ebp - 0x10], eax
10016b9b: lea      ecx, [ebp - 0x1010]
10016ba1: push     ecx
10016ba2: push     4
10016ba4: lea      edx, [ebp - 0x10]
10016ba7: push     edx
10016ba8: push     0x200
10016bad: lea      eax, [ebp - 0x1010]
10016bb3: push     eax
10016bb4: push     0
10016bb6: push     0
10016bb8: call     0x1003a7f0
10016bbd: add      esp, 0x1c
10016bc0: push     0
10016bc2: push     0
10016bc4: mov      ecx, dword ptr [0x10095114]
10016bca: add      ecx, dword ptr [ebp + 0x10]
10016bcd: imul     ecx, dword ptr [0x10092754]
10016bd4: push     ecx
10016bd5: mov      edx, dword ptr [ebp + 8]
10016bd8: push     edx
10016bd9: call     dword ptr [0x10068328] ; SetFilePointer
10016bdf: mov      dword ptr [ebp - 0xc], eax
10016be2: jmp      0x10016bf2
10016be4: push     esi
10016be5: dec      ebp
10016be6: push     eax
10016be7: jb       0x10016c58
10016be9: je       0x10016c50
10016beb: arpl     word ptr [eax + 0x65], si
10016bef: outsb    dx, byte ptr [esi]
10016bf0: add      byte ptr fs:[edx], ch
10016bf4: lea      eax, [ebp - 8]
10016bf7: push     eax
10016bf8: mov      ecx, dword ptr [0x10092754]
10016bfe: push     ecx
10016bff: lea      edx, [ebp - 0x1010]
10016c05: push     edx
10016c06: mov      eax, dword ptr [ebp + 8]
10016c09: push     eax
10016c0a: call     dword ptr [0x10068314] ; WriteFile
10016c10: test     eax, eax
10016c12: je       0x10016c1a
10016c14: xor      eax, eax
10016c16: jmp      0x10016c20
10016c18: jmp      0x10016c20
10016c1a: call     dword ptr [0x10068308] ; GetLastError
10016c20: mov      ecx, dword ptr [ebp - 4]
10016c23: xor      ecx, ebp
10016c25: call     0x10048939
10016c2a: mov      esp, ebp
10016c2c: pop      ebp
10016c2d: ret      0x124
10016c30: push     ebp
10016c31: mov      ebp, esp
10016c33: sub      esp, 8
10016c36: push     esi
10016c37: mov      eax, dword ptr [0x1009274c]
10016c3c: xor      ecx, ecx
10016c3e: push     ecx
10016c3f: push     eax
10016c40: mov      edx, dword ptr [0x10092744]
10016c46: push     edx
10016c47: mov      eax, dword ptr [0x10092740]
10016c4c: push     eax
10016c4d: call     0x10051300
10016c52: mov      ecx, dword ptr [0x10092750]
10016c58: xor      esi, esi
10016c5a: push     esi
10016c5b: push     ecx
10016c5c: push     edx
10016c5d: push     eax
10016c5e: call     0x10051300
10016c63: mov      ecx, dword ptr [0x10092754]
10016c69: xor      esi, esi
10016c6b: push     esi
10016c6c: push     ecx
10016c6d: push     edx
10016c6e: push     eax
10016c6f: call     0x10051300
10016c74: mov      dword ptr [ebp - 8], eax
10016c77: mov      dword ptr [ebp - 4], edx
10016c7a: mov      eax, dword ptr [ebp - 8]
10016c7d: mov      edx, dword ptr [ebp - 4]
10016c80: pop      esi
10016c81: mov      esp, ebp
10016c83: pop      ebp
10016c84: ret      
10016c85: int3     
10016c86: int3     
10016c87: int3     
10016c88: int3     
10016c89: int3     
10016c8a: int3     
10016c8b: int3     
10016c8c: int3     
10016c8d: int3     
10016c8e: int3     
10016c8f: int3     
10016c90: push     ebp
10016c91: mov      ebp, esp
10016c93: sub      esp, 0x30
10016c96: jmp      0x10016ca8
10016c98: push     esi
10016c99: dec      ebp
10016c9a: push     eax
10016c9b: jb       0x10016d0c
10016c9d: je       0x10016d04
10016c9f: arpl     word ptr [eax + 0x62], si
10016ca3: imul     ebp, dword ptr gs:[bp], 0xdc45c7
10016cac: add      byte ptr [eax], al
10016cae: add      al, ch
10016cb0: jl       0x10016cb1
10016cb2: .byte    0xff
10016cb3: dec      dword ptr [ecx + 0x5589e845]
10016cb9: in       al, dx
10016cba: cmp      dword ptr [ebp - 0x18], 0
10016cbe: jne      0x10016cce
10016cc0: cmp      dword ptr [ebp - 0x14], 0
10016cc4: jne      0x10016cce
10016cc6: mov      eax, dword ptr [ebp - 0x24]
10016cc9: jmp      0x10016db1
10016cce: mov      eax, dword ptr [ebp - 0x18]
10016cd1: sub      eax, 0x80000
10016cd6: mov      ecx, dword ptr [ebp - 0x14]
10016cd9: sbb      ecx, 0
10016cdc: mov      dword ptr [ebp - 0x10], eax
10016cdf: mov      dword ptr [ebp - 0xc], ecx
10016ce2: mov      edx, dword ptr [0x10092754]
10016ce8: imul     edx, edx, 0xa
10016ceb: push     edx
10016cec: call     0x1003aed4
10016cf1: add      esp, 4
10016cf4: mov      dword ptr [ebp - 0x2c], eax
10016cf7: mov      eax, dword ptr [ebp - 0x2c]
10016cfa: mov      dword ptr [ebp - 0x1c], eax
10016cfd: cmp      dword ptr [ebp - 0x1c], 0
10016d01: jne      0x10016d0b
10016d03: mov      eax, dword ptr [ebp - 0x24]
10016d06: jmp      0x10016db1
10016d0b: push     0
10016d0d: push     0
10016d0f: mov      ecx, dword ptr [0x10095114]
10016d15: add      ecx, 4
10016d18: imul     ecx, dword ptr [0x10092754]
10016d1f: push     ecx
10016d20: mov      edx, dword ptr [ebp + 8]
10016d23: push     edx
10016d24: call     dword ptr [0x10068328] ; SetFilePointer
10016d2a: mov      dword ptr [ebp - 0x28], eax
10016d2d: push     0
10016d2f: lea      eax, [ebp - 0x20]
10016d32: push     eax
10016d33: mov      ecx, dword ptr [0x10092754]
10016d39: imul     ecx, ecx, 9
10016d3c: push     ecx
10016d3d: mov      edx, dword ptr [ebp - 0x1c]
10016d40: push     edx
10016d41: mov      eax, dword ptr [ebp + 8]
10016d44: push     eax
10016d45: call     dword ptr [0x100682a0] ; ReadFile
10016d4b: test     eax, eax
10016d4d: je       0x10016d8c
10016d4f: push     0
10016d51: lea      ecx, [ebp - 0xc]
10016d54: push     ecx
10016d55: mov      edx, dword ptr [ebp - 0x10]
10016d58: push     edx
10016d59: mov      eax, dword ptr [ebp + 8]
10016d5c: push     eax
10016d5d: call     dword ptr [0x10068328] ; SetFilePointer
10016d63: push     0
10016d65: lea      ecx, [ebp - 4]
10016d68: push     ecx
10016d69: mov      edx, dword ptr [0x10092754]
10016d6f: imul     edx, edx, 9
10016d72: push     edx
10016d73: mov      eax, dword ptr [ebp - 0x1c]
10016d76: push     eax
10016d77: mov      ecx, dword ptr [ebp + 8]
10016d7a: push     ecx
10016d7b: call     dword ptr [0x10068314] ; WriteFile
10016d81: test     eax, eax
10016d83: je       0x10016d8c
10016d85: mov      dword ptr [ebp - 0x24], 1
10016d8c: mov      edx, dword ptr [ebp - 0x1c]
10016d8f: mov      dword ptr [ebp - 0x30], edx
10016d92: mov      eax, dword ptr [ebp - 0x30]
10016d95: push     eax
10016d96: call     0x1003aedf
10016d9b: add      esp, 4
10016d9e: jmp      0x10016dae
10016da0: push     esi
10016da1: dec      ebp
10016da2: push     eax
10016da3: jb       0x10016e14
10016da5: je       0x10016e0c
10016da7: arpl     word ptr [eax + 0x65], si
10016dab: outsb    dx, byte ptr [esi]
10016dac: add      byte ptr fs:[ebx - 0x1a7423bb], cl
10016db3: pop      ebp
10016db4: ret      4
10016db7: int3     
10016db8: int3     
10016db9: int3     
10016dba: int3     
10016dbb: int3     
10016dbc: int3     
10016dbd: int3     
10016dbe: int3     
10016dbf: int3     