10014dc0: push     ebp
10014dc1: mov      ebp, esp
10014dc3: push     -1
10014dc5: push     0x10065846
10014dca: mov      eax, dword ptr fs:[0]
10014dd0: push     eax
10014dd1: mov      eax, 0x1584
10014dd6: call     0x100513f0
10014ddb: mov      eax, dword ptr [0x1008d020]
10014de0: xor      eax, ebp
10014de2: mov      dword ptr [ebp - 0x10], eax
10014de5: push     eax
10014de6: lea      eax, [ebp - 0xc]
10014de9: mov      dword ptr fs:[0], eax
10014def: lea      ecx, [ebp - 0x47c]
10014df5: call     0x100340e0
10014dfa: mov      dword ptr [ebp - 4], 0
10014e01: lea      eax, [ebp - 0x47c]
10014e07: push     eax
10014e08: mov      ecx, dword ptr [ebp + 0xc]
10014e0b: push     ecx
10014e0c: call     0x10035530
10014e11: add      esp, 8
10014e14: movzx    edx, al
10014e17: test     edx, edx
10014e19: jne      0x10014e57
10014e1b: push     0x1007c334 ; 'GetBackDevicePath GetUsbDiskInfo fail'
10014e20: call     dword ptr [0x10068340] ; OutputDebugStringA
10014e26: push     0x1007c35c ; 'GetBackDevicePath GetUsbDiskInfo fail'
10014e2b: call     0x1001fa30
10014e30: add      esp, 4
10014e33: mov      byte ptr [ebp - 0x158d], 0
10014e3a: mov      dword ptr [ebp - 4], 0xffffffff
10014e41: lea      ecx, [ebp - 0x47c]
10014e47: call     0x100342b0
10014e4c: mov      al, byte ptr [ebp - 0x158d]
10014e52: jmp      0x100150ee
10014e57: lea      eax, [ebp - 0x3e4]
10014e5d: push     eax
10014e5e: mov      ecx, dword ptr [ebp + 0xc]
10014e61: push     ecx
10014e62: call     0x100355f0
10014e67: add      esp, 8
10014e6a: mov      byte ptr [ebp - 0x147c], 0
10014e71: push     0xfff
10014e76: push     0
10014e78: lea      edx, [ebp - 0x147b]
10014e7e: push     edx
10014e7f: call     0x1004f490
10014e84: add      esp, 0xc
10014e87: mov      byte ptr [ebp - 0x31c], 0
10014e8e: push     0x1ff
10014e93: push     0
10014e95: lea      eax, [ebp - 0x31b]
10014e9b: push     eax
10014e9c: call     0x1004f490
10014ea1: add      esp, 0xc
10014ea4: mov      byte ptr [ebp - 0x114], 0
10014eab: push     0xff
10014eb0: push     0
10014eb2: lea      ecx, [ebp - 0x113]
10014eb8: push     ecx
10014eb9: call     0x1004f490
10014ebe: add      esp, 0xc
10014ec1: push     0
10014ec3: push     0
10014ec5: mov      edx, dword ptr [0x10095114]
10014ecb: add      edx, 0xb
10014ece: imul     edx, dword ptr [0x10092754]
10014ed5: push     edx
10014ed6: mov      eax, dword ptr [ebp + 8]
10014ed9: push     eax
10014eda: call     dword ptr [0x10068328] ; SetFilePointer
10014ee0: mov      dword ptr [ebp - 0x1480], eax
10014ee6: push     0
10014ee8: lea      ecx, [ebp - 0x11c]
10014eee: push     ecx
10014eef: push     0x200
10014ef4: lea      edx, [ebp - 0x147c]
10014efa: push     edx
10014efb: mov      eax, dword ptr [ebp + 8]
10014efe: push     eax
10014eff: call     dword ptr [0x100682a0] ; ReadFile
10014f05: test     eax, eax
10014f07: jne      0x10014f16
10014f09: push     0x1007c384 ; 'GetBackDevicePath ReadFile fail'
10014f0e: call     0x1001fa30
10014f13: add      esp, 4
10014f16: push     0
10014f18: push     0x200
10014f1d: lea      ecx, [ebp - 0x147c]
10014f23: push     ecx
10014f24: lea      edx, [ebp - 0x31c]
10014f2a: push     edx
10014f2b: call     0x1001f130
10014f30: add      esp, 0x10
10014f33: mov      dword ptr [ebp - 0x1588], 0x100
10014f3d: mov      byte ptr [ebp - 0x1584], 0
10014f44: push     0xff
10014f49: push     0
10014f4b: lea      eax, [ebp - 0x1583]
10014f51: push     eax
10014f52: call     0x1004f490
10014f57: add      esp, 0xc
10014f5a: push     0
10014f5c: push     0x100
10014f61: lea      ecx, [ebp - 0x21c]
10014f67: push     ecx
10014f68: lea      edx, [ebp - 0x1584]
10014f6e: push     edx
10014f6f: call     0x1001f130
10014f74: add      esp, 0x10
10014f77: push     0
10014f79: push     0x100
10014f7e: lea      eax, [ebp - 0x31c]
10014f84: push     eax
10014f85: lea      ecx, [ebp - 0x114]
10014f8b: push     ecx
10014f8c: call     0x1001f130
10014f91: add      esp, 0x10
10014f94: lea      edx, [ebp - 0x114]
10014f9a: mov      dword ptr [ebp - 0x158c], edx
10014fa0: mov      eax, dword ptr [ebp - 0x158c]
10014fa6: cmp      dword ptr [eax], 0x424b5244
10014fac: je       0x10014fea
10014fae: push     0x1007c3a4 ; 'GetBackDevicePath check BKRD fail'
10014fb3: call     dword ptr [0x10068340] ; OutputDebugStringA
10014fb9: push     0x1007c3c8 ; 'GetBackDevicePath check BKRD fail'
10014fbe: call     0x1001fa30
10014fc3: add      esp, 4
10014fc6: mov      byte ptr [ebp - 0x158e], 0
10014fcd: mov      dword ptr [ebp - 4], 0xffffffff
10014fd4: lea      ecx, [ebp - 0x47c]
10014fda: call     0x100342b0
10014fdf: mov      al, byte ptr [ebp - 0x158e]
10014fe5: jmp      0x100150ee
10014fea: lea      ecx, [ebp - 0x1481]
10014ff0: call     0x10010cc0
10014ff5: mov      byte ptr [ebp - 4], 1
10014ff9: lea      ecx, [ebp - 0x1588]
10014fff: push     ecx
10015000: lea      edx, [ebp - 0x1584]
10015006: push     edx
10015007: push     8
10015009: lea      eax, [ebp - 0x3e4]
1001500f: push     eax
10015010: push     4
10015012: lea      ecx, [ebp - 0x3b0]
10015018: call     0x10003310
1001501d: push     eax
1001501e: push     4
10015020: lea      ecx, [ebp - 0x3cc]
10015026: call     0x10003310
1001502b: push     eax
1001502c: push     0x100
10015031: lea      ecx, [ebp - 0x114]
10015037: push     ecx
10015038: lea      ecx, [ebp - 0x1481]
1001503e: call     0x1003ac40
10015043: lea      edx, [ebp - 0x1584]
10015049: mov      dword ptr [ebp - 0x158c], edx
1001504f: mov      eax, dword ptr [ebp - 0x158c]
10015055: cmp      dword ptr [eax], 0x424b4450
1001505b: je       0x100150a5
1001505d: push     0x1007c3ec ; 'GetBackDevicePath check BKDP fail'
10015062: call     dword ptr [0x10068340] ; OutputDebugStringA
10015068: push     0x1007c410 ; 'GetBackDevicePath check BKDP fail'
1001506d: call     0x1001fa30
10015072: add      esp, 4
10015075: mov      byte ptr [ebp - 0x158f], 0
1001507c: mov      byte ptr [ebp - 4], 0
10015080: lea      ecx, [ebp - 0x1481]
10015086: call     0x10017a00
1001508b: mov      dword ptr [ebp - 4], 0xffffffff
10015092: lea      ecx, [ebp - 0x47c]
10015098: call     0x100342b0
1001509d: mov      al, byte ptr [ebp - 0x158f]
100150a3: jmp      0x100150ee
100150a5: lea      ecx, [ebp - 0x1580]
100150ab: mov      dword ptr [ebp - 0x118], ecx
100150b1: mov      edx, dword ptr [ebp - 0x118]
100150b7: push     edx
100150b8: mov      ecx, dword ptr [ebp + 0x10]
100150bb: call     0x100032a0
100150c0: mov      byte ptr [ebp - 0x1590], 1
100150c7: mov      byte ptr [ebp - 4], 0
100150cb: lea      ecx, [ebp - 0x1481]
100150d1: call     0x10017a00
100150d6: mov      dword ptr [ebp - 4], 0xffffffff
100150dd: lea      ecx, [ebp - 0x47c]
100150e3: call     0x100342b0
100150e8: mov      al, byte ptr [ebp - 0x1590]
100150ee: mov      ecx, dword ptr [ebp - 0xc]
100150f1: mov      dword ptr fs:[0], ecx
100150f8: pop      ecx
100150f9: mov      ecx, dword ptr [ebp - 0x10]
100150fc: xor      ecx, ebp
100150fe: call     0x10048939
10015103: mov      esp, ebp
10015105: pop      ebp
10015106: ret      
10015107: int3     
10015108: int3     
10015109: int3     
1001510a: int3     
1001510b: int3     
1001510c: int3     
1001510d: int3     
1001510e: int3     
1001510f: int3     