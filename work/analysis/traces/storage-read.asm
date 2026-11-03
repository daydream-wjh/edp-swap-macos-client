1002a990: push     ebp
1002a991: mov      ebp, esp
1002a993: push     -1
1002a995: push     0x10066096
1002a99a: mov      eax, dword ptr fs:[0]
1002a9a0: push     eax
1002a9a1: sub      esp, 0x2ac
1002a9a7: mov      eax, dword ptr [0x1008d020]
1002a9ac: xor      eax, ebp
1002a9ae: mov      dword ptr [ebp - 0x98], eax
1002a9b4: push     esi
1002a9b5: push     edi
1002a9b6: push     eax
1002a9b7: lea      eax, [ebp - 0xc]
1002a9ba: mov      dword ptr fs:[0], eax
1002a9c0: mov      dword ptr [ebp - 0x2b0], ecx
1002a9c6: jmp      0x1002a9d8
1002a9c8: push     esi
1002a9c9: dec      ebp
1002a9ca: push     eax
1002a9cb: jb       0x1002aa3c
1002a9cd: je       0x1002aa34
1002a9cf: arpl     word ptr [eax + 0x62], si
1002a9d3: imul     ebp, dword ptr gs:[bp], 0xffec45c7
1002a9dc: add      byte ptr [eax], al
1002a9de: add      bh, al
1002a9e0: inc      ebp
1002a9e1: lock add byte ptr [eax], al
1002a9e4: add      byte ptr [eax], al
1002a9e6: mov      eax, dword ptr [ebp - 0x2b0]
1002a9ec: movzx    ecx, word ptr [eax + 0x1830]
1002a9f3: cmp      ecx, 0x64
1002a9f6: jl       0x1002ac79
1002a9fc: cmp      dword ptr [ebp + 0xc], 2
1002aa00: jne      0x1002aa56
1002aa02: mov      edx, dword ptr [ebp - 0x2b0]
1002aa08: movzx    eax, byte ptr [edx + 0x1833]
1002aa0f: test     eax, eax
1002aa11: je       0x1002aa56
1002aa13: mov      ecx, dword ptr [ebp - 0x2b0]
1002aa19: mov      dl, byte ptr [ecx + 0x1834]
1002aa1f: add      dl, 1
1002aa22: mov      eax, dword ptr [ebp - 0x2b0]
1002aa28: mov      byte ptr [eax + 0x1834], dl
1002aa2e: mov      ecx, dword ptr [ebp - 0x2b0]
1002aa34: movzx    edx, byte ptr [ecx + 0x1833]
1002aa3b: mov      eax, dword ptr [ebp - 0x2b0]
1002aa41: movzx    ecx, byte ptr [eax + 0x1834]
1002aa48: sub      edx, ecx
1002aa4a: mov      dword ptr [ebp - 0x14], edx
1002aa4d: mov      dword ptr [ebp - 0x10], 1
1002aa54: jmp      0x1002aaae
1002aa56: cmp      dword ptr [ebp + 0xc], 4
1002aa5a: jne      0x1002aaae
1002aa5c: mov      edx, dword ptr [ebp - 0x2b0]
1002aa62: movzx    eax, byte ptr [edx + 0x1836]
1002aa69: test     eax, eax
1002aa6b: je       0x1002aaae
1002aa6d: mov      ecx, dword ptr [ebp - 0x2b0]
1002aa73: mov      dl, byte ptr [ecx + 0x1837]
1002aa79: add      dl, 1
1002aa7c: mov      eax, dword ptr [ebp - 0x2b0]
1002aa82: mov      byte ptr [eax + 0x1837], dl
1002aa88: mov      ecx, dword ptr [ebp - 0x2b0]
1002aa8e: movzx    edx, byte ptr [ecx + 0x1836]
1002aa95: mov      eax, dword ptr [ebp - 0x2b0]
1002aa9b: movzx    ecx, byte ptr [eax + 0x1837]
1002aaa2: sub      edx, ecx
1002aaa4: mov      dword ptr [ebp - 0x14], edx
1002aaa7: mov      dword ptr [ebp - 0x10], 1
1002aaae: cmp      dword ptr [ebp - 0x14], 0xa
1002aab2: jge      0x1002ab6a
1002aab8: push     1
1002aaba: push     2
1002aabc: lea      ecx, [ebp - 0x94]
1002aac2: call     0x1000e520
1002aac7: mov      dword ptr [ebp - 4], 0
1002aace: mov      ecx, 0x1009770c
1002aad3: call     0x10003170
1002aad8: push     eax
1002aad9: mov      edx, dword ptr [ebp - 0x14]
1002aadc: push     edx
1002aadd: mov      ecx, 0x1009774c
1002aae2: call     0x10003170
1002aae7: push     eax
1002aae8: lea      eax, [ebp - 0x94]
1002aaee: push     eax
1002aaef: call     0x10010300
1002aaf4: add      esp, 8
1002aaf7: mov      ecx, eax
1002aaf9: call     0x1002d470
1002aafe: push     eax
1002aaff: call     0x10010300
1002ab04: add      esp, 8
1002ab07: lea      ecx, [ebp - 0x2ac]
1002ab0d: push     ecx
1002ab0e: lea      ecx, [ebp - 0x94]
1002ab14: call     0x1000e650
1002ab19: mov      dword ptr [ebp - 0x2b4], eax
1002ab1f: mov      edx, dword ptr [ebp - 0x2b4]
1002ab25: mov      dword ptr [ebp - 0x2b8], edx
1002ab2b: mov      byte ptr [ebp - 4], 1
1002ab2f: mov      ecx, dword ptr [ebp - 0x2b8]
1002ab35: call     0x10003310
1002ab3a: push     eax
1002ab3b: mov      ecx, dword ptr [ebp - 0x2b0]
1002ab41: add      ecx, 4
1002ab44: call     0x100032a0
1002ab49: mov      byte ptr [ebp - 4], 0
1002ab4d: lea      ecx, [ebp - 0x2ac]
1002ab53: call     0x10003280
1002ab58: mov      dword ptr [ebp - 4], 0xffffffff
1002ab5f: lea      ecx, [ebp - 0x94]
1002ab65: call     0x10009820
1002ab6a: cmp      dword ptr [ebp - 0x10], 0
1002ab6e: je       0x1002ac79
1002ab74: mov      dword ptr [ebp - 0x290], 0
1002ab7e: jmp      0x1002ab8f
1002ab80: mov      eax, dword ptr [ebp - 0x290]
1002ab86: add      eax, 1
1002ab89: mov      dword ptr [ebp - 0x290], eax
1002ab8f: cmp      dword ptr [ebp - 0x290], 3
1002ab96: jge      0x1002abf1
1002ab98: mov      ecx, dword ptr [ebp - 0x290]
1002ab9e: shl      ecx, 6
1002aba1: mov      edx, dword ptr [ebp - 0x2b0]
1002aba7: lea      esi, [edx + ecx + 0x28]
1002abab: mov      eax, dword ptr [ebp - 0x290]
1002abb1: shl      eax, 6
1002abb4: lea      edi, [ebp + eax - 0x28c]
1002abbb: mov      ecx, 0x10
1002abc0: rep movsd dword ptr es:[edi], dword ptr [esi]
1002abc2: mov      ecx, dword ptr [ebp - 0x290]
1002abc8: imul     ecx, ecx, 0x60
1002abcb: mov      edx, dword ptr [ebp - 0x2b0]
1002abd1: lea      esi, [edx + ecx + 0xe8]
1002abd8: mov      eax, dword ptr [ebp - 0x290]
1002abde: imul     eax, eax, 0x60
1002abe1: lea      edi, [ebp + eax - 0x1bc]
1002abe8: mov      ecx, 0x18
1002abed: rep movsd dword ptr es:[edi], dword ptr [esi]
1002abef: jmp      0x1002ab80
1002abf1: mov      ecx, dword ptr [ebp - 0x2b0]
1002abf7: add      ecx, 0x1830
1002abfd: mov      edx, dword ptr [ecx]
1002abff: mov      dword ptr [ebp - 0x1cc], edx
1002ac05: mov      eax, dword ptr [ecx + 4]
1002ac08: mov      dword ptr [ebp - 0x1c8], eax
1002ac0e: mov      edx, dword ptr [ecx + 8]
1002ac11: mov      dword ptr [ebp - 0x1c4], edx
1002ac17: mov      ax, word ptr [ecx + 0xc]
1002ac1b: mov      word ptr [ebp - 0x1c0], ax
1002ac22: lea      ecx, [ebp - 0x1cc]
1002ac28: push     ecx
1002ac29: lea      edx, [ebp - 0x28c]
1002ac2f: push     edx
1002ac30: lea      eax, [ebp - 0x1bc]
1002ac36: push     eax
1002ac37: mov      ecx, dword ptr [ebp + 8]
1002ac3a: push     ecx
1002ac3b: mov      ecx, dword ptr [ebp - 0x2b0]
1002ac41: call     0x1002b360
1002ac46: test     eax, eax
1002ac48: je       0x1002ac79
1002ac4a: call     dword ptr [0x10068308] ; GetLastError
1002ac50: cmp      eax, 0x13
1002ac53: jne      0x1002ac5c
1002ac55: mov      byte ptr [0x10093d80], 1
1002ac5c: mov      ecx, 0x100976ec
1002ac61: call     0x10003170
1002ac66: push     eax
1002ac67: mov      ecx, dword ptr [ebp - 0x2b0]
1002ac6d: add      ecx, 4
1002ac70: call     0x100032a0
1002ac75: xor      al, al
1002ac77: jmp      0x1002ac8b
1002ac79: jmp      0x1002ac89
1002ac7b: push     esi
1002ac7c: dec      ebp
1002ac7d: push     eax
1002ac7e: jb       0x1002acef
1002ac80: je       0x1002ace7
1002ac82: arpl     word ptr [eax + 0x65], si
1002ac86: outsb    dx, byte ptr [esi]
1002ac87: add      byte ptr fs:[eax - 0xbb274ff], dh
1002ac8e: mov      dword ptr fs:[0], ecx
1002ac95: pop      ecx
1002ac96: pop      edi
1002ac97: pop      esi
1002ac98: mov      ecx, dword ptr [ebp - 0x98]
1002ac9e: xor      ecx, ebp
1002aca0: call     0x10048939
1002aca5: mov      esp, ebp
1002aca7: pop      ebp
1002aca8: ret      8
1002acab: int3     
1002acac: int3     
1002acad: int3     
1002acae: int3     
1002acaf: int3     
1002acb0: push     ebp
1002acb1: mov      ebp, esp
1002acb3: sub      esp, 8
1002acb6: mov      dword ptr [ebp - 8], ecx
1002acb9: mov      byte ptr [ebp - 1], 0
1002acbd: movzx    eax, word ptr [0x10096a20]
1002acc4: cmp      eax, 0x64
1002acc7: jl       0x1002acf5
1002acc9: cmp      dword ptr [ebp + 8], 2
1002accd: jne      0x1002ace0
1002accf: movzx    ecx, byte ptr [0x10096a22]
1002acd6: test     ecx, ecx
1002acd8: je       0x1002acde
1002acda: mov      byte ptr [ebp - 1], 1
1002acde: jmp      0x1002acf5
1002ace0: cmp      dword ptr [ebp + 8], 4
1002ace4: jne      0x1002acf5
1002ace6: movzx    edx, byte ptr [0x10096a25]
1002aced: test     edx, edx
1002acef: je       0x1002acf5
1002acf1: mov      byte ptr [ebp - 1], 1
1002acf5: mov      al, byte ptr [ebp - 1]
1002acf8: mov      esp, ebp
1002acfa: pop      ebp
1002acfb: ret      4
1002acfe: int3     
1002acff: int3     
1002ad00: push     ebp
1002ad01: mov      ebp, esp
1002ad03: sub      esp, 8
1002ad06: mov      dword ptr [ebp - 8], ecx
1002ad09: jmp      0x1002ad1b
1002ad0b: push     esi
1002ad0c: dec      ebp
1002ad0d: push     eax
1002ad0e: jb       0x1002ad7f
1002ad10: je       0x1002ad77
1002ad12: arpl     word ptr [eax + 0x62], si
1002ad16: imul     ebp, dword ptr gs:[bp], 0xff45c6
1002ad1f: movzx    eax, word ptr [0x10096a20]
1002ad26: cmp      eax, 0x64
1002ad29: jl       0x1002ad65
1002ad2b: cmp      dword ptr [ebp + 8], 2
1002ad2f: jne      0x1002ad49
1002ad31: movzx    ecx, byte ptr [0x10096a24]
1002ad38: movzx    edx, byte ptr [0x10096a23]
1002ad3f: cmp      ecx, edx
1002ad41: jl       0x1002ad47
1002ad43: mov      byte ptr [ebp - 1], 1
1002ad47: jmp      0x1002ad65
1002ad49: cmp      dword ptr [ebp + 8], 4
1002ad4d: jne      0x1002ad65
1002ad4f: movzx    eax, byte ptr [0x10096a27]
1002ad56: movzx    ecx, byte ptr [0x10096a26]
1002ad5d: cmp      eax, ecx
1002ad5f: jl       0x1002ad65
1002ad61: mov      byte ptr [ebp - 1], 1
1002ad65: jmp      0x1002ad75
1002ad67: push     esi
1002ad68: dec      ebp
1002ad69: push     eax
1002ad6a: jb       0x1002addb
1002ad6c: je       0x1002add3
1002ad6e: arpl     word ptr [eax + 0x65], si
1002ad72: outsb    dx, byte ptr [esi]
1002ad73: add      byte ptr fs:[edx - 0x1a7400bb], cl
1002ad7a: pop      ebp
1002ad7b: ret      4
1002ad7e: int3     
1002ad7f: int3     