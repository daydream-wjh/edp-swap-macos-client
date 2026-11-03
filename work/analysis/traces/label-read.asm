1002ad80: push     ebp
1002ad81: mov      ebp, esp
1002ad83: sub      esp, 0x218
1002ad89: mov      eax, dword ptr [0x1008d020]
1002ad8e: xor      eax, ebp
1002ad90: mov      dword ptr [ebp - 0x14], eax
1002ad93: push     esi
1002ad94: push     edi
1002ad95: mov      dword ptr [ebp - 0x218], ecx
1002ad9b: jmp      0x1002adad
1002ad9d: push     esi
1002ad9e: dec      ebp
1002ad9f: push     eax
1002ada0: jb       0x1002ae11
1002ada2: je       0x1002ae09
1002ada4: arpl     word ptr [eax + 0x62], si
1002ada8: imul     ebp, dword ptr gs:[bp], 0x1f745c6
1002adb1: mov      dword ptr [ebp - 4], 0xffffffff
1002adb8: mov      eax, dword ptr [ebp - 0x218]
1002adbe: mov      ecx, dword ptr [eax + 0x118c]
1002adc4: mov      dword ptr [ebp - 0x10], ecx
1002adc7: mov      dword ptr [ebp - 8], 0
1002adce: movzx    edx, word ptr [0x10096a20]
1002add5: cmp      edx, 0x64
1002add8: jl       0x1002afc4
1002adde: cmp      dword ptr [ebp + 8], 2
1002ade2: jne      0x1002ae1c
1002ade4: mov      eax, dword ptr [ebp - 0x218]
1002adea: movzx    ecx, byte ptr [eax + 0x1833]
1002adf1: test     ecx, ecx
1002adf3: je       0x1002ae1a
1002adf5: mov      edx, dword ptr [ebp - 0x218]
1002adfb: movzx    eax, byte ptr [edx + 0x1834]
1002ae02: test     eax, eax
1002ae04: je       0x1002ae1a
1002ae06: mov      dword ptr [ebp - 8], 1
1002ae0d: mov      ecx, dword ptr [ebp - 0x218]
1002ae13: mov      byte ptr [ecx + 0x1834], 0
1002ae1a: jmp      0x1002ae58
1002ae1c: cmp      dword ptr [ebp + 8], 4
1002ae20: jne      0x1002ae58
1002ae22: mov      edx, dword ptr [ebp - 0x218]
1002ae28: movzx    eax, byte ptr [edx + 0x1836]
1002ae2f: test     eax, eax
1002ae31: je       0x1002ae58
1002ae33: mov      ecx, dword ptr [ebp - 0x218]
1002ae39: movzx    edx, byte ptr [ecx + 0x1837]
1002ae40: test     edx, edx
1002ae42: je       0x1002ae58
1002ae44: mov      dword ptr [ebp - 8], 1
1002ae4b: mov      eax, dword ptr [ebp - 0x218]
1002ae51: mov      byte ptr [eax + 0x1837], 0
1002ae58: cmp      dword ptr [ebp - 8], 0
1002ae5c: je       0x1002afc4
1002ae62: push     0
1002ae64: mov      ecx, dword ptr [ebp - 0x10]
1002ae67: push     ecx
1002ae68: call     0x10012750
1002ae6d: add      esp, 8
1002ae70: mov      dword ptr [ebp - 4], eax
1002ae73: cmp      dword ptr [ebp - 4], -1
1002ae77: je       0x1002af9f
1002ae7d: mov      dword ptr [ebp - 0x20c], 0
1002ae87: jmp      0x1002ae98
1002ae89: mov      edx, dword ptr [ebp - 0x20c]
1002ae8f: add      edx, 1
1002ae92: mov      dword ptr [ebp - 0x20c], edx
1002ae98: cmp      dword ptr [ebp - 0x20c], 3
1002ae9f: jge      0x1002aefa
1002aea1: mov      eax, dword ptr [ebp - 0x20c]
1002aea7: shl      eax, 6
1002aeaa: mov      ecx, dword ptr [ebp - 0x218]
1002aeb0: lea      esi, [ecx + eax + 0x28]
1002aeb4: mov      edx, dword ptr [ebp - 0x20c]
1002aeba: shl      edx, 6
1002aebd: lea      edi, [ebp + edx - 0x208]
1002aec4: mov      ecx, 0x10
1002aec9: rep movsd dword ptr es:[edi], dword ptr [esi]
1002aecb: mov      eax, dword ptr [ebp - 0x20c]
1002aed1: imul     eax, eax, 0x60
1002aed4: mov      ecx, dword ptr [ebp - 0x218]
1002aeda: lea      esi, [ecx + eax + 0xe8]
1002aee1: mov      edx, dword ptr [ebp - 0x20c]
1002aee7: imul     edx, edx, 0x60
1002aeea: lea      edi, [ebp + edx - 0x138]
1002aef1: mov      ecx, 0x18
1002aef6: rep movsd dword ptr es:[edi], dword ptr [esi]
1002aef8: jmp      0x1002ae89
1002aefa: mov      eax, dword ptr [ebp - 0x218]
1002af00: add      eax, 0x1830
1002af05: mov      ecx, dword ptr [eax]
1002af07: mov      dword ptr [ebp - 0x148], ecx
1002af0d: mov      edx, dword ptr [eax + 4]
1002af10: mov      dword ptr [ebp - 0x144], edx
1002af16: mov      ecx, dword ptr [eax + 8]
1002af19: mov      dword ptr [ebp - 0x140], ecx
1002af1f: mov      dx, word ptr [eax + 0xc]
1002af23: mov      word ptr [ebp - 0x13c], dx
1002af2a: lea      eax, [ebp - 0x148]
1002af30: push     eax
1002af31: lea      ecx, [ebp - 0x208]
1002af37: push     ecx
1002af38: mov      edx, dword ptr [ebp - 0x218]
1002af3e: add      edx, 0xe8
1002af44: push     edx
1002af45: mov      eax, dword ptr [ebp - 4]
1002af48: push     eax
1002af49: mov      ecx, dword ptr [ebp - 0x218]
1002af4f: call     0x1002b360
1002af54: test     eax, eax
1002af56: je       0x1002af93
1002af58: call     dword ptr [0x10068308] ; GetLastError
1002af5e: mov      dword ptr [ebp - 0x210], eax
1002af64: cmp      dword ptr [ebp - 0x210], 0x13
1002af6b: jne      0x1002af76
1002af6d: mov      byte ptr [0x10093d80], 1
1002af74: jmp      0x1002af8f
1002af76: mov      ecx, 0x100976ec
1002af7b: call     0x10003170
1002af80: push     eax
1002af81: mov      ecx, dword ptr [ebp - 0x218]
1002af87: add      ecx, 4
1002af8a: call     0x100032a0
1002af8f: mov      byte ptr [ebp - 9], 0
1002af93: mov      ecx, dword ptr [ebp - 4]
1002af96: push     ecx
1002af97: call     dword ptr [0x100682f0] ; CloseHandle
1002af9d: jmp      0x1002afc4
1002af9f: call     dword ptr [0x10068308] ; GetLastError
1002afa5: mov      dword ptr [ebp - 0x214], eax
1002afab: mov      ecx, 0x100976fc
1002afb0: call     0x10003170
1002afb5: push     eax
1002afb6: mov      ecx, dword ptr [ebp - 0x218]
1002afbc: add      ecx, 4
1002afbf: call     0x100032a0
1002afc4: jmp      0x1002afd4
1002afc6: push     esi
1002afc7: dec      ebp
1002afc8: push     eax
1002afc9: jb       0x1002b03a
1002afcb: je       0x1002b032
1002afcd: arpl     word ptr [eax + 0x65], si
1002afd1: outsb    dx, byte ptr [esi]
1002afd2: add      byte ptr fs:[edx + 0x5e5ff745], cl
1002afd9: mov      ecx, dword ptr [ebp - 0x14]
1002afdc: xor      ecx, ebp
1002afde: call     0x10048939
1002afe3: mov      esp, ebp
1002afe5: pop      ebp
1002afe6: ret      4
1002afe9: int3     
1002afea: int3     
1002afeb: int3     
1002afec: int3     
1002afed: int3     
1002afee: int3     
1002afef: int3     