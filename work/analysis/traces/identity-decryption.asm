1003ac40: push     ebp
1003ac41: mov      ebp, esp
1003ac43: sub      esp, 0x18
1003ac46: mov      dword ptr [ebp - 0x18], ecx
1003ac49: mov      eax, dword ptr [ebp + 0xc]
1003ac4c: add      eax, dword ptr [ebp + 0x14]
1003ac4f: add      eax, dword ptr [ebp + 0x1c]
1003ac52: mov      ecx, dword ptr [ebp + 0x24]
1003ac55: lea      edx, [eax + ecx + 1]
1003ac59: push     edx
1003ac5a: call     0x1003aea5
1003ac5f: add      esp, 4
1003ac62: mov      dword ptr [ebp - 0x10], eax
1003ac65: mov      eax, dword ptr [ebp - 0x10]
1003ac68: mov      dword ptr [ebp - 4], eax
1003ac6b: cmp      dword ptr [ebp - 4], 0
1003ac6f: jne      0x1003ac79
1003ac71: or       eax, 0xffffffff
1003ac74: jmp      0x1003ad6f
1003ac79: mov      ecx, dword ptr [ebp + 0xc]
1003ac7c: add      ecx, dword ptr [ebp + 0x14]
1003ac7f: add      ecx, dword ptr [ebp + 0x1c]
1003ac82: mov      edx, dword ptr [ebp + 0x24]
1003ac85: lea      eax, [ecx + edx + 1]
1003ac89: push     eax
1003ac8a: push     0
1003ac8c: mov      ecx, dword ptr [ebp - 4]
1003ac8f: push     ecx
1003ac90: call     0x1004f490
1003ac95: add      esp, 0xc
1003ac98: call     0x1003a990
1003ac9d: mov      edx, dword ptr [ebp + 0xc]
1003aca0: push     edx
1003aca1: mov      eax, dword ptr [ebp + 8]
1003aca4: push     eax
1003aca5: mov      ecx, dword ptr [ebp - 4]
1003aca8: push     ecx
1003aca9: call     0x100575b0
1003acae: add      esp, 0xc
1003acb1: mov      edx, dword ptr [ebp + 0x14]
1003acb4: push     edx
1003acb5: mov      eax, dword ptr [ebp + 0x10]
1003acb8: push     eax
1003acb9: mov      ecx, dword ptr [ebp - 4]
1003acbc: add      ecx, dword ptr [ebp + 0xc]
1003acbf: push     ecx
1003acc0: call     0x100575b0
1003acc5: add      esp, 0xc
1003acc8: mov      edx, dword ptr [ebp + 0x1c]
1003accb: push     edx
1003accc: mov      eax, dword ptr [ebp + 0x18]
1003accf: push     eax
1003acd0: mov      ecx, dword ptr [ebp - 4]
1003acd3: add      ecx, dword ptr [ebp + 0xc]
1003acd6: add      ecx, dword ptr [ebp + 0x14]
1003acd9: push     ecx
1003acda: call     0x100575b0
1003acdf: add      esp, 0xc
1003ace2: mov      edx, dword ptr [ebp + 0x24]
1003ace5: push     edx
1003ace6: mov      eax, dword ptr [ebp + 0x20]
1003ace9: push     eax
1003acea: mov      ecx, dword ptr [ebp - 4]
1003aced: add      ecx, dword ptr [ebp + 0xc]
1003acf0: add      ecx, dword ptr [ebp + 0x14]
1003acf3: add      ecx, dword ptr [ebp + 0x1c]
1003acf6: push     ecx
1003acf7: call     0x100575b0
1003acfc: add      esp, 0xc
1003acff: mov      edx, dword ptr [ebp + 0xc]
1003ad02: add      edx, dword ptr [ebp + 0x14]
1003ad05: add      edx, dword ptr [ebp + 0x1c]
1003ad08: add      edx, dword ptr [ebp + 0x24]
1003ad0b: push     edx
1003ad0c: mov      eax, dword ptr [ebp - 4]
1003ad0f: push     eax
1003ad10: push     0
1003ad12: call     0x1003aa10
1003ad17: add      esp, 0xc
1003ad1a: mov      dword ptr [ebp - 0xc], eax
1003ad1d: mov      ecx, dword ptr [ebp + 0x28]
1003ad20: push     ecx
1003ad21: push     4
1003ad23: lea      edx, [ebp - 0xc]
1003ad26: push     edx
1003ad27: mov      eax, dword ptr [ebp + 0x2c]
1003ad2a: mov      ecx, dword ptr [eax]
1003ad2c: push     ecx
1003ad2d: mov      edx, dword ptr [ebp + 0x28]
1003ad30: push     edx
1003ad31: push     0
1003ad33: push     0
1003ad35: call     0x1003a6b0
1003ad3a: add      esp, 0x1c
1003ad3d: movzx    eax, al
1003ad40: mov      dword ptr [ebp - 8], eax
1003ad43: cmp      dword ptr [ebp - 4], 0
1003ad47: je       0x1003ad62
1003ad49: mov      ecx, dword ptr [ebp - 4]
1003ad4c: mov      dword ptr [ebp - 0x14], ecx
1003ad4f: mov      edx, dword ptr [ebp - 0x14]
1003ad52: push     edx
1003ad53: call     0x1003aedf
1003ad58: add      esp, 4
1003ad5b: mov      dword ptr [ebp - 4], 0
1003ad62: mov      eax, dword ptr [ebp - 8]
1003ad65: neg      eax
1003ad67: sbb      eax, eax
1003ad69: and      eax, 2
1003ad6c: add      eax, -2
1003ad6f: mov      esp, ebp
1003ad71: pop      ebp
1003ad72: ret      0x28
1003ad75: xor      eax, eax
1003ad77: inc      eax
1003ad78: ret      0xc
1003ad7b: push     1
1003ad7d: push     0
1003ad7f: call     0x1003efbc
1003ad84: call     0x1003f09e
1003ad89: jmp      0x1003f050
1003ad8e: mov      edi, edi
1003ad90: push     ebp
1003ad91: mov      ebp, esp
1003ad93: cmp      dword ptr [ebp + 0xc], 1
1003ad97: jne      0x1003ae00
1003ad99: push     ebx
1003ad9a: push     esi
1003ad9b: xor      ebx, ebx
1003ad9d: push     edi
1003ad9e: mov      dword ptr [ebp + 0xc], ebx
1003ada1: call     0x1003e1ea
1003ada6: push     ebx
1003ada7: push     0x1008430c
1003adac: push     ebx
1003adad: push     dword ptr [ebp + 8]
1003adb0: mov      esi, eax
1003adb2: mov      edi, dword ptr [esi + 8]
1003adb5: call     0x1003f85c
1003adba: test     eax, eax
1003adbc: je       0x1003addc
1003adbe: call     0x1003e7a2
1003adc3: mov      ebx, dword ptr [eax + 4]
1003adc6: test     ebx, ebx
1003adc8: je       0x1003ade3
1003adca: mov      eax, dword ptr [ebx]
1003adcc: mov      ecx, ebx
1003adce: call     dword ptr [eax + 0x50]
1003add1: test     eax, eax
1003add3: jne      0x1003ade3
1003add5: mov      eax, dword ptr [ebx]
1003add7: mov      ecx, ebx
1003add9: call     dword ptr [eax + 0x68]
1003addc: call     0x1003f620
1003ade1: jmp      0x1003adf5
1003ade3: push     dword ptr [ebp + 8]
1003ade6: mov      dword ptr [esi + 8], edi
1003ade9: call     0x1003ea47
1003adee: mov      dword ptr [ebp + 0xc], 1
1003adf5: mov      eax, dword ptr [ebp + 0xc]
1003adf8: mov      dword ptr [esi + 8], edi
1003adfb: pop      edi
1003adfc: pop      esi
1003adfd: pop      ebx
1003adfe: jmp      0x1003ae53
1003ae00: cmp      dword ptr [ebp + 0xc], 0
1003ae04: jne      0x1003ae36
1003ae06: call     0x1003e7a2
1003ae0b: mov      eax, dword ptr [eax + 4]
1003ae0e: test     eax, eax
1003ae10: je       0x1003ae19
1003ae12: mov      edx, dword ptr [eax]
1003ae14: mov      ecx, eax
1003ae16: call     dword ptr [edx + 0x68]
1003ae19: call     0x1003f17a
1003ae1e: push     -1
1003ae20: call     0x1003f392
1003ae25: call     0x1003f620
1003ae2a: push     1
1003ae2c: push     dword ptr [ebp + 8]
1003ae2f: call     0x1003efbc
1003ae34: jmp      0x1003ae50
1003ae36: cmp      dword ptr [ebp + 0xc], 3
1003ae3a: jne      0x1003ae50
1003ae3c: call     0x1003f17a
1003ae41: push     -1
1003ae43: call     0x1003f392
1003ae48: push     dword ptr [ebp + 8]
1003ae4b: call     0x1003cf6e
1003ae50: xor      eax, eax
1003ae52: inc      eax
1003ae53: pop      ebp
1003ae54: ret      0xc
1003ae57: mov      edi, edi
1003ae59: push     ebp
1003ae5a: mov      ebp, esp
1003ae5c: cmp      dword ptr [0x1008fc24], 0
1003ae63: je       0x1003ae83
1003ae65: cmp      dword ptr [ebp + 0xc], 1
1003ae69: jne      0x1003ae7d
1003ae6b: call     0x1003e7a2
1003ae70: mov      ecx, dword ptr [ebp + 8]
1003ae73: mov      dword ptr [eax + 8], ecx
1003ae76: xor      eax, eax
1003ae78: inc      eax
1003ae79: pop      ebp
1003ae7a: ret      0xc
1003ae7d: cmp      dword ptr [ebp + 0xc], 0
1003ae81: je       0x1003ae76
1003ae83: pop      ebp
1003ae84: jmp      0x1003ad8e
1003ae89: jmp      0x1003cde0
1003ae8e: mov      edi, edi
1003ae90: push     ebp
1003ae91: mov      ebp, esp
1003ae93: mov      ecx, dword ptr [ebp + 8]
1003ae96: mov      eax, dword ptr [0x1008c000]
1003ae9b: mov      dword ptr [0x1008c000], ecx
1003aea1: pop      ebp
1003aea2: ret      4
1003aea5: mov      edi, edi
1003aea7: push     ebp
1003aea8: mov      ebp, esp
1003aeaa: push     esi
1003aeab: jmp      0x1003aec0
1003aead: mov      eax, dword ptr [0x1008c000]
1003aeb2: test     eax, eax
1003aeb4: je       0x1003aecf
1003aeb6: push     dword ptr [ebp + 8]
1003aeb9: call     eax
1003aebb: pop      ecx
1003aebc: test     eax, eax
1003aebe: je       0x1003aecf
1003aec0: push     dword ptr [ebp + 8]
1003aec3: call     0x1004b14c
1003aec8: mov      esi, eax
1003aeca: pop      ecx
1003aecb: test     esi, esi
1003aecd: je       0x1003aead
1003aecf: mov      eax, esi
1003aed1: pop      esi
1003aed2: pop      ebp
1003aed3: ret      