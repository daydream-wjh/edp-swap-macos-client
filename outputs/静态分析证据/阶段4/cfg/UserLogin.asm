10026500: push     ebp
10026501: mov      ebp, esp
10026503: push     -1
10026505: push     0x10066117
1002650a: mov      eax, dword ptr fs:[0]
10026510: push     eax
10026511: sub      esp, 0x56c
10026517: mov      eax, dword ptr [0x1008d020]
1002651c: xor      eax, ebp
1002651e: mov      dword ptr [ebp - 0x14], eax
10026521: push     esi
10026522: push     edi
10026523: push     eax
10026524: lea      eax, [ebp - 0xc]
10026527: mov      dword ptr fs:[0], eax
1002652d: mov      dword ptr [ebp - 0x4f0], ecx
10026533: jmp      0x10026545
10026545: mov      byte ptr [ebp - 0x365], 1
1002654c: mov      dword ptr [ebp - 0x284], 0
10026556: push     0x20c
1002655b: push     0
1002655d: lea      eax, [ebp - 0x280]
10026563: push     eax
10026564: call     0x1004f490
10026569: add      esp, 0xc
1002656c: mov      byte ptr [ebp - 0x2a4], 0
10026573: xor      ecx, ecx
10026575: mov      dword ptr [ebp - 0x2a3], ecx
1002657b: mov      dword ptr [ebp - 0x29f], ecx
10026581: mov      dword ptr [ebp - 0x29b], ecx
10026587: mov      dword ptr [ebp - 0x297], ecx
1002658d: mov      dword ptr [ebp - 0x293], ecx
10026593: mov      dword ptr [ebp - 0x28f], ecx
10026599: mov      dword ptr [ebp - 0x28b], ecx
1002659f: mov      word ptr [ebp - 0x287], cx
100265a6: mov      byte ptr [ebp - 0x285], cl
100265ac: mov      byte ptr [ebp - 0x34], 0
100265b0: xor      edx, edx
100265b2: mov      dword ptr [ebp - 0x33], edx
100265b5: mov      dword ptr [ebp - 0x2f], edx
100265b8: mov      dword ptr [ebp - 0x2b], edx
100265bb: mov      dword ptr [ebp - 0x27], edx
100265be: mov      dword ptr [ebp - 0x23], edx
100265c1: mov      dword ptr [ebp - 0x1f], edx
100265c4: mov      dword ptr [ebp - 0x1b], edx
100265c7: mov      word ptr [ebp - 0x17], dx
100265cb: mov      byte ptr [ebp - 0x15], dl
100265ce: mov      dword ptr [ebp - 0x10], 0
100265d5: mov      byte ptr [ebp - 0x350], 0
100265dc: xor      eax, eax
100265de: mov      dword ptr [ebp - 0x34f], eax
100265e4: mov      dword ptr [ebp - 0x34b], eax
100265ea: mov      dword ptr [ebp - 0x347], eax
100265f0: mov      dword ptr [ebp - 0x343], eax
100265f6: mov      word ptr [ebp - 0x33f], ax
100265fd: mov      byte ptr [ebp - 0x33d], al
10026603: mov      dword ptr [ebp - 0x38], 0
1002660a: lea      ecx, [ebp - 0x338]
10026610: call     0x10003030
10026615: mov      dword ptr [ebp - 4], 0
1002661c: push     0x1006d97b
10026621: lea      ecx, [ebp - 0x74]
10026624: call     0x10003200
10026629: mov      byte ptr [ebp - 4], 1
1002662d: push     0x1006d99a
10026632: lea      ecx, [ebp - 0x54]
10026635: call     0x10003200
1002663a: mov      byte ptr [ebp - 4], 2
1002663e: mov      ecx, dword ptr [ebp - 0x4f0]
10026644: movzx    edx, byte ptr [ecx + 0x1178]
1002664b: test     edx, edx
1002664d: jne      0x1002673c
10026653: mov      eax, dword ptr [ebp - 0x4f0]
10026659: movzx    ecx, byte ptr [eax + 0x117a]
10026660: test     ecx, ecx
10026662: je       0x1002673c
10026668: mov      edx, dword ptr [ebp - 0x4f0]
1002666e: movzx    eax, byte ptr [edx + 0x20]
10026672: test     eax, eax
10026674: jne      0x1002673c
1002667a: lea      ecx, [ebp - 0x47c]
10026680: call     0x10003030
10026685: mov      byte ptr [ebp - 4], 3
10026689: push     0x100976f0
1002668e: push     0x100773d4
10026693: lea      ecx, [ebp - 0x4e0]
10026699: push     ecx
1002669a: call     0x1002d320
1002669f: add      esp, 0xc
100266a2: mov      dword ptr [ebp - 0x4f4], eax
100266a8: mov      edx, dword ptr [ebp - 0x4f4]
100266ae: mov      dword ptr [ebp - 0x4f8], edx
100266b4: mov      byte ptr [ebp - 4], 4
100266b8: push     0x100773b8
100266bd: mov      eax, dword ptr [ebp - 0x4f8]
100266c3: push     eax
100266c4: lea      ecx, [ebp - 0x4e4]
100266ca: push     ecx
100266cb: call     0x1000dfa0
100266d0: add      esp, 0xc
100266d3: mov      dword ptr [ebp - 0x4fc], eax
100266d9: mov      edx, dword ptr [ebp - 0x4fc]
100266df: mov      dword ptr [ebp - 0x500], edx
100266e5: mov      byte ptr [ebp - 4], 5
100266e9: mov      eax, dword ptr [ebp - 0x500]
100266ef: push     eax
100266f0: lea      ecx, [ebp - 0x47c]
100266f6: call     0x1000df80
100266fb: mov      byte ptr [ebp - 4], 4
100266ff: lea      ecx, [ebp - 0x4e4]
10026705: call     0x100030d0
1002670a: mov      byte ptr [ebp - 4], 3
1002670e: lea      ecx, [ebp - 0x4e0]
10026714: call     0x100030d0
10026719: lea      ecx, [ebp - 0x47c]
1002671f: call     0x10003170
10026724: push     eax
10026725: call     0x1002e7b0
1002672a: add      esp, 4
1002672d: mov      byte ptr [ebp - 4], 2
10026731: lea      ecx, [ebp - 0x47c]
10026737: call     0x100030d0
1002673c: mov      ecx, dword ptr [ebp - 0x4f0]
10026742: movzx    edx, byte ptr [ecx + 0x1178]
10026749: test     edx, edx
1002674b: je       0x100268e5
10026751: push     0x100773e4
10026756: push     0
10026758: push     0x2f9
1002675d: push     0x10077404
10026762: push     0x10077430
10026767: call     0x10024100
1002676c: add      esp, 0x14
1002676f: cmp      dword ptr [ebp + 0xc], 2
10026773: jne      0x1002682a
10026779: mov      eax, dword ptr [ebp - 0x4f0]
1002677f: cmp      dword ptr [eax + 0x1184], 2
10026786: jne      0x10026797
10026788: mov      dword ptr [ebp - 0x27c], 1
10026792: jmp      0x10026825
10026797: mov      ecx, dword ptr [ebp - 0x4f0]
1002679d: cmp      dword ptr [ecx + 0x1184], 1
100267a4: jne      0x100267b2
100267a6: mov      dword ptr [ebp - 0x27c], 0
100267b0: jmp      0x10026825
100267b2: push     0x1007744c
100267b7: push     0
100267b9: push     0x306
100267be: push     0x1007746c
100267c3: push     0x10077498
100267c8: call     0x10024100
100267cd: add      esp, 0x14
100267d0: mov      ecx, 0x100976ac
100267d5: call     0x10003170
100267da: push     eax
100267db: mov      ecx, dword ptr [ebp - 0x4f0]
100267e1: add      ecx, 4
100267e4: call     0x100032a0
100267e9: mov      byte ptr [ebp - 0x4e5], 0
100267f0: mov      byte ptr [ebp - 4], 1
100267f4: lea      ecx, [ebp - 0x54]
100267f7: call     0x10003280
100267fc: mov      byte ptr [ebp - 4], 0
10026800: lea      ecx, [ebp - 0x74]
10026803: call     0x10003280
10026808: mov      dword ptr [ebp - 4], 0xffffffff
1002680f: lea      ecx, [ebp - 0x338]
10026815: call     0x100030d0
1002681a: mov      al, byte ptr [ebp - 0x4e5]
10026820: jmp      0x10027b59
10026825: jmp      0x100268e0
1002682a: cmp      dword ptr [ebp + 0xc], 4
1002682e: jne      0x100268e0
10026834: mov      edx, dword ptr [ebp - 0x4f0]
1002683a: cmp      dword ptr [edx + 0x1188], 2
10026841: jne      0x10026852
10026843: mov      dword ptr [ebp - 0x27c], 1
1002684d: jmp      0x100268e0
10026852: mov      eax, dword ptr [ebp - 0x4f0]
10026858: cmp      dword ptr [eax + 0x1188], 1
1002685f: jne      0x1002686d
10026861: mov      dword ptr [ebp - 0x27c], 0
1002686b: jmp      0x100268e0
1002686d: push     0x100774b4
10026872: push     0
10026874: push     0x317
10026879: push     0x100774d4
1002687e: push     0x10077500
10026883: call     0x10024100
10026888: add      esp, 0x14
1002688b: mov      ecx, 0x100976ac
10026890: call     0x10003170
10026895: push     eax
10026896: mov      ecx, dword ptr [ebp - 0x4f0]
1002689c: add      ecx, 4
1002689f: call     0x100032a0
100268a4: mov      byte ptr [ebp - 0x4e6], 0
100268ab: mov      byte ptr [ebp - 4], 1
100268af: lea      ecx, [ebp - 0x54]
100268b2: call     0x10003280
100268b7: mov      byte ptr [ebp - 4], 0
100268bb: lea      ecx, [ebp - 0x74]
100268be: call     0x10003280
100268c3: mov      dword ptr [ebp - 4], 0xffffffff
100268ca: lea      ecx, [ebp - 0x338]
100268d0: call     0x100030d0
100268d5: mov      al, byte ptr [ebp - 0x4e6]
100268db: jmp      0x10027b59
100268e0: jmp      0x1002696a
100268e5: cmp      dword ptr [ebp + 0xc], 2
100268e9: jne      0x100268f7
100268eb: mov      dword ptr [ebp - 0x27c], 1
100268f5: jmp      0x1002696a
100268f7: push     0x1007751c
100268fc: push     0
100268fe: push     0x325
10026903: push     0x1007753c
10026908: push     0x10077568
1002690d: call     0x10024100
10026912: add      esp, 0x14
10026915: mov      ecx, 0x100976ac
1002691a: call     0x10003170
1002691f: push     eax
10026920: mov      ecx, dword ptr [ebp - 0x4f0]
10026926: add      ecx, 4
10026929: call     0x100032a0
1002692e: mov      byte ptr [ebp - 0x4e7], 0
10026935: mov      byte ptr [ebp - 4], 1
10026939: lea      ecx, [ebp - 0x54]
1002693c: call     0x10003280
10026941: mov      byte ptr [ebp - 4], 0
10026945: lea      ecx, [ebp - 0x74]
10026948: call     0x10003280
1002694d: mov      dword ptr [ebp - 4], 0xffffffff
10026954: lea      ecx, [ebp - 0x338]
1002695a: call     0x100030d0
1002695f: mov      al, byte ptr [ebp - 0x4e7]
10026965: jmp      0x10027b59
1002696a: mov      ecx, dword ptr [ebp - 0x4f0]
10026970: call     0x10029e80
10026975: movzx    ecx, al
10026978: test     ecx, ecx
1002697a: jne      0x100269d1
1002697c: mov      ecx, 0x10097764
10026981: call     0x10003170
10026986: push     eax
10026987: mov      ecx, dword ptr [ebp - 0x4f0]
1002698d: add      ecx, 4
10026990: call     0x100032a0
10026995: mov      byte ptr [ebp - 0x4e8], 0
1002699c: mov      byte ptr [ebp - 4], 1
100269a0: lea      ecx, [ebp - 0x54]
100269a3: call     0x10003280
100269a8: mov      byte ptr [ebp - 4], 0
100269ac: lea      ecx, [ebp - 0x74]
100269af: call     0x10003280
100269b4: mov      dword ptr [ebp - 4], 0xffffffff
100269bb: lea      ecx, [ebp - 0x338]
100269c1: call     0x100030d0
100269c6: mov      al, byte ptr [ebp - 0x4e8]
100269cc: jmp      0x10027b59
100269d1: mov      dword ptr [ebp - 0x478], 0
100269db: mov      dword ptr [ebp - 0x58], 0
100269e2: call     0x1003a990
100269e7: mov      edx, dword ptr [ebp + 8]
100269ea: mov      dword ptr [ebp - 0x504], edx
100269f0: mov      eax, dword ptr [ebp - 0x504]
100269f6: add      eax, 1
100269f9: mov      dword ptr [ebp - 0x508], eax
100269ff: mov      ecx, dword ptr [ebp - 0x504]
10026a05: mov      dl, byte ptr [ecx]
10026a07: mov      byte ptr [ebp - 0x509], dl
10026a0d: add      dword ptr [ebp - 0x504], 1
10026a14: cmp      byte ptr [ebp - 0x509], 0
10026a1b: jne      0x100269ff
10026a1d: mov      eax, dword ptr [ebp - 0x504]
10026a23: sub      eax, dword ptr [ebp - 0x508]
10026a29: mov      dword ptr [ebp - 0x510], eax
10026a2f: mov      ecx, dword ptr [ebp - 0x510]
10026a35: push     ecx
10026a36: mov      edx, dword ptr [ebp + 8]
10026a39: push     edx
10026a3a: push     0
10026a3c: call     0x1003aa10
10026a41: add      esp, 0xc
10026a44: mov      dword ptr [ebp - 0x58], eax
10026a47: mov      dword ptr [ebp - 0x478], 0
10026a51: jmp      0x10026a62
10026a53: mov      eax, dword ptr [ebp - 0x478]
10026a59: add      eax, 1
10026a5c: mov      dword ptr [ebp - 0x478], eax
10026a62: cmp      dword ptr [ebp - 0x478], 3
10026a69: jge      0x10026a8a
10026a6b: mov      ecx, dword ptr [ebp - 0x478]
10026a71: imul     ecx, ecx, 0x60
10026a74: mov      edx, dword ptr [ebp - 0x4f0]
10026a7a: mov      eax, dword ptr [ebp + 0xc]
10026a7d: cmp      eax, dword ptr [edx + ecx + 0xf4]
10026a84: jne      0x10026a88
10026a86: jmp      0x10026a8a
10026a88: jmp      0x10026a53
10026a8a: cmp      dword ptr [ebp - 0x478], 3
10026a91: jl       0x10026ab8
10026a93: mov      byte ptr [ebp - 0x365], 0
10026a9a: mov      ecx, 0x10097714
10026a9f: call     0x10003170
10026aa4: push     eax
10026aa5: mov      ecx, dword ptr [ebp - 0x4f0]
10026aab: add      ecx, 4
10026aae: call     0x100032a0
10026ab3: jmp      0x10027ae6
10026ab8: mov      ecx, dword ptr [ebp - 0x4f0]
10026abe: call     0x1002b130
10026ac3: movzx    ecx, al
10026ac6: test     ecx, ecx
10026ac8: je       0x10026afb
10026aca: mov      byte ptr [0x10093d80], 1
10026ad1: mov      dword ptr [ebp - 0x27c], 0
10026adb: push     0x10077588
10026ae0: push     0
10026ae2: push     0x34d
10026ae7: push     0x100775c8
10026aec: push     0x100775f4
10026af1: call     0x10024100
10026af6: add      esp, 0x14
10026af9: jmp      0x10026b02
10026afb: mov      byte ptr [0x10093d80], 0
10026b02: mov      byte ptr [ebp - 0x364], 0
10026b09: xor      edx, edx
10026b0b: mov      dword ptr [ebp - 0x363], edx
10026b11: mov      dword ptr [ebp - 0x35f], edx
10026b17: mov      dword ptr [ebp - 0x35b], edx
10026b1d: mov      dword ptr [ebp - 0x357], edx
10026b23: mov      word ptr [ebp - 0x353], dx
10026b2a: mov      byte ptr [ebp - 0x351], dl
10026b30: mov      dword ptr [ebp - 0x480], 0
10026b3a: jmp      0x10026b4b
10026b3c: mov      eax, dword ptr [ebp - 0x480]
10026b42: add      eax, 1
10026b45: mov      dword ptr [ebp - 0x480], eax
10026b4b: cmp      dword ptr [ebp - 0x480], 4
10026b52: jge      0x10026b64
10026b54: mov      ecx, dword ptr [ebp - 0x480]
10026b5a: mov      byte ptr [ebp + ecx - 0x364], 0x30
10026b62: jmp      0x10026b3c
10026b64: mov      dword ptr [ebp - 0x484], 0
10026b6e: jmp      0x10026b7f
10026b70: mov      edx, dword ptr [ebp - 0x484]
10026b76: add      edx, 1
10026b79: mov      dword ptr [ebp - 0x484], edx
10026b7f: cmp      dword ptr [ebp - 0x484], 4
10026b86: jge      0x10026b98
10026b88: mov      eax, dword ptr [ebp - 0x484]
10026b8e: mov      byte ptr [ebp + eax - 0x360], 0x61
10026b96: jmp      0x10026b70
10026b98: push     0
10026b9a: push     0x10
10026b9c: mov      ecx, dword ptr [ebp - 0x478]
10026ba2: imul     ecx, ecx, 0x60
10026ba5: mov      edx, dword ptr [ebp - 0x4f0]
10026bab: lea      eax, [edx + ecx + 0x120]
10026bb2: push     eax
10026bb3: lea      ecx, [ebp - 0x2a4]
10026bb9: push     ecx
10026bba: call     0x1001f130
10026bbf: add      esp, 0x10
10026bc2: push     0
10026bc4: push     0x14
10026bc6: mov      edx, dword ptr [ebp + 8]
10026bc9: push     edx
10026bca: lea      eax, [ebp - 0x350]
10026bd0: push     eax
10026bd1: call     0x1001f130
10026bd6: add      esp, 0x10
10026bd9: mov      ecx, dword ptr [ebp - 0x4f0]
10026bdf: cmp      dword ptr [ecx], 0x206
10026be5: jne      0x10026c90
10026beb: lea      edx, [ebp - 0x364]
10026bf1: mov      dword ptr [ebp - 0x514], edx
10026bf7: mov      eax, dword ptr [ebp + 8]
10026bfa: mov      dword ptr [ebp - 0x518], eax
10026c00: mov      ecx, dword ptr [ebp - 0x518]
10026c06: mov      dl, byte ptr [ecx]
10026c08: mov      byte ptr [ebp - 0x519], dl
10026c0e: mov      eax, dword ptr [ebp - 0x514]
10026c14: cmp      dl, byte ptr [eax]
10026c16: jne      0x10026c5e
10026c18: cmp      byte ptr [ebp - 0x519], 0
10026c1f: je       0x10026c52
10026c21: mov      ecx, dword ptr [ebp - 0x518]
10026c27: mov      dl, byte ptr [ecx + 1]
10026c2a: mov      byte ptr [ebp - 0x51a], dl
10026c30: mov      eax, dword ptr [ebp - 0x514]
10026c36: cmp      dl, byte ptr [eax + 1]
10026c39: jne      0x10026c5e
10026c3b: add      dword ptr [ebp - 0x518], 2
10026c42: add      dword ptr [ebp - 0x514], 2
10026c49: cmp      byte ptr [ebp - 0x51a], 0
10026c50: jne      0x10026c00
10026c52: mov      dword ptr [ebp - 0x520], 0
10026c5c: jmp      0x10026c69
10026c5e: sbb      ecx, ecx
10026c60: sbb      ecx, -1
10026c63: mov      dword ptr [ebp - 0x520], ecx
10026c69: mov      edx, dword ptr [ebp - 0x520]
10026c6f: mov      dword ptr [ebp - 0x524], edx
10026c75: cmp      dword ptr [ebp - 0x524], 0
10026c7c: jne      0x10026c90
10026c7e: lea      eax, [ebp - 0x350]
10026c84: push     eax
10026c85: mov      ecx, dword ptr [ebp - 0x4f0]
10026c8b: call     0x1002c3e0
10026c90: cmp      dword ptr [ebp + 0x10], 0
10026c94: jne      0x10026e87
10026c9a: mov      ecx, dword ptr [ebp - 0x478]
10026ca0: imul     ecx, ecx, 0x60
10026ca3: mov      edx, dword ptr [ebp - 0x4f0]
10026ca9: mov      eax, dword ptr [ebp - 0x58]
10026cac: cmp      eax, dword ptr [edx + ecx + 0x118]
10026cb3: je       0x10026d58
10026cb9: mov      dword ptr [ebp - 0x488], 0xffffffff
10026cc3: mov      byte ptr [ebp - 0x365], 0
10026cca: mov      ecx, 0x100976d4
10026ccf: call     0x10003170
10026cd4: push     eax
10026cd5: mov      ecx, dword ptr [ebp - 0x4f0]
10026cdb: add      ecx, 4
10026cde: call     0x100032a0
10026ce3: mov      ecx, dword ptr [ebp - 0x4f0]
10026ce9: mov      edx, dword ptr [ecx + 0x118c]
10026cef: mov      dword ptr [ebp - 0x48c], edx
10026cf5: push     0
10026cf7: mov      eax, dword ptr [ebp - 0x48c]
10026cfd: push     eax
10026cfe: call     0x10012750
10026d03: add      esp, 8
10026d06: mov      dword ptr [ebp - 0x488], eax
10026d0c: cmp      dword ptr [ebp - 0x488], -1
10026d13: je       0x10026d3a
10026d15: mov      ecx, dword ptr [ebp + 0xc]
10026d18: push     ecx
10026d19: mov      edx, dword ptr [ebp - 0x488]
10026d1f: push     edx
10026d20: mov      ecx, dword ptr [ebp - 0x4f0]
10026d26: call     0x1002a990
10026d2b: mov      eax, dword ptr [ebp - 0x488]
10026d31: push     eax
10026d32: call     dword ptr [0x100682f0]
10026d38: jmp      0x10026d53
10026d3a: mov      ecx, 0x1009778c
10026d3f: call     0x10003170
10026d44: push     eax
10026d45: mov      ecx, dword ptr [ebp - 0x4f0]
10026d4b: add      ecx, 4
10026d4e: call     0x100032a0
10026d53: jmp      0x10027ae6
10026d58: movzx    ecx, byte ptr [0x10093d80]
10026d5f: test     ecx, ecx
10026d61: jne      0x10026d7e
10026d63: mov      edx, dword ptr [ebp + 0xc]
10026d66: push     edx
10026d67: mov      ecx, dword ptr [ebp - 0x4f0]
10026d6d: call     0x1002ad80
10026d72: movzx    eax, al
10026d75: test     eax, eax
10026d77: jne      0x10026d7e
10026d79: jmp      0x10027ae6
10026d7e: lea      ecx, [ebp - 0x350]
10026d84: mov      dword ptr [ebp - 0x528], ecx
10026d8a: mov      edx, dword ptr [ebp - 0x528]
10026d90: add      edx, 1
10026d93: mov      dword ptr [ebp - 0x52c], edx
10026d99: mov      eax, dword ptr [ebp - 0x528]
10026d9f: mov      cl, byte ptr [eax]
10026da1: mov      byte ptr [ebp - 0x52d], cl
10026da7: add      dword ptr [ebp - 0x528], 1
10026dae: cmp      byte ptr [ebp - 0x52d], 0
10026db5: jne      0x10026d99
10026db7: mov      edx, dword ptr [ebp - 0x528]
10026dbd: sub      edx, dword ptr [ebp - 0x52c]
10026dc3: mov      dword ptr [ebp - 0x534], edx
10026dc9: lea      eax, [ebp - 0x2a4]
10026dcf: push     eax
10026dd0: lea      ecx, [ebp - 0x34]
10026dd3: push     ecx
10026dd4: mov      edx, dword ptr [ebp - 0x478]
10026dda: imul     edx, edx, 0x60
10026ddd: mov      eax, dword ptr [ebp - 0x4f0]
10026de3: movzx    ecx, byte ptr [eax + edx + 0x140]
10026deb: push     ecx
10026dec: mov      edx, dword ptr [ebp - 0x478]
10026df2: push     edx
10026df3: mov      eax, dword ptr [ebp - 0x534]
10026df9: push     eax
10026dfa: lea      ecx, [ebp - 0x350]
10026e00: push     ecx
10026e01: mov      ecx, dword ptr [ebp - 0x4f0]
10026e07: call     0x1002b870
10026e0c: call     0x1003a990
10026e11: mov      dword ptr [ebp - 0x38], 8
10026e18: mov      edx, dword ptr [ebp - 0x4f0]
10026e1e: cmp      dword ptr [edx], 0x206
10026e24: jne      0x10026e2d
10026e26: mov      dword ptr [ebp - 0x38], 0x10
10026e2d: mov      eax, dword ptr [ebp - 0x38]
10026e30: push     eax
10026e31: lea      ecx, [ebp - 0x34]
10026e34: push     ecx
10026e35: push     0
10026e37: call     0x1003aa10
10026e3c: add      esp, 0xc
10026e3f: mov      dword ptr [ebp - 0x58], eax
10026e42: mov      edx, dword ptr [ebp - 0x478]
10026e48: imul     edx, edx, 0x60
10026e4b: mov      eax, dword ptr [ebp - 0x4f0]
10026e51: mov      ecx, dword ptr [ebp - 0x58]
10026e54: cmp      ecx, dword ptr [eax + edx + 0x11c]
10026e5b: je       0x10026e82
10026e5d: mov      byte ptr [ebp - 0x365], 0
10026e64: mov      ecx, 0x10097788
10026e69: call     0x10003170
10026e6e: push     eax
10026e6f: mov      ecx, dword ptr [ebp - 0x4f0]
10026e75: add      ecx, 4
10026e78: call     0x100032a0
10026e7d: jmp      0x10027ae6
10026e82: jmp      0x1002730c
10026e87: cmp      dword ptr [ebp + 0x10], 2
10026e8b: jne      0x10026fc4
10026e91: mov      dword ptr [ebp - 0x4ac], 0
10026e9b: xor      edx, edx
10026e9d: mov      dword ptr [ebp - 0x4a8], edx
10026ea3: mov      dword ptr [ebp - 0x4a4], edx
10026ea9: mov      dword ptr [ebp - 0x4a0], edx
10026eaf: mov      dword ptr [ebp - 0x49c], edx
10026eb5: mov      dword ptr [ebp - 0x498], edx
10026ebb: mov      dword ptr [ebp - 0x494], edx
10026ec1: mov      dword ptr [ebp - 0x490], edx
10026ec7: mov      dword ptr [ebp - 0x4a8], 2
10026ed1: mov      eax, dword ptr [ebp - 0x478]
10026ed7: mov      dword ptr [ebp - 0x4ac], eax
10026edd: lea      ecx, [ebp - 0x2a4]
10026ee3: mov      dword ptr [ebp - 0x490], ecx
10026ee9: lea      edx, [ebp - 0x34]
10026eec: mov      dword ptr [ebp - 0x494], edx
10026ef2: lea      eax, [ebp - 0x350]
10026ef8: mov      dword ptr [ebp - 0x4a0], eax
10026efe: mov      ecx, dword ptr [ebp - 0x4f0]
10026f04: add      ecx, 0x350
10026f0a: mov      dword ptr [ebp - 0x498], ecx
10026f10: mov      edx, dword ptr [ebp - 0x478]
10026f16: imul     edx, edx, 0x60
10026f19: mov      eax, dword ptr [ebp - 0x4f0]
10026f1f: mov      cl, byte ptr [eax + edx + 0x140]
10026f26: mov      byte ptr [ebp - 0x4a4], cl
10026f2c: sub      esp, 0x20
10026f2f: mov      ecx, 8
10026f34: lea      esi, [ebp - 0x4ac]
10026f3a: mov      edi, esp
10026f3c: rep movsd dword ptr es:[edi], dword ptr [esi]
10026f3e: mov      ecx, dword ptr [ebp - 0x4f0]
10026f44: call     0x1002bec0
10026f49: call     0x1003a990
10026f4e: mov      dword ptr [ebp - 0x38], 8
10026f55: mov      edx, dword ptr [ebp - 0x4f0]
10026f5b: cmp      dword ptr [edx], 0x206
10026f61: jne      0x10026f6a
10026f63: mov      dword ptr [ebp - 0x38], 0x10
10026f6a: mov      eax, dword ptr [ebp - 0x38]
10026f6d: push     eax
10026f6e: lea      ecx, [ebp - 0x34]
10026f71: push     ecx
10026f72: push     0
10026f74: call     0x1003aa10
10026f79: add      esp, 0xc
10026f7c: mov      dword ptr [ebp - 0x58], eax
10026f7f: mov      edx, dword ptr [ebp - 0x478]
10026f85: imul     edx, edx, 0x60
10026f88: mov      eax, dword ptr [ebp - 0x4f0]
10026f8e: mov      ecx, dword ptr [ebp - 0x58]
10026f91: cmp      ecx, dword ptr [eax + edx + 0x11c]
10026f98: je       0x10026fbf
10026f9a: mov      byte ptr [ebp - 0x365], 0
10026fa1: mov      ecx, 0x10097788
10026fa6: call     0x10003170
10026fab: push     eax
10026fac: mov      ecx, dword ptr [ebp - 0x4f0]
10026fb2: add      ecx, 4
10026fb5: call     0x100032a0
10026fba: jmp      0x10027ae6
10026fbf: jmp      0x1002730c
10026fc4: cmp      dword ptr [ebp + 0x10], 1
10026fc8: jne      0x1002730c
10026fce: mov      dword ptr [ebp - 0x4cc], 0
10026fd8: xor      edx, edx
10026fda: mov      dword ptr [ebp - 0x4c8], edx
10026fe0: mov      dword ptr [ebp - 0x4c4], edx
10026fe6: mov      dword ptr [ebp - 0x4c0], edx
10026fec: mov      dword ptr [ebp - 0x4bc], edx
10026ff2: mov      dword ptr [ebp - 0x4b8], edx
10026ff8: mov      dword ptr [ebp - 0x4b4], edx
10026ffe: mov      dword ptr [ebp - 0x4b0], edx
10027004: mov      dword ptr [ebp - 0x4c8], 1
1002700e: mov      eax, dword ptr [ebp - 0x478]
10027014: mov      dword ptr [ebp - 0x4cc], eax
1002701a: lea      ecx, [ebp - 0x2a4]
10027020: mov      dword ptr [ebp - 0x4b0], ecx
10027026: lea      edx, [ebp - 0x34]
10027029: mov      dword ptr [ebp - 0x4b4], edx
1002702f: lea      eax, [ebp - 0x350]
10027035: mov      dword ptr [ebp - 0x4c0], eax
1002703b: mov      ecx, dword ptr [ebp - 0x4f0]
10027041: add      ecx, 0x350
10027047: mov      dword ptr [ebp - 0x4b8], ecx
1002704d: mov      edx, dword ptr [ebp - 0x478]
10027053: imul     edx, edx, 0x60
10027056: mov      eax, dword ptr [ebp - 0x4f0]
1002705c: mov      cl, byte ptr [eax + edx + 0x140]
10027063: mov      byte ptr [ebp - 0x4c4], cl
10027069: mov      dword ptr [ebp - 0x4d0], 0
10027073: mov      dword ptr [ebp - 0x4d0], 0
1002707d: jmp      0x1002708e
1002707f: mov      edx, dword ptr [ebp - 0x4d0]
10027085: add      edx, 1
10027088: mov      dword ptr [ebp - 0x4d0], edx
1002708e: cmp      dword ptr [ebp - 0x4d0], 0x21
10027095: jge      0x100271e4
1002709b: cmp      dword ptr [ebp - 0x4d0], 0
100270a2: jle      0x10027151
100270a8: mov      eax, dword ptr [ebp - 0x4d0]
100270ae: imul     eax, eax, 0x30
100270b1: mov      ecx, dword ptr [ebp - 0x4f0]
100270b7: lea      edx, [ecx + eax + 0x1b53]
100270be: mov      dword ptr [ebp - 0x538], edx
100270c4: mov      dword ptr [ebp - 0x53c], 0x10077610
100270ce: mov      eax, dword ptr [ebp - 0x53c]
100270d4: mov      cl, byte ptr [eax]
100270d6: mov      byte ptr [ebp - 0x53d], cl
100270dc: mov      edx, dword ptr [ebp - 0x538]
100270e2: cmp      cl, byte ptr [edx]
100270e4: jne      0x1002712c
100270e6: cmp      byte ptr [ebp - 0x53d], 0
100270ed: je       0x10027120
100270ef: mov      eax, dword ptr [ebp - 0x53c]
100270f5: mov      cl, byte ptr [eax + 1]
100270f8: mov      byte ptr [ebp - 0x53e], cl
100270fe: mov      edx, dword ptr [ebp - 0x538]
10027104: cmp      cl, byte ptr [edx + 1]
10027107: jne      0x1002712c
10027109: add      dword ptr [ebp - 0x53c], 2
10027110: add      dword ptr [ebp - 0x538], 2
10027117: cmp      byte ptr [ebp - 0x53e], 0
1002711e: jne      0x100270ce
10027120: mov      dword ptr [ebp - 0x544], 0
1002712a: jmp      0x10027137
1002712c: sbb      eax, eax
1002712e: sbb      eax, -1
10027131: mov      dword ptr [ebp - 0x544], eax
10027137: mov      ecx, dword ptr [ebp - 0x544]
1002713d: mov      dword ptr [ebp - 0x548], ecx
10027143: cmp      dword ptr [ebp - 0x548], 0
1002714a: jne      0x10027151
1002714c: jmp      0x1002707f
10027151: mov      edx, dword ptr [ebp - 0x4d0]
10027157: imul     edx, edx, 0x30
1002715a: mov      eax, dword ptr [ebp - 0x4f0]
10027160: lea      ecx, [eax + edx + 0x1b53]
10027167: mov      dword ptr [ebp - 0x4bc], ecx
1002716d: sub      esp, 0x20
10027170: mov      ecx, 8
10027175: lea      esi, [ebp - 0x4cc]
1002717b: mov      edi, esp
1002717d: rep movsd dword ptr es:[edi], dword ptr [esi]
1002717f: mov      ecx, dword ptr [ebp - 0x4f0]
10027185: call     0x1002bec0
1002718a: call     0x1003a990
1002718f: mov      dword ptr [ebp - 0x38], 8
10027196: mov      edx, dword ptr [ebp - 0x4f0]
1002719c: cmp      dword ptr [edx], 0x206
100271a2: jne      0x100271ab
100271a4: mov      dword ptr [ebp - 0x38], 0x10
100271ab: mov      eax, dword ptr [ebp - 0x38]
100271ae: push     eax
100271af: lea      ecx, [ebp - 0x34]
100271b2: push     ecx
100271b3: push     0
100271b5: call     0x1003aa10
100271ba: add      esp, 0xc
100271bd: mov      dword ptr [ebp - 0x58], eax
100271c0: mov      edx, dword ptr [ebp - 0x478]
100271c6: imul     edx, edx, 0x60
100271c9: mov      eax, dword ptr [ebp - 0x4f0]
100271cf: mov      ecx, dword ptr [ebp - 0x58]
100271d2: cmp      ecx, dword ptr [eax + edx + 0x11c]
100271d9: je       0x100271dd
100271db: jmp      0x100271df
100271dd: jmp      0x100271e4
100271df: jmp      0x1002707f
100271e4: cmp      dword ptr [ebp - 0x4d0], 0x21
100271eb: jne      0x1002730c
100271f1: mov      edx, dword ptr [ebp - 0x4f0]
100271f7: add      edx, 0x1b53
100271fd: mov      dword ptr [ebp - 0x54c], edx
10027203: mov      eax, dword ptr [ebp - 0x54c]
10027209: add      eax, 1
1002720c: mov      dword ptr [ebp - 0x550], eax
10027212: mov      ecx, dword ptr [ebp - 0x54c]
10027218: mov      dl, byte ptr [ecx]
1002721a: mov      byte ptr [ebp - 0x551], dl
10027220: add      dword ptr [ebp - 0x54c], 1
10027227: cmp      byte ptr [ebp - 0x551], 0
1002722e: jne      0x10027212
10027230: mov      eax, dword ptr [ebp - 0x54c]
10027236: sub      eax, dword ptr [ebp - 0x550]
1002723c: mov      dword ptr [ebp - 0x558], eax
10027242: je       0x100272e7
10027248: mov      dword ptr [ebp - 0x4bc], 0x1006d99b
10027252: sub      esp, 0x20
10027255: mov      ecx, 8
1002725a: lea      esi, [ebp - 0x4cc]
10027260: mov      edi, esp
10027262: rep movsd dword ptr es:[edi], dword ptr [esi]
10027264: mov      ecx, dword ptr [ebp - 0x4f0]
1002726a: call     0x1002bec0
1002726f: call     0x1003a990
10027274: mov      dword ptr [ebp - 0x38], 8
1002727b: mov      ecx, dword ptr [ebp - 0x4f0]
10027281: cmp      dword ptr [ecx], 0x206
10027287: jne      0x10027290
10027289: mov      dword ptr [ebp - 0x38], 0x10
10027290: mov      edx, dword ptr [ebp - 0x38]
10027293: push     edx
10027294: lea      eax, [ebp - 0x34]
10027297: push     eax
10027298: push     0
1002729a: call     0x1003aa10
1002729f: add      esp, 0xc
100272a2: mov      dword ptr [ebp - 0x58], eax
100272a5: mov      ecx, dword ptr [ebp - 0x478]
100272ab: imul     ecx, ecx, 0x60
100272ae: mov      edx, dword ptr [ebp - 0x4f0]
100272b4: mov      eax, dword ptr [ebp - 0x58]
100272b7: cmp      eax, dword ptr [edx + ecx + 0x11c]
100272be: je       0x100272e5
100272c0: mov      byte ptr [ebp - 0x365], 0
100272c7: mov      ecx, 0x10097788
100272cc: call     0x10003170
100272d1: push     eax
100272d2: mov      ecx, dword ptr [ebp - 0x4f0]
100272d8: add      ecx, 4
100272db: call     0x100032a0
100272e0: jmp      0x10027ae6
100272e5: jmp      0x1002730c
100272e7: mov      byte ptr [ebp - 0x365], 0
100272ee: mov      ecx, 0x10097788
100272f3: call     0x10003170
100272f8: push     eax
100272f9: mov      ecx, dword ptr [ebp - 0x4f0]
100272ff: add      ecx, 4
10027302: call     0x100032a0
10027307: jmp      0x10027ae6
1002730c: mov      byte ptr [ebp - 0x2b1], 0
10027313: mov      ecx, dword ptr [ebp - 0x4f0]
10027319: mov      edx, dword ptr [ecx]
1002731b: mov      dword ptr [ebp - 0x284], edx
10027321: mov      dword ptr [ebp - 0x280], 0
1002732b: mov      eax, dword ptr [ebp - 0x478]
10027331: imul     eax, eax, 0x60
10027334: mov      ecx, dword ptr [ebp - 0x4f0]
1002733a: mov      edx, dword ptr [ecx + eax + 0x110]
10027341: mov      dword ptr [ebp - 0x274], edx
10027347: mov      eax, dword ptr [ecx + eax + 0x114]
1002734e: mov      dword ptr [ebp - 0x270], eax
10027354: mov      ecx, dword ptr [ebp - 0x478]
1002735a: imul     ecx, ecx, 0x60
1002735d: mov      edx, dword ptr [ebp - 0x4f0]
10027363: mov      eax, dword ptr [edx + ecx + 0x108]
1002736a: mov      dword ptr [ebp - 0x264], eax
10027370: mov      ecx, dword ptr [ebp - 0x478]
10027376: imul     ecx, ecx, 0x60
10027379: mov      edx, dword ptr [ebp - 0x4f0]
1002737f: mov      eax, dword ptr [edx + ecx + 0x100]
10027386: mov      dword ptr [ebp - 0x26c], eax
1002738c: mov      ecx, dword ptr [edx + ecx + 0x104]
10027393: mov      dword ptr [ebp - 0x268], ecx
10027399: mov      edx, dword ptr [ebp - 0x478]
1002739f: imul     edx, edx, 0x60
100273a2: mov      eax, dword ptr [ebp - 0x4f0]
100273a8: xor      ecx, ecx
100273aa: cmp      dword ptr [eax + edx + 0xfc], 1
100273b2: sete     cl
100273b5: mov      byte ptr [ebp - 0x278], cl
100273bb: mov      byte ptr [ebp - 0x120], 0
100273c2: mov      edx, dword ptr [ebp - 0x478]
100273c8: imul     edx, edx, 0x60
100273cb: mov      eax, dword ptr [ebp - 0x4f0]
100273d1: mov      cl, byte ptr [eax + edx + 0x140]
100273d8: mov      byte ptr [ebp - 0x240], cl
100273de: mov      edx, dword ptr [ebp - 0x478]
100273e4: imul     edx, edx, 0x60
100273e7: mov      eax, dword ptr [ebp - 0x4f0]
100273ed: mov      ecx, dword ptr [eax + edx + 0x11c]
100273f4: mov      dword ptr [ebp - 0x23c], ecx
100273fa: push     0
100273fc: push     0x10
100273fe: lea      edx, [ebp - 0x34]
10027401: push     edx
10027402: lea      eax, [ebp - 0x260]
10027408: push     eax
10027409: call     0x1001f130
1002740e: add      esp, 0x10
10027411: lea      ecx, [ebp - 0x260]
10027417: push     ecx
10027418: mov      edx, dword ptr [ebp - 0x268]
1002741e: push     edx
1002741f: mov      eax, dword ptr [ebp - 0x26c]
10027425: push     eax
10027426: mov      ecx, dword ptr [ebp - 0x270]
1002742c: push     ecx
1002742d: mov      edx, dword ptr [ebp - 0x274]
10027433: push     edx
10027434: push     0x10077618
10027439: lea      eax, [ebp - 0x338]
1002743f: push     eax
10027440: call     0x10004350
10027445: add      esp, 0x1c
10027448: lea      ecx, [ebp - 0x338]
1002744e: call     0x10003180
10027453: push     eax
10027454: push     0
10027456: push     0x431
1002745b: push     0x10077688
10027460: push     0x100776b4
10027465: call     0x10024100
1002746a: add      esp, 0x14
1002746d: mov      dword ptr [ebp - 0x11c], 0
10027477: xor      ecx, ecx
10027479: mov      dword ptr [ebp - 0x118], ecx
1002747f: mov      dword ptr [ebp - 0x114], ecx
10027485: mov      dword ptr [ebp - 0x110], ecx
1002748b: mov      dword ptr [ebp - 0x10c], ecx
10027491: mov      dword ptr [ebp - 0x108], ecx
10027497: mov      dword ptr [ebp - 0x104], ecx
1002749d: mov      dword ptr [ebp - 0x100], ecx
100274a3: mov      dword ptr [ebp - 0xfc], ecx
100274a9: push     0x80
100274ae: push     0
100274b0: lea      edx, [ebp - 0xf8]
100274b6: push     edx
100274b7: call     0x1004f490
100274bc: add      esp, 0xc
100274bf: mov      eax, dword ptr [ebp - 0x4f0]
100274c5: mov      ecx, dword ptr [eax + 0x118c]
100274cb: push     ecx
100274cc: push     0x100776d0
100274d1: push     0x104
100274d6: lea      edx, [ebp - 0x228]
100274dc: push     edx
100274dd: call     0x10048e63
100274e2: add      esp, 0x10
100274e5: xor      eax, eax
100274e7: mov      dword ptr [ebp - 0x34], eax
100274ea: mov      dword ptr [ebp - 0x30], eax
100274ed: mov      dword ptr [ebp - 0x2c], eax
100274f0: mov      dword ptr [ebp - 0x28], eax
100274f3: mov      dword ptr [ebp - 0x24], eax
100274f6: mov      dword ptr [ebp - 0x20], eax
100274f9: mov      dword ptr [ebp - 0x1c], eax
100274fc: mov      dword ptr [ebp - 0x18], eax
100274ff: mov      byte ptr [ebp - 0x339], 0
10027506: mov      ecx, dword ptr [ebp - 0x4f0]
1002750c: movzx    edx, byte ptr [ecx + 0x1b50]
10027513: test     edx, edx
10027515: je       0x10027582
10027517: cmp      dword ptr [ebp - 0x27c], 0
1002751e: jne      0x10027582
10027520: movzx    eax, byte ptr [0x10093d80]
10027527: test     eax, eax
10027529: je       0x10027571
1002752b: lea      ecx, [ebp - 0x4d4]
10027531: call     0x10003030
10027536: mov      byte ptr [ebp - 4], 6
1002753a: mov      ecx, dword ptr [0x100976d8]
10027540: push     ecx
10027541: mov      edx, dword ptr [0x100976f0]
10027547: push     edx
10027548: mov      ecx, 0x10097748
1002754d: call     0x10003170
10027552: push     eax
10027553: lea      eax, [ebp - 0x4d4]
10027559: push     eax
1002755a: call     0x10004350
1002755f: add      esp, 0x10
10027562: mov      byte ptr [ebp - 4], 2
10027566: lea      ecx, [ebp - 0x4d4]
1002756c: call     0x100030d0
10027571: mov      dword ptr [ebp - 0x27c], 1
1002757b: mov      byte ptr [ebp - 0x339], 1
10027582: mov      ecx, dword ptr [ebp + 0xc]
10027585: mov      dword ptr [ebp - 0x124], ecx
1002758b: lea      edx, [ebp - 0x350]
10027591: push     edx
10027592: lea      eax, [ebp - 0x284]
10027598: push     eax
10027599: call     0x1002cc70
1002759e: add      esp, 8
100275a1: test     eax, eax
100275a3: jne      0x100275ca
100275a5: mov      byte ptr [ebp - 0x365], 0
100275ac: mov      ecx, 0x1009773c
100275b1: call     0x10003170
100275b6: push     eax
100275b7: mov      ecx, dword ptr [ebp - 0x4f0]
100275bd: add      ecx, 4
100275c0: call     0x100032a0
100275c5: jmp      0x10027ae6
100275ca: lea      ecx, [ebp - 0x284]
100275d0: push     ecx
100275d1: call     dword ptr [0x10095120]
100275d7: mov      byte ptr [ebp - 0x2b1], al
100275dd: movsx    edx, byte ptr [ebp - 0x2b1]
100275e4: test     edx, edx
100275e6: jne      0x1002764b
100275e8: call     dword ptr [0x10095134]
100275ee: push     eax
100275ef: mov      ecx, dword ptr [ebp - 0x4f0]
100275f5: add      ecx, 4
100275f8: call     0x100032a0
100275fd: push     0
100275ff: push     0x20
10027601: push     0
10027603: lea      eax, [ebp - 0x34]
10027606: push     eax
10027607: call     0x1001f170
1002760c: add      esp, 0x10
1002760f: mov      byte ptr [ebp - 0x4e9], 0
10027616: mov      byte ptr [ebp - 4], 1
1002761a: lea      ecx, [ebp - 0x54]
1002761d: call     0x10003280
10027622: mov      byte ptr [ebp - 4], 0
10027626: lea      ecx, [ebp - 0x74]
10027629: call     0x10003280
1002762e: mov      dword ptr [ebp - 4], 0xffffffff
10027635: lea      ecx, [ebp - 0x338]
1002763b: call     0x100030d0
10027640: mov      al, byte ptr [ebp - 0x4e9]
10027646: jmp      0x10027b59
1002764b: movzx    ecx, byte ptr [ebp - 0x339]
10027652: test     ecx, ecx
10027654: je       0x10027669
10027656: movzx    edx, byte ptr [ebp - 0x2b1]
1002765d: push     edx
1002765e: mov      ecx, dword ptr [ebp - 0x4f0]
10027664: call     0x1002a3e0
10027669: movzx    eax, byte ptr [ebp - 0x2b1]
10027670: push     eax
10027671: mov      ecx, dword ptr [ebp - 0x4f0]
10027677: call     0x1002a520
1002767c: movzx    ecx, byte ptr [ebp - 0x2b1]
10027683: push     ecx
10027684: mov      ecx, dword ptr [ebp - 0x4f0]
1002768a: call     0x1002aff0
1002768f: mov      edx, dword ptr [ebp - 0x4f0]
10027695: movzx    eax, byte ptr [edx + 0x1178]
1002769c: test     eax, eax
1002769e: jne      0x100277ac
100276a4: mov      ecx, dword ptr [ebp - 0x4f0]
100276aa: movzx    edx, byte ptr [ecx + 0x117c]
100276b1: test     edx, edx
100276b3: je       0x100277aa
100276b9: mov      eax, dword ptr [ebp - 0x4f0]
100276bf: mov      ecx, dword ptr [eax + 0x108a]
100276c5: sub      ecx, 1
100276c8: mov      edx, dword ptr [ebp - 0x4f0]
100276ce: mov      dword ptr [edx + 0x108a], ecx
100276d4: mov      dword ptr [ebp - 0x4d8], 0xffffffff
100276de: mov      eax, dword ptr [ebp - 0x4f0]
100276e4: mov      ecx, dword ptr [eax + 0x118c]
100276ea: mov      dword ptr [ebp - 0x4dc], ecx
100276f0: push     0
100276f2: mov      edx, dword ptr [ebp - 0x4dc]
100276f8: push     edx
100276f9: call     0x10012750
100276fe: add      esp, 8
10027701: mov      dword ptr [ebp - 0x4d8], eax
10027707: cmp      dword ptr [ebp - 0x4d8], -1
1002770e: je       0x10027773
10027710: push     0x100776f0
10027715: push     0
10027717: push     0x47e
1002771c: push     0x10077708
10027721: push     0x10077734
10027726: call     0x10024100
1002772b: add      esp, 0x14
1002772e: mov      eax, dword ptr [ebp - 0x4f0]
10027734: add      eax, 0x1076
10027739: push     eax
1002773a: mov      ecx, dword ptr [ebp - 0x4d8]
10027740: push     ecx
10027741: call     0x10013770
10027746: push     0x10077750
1002774b: push     0
1002774d: push     0x480
10027752: push     0x10077768
10027757: push     0x10077794
1002775c: call     0x10024100
10027761: add      esp, 0x14
10027764: mov      edx, dword ptr [ebp - 0x4d8]
1002776a: push     edx
1002776b: call     dword ptr [0x100682f0]
10027771: jmp      0x100277aa
10027773: push     0x100777b0
10027778: push     0
1002777a: push     0x485
1002777f: push     0x100777e4
10027784: push     0x10077810
10027789: call     0x10024100
1002778e: add      esp, 0x14
10027791: mov      ecx, 0x1009778c
10027796: call     0x10003170
1002779b: push     eax
1002779c: mov      ecx, dword ptr [ebp - 0x4f0]
100277a2: add      ecx, 4
100277a5: call     0x100032a0
100277aa: jmp      0x100277bf
100277ac: mov      eax, dword ptr [ebp + 0xc]
100277af: push     eax
100277b0: mov      ecx, dword ptr [ebp + 8]
100277b3: push     ecx
100277b4: mov      ecx, dword ptr [ebp - 0x4f0]
100277ba: call     0x10027b80
100277bf: mov      edx, dword ptr [ebp - 0x478]
100277c5: imul     edx, edx, 0x60
100277c8: mov      eax, dword ptr [ebp - 0x4f0]
100277ce: cmp      dword ptr [eax + edx + 0xf4], 4
100277d6: jne      0x1002785f
100277dc: mov      cl, byte ptr [ebp - 0x2b1]
100277e2: mov      byte ptr [0x1009764e], cl
100277e8: mov      edx, dword ptr [ebp - 0x4f0]
100277ee: movzx    eax, byte ptr [edx + 0x1177]
100277f5: test     eax, eax
100277f7: je       0x1002785d
100277f9: mov      ecx, dword ptr [0x10093986]
100277ff: add      ecx, 0x64
10027802: mov      dword ptr [0x10093986], ecx
10027808: mov      edx, dword ptr [ebp + 8]
1002780b: push     edx
1002780c: push     0x14
1002780e: push     0x10093bae
10027813: call     0x10048ea2
10027818: add      esp, 0xc
1002781b: mov      eax, dword ptr [ebp - 0x4f0]
10027821: movzx    ecx, byte ptr [eax + 0x1179]
10027828: test     ecx, ecx
1002782a: jne      0x1002783d
1002782c: mov      edx, dword ptr [0x10093986]
10027832: add      edx, 0x64
10027835: mov      dword ptr [0x10093986], edx
1002783b: jmp      0x1002785d
1002783d: mov      eax, dword ptr [ebp - 0x4f0]
10027843: movzx    ecx, byte ptr [eax + 0x117a]
1002784a: test     ecx, ecx
1002784c: jne      0x1002785d
1002784e: mov      edx, dword ptr [0x10093986]
10027854: add      edx, 0x64
10027857: mov      dword ptr [0x10093986], edx
1002785d: jmp      0x100278bb
1002785f: mov      al, byte ptr [ebp - 0x2b1]
10027865: mov      byte ptr [0x1009764d], al
1002786a: mov      ecx, dword ptr [ebp - 0x4f0]
10027870: movzx    edx, byte ptr [ecx + 0x1177]
10027877: test     edx, edx
10027879: je       0x100278bb
1002787b: mov      eax, dword ptr [0x10093986]
10027880: add      eax, 0x64
10027883: mov      dword ptr [0x10093986], eax
10027888: mov      ecx, dword ptr [ebp + 8]
1002788b: push     ecx
1002788c: push     0x14
1002788e: push     0x10093b9a
10027893: call     0x10048ea2
10027898: add      esp, 0xc
1002789b: mov      edx, dword ptr [ebp - 0x4f0]
100278a1: movzx    eax, byte ptr [edx + 0x117b]
100278a8: test     eax, eax
100278aa: jne      0x100278bb
100278ac: mov      ecx, dword ptr [0x10093986]
100278b2: add      ecx, 0x64
100278b5: mov      dword ptr [0x10093986], ecx
100278bb: mov      byte ptr [ebp - 0x474], 0
100278c2: push     0x103
100278c7: push     0
100278c9: lea      edx, [ebp - 0x473]
100278cf: push     edx
100278d0: call     0x1004f490
100278d5: add      esp, 0xc
100278d8: mov      eax, dword ptr [0x1007782c]
100278dd: mov      dword ptr [ebp - 0x2b0], eax
100278e3: xor      ecx, ecx
100278e5: mov      dword ptr [ebp - 0x2ac], ecx
100278eb: mov      word ptr [ebp - 0x2a8], cx
100278f2: mov      dl, byte ptr [ebp - 0x2b1]
100278f8: mov      byte ptr [ebp - 0x2b0], dl
100278fe: lea      eax, [ebp - 0x334]
10027904: push     eax
10027905: mov      ecx, dword ptr [ebp - 0x4f0]
1002790b: call     0x10025fb0
10027910: movzx    ecx, al
10027913: test     ecx, ecx
10027915: je       0x100279d3
1002791b: lea      edx, [ebp - 0x32c]
10027921: mov      dword ptr [ebp - 0x55c], edx
10027927: mov      eax, dword ptr [ebp - 0x55c]
1002792d: add      eax, 1
10027930: mov      dword ptr [ebp - 0x560], eax
10027936: mov      ecx, dword ptr [ebp - 0x55c]
1002793c: mov      dl, byte ptr [ecx]
1002793e: mov      byte ptr [ebp - 0x561], dl
10027944: add      dword ptr [ebp - 0x55c], 1
1002794b: cmp      byte ptr [ebp - 0x561], 0
10027952: jne      0x10027936
10027954: mov      eax, dword ptr [ebp - 0x55c]
1002795a: sub      eax, dword ptr [ebp - 0x560]
10027960: mov      dword ptr [ebp - 0x568], eax
10027966: je       0x10027977
10027968: lea      ecx, [ebp - 0x32c]
1002796e: push     ecx
1002796f: lea      ecx, [ebp - 0x74]
10027972: call     0x100032a0
10027977: lea      edx, [ebp - 0x31c]
1002797d: mov      dword ptr [ebp - 0x56c], edx
10027983: mov      eax, dword ptr [ebp - 0x56c]
10027989: add      eax, 1
1002798c: mov      dword ptr [ebp - 0x570], eax
10027992: mov      ecx, dword ptr [ebp - 0x56c]
10027998: mov      dl, byte ptr [ecx]
1002799a: mov      byte ptr [ebp - 0x571], dl
100279a0: add      dword ptr [ebp - 0x56c], 1
100279a7: cmp      byte ptr [ebp - 0x571], 0
100279ae: jne      0x10027992
100279b0: mov      eax, dword ptr [ebp - 0x56c]
100279b6: sub      eax, dword ptr [ebp - 0x570]
100279bc: mov      dword ptr [ebp - 0x578], eax
100279c2: je       0x100279d3
100279c4: lea      ecx, [ebp - 0x31c]
100279ca: push     ecx
100279cb: lea      ecx, [ebp - 0x54]
100279ce: call     0x100032a0
100279d3: push     0
100279d5: push     0
100279d7: push     0
100279d9: push     0
100279db: push     0
100279dd: push     0x104
100279e2: lea      edx, [ebp - 0x474]
100279e8: push     edx
100279e9: lea      eax, [ebp - 0x2b0]
100279ef: push     eax
100279f0: call     dword ptr [0x1006825c]
100279f6: test     eax, eax
100279f8: je       0x10027ae6
100279fe: mov      ecx, dword ptr [ebp - 0x478]
10027a04: imul     ecx, ecx, 0x60
10027a07: mov      edx, dword ptr [ebp - 0x4f0]
10027a0d: cmp      dword ptr [edx + ecx + 0xf4], 2
10027a15: jne      0x10027a73
10027a17: lea      ecx, [ebp - 0x74]
10027a1a: call     0x10011a20
10027a1f: test     eax, eax
10027a21: jbe      0x10027a3b
10027a23: lea      ecx, [ebp - 0x74]
10027a26: call     0x10003310
10027a2b: push     eax
10027a2c: lea      eax, [ebp - 0x2b0]
10027a32: push     eax
10027a33: call     dword ptr [0x10068264]
10027a39: jmp      0x10027a71
10027a3b: mov      ecx, 0x100976f0
10027a40: call     0x10003170
10027a45: push     eax
10027a46: lea      ecx, [ebp - 0x474]
10027a4c: push     ecx
10027a4d: call     0x1004c1e4
10027a52: add      esp, 8
10027a55: test     eax, eax
10027a57: je       0x10027a71
10027a59: mov      ecx, 0x100976f0
10027a5e: call     0x10003170
10027a63: push     eax
10027a64: lea      edx, [ebp - 0x2b0]
10027a6a: push     edx
10027a6b: call     dword ptr [0x10068264]
10027a71: jmp      0x10027ae6
10027a73: mov      eax, dword ptr [ebp - 0x478]
10027a79: imul     eax, eax, 0x60
10027a7c: mov      ecx, dword ptr [ebp - 0x4f0]
10027a82: cmp      dword ptr [ecx + eax + 0xf4], 4
10027a8a: jne      0x10027ae6
10027a8c: lea      ecx, [ebp - 0x54]
10027a8f: call     0x10011a20
10027a94: test     eax, eax
10027a96: jbe      0x10027ab0
10027a98: lea      ecx, [ebp - 0x54]
10027a9b: call     0x10003310
10027aa0: push     eax
10027aa1: lea      edx, [ebp - 0x2b0]
10027aa7: push     edx
10027aa8: call     dword ptr [0x10068264]
10027aae: jmp      0x10027ae6
10027ab0: mov      ecx, 0x100976d8
10027ab5: call     0x10003170
10027aba: push     eax
10027abb: lea      eax, [ebp - 0x474]
10027ac1: push     eax
10027ac2: call     0x1004c1e4
10027ac7: add      esp, 8
10027aca: test     eax, eax
10027acc: je       0x10027ae6
10027ace: mov      ecx, 0x100976d8
10027ad3: call     0x10003170
10027ad8: push     eax
10027ad9: lea      ecx, [ebp - 0x2b0]
10027adf: push     ecx
10027ae0: call     dword ptr [0x10068264]
10027ae6: push     0
10027ae8: push     0x20
10027aea: push     0
10027aec: lea      edx, [ebp - 0x34]
10027aef: push     edx
10027af0: call     0x1001f170
10027af5: add      esp, 0x10
10027af8: push     0
10027afa: push     0x14
10027afc: push     0
10027afe: lea      eax, [ebp - 0x350]
10027b04: push     eax
10027b05: call     0x1001f170
10027b0a: add      esp, 0x10
10027b0d: jmp      0x10027b1d
10027b1d: mov      cl, byte ptr [ebp - 0x365]
10027b23: mov      byte ptr [ebp - 0x4ea], cl
10027b29: mov      byte ptr [ebp - 4], 1
10027b2d: lea      ecx, [ebp - 0x54]
10027b30: call     0x10003280
10027b35: mov      byte ptr [ebp - 4], 0
10027b39: lea      ecx, [ebp - 0x74]
10027b3c: call     0x10003280
10027b41: mov      dword ptr [ebp - 4], 0xffffffff
10027b48: lea      ecx, [ebp - 0x338]
10027b4e: call     0x100030d0
10027b53: mov      al, byte ptr [ebp - 0x4ea]
10027b59: mov      ecx, dword ptr [ebp - 0xc]
10027b5c: mov      dword ptr fs:[0], ecx
10027b63: pop      ecx
10027b64: pop      edi
10027b65: pop      esi
10027b66: mov      ecx, dword ptr [ebp - 0x14]
10027b69: xor      ecx, ebp
10027b6b: call     0x10048939
10027b70: mov      esp, ebp
10027b72: pop      ebp
10027b73: ret      0xc