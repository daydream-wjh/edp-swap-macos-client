1002b870: push     ebp
1002b871: mov      ebp, esp
1002b873: sub      esp, 0x1c0
1002b879: mov      eax, dword ptr [0x1008d020]
1002b87e: xor      eax, ebp
1002b880: mov      dword ptr [ebp - 0x20], eax
1002b883: push     esi
1002b884: push     edi
1002b885: mov      dword ptr [ebp - 0x1bc], ecx
1002b88b: jmp      0x1002b89d
1002b88d: push     esi
1002b88e: dec      ebp
1002b88f: push     eax
1002b890: jb       0x1002b901
1002b892: je       0x1002b8f9
1002b894: arpl     word ptr [eax + 0x62], si
1002b898: imul     ebp, dword ptr gs:[bp], 0xe745c6
1002b8a1: mov      byte ptr [ebp - 0x60], 0
1002b8a5: xor      eax, eax
1002b8a7: mov      dword ptr [ebp - 0x5f], eax
1002b8aa: mov      dword ptr [ebp - 0x5b], eax
1002b8ad: mov      dword ptr [ebp - 0x57], eax
1002b8b0: mov      dword ptr [ebp - 0x53], eax
1002b8b3: mov      dword ptr [ebp - 0x4f], eax
1002b8b6: mov      dword ptr [ebp - 0x4b], eax
1002b8b9: mov      dword ptr [ebp - 0x47], eax
1002b8bc: mov      word ptr [ebp - 0x43], ax
1002b8c0: mov      byte ptr [ebp - 0x41], al
1002b8c3: mov      byte ptr [ebp - 0x40], 0
1002b8c7: xor      ecx, ecx
1002b8c9: mov      dword ptr [ebp - 0x3f], ecx
1002b8cc: mov      dword ptr [ebp - 0x3b], ecx
1002b8cf: mov      dword ptr [ebp - 0x37], ecx
1002b8d2: mov      dword ptr [ebp - 0x33], ecx
1002b8d5: mov      dword ptr [ebp - 0x2f], ecx
1002b8d8: mov      dword ptr [ebp - 0x2b], ecx
1002b8db: mov      dword ptr [ebp - 0x27], ecx
1002b8de: mov      word ptr [ebp - 0x23], cx
1002b8e2: mov      byte ptr [ebp - 0x21], cl
1002b8e5: mov      dword ptr [ebp - 8], 0
1002b8ec: mov      dword ptr [ebp - 4], 0
1002b8f3: mov      dword ptr [ebp - 0x10], 0
1002b8fa: mov      dword ptr [ebp - 0xc], 0
1002b901: mov      dword ptr [ebp - 0x18], 0
1002b908: mov      dword ptr [ebp - 0x14], 0
1002b90f: cmp      dword ptr [ebp + 8], 0
1002b913: je       0x1002b927
1002b915: cmp      dword ptr [ebp + 0x10], 3
1002b919: jg       0x1002b927
1002b91b: cmp      dword ptr [ebp + 0x18], 0
1002b91f: je       0x1002b927
1002b921: cmp      dword ptr [ebp + 0x1c], 0
1002b925: jne      0x1002b92f
1002b927: mov      al, byte ptr [ebp - 0x19]
1002b92a: jmp      0x1002bb3f
1002b92f: mov      esi, dword ptr [ebp + 0x1c]
1002b932: mov      ecx, 8
1002b937: mov      edi, dword ptr [ebp + 0x18]
1002b93a: rep movsd dword ptr es:[edi], dword ptr [esi]
1002b93c: movzx    edx, byte ptr [ebp + 0x14]
1002b940: mov      dword ptr [ebp - 0x1c0], edx
1002b946: cmp      dword ptr [ebp - 0x1c0], 3
1002b94d: ja       0x1002bb2c
1002b953: mov      eax, dword ptr [ebp - 0x1c0]
1002b959: jmp      dword ptr [eax*4 + 0x1002bb54]
1002b960: lea      ecx, [ebp - 0xd0]
1002b966: call     0x1002ff50
1002b96b: lea      ecx, [ebp - 0xd0]
1002b971: call     0x1002ffa0
1002b976: mov      ecx, dword ptr [ebp + 0xc]
1002b979: push     ecx
1002b97a: mov      edx, dword ptr [ebp + 8]
1002b97d: push     edx
1002b97e: lea      ecx, [ebp - 0xd0]
1002b984: call     0x1002fff0
1002b989: push     0
1002b98b: push     0x10
1002b98d: lea      ecx, [ebp - 0xd0]
1002b993: call     0x1002ff70
1002b998: push     eax
1002b999: lea      eax, [ebp - 0x60]
1002b99c: push     eax
1002b99d: call     0x1001f130
1002b9a2: add      esp, 0x10
1002b9a5: mov      dword ptr [ebp - 0xd8], 0x10
1002b9af: mov      ecx, dword ptr [ebp + 0x18]
1002b9b2: mov      dword ptr [ebp - 0xd4], ecx
1002b9b8: lea      edx, [ebp - 0x60]
1002b9bb: push     edx
1002b9bc: lea      eax, [ebp - 0xd8]
1002b9c2: push     eax
1002b9c3: mov      ecx, 0x10092768
1002b9c8: call     0x1002fe80
1002b9cd: push     0
1002b9cf: push     0x20
1002b9d1: push     0
1002b9d3: lea      ecx, [ebp - 0x60]
1002b9d6: push     ecx
1002b9d7: call     0x1001f170
1002b9dc: add      esp, 0x10
1002b9df: mov      byte ptr [ebp - 0x19], 1
1002b9e3: jmp      0x1002bb2c
1002b9e8: push     0
1002b9ea: push     8
1002b9ec: mov      edx, dword ptr [ebp + 0x1c]
1002b9ef: push     edx
1002b9f0: lea      eax, [ebp - 0x10]
1002b9f3: push     eax
1002b9f4: call     0x1001f130
1002b9f9: add      esp, 0x10
1002b9fc: mov      ecx, dword ptr [ebp + 8]
1002b9ff: push     ecx
1002ba00: call     0x100140b0
1002ba05: add      esp, 4
1002ba08: mov      dword ptr [ebp - 4], eax
1002ba0b: lea      edx, [ebp - 0x18]
1002ba0e: push     edx
1002ba0f: mov      eax, dword ptr [ebp - 0xc]
1002ba12: push     eax
1002ba13: mov      ecx, dword ptr [ebp - 0x10]
1002ba16: push     ecx
1002ba17: mov      edx, dword ptr [ebp - 4]
1002ba1a: push     edx
1002ba1b: push     0
1002ba1d: call     0x10014270
1002ba22: add      esp, 0x14
1002ba25: push     0
1002ba27: push     8
1002ba29: lea      eax, [ebp - 0x18]
1002ba2c: push     eax
1002ba2d: mov      ecx, dword ptr [ebp + 0x18]
1002ba30: push     ecx
1002ba31: call     0x1001f130
1002ba36: add      esp, 0x10
1002ba39: mov      byte ptr [ebp - 0x19], 1
1002ba3d: jmp      0x1002bb2c
1002ba42: lea      ecx, [ebp - 0x148]
1002ba48: call     0x1002ff50
1002ba4d: lea      ecx, [ebp - 0x148]
1002ba53: call     0x1002ffa0
1002ba58: mov      edx, dword ptr [ebp + 0xc]
1002ba5b: push     edx
1002ba5c: mov      eax, dword ptr [ebp + 8]
1002ba5f: push     eax
1002ba60: lea      ecx, [ebp - 0x148]
1002ba66: call     0x1002fff0
1002ba6b: push     0
1002ba6d: push     0x10
1002ba6f: lea      ecx, [ebp - 0x148]
1002ba75: call     0x1002ff70
1002ba7a: push     eax
1002ba7b: lea      ecx, [ebp - 0x60]
1002ba7e: push     ecx
1002ba7f: call     0x1001f130
1002ba84: add      esp, 0x10
1002ba87: mov      edx, dword ptr [ebp + 0x18]
1002ba8a: push     edx
1002ba8b: push     0x10
1002ba8d: lea      eax, [ebp - 0x60]
1002ba90: push     eax
1002ba91: push     0x10
1002ba93: mov      ecx, dword ptr [ebp + 0x18]
1002ba96: push     ecx
1002ba97: push     0
1002ba99: push     0
1002ba9b: call     0x1003a6b0
1002baa0: add      esp, 0x1c
1002baa3: push     0
1002baa5: push     0x20
1002baa7: push     0
1002baa9: lea      edx, [ebp - 0x60]
1002baac: push     edx
1002baad: call     0x1001f170
1002bab2: add      esp, 0x10
1002bab5: mov      byte ptr [ebp - 0x19], 1
1002bab9: jmp      0x1002bb2c
1002babb: lea      ecx, [ebp - 0x1b8]
1002bac1: call     0x1002ff50
1002bac6: lea      ecx, [ebp - 0x1b8]
1002bacc: call     0x1002ffa0
1002bad1: mov      eax, dword ptr [ebp + 0xc]
1002bad4: push     eax
1002bad5: mov      ecx, dword ptr [ebp + 8]
1002bad8: push     ecx
1002bad9: lea      ecx, [ebp - 0x1b8]
1002badf: call     0x1002fff0
1002bae4: push     0
1002bae6: push     0x10
1002bae8: lea      ecx, [ebp - 0x1b8]
1002baee: call     0x1002ff70
1002baf3: push     eax
1002baf4: lea      edx, [ebp - 0x60]
1002baf7: push     edx
1002baf8: call     0x1001f130
1002bafd: add      esp, 0x10
1002bb00: lea      eax, [ebp - 0x60]
1002bb03: push     eax
1002bb04: mov      ecx, dword ptr [ebp + 0x18]
1002bb07: push     ecx
1002bb08: push     0x10
1002bb0a: mov      edx, dword ptr [ebp + 0x18]
1002bb0d: push     edx
1002bb0e: call     0x100325c0
1002bb13: add      esp, 0x10
1002bb16: push     0
1002bb18: push     0x20
1002bb1a: push     0
1002bb1c: lea      eax, [ebp - 0x60]
1002bb1f: push     eax
1002bb20: call     0x1001f170
1002bb25: add      esp, 0x10
1002bb28: mov      byte ptr [ebp - 0x19], 1
1002bb2c: jmp      0x1002bb3c
1002bb2e: push     esi
1002bb2f: dec      ebp
1002bb30: push     eax
1002bb31: jb       0x1002bba2
1002bb33: je       0x1002bb9a
1002bb35: arpl     word ptr [eax + 0x65], si
1002bb39: outsb    dx, byte ptr [esi]
1002bb3a: add      byte ptr fs:[edx + 0x5e5fe745], cl
1002bb41: mov      ecx, dword ptr [ebp - 0x20]
1002bb44: xor      ecx, ebp
1002bb46: call     0x10048939
1002bb4b: mov      esp, ebp
1002bb4d: pop      ebp
1002bb4e: ret      0x18
1002bb51: lea      ecx, [ecx]
1002bb54: call     0x5212be12
1002bb59: mov      edx, 0xb9601002
1002bb5e: add      dl, byte ptr [eax]
1002bb60: mov      ebx, 0xcc1002ba
1002bb65: int3     
1002bb66: int3     
1002bb67: int3     
1002bb68: int3     
1002bb69: int3     
1002bb6a: int3     
1002bb6b: int3     
1002bb6c: int3     
1002bb6d: int3     
1002bb6e: int3     
1002bb6f: int3     
1002bb70: push     ebp
1002bb71: mov      ebp, esp
1002bb73: sub      esp, 0x214
1002bb79: mov      eax, dword ptr [0x1008d020]
1002bb7e: xor      eax, ebp
1002bb80: mov      dword ptr [ebp - 0x20], eax
1002bb83: push     esi
1002bb84: push     edi
1002bb85: mov      dword ptr [ebp - 0x210], ecx
1002bb8b: jmp      0x1002bb9d
1002bb8d: push     esi
1002bb8e: dec      ebp
1002bb8f: push     eax
1002bb90: jb       0x1002bc01
1002bb92: je       0x1002bbf9
1002bb94: arpl     word ptr [eax + 0x62], si
1002bb98: imul     ebp, dword ptr gs:[bp], 0xe745c6
1002bba1: mov      byte ptr [ebp - 0x60], 0
1002bba5: xor      eax, eax
1002bba7: mov      dword ptr [ebp - 0x5f], eax
1002bbaa: mov      dword ptr [ebp - 0x5b], eax
1002bbad: mov      dword ptr [ebp - 0x57], eax
1002bbb0: mov      dword ptr [ebp - 0x53], eax
1002bbb3: mov      dword ptr [ebp - 0x4f], eax
1002bbb6: mov      dword ptr [ebp - 0x4b], eax
1002bbb9: mov      dword ptr [ebp - 0x47], eax
1002bbbc: mov      word ptr [ebp - 0x43], ax
1002bbc0: mov      byte ptr [ebp - 0x41], al
1002bbc3: mov      byte ptr [ebp - 0x40], 0
1002bbc7: xor      ecx, ecx
1002bbc9: mov      dword ptr [ebp - 0x3f], ecx
1002bbcc: mov      dword ptr [ebp - 0x3b], ecx
1002bbcf: mov      dword ptr [ebp - 0x37], ecx
1002bbd2: mov      dword ptr [ebp - 0x33], ecx
1002bbd5: mov      dword ptr [ebp - 0x2f], ecx
1002bbd8: mov      dword ptr [ebp - 0x2b], ecx
1002bbdb: mov      dword ptr [ebp - 0x27], ecx
1002bbde: mov      word ptr [ebp - 0x23], cx
1002bbe2: mov      byte ptr [ebp - 0x21], cl
1002bbe5: mov      dword ptr [ebp - 8], 0
1002bbec: mov      dword ptr [ebp - 4], 0
1002bbf3: mov      dword ptr [ebp - 0x10], 0
1002bbfa: mov      dword ptr [ebp - 0xc], 0
1002bc01: mov      dword ptr [ebp - 0x18], 0
1002bc08: mov      dword ptr [ebp - 0x14], 0
1002bc0f: cmp      dword ptr [ebp + 8], 0
1002bc13: je       0x1002bc27
1002bc15: cmp      dword ptr [ebp + 0xc], 3
1002bc19: jg       0x1002bc27
1002bc1b: cmp      dword ptr [ebp + 0x14], 0
1002bc1f: je       0x1002bc27
1002bc21: cmp      dword ptr [ebp + 0x18], 0
1002bc25: jne      0x1002bc2f
1002bc27: mov      al, byte ptr [ebp - 0x19]
1002bc2a: jmp      0x1002be8d
1002bc2f: mov      esi, dword ptr [ebp + 0x14]
1002bc32: mov      ecx, 8
1002bc37: mov      edi, dword ptr [ebp + 0x18]
1002bc3a: rep movsd dword ptr es:[edi], dword ptr [esi]
1002bc3c: movzx    edx, byte ptr [ebp + 0x10]
1002bc40: mov      dword ptr [ebp - 0x214], edx
1002bc46: cmp      dword ptr [ebp - 0x214], 4
1002bc4d: ja       0x1002be7a
1002bc53: mov      eax, dword ptr [ebp - 0x214]
1002bc59: jmp      dword ptr [eax*4 + 0x1002bea0]
1002bc60: lea      ecx, [ebp - 0xd0]
1002bc66: call     0x1002ff50
1002bc6b: lea      ecx, [ebp - 0xd0]
1002bc71: call     0x1002ffa0
1002bc76: mov      ecx, dword ptr [ebp + 8]
1002bc79: push     ecx
1002bc7a: lea      ecx, [ebp - 0x1d4]
1002bc80: call     0x10003200
1002bc85: lea      edx, [ebp - 0x1d4]
1002bc8b: push     edx
1002bc8c: lea      ecx, [ebp - 0xd0]
1002bc92: call     0x10030010
1002bc97: lea      ecx, [ebp - 0x1d4]
1002bc9d: call     0x10003280
1002bca2: push     0
1002bca4: push     0x10
1002bca6: lea      ecx, [ebp - 0xd0]
1002bcac: call     0x1002ff70
1002bcb1: push     eax
1002bcb2: lea      eax, [ebp - 0x60]
1002bcb5: push     eax
1002bcb6: call     0x1001f130
1002bcbb: add      esp, 0x10
1002bcbe: mov      dword ptr [ebp - 0xd8], 0x10
1002bcc8: mov      ecx, dword ptr [ebp + 0x18]
1002bccb: mov      dword ptr [ebp - 0xd4], ecx
1002bcd1: lea      edx, [ebp - 0x60]
1002bcd4: push     edx
1002bcd5: lea      eax, [ebp - 0xd8]
1002bcdb: push     eax
1002bcdc: mov      ecx, 0x10092768
1002bce1: call     0x1002fdb0
1002bce6: push     0
1002bce8: push     0x20
1002bcea: push     0
1002bcec: lea      ecx, [ebp - 0x60]
1002bcef: push     ecx
1002bcf0: call     0x1001f170
1002bcf5: add      esp, 0x10
1002bcf8: mov      byte ptr [ebp - 0x19], 1
1002bcfc: jmp      0x1002be7a
1002bd01: mov      edx, dword ptr [ebp + 8]
1002bd04: push     edx
1002bd05: call     0x100140b0
1002bd0a: add      esp, 4
1002bd0d: mov      dword ptr [ebp - 4], eax
1002bd10: push     0
1002bd12: push     8
1002bd14: mov      eax, dword ptr [ebp + 0x14]
1002bd17: push     eax
1002bd18: lea      ecx, [ebp - 0x18]
1002bd1b: push     ecx
1002bd1c: call     0x1001f130
1002bd21: add      esp, 0x10
1002bd24: lea      edx, [ebp - 0x10]
1002bd27: push     edx
1002bd28: mov      eax, dword ptr [ebp - 0x14]
1002bd2b: push     eax
1002bd2c: mov      ecx, dword ptr [ebp - 0x18]
1002bd2f: push     ecx
1002bd30: mov      edx, dword ptr [ebp - 4]
1002bd33: push     edx
1002bd34: push     1
1002bd36: call     0x10014270
1002bd3b: add      esp, 0x14
1002bd3e: push     0
1002bd40: push     8
1002bd42: lea      eax, [ebp - 0x10]
1002bd45: push     eax
1002bd46: mov      ecx, dword ptr [ebp + 0x18]
1002bd49: push     ecx
1002bd4a: call     0x1001f130
1002bd4f: add      esp, 0x10
1002bd52: mov      byte ptr [ebp - 0x19], 1
1002bd56: jmp      0x1002be7a
1002bd5b: lea      ecx, [ebp - 0x148]
1002bd61: call     0x1002ff50
1002bd66: lea      ecx, [ebp - 0x148]
1002bd6c: call     0x1002ffa0
1002bd71: mov      edx, dword ptr [ebp + 8]
1002bd74: push     edx
1002bd75: lea      ecx, [ebp - 0x1f0]
1002bd7b: call     0x10003200
1002bd80: lea      eax, [ebp - 0x1f0]
1002bd86: push     eax
1002bd87: lea      ecx, [ebp - 0x148]
1002bd8d: call     0x10030010
1002bd92: lea      ecx, [ebp - 0x1f0]
1002bd98: call     0x10003280
1002bd9d: push     0
1002bd9f: push     0x10
1002bda1: lea      ecx, [ebp - 0x148]
1002bda7: call     0x1002ff70
1002bdac: push     eax
1002bdad: lea      ecx, [ebp - 0x60]
1002bdb0: push     ecx
1002bdb1: call     0x1001f130
1002bdb6: add      esp, 0x10
1002bdb9: mov      edx, dword ptr [ebp + 0x18]
1002bdbc: push     edx
1002bdbd: push     0x10
1002bdbf: lea      eax, [ebp - 0x60]
1002bdc2: push     eax
1002bdc3: push     0x10
1002bdc5: mov      ecx, dword ptr [ebp + 0x18]
1002bdc8: push     ecx
1002bdc9: push     0
1002bdcb: push     0
1002bdcd: call     0x1003a7f0
1002bdd2: add      esp, 0x1c
1002bdd5: push     0
1002bdd7: push     0x20
1002bdd9: push     0
1002bddb: lea      edx, [ebp - 0x60]
1002bdde: push     edx
1002bddf: call     0x1001f170
1002bde4: add      esp, 0x10
1002bde7: mov      byte ptr [ebp - 0x19], 1
1002bdeb: jmp      0x1002be7a
1002bdf0: lea      ecx, [ebp - 0x1b8]
1002bdf6: call     0x1002ff50
1002bdfb: lea      ecx, [ebp - 0x1b8]
1002be01: call     0x1002ffa0
1002be06: mov      eax, dword ptr [ebp + 8]
1002be09: push     eax
1002be0a: lea      ecx, [ebp - 0x20c]
1002be10: call     0x10003200
1002be15: lea      ecx, [ebp - 0x20c]
1002be1b: push     ecx
1002be1c: lea      ecx, [ebp - 0x1b8]
1002be22: call     0x10030010
1002be27: lea      ecx, [ebp - 0x20c]
1002be2d: call     0x10003280
1002be32: push     0
1002be34: push     0x10
1002be36: lea      ecx, [ebp - 0x1b8]
1002be3c: call     0x1002ff70
1002be41: push     eax
1002be42: lea      edx, [ebp - 0x60]
1002be45: push     edx
1002be46: call     0x1001f130
1002be4b: add      esp, 0x10
1002be4e: lea      eax, [ebp - 0x60]
1002be51: push     eax
1002be52: mov      ecx, dword ptr [ebp + 0x18]
1002be55: push     ecx
1002be56: push     0x10
1002be58: mov      edx, dword ptr [ebp + 0x18]
1002be5b: push     edx
1002be5c: call     0x10032530
1002be61: add      esp, 0x10
1002be64: push     0
1002be66: push     0x20
1002be68: push     0
1002be6a: lea      eax, [ebp - 0x60]
1002be6d: push     eax
1002be6e: call     0x1001f170
1002be73: add      esp, 0x10
1002be76: mov      byte ptr [ebp - 0x19], 1
1002be7a: jmp      0x1002be8a
1002be7c: push     esi
1002be7d: dec      ebp
1002be7e: push     eax
1002be7f: jb       0x1002bef0
1002be81: je       0x1002bee8
1002be83: arpl     word ptr [eax + 0x65], si
1002be87: outsb    dx, byte ptr [esi]
1002be88: add      byte ptr fs:[edx + 0x5e5fe745], cl
1002be8f: mov      ecx, dword ptr [ebp - 0x20]
1002be92: xor      ecx, ebp
1002be94: call     0x10048939
1002be99: mov      esp, ebp
1002be9b: pop      ebp
1002be9c: ret      0x14
1002be9f: nop      
1002bea0: add      dword ptr [ebp - 0x42a4effe], edi
1002bea6: add      dl, byte ptr [eax]
1002bea8: pushal   
1002bea9: mov      esp, 0xbdf01002
1002beae: add      dl, byte ptr [eax]
1002beb0: pushal   
1002beb1: mov      esp, 0xcccc1002
1002beb6: int3     
1002beb7: int3     
1002beb8: int3     
1002beb9: int3     
1002beba: int3     
1002bebb: int3     
1002bebc: int3     
1002bebd: int3     
1002bebe: int3     
1002bebf: int3     