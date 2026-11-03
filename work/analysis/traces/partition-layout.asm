100159d4: push     0x10093d88
100159d9: push     0x104
100159de: push     0x10094fd8
100159e3: call     0x10048ea2
100159e8: add      esp, 0xc
100159eb: push     0
100159ed: push     0x120
100159f2: mov      eax, dword ptr [ebp - 4]
100159f5: push     eax
100159f6: mov      ecx, dword ptr [ebp + 0x10]
100159f9: push     ecx
100159fa: call     0x1001f130
100159ff: add      esp, 0x10
10015a02: push     0
10015a04: push     0xe
10015a06: mov      edx, dword ptr [ebp - 4]
10015a09: add      edx, 0x120
10015a0f: push     edx
10015a10: mov      eax, dword ptr [ebp + 0x18]
10015a13: push     eax
10015a14: call     0x1001f130
10015a19: add      esp, 0x10
10015a1c: mov      ecx, dword ptr [ebp + 0x18]
10015a1f: movzx    edx, word ptr [ecx]
10015a22: xor      edx, 0x88
10015a28: mov      eax, dword ptr [ebp + 0x18]
10015a2b: mov      word ptr [eax], dx
10015a2e: mov      ecx, dword ptr [ebp + 0xc]
10015a31: mov      edx, dword ptr [ebp + 0x18]
10015a34: mov      ax, word ptr [edx]
10015a37: mov      word ptr [ecx + 0x110], ax
10015a3e: mov      ecx, dword ptr [ebp + 0x18]
10015a41: movzx    edx, word ptr [ecx]
10015a44: cmp      edx, 0x206
10015a4a: jne      0x10015a77
10015a4c: mov      eax, dword ptr [ebp + 0x18]
10015a4f: movzx    ecx, byte ptr [eax + 6]
10015a53: xor      ecx, 0x88
10015a59: mov      edx, dword ptr [ebp + 0x18]
10015a5c: mov      byte ptr [edx + 6], cl
10015a5f: mov      eax, dword ptr [ebp + 0x18]
10015a62: movzx    ecx, byte ptr [eax + 3]
10015a66: xor      ecx, 0x88
10015a6c: mov      edx, dword ptr [ebp + 0x18]
10015a6f: mov      byte ptr [edx + 3], cl
10015a72: jmp      0x10015b40
10015a77: push     0
10015a79: push     0xc0
10015a7e: mov      eax, dword ptr [ebp - 4]
10015a81: push     eax
10015a82: mov      ecx, dword ptr [ebp + 0x14]
10015a85: push     ecx
10015a86: call     0x1001f130
10015a8b: add      esp, 0x10
10015a8e: push     0
10015a90: push     0xe
10015a92: mov      edx, dword ptr [ebp - 4]
10015a95: add      edx, 0xc0
10015a9b: push     edx
10015a9c: mov      eax, dword ptr [ebp + 0x18]
10015a9f: push     eax
10015aa0: call     0x1001f130
10015aa5: add      esp, 0x10
10015aa8: mov      ecx, dword ptr [ebp + 0x18]
10015aab: movzx    edx, word ptr [ecx]
10015aae: xor      edx, 0x88
10015ab4: mov      eax, dword ptr [ebp + 0x18]
10015ab7: mov      word ptr [eax], dx
10015aba: push     0
10015abc: push     0x120
10015ac1: push     0
10015ac3: mov      ecx, dword ptr [ebp + 0x10]
10015ac6: push     ecx
10015ac7: call     0x1001f170
10015acc: add      esp, 0x10
10015acf: mov      edx, dword ptr [ebp + 0x14]
10015ad2: push     edx
10015ad3: mov      eax, dword ptr [ebp + 0x10]
10015ad6: push     eax
10015ad7: call     0x10015520
10015adc: add      esp, 8
10015adf: mov      ecx, dword ptr [ebp + 0x18]
10015ae2: movzx    edx, word ptr [ecx]
10015ae5: cmp      edx, 0x202
10015aeb: jne      0x10015b15
10015aed: mov      eax, dword ptr [ebp + 0x18]
10015af0: movzx    ecx, byte ptr [eax + 6]
10015af4: xor      ecx, 0x88
10015afa: mov      edx, dword ptr [ebp + 0x18]
10015afd: mov      byte ptr [edx + 6], cl
10015b00: mov      eax, dword ptr [ebp + 0x18]
10015b03: movzx    ecx, byte ptr [eax + 3]
10015b07: xor      ecx, 0x88
10015b0d: mov      edx, dword ptr [ebp + 0x18]
10015b10: mov      byte ptr [edx + 3], cl
10015b13: jmp      0x10015b40
10015b15: mov      eax, dword ptr [ebp - 4]
10015b18: mov      dword ptr [ebp - 0x38], eax
10015b1b: mov      ecx, dword ptr [ebp - 0x38]
10015b1e: push     ecx
10015b1f: call     0x1003aedf
10015b24: add      esp, 4
10015b27: mov      edx, dword ptr [ebp - 0x14]
10015b2a: mov      dword ptr [ebp - 0x3c], edx
10015b2d: mov      eax, dword ptr [ebp - 0x3c]
10015b30: push     eax
10015b31: call     0x1003aedf
10015b36: add      esp, 4
10015b39: mov      eax, 1
10015b3e: jmp      0x10015b76
10015b40: mov      ecx, dword ptr [ebp - 4]
10015b43: mov      dword ptr [ebp - 0x40], ecx
10015b46: mov      edx, dword ptr [ebp - 0x40]
10015b49: push     edx
10015b4a: call     0x1003aedf
10015b4f: add      esp, 4
10015b52: mov      eax, dword ptr [ebp - 0x14]
10015b55: mov      dword ptr [ebp - 0x44], eax
10015b58: mov      ecx, dword ptr [ebp - 0x44]
10015b5b: push     ecx
10015b5c: call     0x1003aedf
10015b61: add      esp, 4
10015b64: jmp      0x10015b74
10015b66: push     esi
10015b67: dec      ebp
10015b68: push     eax
10015b69: jb       0x10015bda
10015b6b: je       0x10015bd2
10015b6d: arpl     word ptr [eax + 0x65], si
10015b71: outsb    dx, byte ptr [esi]
10015b72: add      byte ptr fs:[ebx], dh
10015b75: ror      byte ptr [ebx + 0x14c25de5], 0
10015b7c: int3     
10015b7d: int3     
10015b7e: int3     
10015b7f: int3     