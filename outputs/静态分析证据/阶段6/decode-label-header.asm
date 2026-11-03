10015b80: push     ebp
10015b81: mov      ebp, esp
10015b83: mov      eax, 0x1094
10015b88: call     0x100513f0
10015b8d: mov      eax, dword ptr [0x1008d020]
10015b92: xor      eax, ebp
10015b94: mov      dword ptr [ebp - 4], eax
10015b97: jmp      0x10015ba9
10015b99: push     esi
10015b9a: dec      ebp
10015b9b: push     eax
10015b9c: jb       0x10015c0d
10015b9e: je       0x10015c05
10015ba0: arpl     word ptr [eax + 0x62], si
10015ba4: imul     ebp, dword ptr gs:[bp], 0x8845c7
10015bad: add      byte ptr [eax], al
10015baf: add      bh, al
10015bb1: inc      ebp
10015bb2: mov      word ptr [eax], es
10015bb4: add      byte ptr [eax], al
10015bb6: add      dh, al
10015bb8: inc      ebp
10015bb9: nop      
10015bba: add      byte ptr [edx + 0x63], ch
10015bbd: push     0
10015bbf: lea      eax, [ebp - 0x6f]
10015bc2: push     eax
10015bc3: call     0x1004f490
10015bc8: add      esp, 0xc
10015bcb: mov      byte ptr [ebp - 0x1080], 0
10015bd2: push     0xfff
10015bd7: push     0
10015bd9: lea      ecx, [ebp - 0x107f]
10015bdf: push     ecx
10015be0: call     0x1004f490
10015be5: add      esp, 0xc
10015be8: cmp      dword ptr [ebp + 0x120], 0
10015bef: jne      0x10015bfb
10015bf1: mov      eax, 1
10015bf6: jmp      0x10015db6
10015bfb: push     0
10015bfd: push     0
10015bff: mov      edx, dword ptr [0x10095114]
10015c05: add      edx, 4
10015c08: imul     edx, dword ptr [ebp + 0x18]
10015c0c: push     edx
10015c0d: mov      eax, dword ptr [ebp + 8]
10015c10: push     eax
10015c11: call     dword ptr [0x10068328] ; SetFilePointer
10015c17: mov      dword ptr [ebp - 0x7c], eax
10015c1a: push     0
10015c1c: lea      ecx, [ebp - 0x78]
10015c1f: push     ecx
10015c20: mov      edx, dword ptr [ebp + 0x18]
10015c23: push     edx
10015c24: lea      eax, [ebp - 0x1080]
10015c2a: push     eax
10015c2b: mov      ecx, dword ptr [ebp + 8]
10015c2e: push     ecx
10015c2f: call     dword ptr [0x100682a0] ; ReadFile
10015c35: test     eax, eax
10015c37: je       0x10015da0
10015c3d: push     0x1007c49c
10015c42: lea      edx, [ebp - 0x1080]
10015c48: push     edx
10015c49: call     0x10004550
10015c4e: add      esp, 8
10015c51: lea      ecx, [ebp - 0x1080]
10015c57: cmp      eax, ecx
10015c59: jne      0x10015d99
10015c5f: push     0x1007c4a0
10015c64: lea      edx, [ebp - 0x107d]
10015c6a: push     edx
10015c6b: call     0x10004550
10015c70: add      esp, 8
10015c73: mov      dword ptr [ebp - 0x1090], eax
10015c79: cmp      dword ptr [ebp - 0x1090], 0
10015c80: jne      0x10015c8c
10015c82: mov      eax, 1
10015c87: jmp      0x10015db6
10015c8c: mov      eax, dword ptr [ebp - 0x1090]
10015c92: lea      ecx, [ebp - 0x1080]
10015c98: sub      eax, ecx
10015c9a: sub      eax, 3
10015c9d: push     eax
10015c9e: lea      edx, [ebp - 0x107d]
10015ca4: push     edx
10015ca5: lea      eax, [ebp - 0x70]
10015ca8: push     eax
10015ca9: call     0x1004b9d0
10015cae: add      esp, 0xc
10015cb1: push     0xa
10015cb3: push     0
10015cb5: lea      ecx, [ebp - 0x70]
10015cb8: push     ecx
10015cb9: call     0x1004bd82
10015cbe: add      esp, 0xc
10015cc1: mov      dword ptr [ebp - 0x74], eax
10015cc4: mov      edx, dword ptr [ebp - 0x74]
10015cc7: and      edx, 0xffff
10015ccd: mov      word ptr [ebp - 0x1088], dx
10015cd4: mov      eax, dword ptr [ebp - 0x74]
10015cd7: sar      eax, 0x10
10015cda: and      eax, 0xffff
10015cdf: mov      word ptr [ebp - 0x1084], ax
10015ce6: movzx    ecx, word ptr [ebp - 0x1088]
10015ced: movzx    edx, word ptr [ebp - 0x1084]
10015cf4: xor      ecx, edx
10015cf6: mov      word ptr [ebp - 0x108c], cx
10015cfd: mov      dword ptr [ebp - 0x1094], 0
10015d07: jmp      0x10015d18
10015d09: mov      eax, dword ptr [ebp - 0x1094]
10015d0f: add      eax, 1
10015d12: mov      dword ptr [ebp - 0x1094], eax
10015d18: cmp      dword ptr [ebp - 0x1094], 0xf4
10015d22: jge      0x10015d68
10015d24: movzx    ecx, word ptr [ebp - 0x108c]
10015d2b: mov      edx, dword ptr [ebp - 0x1094]
10015d31: movzx    eax, word ptr [ebp + edx*2 - 0x1068]
10015d39: xor      eax, ecx
10015d3b: mov      ecx, dword ptr [ebp - 0x1094]
10015d41: mov      word ptr [ebp + ecx*2 - 0x1068], ax
10015d49: movzx    edx, word ptr [ebp - 0x108c]
10015d50: add      edx, 0x100
10015d56: sub      edx, dword ptr [ebp - 0x1094]
10015d5c: sub      edx, 1
10015d5f: mov      word ptr [ebp - 0x108c], dx
10015d66: jmp      0x10015d09
10015d68: push     0
10015d6a: push     0x2f
10015d6c: lea      eax, [ebp - 0x1068]
10015d72: push     eax
10015d73: mov      ecx, dword ptr [ebp + 0x120]
10015d79: push     ecx
10015d7a: call     0x1001f130
10015d7f: add      esp, 0x10
10015d82: mov      edx, dword ptr [ebp - 0x74]
10015d85: xor      edx, 0x88888888
10015d8b: mov      eax, dword ptr [ebp + 0x120]
10015d91: cmp      dword ptr [eax], edx
10015d93: jne      0x10015d99
10015d95: xor      eax, eax
10015d97: jmp      0x10015db6
10015d99: mov      eax, 1
10015d9e: jmp      0x10015db6
10015da0: jmp      0x10015db0
10015da2: push     esi
10015da3: dec      ebp
10015da4: push     eax
10015da5: jb       0x10015e16
10015da7: je       0x10015e0e
10015da9: arpl     word ptr [eax + 0x65], si
10015dad: outsb    dx, byte ptr [esi]
10015dae: add      bh, bh
10015db1: adc      eax, 0x10068308
10015db6: mov      ecx, dword ptr [ebp - 4]
10015db9: xor      ecx, ebp
10015dbb: call     0x10048939
10015dc0: mov      esp, ebp
10015dc2: pop      ebp
10015dc3: ret      0x11c
10015dc6: int3     
10015dc7: int3     
10015dc8: int3     
10015dc9: int3     
10015dca: int3     
10015dcb: int3     
10015dcc: int3     
10015dcd: int3     
10015dce: int3     
10015dcf: int3     
10015dd0: push     ebp
10015dd1: mov      ebp, esp
10015dd3: push     -1
10015dd5: push     0x10065248
10015dda: mov      eax, dword ptr fs:[0]
10015de0: push     eax
10015de1: sub      esp, 0x24
10015de4: mov      eax, dword ptr [0x1008d020]
10015de9: xor      eax, ebp
10015deb: push     eax
10015dec: lea      eax, [ebp - 0xc]
10015def: mov      dword ptr fs:[0], eax
10015df5: mov      dword ptr [ebp - 4], 0
10015dfc: cmp      dword ptr [ebp + 0xc], 0
10015e00: je       0x10015e12
10015e02: cmp      dword ptr [ebp + 0x10], 0
10015e06: je       0x10015e12
10015e08: mov      eax, dword ptr [ebp + 0xc]
10015e0b: movsx    ecx, byte ptr [eax]
10015e0e: test     ecx, ecx
10015e10: jne      0x10015e26
10015e12: mov      dword ptr [ebp - 4], 0xffffffff
10015e19: lea      ecx, [ebp + 8]
10015e1c: call     0x100030d0
10015e21: jmp      0x10015f09
10015e26: push     0
10015e28: mov      edx, dword ptr [ebp + 0xc]
10015e2b: push     edx
10015e2c: lea      ecx, [ebp + 8]
10015e2f: call     0x10016eb0
10015e34: mov      dword ptr [ebp - 0x10], eax
10015e37: cmp      dword ptr [ebp - 0x10], 0
10015e3b: jle      0x10015efa
10015e41: mov      eax, dword ptr [ebp + 0xc]
10015e44: mov      dword ptr [ebp - 0x1c], eax
10015e47: mov      ecx, dword ptr [ebp - 0x1c]
10015e4a: add      ecx, 1
10015e4d: mov      dword ptr [ebp - 0x20], ecx
10015e50: mov      edx, dword ptr [ebp - 0x1c]
10015e53: mov      al, byte ptr [edx]
10015e55: mov      byte ptr [ebp - 0x21], al
10015e58: add      dword ptr [ebp - 0x1c], 1
10015e5c: cmp      byte ptr [ebp - 0x21], 0
10015e60: jne      0x10015e50
10015e62: mov      ecx, dword ptr [ebp - 0x1c]
10015e65: sub      ecx, dword ptr [ebp - 0x20]
10015e68: mov      dword ptr [ebp - 0x28], ecx
10015e6b: lea      ecx, [ebp + 8]
10015e6e: call     0x100031e0
10015e73: sub      eax, dword ptr [ebp - 0x10]
10015e76: sub      eax, dword ptr [ebp - 0x28]
10015e79: push     eax
10015e7a: lea      edx, [ebp - 0x14]
10015e7d: push     edx
10015e7e: lea      ecx, [ebp + 8]
10015e81: call     0x10016f30
10015e86: mov      byte ptr [ebp - 4], 1
10015e8a: push     0
10015e8c: push     0x1007c4a4
10015e91: lea      ecx, [ebp - 0x14]
10015e94: call     0x10016eb0
10015e99: mov      dword ptr [ebp - 0x10], eax
10015e9c: cmp      dword ptr [ebp - 0x10], 0
10015ea0: jle      0x10015eee
10015ea2: mov      eax, dword ptr [ebp - 0x10]
10015ea5: push     eax
10015ea6: lea      ecx, [ebp - 0x18]
10015ea9: push     ecx
10015eaa: lea      ecx, [ebp - 0x14]
10015ead: call     0x10016fb0
10015eb2: mov      dword ptr [ebp - 0x2c], eax
10015eb5: mov      edx, dword ptr [ebp - 0x2c]
10015eb8: mov      dword ptr [ebp - 0x30], edx
10015ebb: mov      byte ptr [ebp - 4], 2
10015ebf: mov      eax, dword ptr [ebp - 0x30]
10015ec2: push     eax
10015ec3: lea      ecx, [ebp - 0x14]
10015ec6: call     0x1000df80
10015ecb: mov      byte ptr [ebp - 4], 1
10015ecf: lea      ecx, [ebp - 0x18]
10015ed2: call     0x100030d0
10015ed7: push     0
10015ed9: lea      ecx, [ebp - 0x14]
10015edc: call     0x10003170
10015ee1: push     eax
10015ee2: mov      ecx, dword ptr [ebp + 0x10]
10015ee5: push     ecx
10015ee6: call     0x1001f1b0
10015eeb: add      esp, 0xc
10015eee: .byte    0xc6
10015eef: inc      ebp