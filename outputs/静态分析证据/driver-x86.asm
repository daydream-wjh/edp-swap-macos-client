00011000: pop      esp
00011001: add      byte ptr [eax + eax + 0x65], al
00011005: add      byte ptr [esi], dh
00011008: imul     eax, dword ptr [eax], 0x650063
0001100e: pop      esp
0001100f: add      byte ptr [edi], dl
00011012: jae      0x11014
00011014: je       0x11016
00011016: push     ebx
00011017: add      byte ptr [eax], ch
0001101a: add      byte ptr gs:[eax + eax + 0x6c], ch
0001101f: add      byte ptr [eax + eax], dh
00011022: xor      al, byte ptr [eax]
00011024: xor      dword ptr [eax], eax
00011026: add      byte ptr [eax], al
00011028: int3     
00011029: int3     
0001102a: int3     
0001102b: int3     
0001102c: int3     
0001102d: int3     
0001102e: mov      edi, edi
00011030: push     ebp
00011031: mov      ebp, esp
00011033: sub      esp, 0x54
00011036: mov      eax, dword ptr [0x1a0e4]
0001103b: push     ebx
0001103c: push     esi
0001103d: push     edi
0001103e: push     0xa
00011040: mov      dword ptr [ebp - 4], eax
00011043: pop      ecx
00011044: lea      eax, [ebp - 0x2c]
00011047: push     eax
00011048: lea      eax, [ebp - 0x44]
0001104b: xor      ebx, ebx
0001104d: mov      esi, 0x11000
00011052: lea      edi, [ebp - 0x2c]
00011055: push     eax
00011056: mov      dword ptr [ebp - 0x34], ebx
00011059: mov      dword ptr [ebp - 0x30], ebx
0001105c: rep movsd dword ptr es:[edi], dword ptr [esi]
0001105e: call     dword ptr [0x16014]
00011064: lea      eax, [ebp - 0x30]
00011067: push     eax
00011068: lea      eax, [ebp - 0x34]
0001106b: push     eax
0001106c: mov      esi, 0x1f01ff
00011071: push     esi
00011072: lea      eax, [ebp - 0x44]
00011075: push     eax
00011076: call     dword ptr [0x1602c]
0001107c: test     eax, eax
0001107e: jl       0x1110e
00011084: push     ebx
00011085: push     ebx
00011086: push     esi
00011087: push     dword ptr [ebp - 0x30]
0001108a: call     dword ptr [0x16028]
00011090: test     eax, eax
00011092: jl       0x1110e
00011094: push     ebx
00011095: push     ebx
00011096: lea      eax, [ebp - 0x54]
00011099: push     eax
0001109a: call     dword ptr [0x16024]
000110a0: push     0x206b6444
000110a5: push     0xa4
000110aa: push     ebx
000110ab: mov      dword ptr [ebp - 0x3c], ebx
000110ae: call     dword ptr [0x16008]
000110b4: push     0x29
000110b6: pop      ecx
000110b7: mov      esi, eax
000110b9: xor      eax, eax
000110bb: mov      edi, esi
000110bd: rep stosd dword ptr es:[edi], eax
000110bf: lea      eax, [ebp - 0x3c]
000110c2: push     eax
000110c3: lea      eax, [ebp - 0x54]
000110c6: push     eax
000110c7: push     1
000110c9: push     ebx
000110ca: push     ebx
000110cb: push     ebx
000110cc: push     ebx
000110cd: push     dword ptr [ebp - 0x30]
000110d0: mov      dword ptr [ebp - 0x3c], ebx
000110d3: push     0x222220
000110d8: mov      dword ptr [ebp - 0x38], ebx
000110db: call     dword ptr [0x16020]
000110e1: mov      ecx, dword ptr [eax + 0x60]
000110e4: mov      dword ptr [ecx - 0x20], esi
000110e7: mov      ecx, dword ptr [ebp - 0x30]
000110ea: mov      edx, eax
000110ec: call     dword ptr [0x1601c]
000110f2: test     eax, eax
000110f4: jge      0x11115
000110f6: push     ebx
000110f7: push     esi
000110f8: call     dword ptr [0x16004]
000110fe: mov      ecx, dword ptr [ebp - 0x34]
00011101: mov      esi, dword ptr [0x16018]
00011107: call     esi
00011109: mov      ecx, dword ptr [ebp - 0x30]
0001110c: call     esi
0001110e: xor      al, al
00011110: jmp      0x11286
00011115: mov      ecx, dword ptr [ebp - 0x34]
00011118: mov      edi, dword ptr [0x16018]
0001111e: call     edi
00011120: mov      ecx, dword ptr [ebp - 0x30]
00011123: call     edi
00011125: mov      eax, dword ptr [esi + 0x10]
00011128: mov      dword ptr [0x1a190], eax
0001112d: mov      eax, dword ptr [esi + 0xc]
00011130: mov      dword ptr [0x1a18c], eax
00011135: mov      eax, dword ptr [esi + 0x64]
00011138: mov      dword ptr [0x1a1e0], eax
0001113d: mov      eax, dword ptr [esi + 0x54]
00011140: mov      dword ptr [0x1a1d0], eax
00011145: mov      eax, dword ptr [esi + 0x4c]
00011148: mov      dword ptr [0x1a1c8], eax
0001114d: mov      eax, dword ptr [esi + 0x50]
00011150: mov      dword ptr [0x1a1cc], eax
00011155: mov      eax, dword ptr [esi + 0x6c]
00011158: mov      dword ptr [0x1a1e8], eax
0001115d: mov      eax, dword ptr [esi + 0x18]
00011160: mov      dword ptr [0x1a198], eax
00011165: mov      eax, dword ptr [esi + 0x8c]
0001116b: mov      dword ptr [0x1a208], eax
00011170: mov      eax, dword ptr [esi + 0x88]
00011176: mov      dword ptr [0x1a204], eax
0001117b: mov      eax, dword ptr [esi + 0x48]
0001117e: mov      dword ptr [0x1a1c4], eax
00011183: mov      eax, dword ptr [esi + 0x40]
00011186: mov      dword ptr [0x1a1bc], eax
0001118b: mov      eax, dword ptr [esi + 0x44]
0001118e: mov      dword ptr [0x1a1c0], eax
00011193: mov      eax, dword ptr [esi + 0x1c]
00011196: mov      dword ptr [0x1a19c], eax
0001119b: mov      eax, dword ptr [esi + 0x84]
000111a1: mov      dword ptr [0x1a200], eax
000111a6: mov      eax, dword ptr [esi + 0x14]
000111a9: mov      dword ptr [0x1a194], eax
000111ae: mov      eax, dword ptr [esi + 0x3c]
000111b1: mov      dword ptr [0x1a1b8], eax
000111b6: mov      eax, dword ptr [esi + 0x70]
000111b9: mov      dword ptr [0x1a1ec], eax
000111be: mov      eax, dword ptr [esi + 0x28]
000111c1: mov      dword ptr [0x1a1a4], eax
000111c6: mov      eax, dword ptr [esi + 0x30]
000111c9: mov      dword ptr [0x1a1ac], eax
000111ce: mov      eax, dword ptr [esi + 0x2c]
000111d1: mov      dword ptr [0x1a1a8], eax
000111d6: mov      eax, dword ptr [esi + 0x40]
000111d9: mov      dword ptr [0x1a1bc], eax
000111de: mov      eax, dword ptr [esi + 0x20]
000111e1: mov      dword ptr [0x1a1a0], eax
000111e6: mov      eax, dword ptr [esi + 0x80]
000111ec: mov      dword ptr [0x1a1fc], eax
000111f1: mov      eax, dword ptr [esi + 0x7c]
000111f4: mov      dword ptr [0x1a1f8], eax
000111f9: mov      eax, dword ptr [esi + 0x68]
000111fc: mov      dword ptr [0x1a1e4], eax
00011201: mov      eax, dword ptr [esi]
00011203: mov      dword ptr [0x1a180], eax
00011208: mov      eax, dword ptr [esi + 4]
0001120b: mov      dword ptr [0x1a184], eax
00011210: mov      eax, dword ptr [esi + 0x60]
00011213: mov      dword ptr [0x1a1dc], eax
00011218: mov      eax, dword ptr [esi + 0x58]
0001121b: mov      dword ptr [0x1a1d4], eax
00011220: mov      eax, dword ptr [esi + 0x5c]
00011223: mov      dword ptr [0x1a1d8], eax
00011228: mov      eax, dword ptr [esi + 8]
0001122b: mov      dword ptr [0x1a188], eax
00011230: mov      eax, dword ptr [esi + 0x38]
00011233: mov      dword ptr [0x1a1b4], eax
00011238: mov      eax, dword ptr [esi + 0x74]
0001123b: mov      dword ptr [0x1a1f0], eax
00011240: mov      eax, dword ptr [esi + 0x78]
00011243: mov      dword ptr [0x1a1f4], eax
00011248: mov      eax, dword ptr [esi + 0x34]
0001124b: mov      dword ptr [0x1a1b0], eax
00011250: mov      eax, dword ptr [esi + 0x90]
00011256: mov      dword ptr [0x1a210], eax
0001125b: mov      eax, dword ptr [esi + 0x94]
00011261: mov      dword ptr [0x1a20c], eax
00011266: mov      eax, dword ptr [esi + 0x98]
0001126c: mov      dword ptr [0x1a214], eax
00011271: mov      eax, dword ptr [esi + 0x9c]
00011277: push     ebx
00011278: push     esi
00011279: mov      dword ptr [0x1a218], eax
0001127e: call     dword ptr [0x16004]
00011284: mov      al, 1
00011286: mov      ecx, dword ptr [ebp - 4]
00011289: pop      edi
0001128a: pop      esi
0001128b: pop      ebx
0001128c: call     0x153f7
00011291: leave    
00011292: ret      4
00011295: int3     
00011296: int3     
00011297: int3     
00011298: int3     
00011299: int3     
0001129a: mov      edi, edi
0001129c: push     ebp
0001129d: mov      ebp, esp
0001129f: cmp      word ptr [ebp + 8], 0x30
000112a4: jb       0x112b1
000112a6: cmp      word ptr [ebp + 8], 0x39
000112ab: ja       0x112b1
000112ad: mov      al, 1
000112af: jmp      0x112b3
000112b1: xor      al, al
000112b3: pop      ebp
000112b4: ret      4
000112b7: int3     
000112b8: int3     
000112b9: int3     
000112ba: int3     
000112bb: int3     
000112bc: mov      edi, edi
000112be: push     ebp
000112bf: mov      ebp, esp
000112c1: sub      esp, 0x240
000112c7: mov      eax, dword ptr [0x1a0e4]
000112cc: push     ebx
000112cd: mov      ebx, dword ptr [ebp + 0x10]
000112d0: mov      dword ptr [ebp - 4], eax
000112d3: mov      eax, dword ptr [ebp + 8]
000112d6: push     esi
000112d7: mov      esi, dword ptr [ebp + 0xc]
000112da: push     edi
000112db: mov      dword ptr [ebp - 0x22c], eax
000112e1: lea      eax, [ebp - 0x234]
000112e7: push     eax
000112e8: xor      edi, edi
000112ea: push     0x20019
000112ef: lea      eax, [ebp - 0x21c]
000112f5: push     eax
000112f6: mov      dword ptr [ebp - 0x234], 0x18
00011300: mov      dword ptr [ebp - 0x230], edi
00011306: mov      dword ptr [ebp - 0x228], 0x40
00011310: mov      dword ptr [ebp - 0x224], edi
00011316: mov      dword ptr [ebp - 0x220], edi
0001131c: call     dword ptr [0x16010]
00011322: cmp      eax, edi
00011324: jl       0x113ac
0001132a: push     esi
0001132b: lea      eax, [ebp - 0x240]
00011331: push     eax
00011332: call     dword ptr [0x16014]
00011338: lea      eax, [ebp - 0x238]
0001133e: push     eax
0001133f: push     0x210
00011344: lea      eax, [ebp - 0x214]
0001134a: push     eax
0001134b: push     2
0001134d: lea      eax, [ebp - 0x240]
00011353: push     eax
00011354: push     dword ptr [ebp - 0x21c]
0001135a: call     dword ptr [0x1600c]
00011360: cmp      eax, edi
00011362: mov      dword ptr [ebp - 0x218], eax
00011368: jl       0x1139a
0001136a: mov      ecx, dword ptr [ebp - 0x20c]
00011370: cmp      ecx, 0x200
00011376: jae      0x11390
00011378: mov      eax, ecx
0001137a: shr      ecx, 2
0001137d: lea      esi, [ebp - 0x208]
00011383: mov      edi, ebx
00011385: rep movsd dword ptr es:[edi], dword ptr [esi]
00011387: mov      ecx, eax
00011389: and      ecx, 3
0001138c: rep movsb byte ptr es:[edi], byte ptr [esi]
0001138e: jmp      0x1139a
00011390: mov      dword ptr [ebp - 0x218], 0xc0000001
0001139a: push     dword ptr [ebp - 0x21c]
000113a0: call     dword ptr [0x16000]
000113a6: mov      eax, dword ptr [ebp - 0x218]
000113ac: mov      ecx, dword ptr [ebp - 4]
000113af: pop      edi
000113b0: pop      esi
000113b1: pop      ebx
000113b2: call     0x153f7
000113b7: leave    
000113b8: ret      0xc
000113bb: int3     
000113bc: inc      esp
000113bd: add      byte ptr [ecx], ch
000113c0: jae      0x113c2
000113c2: jo       0x113c4
000113c4: insb     byte ptr es:[edi], dx
000113c5: add      byte ptr [ecx], ah
000113c8: jns      0x113ca
000113ca: dec      esi
000113cb: add      byte ptr [ecx], ah
000113ce: insd     dword ptr es:[edi], dx
000113cf: add      byte ptr [ebp], ah
000113d2: add      byte ptr [eax], al
000113d4: pop      edi
000113d5: add      byte ptr [edi], bl
000113d8: add      byte ptr [eax], al
000113da: int3     
000113db: int3     
000113dc: int3     
000113dd: int3     
000113de: int3     
000113df: int3     
000113e0: mov      edi, edi
000113e2: push     ebp
000113e3: mov      ebp, esp
000113e5: sub      esp, 0x404
000113eb: mov      eax, dword ptr [0x1a0e4]
000113f0: and      word ptr [ebp - 0x404], 0
000113f8: mov      edx, dword ptr [ebp + 0x10]
000113fb: push     ebx
000113fc: mov      ebx, dword ptr [ebp + 8]
000113ff: push     edi
00011400: mov      dword ptr [ebp - 4], eax
00011403: xor      eax, eax
00011405: mov      ecx, 0xff
0001140a: lea      edi, [ebp - 0x402]
00011410: rep stosd dword ptr es:[edi], eax
00011412: stosw    word ptr es:[edi], ax
00011414: lea      eax, [ebp - 0x404]
0001141a: push     eax
0001141b: push     0x113bc
00011420: push     edx
00011421: call     0x112bc
00011426: mov      edi, eax
00011428: test     edi, edi
0001142a: jl       0x11486
0001142c: push     esi
0001142d: lea      eax, [ebp - 0x404]
00011433: push     0x113d4
00011438: push     eax
00011439: call     dword ptr [0x16038]
0001143f: mov      esi, eax
00011441: test     esi, esi
00011443: pop      ecx
00011444: pop      ecx
00011445: je       0x11485
00011447: xor      eax, eax
00011449: mov      ax, word ptr [esi + 4]
0001144d: push     eax
0001144e: call     0x1129a
00011453: test     al, al
00011455: je       0x11485
00011457: xor      eax, eax
00011459: mov      ax, word ptr [esi + 6]
0001145d: push     eax
0001145e: call     0x1129a
00011463: test     al, al
00011465: je       0x11485
00011467: push     esi
00011468: call     dword ptr [0x16034]
0001146e: cmp      eax, dword ptr [ebp + 0xc]
00011471: pop      ecx
00011472: jge      0x11480
00011474: push     esi
00011475: push     ebx
00011476: call     dword ptr [0x16030]
0001147c: pop      ecx
0001147d: pop      ecx
0001147e: jmp      0x11485
00011480: mov      edi, 0xc0000001
00011485: pop      esi
00011486: mov      ecx, dword ptr [ebp - 4]
00011489: mov      eax, edi
0001148b: pop      edi
0001148c: pop      ebx
0001148d: call     0x153f7
00011492: leave    
00011493: ret      0xc
00011496: int3     
00011497: int3     
00011498: int3     
00011499: int3     
0001149a: int3     
0001149b: int3     
0001149c: mov      edi, edi
0001149e: push     ebp
0001149f: mov      ebp, esp
000114a1: mov      eax, dword ptr [ebp + 8]
000114a4: mov      ecx, dword ptr [ebp + 0xc]
000114a7: push     ebx
000114a8: push     esi
000114a9: mov      esi, dword ptr [eax + 0x28]
000114ac: xor      ebx, ebx
000114ae: cmp      byte ptr [esi + 1], bl
000114b1: jne      0x114bf
000114b3: mov      eax, 0xc0000013
000114b8: mov      dword ptr [ecx + 0x18], eax
000114bb: mov      esi, eax
000114bd: jmp      0x114cc
000114bf: mov      eax, dword ptr [ecx + 0x60]
000114c2: cmp      dword ptr [eax + 4], ebx
000114c5: jne      0x114db
000114c7: mov      dword ptr [ecx + 0x18], ebx
000114ca: xor      esi, esi
000114cc: xor      dl, dl
000114ce: mov      dword ptr [ecx + 0x1c], ebx
000114d1: call     dword ptr [0x1604c]
000114d7: mov      eax, esi
000114d9: jmp      0x11500
000114db: or       byte ptr [eax + 3], 1
000114df: lea      eax, [esi + 0x34]
000114e2: lea      edx, [ecx + 0x58]
000114e5: push     eax
000114e6: lea      ecx, [esi + 0x2c]
000114e9: call     dword ptr [0x16050]
000114ef: push     ebx
000114f0: push     ebx
000114f1: add      esi, 0x38
000114f4: push     esi
000114f5: call     dword ptr [0x16048]
000114fb: mov      eax, 0x103
00011500: pop      esi
00011501: pop      ebx
00011502: pop      ebp
00011503: ret      8
00011506: int3     
00011507: int3     
00011508: int3     
00011509: int3     
0001150a: int3     
0001150b: int3     
0001150c: mov      edi, edi
0001150e: push     ebp
0001150f: mov      ebp, esp
00011511: sub      esp, 0xc
00011514: mov      eax, dword ptr [ebp + 8]
00011517: push     ebx
00011518: mov      ebx, dword ptr [ebp + 0xc]
0001151b: push     esi
0001151c: mov      esi, dword ptr [eax + 0x28]
0001151f: mov      cl, byte ptr [esi + 1]
00011522: test     cl, cl
00011524: mov      eax, dword ptr [ebx + 0x60]
00011527: jne      0x1156f
00011529: mov      ecx, dword ptr [eax + 0xc]
0001152c: cmp      ecx, 0x8200e000
00011532: je       0x1156f
00011534: cmp      ecx, 0x8200e00c
0001153a: je       0x1156f
0001153c: cmp      ecx, 0x8200e014
00011542: je       0x1156f
00011544: cmp      ecx, 0x8200e018
0001154a: je       0x1156f
0001154c: cmp      ecx, 0x8200e01c
00011552: je       0x1156f
00011554: and      dword ptr [ebx + 0x1c], 0
00011558: mov      esi, 0xc0000013
0001155d: xor      dl, dl
0001155f: mov      ecx, ebx
00011561: mov      dword ptr [ebx + 0x18], esi
00011564: call     dword ptr [0x1604c]
0001156a: jmp      0x11b61
0001156f: mov      ecx, dword ptr [eax + 0xc]
00011572: push     edi
00011573: mov      edi, dword ptr [esi + 0x20]
00011576: mov      edx, 0x2d1080
0001157b: cmp      ecx, edx
0001157d: mov      dword ptr [ebp + 0xc], edi
00011580: ja       0x1183e
00011586: je       0x117f1
0001158c: mov      edx, 0x7400c
00011591: cmp      ecx, edx
00011593: ja       0x11760
00011599: je       0x11755
0001159f: mov      edx, 0x70014
000115a4: cmp      ecx, edx
000115a6: ja       0x1168e
000115ac: je       0x11677
000115b2: sub      ecx, 0x24000
000115b8: je       0x11643
000115be: sub      ecx, 0x4c
000115c1: je       0x115db
000115c3: sub      ecx, 0x7b4
000115c9: je       0x117aa
000115cf: sub      ecx, 0x4b800
000115d5: jne      0x119b7
000115db: cmp      dword ptr [eax + 4], 0x18
000115df: jae      0x115eb
000115e1: mov      esi, 0xc0000023
000115e6: jmp      0x11aaa
000115eb: mov      edx, dword ptr [esi + 0x10]
000115ee: mov      esi, dword ptr [esi + 0x14]
000115f1: mov      edi, dword ptr [ebx + 0xc]
000115f4: push     6
000115f6: pop      ecx
000115f7: xor      eax, eax
000115f9: push     eax
000115fa: push     dword ptr [ebp + 0xc]
000115fd: mov      dword ptr [ebp + 8], edi
00011600: push     esi
00011601: push     edx
00011602: rep stosd dword ptr es:[edi], eax
00011604: call     0x15436
00011609: mov      ecx, eax
0001160b: mov      eax, dword ptr [ebp + 8]
0001160e: shrd     ecx, edx, 6
00011612: mov      dword ptr [eax], ecx
00011614: mov      ecx, dword ptr [ebp + 0xc]
00011617: shr      edx, 6
0001161a: mov      dword ptr [eax + 4], edx
0001161d: mov      dword ptr [eax + 8], 0xc
00011624: mov      dword ptr [eax + 0xc], 2
0001162b: mov      dword ptr [eax + 0x10], 0x20
00011632: mov      dword ptr [eax + 0x14], ecx
00011635: xor      esi, esi
00011637: mov      dword ptr [ebx + 0x1c], 0x18
0001163e: jmp      0x11b53
00011643: mov      edx, 0x324
00011648: cmp      dword ptr [eax + 4], edx
0001164b: jb       0x115e1
0001164d: mov      esi, dword ptr [ebx + 0xc]
00011650: xor      eax, eax
00011652: mov      edi, esi
00011654: mov      ecx, 0xc9
00011659: rep stosd dword ptr es:[edi], eax
0001165b: mov      al, byte ptr [esi + 5]
0001165e: and      al, 0xf4
00011660: or       al, 4
00011662: mov      byte ptr [esi + 2], 1
00011666: mov      byte ptr [esi + 3], 1
0001166a: mov      byte ptr [esi + 5], al
0001166d: xor      esi, esi
0001166f: mov      dword ptr [ebx + 0x1c], edx
00011672: jmp      0x11b53
00011677: cmp      dword ptr [eax + 8], 0x10
0001167b: jb       0x11aa5
00011681: mov      eax, dword ptr [ebx + 0xc]
00011684: mov      eax, dword ptr [eax + 8]
00011687: xor      esi, esi
00011689: jmp      0x11967
0001168e: sub      ecx, 0x70024
00011694: je       0x11745
0001169a: sub      ecx, 0x24
0001169d: je       0x116fe
0001169f: sub      ecx, 0x3fbc
000116a5: jne      0x119b7
000116ab: cmp      dword ptr [eax + 4], 0x20
000116af: jb       0x115e1
000116b5: mov      eax, dword ptr [esi + 0x10]
000116b8: mov      edx, dword ptr [ebx + 0xc]
000116bb: mov      esi, dword ptr [esi + 0x14]
000116be: mov      dword ptr [ebp - 8], eax
000116c1: xor      eax, eax
000116c3: push     8
000116c5: pop      ecx
000116c6: mov      edi, edx
000116c8: rep stosd dword ptr es:[edi], eax
000116ca: mov      eax, dword ptr [ebp + 0xc]
000116cd: mov      ecx, dword ptr [ebp - 8]
000116d0: mov      dword ptr [edx], eax
000116d2: xor      eax, eax
000116d4: mov      dword ptr [edx + 0xc], esi
000116d7: mov      dword ptr [edx + 4], eax
000116da: mov      dword ptr [edx + 8], ecx
000116dd: mov      dword ptr [edx + 0x10], eax
000116e0: mov      dword ptr [edx + 0x14], eax
000116e3: mov      byte ptr [edx + 0x18], al
000116e6: mov      byte ptr [edx + 0x19], al
000116e9: mov      byte ptr [edx + 0x1a], 1
000116ed: mov      byte ptr [edx + 0x1b], al
000116f0: xor      esi, esi
000116f2: mov      dword ptr [ebx + 0x1c], 0x20
000116f9: jmp      0x11b53
000116fe: cmp      dword ptr [eax + 4], 0x90
00011705: jb       0x115e1
0001170b: mov      ecx, dword ptr [esi + 0x10]
0001170e: mov      esi, dword ptr [esi + 0x14]
00011711: mov      eax, dword ptr [ebx + 0xc]
00011714: xor      edx, edx
00011716: mov      dword ptr [eax + 0x14], esi
00011719: mov      dword ptr [eax], edx
0001171b: mov      dword ptr [eax + 8], edi
0001171e: mov      dword ptr [eax + 0xc], edx
00011721: mov      dword ptr [eax + 0x10], ecx
00011724: mov      dword ptr [eax + 0x18], edx
00011727: mov      byte ptr [eax + 0x1c], dl
0001172a: mov      byte ptr [eax + 0x20], dl
0001172d: mov      byte ptr [eax + 0x21], dl
00011730: mov      byte ptr [eax + 0x22], 1
00011734: mov      dword ptr [eax + 0x24], edx
00011737: xor      esi, esi
00011739: mov      dword ptr [ebx + 0x1c], 0x90
00011740: jmp      0x11b53
00011745: push     ebx
00011746: push     dword ptr [ebp + 8]
00011749: call     0x1b32e
0001174e: mov      esi, eax
00011750: jmp      0x11b4b
00011755: push     ebx
00011756: push     dword ptr [ebp + 8]
00011759: call     0x1b368
0001175e: jmp      0x1174e
00011760: mov      edx, 0x7c018
00011765: cmp      ecx, edx
00011767: ja       0x117d0
00011769: je       0x119da
0001176f: sub      ecx, 0x7405c
00011775: je       0x117b1
00011777: sub      ecx, 0x7a4
0001177d: je       0x117aa
0001177f: sub      ecx, 4
00011782: je       0x117aa
00011784: sub      ecx, 0x7804
0001178a: jne      0x119b7
00011790: cmp      byte ptr [esi + 0x24], 0
00011794: je       0x117a0
00011796: mov      esi, 0xc00000a2
0001179b: jmp      0x11aaa
000117a0: cmp      dword ptr [eax + 8], 1
000117a4: jb       0x11aa5
000117aa: xor      esi, esi
000117ac: jmp      0x11a49
000117b1: push     8
000117b3: pop      ecx
000117b4: cmp      dword ptr [eax + 4], ecx
000117b7: jb       0x115e1
000117bd: mov      edx, dword ptr [esi + 0x10]
000117c0: mov      eax, dword ptr [ebx + 0xc]
000117c3: mov      dword ptr [eax], edx
000117c5: mov      edx, dword ptr [esi + 0x14]
000117c8: mov      dword ptr [eax + 4], edx
000117cb: jmp      0x119f6
000117d0: cmp      ecx, 0x7c02c
000117d6: je       0x119da
000117dc: cmp      ecx, 0x2d0800
000117e2: je       0x117aa
000117e4: cmp      ecx, 0x2d0c14
000117ea: je       0x11818
000117ec: jmp      0x119b7
000117f1: push     0xc
000117f3: pop      edx
000117f4: cmp      dword ptr [eax + 4], edx
000117f7: jb       0x115e1
000117fd: mov      edi, dword ptr [esi + 0x108]
00011803: mov      ecx, dword ptr [ebx + 0xc]
00011806: mov      dword ptr [ecx], edi
00011808: mov      esi, dword ptr [esi + 0x104]
0001180e: or       dword ptr [ecx + 8], 0xffffffff
00011812: mov      dword ptr [ecx + 4], esi
00011815: mov      dword ptr [ebx + 0x1c], edx
00011818: push     8
0001181a: pop      ecx
0001181b: cmp      dword ptr [eax + 4], ecx
0001181e: jb       0x115e1
00011824: mov      eax, dword ptr [ebx + 0xc]
00011827: mov      dword ptr [eax], ecx
00011829: mov      byte ptr [eax + 4], 0
0001182d: mov      byte ptr [eax + 5], 0
00011831: mov      byte ptr [eax + 6], 0
00011835: mov      byte ptr [eax + 7], 0
00011839: jmp      0x119f6
0001183e: mov      edx, 0x82006008
00011843: cmp      ecx, edx
00011845: ja       0x1196f
0001184b: je       0x1190b
00011851: mov      edx, 0x4dc014
00011856: cmp      ecx, edx
00011858: ja       0x118e8
0001185e: je       0x119da
00011864: sub      ecx, 0x2d4800
0001186a: je       0x117aa
00011870: sub      ecx, 4
00011873: je       0x117aa
00011879: sub      ecx, 0x1fb804
0001187f: je       0x11892
00011881: sub      ecx, 0xbffc
00011887: jne      0x119b7
0001188d: jmp      0x119da
00011892: cmp      dword ptr [eax + 4], 4
00011896: jb       0x11aa5
0001189c: mov      cx, word ptr [esi + 0x10c]
000118a3: mov      edx, dword ptr [ebx + 0xc]
000118a6: shl      cx, 1
000118a9: mov      word ptr [edx], cx
000118ac: movzx    ecx, cx
000118af: lea      edi, [ecx + 2]
000118b2: cmp      dword ptr [eax + 4], edi
000118b5: jae      0x118c8
000118b7: mov      esi, 0x80000005
000118bc: mov      dword ptr [ebx + 0x1c], 4
000118c3: jmp      0x11b53
000118c8: mov      esi, dword ptr [esi + 0x110]
000118ce: mov      eax, ecx
000118d0: shr      ecx, 2
000118d3: lea      edi, [edx + 2]
000118d6: rep movsd dword ptr es:[edi], dword ptr [esi]
000118d8: mov      ecx, eax
000118da: and      ecx, 3
000118dd: rep movsb byte ptr es:[edi], byte ptr [esi]
000118df: movzx    eax, word ptr [edx]
000118e2: xor      esi, esi
000118e4: inc      eax
000118e5: inc      eax
000118e6: jmp      0x11967
000118e8: cmp      ecx, 0x66001b
000118ee: je       0x119da
000118f4: cmp      ecx, 0x6d0008
000118fa: je       0x119da
00011900: cmp      ecx, 0x6dc004
00011906: jmp      0x11887
0001190b: movzx    ecx, word ptr [esi + 8]
0001190f: add      ecx, 0xef
00011915: cmp      dword ptr [eax + 4], ecx
00011918: jb       0x115e1
0001191e: mov      ecx, dword ptr [esi + 0x10]
00011921: mov      eax, dword ptr [ebx + 0xc]
00011924: mov      dword ptr [eax + 0xb], ecx
00011927: mov      ecx, dword ptr [esi + 0x14]
0001192a: mov      dword ptr [eax + 0xf], ecx
0001192d: mov      cl, byte ptr [esi + 0x24]
00011930: mov      byte ptr [eax + 4], cl
00011933: mov      cx, word ptr [esi + 8]
00011937: mov      word ptr [eax + 0xed], cx
0001193e: movzx    ecx, word ptr [esi + 8]
00011942: mov      esi, dword ptr [esi + 0xc]
00011945: mov      edx, ecx
00011947: shr      ecx, 2
0001194a: lea      edi, [eax + 0xef]
00011950: rep movsd dword ptr es:[edi], dword ptr [esi]
00011952: mov      ecx, edx
00011954: and      ecx, 3
00011957: rep movsb byte ptr es:[edi], byte ptr [esi]
00011959: movzx    eax, word ptr [eax + 0xed]
00011960: xor      esi, esi
00011962: add      eax, 0xef
00011967: mov      dword ptr [ebx + 0x1c], eax
0001196a: jmp      0x11b53
0001196f: cmp      ecx, 0x8200e000
00011975: je       0x11a7d
0001197b: cmp      ecx, 0x8200e004
00011981: je       0x11a51
00011987: cmp      ecx, 0x8200e00c
0001198d: je       0x11a7d
00011993: cmp      ecx, 0x8200e010
00011999: je       0x11a51
0001199f: cmp      ecx, 0x8200e014
000119a5: je       0x11a00
000119a7: cmp      ecx, 0x8200e018
000119ad: je       0x119e1
000119af: cmp      ecx, 0x8200e01c
000119b5: je       0x119c1
000119b7: mov      esi, 0xc0000010
000119bc: jmp      0x11aaa
000119c1: push     4
000119c3: pop      ecx
000119c4: cmp      dword ptr [eax + 8], ecx
000119c7: jb       0x115e1
000119cd: mov      eax, dword ptr [ebx + 0xc]
000119d0: mov      eax, dword ptr [eax]
000119d2: mov      dword ptr [0x1a230], eax
000119d7: mov      dword ptr [ebx + 0x1c], ecx
000119da: xor      esi, esi
000119dc: jmp      0x11b53
000119e1: push     4
000119e3: pop      ecx
000119e4: cmp      dword ptr [eax + 4], ecx
000119e7: jb       0x115e1
000119ed: mov      eax, dword ptr [ebx + 0xc]
000119f0: mov      dword ptr [eax], 0x13305c5
000119f6: xor      esi, esi
000119f8: mov      dword ptr [ebx + 0x1c], ecx
000119fb: jmp      0x11b53
00011a00: xor      esi, esi
00011a02: push     esi
00011a03: push     esi
00011a04: push     esi
00011a05: push     esi
00011a06: push     0x1a240
00011a0b: call     dword ptr [0x16044]
00011a11: mov      eax, dword ptr [ebp + 8]
00011a14: mov      eax, dword ptr [eax + 8]
00011a17: mov      edi, dword ptr [eax + 4]
00011a1a: jmp      0x11a39
00011a1c: mov      eax, dword ptr [edi + 0x28]
00011a1f: cmp      byte ptr [eax], 0
00011a22: jne      0x11a36
00011a24: cmp      dword ptr [eax + 4], esi
00011a27: je       0x11a36
00011a29: cmp      byte ptr [eax + 0x4d], 0
00011a2d: je       0x11a36
00011a2f: push     ebx
00011a30: push     edi
00011a31: call     0x1bd24
00011a36: mov      edi, dword ptr [edi + 0xc]
00011a39: cmp      edi, esi
00011a3b: jne      0x11a1c
00011a3d: push     esi
00011a3e: push     0x1a240
00011a43: call     dword ptr [0x1609c]
00011a49: mov      dword ptr [ebx + 0x1c], esi
00011a4c: jmp      0x11b53
00011a51: or       byte ptr [eax + 3], 1
00011a55: lea      eax, [esi + 0x34]
00011a58: push     eax
00011a59: lea      edx, [ebx + 0x58]
00011a5c: lea      ecx, [esi + 0x2c]
00011a5f: call     dword ptr [0x16050]
00011a65: push     0
00011a67: push     0
00011a69: add      esi, 0x38
00011a6c: push     esi
00011a6d: call     dword ptr [0x16048]
00011a73: mov      esi, 0x103
00011a78: jmp      0x11b60
00011a7d: cmp      byte ptr [esi + 1], 0
00011a81: jne      0x119b7
00011a87: mov      eax, dword ptr [eax + 8]
00011a8a: cmp      eax, 0xf0
00011a8f: jb       0x11aa5
00011a91: mov      ecx, dword ptr [ebx + 0xc]
00011a94: movzx    ecx, word ptr [ecx + 0xed]
00011a9b: add      ecx, 0xef
00011aa1: cmp      eax, ecx
00011aa3: jae      0x11ab3
00011aa5: mov      esi, 0xc000000d
00011aaa: and      dword ptr [ebx + 0x1c], 0
00011aae: jmp      0x11b53
00011ab3: mov      eax, dword ptr [esi + 0x28]
00011ab6: test     eax, eax
00011ab8: je       0x11adc
00011aba: push     dword ptr [eax + 0xc]
00011abd: call     dword ptr [0x16040]
00011ac3: cmp      eax, 1
00011ac6: mov      eax, dword ptr [esi + 0x28]
00011ac9: mov      ecx, dword ptr [eax + 0xc]
00011acc: jne      0x11ad6
00011ace: call     dword ptr [0x16018]
00011ad4: jmp      0x11aee
00011ad6: test     ecx, ecx
00011ad8: je       0x11aee
00011ada: jmp      0x11ace
00011adc: push     0x206b6444
00011ae1: push     0x3c
00011ae3: push     0
00011ae5: call     dword ptr [0x16008]
00011aeb: mov      dword ptr [esi + 0x28], eax
00011aee: push     dword ptr [esi + 0x28]
00011af1: xor      eax, eax
00011af3: lea      edi, [ebp - 0xc]
00011af6: stosd    dword ptr es:[edi], eax
00011af7: stosd    dword ptr es:[edi], eax
00011af8: stosd    dword ptr es:[edi], eax
00011af9: push     0
00011afb: lea      eax, [ebp - 0xc]
00011afe: push     eax
00011aff: mov      dword ptr [ebp - 0xc], 0xc
00011b06: mov      dword ptr [ebp - 8], 2
00011b0d: mov      byte ptr [ebp - 4], 0
00011b11: mov      byte ptr [ebp - 3], 0
00011b15: call     0x1542a
00011b1a: push     eax
00011b1b: call     dword ptr [0x160a0]
00011b21: mov      eax, dword ptr [ebx + 0x60]
00011b24: or       byte ptr [eax + 3], 1
00011b28: lea      eax, [esi + 0x34]
00011b2b: push     eax
00011b2c: lea      edx, [ebx + 0x58]
00011b2f: lea      ecx, [esi + 0x2c]
00011b32: call     dword ptr [0x16050]
00011b38: push     0
00011b3a: push     0
00011b3c: add      esi, 0x38
00011b3f: push     esi
00011b40: call     dword ptr [0x16048]
00011b46: mov      esi, 0x103
00011b4b: cmp      esi, 0x103
00011b51: je       0x11b60
00011b53: xor      dl, dl
00011b55: mov      ecx, ebx
00011b57: mov      dword ptr [ebx + 0x18], esi
00011b5a: call     dword ptr [0x1604c]
00011b60: pop      edi
00011b61: mov      eax, esi
00011b63: pop      esi
00011b64: pop      ebx
00011b65: leave    
00011b66: ret      8
00011b69: int3     
00011b6a: int3     
00011b6b: int3     
00011b6c: int3     
00011b6d: int3     
00011b6e: mov      edi, edi
00011b70: push     ebp
00011b71: mov      ebp, esp
00011b73: sub      esp, 0x20
00011b76: mov      eax, dword ptr [ebp + 8]
00011b79: push     ebx
00011b7a: push     esi
00011b7b: mov      esi, dword ptr [eax + 0x28]
00011b7e: push     edi
00011b7f: push     0x10
00011b81: mov      dword ptr [ebp - 0x14], esi
00011b84: call     0x1542a
00011b89: push     eax
00011b8a: call     dword ptr [0x160c4]
00011b90: push     1
00011b92: push     0x1d
00011b94: call     0x1b0c8
00011b99: push     esi
00011b9a: call     dword ptr [0x1605c]
00011ba0: test     al, al
00011ba2: jne      0x11bac
00011ba4: push     0
00011ba6: call     dword ptr [0x160c0]
00011bac: lea      edi, [esi + 0x34]
00011baf: lea      ebx, [esi + 0x2c]
00011bb2: xor      eax, eax
00011bb4: push     eax
00011bb5: push     eax
00011bb6: push     eax
00011bb7: push     eax
00011bb8: lea      eax, [esi + 0x38]
00011bbb: push     eax
00011bbc: call     dword ptr [0x16044]
00011bc2: cmp      byte ptr [esi + 0x4c], 0
00011bc6: je       0x11f1e
00011bcc: push     0
00011bce: call     dword ptr [0x160c0]
00011bd4: jmp      0x11f1e
00011bd9: lea      edi, [eax - 0x58]
00011bdc: mov      ebx, dword ptr [edi + 0x60]
00011bdf: movzx    eax, byte ptr [ebx]
00011be2: sub      eax, 3
00011be5: mov      dword ptr [ebp - 0x10], edi
00011be8: je       0x11dad
00011bee: dec      eax
00011bef: je       0x11c70
00011bf1: sub      eax, 0xa
00011bf4: jne      0x11c11
00011bf6: mov      ebx, dword ptr [ebx + 0xc]
00011bf9: cmp      ebx, 0x8200e000
00011bff: je       0x11c57
00011c01: cmp      ebx, 0x8200e004
00011c07: je       0x11c43
00011c09: cmp      ebx, 0x8200e00c
00011c0f: je       0x11c1f
00011c11: lea      ebx, [edi + 0x18]
00011c14: mov      dword ptr [ebx], 0xc0000183
00011c1a: jmp      0x11f0a
00011c1f: push     0
00011c21: push     dword ptr [esi + 0x28]
00011c24: call     dword ptr [0x160bc]
00011c2a: push     edi
00011c2b: push     dword ptr [ebp + 8]
00011c2e: lea      ebx, [edi + 0x18]
00011c31: call     0x1b0aa
00011c36: mov      dword ptr [ebx], eax
00011c38: call     dword ptr [0x160b8]
00011c3e: jmp      0x11f0a
00011c43: push     edi
00011c44: push     dword ptr [ebp + 8]
00011c47: call     0x1bd24
00011c4c: lea      ebx, [edi + 0x18]
00011c4f: and      dword ptr [ebx], 0
00011c52: jmp      0x11f06
00011c57: push     0
00011c59: push     dword ptr [esi + 0x28]
00011c5c: call     dword ptr [0x160bc]
00011c62: push     edi
00011c63: push     dword ptr [ebp + 8]
00011c66: lea      ebx, [edi + 0x18]
00011c69: call     0x1b7aa
00011c6e: jmp      0x11c36
00011c70: mov      eax, dword ptr [ebx + 0xc]
00011c73: mov      dword ptr [ebp - 0x20], eax
00011c76: mov      edx, dword ptr [ebx + 0x10]
00011c79: mov      dword ptr [ebp - 0x1c], edx
00011c7c: cmp      byte ptr [esi + 0x24], 0
00011c80: mov      ecx, dword ptr [ebx + 4]
00011c83: mov      dword ptr [ebp - 4], ecx
00011c86: je       0x11c9f
00011c88: cmp      dword ptr [0x1a230], 0
00011c8f: jne      0x11c9f
00011c91: lea      ebx, [edi + 0x18]
00011c94: mov      dword ptr [ebx], 0xc00000a2
00011c9a: jmp      0x11f06
00011c9f: test     edx, edx
00011ca1: jl       0x11efd
00011ca7: jg       0x11cb1
00011ca9: test     eax, eax
00011cab: jb       0x11efd
00011cb1: xor      eax, eax
00011cb3: add      ecx, dword ptr [ebp - 0x20]
00011cb6: adc      eax, edx
00011cb8: cmp      eax, dword ptr [esi + 0x14]
00011cbb: ja       0x11efd
00011cc1: jb       0x11ccc
00011cc3: cmp      ecx, dword ptr [esi + 0x10]
00011cc6: ja       0x11efd
00011ccc: mov      eax, dword ptr [edi + 4]
00011ccf: test     byte ptr [eax + 6], 5
00011cd3: je       0x11cda
00011cd5: mov      eax, dword ptr [eax + 0xc]
00011cd8: jmp      0x11cea
00011cda: push     0x10
00011cdc: xor      ecx, ecx
00011cde: push     ecx
00011cdf: push     ecx
00011ce0: push     1
00011ce2: push     ecx
00011ce3: push     eax
00011ce4: call     dword ptr [0x160b4]
00011cea: test     eax, eax
00011cec: mov      dword ptr [ebp - 0xc], eax
00011cef: jne      0x11cf9
00011cf1: lea      ebx, [edi + 0x18]
00011cf4: jmp      0x11e73
00011cf9: mov      eax, dword ptr [esi + 0x18]
00011cfc: add      eax, dword ptr [ebx + 0xc]
00011cff: mov      ecx, dword ptr [esi + 0x1c]
00011d02: adc      ecx, dword ptr [ebx + 0x10]
00011d05: push     0x206b6444
00011d0a: push     dword ptr [ebp - 4]
00011d0d: mov      dword ptr [ebp - 0x20], eax
00011d10: push     1
00011d12: mov      dword ptr [ebp - 0x1c], ecx
00011d15: call     dword ptr [0x16008]
00011d1b: mov      ebx, eax
00011d1d: test     ebx, ebx
00011d1f: mov      dword ptr [ebp - 8], ebx
00011d22: je       0x11cf1
00011d24: mov      ecx, dword ptr [ebp - 4]
00011d27: mov      esi, dword ptr [ebp - 0xc]
00011d2a: mov      eax, ecx
00011d2c: shr      ecx, 2
00011d2f: mov      edi, ebx
00011d31: rep movsd dword ptr es:[edi], dword ptr [esi]
00011d33: push     1
00011d35: mov      ecx, eax
00011d37: and      ecx, 3
00011d3a: rep movsb byte ptr es:[edi], byte ptr [esi]
00011d3c: push     dword ptr [ebp - 0x1c]
00011d3f: mov      edi, dword ptr [ebp - 0x14]
00011d42: push     dword ptr [ebp - 0x20]
00011d45: push     eax
00011d46: push     ebx
00011d47: push     edi
00011d48: call     0x1bde2
00011d4d: test     al, al
00011d4f: jne      0x11d74
00011d51: mov      esi, dword ptr [0x16004]
00011d57: xor      edi, edi
00011d59: push     edi
00011d5a: push     ebx
00011d5b: call     esi
00011d5d: mov      eax, dword ptr [ebp - 0x10]
00011d60: push     edi
00011d61: push     dword ptr [ebp - 8]
00011d64: lea      ebx, [eax + 0x18]
00011d67: mov      dword ptr [ebx], 0xc000009a
00011d6d: mov      dword ptr [eax + 0x1c], edi
00011d70: call     esi
00011d72: jmp      0x11da2
00011d74: mov      ebx, dword ptr [ebp - 0x10]
00011d77: xor      esi, esi
00011d79: push     esi
00011d7a: lea      eax, [ebp - 0x20]
00011d7d: push     eax
00011d7e: push     dword ptr [ebp - 4]
00011d81: add      ebx, 0x18
00011d84: push     dword ptr [ebp - 8]
00011d87: push     ebx
00011d88: push     esi
00011d89: push     esi
00011d8a: push     esi
00011d8b: push     dword ptr [edi + 4]
00011d8e: call     dword ptr [0x16060]
00011d94: push     esi
00011d95: push     dword ptr [ebp - 8]
00011d98: mov      edi, eax
00011d9a: call     dword ptr [0x16004]
00011da0: mov      dword ptr [ebx], edi
00011da2: mov      esi, dword ptr [ebp - 0x14]
00011da5: mov      edi, dword ptr [ebp - 0x10]
00011da8: jmp      0x11f0a
00011dad: mov      eax, dword ptr [edi + 4]
00011db0: test     byte ptr [eax + 6], 5
00011db4: je       0x11dbb
00011db6: mov      eax, dword ptr [eax + 0xc]
00011db9: jmp      0x11dcb
00011dbb: push     0x10
00011dbd: xor      ecx, ecx
00011dbf: push     ecx
00011dc0: push     ecx
00011dc1: push     1
00011dc3: push     ecx
00011dc4: push     eax
00011dc5: call     dword ptr [0x160b4]
00011dcb: test     eax, eax
00011dcd: mov      dword ptr [ebp - 0xc], eax
00011dd0: je       0x11cf1
00011dd6: mov      eax, dword ptr [ebx + 4]
00011dd9: mov      edx, dword ptr [ebx + 0xc]
00011ddc: mov      dword ptr [ebp - 0x20], edx
00011ddf: mov      ebx, dword ptr [ebx + 0x10]
00011de2: test     ebx, ebx
00011de4: mov      dword ptr [ebp - 4], eax
00011de7: mov      dword ptr [ebp - 0x1c], ebx
00011dea: jl       0x11efd
00011df0: jg       0x11dfa
00011df2: test     edx, edx
00011df4: jb       0x11efd
00011dfa: mov      eax, dword ptr [esi + 0x14]
00011dfd: cmp      ebx, eax
00011dff: mov      ecx, dword ptr [esi + 0x10]
00011e02: ja       0x11efd
00011e08: jb       0x11e12
00011e0a: cmp      edx, ecx
00011e0c: jae      0x11efd
00011e12: mov      ebx, dword ptr [ebp - 4]
00011e15: xor      edx, edx
00011e17: add      ebx, dword ptr [ebp - 0x20]
00011e1a: adc      edx, dword ptr [ebp - 0x1c]
00011e1d: cmp      edx, eax
00011e1f: jb       0x11e4d
00011e21: ja       0x11e27
00011e23: cmp      ebx, ecx
00011e25: jbe      0x11e4d
00011e27: mov      edx, 0x200
00011e2c: cmp      dword ptr [esi + 0x20], edx
00011e2f: jae      0x11e34
00011e31: mov      dword ptr [esi + 0x20], edx
00011e34: sub      ecx, dword ptr [ebp - 0x20]
00011e37: mov      ebx, dword ptr [esi + 0x20]
00011e3a: sbb      eax, dword ptr [ebp - 0x1c]
00011e3d: push     0
00011e3f: push     ebx
00011e40: push     eax
00011e41: push     ecx
00011e42: call     0x15436
00011e47: imul     eax, ebx
00011e4a: mov      dword ptr [ebp - 4], eax
00011e4d: mov      eax, dword ptr [esi + 0x18]
00011e50: add      dword ptr [ebp - 0x20], eax
00011e53: mov      eax, dword ptr [esi + 0x1c]
00011e56: push     0x206b6444
00011e5b: push     dword ptr [ebp - 4]
00011e5e: adc      dword ptr [ebp - 0x1c], eax
00011e61: push     1
00011e63: call     dword ptr [0x16008]
00011e69: test     eax, eax
00011e6b: mov      dword ptr [ebp - 8], eax
00011e6e: lea      ebx, [edi + 0x18]
00011e71: jne      0x11e7e
00011e73: mov      dword ptr [ebx], 0xc000009a
00011e79: jmp      0x11f06
00011e7e: xor      eax, eax
00011e80: push     eax
00011e81: lea      ecx, [ebp - 0x20]
00011e84: push     ecx
00011e85: push     dword ptr [ebp - 4]
00011e88: push     dword ptr [ebp - 8]
00011e8b: push     ebx
00011e8c: push     eax
00011e8d: push     eax
00011e8e: push     eax
00011e8f: push     dword ptr [esi + 4]
00011e92: call     dword ptr [0x160b0]
00011e98: test     eax, eax
00011e9a: mov      dword ptr [ebp - 0x18], eax
00011e9d: jl       0x11eeb
00011e9f: push     0
00011ea1: push     dword ptr [ebp - 0x1c]
00011ea4: push     dword ptr [ebp - 0x20]
00011ea7: push     dword ptr [ebp - 4]
00011eaa: push     dword ptr [ebp - 8]
00011ead: push     esi
00011eae: call     0x1bde2
00011eb3: test     al, al
00011eb5: jne      0x11ece
00011eb7: and      dword ptr [edi + 0x1c], 0
00011ebb: push     0
00011ebd: push     dword ptr [ebp - 8]
00011ec0: mov      dword ptr [ebx], 0xc000009a
00011ec6: call     dword ptr [0x16004]
00011ecc: jmp      0x11f0a
00011ece: mov      ecx, dword ptr [ebp - 4]
00011ed1: mov      esi, dword ptr [ebp - 8]
00011ed4: mov      edi, dword ptr [ebp - 0xc]
00011ed7: mov      eax, ecx
00011ed9: shr      ecx, 2
00011edc: rep movsd dword ptr es:[edi], dword ptr [esi]
00011ede: mov      ecx, eax
00011ee0: and      ecx, 3
00011ee3: rep movsb byte ptr es:[edi], byte ptr [esi]
00011ee5: mov      esi, dword ptr [ebp - 0x14]
00011ee8: mov      edi, dword ptr [ebp - 0x10]
00011eeb: push     0
00011eed: push     dword ptr [ebp - 8]
00011ef0: call     dword ptr [0x16004]
00011ef6: mov      eax, dword ptr [ebp - 0x18]
00011ef9: mov      dword ptr [ebx], eax
00011efb: jmp      0x11f0a
00011efd: lea      ebx, [edi + 0x18]
00011f00: mov      dword ptr [ebx], 0xc000000d
00011f06: and      dword ptr [edi + 0x1c], 0
00011f0a: cmp      dword ptr [ebx], 0
00011f0d: mov      ecx, edi
00011f0f: setge    dl
00011f12: call     dword ptr [0x1604c]
00011f18: lea      edi, [esi + 0x34]
00011f1b: lea      ebx, [esi + 0x2c]
00011f1e: mov      ecx, ebx
00011f20: mov      edx, edi
00011f22: call     dword ptr [0x160ac]
00011f28: test     eax, eax
00011f2a: jne      0x11bd9
00011f30: jmp      0x11bb2
00011f35: int3     
00011f36: int3     
00011f37: int3     
00011f38: int3     
00011f39: int3     
00011f3a: mov      edi, edi
00011f3c: push     ebp
00011f3d: mov      ebp, esp
00011f3f: mov      eax, dword ptr [ebp + 8]
00011f42: movzx    ecx, byte ptr [eax]
00011f45: mov      cl, byte ptr [ecx + 0x16130]
00011f4b: mov      byte ptr [eax], cl
00011f4d: movzx    ecx, byte ptr [eax + 4]
00011f51: mov      cl, byte ptr [ecx + 0x16130]
00011f57: movzx    edx, byte ptr [eax + 5]
00011f5b: mov      byte ptr [eax + 4], cl
00011f5e: movzx    ecx, byte ptr [eax + 8]
00011f62: mov      cl, byte ptr [ecx + 0x16130]
00011f68: mov      byte ptr [eax + 8], cl
00011f6b: movzx    ecx, byte ptr [eax + 0xc]
00011f6f: mov      cl, byte ptr [ecx + 0x16130]
00011f75: mov      byte ptr [eax + 0xc], cl
00011f78: mov      dl, byte ptr [edx + 0x16130]
00011f7e: movzx    ecx, byte ptr [eax + 1]
00011f82: mov      cl, byte ptr [ecx + 0x16130]
00011f88: mov      byte ptr [eax + 1], dl
00011f8b: movzx    edx, byte ptr [eax + 9]
00011f8f: mov      dl, byte ptr [edx + 0x16130]
00011f95: mov      byte ptr [eax + 5], dl
00011f98: movzx    edx, byte ptr [eax + 0xd]
00011f9c: mov      dl, byte ptr [edx + 0x16130]
00011fa2: mov      byte ptr [eax + 9], dl
00011fa5: movzx    edx, byte ptr [eax + 0xa]
00011fa9: mov      byte ptr [eax + 0xd], cl
00011fac: mov      dl, byte ptr [edx + 0x16130]
00011fb2: movzx    ecx, byte ptr [eax + 2]
00011fb6: mov      cl, byte ptr [ecx + 0x16130]
00011fbc: mov      byte ptr [eax + 2], dl
00011fbf: movzx    edx, byte ptr [eax + 0xe]
00011fc3: mov      byte ptr [eax + 0xa], cl
00011fc6: mov      dl, byte ptr [edx + 0x16130]
00011fcc: movzx    ecx, byte ptr [eax + 6]
00011fd0: mov      cl, byte ptr [ecx + 0x16130]
00011fd6: mov      byte ptr [eax + 6], dl
00011fd9: movzx    edx, byte ptr [eax + 0xb]
00011fdd: mov      byte ptr [eax + 0xe], cl
00011fe0: mov      dl, byte ptr [edx + 0x16130]
00011fe6: movzx    ecx, byte ptr [eax + 0xf]
00011fea: mov      cl, byte ptr [ecx + 0x16130]
00011ff0: mov      byte ptr [eax + 0xf], dl
00011ff3: movzx    edx, byte ptr [eax + 7]
00011ff7: mov      dl, byte ptr [edx + 0x16130]
00011ffd: mov      byte ptr [eax + 0xb], dl
00012000: movzx    edx, byte ptr [eax + 3]
00012004: mov      dl, byte ptr [edx + 0x16130]
0001200a: mov      byte ptr [eax + 7], dl
0001200d: mov      byte ptr [eax + 3], cl
00012010: pop      ebp
00012011: ret      4
00012014: int3     
00012015: int3     
00012016: int3     
00012017: int3     
00012018: int3     
00012019: int3     
0001201a: mov      edi, edi
0001201c: push     ebp
0001201d: mov      ebp, esp
0001201f: mov      eax, dword ptr [ebp + 8]
00012022: movzx    ecx, byte ptr [eax]
00012025: mov      cl, byte ptr [ecx + 0x16230]
0001202b: mov      byte ptr [eax], cl
0001202d: movzx    ecx, byte ptr [eax + 4]
00012031: mov      cl, byte ptr [ecx + 0x16230]
00012037: movzx    edx, byte ptr [eax + 9]
0001203b: mov      byte ptr [eax + 4], cl
0001203e: movzx    ecx, byte ptr [eax + 8]
00012042: mov      cl, byte ptr [ecx + 0x16230]
00012048: mov      byte ptr [eax + 8], cl
0001204b: movzx    ecx, byte ptr [eax + 0xc]
0001204f: mov      cl, byte ptr [ecx + 0x16230]
00012055: mov      byte ptr [eax + 0xc], cl
00012058: mov      dl, byte ptr [edx + 0x16230]
0001205e: movzx    ecx, byte ptr [eax + 0xd]
00012062: mov      cl, byte ptr [ecx + 0x16230]
00012068: mov      byte ptr [eax + 0xd], dl
0001206b: movzx    edx, byte ptr [eax + 5]
0001206f: mov      dl, byte ptr [edx + 0x16230]
00012075: mov      byte ptr [eax + 9], dl
00012078: movzx    edx, byte ptr [eax + 1]
0001207c: mov      dl, byte ptr [edx + 0x16230]
00012082: mov      byte ptr [eax + 5], dl
00012085: movzx    edx, byte ptr [eax + 0xa]
00012089: mov      byte ptr [eax + 1], cl
0001208c: mov      dl, byte ptr [edx + 0x16230]
00012092: movzx    ecx, byte ptr [eax + 2]
00012096: mov      cl, byte ptr [ecx + 0x16230]
0001209c: mov      byte ptr [eax + 2], dl
0001209f: movzx    edx, byte ptr [eax + 0xe]
000120a3: mov      byte ptr [eax + 0xa], cl
000120a6: mov      dl, byte ptr [edx + 0x16230]
000120ac: movzx    ecx, byte ptr [eax + 6]
000120b0: mov      cl, byte ptr [ecx + 0x16230]
000120b6: mov      byte ptr [eax + 6], dl
000120b9: movzx    edx, byte ptr [eax + 7]
000120bd: mov      byte ptr [eax + 0xe], cl
000120c0: mov      dl, byte ptr [edx + 0x16230]
000120c6: movzx    ecx, byte ptr [eax + 3]
000120ca: mov      cl, byte ptr [ecx + 0x16230]
000120d0: mov      byte ptr [eax + 3], dl
000120d3: movzx    edx, byte ptr [eax + 0xb]
000120d7: mov      dl, byte ptr [edx + 0x16230]
000120dd: mov      byte ptr [eax + 7], dl
000120e0: movzx    edx, byte ptr [eax + 0xf]
000120e4: mov      dl, byte ptr [edx + 0x16230]
000120ea: mov      byte ptr [eax + 0xb], dl
000120ed: mov      byte ptr [eax + 0xf], cl
000120f0: pop      ebp
000120f1: ret      4
000120f4: int3     
000120f5: int3     
000120f6: int3     
000120f7: int3     
000120f8: int3     
000120f9: int3     
000120fa: mov      edi, edi
000120fc: push     ebp
000120fd: mov      ebp, esp
000120ff: sub      esp, 0x18
00012102: push     ebx
00012103: mov      eax, dword ptr [0x1a0e4]
00012108: push     esi
00012109: push     edi
0001210a: mov      edi, dword ptr [ebp + 8]
0001210d: movzx    esi, byte ptr [edi + 0xa]
00012111: mov      cl, byte ptr [esi + 0x16130]
00012117: movzx    edx, byte ptr [edi]
0001211a: mov      dl, byte ptr [edx + 0x16330]
00012120: mov      byte ptr [ebp - 0x15], cl
00012123: movzx    ecx, byte ptr [edi + 5]
00012127: xor      dl, byte ptr [ecx + 0x16430]
0001212d: mov      bl, byte ptr [ecx + 0x16330]
00012133: xor      dl, byte ptr [ebp - 0x15]
00012136: xor      bl, byte ptr [esi + 0x16430]
0001213c: mov      cl, byte ptr [ecx + 0x16130]
00012142: mov      dword ptr [ebp - 4], eax
00012145: movzx    eax, byte ptr [edi + 0xf]
00012149: xor      dl, byte ptr [eax + 0x16130]
0001214f: mov      byte ptr [ebp - 0x14], dl
00012152: movzx    edx, byte ptr [edi]
00012155: mov      dl, byte ptr [edx + 0x16130]
0001215b: xor      bl, dl
0001215d: xor      bl, byte ptr [eax + 0x16130]
00012163: mov      byte ptr [ebp - 0x16], dl
00012166: mov      dl, byte ptr [esi + 0x16330]
0001216c: xor      dl, byte ptr [eax + 0x16430]
00012172: movzx    esi, byte ptr [edi + 9]
00012176: xor      dl, cl
00012178: xor      dl, byte ptr [ebp - 0x16]
0001217b: mov      byte ptr [ebp - 0x13], bl
0001217e: mov      byte ptr [ebp - 0x12], dl
00012181: movzx    edx, byte ptr [edi]
00012184: mov      dl, byte ptr [edx + 0x16430]
0001218a: xor      dl, byte ptr [eax + 0x16330]
00012190: movzx    eax, byte ptr [edi + 0xe]
00012194: xor      dl, cl
00012196: xor      dl, byte ptr [ebp - 0x15]
00012199: mov      cl, byte ptr [eax + 0x16130]
0001219f: mov      bl, byte ptr [esi + 0x16330]
000121a5: xor      bl, byte ptr [eax + 0x16430]
000121ab: mov      byte ptr [ebp - 0x11], dl
000121ae: movzx    edx, byte ptr [edi + 4]
000121b2: mov      dl, byte ptr [edx + 0x16330]
000121b8: xor      dl, byte ptr [esi + 0x16430]
000121be: mov      byte ptr [ebp - 0x15], cl
000121c1: movzx    ecx, byte ptr [edi + 3]
000121c5: xor      dl, byte ptr [ecx + 0x16130]
000121cb: xor      dl, byte ptr [ebp - 0x15]
000121ce: mov      byte ptr [ebp - 0x10], dl
000121d1: movzx    edx, byte ptr [edi + 4]
000121d5: mov      dl, byte ptr [edx + 0x16130]
000121db: xor      bl, dl
000121dd: xor      bl, byte ptr [ecx + 0x16130]
000121e3: mov      byte ptr [ebp - 0x16], dl
000121e6: mov      dl, byte ptr [esi + 0x16130]
000121ec: movzx    esi, byte ptr [edi + 7]
000121f0: mov      byte ptr [ebp - 0xf], bl
000121f3: mov      bl, byte ptr [ecx + 0x16430]
000121f9: xor      bl, byte ptr [eax + 0x16330]
000121ff: movzx    eax, byte ptr [edi + 4]
00012203: mov      al, byte ptr [eax + 0x16430]
00012209: xor      al, byte ptr [ecx + 0x16330]
0001220f: movzx    ecx, byte ptr [edi + 8]
00012213: xor      bl, dl
00012215: xor      bl, byte ptr [ebp - 0x16]
00012218: xor      al, dl
0001221a: xor      al, byte ptr [ebp - 0x15]
0001221d: movzx    edx, byte ptr [edi + 2]
00012221: mov      dl, byte ptr [edx + 0x16130]
00012227: mov      byte ptr [ebp - 0xe], bl
0001222a: mov      bl, byte ptr [ecx + 0x16330]
00012230: mov      byte ptr [ebp - 0xd], al
00012233: movzx    eax, byte ptr [edi + 0xd]
00012237: xor      bl, byte ptr [eax + 0x16430]
0001223d: mov      byte ptr [ebp - 0x16], dl
00012240: xor      bl, dl
00012242: movzx    edx, byte ptr [edi + 2]
00012246: xor      bl, byte ptr [esi + 0x16130]
0001224c: mov      dl, byte ptr [edx + 0x16430]
00012252: mov      byte ptr [ebp - 0xc], bl
00012255: xor      dl, byte ptr [eax + 0x16330]
0001225b: mov      al, byte ptr [eax + 0x16130]
00012261: xor      dl, byte ptr [ecx + 0x16130]
00012267: xor      dl, byte ptr [esi + 0x16130]
0001226d: mov      byte ptr [ebp - 0xb], dl
00012270: movzx    edx, byte ptr [edi + 2]
00012274: mov      dl, byte ptr [edx + 0x16330]
0001227a: xor      dl, byte ptr [esi + 0x16430]
00012280: xor      dl, al
00012282: xor      dl, byte ptr [ecx + 0x16130]
00012288: mov      cl, byte ptr [ecx + 0x16430]
0001228e: xor      cl, byte ptr [esi + 0x16330]
00012294: movzx    esi, byte ptr [edi + 0xc]
00012298: xor      cl, al
0001229a: xor      cl, byte ptr [ebp - 0x16]
0001229d: movzx    eax, byte ptr [edi + 0xb]
000122a1: mov      byte ptr [ebp - 9], cl
000122a4: movzx    ecx, byte ptr [edi + 6]
000122a8: mov      byte ptr [ebp - 0xa], dl
000122ab: mov      dl, byte ptr [ecx + 0x16130]
000122b1: mov      byte ptr [ebp - 0x15], dl
000122b4: movzx    edx, byte ptr [edi + 1]
000122b8: mov      dl, byte ptr [edx + 0x16430]
000122be: xor      dl, byte ptr [esi + 0x16330]
000122c4: xor      dl, byte ptr [ebp - 0x15]
000122c7: xor      dl, byte ptr [eax + 0x16130]
000122cd: mov      byte ptr [ebp - 8], dl
000122d0: movzx    edx, byte ptr [edi + 1]
000122d4: mov      dl, byte ptr [edx + 0x16330]
000122da: xor      dl, byte ptr [ecx + 0x16430]
000122e0: mov      cl, byte ptr [ecx + 0x16330]
000122e6: xor      dl, byte ptr [esi + 0x16130]
000122ec: xor      cl, byte ptr [eax + 0x16430]
000122f2: xor      dl, byte ptr [eax + 0x16130]
000122f8: mov      byte ptr [ebp - 7], dl
000122fb: movzx    edx, byte ptr [edi + 1]
000122ff: mov      dl, byte ptr [edx + 0x16130]
00012305: xor      cl, dl
00012307: xor      cl, byte ptr [esi + 0x16130]
0001230d: mov      byte ptr [ebp - 6], cl
00012310: mov      cl, byte ptr [esi + 0x16430]
00012316: xor      cl, byte ptr [eax + 0x16330]
0001231c: lea      esi, [ebp - 0x14]
0001231f: xor      cl, dl
00012321: xor      cl, byte ptr [ebp - 0x15]
00012324: mov      byte ptr [ebp - 5], cl
00012327: mov      ecx, dword ptr [ebp - 4]
0001232a: movsd    dword ptr es:[edi], dword ptr [esi]
0001232b: movsd    dword ptr es:[edi], dword ptr [esi]
0001232c: movsd    dword ptr es:[edi], dword ptr [esi]
0001232d: movsd    dword ptr es:[edi], dword ptr [esi]
0001232e: pop      edi
0001232f: pop      esi
00012330: pop      ebx
00012331: call     0x153f7
00012336: leave    
00012337: ret      4
0001233a: int3     
0001233b: int3     
0001233c: int3     
0001233d: int3     
0001233e: int3     
0001233f: int3     
00012340: mov      edi, edi
00012342: push     ebp
00012343: mov      ebp, esp
00012345: sub      esp, 0x14
00012348: push     ebx
00012349: mov      eax, dword ptr [0x1a0e4]
0001234e: push     esi
0001234f: mov      dword ptr [ebp - 4], eax
00012352: mov      eax, dword ptr [ebp + 8]
00012355: movzx    edx, byte ptr [eax]
00012358: mov      bl, byte ptr [edx + 0x16930]
0001235e: movzx    esi, byte ptr [eax + 2]
00012362: movzx    ecx, byte ptr [eax + 3]
00012366: push     edi
00012367: movzx    edi, byte ptr [eax + 1]
0001236b: xor      bl, byte ptr [edi + 0x16730]
00012371: xor      bl, byte ptr [esi + 0x16830]
00012377: xor      bl, byte ptr [ecx + 0x16630]
0001237d: mov      byte ptr [ebp - 0x14], bl
00012380: mov      bl, byte ptr [edx + 0x16630]
00012386: xor      bl, byte ptr [edi + 0x16930]
0001238c: xor      bl, byte ptr [esi + 0x16730]
00012392: xor      bl, byte ptr [ecx + 0x16830]
00012398: mov      byte ptr [ebp - 0xf], bl
0001239b: mov      bl, byte ptr [edx + 0x16830]
000123a1: xor      bl, byte ptr [edi + 0x16630]
000123a7: mov      dl, byte ptr [edx + 0x16730]
000123ad: xor      bl, byte ptr [esi + 0x16930]
000123b3: xor      dl, byte ptr [edi + 0x16830]
000123b9: xor      bl, byte ptr [ecx + 0x16730]
000123bf: xor      dl, byte ptr [esi + 0x16630]
000123c5: movzx    edi, byte ptr [eax + 5]
000123c9: xor      dl, byte ptr [ecx + 0x16930]
000123cf: movzx    esi, byte ptr [eax + 6]
000123d3: movzx    ecx, byte ptr [eax + 7]
000123d7: mov      byte ptr [ebp - 0xa], bl
000123da: mov      byte ptr [ebp - 5], dl
000123dd: movzx    edx, byte ptr [eax + 4]
000123e1: mov      bl, byte ptr [edx + 0x16930]
000123e7: xor      bl, byte ptr [edi + 0x16730]
000123ed: xor      bl, byte ptr [esi + 0x16830]
000123f3: xor      bl, byte ptr [ecx + 0x16630]
000123f9: mov      byte ptr [ebp - 0x10], bl
000123fc: mov      bl, byte ptr [edx + 0x16630]
00012402: xor      bl, byte ptr [edi + 0x16930]
00012408: xor      bl, byte ptr [esi + 0x16730]
0001240e: xor      bl, byte ptr [ecx + 0x16830]
00012414: mov      byte ptr [ebp - 0xb], bl
00012417: mov      bl, byte ptr [edx + 0x16830]
0001241d: xor      bl, byte ptr [edi + 0x16630]
00012423: mov      dl, byte ptr [edx + 0x16730]
00012429: xor      bl, byte ptr [esi + 0x16930]
0001242f: xor      dl, byte ptr [edi + 0x16830]
00012435: xor      bl, byte ptr [ecx + 0x16730]
0001243b: xor      dl, byte ptr [esi + 0x16630]
00012441: movzx    edi, byte ptr [eax + 9]
00012445: xor      dl, byte ptr [ecx + 0x16930]
0001244b: movzx    esi, byte ptr [eax + 0xa]
0001244f: movzx    ecx, byte ptr [eax + 0xb]
00012453: mov      byte ptr [ebp - 6], bl
00012456: mov      byte ptr [ebp - 0x11], dl
00012459: movzx    edx, byte ptr [eax + 8]
0001245d: mov      bl, byte ptr [edx + 0x16930]
00012463: xor      bl, byte ptr [edi + 0x16730]
00012469: xor      bl, byte ptr [esi + 0x16830]
0001246f: xor      bl, byte ptr [ecx + 0x16630]
00012475: mov      byte ptr [ebp - 0xc], bl
00012478: mov      bl, byte ptr [edx + 0x16630]
0001247e: xor      bl, byte ptr [edi + 0x16930]
00012484: xor      bl, byte ptr [esi + 0x16730]
0001248a: xor      bl, byte ptr [ecx + 0x16830]
00012490: mov      byte ptr [ebp - 7], bl
00012493: mov      bl, byte ptr [edx + 0x16830]
00012499: xor      bl, byte ptr [edi + 0x16630]
0001249f: mov      dl, byte ptr [edx + 0x16730]
000124a5: xor      dl, byte ptr [edi + 0x16830]
000124ab: xor      bl, byte ptr [esi + 0x16930]
000124b1: xor      dl, byte ptr [esi + 0x16630]
000124b7: xor      bl, byte ptr [ecx + 0x16730]
000124bd: xor      dl, byte ptr [ecx + 0x16930]
000124c3: movzx    ecx, byte ptr [eax + 0xf]
000124c7: movzx    esi, byte ptr [eax + 0xe]
000124cb: movzx    edi, byte ptr [eax + 0xd]
000124cf: mov      byte ptr [ebp - 0x12], bl
000124d2: mov      byte ptr [ebp - 0xd], dl
000124d5: movzx    edx, byte ptr [eax + 0xc]
000124d9: mov      bl, byte ptr [edx + 0x16930]
000124df: xor      bl, byte ptr [edi + 0x16730]
000124e5: push     0x10
000124e7: xor      bl, byte ptr [esi + 0x16830]
000124ed: xor      bl, byte ptr [ecx + 0x16630]
000124f3: mov      byte ptr [ebp - 8], bl
000124f6: mov      bl, byte ptr [edx + 0x16630]
000124fc: xor      bl, byte ptr [edi + 0x16930]
00012502: xor      bl, byte ptr [esi + 0x16730]
00012508: xor      bl, byte ptr [ecx + 0x16830]
0001250e: mov      byte ptr [ebp - 0x13], bl
00012511: mov      bl, byte ptr [edx + 0x16830]
00012517: mov      dl, byte ptr [edx + 0x16730]
0001251d: xor      bl, byte ptr [edi + 0x16630]
00012523: xor      dl, byte ptr [edi + 0x16830]
00012529: xor      bl, byte ptr [esi + 0x16930]
0001252f: xor      dl, byte ptr [esi + 0x16630]
00012535: xor      bl, byte ptr [ecx + 0x16730]
0001253b: xor      dl, byte ptr [ecx + 0x16930]
00012541: lea      ecx, [ebp - 0x14]
00012544: mov      byte ptr [ebp - 0xe], bl
00012547: mov      byte ptr [ebp - 9], dl
0001254a: sub      ecx, eax
0001254c: pop      esi
0001254d: movzx    edx, byte ptr [ecx + eax]
00012551: mov      dl, byte ptr [edx + 0x16230]
00012557: mov      byte ptr [eax], dl
00012559: inc      eax
0001255a: dec      esi
0001255b: jne      0x1254d
0001255d: mov      ecx, dword ptr [ebp - 4]
00012560: pop      edi
00012561: pop      esi
00012562: pop      ebx
00012563: call     0x153f7
00012568: leave    
00012569: ret      4
0001256c: int3     
0001256d: int3     
0001256e: int3     
0001256f: int3     
00012570: int3     
00012571: int3     
00012572: mov      edi, edi
00012574: push     ebp
00012575: mov      ebp, esp
00012577: mov      eax, dword ptr [ebp + 8]
0001257a: mov      ecx, dword ptr [ebp + 0xc]
0001257d: push     4
0001257f: pop      edx
00012580: sub      ecx, eax
00012582: push     esi
00012583: mov      esi, dword ptr [ecx + eax]
00012586: xor      dword ptr [eax], esi
00012588: add      eax, 4
0001258b: dec      edx
0001258c: jne      0x12583
0001258e: pop      esi
0001258f: pop      ebp
00012590: ret      8
00012593: int3     
00012594: int3     
00012595: int3     
00012596: int3     
00012597: int3     
00012598: mov      edi, edi
0001259a: push     ebp
0001259b: mov      ebp, esp
0001259d: push     ecx
0001259e: push     ecx
0001259f: push     ebx
000125a0: push     esi
000125a1: mov      esi, dword ptr [ebp + 0xc]
000125a4: push     edi
000125a5: mov      edi, dword ptr [ebp + 8]
000125a8: push     4
000125aa: pop      edx
000125ab: lea      ecx, [edi + 3]
000125ae: lea      eax, [esi + 1]
000125b1: sub      edi, esi
000125b3: mov      dword ptr [ebp + 8], edx
000125b6: mov      bl, byte ptr [ecx - 3]
000125b9: mov      byte ptr [eax - 1], bl
000125bc: mov      bl, byte ptr [edi + eax]
000125bf: mov      byte ptr [eax], bl
000125c1: mov      bl, byte ptr [ecx - 1]
000125c4: mov      byte ptr [eax + 1], bl
000125c7: mov      bl, byte ptr [ecx]
000125c9: mov      byte ptr [eax + 2], bl
000125cc: add      ecx, edx
000125ce: add      eax, edx
000125d0: dec      dword ptr [ebp + 8]
000125d3: jne      0x125b6
000125d5: mov      dword ptr [ebp - 8], edx
000125d8: lea      eax, [esi + 0xd]
000125db: test     byte ptr [ebp - 8], 3
000125df: mov      cl, byte ptr [eax]
000125e1: mov      dl, byte ptr [eax - 1]
000125e4: mov      byte ptr [ebp + 0xb], cl
000125e7: mov      cl, byte ptr [eax + 1]
000125ea: mov      byte ptr [ebp + 0xf], cl
000125ed: mov      cl, byte ptr [eax + 2]
000125f0: jne      0x1262e
000125f2: movzx    esi, byte ptr [ebp + 0xb]
000125f6: mov      byte ptr [ebp - 1], cl
000125f9: movzx    ecx, dl
000125fc: mov      edx, dword ptr [ebp - 8]
000125ff: mov      cl, byte ptr [ecx + 0x16130]
00012605: shr      edx, 2
00012608: mov      dl, byte ptr [edx + 0x1a000]
0001260e: xor      dl, byte ptr [esi + 0x16130]
00012614: movzx    esi, byte ptr [ebp + 0xf]
00012618: mov      bl, byte ptr [esi + 0x16130]
0001261e: movzx    esi, byte ptr [ebp - 1]
00012622: mov      byte ptr [ebp + 0xb], bl
00012625: mov      bl, byte ptr [esi + 0x16130]
0001262b: mov      byte ptr [ebp + 0xf], bl
0001262e: mov      bl, byte ptr [eax - 0xd]
00012631: xor      bl, dl
00012633: mov      dl, byte ptr [eax - 0xc]
00012636: xor      dl, byte ptr [ebp + 0xb]
00012639: mov      byte ptr [eax + 3], bl
0001263c: mov      byte ptr [eax + 4], dl
0001263f: mov      dl, byte ptr [eax - 0xb]
00012642: xor      dl, byte ptr [ebp + 0xf]
00012645: add      eax, 4
00012648: mov      byte ptr [eax + 1], dl
0001264b: mov      dl, byte ptr [eax - 0xe]
0001264e: xor      dl, cl
00012650: inc      dword ptr [ebp - 8]
00012653: cmp      dword ptr [ebp - 8], 0x2c
00012657: mov      byte ptr [eax + 2], dl
0001265a: jb       0x125db
00012660: pop      edi
00012661: pop      esi
00012662: pop      ebx
00012663: leave    
00012664: ret      8
00012667: int3     
00012668: int3     
00012669: int3     
0001266a: int3     
0001266b: int3     
0001266c: mov      edi, edi
0001266e: push     ebp
0001266f: mov      ebp, esp
00012671: sub      esp, 0x14
00012674: mov      eax, dword ptr [0x1a0e4]
00012679: push     ebx
0001267a: mov      ebx, dword ptr [ebp + 0xc]
0001267d: push     esi
0001267e: mov      esi, dword ptr [ebp + 0x10]
00012681: mov      dword ptr [ebp - 4], eax
00012684: mov      eax, dword ptr [ebp + 8]
00012687: push     edi
00012688: xor      edi, edi
0001268a: mov      dl, byte ptr [eax]
0001268c: mov      ecx, edi
0001268e: shl      ecx, 2
00012691: inc      eax
00012692: mov      byte ptr [ebp + ecx - 0x14], dl
00012696: mov      dl, byte ptr [eax]
00012698: inc      eax
00012699: mov      byte ptr [ebp + ecx - 0x13], dl
0001269d: mov      dl, byte ptr [eax]
0001269f: inc      eax
000126a0: mov      byte ptr [ebp + ecx - 0x12], dl
000126a4: mov      dl, byte ptr [eax]
000126a6: inc      eax
000126a7: inc      edi
000126a8: cmp      edi, 4
000126ab: mov      byte ptr [ebp + ecx - 0x11], dl
000126af: jb       0x1268a
000126b1: push     ebx
000126b2: lea      eax, [ebp - 0x14]
000126b5: push     eax
000126b6: call     0x12572
000126bb: xor      edi, edi
000126bd: inc      edi
000126be: add      ebx, 0x10
000126c1: cmp      edi, 0xa
000126c4: lea      eax, [ebp - 0x14]
000126c7: push     eax
000126c8: jae      0x126d1
000126ca: call     0x120fa
000126cf: jmp      0x126d6
000126d1: call     0x11f3a
000126d6: push     ebx
000126d7: lea      eax, [ebp - 0x14]
000126da: push     eax
000126db: call     0x12572
000126e0: inc      edi
000126e1: add      ebx, 0x10
000126e4: cmp      edi, 0xb
000126e7: jb       0x126c1
000126e9: xor      ecx, ecx
000126eb: mov      eax, ecx
000126ed: shl      eax, 2
000126f0: mov      dl, byte ptr [ebp + eax - 0x14]
000126f4: mov      byte ptr [esi], dl
000126f6: mov      dl, byte ptr [ebp + eax - 0x13]
000126fa: inc      esi
000126fb: mov      byte ptr [esi], dl
000126fd: mov      dl, byte ptr [ebp + eax - 0x12]
00012701: mov      al, byte ptr [ebp + eax - 0x11]
00012705: inc      esi
00012706: mov      byte ptr [esi], dl
00012708: inc      esi
00012709: mov      byte ptr [esi], al
0001270b: inc      esi
0001270c: inc      ecx
0001270d: cmp      ecx, 4
00012710: jb       0x126eb
00012712: mov      ecx, dword ptr [ebp - 4]
00012715: pop      edi
00012716: pop      esi
00012717: pop      ebx
00012718: call     0x153f7
0001271d: leave    
0001271e: ret      0xc
00012721: int3     
00012722: int3     
00012723: int3     
00012724: int3     
00012725: int3     
00012726: mov      edi, edi
00012728: push     ebp
00012729: mov      ebp, esp
0001272b: sub      esp, 0x14
0001272e: mov      eax, dword ptr [0x1a0e4]
00012733: mov      edx, dword ptr [ebp + 0xc]
00012736: push     esi
00012737: mov      esi, dword ptr [ebp + 0x10]
0001273a: push     edi
0001273b: mov      dword ptr [ebp - 4], eax
0001273e: mov      eax, dword ptr [ebp + 8]
00012741: xor      edi, edi
00012743: push     ebx
00012744: mov      bl, byte ptr [eax]
00012746: mov      ecx, edi
00012748: shl      ecx, 2
0001274b: inc      eax
0001274c: mov      byte ptr [ebp + ecx - 0x14], bl
00012750: mov      bl, byte ptr [eax]
00012752: inc      eax
00012753: mov      byte ptr [ebp + ecx - 0x13], bl
00012757: mov      bl, byte ptr [eax]
00012759: inc      eax
0001275a: mov      byte ptr [ebp + ecx - 0x12], bl
0001275e: mov      bl, byte ptr [eax]
00012760: inc      eax
00012761: inc      edi
00012762: cmp      edi, 4
00012765: mov      byte ptr [ebp + ecx - 0x11], bl
00012769: jb       0x12744
0001276b: lea      edi, [edx + 0xa0]
00012771: push     edi
00012772: lea      eax, [ebp - 0x14]
00012775: push     eax
00012776: call     0x12572
0001277b: push     0xa
0001277d: pop      ebx
0001277e: lea      eax, [ebp - 0x14]
00012781: push     eax
00012782: call     0x1201a
00012787: sub      edi, 0x10
0001278a: push     edi
0001278b: lea      eax, [ebp - 0x14]
0001278e: push     eax
0001278f: dec      ebx
00012790: call     0x12572
00012795: test     ebx, ebx
00012797: je       0x127a4
00012799: lea      eax, [ebp - 0x14]
0001279c: push     eax
0001279d: call     0x12340
000127a2: jmp      0x12787
000127a4: xor      ecx, ecx
000127a6: pop      ebx
000127a7: mov      eax, ecx
000127a9: shl      eax, 2
000127ac: mov      dl, byte ptr [ebp + eax - 0x14]
000127b0: mov      byte ptr [esi], dl
000127b2: mov      dl, byte ptr [ebp + eax - 0x13]
000127b6: inc      esi
000127b7: mov      byte ptr [esi], dl
000127b9: mov      dl, byte ptr [ebp + eax - 0x12]
000127bd: mov      al, byte ptr [ebp + eax - 0x11]
000127c1: inc      esi
000127c2: mov      byte ptr [esi], dl
000127c4: inc      esi
000127c5: mov      byte ptr [esi], al
000127c7: inc      esi
000127c8: inc      ecx
000127c9: cmp      ecx, 4
000127cc: jb       0x127a7
000127ce: mov      ecx, dword ptr [ebp - 4]
000127d1: pop      edi
000127d2: pop      esi
000127d3: call     0x153f7
000127d8: leave    
000127d9: ret      0xc
000127dc: int3     
000127dd: int3     
000127de: int3     
000127df: int3     
000127e0: int3     
000127e1: int3     
000127e2: mov      edi, edi
000127e4: push     ebp
000127e5: mov      ebp, esp
000127e7: xor      ecx, ecx
000127e9: cmp      dword ptr [ebp + 0x10], ecx
000127ec: jle      0x12811
000127ee: push     esi
000127ef: mov      esi, dword ptr [ebp + 8]
000127f2: push     edi
000127f3: mov      edi, dword ptr [ebp + 0xc]
000127f6: sub      esi, edi
000127f8: mov      edx, ecx
000127fa: and      edx, 7
000127fd: mov      dl, byte ptr [ebp + edx + 0x14]
00012801: lea      eax, [ecx + edi]
00012804: xor      dl, byte ptr [esi + eax]
00012807: inc      ecx
00012808: cmp      ecx, dword ptr [ebp + 0x10]
0001280b: mov      byte ptr [eax], dl
0001280d: jl       0x127f8
0001280f: pop      edi
00012810: pop      esi
00012811: pop      ebp
00012812: ret      0x14
00012815: int3     
00012816: int3     
00012817: int3     
00012818: int3     
00012819: int3     
0001281a: mov      edi, edi
0001281c: push     ebp
0001281d: mov      ebp, esp
0001281f: sub      esp, 0x178
00012825: mov      eax, dword ptr [0x1a0e4]
0001282a: mov      dword ptr [ebp - 4], eax
0001282d: mov      eax, dword ptr [ebp + 0x20]
00012830: push     ebx
00012831: mov      ebx, dword ptr [ebp + 0x10]
00012834: push     esi
00012835: mov      dword ptr [ebp - 0x178], eax
0001283b: xor      ecx, ecx
0001283d: xor      edx, edx
0001283f: mov      eax, ecx
00012841: div      dword ptr [ebp + 0x1c]
00012844: mov      eax, dword ptr [ebp + 0x18]
00012847: mov      al, byte ptr [edx + eax]
0001284a: xor      al, byte ptr [ecx + 0x16120]
00012850: inc      ecx
00012851: cmp      ecx, 0x10
00012854: mov      byte ptr [ebp + ecx - 0x15], al
00012858: jb       0x1283d
0001285a: mov      esi, dword ptr [ebp + 0x14]
0001285d: shr      esi, 4
00012860: test     dword ptr [ebp + 0x14], 0xf
00012867: je       0x1286d
00012869: xor      al, al
0001286b: jmp      0x128c9
0001286d: lea      eax, [ebp - 0xc4]
00012873: push     eax
00012874: lea      eax, [ebp - 0x14]
00012877: push     eax
00012878: call     0x12598
0001287d: test     esi, esi
0001287f: jbe      0x128c7
00012881: push     dword ptr [ebp + 0xc]
00012884: lea      eax, [ebp - 0x174]
0001288a: push     dword ptr [ebp + 8]
0001288d: push     0xb0
00012892: push     eax
00012893: lea      eax, [ebp - 0xc4]
00012899: push     eax
0001289a: call     0x127e2
0001289f: push     dword ptr [ebp - 0x178]
000128a5: lea      eax, [ebp - 0x174]
000128ab: push     eax
000128ac: push     ebx
000128ad: call     0x12726
000128b2: add      dword ptr [ebp - 0x178], 0x10
000128b9: add      ebx, 0x10
000128bc: add      dword ptr [ebp + 8], 0x10
000128c0: adc      dword ptr [ebp + 0xc], 0
000128c4: dec      esi
000128c5: jne      0x12881
000128c7: mov      al, 1
000128c9: mov      ecx, dword ptr [ebp - 4]
000128cc: pop      esi
000128cd: pop      ebx
000128ce: call     0x153f7
000128d3: leave    
000128d4: ret      0x1c
000128d7: int3     
000128d8: int3     
000128d9: int3     
000128da: int3     
000128db: int3     
000128dc: mov      edi, edi
000128de: push     ebp
000128df: mov      ebp, esp
000128e1: sub      esp, 0x178
000128e7: mov      eax, dword ptr [0x1a0e4]
000128ec: mov      dword ptr [ebp - 4], eax
000128ef: mov      eax, dword ptr [ebp + 0x20]
000128f2: push     ebx
000128f3: mov      ebx, dword ptr [ebp + 0x10]
000128f6: push     esi
000128f7: mov      dword ptr [ebp - 0x178], eax
000128fd: xor      ecx, ecx
000128ff: xor      edx, edx
00012901: mov      eax, ecx
00012903: div      dword ptr [ebp + 0x1c]
00012906: mov      eax, dword ptr [ebp + 0x18]
00012909: mov      al, byte ptr [edx + eax]
0001290c: xor      al, byte ptr [ecx + 0x16120]
00012912: inc      ecx
00012913: cmp      ecx, 0x10
00012916: mov      byte ptr [ebp + ecx - 0x15], al
0001291a: jb       0x128ff
0001291c: mov      esi, dword ptr [ebp + 0x14]
0001291f: shr      esi, 4
00012922: test     dword ptr [ebp + 0x14], 0xf
00012929: je       0x1292f
0001292b: xor      al, al
0001292d: jmp      0x1298b
0001292f: lea      eax, [ebp - 0xc4]
00012935: push     eax
00012936: lea      eax, [ebp - 0x14]
00012939: push     eax
0001293a: call     0x12598
0001293f: test     esi, esi
00012941: jbe      0x12989
00012943: push     dword ptr [ebp + 0xc]
00012946: lea      eax, [ebp - 0x174]
0001294c: push     dword ptr [ebp + 8]
0001294f: push     0xb0
00012954: push     eax
00012955: lea      eax, [ebp - 0xc4]
0001295b: push     eax
0001295c: call     0x127e2
00012961: push     dword ptr [ebp - 0x178]
00012967: lea      eax, [ebp - 0x174]
0001296d: push     eax
0001296e: push     ebx
0001296f: call     0x1266c
00012974: add      dword ptr [ebp - 0x178], 0x10
0001297b: add      ebx, 0x10
0001297e: add      dword ptr [ebp + 8], 0x10
00012982: adc      dword ptr [ebp + 0xc], 0
00012986: dec      esi
00012987: jne      0x12943
00012989: mov      al, 1
0001298b: mov      ecx, dword ptr [ebp - 4]
0001298e: pop      esi
0001298f: pop      ebx
00012990: call     0x153f7
00012995: leave    
00012996: ret      0x1c
00012999: int3     
0001299a: int3     
0001299b: int3     
0001299c: int3     
0001299d: int3     
0001299e: mov      edi, edi
000129a0: push     ebp
000129a1: mov      ebp, esp
000129a3: push     ecx
000129a4: push     ecx
000129a5: push     esi
000129a6: xor      esi, esi
000129a8: xor      eax, eax
000129aa: xor      ecx, ecx
000129ac: mov      edx, dword ptr [ebp + 8]
000129af: shr      edx, cl
000129b1: mov      byte ptr [ebp + eax - 4], dl
000129b5: movzx    edx, dl
000129b8: mov      dl, byte ptr [edx + 0x16a30]
000129be: mov      byte ptr [ebp + eax - 8], dl
000129c2: movzx    edx, dl
000129c5: shl      edx, cl
000129c7: add      ecx, 8
000129ca: or       esi, edx
000129cc: inc      eax
000129cd: cmp      ecx, 0x20
000129d0: jl       0x129ac
000129d2: mov      eax, esi
000129d4: shl      eax, 0x12
000129d7: mov      ecx, esi
000129d9: shr      ecx, 0xe
000129dc: or       eax, ecx
000129de: mov      ecx, esi
000129e0: shl      ecx, 0x18
000129e3: mov      edx, esi
000129e5: shr      edx, 8
000129e8: or       ecx, edx
000129ea: xor      eax, ecx
000129ec: mov      ecx, esi
000129ee: shr      ecx, 0x16
000129f1: mov      edx, esi
000129f3: shl      edx, 0xa
000129f6: or       ecx, edx
000129f8: xor      eax, ecx
000129fa: mov      ecx, esi
000129fc: mov      edx, esi
000129fe: shr      ecx, 0x1e
00012a01: shl      edx, 2
00012a04: or       ecx, edx
00012a06: xor      eax, ecx
00012a08: xor      eax, esi
00012a0a: pop      esi
00012a0b: leave    
00012a0c: ret      4
00012a0f: int3     
00012a10: int3     
00012a11: int3     
00012a12: int3     
00012a13: int3     
00012a14: mov      edi, edi
00012a16: push     ebp
00012a17: mov      ebp, esp
00012a19: push     ecx
00012a1a: push     ecx
00012a1b: push     esi
00012a1c: xor      esi, esi
00012a1e: xor      eax, eax
00012a20: xor      ecx, ecx
00012a22: mov      edx, dword ptr [ebp + 8]
00012a25: shr      edx, cl
00012a27: mov      byte ptr [ebp + eax - 4], dl
00012a2b: movzx    edx, dl
00012a2e: mov      dl, byte ptr [edx + 0x16a30]
00012a34: mov      byte ptr [ebp + eax - 8], dl
00012a38: movzx    edx, dl
00012a3b: shl      edx, cl
00012a3d: add      ecx, 8
00012a40: or       esi, edx
00012a42: inc      eax
00012a43: cmp      ecx, 0x20
00012a46: jl       0x12a22
00012a48: mov      eax, esi
00012a4a: mov      ecx, esi
00012a4c: shl      ecx, 0xd
00012a4f: shr      eax, 0x13
00012a52: or       eax, ecx
00012a54: mov      ecx, esi
00012a56: mov      edx, esi
00012a58: shl      ecx, 0x17
00012a5b: shr      edx, 9
00012a5e: or       ecx, edx
00012a60: xor      eax, ecx
00012a62: xor      eax, esi
00012a64: pop      esi
00012a65: leave    
00012a66: ret      4
00012a69: int3     
00012a6a: int3     
00012a6b: int3     
00012a6c: int3     
00012a6d: int3     
00012a6e: mov      edi, edi
00012a70: push     ebp
00012a71: mov      ebp, esp
00012a73: sub      esp, 0x14
00012a76: and      dword ptr [ebp - 0x14], 0
00012a7a: mov      edx, dword ptr [ebp + 8]
00012a7d: push     ebx
00012a7e: push     esi
00012a7f: push     edi
00012a80: xor      eax, eax
00012a82: lea      edi, [ebp - 0x10]
00012a85: stosd    dword ptr es:[edi], eax
00012a86: stosd    dword ptr es:[edi], eax
00012a87: sub      edx, 0x1a010
00012a8d: stosd    dword ptr es:[edi], eax
00012a8e: xor      ecx, ecx
00012a90: lea      eax, [ecx + 0x1a010]
00012a96: mov      esi, dword ptr [edx + eax]
00012a99: xor      esi, dword ptr [eax]
00012a9b: add      ecx, 4
00012a9e: cmp      ecx, 0x10
00012aa1: mov      dword ptr [ebp + ecx - 0x18], esi
00012aa5: jl       0x12a90
00012aa7: mov      ecx, dword ptr [ebp + 0xc]
00012aaa: xor      eax, eax
00012aac: mov      dword ptr [ebp + 8], 0x1a020
00012ab3: sub      dword ptr [ebp + 8], ecx
00012ab6: mov      dword ptr [ebp - 4], eax
00012ab9: mov      dword ptr [ebp + 0xc], ecx
00012abc: lea      ecx, [eax + 2]
00012abf: cdq      
00012ac0: push     4
00012ac2: pop      esi
00012ac3: idiv     esi
00012ac5: push     4
00012ac7: pop      edi
00012ac8: lea      eax, [ecx - 1]
00012acb: push     4
00012acd: pop      ebx
00012ace: push     4
00012ad0: lea      esi, [ebp + edx*4 - 0x14]
00012ad4: cdq      
00012ad5: idiv     edi
00012ad7: lea      eax, [ecx + 1]
00012ada: mov      edi, edx
00012adc: cdq      
00012add: idiv     ebx
00012adf: mov      ebx, dword ptr [ebp + edi*4 - 0x14]
00012ae3: mov      eax, ecx
00012ae5: pop      ecx
00012ae6: mov      edi, dword ptr [ebp + 0xc]
00012ae9: xor      ebx, dword ptr [ebp + edx*4 - 0x14]
00012aed: cdq      
00012aee: idiv     ecx
00012af0: mov      eax, dword ptr [ebp + 8]
00012af3: xor      ebx, dword ptr [ebp + edx*4 - 0x14]
00012af7: xor      ebx, dword ptr [eax + edi]
00012afa: push     ebx
00012afb: call     0x12a14
00012b00: xor      dword ptr [esi], eax
00012b02: mov      eax, dword ptr [ebp - 4]
00012b05: mov      esi, dword ptr [esi]
00012b07: inc      eax
00012b08: mov      dword ptr [edi], esi
00012b0a: add      edi, 4
00012b0d: cmp      eax, 0x20
00012b10: mov      dword ptr [ebp - 4], eax
00012b13: mov      dword ptr [ebp + 0xc], edi
00012b16: jl       0x12abc
00012b18: pop      edi
00012b19: pop      esi
00012b1a: pop      ebx
00012b1b: leave    
00012b1c: ret      8
00012b1f: int3     
00012b20: int3     
00012b21: int3     
00012b22: int3     
00012b23: int3     
00012b24: mov      edi, edi
00012b26: push     ebp
00012b27: mov      ebp, esp
00012b29: sub      esp, 0x10
00012b2c: push     esi
00012b2d: mov      esi, dword ptr [ebp + 8]
00012b30: push     edi
00012b31: lea      edi, [ebp - 0x10]
00012b34: movsd    dword ptr es:[edi], dword ptr [esi]
00012b35: movsd    dword ptr es:[edi], dword ptr [esi]
00012b36: movsd    dword ptr es:[edi], dword ptr [esi]
00012b37: movsd    dword ptr es:[edi], dword ptr [esi]
00012b38: xor      edi, edi
00012b3a: mov      dword ptr [ebp + 8], edi
00012b3d: push     ebx
00012b3e: push     4
00012b40: pop      esi
00012b41: mov      eax, edi
00012b43: cdq      
00012b44: idiv     esi
00012b46: lea      ecx, [edi + 2]
00012b49: push     4
00012b4b: pop      edi
00012b4c: lea      eax, [ecx - 1]
00012b4f: push     4
00012b51: pop      ebx
00012b52: push     4
00012b54: lea      esi, [ebp + edx*4 - 0x10]
00012b58: cdq      
00012b59: idiv     edi
00012b5b: lea      eax, [ecx + 1]
00012b5e: mov      edi, edx
00012b60: cdq      
00012b61: idiv     ebx
00012b63: mov      ebx, dword ptr [ebp + edi*4 - 0x10]
00012b67: mov      eax, ecx
00012b69: pop      ecx
00012b6a: mov      edi, dword ptr [ebp + 8]
00012b6d: xor      ebx, dword ptr [ebp + edx*4 - 0x10]
00012b71: cdq      
00012b72: idiv     ecx
00012b74: mov      eax, dword ptr [ebp + 0xc]
00012b77: xor      ebx, dword ptr [ebp + edx*4 - 0x10]
00012b7b: xor      ebx, dword ptr [eax + edi*4]
00012b7e: push     ebx
00012b7f: call     0x1299e
00012b84: xor      dword ptr [esi], eax
00012b86: inc      edi
00012b87: cmp      edi, 0x20
00012b8a: mov      dword ptr [ebp + 8], edi
00012b8d: jl       0x12b3e
00012b8f: xor      ecx, ecx
00012b91: lea      eax, [ebp - 4]
00012b94: pop      ebx
00012b95: mov      edx, dword ptr [eax]
00012b97: mov      esi, dword ptr [ebp + 0x10]
00012b9a: mov      dword ptr [esi + ecx*4], edx
00012b9d: inc      ecx
00012b9e: sub      eax, 4
00012ba1: cmp      ecx, 4
00012ba4: jl       0x12b95
00012ba6: pop      edi
00012ba7: pop      esi
00012ba8: leave    
00012ba9: ret      0xc
00012bac: int3     
00012bad: int3     
00012bae: int3     
00012baf: int3     
00012bb0: int3     
00012bb1: int3     
00012bb2: mov      edi, edi
00012bb4: push     ebp
00012bb5: mov      ebp, esp
00012bb7: sub      esp, 0x14
00012bba: mov      ecx, dword ptr [ebp + 0xc]
00012bbd: push     esi
00012bbe: mov      esi, dword ptr [ebp + 8]
00012bc1: push     edi
00012bc2: lea      edi, [ebp - 0x14]
00012bc5: movsd    dword ptr es:[edi], dword ptr [esi]
00012bc6: movsd    dword ptr es:[edi], dword ptr [esi]
00012bc7: movsd    dword ptr es:[edi], dword ptr [esi]
00012bc8: xor      eax, eax
00012bca: add      ecx, 0x7c
00012bcd: movsd    dword ptr es:[edi], dword ptr [esi]
00012bce: mov      dword ptr [ebp - 4], eax
00012bd1: mov      dword ptr [ebp + 8], ecx
00012bd4: push     ebx
00012bd5: lea      ecx, [eax + 2]
00012bd8: cdq      
00012bd9: push     4
00012bdb: pop      esi
00012bdc: idiv     esi
00012bde: push     4
00012be0: pop      edi
00012be1: lea      eax, [ecx - 1]
00012be4: push     4
00012be6: pop      ebx
00012be7: push     ebx
00012be8: lea      esi, [ebp + edx*4 - 0x14]
00012bec: cdq      
00012bed: idiv     edi
00012bef: lea      eax, [ecx + 1]
00012bf2: mov      edi, edx
00012bf4: cdq      
00012bf5: idiv     ebx
00012bf7: mov      edi, dword ptr [ebp + edi*4 - 0x14]
00012bfb: mov      eax, ecx
00012bfd: pop      ecx
00012bfe: xor      edi, dword ptr [ebp + edx*4 - 0x14]
00012c02: cdq      
00012c03: idiv     ecx
00012c05: mov      eax, dword ptr [ebp + 8]
00012c08: xor      edi, dword ptr [ebp + edx*4 - 0x14]
00012c0c: xor      edi, dword ptr [eax]
00012c0e: push     edi
00012c0f: call     0x1299e
00012c14: xor      dword ptr [esi], eax
00012c16: mov      eax, dword ptr [ebp - 4]
00012c19: sub      dword ptr [ebp + 8], ebx
00012c1c: inc      eax
00012c1d: cmp      eax, 0x20
00012c20: mov      dword ptr [ebp - 4], eax
00012c23: jl       0x12bd5
00012c25: xor      ecx, ecx
00012c27: lea      eax, [ebp - 8]
00012c2a: pop      ebx
00012c2b: mov      edx, dword ptr [eax]
00012c2d: mov      esi, dword ptr [ebp + 0x10]
00012c30: mov      dword ptr [esi + ecx*4], edx
00012c33: inc      ecx
00012c34: sub      eax, 4
00012c37: cmp      ecx, 4
00012c3a: jl       0x12c2b
00012c3c: pop      edi
00012c3d: pop      esi
00012c3e: leave    
00012c3f: ret      0xc
00012c42: int3     
00012c43: int3     
00012c44: int3     
00012c45: int3     
00012c46: int3     
00012c47: int3     
00012c48: mov      edi, edi
00012c4a: push     ebp
00012c4b: mov      ebp, esp
00012c4d: cmp      dword ptr [ebp + 0x10], 0
00012c51: jle      0x12c89
00012c53: mov      edx, dword ptr [ebp + 0xc]
00012c56: push     esi
00012c57: mov      esi, dword ptr [ebp + 8]
00012c5a: push     edi
00012c5b: mov      edi, edx
00012c5d: lea      eax, [esi + 2]
00012c60: sub      edi, esi
00012c62: mov      esi, dword ptr [ebp + 0x10]
00012c65: lea      ecx, [edx + 3]
00012c68: mov      dl, byte ptr [eax + 1]
00012c6b: mov      byte ptr [ecx - 3], dl
00012c6e: mov      dl, byte ptr [eax]
00012c70: mov      byte ptr [ecx - 2], dl
00012c73: mov      dl, byte ptr [eax - 1]
00012c76: mov      byte ptr [edi + eax], dl
00012c79: mov      dl, byte ptr [eax - 2]
00012c7c: mov      byte ptr [ecx], dl
00012c7e: add      eax, 4
00012c81: add      ecx, 4
00012c84: dec      esi
00012c85: jne      0x12c68
00012c87: pop      edi
00012c88: pop      esi
00012c89: pop      ebp
00012c8a: ret      0xc
00012c8d: int3     
00012c8e: int3     
00012c8f: int3     
00012c90: int3     
00012c91: int3     
00012c92: mov      edi, edi
00012c94: push     ebp
00012c95: mov      ebp, esp
00012c97: sub      esp, 0xa0
00012c9d: push     4
00012c9f: lea      eax, [ebp - 0x20]
00012ca2: push     eax
00012ca3: push     dword ptr [ebp + 8]
00012ca6: call     0x12c48
00012cab: push     4
00012cad: lea      eax, [ebp - 0x10]
00012cb0: push     eax
00012cb1: push     dword ptr [ebp + 0xc]
00012cb4: call     0x12c48
00012cb9: lea      eax, [ebp - 0xa0]
00012cbf: push     eax
00012cc0: lea      eax, [ebp - 0x10]
00012cc3: push     eax
00012cc4: call     0x12a6e
00012cc9: lea      eax, [ebp - 0x10]
00012ccc: push     eax
00012ccd: lea      eax, [ebp - 0xa0]
00012cd3: push     eax
00012cd4: lea      eax, [ebp - 0x20]
00012cd7: push     eax
00012cd8: call     0x12b24
00012cdd: push     4
00012cdf: push     dword ptr [ebp + 0x10]
00012ce2: lea      eax, [ebp - 0x10]
00012ce5: push     eax
00012ce6: call     0x12c48
00012ceb: leave    
00012cec: ret      0xc
00012cef: int3     
00012cf0: int3     
00012cf1: int3     
00012cf2: int3     
00012cf3: int3     
00012cf4: mov      edi, edi
00012cf6: push     ebp
00012cf7: mov      ebp, esp
00012cf9: sub      esp, 0xa0
00012cff: push     4
00012d01: lea      eax, [ebp - 0x20]
00012d04: push     eax
00012d05: push     dword ptr [ebp + 8]
00012d08: call     0x12c48
00012d0d: push     4
00012d0f: lea      eax, [ebp - 0x10]
00012d12: push     eax
00012d13: push     dword ptr [ebp + 0xc]
00012d16: call     0x12c48
00012d1b: lea      eax, [ebp - 0xa0]
00012d21: push     eax
00012d22: lea      eax, [ebp - 0x10]
00012d25: push     eax
00012d26: call     0x12a6e
00012d2b: lea      eax, [ebp - 0x10]
00012d2e: push     eax
00012d2f: lea      eax, [ebp - 0xa0]
00012d35: push     eax
00012d36: lea      eax, [ebp - 0x20]
00012d39: push     eax
00012d3a: call     0x12bb2
00012d3f: push     4
00012d41: push     dword ptr [ebp + 0x10]
00012d44: lea      eax, [ebp - 0x10]
00012d47: push     eax
00012d48: call     0x12c48
00012d4d: leave    
00012d4e: ret      0xc
00012d51: int3     
00012d52: int3     
00012d53: int3     
00012d54: int3     
00012d55: int3     
00012d56: mov      edi, edi
00012d58: push     ebp
00012d59: mov      ebp, esp
00012d5b: sub      esp, 0x30
00012d5e: mov      eax, dword ptr [0x1a0e4]
00012d63: mov      dword ptr [ebp - 4], eax
00012d66: mov      eax, dword ptr [ebp + 0xc]
00012d69: push     ebx
00012d6a: mov      ebx, dword ptr [ebp + 8]
00012d6d: mov      dword ptr [ebp - 0x30], eax
00012d70: mov      eax, dword ptr [ebx]
00012d72: test     eax, eax
00012d74: je       0x12d80
00012d76: push     0x10
00012d78: cdq      
00012d79: pop      ecx
00012d7a: idiv     ecx
00012d7c: test     edx, edx
00012d7e: je       0x12d84
00012d80: xor      al, al
00012d82: jmp      0x12dc8
00012d84: test     eax, eax
00012d86: jle      0x12dc6
00012d88: and      dword ptr [ebp - 0x28], 0
00012d8c: push     esi
00012d8d: mov      dword ptr [ebp - 0x2c], eax
00012d90: push     edi
00012d91: mov      esi, dword ptr [ebx + 4]
00012d94: add      esi, dword ptr [ebp - 0x28]
00012d97: lea      edi, [ebp - 0x24]
00012d9a: movsd    dword ptr es:[edi], dword ptr [esi]
00012d9b: movsd    dword ptr es:[edi], dword ptr [esi]
00012d9c: lea      eax, [ebp - 0x14]
00012d9f: push     eax
00012da0: push     dword ptr [ebp - 0x30]
00012da3: movsd    dword ptr es:[edi], dword ptr [esi]
00012da4: lea      eax, [ebp - 0x24]
00012da7: push     eax
00012da8: movsd    dword ptr es:[edi], dword ptr [esi]
00012da9: call     0x12c92
00012dae: mov      edi, dword ptr [ebx + 4]
00012db1: add      edi, dword ptr [ebp - 0x28]
00012db4: add      dword ptr [ebp - 0x28], 0x10
00012db8: dec      dword ptr [ebp - 0x2c]
00012dbb: lea      esi, [ebp - 0x14]
00012dbe: movsd    dword ptr es:[edi], dword ptr [esi]
00012dbf: movsd    dword ptr es:[edi], dword ptr [esi]
00012dc0: movsd    dword ptr es:[edi], dword ptr [esi]
00012dc1: movsd    dword ptr es:[edi], dword ptr [esi]
00012dc2: jne      0x12d91
00012dc4: pop      edi
00012dc5: pop      esi
00012dc6: mov      al, 1
00012dc8: mov      ecx, dword ptr [ebp - 4]
00012dcb: pop      ebx
00012dcc: call     0x153f7
00012dd1: leave    
00012dd2: ret      8
00012dd5: int3     
00012dd6: int3     
00012dd7: int3     
00012dd8: int3     
00012dd9: int3     
00012dda: mov      edi, edi
00012ddc: push     ebp
00012ddd: mov      ebp, esp
00012ddf: sub      esp, 0x30
00012de2: mov      eax, dword ptr [0x1a0e4]
00012de7: mov      dword ptr [ebp - 4], eax
00012dea: mov      eax, dword ptr [ebp + 0xc]
00012ded: push     ebx
00012dee: mov      ebx, dword ptr [ebp + 8]
00012df1: mov      dword ptr [ebp - 0x30], eax
00012df4: mov      eax, dword ptr [ebx]
00012df6: test     eax, eax
00012df8: je       0x12e04
00012dfa: push     0x10
00012dfc: cdq      
00012dfd: pop      ecx
00012dfe: idiv     ecx
00012e00: test     edx, edx
00012e02: je       0x12e08
00012e04: xor      al, al
00012e06: jmp      0x12e4c
00012e08: test     eax, eax
00012e0a: jle      0x12e4a
00012e0c: and      dword ptr [ebp - 0x28], 0
00012e10: push     esi
00012e11: mov      dword ptr [ebp - 0x2c], eax
00012e14: push     edi
00012e15: mov      esi, dword ptr [ebx + 4]
00012e18: add      esi, dword ptr [ebp - 0x28]
00012e1b: lea      edi, [ebp - 0x24]
00012e1e: movsd    dword ptr es:[edi], dword ptr [esi]
00012e1f: movsd    dword ptr es:[edi], dword ptr [esi]
00012e20: lea      eax, [ebp - 0x14]
00012e23: push     eax
00012e24: push     dword ptr [ebp - 0x30]
00012e27: movsd    dword ptr es:[edi], dword ptr [esi]
00012e28: lea      eax, [ebp - 0x24]
00012e2b: push     eax
00012e2c: movsd    dword ptr es:[edi], dword ptr [esi]
00012e2d: call     0x12cf4
00012e32: mov      edi, dword ptr [ebx + 4]
00012e35: add      edi, dword ptr [ebp - 0x28]
00012e38: add      dword ptr [ebp - 0x28], 0x10
00012e3c: dec      dword ptr [ebp - 0x2c]
00012e3f: lea      esi, [ebp - 0x14]
00012e42: movsd    dword ptr es:[edi], dword ptr [esi]
00012e43: movsd    dword ptr es:[edi], dword ptr [esi]
00012e44: movsd    dword ptr es:[edi], dword ptr [esi]
00012e45: movsd    dword ptr es:[edi], dword ptr [esi]
00012e46: jne      0x12e15
00012e48: pop      edi
00012e49: pop      esi
00012e4a: mov      al, 1
00012e4c: mov      ecx, dword ptr [ebp - 4]
00012e4f: pop      ebx
00012e50: call     0x153f7
00012e55: leave    
00012e56: ret      8
00012e59: int3     
00012e5a: int3     
00012e5b: int3     
00012e5c: int3     
00012e5d: int3     
00012e5e: mov      edi, edi
00012e60: push     ebp
00012e61: mov      ebp, esp
00012e63: mov      eax, dword ptr [ebp + 8]
00012e66: and      dword ptr [eax + 0x14], 0
00012e6a: and      dword ptr [eax + 0x10], 0
00012e6e: mov      dword ptr [eax], 0x67452301
00012e74: mov      dword ptr [eax + 4], 0xefcdab89
00012e7b: mov      dword ptr [eax + 8], 0x98badcfe
00012e82: mov      dword ptr [eax + 0xc], 0x10325476
00012e89: pop      ebp
00012e8a: ret      4
00012e8d: int3     
00012e8e: int3     
00012e8f: int3     
00012e90: int3     
00012e91: int3     
00012e92: test     edx, edx
00012e94: jbe      0x12ec2
00012e96: push     esi
00012e97: lea      esi, [edx - 1]
00012e9a: shr      esi, 2
00012e9d: inc      ecx
00012e9e: add      eax, 2
00012ea1: inc      esi
00012ea2: mov      dl, byte ptr [eax - 2]
00012ea5: mov      byte ptr [ecx - 1], dl
00012ea8: mov      dl, byte ptr [eax - 1]
00012eab: mov      byte ptr [ecx], dl
00012ead: mov      dl, byte ptr [eax]
00012eaf: mov      byte ptr [ecx + 1], dl
00012eb2: mov      dl, byte ptr [eax + 1]
00012eb5: mov      byte ptr [ecx + 2], dl
00012eb8: add      eax, 4
00012ebb: add      ecx, 4
00012ebe: dec      esi
00012ebf: jne      0x12ea2
00012ec1: pop      esi
00012ec2: ret      
00012ec3: int3     
00012ec4: int3     
00012ec5: int3     
00012ec6: int3     
00012ec7: int3     
00012ec8: mov      edi, edi
00012eca: push     ebp
00012ecb: mov      ebp, esp
00012ecd: test     ecx, ecx
00012ecf: jbe      0x12ef4
00012ed1: mov      al, byte ptr [ebp + 8]
00012ed4: push     ebx
00012ed5: mov      bl, al
00012ed7: mov      bh, bl
00012ed9: push     edi
00012eda: mov      edi, edx
00012edc: mov      edx, ecx
00012ede: shr      ecx, 2
00012ee1: mov      eax, ebx
00012ee3: shl      eax, 0x10
00012ee6: mov      ax, bx
00012ee9: rep stosd dword ptr es:[edi], eax
00012eeb: mov      ecx, edx
00012eed: and      ecx, 3
00012ef0: rep stosb byte ptr es:[edi], al
00012ef2: pop      edi
00012ef3: pop      ebx
00012ef4: pop      ebp
00012ef5: ret      4
00012ef8: int3     
00012ef9: int3     
00012efa: int3     
00012efb: int3     
00012efc: int3     
00012efd: int3     
00012efe: mov      edi, edi
00012f00: push     ebp
00012f01: mov      ebp, esp
00012f03: sub      esp, 0x48
00012f06: mov      eax, dword ptr [ebp + 8]
00012f09: push     ebx
00012f0a: push     esi
00012f0b: push     edi
00012f0c: push     0x10
00012f0e: add      ecx, 2
00012f11: lea      esi, [ebp - 0x48]
00012f14: pop      edi
00012f15: movzx    ebx, byte ptr [ecx - 1]
00012f19: xor      edx, edx
00012f1b: mov      dh, byte ptr [ecx + 1]
00012f1e: mov      dl, byte ptr [ecx]
00012f20: add      ecx, 4
00012f23: shl      edx, 8
00012f26: or       edx, ebx
00012f28: movzx    ebx, byte ptr [ecx - 6]
00012f2c: shl      edx, 8
00012f2f: or       edx, ebx
00012f31: mov      dword ptr [esi], edx
00012f33: add      esi, 4
00012f36: dec      edi
00012f37: jne      0x12f15
00012f39: mov      esi, dword ptr [eax + 4]
00012f3c: mov      edi, dword ptr [eax + 8]
00012f3f: mov      edx, dword ptr [eax + 0xc]
00012f42: mov      eax, dword ptr [eax]
00012f44: mov      ebx, edi
00012f46: and      ebx, esi
00012f48: mov      ecx, esi
00012f4a: not      ecx
00012f4c: and      ecx, edx
00012f4e: or       ecx, ebx
00012f50: add      ecx, dword ptr [ebp - 0x48]
00012f53: mov      ebx, esi
00012f55: lea      ecx, [eax + ecx - 0x28955b88]
00012f5c: mov      eax, ecx
00012f5e: shr      eax, 0x19
00012f61: shl      ecx, 7
00012f64: or       eax, ecx
00012f66: add      eax, esi
00012f68: and      ebx, eax
00012f6a: mov      ecx, eax
00012f6c: not      ecx
00012f6e: and      ecx, edi
00012f70: or       ecx, ebx
00012f72: add      ecx, dword ptr [ebp - 0x44]
00012f75: lea      edx, [edx + ecx - 0x173848aa]
00012f7c: mov      ecx, edx
00012f7e: shl      edx, 0xc
00012f81: shr      ecx, 0x14
00012f84: or       ecx, edx
00012f86: add      ecx, eax
00012f88: mov      edx, ecx
00012f8a: not      edx
00012f8c: and      edx, esi
00012f8e: mov      ebx, ecx
00012f90: and      ebx, eax
00012f92: or       edx, ebx
00012f94: add      edx, dword ptr [ebp - 0x40]
00012f97: mov      ebx, ecx
00012f99: lea      edi, [edi + edx + 0x242070db]
00012fa0: mov      edx, edi
00012fa2: shl      edi, 0x11
00012fa5: shr      edx, 0xf
00012fa8: or       edx, edi
00012faa: add      edx, ecx
00012fac: mov      edi, edx
00012fae: not      edi
00012fb0: and      edi, eax
00012fb2: and      ebx, edx
00012fb4: or       edi, ebx
00012fb6: add      edi, dword ptr [ebp - 0x3c]
00012fb9: lea      esi, [esi + edi - 0x3e423112]
00012fc0: mov      edi, esi
00012fc2: shl      edi, 0x16
00012fc5: shr      esi, 0xa
00012fc8: or       edi, esi
00012fca: add      edi, edx
00012fcc: mov      dword ptr [ebp - 4], edi
00012fcf: not      edi
00012fd1: and      edi, ecx
00012fd3: mov      esi, edx
00012fd5: and      esi, dword ptr [ebp - 4]
00012fd8: or       edi, esi
00012fda: add      edi, dword ptr [ebp - 0x38]
00012fdd: lea      eax, [eax + edi - 0xa83f051]
00012fe4: mov      edi, dword ptr [ebp - 4]
00012fe7: mov      esi, eax
00012fe9: shl      eax, 7
00012fec: shr      esi, 0x19
00012fef: or       esi, eax
00012ff1: add      esi, edi
00012ff3: mov      eax, esi
00012ff5: not      eax
00012ff7: and      eax, edx
00012ff9: mov      ebx, edi
00012ffb: and      ebx, esi
00012ffd: or       eax, ebx
00012fff: add      eax, dword ptr [ebp - 0x34]
00013002: lea      ecx, [ecx + eax + 0x4787c62a]
00013009: mov      eax, ecx
0001300b: shr      eax, 0x14
0001300e: shl      ecx, 0xc
00013011: or       eax, ecx
00013013: add      eax, esi
00013015: mov      ecx, eax
00013017: not      ecx
00013019: and      ecx, edi
0001301b: mov      ebx, eax
0001301d: and      ebx, esi
0001301f: or       ecx, ebx
00013021: add      ecx, dword ptr [ebp - 0x30]
00013024: mov      ebx, eax
00013026: lea      edx, [edx + ecx - 0x57cfb9ed]
0001302d: mov      ecx, edx
0001302f: shl      edx, 0x11
00013032: shr      ecx, 0xf
00013035: or       ecx, edx
00013037: add      ecx, eax
00013039: and      ebx, ecx
0001303b: mov      edx, ecx
0001303d: not      edx
0001303f: and      edx, esi
00013041: or       edx, ebx
00013043: add      edx, dword ptr [ebp - 0x2c]
00013046: lea      edx, [edi + edx - 0x2b96aff]
0001304d: mov      edi, edx
0001304f: shl      edi, 0x16
00013052: shr      edx, 0xa
00013055: or       edi, edx
00013057: add      edi, ecx
00013059: mov      dword ptr [ebp - 4], edi
0001305c: mov      edx, ecx
0001305e: and      edx, dword ptr [ebp - 4]
00013061: not      edi
00013063: and      edi, eax
00013065: or       edi, edx
00013067: add      edi, dword ptr [ebp - 0x28]
0001306a: lea      esi, [esi + edi + 0x698098d8]
00013071: mov      edi, dword ptr [ebp - 4]
00013074: mov      edx, esi
00013076: shl      esi, 7
00013079: shr      edx, 0x19
0001307c: or       edx, esi
0001307e: add      edx, edi
00013080: mov      ebx, edi
00013082: and      ebx, edx
00013084: mov      esi, edx
00013086: not      esi
00013088: and      esi, ecx
0001308a: or       esi, ebx
0001308c: add      esi, dword ptr [ebp - 0x24]
0001308f: lea      eax, [eax + esi - 0x74bb0851]
00013096: mov      esi, eax
00013098: shl      eax, 0xc
0001309b: shr      esi, 0x14
0001309e: or       esi, eax
000130a0: add      esi, edx
000130a2: mov      eax, esi
000130a4: not      eax
000130a6: and      eax, edi
000130a8: mov      ebx, esi
000130aa: and      ebx, edx
000130ac: or       eax, ebx
000130ae: add      eax, dword ptr [ebp - 0x20]
000130b1: mov      ebx, esi
000130b3: lea      ecx, [ecx + eax - 0xa44f]
000130ba: mov      eax, ecx
000130bc: shl      ecx, 0x11
000130bf: shr      eax, 0xf
000130c2: or       eax, ecx
000130c4: add      eax, esi
000130c6: mov      ecx, eax
000130c8: not      ecx
000130ca: and      ecx, edx
000130cc: and      ebx, eax
000130ce: or       ecx, ebx
000130d0: add      ecx, dword ptr [ebp - 0x1c]
000130d3: lea      ecx, [edi + ecx - 0x76a32842]
000130da: mov      edi, ecx
000130dc: shl      edi, 0x16
000130df: shr      ecx, 0xa
000130e2: or       edi, ecx
000130e4: add      edi, eax
000130e6: mov      dword ptr [ebp - 4], edi
000130e9: not      edi
000130eb: and      edi, esi
000130ed: mov      ecx, eax
000130ef: and      ecx, dword ptr [ebp - 4]
000130f2: or       edi, ecx
000130f4: add      edi, dword ptr [ebp - 0x18]
000130f7: lea      edx, [edx + edi + 0x6b901122]
000130fe: mov      edi, dword ptr [ebp - 4]
00013101: mov      ecx, edx
00013103: shl      edx, 7
00013106: shr      ecx, 0x19
00013109: or       ecx, edx
0001310b: add      ecx, dword ptr [ebp - 4]
0001310e: and      edi, ecx
00013110: mov      edx, ecx
00013112: not      edx
00013114: and      edx, eax
00013116: or       edx, edi
00013118: add      edx, dword ptr [ebp - 0x14]
0001311b: lea      esi, [esi + edx - 0x2678e6d]
00013122: mov      edx, esi
00013124: shl      esi, 0xc
00013127: shr      edx, 0x14
0001312a: or       edx, esi
0001312c: add      edx, ecx
0001312e: mov      edi, edx
00013130: not      edi
00013132: mov      esi, edi
00013134: and      esi, dword ptr [ebp - 4]
00013137: mov      ebx, edx
00013139: and      ebx, ecx
0001313b: or       esi, ebx
0001313d: add      esi, dword ptr [ebp - 0x10]
00013140: mov      ebx, edx
00013142: lea      eax, [eax + esi - 0x5986bc72]
00013149: mov      esi, eax
0001314b: shl      eax, 0x11
0001314e: shr      esi, 0xf
00013151: or       esi, eax
00013153: add      esi, edx
00013155: and      ebx, esi
00013157: mov      dword ptr [ebp - 8], esi
0001315a: not      dword ptr [ebp - 8]
0001315d: mov      eax, dword ptr [ebp - 8]
00013160: and      eax, ecx
00013162: or       eax, ebx
00013164: add      eax, dword ptr [ebp - 0xc]
00013167: mov      ebx, dword ptr [ebp - 4]
0001316a: lea      ebx, [ebx + eax + 0x49b40821]
00013171: mov      eax, ebx
00013173: shr      ebx, 0xa
00013176: shl      eax, 0x16
00013179: or       eax, ebx
0001317b: mov      ebx, edx
0001317d: add      eax, esi
0001317f: and      edi, esi
00013181: and      ebx, eax
00013183: or       edi, ebx
00013185: add      edi, dword ptr [ebp - 0x44]
00013188: mov      ebx, esi
0001318a: lea      ecx, [ecx + edi - 0x9e1da9e]
00013191: mov      edi, ecx
00013193: shl      ecx, 5
00013196: shr      edi, 0x1b
00013199: or       edi, ecx
0001319b: mov      ecx, dword ptr [ebp - 8]
0001319e: and      ecx, eax
000131a0: add      edi, eax
000131a2: and      ebx, edi
000131a4: or       ecx, ebx
000131a6: add      ecx, dword ptr [ebp - 0x30]
000131a9: lea      edx, [edx + ecx - 0x3fbf4cc0]
000131b0: mov      ecx, edx
000131b2: shl      edx, 9
000131b5: shr      ecx, 0x17
000131b8: or       ecx, edx
000131ba: mov      edx, eax
000131bc: not      edx
000131be: add      ecx, edi
000131c0: and      edx, edi
000131c2: mov      ebx, ecx
000131c4: and      ebx, eax
000131c6: or       edx, ebx
000131c8: add      edx, dword ptr [ebp - 0x1c]
000131cb: lea      esi, [esi + edx + 0x265e5a51]
000131d2: mov      edx, esi
000131d4: shl      esi, 0xe
000131d7: shr      edx, 0x12
000131da: or       edx, esi
000131dc: add      edx, ecx
000131de: mov      esi, edi
000131e0: not      esi
000131e2: and      esi, ecx
000131e4: mov      ebx, edx
000131e6: and      ebx, edi
000131e8: or       esi, ebx
000131ea: add      esi, dword ptr [ebp - 0x48]
000131ed: mov      ebx, ecx
000131ef: lea      eax, [eax + esi - 0x16493856]
000131f6: mov      esi, eax
000131f8: shr      eax, 0xc
000131fb: shl      esi, 0x14
000131fe: or       esi, eax
00013200: add      esi, edx
00013202: mov      eax, ecx
00013204: and      ebx, esi
00013206: not      eax
00013208: and      eax, edx
0001320a: or       eax, ebx
0001320c: add      eax, dword ptr [ebp - 0x34]
0001320f: mov      ebx, edx
00013211: lea      edi, [edi + eax - 0x29d0efa3]
00013218: mov      eax, edi
0001321a: shl      edi, 5
0001321d: shr      eax, 0x1b
00013220: or       eax, edi
00013222: mov      edi, edx
00013224: add      eax, esi
00013226: not      edi
00013228: and      edi, esi
0001322a: and      ebx, eax
0001322c: or       edi, ebx
0001322e: add      edi, dword ptr [ebp - 0x20]
00013231: lea      ecx, [ecx + edi + 0x2441453]
00013238: mov      edi, ecx
0001323a: shl      ecx, 9
0001323d: shr      edi, 0x17
00013240: or       edi, ecx
00013242: mov      ecx, esi
00013244: add      edi, eax
00013246: not      ecx
00013248: and      ecx, eax
0001324a: mov      ebx, edi
0001324c: and      ebx, esi
0001324e: or       ecx, ebx
00013250: add      ecx, dword ptr [ebp - 0xc]
00013253: lea      edx, [edx + ecx - 0x275e197f]
0001325a: mov      ecx, edx
0001325c: shl      edx, 0xe
0001325f: shr      ecx, 0x12
00013262: or       ecx, edx
00013264: add      ecx, edi
00013266: mov      edx, eax
00013268: not      edx
0001326a: and      edx, edi
0001326c: mov      ebx, ecx
0001326e: and      ebx, eax
00013270: or       edx, ebx
00013272: add      edx, dword ptr [ebp - 0x38]
00013275: mov      ebx, edi
00013277: lea      esi, [esi + edx - 0x182c0438]
0001327e: mov      edx, esi
00013280: shr      esi, 0xc
00013283: shl      edx, 0x14
00013286: or       edx, esi
00013288: mov      esi, edi
0001328a: add      edx, ecx
0001328c: not      esi
0001328e: and      esi, ecx
00013290: and      ebx, edx
00013292: or       esi, ebx
00013294: add      esi, dword ptr [ebp - 0x24]
00013297: mov      ebx, ecx
00013299: lea      eax, [eax + esi + 0x21e1cde6]
000132a0: mov      esi, eax
000132a2: shl      eax, 5
000132a5: shr      esi, 0x1b
000132a8: or       esi, eax
000132aa: add      esi, edx
000132ac: and      ebx, esi
000132ae: mov      eax, ecx
000132b0: not      eax
000132b2: and      eax, edx
000132b4: or       eax, ebx
000132b6: add      eax, dword ptr [ebp - 0x10]
000132b9: lea      edi, [edi + eax - 0x3cc8f82a]
000132c0: mov      eax, edi
000132c2: shl      edi, 9
000132c5: shr      eax, 0x17
000132c8: or       eax, edi
000132ca: add      eax, esi
000132cc: mov      edi, edx
000132ce: mov      ebx, eax
000132d0: and      ebx, edx
000132d2: not      edi
000132d4: and      edi, esi
000132d6: or       edi, ebx
000132d8: add      edi, dword ptr [ebp - 0x3c]
000132db: lea      ecx, [ecx + edi - 0xb2af279]
000132e2: mov      edi, ecx
000132e4: shl      ecx, 0xe
000132e7: shr      edi, 0x12
000132ea: or       edi, ecx
000132ec: add      edi, eax
000132ee: mov      ecx, esi
000132f0: not      ecx
000132f2: and      ecx, eax
000132f4: mov      ebx, edi
000132f6: and      ebx, esi
000132f8: or       ecx, ebx
000132fa: add      ecx, dword ptr [ebp - 0x28]
000132fd: mov      ebx, eax
000132ff: lea      edx, [edx + ecx + 0x455a14ed]
00013306: mov      ecx, edx
00013308: shr      edx, 0xc
0001330b: shl      ecx, 0x14
0001330e: or       ecx, edx
00013310: mov      edx, eax
00013312: add      ecx, edi
00013314: not      edx
00013316: and      edx, edi
00013318: and      ebx, ecx
0001331a: or       edx, ebx
0001331c: add      edx, dword ptr [ebp - 0x14]
0001331f: mov      ebx, edi
00013321: lea      esi, [esi + edx - 0x561c16fb]
00013328: mov      edx, esi
0001332a: shl      esi, 5
0001332d: shr      edx, 0x1b
00013330: or       edx, esi
00013332: add      edx, ecx
00013334: mov      esi, edi
00013336: not      esi
00013338: and      esi, ecx
0001333a: and      ebx, edx
0001333c: or       esi, ebx
0001333e: add      esi, dword ptr [ebp - 0x40]
00013341: lea      eax, [eax + esi - 0x3105c08]
00013348: mov      esi, eax
0001334a: shl      eax, 9
0001334d: shr      esi, 0x17
00013350: or       esi, eax
00013352: add      esi, edx
00013354: mov      eax, ecx
00013356: not      eax
00013358: and      eax, edx
0001335a: mov      ebx, esi
0001335c: and      ebx, ecx
0001335e: or       eax, ebx
00013360: add      eax, dword ptr [ebp - 0x2c]
00013363: lea      edi, [edi + eax + 0x676f02d9]
0001336a: mov      eax, edi
0001336c: shl      edi, 0xe
0001336f: shr      eax, 0x12
00013372: or       eax, edi
00013374: add      eax, esi
00013376: mov      edi, edx
00013378: not      edi
0001337a: and      edi, esi
0001337c: mov      ebx, eax
0001337e: and      ebx, edx
00013380: or       edi, ebx
00013382: add      edi, dword ptr [ebp - 0x18]
00013385: lea      ecx, [ecx + edi - 0x72d5b376]
0001338c: mov      edi, ecx
0001338e: shr      ecx, 0xc
00013391: shl      edi, 0x14
00013394: or       edi, ecx
00013396: add      edi, eax
00013398: mov      ecx, esi
0001339a: xor      ecx, eax
0001339c: xor      ecx, edi
0001339e: add      ecx, dword ptr [ebp - 0x34]
000133a1: lea      edx, [edx + ecx - 0x5c6be]
000133a8: mov      ecx, edx
000133aa: shl      edx, 4
000133ad: shr      ecx, 0x1c
000133b0: or       ecx, edx
000133b2: add      ecx, edi
000133b4: mov      edx, eax
000133b6: xor      edx, edi
000133b8: xor      edx, ecx
000133ba: add      edx, dword ptr [ebp - 0x28]
000133bd: lea      esi, [esi + edx - 0x788e097f]
000133c4: mov      ebx, esi
000133c6: shl      esi, 0xb
000133c9: shr      ebx, 0x15
000133cc: or       ebx, esi
000133ce: add      ebx, ecx
000133d0: mov      edx, ebx
000133d2: xor      edx, edi
000133d4: xor      edx, ecx
000133d6: add      edx, dword ptr [ebp - 0x1c]
000133d9: lea      eax, [eax + edx + 0x6d9d6122]
000133e0: mov      esi, eax
000133e2: shl      eax, 0x10
000133e5: shr      esi, 0x10
000133e8: or       esi, eax
000133ea: add      esi, ebx
000133ec: mov      edx, ebx
000133ee: xor      edx, esi
000133f0: mov      eax, edx
000133f2: xor      eax, ecx
000133f4: add      eax, dword ptr [ebp - 0x10]
000133f7: lea      edi, [edi + eax - 0x21ac7f4]
000133fe: mov      eax, edi
00013400: shr      edi, 9
00013403: shl      eax, 0x17
00013406: or       eax, edi
00013408: add      eax, esi
0001340a: xor      edx, eax
0001340c: add      edx, dword ptr [ebp - 0x44]
0001340f: lea      ecx, [ecx + edx - 0x5b4115bc]
00013416: mov      edx, ecx
00013418: shl      ecx, 4
0001341b: shr      edx, 0x1c
0001341e: or       edx, ecx
00013420: add      edx, eax
00013422: mov      ecx, esi
00013424: xor      ecx, eax
00013426: xor      ecx, edx
00013428: add      ecx, dword ptr [ebp - 0x38]
0001342b: lea      ebx, [ebx + ecx + 0x4bdecfa9]
00013432: mov      edi, ebx
00013434: shr      edi, 0x15
00013437: shl      ebx, 0xb
0001343a: or       edi, ebx
0001343c: add      edi, edx
0001343e: mov      ecx, edi
00013440: xor      ecx, eax
00013442: xor      ecx, edx
00013444: add      ecx, dword ptr [ebp - 0x2c]
00013447: lea      ecx, [esi + ecx - 0x944b4a0]
0001344e: mov      esi, ecx
00013450: shl      ecx, 0x10
00013453: shr      esi, 0x10
00013456: or       esi, ecx
00013458: add      esi, edi
0001345a: mov      ecx, edi
0001345c: xor      ecx, esi
0001345e: mov      ebx, ecx
00013460: xor      ebx, edx
00013462: add      ebx, dword ptr [ebp - 0x20]
00013465: lea      ebx, [eax + ebx - 0x41404390]
0001346c: mov      eax, ebx
0001346e: shl      eax, 0x17
00013471: shr      ebx, 9
00013474: or       eax, ebx
00013476: add      eax, esi
00013478: xor      ecx, eax
0001347a: add      ecx, dword ptr [ebp - 0x14]
0001347d: lea      edx, [edx + ecx + 0x289b7ec6]
00013484: mov      ecx, edx
00013486: shl      edx, 4
00013489: shr      ecx, 0x1c
0001348c: or       ecx, edx
0001348e: add      ecx, eax
00013490: mov      edx, esi
00013492: xor      edx, eax
00013494: xor      edx, ecx
00013496: add      edx, dword ptr [ebp - 0x48]
00013499: lea      edi, [edi + edx - 0x155ed806]
000134a0: mov      edx, edi
000134a2: shl      edi, 0xb
000134a5: shr      edx, 0x15
000134a8: or       edx, edi
000134aa: add      edx, ecx
000134ac: mov      edi, edx
000134ae: xor      edi, eax
000134b0: xor      edi, ecx
000134b2: add      edi, dword ptr [ebp - 0x3c]
000134b5: lea      edi, [esi + edi - 0x2b10cf7b]
000134bc: mov      esi, edi
000134be: shl      edi, 0x10
000134c1: shr      esi, 0x10
000134c4: or       esi, edi
000134c6: add      esi, edx
000134c8: mov      edi, edx
000134ca: xor      edi, esi
000134cc: mov      ebx, edi
000134ce: xor      ebx, ecx
000134d0: add      ebx, dword ptr [ebp - 0x30]
000134d3: lea      ebx, [eax + ebx + 0x4881d05]
000134da: mov      eax, ebx
000134dc: shl      eax, 0x17
000134df: shr      ebx, 9
000134e2: or       eax, ebx
000134e4: add      eax, esi
000134e6: xor      edi, eax
000134e8: add      edi, dword ptr [ebp - 0x24]
000134eb: lea      edi, [ecx + edi - 0x262b2fc7]
000134f2: mov      ecx, edi
000134f4: shl      edi, 4
000134f7: shr      ecx, 0x1c
000134fa: or       ecx, edi
000134fc: mov      edi, esi
000134fe: xor      edi, eax
00013500: add      ecx, eax
00013502: xor      edi, ecx
00013504: add      edi, dword ptr [ebp - 0x18]
00013507: lea      edi, [edx + edi - 0x1924661b]
0001350e: mov      edx, edi
00013510: shl      edi, 0xb
00013513: shr      edx, 0x15
00013516: or       edx, edi
00013518: add      edx, ecx
0001351a: mov      edi, edx
0001351c: xor      edi, eax
0001351e: xor      edi, ecx
00013520: add      edi, dword ptr [ebp - 0xc]
00013523: lea      edi, [esi + edi + 0x1fa27cf8]
0001352a: mov      esi, edi
0001352c: shr      esi, 0x10
0001352f: shl      edi, 0x10
00013532: or       esi, edi
00013534: add      esi, edx
00013536: mov      edi, edx
00013538: xor      edi, esi
0001353a: xor      edi, ecx
0001353c: add      edi, dword ptr [ebp - 0x40]
0001353f: lea      eax, [eax + edi - 0x3b53a99b]
00013546: mov      edi, eax
00013548: shl      edi, 0x17
0001354b: shr      eax, 9
0001354e: or       edi, eax
00013550: add      edi, esi
00013552: mov      eax, edx
00013554: not      eax
00013556: or       eax, edi
00013558: xor      eax, esi
0001355a: add      eax, dword ptr [ebp - 0x48]
0001355d: lea      ecx, [ecx + eax - 0xbd6ddbc]
00013564: mov      eax, ecx
00013566: shl      ecx, 6
00013569: shr      eax, 0x1a
0001356c: or       eax, ecx
0001356e: add      eax, edi
00013570: mov      ecx, esi
00013572: not      ecx
00013574: or       ecx, eax
00013576: xor      ecx, edi
00013578: add      ecx, dword ptr [ebp - 0x2c]
0001357b: lea      edx, [edx + ecx + 0x432aff97]
00013582: mov      ecx, edx
00013584: shl      edx, 0xa
00013587: shr      ecx, 0x16
0001358a: or       ecx, edx
0001358c: mov      edx, edi
0001358e: add      ecx, eax
00013590: not      edx
00013592: or       edx, ecx
00013594: xor      edx, eax
00013596: add      edx, dword ptr [ebp - 0x10]
00013599: lea      esi, [esi + edx - 0x546bdc59]
000135a0: mov      edx, esi
000135a2: shl      esi, 0xf
000135a5: shr      edx, 0x11
000135a8: or       edx, esi
000135aa: add      edx, ecx
000135ac: mov      esi, eax
000135ae: not      esi
000135b0: or       esi, edx
000135b2: xor      esi, ecx
000135b4: add      esi, dword ptr [ebp - 0x34]
000135b7: lea      edi, [edi + esi - 0x36c5fc7]
000135be: mov      esi, edi
000135c0: shr      edi, 0xb
000135c3: shl      esi, 0x15
000135c6: or       esi, edi
000135c8: mov      edi, ecx
000135ca: not      edi
000135cc: add      esi, edx
000135ce: or       edi, esi
000135d0: xor      edi, edx
000135d2: add      edi, dword ptr [ebp - 0x18]
000135d5: lea      edi, [eax + edi + 0x655b59c3]
000135dc: mov      eax, edi
000135de: shl      edi, 6
000135e1: shr      eax, 0x1a
000135e4: or       eax, edi
000135e6: add      eax, esi
000135e8: mov      edi, edx
000135ea: not      edi
000135ec: or       edi, eax
000135ee: xor      edi, esi
000135f0: add      edi, dword ptr [ebp - 0x3c]
000135f3: lea      edi, [ecx + edi - 0x70f3336e]
000135fa: mov      ecx, edi
000135fc: shl      edi, 0xa
000135ff: shr      ecx, 0x16
00013602: or       ecx, edi
00013604: mov      edi, esi
00013606: add      ecx, eax
00013608: not      edi
0001360a: or       edi, ecx
0001360c: xor      edi, eax
0001360e: add      edi, dword ptr [ebp - 0x20]
00013611: lea      edi, [edx + edi - 0x100b83]
00013618: mov      edx, edi
0001361a: shl      edi, 0xf
0001361d: shr      edx, 0x11
00013620: or       edx, edi
00013622: add      edx, ecx
00013624: mov      edi, eax
00013626: not      edi
00013628: or       edi, edx
0001362a: xor      edi, ecx
0001362c: add      edi, dword ptr [ebp - 0x44]
0001362f: lea      edi, [esi + edi - 0x7a7ba22f]
00013636: mov      esi, edi
00013638: shr      edi, 0xb
0001363b: shl      esi, 0x15
0001363e: or       esi, edi
00013640: add      esi, edx
00013642: mov      edi, ecx
00013644: not      edi
00013646: or       edi, esi
00013648: xor      edi, edx
0001364a: add      edi, dword ptr [ebp - 0x28]
0001364d: lea      edi, [eax + edi + 0x6fa87e4f]
00013654: mov      eax, edi
00013656: shl      edi, 6
00013659: shr      eax, 0x1a
0001365c: or       eax, edi
0001365e: add      eax, esi
00013660: mov      edi, edx
00013662: not      edi
00013664: or       edi, eax
00013666: xor      edi, esi
00013668: add      edi, dword ptr [ebp - 0xc]
0001366b: lea      edi, [ecx + edi - 0x1d31920]
00013672: mov      ecx, edi
00013674: shl      edi, 0xa
00013677: shr      ecx, 0x16
0001367a: or       ecx, edi
0001367c: add      ecx, eax
0001367e: mov      edi, esi
00013680: not      edi
00013682: or       edi, ecx
00013684: xor      edi, eax
00013686: add      edi, dword ptr [ebp - 0x30]
00013689: lea      edi, [edx + edi - 0x5cfebcec]
00013690: mov      edx, edi
00013692: shl      edi, 0xf
00013695: shr      edx, 0x11
00013698: or       edx, edi
0001369a: mov      edi, eax
0001369c: not      edi
0001369e: add      edx, ecx
000136a0: or       edi, edx
000136a2: xor      edi, ecx
000136a4: add      edi, dword ptr [ebp - 0x14]
000136a7: lea      edi, [esi + edi + 0x4e0811a1]
000136ae: mov      esi, edi
000136b0: shr      edi, 0xb
000136b3: shl      esi, 0x15
000136b6: or       esi, edi
000136b8: add      esi, edx
000136ba: mov      edi, ecx
000136bc: not      edi
000136be: or       edi, esi
000136c0: xor      edi, edx
000136c2: add      edi, dword ptr [ebp - 0x38]
000136c5: lea      eax, [eax + edi - 0x8ac817e]
000136cc: mov      edi, eax
000136ce: shl      eax, 6
000136d1: shr      edi, 0x1a
000136d4: or       edi, eax
000136d6: mov      eax, edx
000136d8: not      eax
000136da: add      edi, esi
000136dc: or       eax, edi
000136de: xor      eax, esi
000136e0: add      eax, dword ptr [ebp - 0x1c]
000136e3: lea      eax, [ecx + eax - 0x42c50dcb]
000136ea: mov      ecx, eax
000136ec: shl      eax, 0xa
000136ef: shr      ecx, 0x16
000136f2: or       ecx, eax
000136f4: add      ecx, edi
000136f6: mov      eax, esi
000136f8: not      eax
000136fa: or       eax, ecx
000136fc: xor      eax, edi
000136fe: add      eax, dword ptr [ebp - 0x40]
00013701: lea      edx, [edx + eax + 0x2ad7d2bb]
00013708: mov      ebx, edx
0001370a: shl      edx, 0xf
0001370d: shr      ebx, 0x11
00013710: or       ebx, edx
00013712: add      ebx, ecx
00013714: mov      eax, edi
00013716: not      eax
00013718: or       eax, ebx
0001371a: xor      eax, ecx
0001371c: add      eax, dword ptr [ebp - 0x24]
0001371f: lea      esi, [esi + eax - 0x14792c6f]
00013726: mov      eax, dword ptr [ebp + 8]
00013729: mov      edx, dword ptr [eax]
0001372b: add      edi, edx
0001372d: mov      edx, esi
0001372f: shl      edx, 0x15
00013732: shr      esi, 0xb
00013735: or       edx, esi
00013737: add      edx, dword ptr [eax + 4]
0001373a: mov      dword ptr [eax], edi
0001373c: add      edx, ebx
0001373e: mov      dword ptr [eax + 4], edx
00013741: mov      edx, dword ptr [eax + 8]
00013744: add      edx, ebx
00013746: mov      dword ptr [eax + 8], edx
00013749: mov      edx, dword ptr [eax + 0xc]
0001374c: pop      edi
0001374d: add      edx, ecx
0001374f: pop      esi
00013750: mov      dword ptr [eax + 0xc], edx
00013753: pop      ebx
00013754: leave    
00013755: ret      4
00013758: int3     
00013759: int3     
0001375a: int3     
0001375b: int3     
0001375c: int3     
0001375d: int3     
0001375e: mov      edi, edi
00013760: push     ebp
00013761: mov      ebp, esp
00013763: push     ebx
00013764: mov      ebx, dword ptr [ebp + 0x10]
00013767: push     esi
00013768: mov      esi, dword ptr [ebp + 8]
0001376b: mov      ecx, dword ptr [esi + 0x10]
0001376e: mov      eax, ecx
00013770: shr      eax, 3
00013773: mov      edx, ebx
00013775: lea      ecx, [ecx + ebx*8]
00013778: shl      edx, 3
0001377b: and      eax, 0x3f
0001377e: cmp      ecx, edx
00013780: push     edi
00013781: mov      dword ptr [esi + 0x10], ecx
00013784: jae      0x13789
00013786: inc      dword ptr [esi + 0x14]
00013789: push     0x40
0001378b: mov      ecx, ebx
0001378d: shr      ecx, 0x1d
00013790: add      dword ptr [esi + 0x14], ecx
00013793: pop      edi
00013794: sub      edi, eax
00013796: cmp      ebx, edi
00013798: jb       0x137e5
0001379a: xor      ecx, ecx
0001379c: test     edi, edi
0001379e: jbe      0x137b2
000137a0: lea      eax, [eax + esi + 0x18]
000137a4: mov      edx, dword ptr [ebp + 0xc]
000137a7: mov      dl, byte ptr [ecx + edx]
000137aa: mov      byte ptr [eax + ecx], dl
000137ad: inc      ecx
000137ae: cmp      ecx, edi
000137b0: jb       0x137a4
000137b2: lea      ecx, [esi + 0x18]
000137b5: push     esi
000137b6: call     0x12efe
000137bb: lea      eax, [edi + 0x3f]
000137be: cmp      eax, ebx
000137c0: jae      0x137e1
000137c2: mov      dword ptr [ebp + 8], eax
000137c5: mov      eax, dword ptr [ebp + 0xc]
000137c8: mov      ecx, dword ptr [ebp + 8]
000137cb: lea      ecx, [eax + ecx - 0x3f]
000137cf: push     esi
000137d0: call     0x12efe
000137d5: add      dword ptr [ebp + 8], 0x40
000137d9: add      edi, 0x40
000137dc: cmp      dword ptr [ebp + 8], ebx
000137df: jb       0x137c5
000137e1: xor      eax, eax
000137e3: jmp      0x137e7
000137e5: xor      edi, edi
000137e7: xor      ecx, ecx
000137e9: sub      ebx, edi
000137eb: je       0x13801
000137ed: mov      edx, dword ptr [ebp + 0xc]
000137f0: add      edx, edi
000137f2: lea      esi, [eax + esi + 0x18]
000137f6: mov      al, byte ptr [edx + ecx]
000137f9: mov      byte ptr [esi + ecx], al
000137fc: inc      ecx
000137fd: cmp      ecx, ebx
000137ff: jb       0x137f6
00013801: pop      edi
00013802: pop      esi
00013803: pop      ebx
00013804: pop      ebp
00013805: ret      0xc
00013808: int3     
00013809: int3     
0001380a: int3     
0001380b: int3     
0001380c: int3     
0001380d: int3     
0001380e: mov      edi, edi
00013810: push     ebp
00013811: mov      ebp, esp
00013813: sub      esp, 0xc
00013816: mov      eax, dword ptr [0x1a0e4]
0001381b: push     ebx
0001381c: mov      ebx, dword ptr [ebp + 8]
0001381f: push     esi
00013820: mov      esi, dword ptr [ebp + 0xc]
00013823: push     edi
00013824: push     8
00013826: mov      dword ptr [ebp - 4], eax
00013829: lea      edi, [esi + 0x10]
0001382c: pop      edx
0001382d: mov      eax, edi
0001382f: lea      ecx, [ebp - 0xc]
00013832: call     0x12e92
00013837: mov      eax, dword ptr [edi]
00013839: shr      eax, 3
0001383c: push     0x38
0001383e: and      eax, 0x3f
00013841: pop      ecx
00013842: cmp      eax, ecx
00013844: jb       0x13849
00013846: push     0x78
00013848: pop      ecx
00013849: sub      ecx, eax
0001384b: push     ecx
0001384c: push     0x1a0a0
00013851: push     esi
00013852: call     0x1375e
00013857: push     8
00013859: lea      eax, [ebp - 0xc]
0001385c: push     eax
0001385d: push     esi
0001385e: call     0x1375e
00013863: push     0x10
00013865: pop      edx
00013866: mov      eax, esi
00013868: mov      ecx, ebx
0001386a: call     0x12e92
0001386f: push     0
00013871: push     0x58
00013873: pop      ecx
00013874: mov      edx, esi
00013876: call     0x12ec8
0001387b: mov      ecx, dword ptr [ebp - 4]
0001387e: pop      edi
0001387f: pop      esi
00013880: pop      ebx
00013881: call     0x153f7
00013886: leave    
00013887: ret      8
0001388a: int3     
0001388b: int3     
0001388c: int3     
0001388d: int3     
0001388e: int3     
0001388f: int3     
00013890: mov      edi, edi
00013892: push     ebp
00013893: mov      ebp, esp
00013895: push     ebx
00013896: push     esi
00013897: mov      esi, dword ptr [ebp + 8]
0001389a: test     esi, esi
0001389c: push     edi
0001389d: je       0x13d35
000138a3: mov      eax, dword ptr [ebp + 0x10]
000138a6: test     eax, eax
000138a8: je       0x13d35
000138ae: mov      edi, dword ptr [ebp + 0xc]
000138b1: mov      ecx, 0x80
000138b6: cmp      edi, ecx
000138b8: mov      edx, 0xc0
000138bd: je       0x138d7
000138bf: cmp      edi, edx
000138c1: je       0x138d3
000138c3: cmp      edi, 0x100
000138c9: je       0x138d3
000138cb: push     -2
000138cd: pop      eax
000138ce: jmp      0x13d38
000138d3: cmp      edi, ecx
000138d5: jne      0x138e3
000138d7: mov      dword ptr [eax + 0xf0], 0xa
000138e1: jmp      0x138f4
000138e3: xor      ecx, ecx
000138e5: cmp      edi, edx
000138e7: setne    cl
000138ea: lea      ecx, [ecx + ecx + 0xc]
000138ee: mov      dword ptr [eax + 0xf0], ecx
000138f4: mov      edi, dword ptr [esi]
000138f6: mov      ebx, edi
000138f8: ror      ebx, 8
000138fb: mov      edx, 0xff00ff00
00013900: and      ebx, edx
00013902: rol      edi, 8
00013905: mov      ecx, 0xff00ff
0001390a: and      edi, ecx
0001390c: or       ebx, edi
0001390e: mov      dword ptr [eax], ebx
00013910: mov      edi, dword ptr [esi + 4]
00013913: lea      ebx, [eax + 4]
00013916: mov      dword ptr [ebp + 8], ebx
00013919: mov      ebx, edi
0001391b: ror      ebx, 8
0001391e: and      ebx, edx
00013920: rol      edi, 8
00013923: and      edi, ecx
00013925: or       ebx, edi
00013927: mov      edi, dword ptr [ebp + 8]
0001392a: mov      dword ptr [edi], ebx
0001392c: mov      edi, dword ptr [esi + 8]
0001392f: mov      ebx, edi
00013931: ror      ebx, 8
00013934: and      ebx, edx
00013936: rol      edi, 8
00013939: and      edi, ecx
0001393b: or       ebx, edi
0001393d: mov      dword ptr [eax + 8], ebx
00013940: mov      edi, dword ptr [esi + 0xc]
00013943: mov      ebx, edi
00013945: ror      ebx, 8
00013948: and      ebx, edx
0001394a: rol      edi, 8
0001394d: and      edi, ecx
0001394f: or       ebx, edi
00013951: cmp      dword ptr [ebp + 0xc], 0x80
00013958: mov      dword ptr [eax + 0xc], ebx
0001395b: jne      0x13a59
00013961: mov      dword ptr [ebp + 0xc], ebx
00013964: movzx    ecx, byte ptr [ebp + 0xe]
00013968: mov      edx, dword ptr [ecx*4 + 0x17b30]
0001396f: movzx    ecx, bh
00013972: mov      ecx, dword ptr [ecx*4 + 0x17b30]
00013979: xor      edx, 0x1000000
0001397f: and      edx, 0xff000000
00013985: mov      edi, 0xff0000
0001398a: and      ecx, edi
0001398c: xor      edx, ecx
0001398e: mov      ecx, ebx
00013990: shr      ecx, 0x18
00013993: mov      esi, dword ptr [ecx*4 + 0x17b30]
0001399a: mov      ecx, 0xff
0001399f: and      ebx, ecx
000139a1: mov      ebx, dword ptr [ebx*4 + 0x17b30]
000139a8: and      esi, ecx
000139aa: xor      edx, esi
000139ac: mov      esi, 0xff00
000139b1: and      ebx, esi
000139b3: xor      edx, ebx
000139b5: xor      edx, dword ptr [eax]
000139b7: mov      ebx, dword ptr [ebp + 8]
000139ba: mov      ebx, dword ptr [ebx]
000139bc: mov      dword ptr [eax + 0x10], edx
000139bf: xor      ebx, edx
000139c1: mov      edx, dword ptr [eax + 8]
000139c4: xor      edx, ebx
000139c6: mov      dword ptr [eax + 0x18], edx
000139c9: xor      edx, dword ptr [eax + 0xc]
000139cc: mov      dword ptr [eax + 0x14], ebx
000139cf: mov      dword ptr [eax + 0x1c], edx
000139d2: mov      eax, dword ptr [ebp + 8]
000139d5: mov      dword ptr [ebp + 8], 0x19334
000139dc: mov      edx, dword ptr [eax + 0x18]
000139df: add      eax, 0x10
000139e2: mov      dword ptr [ebp + 0xc], edx
000139e5: movzx    ebx, byte ptr [ebp + 0xe]
000139e9: mov      ebx, dword ptr [ebx*4 + 0x17b30]
000139f0: movzx    edx, dh
000139f3: mov      edx, dword ptr [edx*4 + 0x17b30]
000139fa: and      ebx, 0xff000000
00013a00: and      edx, edi
00013a02: xor      edx, ebx
00013a04: mov      ebx, dword ptr [ebp + 0xc]
00013a07: shr      ebx, 0x18
00013a0a: mov      ebx, dword ptr [ebx*4 + 0x17b30]
00013a11: and      ebx, ecx
00013a13: xor      edx, ebx
00013a15: mov      ebx, dword ptr [ebp + 0xc]
00013a18: and      ebx, ecx
00013a1a: mov      ebx, dword ptr [ebx*4 + 0x17b30]
00013a21: and      ebx, esi
00013a23: xor      edx, ebx
00013a25: xor      edx, dword ptr [eax - 4]
00013a28: mov      ebx, dword ptr [ebp + 8]
00013a2b: xor      edx, dword ptr [ebx]
00013a2d: add      dword ptr [ebp + 8], 4
00013a31: mov      dword ptr [eax + 0xc], edx
00013a34: mov      ebx, dword ptr [eax]
00013a36: xor      ebx, edx
00013a38: mov      dword ptr [eax + 0x10], ebx
00013a3b: mov      edx, dword ptr [eax + 4]
00013a3e: xor      edx, ebx
00013a40: mov      dword ptr [eax + 0x14], edx
00013a43: mov      ebx, dword ptr [eax + 8]
00013a46: xor      ebx, edx
00013a48: cmp      dword ptr [ebp + 8], 0x19358
00013a4f: mov      dword ptr [eax + 0x18], ebx
00013a52: jne      0x139dc
00013a54: jmp      0x13d31
00013a59: mov      edi, dword ptr [esi + 0x10]
00013a5c: mov      ebx, edi
00013a5e: ror      ebx, 8
00013a61: and      ebx, edx
00013a63: rol      edi, 8
00013a66: and      edi, ecx
00013a68: or       ebx, edi
00013a6a: mov      dword ptr [eax + 0x10], ebx
00013a6d: mov      edi, dword ptr [esi + 0x14]
00013a70: mov      ebx, edi
00013a72: ror      ebx, 8
00013a75: and      ebx, edx
00013a77: rol      edi, 8
00013a7a: and      edi, ecx
00013a7c: or       ebx, edi
00013a7e: cmp      dword ptr [ebp + 0xc], 0xc0
00013a85: mov      dword ptr [eax + 0x14], ebx
00013a88: jne      0x13b9d
00013a8e: mov      dword ptr [ebp + 0xc], ebx
00013a91: movzx    ecx, byte ptr [ebp + 0xe]
00013a95: mov      edx, dword ptr [ecx*4 + 0x17b30]
00013a9c: movzx    ecx, bh
00013a9f: mov      ecx, dword ptr [ecx*4 + 0x17b30]
00013aa6: xor      edx, 0x1000000
00013aac: and      edx, 0xff000000
00013ab2: mov      edi, 0xff0000
00013ab7: and      ecx, edi
00013ab9: xor      edx, ecx
00013abb: mov      ecx, ebx
00013abd: shr      ecx, 0x18
00013ac0: mov      esi, dword ptr [ecx*4 + 0x17b30]
00013ac7: mov      ecx, 0xff
00013acc: and      ebx, ecx
00013ace: mov      ebx, dword ptr [ebx*4 + 0x17b30]
00013ad5: and      esi, ecx
00013ad7: xor      edx, esi
00013ad9: mov      esi, 0xff00
00013ade: and      ebx, esi
00013ae0: xor      edx, ebx
00013ae2: xor      edx, dword ptr [eax]
00013ae4: mov      ebx, dword ptr [ebp + 8]
00013ae7: mov      ebx, dword ptr [ebx]
00013ae9: xor      ebx, edx
00013aeb: mov      dword ptr [eax + 0x18], edx
00013aee: mov      edx, dword ptr [eax + 8]
00013af1: xor      edx, ebx
00013af3: mov      dword ptr [eax + 0x1c], ebx
00013af6: mov      ebx, dword ptr [eax + 0xc]
00013af9: xor      ebx, edx
00013afb: mov      dword ptr [eax + 0x20], edx
00013afe: mov      dword ptr [eax + 0x24], ebx
00013b01: add      eax, 0x28
00013b04: mov      dword ptr [ebp + 8], 0x19334
00013b0b: mov      edx, dword ptr [eax - 0x18]
00013b0e: xor      edx, dword ptr [eax - 4]
00013b11: mov      ebx, dword ptr [eax - 0x14]
00013b14: xor      ebx, edx
00013b16: mov      dword ptr [eax + 4], ebx
00013b19: mov      dword ptr [eax], edx
00013b1b: mov      edx, dword ptr [eax + 4]
00013b1e: add      eax, 0x18
00013b21: mov      dword ptr [ebp + 0xc], edx
00013b24: movzx    ebx, byte ptr [ebp + 0xe]
00013b28: mov      ebx, dword ptr [ebx*4 + 0x17b30]
00013b2f: movzx    edx, dh
00013b32: mov      edx, dword ptr [edx*4 + 0x17b30]
00013b39: and      ebx, 0xff000000
00013b3f: and      edx, edi
00013b41: xor      edx, ebx
00013b43: mov      ebx, dword ptr [ebp + 0xc]
00013b46: shr      ebx, 0x18
00013b49: mov      ebx, dword ptr [ebx*4 + 0x17b30]
00013b50: and      ebx, ecx
00013b52: xor      edx, ebx
00013b54: mov      ebx, dword ptr [ebp + 0xc]
00013b57: and      ebx, ecx
00013b59: mov      ebx, dword ptr [ebx*4 + 0x17b30]
00013b60: and      ebx, esi
00013b62: xor      edx, ebx
00013b64: xor      edx, dword ptr [eax - 0x28]
00013b67: mov      ebx, dword ptr [ebp + 8]
00013b6a: xor      edx, dword ptr [ebx]
00013b6c: add      dword ptr [ebp + 8], 4
00013b70: mov      dword ptr [eax - 0x10], edx
00013b73: mov      ebx, dword ptr [eax - 0x24]
00013b76: xor      ebx, edx
00013b78: mov      dword ptr [eax - 0xc], ebx
00013b7b: mov      edx, dword ptr [eax - 0x20]
00013b7e: xor      edx, ebx
00013b80: mov      dword ptr [eax - 8], edx
00013b83: mov      ebx, dword ptr [eax - 0x1c]
00013b86: xor      ebx, edx
00013b88: cmp      dword ptr [ebp + 8], 0x19350
00013b8f: mov      dword ptr [eax - 4], ebx
00013b92: jne      0x13b0b
00013b98: jmp      0x13d31
00013b9d: mov      edi, dword ptr [esi + 0x18]
00013ba0: mov      ebx, edi
00013ba2: ror      ebx, 8
00013ba5: and      ebx, edx
00013ba7: rol      edi, 8
00013baa: and      edi, ecx
00013bac: or       ebx, edi
00013bae: mov      dword ptr [eax + 0x18], ebx
00013bb1: mov      esi, dword ptr [esi + 0x1c]
00013bb4: mov      edi, esi
00013bb6: ror      edi, 8
00013bb9: and      edi, edx
00013bbb: rol      esi, 8
00013bbe: and      esi, ecx
00013bc0: or       edi, esi
00013bc2: cmp      dword ptr [ebp + 0xc], 0x100
00013bc9: mov      dword ptr [eax + 0x1c], edi
00013bcc: jne      0x13d31
00013bd2: mov      ebx, edi
00013bd4: mov      dword ptr [ebp + 0xc], ebx
00013bd7: movzx    ecx, byte ptr [ebp + 0xe]
00013bdb: mov      edx, dword ptr [ecx*4 + 0x17b30]
00013be2: movzx    ecx, bh
00013be5: mov      ecx, dword ptr [ecx*4 + 0x17b30]
00013bec: xor      edx, 0x1000000
00013bf2: and      edx, 0xff000000
00013bf8: mov      edi, 0xff0000
00013bfd: and      ecx, edi
00013bff: xor      edx, ecx
00013c01: mov      ecx, ebx
00013c03: shr      ecx, 0x18
00013c06: mov      esi, dword ptr [ecx*4 + 0x17b30]
00013c0d: mov      ecx, 0xff
00013c12: and      ebx, ecx
00013c14: mov      ebx, dword ptr [ebx*4 + 0x17b30]
00013c1b: and      esi, ecx
00013c1d: xor      edx, esi
00013c1f: mov      esi, 0xff00
00013c24: and      ebx, esi
00013c26: xor      edx, ebx
00013c28: xor      edx, dword ptr [eax]
00013c2a: mov      ebx, dword ptr [ebp + 8]
00013c2d: mov      ebx, dword ptr [ebx]
00013c2f: xor      ebx, edx
00013c31: mov      dword ptr [eax + 0x20], edx
00013c34: mov      edx, dword ptr [eax + 8]
00013c37: xor      edx, ebx
00013c39: mov      dword ptr [eax + 0x24], ebx
00013c3c: mov      ebx, dword ptr [eax + 0xc]
00013c3f: xor      ebx, edx
00013c41: mov      dword ptr [eax + 0x28], edx
00013c44: mov      dword ptr [eax + 0x2c], ebx
00013c47: add      eax, 0x30
00013c4a: mov      dword ptr [ebp + 8], 0x19334
00013c51: mov      ebx, dword ptr [eax - 4]
00013c54: mov      dword ptr [ebp + 0xc], ebx
00013c57: movzx    edx, byte ptr [ebp + 0xe]
00013c5b: mov      edx, dword ptr [edx*4 + 0x17b30]
00013c62: movzx    ebx, bh
00013c65: mov      ebx, dword ptr [ebx*4 + 0x17b30]
00013c6c: and      ebx, esi
00013c6e: and      edx, edi
00013c70: xor      edx, ebx
00013c72: mov      ebx, dword ptr [ebp + 0xc]
00013c75: shr      ebx, 0x18
00013c78: mov      ebx, dword ptr [ebx*4 + 0x17b30]
00013c7f: and      ebx, 0xff000000
00013c85: xor      edx, ebx
00013c87: mov      ebx, dword ptr [ebp + 0xc]
00013c8a: and      ebx, ecx
00013c8c: mov      ebx, dword ptr [ebx*4 + 0x17b30]
00013c93: and      ebx, ecx
00013c95: xor      edx, ebx
00013c97: xor      edx, dword ptr [eax - 0x20]
00013c9a: mov      ebx, dword ptr [eax - 0x1c]
00013c9d: xor      ebx, edx
00013c9f: mov      dword ptr [eax + 4], ebx
00013ca2: mov      dword ptr [eax], edx
00013ca4: mov      edx, dword ptr [eax - 0x18]
00013ca7: xor      edx, ebx
00013ca9: mov      ebx, dword ptr [eax - 0x14]
00013cac: xor      ebx, edx
00013cae: mov      dword ptr [eax + 0xc], ebx
00013cb1: mov      dword ptr [eax + 8], edx
00013cb4: mov      edx, dword ptr [eax + 0xc]
00013cb7: add      eax, 0x20
00013cba: mov      dword ptr [ebp + 0xc], edx
00013cbd: movzx    ebx, byte ptr [ebp + 0xe]
00013cc1: mov      ebx, dword ptr [ebx*4 + 0x17b30]
00013cc8: movzx    edx, dh
00013ccb: mov      edx, dword ptr [edx*4 + 0x17b30]
00013cd2: and      ebx, 0xff000000
00013cd8: and      edx, edi
00013cda: xor      edx, ebx
00013cdc: mov      ebx, dword ptr [ebp + 0xc]
00013cdf: shr      ebx, 0x18
00013ce2: mov      ebx, dword ptr [ebx*4 + 0x17b30]
00013ce9: and      ebx, ecx
00013ceb: xor      edx, ebx
00013ced: mov      ebx, dword ptr [ebp + 0xc]
00013cf0: and      ebx, ecx
00013cf2: mov      ebx, dword ptr [ebx*4 + 0x17b30]
00013cf9: and      ebx, esi
00013cfb: xor      edx, ebx
00013cfd: xor      edx, dword ptr [eax - 0x30]
00013d00: mov      ebx, dword ptr [ebp + 8]
00013d03: xor      edx, dword ptr [ebx]
00013d05: add      dword ptr [ebp + 8], 4
00013d09: mov      dword ptr [eax - 0x10], edx
00013d0c: mov      ebx, dword ptr [eax - 0x2c]
00013d0f: xor      ebx, edx
00013d11: mov      dword ptr [eax - 0xc], ebx
00013d14: mov      edx, dword ptr [eax - 0x28]
00013d17: xor      edx, ebx
00013d19: mov      dword ptr [eax - 8], edx
00013d1c: mov      ebx, dword ptr [eax - 0x24]
00013d1f: xor      ebx, edx
00013d21: cmp      dword ptr [ebp + 8], 0x1934c
00013d28: mov      dword ptr [eax - 4], ebx
00013d2b: jne      0x13c51
00013d31: xor      eax, eax
00013d33: jmp      0x13d38
00013d35: or       eax, 0xffffffff
00013d38: pop      edi
00013d39: pop      esi
00013d3a: pop      ebx
00013d3b: pop      ebp
00013d3c: ret      0xc
00013d3f: int3     
00013d40: int3     
00013d41: int3     
00013d42: int3     
00013d43: int3     
00013d44: mov      edi, edi
00013d46: push     ebp
00013d47: mov      ebp, esp
00013d49: push     esi
00013d4a: mov      esi, dword ptr [ebp + 0x10]
00013d4d: push     esi
00013d4e: push     dword ptr [ebp + 0xc]
00013d51: push     dword ptr [ebp + 8]
00013d54: call     0x13890
00013d59: test     eax, eax
00013d5b: jl       0x13f3f
00013d61: mov      edx, dword ptr [esi + 0xf0]
00013d67: and      dword ptr [ebp + 0x10], 0
00013d6b: shl      edx, 2
00013d6e: test     edx, edx
00013d70: push     ebx
00013d71: push     edi
00013d72: jle      0x13db9
00013d74: lea      ecx, [esi + edx*4 + 8]
00013d78: lea      eax, [esi + 8]
00013d7b: mov      ebx, dword ptr [ecx - 8]
00013d7e: mov      edi, dword ptr [eax - 8]
00013d81: add      dword ptr [ebp + 0x10], 4
00013d85: mov      dword ptr [eax - 8], ebx
00013d88: mov      ebx, dword ptr [ecx - 4]
00013d8b: mov      dword ptr [ecx - 8], edi
00013d8e: mov      edi, dword ptr [eax - 4]
00013d91: mov      dword ptr [eax - 4], ebx
00013d94: mov      ebx, dword ptr [ecx]
00013d96: mov      dword ptr [ecx - 4], edi
00013d99: mov      edi, dword ptr [eax]
00013d9b: mov      dword ptr [eax], ebx
00013d9d: mov      ebx, dword ptr [ecx + 4]
00013da0: mov      dword ptr [ecx], edi
00013da2: mov      edi, dword ptr [eax + 4]
00013da5: mov      dword ptr [eax + 4], ebx
00013da8: mov      dword ptr [ecx + 4], edi
00013dab: sub      edx, 4
00013dae: add      eax, 0x10
00013db1: sub      ecx, 0x10
00013db4: cmp      dword ptr [ebp + 0x10], edx
00013db7: jl       0x13d7b
00013db9: xor      eax, eax
00013dbb: inc      eax
00013dbc: cmp      dword ptr [esi + 0xf0], eax
00013dc2: mov      dword ptr [ebp + 0x10], eax
00013dc5: jle      0x13f3b
00013dcb: lea      ecx, [esi + 2]
00013dce: mov      eax, 0xff
00013dd3: mov      edx, dword ptr [ecx + 0xe]
00013dd6: movzx    ebx, byte ptr [ecx + 0xf]
00013dda: mov      ebx, dword ptr [ebx*4 + 0x17b30]
00013de1: add      ecx, 0x10
00013de4: mov      edi, edx
00013de6: shr      edi, 0x18
00013de9: mov      edi, dword ptr [edi*4 + 0x17b30]
00013df0: and      edi, eax
00013df2: mov      edi, dword ptr [edi*4 + 0x17f30]
00013df9: and      ebx, eax
00013dfb: xor      edi, dword ptr [ebx*4 + 0x18730]
00013e02: and      edx, eax
00013e04: mov      edx, dword ptr [edx*4 + 0x17b30]
00013e0b: and      edx, eax
00013e0d: xor      edi, dword ptr [edx*4 + 0x18b30]
00013e14: movzx    edx, byte ptr [ecx]
00013e17: mov      edx, dword ptr [edx*4 + 0x17b30]
00013e1e: movzx    ebx, byte ptr [ecx + 3]
00013e22: and      edx, eax
00013e24: xor      edi, dword ptr [edx*4 + 0x18330]
00013e2b: mov      edx, dword ptr [ecx + 2]
00013e2e: mov      dword ptr [ecx - 2], edi
00013e31: mov      ebx, dword ptr [ebx*4 + 0x17b30]
00013e38: mov      edi, edx
00013e3a: shr      edi, 0x18
00013e3d: mov      edi, dword ptr [edi*4 + 0x17b30]
00013e44: and      edi, eax
00013e46: mov      edi, dword ptr [edi*4 + 0x17f30]
00013e4d: and      ebx, eax
00013e4f: xor      edi, dword ptr [ebx*4 + 0x18730]
00013e56: movzx    ebx, byte ptr [ecx + 4]
00013e5a: mov      ebx, dword ptr [ebx*4 + 0x17b30]
00013e61: and      ebx, eax
00013e63: xor      edi, dword ptr [ebx*4 + 0x18330]
00013e6a: movzx    ebx, byte ptr [ecx + 7]
00013e6e: and      edx, eax
00013e70: mov      edx, dword ptr [edx*4 + 0x17b30]
00013e77: and      edx, eax
00013e79: xor      edi, dword ptr [edx*4 + 0x18b30]
00013e80: mov      edx, dword ptr [ecx + 6]
00013e83: mov      dword ptr [ecx + 2], edi
00013e86: mov      ebx, dword ptr [ebx*4 + 0x17b30]
00013e8d: mov      edi, edx
00013e8f: shr      edi, 0x18
00013e92: mov      edi, dword ptr [edi*4 + 0x17b30]
00013e99: and      edi, eax
00013e9b: mov      edi, dword ptr [edi*4 + 0x17f30]
00013ea2: and      ebx, eax
00013ea4: xor      edi, dword ptr [ebx*4 + 0x18730]
00013eab: movzx    ebx, byte ptr [ecx + 8]
00013eaf: mov      ebx, dword ptr [ebx*4 + 0x17b30]
00013eb6: and      edx, eax
00013eb8: mov      edx, dword ptr [edx*4 + 0x17b30]
00013ebf: and      ebx, eax
00013ec1: xor      edi, dword ptr [ebx*4 + 0x18330]
00013ec8: movzx    ebx, byte ptr [ecx + 0xb]
00013ecc: and      edx, eax
00013ece: xor      edi, dword ptr [edx*4 + 0x18b30]
00013ed5: mov      edx, dword ptr [ecx + 0xa]
00013ed8: mov      dword ptr [ecx + 6], edi
00013edb: mov      ebx, dword ptr [ebx*4 + 0x17b30]
00013ee2: mov      edi, edx
00013ee4: shr      edi, 0x18
00013ee7: mov      edi, dword ptr [edi*4 + 0x17b30]
00013eee: and      edi, eax
00013ef0: mov      edi, dword ptr [edi*4 + 0x17f30]
00013ef7: and      ebx, eax
00013ef9: xor      edi, dword ptr [ebx*4 + 0x18730]
00013f00: movzx    ebx, byte ptr [ecx + 0xc]
00013f04: mov      ebx, dword ptr [ebx*4 + 0x17b30]
00013f0b: and      edx, eax
00013f0d: mov      edx, dword ptr [edx*4 + 0x17b30]
00013f14: and      ebx, eax
00013f16: xor      edi, dword ptr [ebx*4 + 0x18330]
00013f1d: and      edx, eax
00013f1f: xor      edi, dword ptr [edx*4 + 0x18b30]
00013f26: inc      dword ptr [ebp + 0x10]
00013f29: mov      edx, dword ptr [ebp + 0x10]
00013f2c: mov      dword ptr [ecx + 0xa], edi
00013f2f: cmp      edx, dword ptr [esi + 0xf0]
00013f35: jl       0x13dd3
00013f3b: pop      edi
00013f3c: xor      eax, eax
00013f3e: pop      ebx
00013f3f: pop      esi
00013f40: pop      ebp
00013f41: ret      0xc
00013f44: int3     
00013f45: int3     
00013f46: int3     
00013f47: int3     
00013f48: int3     
00013f49: int3     
00013f4a: mov      edi, edi
00013f4c: push     ebp
00013f4d: mov      ebp, esp
00013f4f: sub      esp, 0x1c
00013f52: mov      edx, dword ptr [ebp + 8]
00013f55: mov      ecx, dword ptr [edx]
00013f57: push     ebx
00013f58: mov      ebx, ecx
00013f5a: ror      ebx, 8
00013f5d: mov      eax, 0xff00ff00
00013f62: and      ebx, eax
00013f64: rol      ecx, 8
00013f67: push     esi
00013f68: mov      esi, dword ptr [ebp + 0x10]
00013f6b: push     edi
00013f6c: mov      edi, 0xff00ff
00013f71: and      ecx, edi
00013f73: or       ebx, ecx
00013f75: mov      ecx, dword ptr [edx + 4]
00013f78: xor      ebx, dword ptr [esi]
00013f7a: mov      edx, ecx
00013f7c: ror      edx, 8
00013f7f: and      edx, eax
00013f81: rol      ecx, 8
00013f84: and      ecx, edi
00013f86: or       edx, ecx
00013f88: xor      edx, dword ptr [esi + 4]
00013f8b: mov      ecx, dword ptr [ebp + 8]
00013f8e: mov      dword ptr [ebp + 0x10], edx
00013f91: mov      edx, dword ptr [ecx + 8]
00013f94: mov      ecx, edx
00013f96: ror      ecx, 8
00013f99: and      ecx, eax
00013f9b: rol      edx, 8
00013f9e: and      edx, edi
00013fa0: or       ecx, edx
00013fa2: xor      ecx, dword ptr [esi + 8]
00013fa5: mov      edx, dword ptr [ebp + 8]
00013fa8: mov      edx, dword ptr [edx + 0xc]
00013fab: mov      dword ptr [ebp + 8], edx
00013fae: ror      edx, 8
00013fb1: and      edx, eax
00013fb3: mov      eax, dword ptr [ebp + 8]
00013fb6: mov      dword ptr [ebp - 0x10], ecx
00013fb9: rol      eax, 8
00013fbc: and      eax, edi
00013fbe: or       edx, eax
00013fc0: xor      edx, dword ptr [esi + 0xc]
00013fc3: movzx    eax, ch
00013fc6: movzx    ecx, byte ptr [ebp + 0x12]
00013fca: mov      dword ptr [ebp + 8], ecx
00013fcd: mov      ecx, dword ptr [eax*4 + 0x17330]
00013fd4: mov      eax, dword ptr [ebp + 8]
00013fd7: xor      ecx, dword ptr [eax*4 + 0x16f30]
00013fde: mov      dword ptr [ebp - 0xc], ebx
00013fe1: shr      ebx, 0x18
00013fe4: xor      ecx, dword ptr [ebx*4 + 0x16b30]
00013feb: mov      ebx, edx
00013fed: mov      eax, 0xff
00013ff2: and      ebx, eax
00013ff4: xor      ecx, dword ptr [ebx*4 + 0x17730]
00013ffb: mov      dword ptr [ebp - 0x14], edx
00013ffe: xor      ecx, dword ptr [esi + 0x10]
00014001: mov      dword ptr [ebp - 4], ecx
00014004: movzx    ecx, dh
00014007: mov      ecx, dword ptr [ecx*4 + 0x17330]
0001400e: movzx    edx, byte ptr [ebp - 0xe]
00014012: xor      ecx, dword ptr [edx*4 + 0x16f30]
00014019: mov      edx, dword ptr [ebp + 0x10]
0001401c: shr      edx, 0x18
0001401f: xor      ecx, dword ptr [edx*4 + 0x16b30]
00014026: mov      edx, dword ptr [ebp - 0xc]
00014029: and      edx, eax
0001402b: xor      ecx, dword ptr [edx*4 + 0x17730]
00014032: movzx    edx, byte ptr [ebp - 0xb]
00014036: xor      ecx, dword ptr [esi + 0x14]
00014039: mov      dword ptr [ebp - 8], ecx
0001403c: movzx    ecx, byte ptr [ebp - 0x12]
00014040: mov      ecx, dword ptr [ecx*4 + 0x16f30]
00014047: xor      ecx, dword ptr [edx*4 + 0x17330]
0001404e: mov      edx, dword ptr [ebp - 0x10]
00014051: shr      edx, 0x18
00014054: xor      ecx, dword ptr [edx*4 + 0x16b30]
0001405b: mov      edx, dword ptr [ebp + 0x10]
0001405e: and      edx, eax
00014060: xor      ecx, dword ptr [edx*4 + 0x17730]
00014067: movzx    edx, byte ptr [ebp + 0x11]
0001406b: movzx    ebx, byte ptr [ebp - 0xa]
0001406f: mov      edx, dword ptr [edx*4 + 0x17330]
00014076: xor      edx, dword ptr [ebx*4 + 0x16f30]
0001407d: mov      ebx, dword ptr [ebp - 0x14]
00014080: xor      ecx, dword ptr [esi + 0x18]
00014083: shr      ebx, 0x18
00014086: xor      edx, dword ptr [ebx*4 + 0x16b30]
0001408d: mov      dword ptr [ebp + 8], ebx
00014090: mov      ebx, dword ptr [ebp - 0x10]
00014093: and      ebx, eax
00014095: xor      edx, dword ptr [ebx*4 + 0x17730]
0001409c: mov      dword ptr [ebp + 8], ebx
0001409f: xor      edx, dword ptr [esi + 0x1c]
000140a2: lea      ebx, [esi + 0x20]
000140a5: mov      esi, dword ptr [esi + 0xf0]
000140ab: sar      esi, 1
000140ad: dec      esi
000140ae: mov      dword ptr [ebp - 0x18], ecx
000140b1: mov      dword ptr [ebp - 0x14], edx
000140b4: mov      dword ptr [ebp + 8], ebx
000140b7: je       0x1428d
000140bd: mov      dword ptr [ebp - 0x1c], esi
000140c0: movzx    ebx, byte ptr [ebp - 6]
000140c4: movzx    esi, ch
000140c7: mov      esi, dword ptr [esi*4 + 0x17330]
000140ce: xor      esi, dword ptr [ebx*4 + 0x16f30]
000140d5: mov      ebx, dword ptr [ebp - 4]
000140d8: mov      dword ptr [ebp + 0x10], esi
000140db: shr      ebx, 0x18
000140de: xor      esi, dword ptr [ebx*4 + 0x16b30]
000140e5: mov      ebx, edx
000140e7: and      ebx, eax
000140e9: xor      esi, dword ptr [ebx*4 + 0x17730]
000140f0: mov      ebx, dword ptr [ebp + 8]
000140f3: xor      esi, dword ptr [ebx]
000140f5: movzx    ebx, byte ptr [ebp - 0x16]
000140f9: mov      dword ptr [ebp - 0xc], esi
000140fc: movzx    esi, dh
000140ff: mov      esi, dword ptr [esi*4 + 0x17330]
00014106: xor      esi, dword ptr [ebx*4 + 0x16f30]
0001410d: mov      ebx, dword ptr [ebp - 4]
00014110: mov      dword ptr [ebp + 0x10], esi
00014113: mov      esi, dword ptr [ebp - 8]
00014116: shr      esi, 0x18
00014119: mov      esi, dword ptr [esi*4 + 0x16b30]
00014120: xor      dword ptr [ebp + 0x10], esi
00014123: mov      esi, dword ptr [ebp + 0x10]
00014126: and      ebx, eax
00014128: xor      esi, dword ptr [ebx*4 + 0x17730]
0001412f: mov      ebx, dword ptr [ebp + 8]
00014132: xor      esi, dword ptr [ebx + 4]
00014135: movzx    ebx, byte ptr [ebp - 3]
00014139: mov      dword ptr [ebp + 0x10], esi
0001413c: movzx    esi, byte ptr [ebp - 0x12]
00014140: mov      esi, dword ptr [esi*4 + 0x16f30]
00014147: xor      esi, dword ptr [ebx*4 + 0x17330]
0001414e: mov      ebx, ecx
00014150: shr      ebx, 0x18
00014153: xor      esi, dword ptr [ebx*4 + 0x16b30]
0001415a: mov      ebx, dword ptr [ebp - 8]
0001415d: and      ebx, eax
0001415f: mov      dword ptr [ebp - 0x18], esi
00014162: xor      esi, dword ptr [ebx*4 + 0x17730]
00014169: mov      ebx, dword ptr [ebp + 8]
0001416c: xor      esi, dword ptr [ebx + 8]
0001416f: movzx    ebx, byte ptr [ebp - 2]
00014173: mov      dword ptr [ebp - 0x10], esi
00014176: movzx    esi, byte ptr [ebp - 7]
0001417a: shr      edx, 0x18
0001417d: mov      dword ptr [ebp - 0x18], ebx
00014180: mov      ebx, dword ptr [esi*4 + 0x17330]
00014187: mov      esi, dword ptr [ebp - 0x18]
0001418a: xor      ebx, dword ptr [esi*4 + 0x16f30]
00014191: mov      esi, dword ptr [ebp + 8]
00014194: xor      ebx, dword ptr [edx*4 + 0x16b30]
0001419b: movzx    edx, byte ptr [ebp + 0x12]
0001419f: and      ecx, eax
000141a1: xor      ebx, dword ptr [ecx*4 + 0x17730]
000141a8: movzx    ecx, byte ptr [ebp - 0xf]
000141ac: mov      ecx, dword ptr [ecx*4 + 0x17330]
000141b3: xor      ecx, dword ptr [edx*4 + 0x16f30]
000141ba: xor      ebx, dword ptr [esi + 0xc]
000141bd: mov      edx, dword ptr [ebp - 0xc]
000141c0: shr      edx, 0x18
000141c3: xor      ecx, dword ptr [edx*4 + 0x16b30]
000141ca: mov      edx, ebx
000141cc: and      edx, eax
000141ce: xor      ecx, dword ptr [edx*4 + 0x17730]
000141d5: movzx    edx, byte ptr [ebp - 0xe]
000141d9: xor      ecx, dword ptr [esi + 0x10]
000141dc: mov      dword ptr [ebp - 0x14], ebx
000141df: mov      dword ptr [ebp - 4], ecx
000141e2: movzx    ecx, bh
000141e5: mov      ecx, dword ptr [ecx*4 + 0x17330]
000141ec: xor      ecx, dword ptr [edx*4 + 0x16f30]
000141f3: mov      edx, dword ptr [ebp + 0x10]
000141f6: shr      edx, 0x18
000141f9: xor      ecx, dword ptr [edx*4 + 0x16b30]
00014200: mov      edx, dword ptr [ebp - 0xc]
00014203: and      edx, eax
00014205: xor      ecx, dword ptr [edx*4 + 0x17730]
0001420c: xor      ecx, dword ptr [esi + 0x14]
0001420f: mov      dword ptr [ebp - 8], ecx
00014212: movzx    ecx, byte ptr [ebp - 0x12]
00014216: movzx    edx, byte ptr [ebp - 0xb]
0001421a: mov      ecx, dword ptr [ecx*4 + 0x16f30]
00014221: xor      ecx, dword ptr [edx*4 + 0x17330]
00014228: mov      edx, dword ptr [ebp - 0x10]
0001422b: shr      edx, 0x18
0001422e: xor      ecx, dword ptr [edx*4 + 0x16b30]
00014235: mov      edx, dword ptr [ebp + 0x10]
00014238: and      edx, eax
0001423a: xor      ecx, dword ptr [edx*4 + 0x17730]
00014241: movzx    edx, byte ptr [ebp + 0x11]
00014245: xor      ecx, dword ptr [esi + 0x18]
00014248: mov      edx, dword ptr [edx*4 + 0x17330]
0001424f: movzx    esi, byte ptr [ebp - 0xa]
00014253: xor      edx, dword ptr [esi*4 + 0x16f30]
0001425a: shr      ebx, 0x18
0001425d: xor      edx, dword ptr [ebx*4 + 0x16b30]
00014264: mov      dword ptr [ebp - 0x18], ecx
00014267: mov      esi, edx
00014269: mov      edx, dword ptr [ebp - 0x10]
0001426c: and      edx, eax
0001426e: xor      esi, dword ptr [edx*4 + 0x17730]
00014275: mov      edx, dword ptr [ebp + 8]
00014278: xor      esi, dword ptr [edx + 0x1c]
0001427b: add      dword ptr [ebp + 8], 0x20
0001427f: dec      dword ptr [ebp - 0x1c]
00014282: mov      edx, esi
00014284: mov      dword ptr [ebp - 0x14], edx
00014287: jne      0x140c0
0001428d: movzx    esi, byte ptr [ebp - 6]
00014291: mov      esi, dword ptr [esi*4 + 0x17b30]
00014298: and      esi, 0xff0000
0001429e: movzx    ebx, ch
000142a1: mov      ebx, dword ptr [ebx*4 + 0x17b30]
000142a8: and      ebx, 0xff00
000142ae: xor      esi, ebx
000142b0: mov      ebx, dword ptr [ebp - 4]
000142b3: shr      ebx, 0x18
000142b6: mov      ebx, dword ptr [ebx*4 + 0x17b30]
000142bd: and      ebx, 0xff000000
000142c3: xor      esi, ebx
000142c5: mov      ebx, edx
000142c7: and      ebx, eax
000142c9: mov      ebx, dword ptr [ebx*4 + 0x17b30]
000142d0: and      ebx, eax
000142d2: xor      esi, ebx
000142d4: mov      ebx, dword ptr [ebp + 8]
000142d7: xor      esi, dword ptr [ebx]
000142d9: mov      ebx, esi
000142db: ror      ebx, 8
000142de: and      ebx, 0xff00ff00
000142e4: rol      esi, 8
000142e7: and      esi, edi
000142e9: or       ebx, esi
000142eb: mov      esi, dword ptr [ebp + 0xc]
000142ee: mov      dword ptr [esi], ebx
000142f0: movzx    esi, byte ptr [ebp - 0x16]
000142f4: mov      esi, dword ptr [esi*4 + 0x17b30]
000142fb: and      esi, 0xff0000
00014301: movzx    ebx, dh
00014304: mov      ebx, dword ptr [ebx*4 + 0x17b30]
0001430b: and      ebx, 0xff00
00014311: xor      esi, ebx
00014313: mov      ebx, dword ptr [ebp - 8]
00014316: shr      ebx, 0x18
00014319: mov      ebx, dword ptr [ebx*4 + 0x17b30]
00014320: and      ebx, 0xff000000
00014326: xor      esi, ebx
00014328: mov      ebx, dword ptr [ebp - 4]
0001432b: and      ebx, eax
0001432d: mov      ebx, dword ptr [ebx*4 + 0x17b30]
00014334: and      ebx, eax
00014336: xor      esi, ebx
00014338: mov      ebx, dword ptr [ebp + 8]
0001433b: xor      esi, dword ptr [ebx + 4]
0001433e: mov      ebx, esi
00014340: ror      ebx, 8
00014343: and      ebx, 0xff00ff00
00014349: rol      esi, 8
0001434c: and      esi, edi
0001434e: or       ebx, esi
00014350: mov      esi, dword ptr [ebp + 0xc]
00014353: mov      dword ptr [esi + 4], ebx
00014356: movzx    esi, byte ptr [ebp - 0x12]
0001435a: mov      esi, dword ptr [esi*4 + 0x17b30]
00014361: movzx    ebx, byte ptr [ebp - 3]
00014365: mov      ebx, dword ptr [ebx*4 + 0x17b30]
0001436c: and      ebx, 0xff00
00014372: and      esi, 0xff0000
00014378: xor      esi, ebx
0001437a: mov      ebx, ecx
0001437c: shr      ebx, 0x18
0001437f: mov      ebx, dword ptr [ebx*4 + 0x17b30]
00014386: and      ebx, 0xff000000
0001438c: xor      esi, ebx
0001438e: mov      ebx, dword ptr [ebp - 8]
00014391: and      ebx, eax
00014393: mov      ebx, dword ptr [ebx*4 + 0x17b30]
0001439a: and      ebx, eax
0001439c: xor      esi, ebx
0001439e: mov      ebx, dword ptr [ebp + 8]
000143a1: xor      esi, dword ptr [ebx + 8]
000143a4: mov      ebx, esi
000143a6: ror      ebx, 8
000143a9: and      ebx, 0xff00ff00
000143af: rol      esi, 8
000143b2: and      esi, edi
000143b4: or       ebx, esi
000143b6: mov      esi, dword ptr [ebp + 0xc]
000143b9: mov      dword ptr [esi + 8], ebx
000143bc: movzx    esi, byte ptr [ebp - 2]
000143c0: mov      esi, dword ptr [esi*4 + 0x17b30]
000143c7: movzx    ebx, byte ptr [ebp - 7]
000143cb: mov      ebx, dword ptr [ebx*4 + 0x17b30]
000143d2: and      esi, 0xff0000
000143d8: and      ecx, eax
000143da: mov      ecx, dword ptr [ecx*4 + 0x17b30]
000143e1: shr      edx, 0x18
000143e4: mov      edx, dword ptr [edx*4 + 0x17b30]
000143eb: and      ebx, 0xff00
000143f1: xor      esi, ebx
000143f3: and      ecx, eax
000143f5: mov      eax, dword ptr [ebp + 8]
000143f8: and      edx, 0xff000000
000143fe: xor      esi, edx
00014400: xor      esi, ecx
00014402: xor      esi, dword ptr [eax + 0xc]
00014405: mov      ecx, dword ptr [ebp + 0xc]
00014408: mov      eax, esi
0001440a: ror      eax, 8
0001440d: and      eax, 0xff00ff00
00014412: rol      esi, 8
00014415: and      esi, edi
00014417: pop      edi
00014418: or       eax, esi
0001441a: pop      esi
0001441b: mov      dword ptr [ecx + 0xc], eax
0001441e: pop      ebx
0001441f: leave    
00014420: ret      0xc
00014423: int3     
00014424: int3     
00014425: int3     
00014426: int3     
00014427: int3     
00014428: mov      edi, edi
0001442a: push     ebp
0001442b: mov      ebp, esp
0001442d: sub      esp, 0x18
00014430: mov      edx, dword ptr [ebp + 8]
00014433: mov      ecx, dword ptr [edx]
00014435: push     ebx
00014436: mov      ebx, ecx
00014438: ror      ebx, 8
0001443b: mov      eax, 0xff00ff00
00014440: and      ebx, eax
00014442: rol      ecx, 8
00014445: push     esi
00014446: mov      esi, dword ptr [ebp + 0x10]
00014449: push     edi
0001444a: mov      edi, 0xff00ff
0001444f: and      ecx, edi
00014451: or       ebx, ecx
00014453: xor      ebx, dword ptr [esi]
00014455: mov      ecx, dword ptr [edx + 4]
00014458: mov      edx, ecx
0001445a: ror      edx, 8
0001445d: and      edx, eax
0001445f: rol      ecx, 8
00014462: and      ecx, edi
00014464: or       edx, ecx
00014466: xor      edx, dword ptr [esi + 4]
00014469: mov      ecx, dword ptr [ebp + 8]
0001446c: mov      ecx, dword ptr [ecx + 8]
0001446f: mov      dword ptr [ebp + 0x10], edx
00014472: mov      edx, ecx
00014474: ror      edx, 8
00014477: and      edx, eax
00014479: rol      ecx, 8
0001447c: and      ecx, edi
0001447e: or       edx, ecx
00014480: mov      ecx, dword ptr [ebp + 8]
00014483: mov      ecx, dword ptr [ecx + 0xc]
00014486: xor      edx, dword ptr [esi + 8]
00014489: mov      dword ptr [ebp + 8], ecx
0001448c: ror      dword ptr [ebp + 8], 8
00014490: and      dword ptr [ebp + 8], eax
00014493: mov      eax, ecx
00014495: mov      dword ptr [ebp - 0x18], ecx
00014498: mov      ecx, dword ptr [ebp + 8]
0001449b: rol      eax, 8
0001449e: and      eax, edi
000144a0: or       ecx, eax
000144a2: xor      ecx, dword ptr [esi + 0xc]
000144a5: mov      dword ptr [ebp - 8], ebx
000144a8: mov      dword ptr [ebp + 8], ecx
000144ab: movzx    eax, byte ptr [ebp + 0xa]
000144af: mov      ecx, dword ptr [eax*4 + 0x18330]
000144b6: movzx    edi, dh
000144b9: xor      ecx, dword ptr [edi*4 + 0x18730]
000144c0: mov      edi, dword ptr [ebp + 0x10]
000144c3: shr      ebx, 0x18
000144c6: xor      ecx, dword ptr [ebx*4 + 0x17f30]
000144cd: movzx    ebx, byte ptr [ebp - 6]
000144d1: mov      eax, 0xff
000144d6: and      edi, eax
000144d8: xor      ecx, dword ptr [edi*4 + 0x18b30]
000144df: movzx    edi, byte ptr [ebp + 9]
000144e3: mov      edi, dword ptr [edi*4 + 0x18730]
000144ea: xor      edi, dword ptr [ebx*4 + 0x18330]
000144f1: mov      ebx, dword ptr [ebp + 0x10]
000144f4: xor      ecx, dword ptr [esi + 0x10]
000144f7: shr      ebx, 0x18
000144fa: xor      edi, dword ptr [ebx*4 + 0x17f30]
00014501: mov      ebx, edx
00014503: and      ebx, eax
00014505: xor      edi, dword ptr [ebx*4 + 0x18b30]
0001450c: movzx    ebx, byte ptr [ebp - 7]
00014510: xor      edi, dword ptr [esi + 0x14]
00014513: mov      dword ptr [ebp - 0xc], edx
00014516: mov      dword ptr [ebp - 4], edi
00014519: movzx    edi, byte ptr [ebp + 0x12]
0001451d: mov      edi, dword ptr [edi*4 + 0x18330]
00014524: xor      edi, dword ptr [ebx*4 + 0x18730]
0001452b: mov      ebx, dword ptr [ebp + 8]
0001452e: shr      edx, 0x18
00014531: xor      edi, dword ptr [edx*4 + 0x17f30]
00014538: mov      dword ptr [ebp - 0x18], edx
0001453b: mov      dword ptr [ebp - 0x14], ecx
0001453e: mov      edx, ebx
00014540: and      edx, eax
00014542: xor      edi, dword ptr [edx*4 + 0x18b30]
00014549: movzx    edx, byte ptr [ebp - 0xa]
0001454d: xor      edi, dword ptr [esi + 0x18]
00014550: mov      edx, dword ptr [edx*4 + 0x18330]
00014557: mov      dword ptr [ebp + 8], edi
0001455a: movzx    edi, byte ptr [ebp + 0x11]
0001455e: xor      edx, dword ptr [edi*4 + 0x18730]
00014565: shr      ebx, 0x18
00014568: mov      edi, ebx
0001456a: xor      edx, dword ptr [edi*4 + 0x17f30]
00014571: mov      edi, dword ptr [ebp - 8]
00014574: and      edi, eax
00014576: xor      edx, dword ptr [edi*4 + 0x18b30]
0001457d: mov      dword ptr [ebp + 0x10], ebx
00014580: xor      edx, dword ptr [esi + 0x1c]
00014583: mov      dword ptr [ebp + 0x10], edi
00014586: lea      edi, [esi + 0x20]
00014589: mov      esi, dword ptr [esi + 0xf0]
0001458f: sar      esi, 1
00014591: dec      esi
00014592: mov      dword ptr [ebp + 0x10], edx
00014595: mov      dword ptr [ebp - 0x10], edi
00014598: je       0x14767
0001459e: mov      dword ptr [ebp - 0x18], esi
000145a1: movzx    esi, byte ptr [ebp + 0x12]
000145a5: mov      esi, dword ptr [esi*4 + 0x18330]
000145ac: movzx    edi, byte ptr [ebp + 9]
000145b0: xor      esi, dword ptr [edi*4 + 0x18730]
000145b7: mov      edi, ecx
000145b9: shr      edi, 0x18
000145bc: xor      esi, dword ptr [edi*4 + 0x17f30]
000145c3: mov      edi, dword ptr [ebp - 4]
000145c6: mov      dword ptr [ebp + 0x10], esi
000145c9: and      edi, eax
000145cb: xor      esi, dword ptr [edi*4 + 0x18b30]
000145d2: mov      edi, dword ptr [ebp - 0x10]
000145d5: xor      esi, dword ptr [edi]
000145d7: movzx    edi, byte ptr [ebp - 0x12]
000145db: mov      dword ptr [ebp - 8], esi
000145de: movzx    esi, dh
000145e1: mov      esi, dword ptr [esi*4 + 0x18730]
000145e8: xor      esi, dword ptr [edi*4 + 0x18330]
000145ef: mov      edi, dword ptr [ebp + 8]
000145f2: mov      dword ptr [ebp + 0x10], esi
000145f5: mov      esi, dword ptr [ebp - 4]
000145f8: shr      esi, 0x18
000145fb: mov      esi, dword ptr [esi*4 + 0x17f30]
00014602: xor      dword ptr [ebp + 0x10], esi
00014605: mov      esi, dword ptr [ebp + 0x10]
00014608: and      edi, eax
0001460a: xor      esi, dword ptr [edi*4 + 0x18b30]
00014611: mov      edi, dword ptr [ebp - 0x10]
00014614: xor      esi, dword ptr [edi + 4]
00014617: movzx    edi, ch
0001461a: mov      dword ptr [ebp + 0x10], esi
0001461d: movzx    esi, byte ptr [ebp - 2]
00014621: mov      esi, dword ptr [esi*4 + 0x18330]
00014628: xor      esi, dword ptr [edi*4 + 0x18730]
0001462f: mov      edi, dword ptr [ebp + 8]
00014632: mov      dword ptr [ebp - 0x14], esi
00014635: shr      edi, 0x18
00014638: xor      esi, dword ptr [edi*4 + 0x17f30]
0001463f: mov      edi, edx
00014641: and      edi, eax
00014643: xor      esi, dword ptr [edi*4 + 0x18b30]
0001464a: mov      edi, dword ptr [ebp - 0x10]
0001464d: xor      esi, dword ptr [edi + 8]
00014650: movzx    edi, byte ptr [ebp - 3]
00014654: mov      dword ptr [ebp - 0xc], esi
00014657: movzx    esi, byte ptr [ebp + 0xa]
0001465b: mov      ebx, dword ptr [esi*4 + 0x18330]
00014662: xor      ebx, dword ptr [edi*4 + 0x18730]
00014669: mov      edi, dword ptr [ebp - 0x10]
0001466c: shr      edx, 0x18
0001466f: xor      ebx, dword ptr [edx*4 + 0x17f30]
00014676: movzx    edx, byte ptr [ebp - 0xb]
0001467a: and      ecx, eax
0001467c: xor      ebx, dword ptr [ecx*4 + 0x18b30]
00014683: movzx    esi, byte ptr [ebp - 6]
00014687: xor      ebx, dword ptr [edi + 0xc]
0001468a: mov      dword ptr [ebp + 8], ebx
0001468d: movzx    ecx, byte ptr [ebp + 0xa]
00014691: mov      ecx, dword ptr [ecx*4 + 0x18330]
00014698: xor      ecx, dword ptr [edx*4 + 0x18730]
0001469f: mov      edx, dword ptr [ebp - 8]
000146a2: shr      edx, 0x18
000146a5: xor      ecx, dword ptr [edx*4 + 0x17f30]
000146ac: mov      edx, dword ptr [ebp + 0x10]
000146af: and      edx, eax
000146b1: xor      ecx, dword ptr [edx*4 + 0x18b30]
000146b8: movzx    edx, bh
000146bb: mov      edx, dword ptr [edx*4 + 0x18730]
000146c2: xor      edx, dword ptr [esi*4 + 0x18330]
000146c9: mov      esi, dword ptr [ebp + 0x10]
000146cc: xor      ecx, dword ptr [edi + 0x10]
000146cf: shr      esi, 0x18
000146d2: xor      edx, dword ptr [esi*4 + 0x17f30]
000146d9: mov      esi, dword ptr [ebp - 0xc]
000146dc: and      esi, eax
000146de: xor      edx, dword ptr [esi*4 + 0x18b30]
000146e5: movzx    esi, byte ptr [ebp - 7]
000146e9: xor      edx, dword ptr [edi + 0x14]
000146ec: mov      dword ptr [ebp - 0x14], ecx
000146ef: mov      dword ptr [ebp - 4], edx
000146f2: movzx    edx, byte ptr [ebp + 0x12]
000146f6: mov      edx, dword ptr [edx*4 + 0x18330]
000146fd: xor      edx, dword ptr [esi*4 + 0x18730]
00014704: mov      esi, dword ptr [ebp - 0xc]
00014707: shr      esi, 0x18
0001470a: xor      edx, dword ptr [esi*4 + 0x17f30]
00014711: mov      esi, ebx
00014713: and      esi, eax
00014715: xor      edx, dword ptr [esi*4 + 0x18b30]
0001471c: movzx    esi, byte ptr [ebp + 0x11]
00014720: xor      edx, dword ptr [edi + 0x18]
00014723: shr      ebx, 0x18
00014726: mov      dword ptr [ebp + 8], edx
00014729: movzx    edx, byte ptr [ebp - 0xa]
0001472d: mov      edx, dword ptr [edx*4 + 0x18330]
00014734: xor      edx, dword ptr [esi*4 + 0x18730]
0001473b: add      edi, 0x20
0001473e: xor      edx, dword ptr [ebx*4 + 0x17f30]
00014745: mov      dword ptr [ebp - 0x10], edi
00014748: mov      esi, edx
0001474a: mov      edx, dword ptr [ebp - 8]
0001474d: and      edx, eax
0001474f: xor      esi, dword ptr [edx*4 + 0x18b30]
00014756: xor      esi, dword ptr [edi - 4]
00014759: dec      dword ptr [ebp - 0x18]
0001475c: mov      edx, esi
0001475e: mov      dword ptr [ebp + 0x10], edx
00014761: jne      0x145a1
00014767: movzx    esi, byte ptr [ebp + 0x12]
0001476b: mov      esi, dword ptr [esi*4 + 0x18f30]
00014772: movzx    ebx, byte ptr [ebp + 9]
00014776: mov      ebx, dword ptr [ebx*4 + 0x18f30]
0001477d: and      ebx, 0xff00
00014783: and      esi, 0xff0000
00014789: xor      esi, ebx
0001478b: mov      ebx, ecx
0001478d: shr      ebx, 0x18
00014790: mov      ebx, dword ptr [ebx*4 + 0x18f30]
00014797: and      ebx, 0xff000000
0001479d: xor      esi, ebx
0001479f: mov      ebx, dword ptr [ebp - 4]
000147a2: and      ebx, eax
000147a4: mov      ebx, dword ptr [ebx*4 + 0x18f30]
000147ab: and      ebx, eax
000147ad: xor      esi, ebx
000147af: xor      esi, dword ptr [edi]
000147b1: mov      ebx, esi
000147b3: ror      ebx, 8
000147b6: and      ebx, 0xff00ff00
000147bc: rol      esi, 8
000147bf: and      esi, 0xff00ff
000147c5: or       ebx, esi
000147c7: mov      esi, dword ptr [ebp + 0xc]
000147ca: mov      dword ptr [esi], ebx
000147cc: movzx    esi, byte ptr [ebp - 0x12]
000147d0: mov      esi, dword ptr [esi*4 + 0x18f30]
000147d7: and      esi, 0xff0000
000147dd: movzx    ebx, dh
000147e0: mov      ebx, dword ptr [ebx*4 + 0x18f30]
000147e7: and      ebx, 0xff00
000147ed: xor      esi, ebx
000147ef: mov      ebx, dword ptr [ebp - 4]
000147f2: shr      ebx, 0x18
000147f5: mov      ebx, dword ptr [ebx*4 + 0x18f30]
000147fc: and      ebx, 0xff000000
00014802: xor      esi, ebx
00014804: mov      ebx, dword ptr [ebp + 8]
00014807: and      ebx, eax
00014809: mov      ebx, dword ptr [ebx*4 + 0x18f30]
00014810: and      ebx, eax
00014812: xor      esi, ebx
00014814: xor      esi, dword ptr [edi + 4]
00014817: mov      ebx, esi
00014819: ror      ebx, 8
0001481c: and      ebx, 0xff00ff00
00014822: rol      esi, 8
00014825: and      esi, 0xff00ff
0001482b: or       ebx, esi
0001482d: mov      esi, dword ptr [ebp + 0xc]
00014830: mov      dword ptr [esi + 4], ebx
00014833: movzx    esi, byte ptr [ebp - 2]
00014837: mov      esi, dword ptr [esi*4 + 0x18f30]
0001483e: and      esi, 0xff0000
00014844: movzx    ebx, ch
00014847: mov      ebx, dword ptr [ebx*4 + 0x18f30]
0001484e: and      ebx, 0xff00
00014854: xor      esi, ebx
00014856: mov      ebx, dword ptr [ebp + 8]
00014859: shr      ebx, 0x18
0001485c: mov      dword ptr [ebp + 0x10], ebx
0001485f: mov      ebx, dword ptr [ebx*4 + 0x18f30]
00014866: and      ebx, 0xff000000
0001486c: xor      esi, ebx
0001486e: mov      ebx, edx
00014870: and      ebx, eax
00014872: mov      ebx, dword ptr [ebx*4 + 0x18f30]
00014879: and      ebx, eax
0001487b: xor      esi, ebx
0001487d: xor      esi, dword ptr [edi + 8]
00014880: mov      ebx, esi
00014882: ror      ebx, 8
00014885: and      ebx, 0xff00ff00
0001488b: rol      esi, 8
0001488e: and      esi, 0xff00ff
00014894: or       ebx, esi
00014896: mov      esi, dword ptr [ebp + 0xc]
00014899: mov      dword ptr [esi + 8], ebx
0001489c: movzx    esi, byte ptr [ebp + 0xa]
000148a0: mov      esi, dword ptr [esi*4 + 0x18f30]
000148a7: movzx    ebx, byte ptr [ebp - 3]
000148ab: mov      ebx, dword ptr [ebx*4 + 0x18f30]
000148b2: and      esi, 0xff0000
000148b8: and      ecx, eax
000148ba: mov      ecx, dword ptr [ecx*4 + 0x18f30]
000148c1: shr      edx, 0x18
000148c4: mov      edx, dword ptr [edx*4 + 0x18f30]
000148cb: and      ebx, 0xff00
000148d1: xor      esi, ebx
000148d3: and      ecx, eax
000148d5: and      edx, 0xff000000
000148db: xor      esi, edx
000148dd: xor      esi, ecx
000148df: xor      esi, dword ptr [edi + 0xc]
000148e2: mov      ecx, dword ptr [ebp + 0xc]
000148e5: mov      eax, esi
000148e7: ror      eax, 8
000148ea: and      eax, 0xff00ff00
000148ef: rol      esi, 8
000148f2: and      esi, 0xff00ff
000148f8: pop      edi
000148f9: or       eax, esi
000148fb: pop      esi
000148fc: mov      dword ptr [ecx + 0xc], eax
000148ff: pop      ebx
00014900: leave    
00014901: ret      0xc
00014904: int3     
00014905: int3     
00014906: int3     
00014907: int3     
00014908: int3     
00014909: int3     
0001490a: mov      edi, edi
0001490c: push     ebp
0001490d: mov      ebp, esp
0001490f: sub      esp, 0xf4
00014915: test     dword ptr [ebp + 0xc], 0xf
0001491c: je       0x14925
0001491e: xor      al, al
00014920: jmp      0x14ac7
00014925: mov      edx, dword ptr [ebp + 0x14]
00014928: test     edx, edx
0001492a: push     ebx
0001492b: push     esi
0001492c: push     edi
0001492d: je       0x14a97
00014933: mov      esi, dword ptr [edx]
00014935: mov      edi, esi
00014937: ror      edi, 8
0001493a: mov      ecx, 0xff00ff00
0001493f: and      edi, ecx
00014941: rol      esi, 8
00014944: mov      eax, 0xff00ff
00014949: and      esi, eax
0001494b: or       edi, esi
0001494d: mov      esi, dword ptr [edx + 4]
00014950: mov      ebx, esi
00014952: ror      ebx, 8
00014955: and      ebx, ecx
00014957: rol      esi, 8
0001495a: and      esi, eax
0001495c: or       ebx, esi
0001495e: mov      esi, dword ptr [edx + 8]
00014961: mov      dword ptr [ebp - 0xf0], ebx
00014967: mov      ebx, esi
00014969: ror      ebx, 8
0001496c: and      ebx, ecx
0001496e: rol      esi, 8
00014971: and      esi, eax
00014973: or       ebx, esi
00014975: mov      esi, dword ptr [edx + 0xc]
00014978: mov      edx, esi
0001497a: ror      edx, 8
0001497d: and      edx, ecx
0001497f: rol      esi, 8
00014982: and      esi, eax
00014984: or       edx, esi
00014986: mov      dword ptr [ebp - 0xe8], edx
0001498c: movzx    eax, byte ptr [ebp - 0xe6]
00014993: mov      eax, dword ptr [eax*4 + 0x17b30]
0001499a: xor      eax, 0x1000000
0001499f: and      eax, 0xff000000
000149a4: movzx    ecx, dh
000149a7: mov      ecx, dword ptr [ecx*4 + 0x17b30]
000149ae: and      ecx, 0xff0000
000149b4: xor      eax, ecx
000149b6: mov      ecx, edx
000149b8: shr      ecx, 0x18
000149bb: mov      ecx, dword ptr [ecx*4 + 0x17b30]
000149c2: mov      esi, 0xff
000149c7: and      ecx, esi
000149c9: xor      eax, ecx
000149cb: mov      ecx, edx
000149cd: and      ecx, esi
000149cf: mov      ecx, dword ptr [ecx*4 + 0x17b30]
000149d6: and      ecx, 0xff00
000149dc: xor      eax, ecx
000149de: xor      eax, edi
000149e0: mov      dword ptr [ebp - 0xe4], eax
000149e6: xor      eax, dword ptr [ebp - 0xf0]
000149ec: mov      dword ptr [ebp - 0xf4], edi
000149f2: mov      dword ptr [ebp - 0xe0], eax
000149f8: xor      eax, ebx
000149fa: mov      dword ptr [ebp - 0xdc], eax
00014a00: xor      eax, edx
00014a02: mov      dword ptr [ebp - 0xd8], eax
00014a08: mov      dword ptr [ebp - 4], 0xa
00014a0f: mov      dword ptr [ebp - 0xec], ebx
00014a15: lea      eax, [ebp - 0xf0]
00014a1b: mov      edi, 0x19334
00014a20: mov      edx, dword ptr [eax + 0x18]
00014a23: add      eax, 0x10
00014a26: mov      dword ptr [ebp + 0x14], edx
00014a29: movzx    ebx, byte ptr [ebp + 0x16]
00014a2d: mov      ebx, dword ptr [ebx*4 + 0x17b30]
00014a34: movzx    ecx, dh
00014a37: mov      ecx, dword ptr [ecx*4 + 0x17b30]
00014a3e: and      ecx, 0xff0000
00014a44: and      ebx, 0xff000000
00014a4a: xor      ecx, ebx
00014a4c: mov      ebx, edx
00014a4e: and      edx, esi
00014a50: mov      edx, dword ptr [edx*4 + 0x17b30]
00014a57: shr      ebx, 0x18
00014a5a: mov      ebx, dword ptr [ebx*4 + 0x17b30]
00014a61: and      edx, 0xff00
00014a67: and      ebx, esi
00014a69: xor      ecx, ebx
00014a6b: xor      ecx, edx
00014a6d: xor      ecx, dword ptr [eax - 4]
00014a70: xor      ecx, dword ptr [edi]
00014a72: add      edi, 4
00014a75: mov      dword ptr [eax + 0xc], ecx
00014a78: mov      edx, dword ptr [eax]
00014a7a: xor      edx, ecx
00014a7c: mov      dword ptr [eax + 0x10], edx
00014a7f: mov      ecx, dword ptr [eax + 4]
00014a82: xor      ecx, edx
00014a84: mov      dword ptr [eax + 0x14], ecx
00014a87: mov      edx, dword ptr [eax + 8]
00014a8a: xor      edx, ecx
00014a8c: cmp      edi, 0x19358
00014a92: mov      dword ptr [eax + 0x18], edx
00014a95: jne      0x14a20
00014a97: mov      esi, dword ptr [ebp + 0xc]
00014a9a: test     esi, esi
00014a9c: jbe      0x14ac2
00014a9e: mov      ebx, dword ptr [ebp + 8]
00014aa1: mov      edi, dword ptr [ebp + 0x10]
00014aa4: sub      edi, ebx
00014aa6: dec      esi
00014aa7: shr      esi, 4
00014aaa: inc      esi
00014aab: lea      eax, [ebp - 0xf4]
00014ab1: push     eax
00014ab2: lea      eax, [edi + ebx]
00014ab5: push     eax
00014ab6: push     ebx
00014ab7: call     0x13f4a
00014abc: add      ebx, 0x10
00014abf: dec      esi
00014ac0: jne      0x14aab
00014ac2: pop      edi
00014ac3: pop      esi
00014ac4: mov      al, 1
00014ac6: pop      ebx
00014ac7: leave    
00014ac8: ret      0x10
00014acb: int3     
00014acc: int3     
00014acd: int3     
00014ace: int3     
00014acf: int3     
00014ad0: mov      edi, edi
00014ad2: push     ebp
00014ad3: mov      ebp, esp
00014ad5: sub      esp, 0xf4
00014adb: push     esi
00014adc: mov      esi, dword ptr [ebp + 0xc]
00014adf: test     esi, 0xf
00014ae5: je       0x14aeb
00014ae7: xor      al, al
00014ae9: jmp      0x14b2d
00014aeb: lea      eax, [ebp - 0xf4]
00014af1: push     eax
00014af2: push     0x80
00014af7: push     dword ptr [ebp + 0x14]
00014afa: call     0x13d44
00014aff: test     esi, esi
00014b01: jbe      0x14b2b
00014b03: push     ebx
00014b04: mov      ebx, dword ptr [ebp + 8]
00014b07: push     edi
00014b08: mov      edi, dword ptr [ebp + 0x10]
00014b0b: sub      edi, ebx
00014b0d: dec      esi
00014b0e: shr      esi, 4
00014b11: inc      esi
00014b12: lea      eax, [ebp - 0xf4]
00014b18: push     eax
00014b19: lea      eax, [edi + ebx]
00014b1c: push     eax
00014b1d: push     ebx
00014b1e: call     0x14428
00014b23: add      ebx, 0x10
00014b26: dec      esi
00014b27: jne      0x14b12
00014b29: pop      edi
00014b2a: pop      ebx
00014b2b: mov      al, 1
00014b2d: pop      esi
00014b2e: leave    
00014b2f: ret      0x10
00014b32: int3     
00014b33: int3     
00014b34: int3     
00014b35: int3     
00014b36: int3     
00014b37: int3     
00014b38: mov      edi, edi
00014b3a: push     ebp
00014b3b: mov      ebp, esp
00014b3d: push     esi
00014b3e: movzx    esi, byte ptr [ebp + 8]
00014b42: push     0x20
00014b44: pop      ecx
00014b45: sub      ecx, esi
00014b47: mov      eax, edx
00014b49: shr      eax, cl
00014b4b: mov      ecx, esi
00014b4d: shl      edx, cl
00014b4f: pop      esi
00014b50: or       eax, edx
00014b52: pop      ebp
00014b53: ret      4
00014b56: int3     
00014b57: int3     
00014b58: int3     
00014b59: int3     
00014b5a: int3     
00014b5b: int3     
00014b5c: lea      eax, [ecx + eax*4]
00014b5f: movzx    edx, byte ptr [eax + 2]
00014b63: xor      ecx, ecx
00014b65: mov      ch, byte ptr [eax]
00014b67: mov      cl, byte ptr [eax + 1]
00014b6a: movzx    eax, byte ptr [eax + 3]
00014b6e: shl      ecx, 8
00014b71: or       ecx, edx
00014b73: shl      ecx, 8
00014b76: or       eax, ecx
00014b78: ret      
00014b79: int3     
00014b7a: int3     
00014b7b: int3     
00014b7c: int3     
00014b7d: int3     
00014b7e: mov      edx, ecx
00014b80: shr      edx, 0x18
00014b83: mov      byte ptr [eax], dl
00014b85: mov      edx, ecx
00014b87: shr      edx, 0x10
00014b8a: mov      byte ptr [eax + 1], dl
00014b8d: mov      edx, ecx
00014b8f: shr      edx, 8
00014b92: mov      byte ptr [eax + 2], dl
00014b95: mov      byte ptr [eax + 3], cl
00014b98: ret      
00014b99: int3     
00014b9a: int3     
00014b9b: int3     
00014b9c: int3     
00014b9d: int3     
00014b9e: xor      edx, edx
00014ba0: mov      ecx, eax
00014ba2: shr      ecx, 0x18
00014ba5: mov      dh, byte ptr [ecx + 0x19358]
00014bab: mov      ecx, eax
00014bad: shr      ecx, 0x10
00014bb0: movzx    ecx, cl
00014bb3: push     esi
00014bb4: mov      dl, byte ptr [ecx + 0x19358]
00014bba: mov      ecx, eax
00014bbc: shr      ecx, 8
00014bbf: movzx    ecx, cl
00014bc2: movzx    ecx, byte ptr [ecx + 0x19358]
00014bc9: shl      edx, 8
00014bcc: movzx    eax, al
00014bcf: movzx    eax, byte ptr [eax + 0x19358]
00014bd6: or       edx, ecx
00014bd8: shl      edx, 8
00014bdb: push     edi
00014bdc: or       edx, eax
00014bde: push     0x18
00014be0: mov      esi, edx
00014be2: call     0x14b38
00014be7: push     0x12
00014be9: mov      edx, esi
00014beb: mov      edi, eax
00014bed: call     0x14b38
00014bf2: push     0xa
00014bf4: mov      edx, esi
00014bf6: xor      edi, eax
00014bf8: call     0x14b38
00014bfd: push     2
00014bff: mov      edx, esi
00014c01: xor      edi, eax
00014c03: call     0x14b38
00014c08: xor      edi, eax
00014c0a: xor      edi, esi
00014c0c: mov      eax, edi
00014c0e: pop      edi
00014c0f: pop      esi
00014c10: ret      
00014c11: int3     
00014c12: int3     
00014c13: int3     
00014c14: int3     
00014c15: int3     
00014c16: mov      edi, edi
00014c18: push     ebx
00014c19: mov      ebx, eax
00014c1b: shr      eax, 0x10
00014c1e: movzx    eax, al
00014c21: mov      edx, dword ptr [eax*4 + 0x19458]
00014c28: push     esi
00014c29: push     0x18
00014c2b: call     0x14b38
00014c30: mov      esi, eax
00014c32: mov      eax, ebx
00014c34: shr      eax, 8
00014c37: movzx    eax, al
00014c3a: mov      edx, dword ptr [eax*4 + 0x19458]
00014c41: push     0x10
00014c43: call     0x14b38
00014c48: xor      esi, eax
00014c4a: movzx    eax, bl
00014c4d: mov      edx, dword ptr [eax*4 + 0x19458]
00014c54: push     8
00014c56: call     0x14b38
00014c5b: xor      esi, eax
00014c5d: shr      ebx, 0x18
00014c60: xor      esi, dword ptr [ebx*4 + 0x19458]
00014c67: mov      eax, esi
00014c69: pop      esi
00014c6a: pop      ebx
00014c6b: ret      
00014c6c: int3     
00014c6d: int3     
00014c6e: int3     
00014c6f: int3     
00014c70: int3     
00014c71: int3     
00014c72: mov      edi, edi
00014c74: push     ebp
00014c75: mov      ebp, esp
00014c77: sub      esp, 0x14
00014c7a: push     ebx
00014c7b: push     esi
00014c7c: mov      esi, dword ptr [ebp + 8]
00014c7f: push     edi
00014c80: xor      eax, eax
00014c82: mov      ecx, esi
00014c84: call     0x14b5c
00014c89: xor      eax, 0xa3b1bac6
00014c8e: mov      dword ptr [ebp - 0x14], eax
00014c91: xor      eax, eax
00014c93: inc      eax
00014c94: mov      ecx, esi
00014c96: call     0x14b5c
00014c9b: xor      eax, 0x56aa3350
00014ca0: push     2
00014ca2: mov      dword ptr [ebp - 0x10], eax
00014ca5: pop      eax
00014ca6: mov      ecx, esi
00014ca8: call     0x14b5c
00014cad: xor      eax, 0x677d9197
00014cb2: push     3
00014cb4: mov      dword ptr [ebp - 0xc], eax
00014cb7: pop      eax
00014cb8: mov      ecx, esi
00014cba: call     0x14b5c
00014cbf: mov      edi, dword ptr [ebp + 0xc]
00014cc2: and      dword ptr [ebp + 8], 0
00014cc6: xor      eax, 0xb27022dc
00014ccb: mov      dword ptr [ebp + 0xc], 0x19868
00014cd2: sub      dword ptr [ebp + 0xc], edi
00014cd5: mov      dword ptr [ebp - 8], eax
00014cd8: mov      esi, dword ptr [ebp + 8]
00014cdb: push     4
00014cdd: add      esi, 2
00014ce0: pop      ecx
00014ce1: lea      eax, [esi - 1]
00014ce4: cdq      
00014ce5: idiv     ecx
00014ce7: push     4
00014ce9: pop      ebx
00014cea: lea      eax, [esi + 1]
00014ced: push     ebx
00014cee: mov      ecx, edx
00014cf0: cdq      
00014cf1: idiv     ebx
00014cf3: mov      ecx, dword ptr [ebp + ecx*4 - 0x14]
00014cf7: mov      eax, esi
00014cf9: pop      esi
00014cfa: push     ebx
00014cfb: xor      ecx, dword ptr [ebp + edx*4 - 0x14]
00014cff: cdq      
00014d00: idiv     esi
00014d02: mov      eax, dword ptr [ebp + 0xc]
00014d05: xor      ecx, dword ptr [ebp + edx*4 - 0x14]
00014d09: xor      edx, edx
00014d0b: xor      ecx, dword ptr [eax + edi]
00014d0e: mov      eax, ecx
00014d10: shr      eax, 0x18
00014d13: mov      dh, byte ptr [eax + 0x19358]
00014d19: mov      eax, ecx
00014d1b: shr      eax, 0x10
00014d1e: movzx    eax, al
00014d21: mov      dl, byte ptr [eax + 0x19358]
00014d27: mov      eax, ecx
00014d29: shr      eax, 8
00014d2c: movzx    eax, al
00014d2f: movzx    eax, byte ptr [eax + 0x19358]
00014d36: shl      edx, 8
00014d39: or       edx, eax
00014d3b: movzx    eax, cl
00014d3e: movzx    eax, byte ptr [eax + 0x19358]
00014d45: shl      edx, 8
00014d48: or       edx, eax
00014d4a: mov      eax, dword ptr [ebp + 8]
00014d4d: mov      dword ptr [ebp - 4], edx
00014d50: cdq      
00014d51: pop      ecx
00014d52: idiv     ecx
00014d54: push     0x17
00014d56: lea      esi, [ebp + edx*4 - 0x14]
00014d5a: mov      edx, dword ptr [ebp - 4]
00014d5d: call     0x14b38
00014d62: mov      edx, dword ptr [ebp - 4]
00014d65: push     0xd
00014d67: mov      ebx, eax
00014d69: call     0x14b38
00014d6e: xor      ebx, eax
00014d70: xor      ebx, dword ptr [ebp - 4]
00014d73: xor      dword ptr [esi], ebx
00014d75: mov      esi, dword ptr [esi]
00014d77: inc      dword ptr [ebp + 8]
00014d7a: mov      dword ptr [edi], esi
00014d7c: add      edi, 4
00014d7f: cmp      dword ptr [ebp + 8], 0x20
00014d83: jne      0x14cd8
00014d89: pop      edi
00014d8a: xor      eax, eax
00014d8c: pop      esi
00014d8d: inc      eax
00014d8e: pop      ebx
00014d8f: leave    
00014d90: ret      8
00014d93: int3     
00014d94: int3     
00014d95: int3     
00014d96: int3     
00014d97: int3     
00014d98: mov      edi, edi
00014d9a: push     ebp
00014d9b: mov      ebp, esp
00014d9d: push     ecx
00014d9e: push     ecx
00014d9f: mov      ecx, dword ptr [ebp + 8]
00014da2: push     ebx
00014da3: push     esi
00014da4: xor      eax, eax
00014da6: push     edi
00014da7: inc      eax
00014da8: call     0x14b5c
00014dad: mov      ecx, dword ptr [ebp + 8]
00014db0: push     2
00014db2: mov      ebx, eax
00014db4: pop      eax
00014db5: call     0x14b5c
00014dba: mov      ecx, dword ptr [ebp + 8]
00014dbd: push     3
00014dbf: mov      dword ptr [ebp - 4], eax
00014dc2: pop      eax
00014dc3: call     0x14b5c
00014dc8: mov      esi, dword ptr [ebp + 0x10]
00014dcb: mov      dword ptr [ebp - 8], eax
00014dce: mov      eax, dword ptr [esi]
00014dd0: xor      eax, dword ptr [ebp - 8]
00014dd3: xor      eax, dword ptr [ebp - 4]
00014dd6: xor      eax, ebx
00014dd8: call     0x14b9e
00014ddd: mov      ecx, dword ptr [ebp + 8]
00014de0: mov      edi, eax
00014de2: xor      eax, eax
00014de4: call     0x14b5c
00014de9: xor      edi, eax
00014deb: mov      eax, dword ptr [esi + 4]
00014dee: xor      eax, dword ptr [ebp - 8]
00014df1: xor      eax, dword ptr [ebp - 4]
00014df4: xor      eax, edi
00014df6: call     0x14b9e
00014dfb: xor      ebx, eax
00014dfd: mov      eax, dword ptr [esi + 8]
00014e00: xor      eax, dword ptr [ebp - 8]
00014e03: xor      eax, ebx
00014e05: xor      eax, edi
00014e07: call     0x14b9e
00014e0c: xor      dword ptr [ebp - 4], eax
00014e0f: mov      eax, dword ptr [esi + 0xc]
00014e12: xor      eax, dword ptr [ebp - 4]
00014e15: xor      eax, ebx
00014e17: xor      eax, edi
00014e19: call     0x14b9e
00014e1e: xor      dword ptr [ebp - 8], eax
00014e21: mov      eax, dword ptr [esi + 0x10]
00014e24: xor      eax, dword ptr [ebp - 8]
00014e27: xor      eax, dword ptr [ebp - 4]
00014e2a: xor      eax, ebx
00014e2c: call     0x14c16
00014e31: xor      edi, eax
00014e33: mov      eax, dword ptr [esi + 0x14]
00014e36: xor      eax, dword ptr [ebp - 8]
00014e39: xor      eax, dword ptr [ebp - 4]
00014e3c: xor      eax, edi
00014e3e: call     0x14c16
00014e43: xor      ebx, eax
00014e45: mov      eax, dword ptr [esi + 0x18]
00014e48: xor      eax, dword ptr [ebp - 8]
00014e4b: xor      eax, ebx
00014e4d: xor      eax, edi
00014e4f: call     0x14c16
00014e54: xor      dword ptr [ebp - 4], eax
00014e57: mov      eax, dword ptr [esi + 0x1c]
00014e5a: xor      eax, dword ptr [ebp - 4]
00014e5d: xor      eax, ebx
00014e5f: xor      eax, edi
00014e61: call     0x14c16
00014e66: xor      dword ptr [ebp - 8], eax
00014e69: mov      eax, dword ptr [esi + 0x20]
00014e6c: xor      eax, dword ptr [ebp - 8]
00014e6f: xor      eax, dword ptr [ebp - 4]
00014e72: xor      eax, ebx
00014e74: call     0x14c16
00014e79: xor      edi, eax
00014e7b: mov      eax, dword ptr [esi + 0x24]
00014e7e: xor      eax, dword ptr [ebp - 8]
00014e81: xor      eax, dword ptr [ebp - 4]
00014e84: xor      eax, edi
00014e86: call     0x14c16
00014e8b: xor      ebx, eax
00014e8d: mov      eax, dword ptr [esi + 0x28]
00014e90: xor      eax, dword ptr [ebp - 8]
00014e93: xor      eax, ebx
00014e95: xor      eax, edi
00014e97: call     0x14c16
00014e9c: xor      dword ptr [ebp - 4], eax
00014e9f: mov      eax, dword ptr [esi + 0x2c]
00014ea2: xor      eax, dword ptr [ebp - 4]
00014ea5: xor      eax, ebx
00014ea7: xor      eax, edi
00014ea9: call     0x14c16
00014eae: xor      dword ptr [ebp - 8], eax
00014eb1: mov      eax, dword ptr [esi + 0x30]
00014eb4: xor      eax, dword ptr [ebp - 8]
00014eb7: xor      eax, dword ptr [ebp - 4]
00014eba: xor      eax, ebx
00014ebc: call     0x14c16
00014ec1: xor      edi, eax
00014ec3: mov      eax, dword ptr [esi + 0x34]
00014ec6: xor      eax, dword ptr [ebp - 8]
00014ec9: xor      eax, dword ptr [ebp - 4]
00014ecc: xor      eax, edi
00014ece: call     0x14c16
00014ed3: xor      ebx, eax
00014ed5: mov      eax, dword ptr [esi + 0x38]
00014ed8: xor      eax, dword ptr [ebp - 8]
00014edb: xor      eax, ebx
00014edd: xor      eax, edi
00014edf: call     0x14c16
00014ee4: xor      dword ptr [ebp - 4], eax
00014ee7: mov      eax, dword ptr [esi + 0x3c]
00014eea: xor      eax, dword ptr [ebp - 4]
00014eed: xor      eax, ebx
00014eef: xor      eax, edi
00014ef1: call     0x14c16
00014ef6: xor      dword ptr [ebp - 8], eax
00014ef9: mov      eax, dword ptr [esi + 0x40]
00014efc: xor      eax, dword ptr [ebp - 8]
00014eff: xor      eax, dword ptr [ebp - 4]
00014f02: xor      eax, ebx
00014f04: call     0x14c16
00014f09: xor      edi, eax
00014f0b: mov      eax, dword ptr [esi + 0x44]
00014f0e: xor      eax, dword ptr [ebp - 8]
00014f11: xor      eax, dword ptr [ebp - 4]
00014f14: xor      eax, edi
00014f16: call     0x14c16
00014f1b: xor      ebx, eax
00014f1d: mov      eax, dword ptr [esi + 0x48]
00014f20: xor      eax, dword ptr [ebp - 8]
00014f23: xor      eax, ebx
00014f25: xor      eax, edi
00014f27: call     0x14c16
00014f2c: xor      dword ptr [ebp - 4], eax
00014f2f: mov      eax, dword ptr [esi + 0x4c]
00014f32: xor      eax, dword ptr [ebp - 4]
00014f35: xor      eax, ebx
00014f37: xor      eax, edi
00014f39: call     0x14c16
00014f3e: xor      dword ptr [ebp - 8], eax
00014f41: mov      eax, dword ptr [esi + 0x50]
00014f44: xor      eax, dword ptr [ebp - 8]
00014f47: xor      eax, dword ptr [ebp - 4]
00014f4a: xor      eax, ebx
00014f4c: call     0x14c16
00014f51: xor      edi, eax
00014f53: mov      eax, dword ptr [esi + 0x54]
00014f56: xor      eax, dword ptr [ebp - 8]
00014f59: xor      eax, dword ptr [ebp - 4]
00014f5c: xor      eax, edi
00014f5e: call     0x14c16
00014f63: xor      ebx, eax
00014f65: mov      eax, dword ptr [esi + 0x58]
00014f68: xor      eax, dword ptr [ebp - 8]
00014f6b: xor      eax, ebx
00014f6d: xor      eax, edi
00014f6f: call     0x14c16
00014f74: xor      dword ptr [ebp - 4], eax
00014f77: mov      eax, dword ptr [esi + 0x5c]
00014f7a: xor      eax, dword ptr [ebp - 4]
00014f7d: xor      eax, ebx
00014f7f: xor      eax, edi
00014f81: call     0x14c16
00014f86: xor      dword ptr [ebp - 8], eax
00014f89: mov      eax, dword ptr [esi + 0x60]
00014f8c: xor      eax, dword ptr [ebp - 8]
00014f8f: xor      eax, dword ptr [ebp - 4]
00014f92: xor      eax, ebx
00014f94: call     0x14c16
00014f99: xor      edi, eax
00014f9b: mov      eax, dword ptr [esi + 0x64]
00014f9e: xor      eax, dword ptr [ebp - 8]
00014fa1: xor      eax, dword ptr [ebp - 4]
00014fa4: xor      eax, edi
00014fa6: call     0x14c16
00014fab: xor      ebx, eax
00014fad: mov      eax, dword ptr [esi + 0x68]
00014fb0: xor      eax, dword ptr [ebp - 8]
00014fb3: xor      eax, ebx
00014fb5: xor      eax, edi
00014fb7: call     0x14c16
00014fbc: xor      dword ptr [ebp - 4], eax
00014fbf: mov      eax, dword ptr [esi + 0x6c]
00014fc2: xor      eax, dword ptr [ebp - 4]
00014fc5: xor      eax, ebx
00014fc7: xor      eax, edi
00014fc9: call     0x14c16
00014fce: xor      dword ptr [ebp - 8], eax
00014fd1: mov      eax, dword ptr [esi + 0x70]
00014fd4: xor      eax, dword ptr [ebp - 8]
00014fd7: xor      eax, dword ptr [ebp - 4]
00014fda: xor      eax, ebx
00014fdc: call     0x14b9e
00014fe1: xor      edi, eax
00014fe3: mov      eax, dword ptr [esi + 0x74]
00014fe6: xor      eax, dword ptr [ebp - 8]
00014fe9: xor      eax, dword ptr [ebp - 4]
00014fec: xor      eax, edi
00014fee: call     0x14b9e
00014ff3: xor      ebx, eax
00014ff5: mov      eax, dword ptr [esi + 0x78]
00014ff8: xor      eax, dword ptr [ebp - 8]
00014ffb: xor      eax, ebx
00014ffd: xor      eax, edi
00014fff: call     0x14b9e
00015004: xor      dword ptr [ebp - 4], eax
00015007: mov      eax, dword ptr [esi + 0x7c]
0001500a: xor      eax, dword ptr [ebp - 4]
0001500d: xor      eax, ebx
0001500f: xor      eax, edi
00015011: call     0x14b9e
00015016: mov      esi, dword ptr [ebp + 0xc]
00015019: mov      ecx, eax
0001501b: xor      ecx, dword ptr [ebp - 8]
0001501e: mov      eax, esi
00015020: call     0x14b7e
00015025: mov      ecx, dword ptr [ebp - 4]
00015028: lea      eax, [esi + 4]
0001502b: call     0x14b7e
00015030: lea      eax, [esi + 8]
00015033: mov      ecx, ebx
00015035: call     0x14b7e
0001503a: lea      eax, [esi + 0xc]
0001503d: mov      ecx, edi
0001503f: call     0x14b7e
00015044: pop      edi
00015045: pop      esi
00015046: pop      ebx
00015047: leave    
00015048: ret      0xc
0001504b: int3     
0001504c: int3     
0001504d: int3     
0001504e: int3     
0001504f: int3     
00015050: mov      edi, edi
00015052: push     ebp
00015053: mov      ebp, esp
00015055: push     ecx
00015056: push     ecx
00015057: mov      ecx, dword ptr [ebp + 8]
0001505a: push     ebx
0001505b: push     esi
0001505c: xor      eax, eax
0001505e: push     edi
0001505f: inc      eax
00015060: call     0x14b5c
00015065: mov      ecx, dword ptr [ebp + 8]
00015068: push     2
0001506a: mov      ebx, eax
0001506c: pop      eax
0001506d: call     0x14b5c
00015072: mov      ecx, dword ptr [ebp + 8]
00015075: push     3
00015077: mov      dword ptr [ebp - 4], eax
0001507a: pop      eax
0001507b: call     0x14b5c
00015080: mov      esi, dword ptr [ebp + 0x10]
00015083: mov      dword ptr [ebp - 8], eax
00015086: mov      eax, dword ptr [esi + 0x7c]
00015089: xor      eax, dword ptr [ebp - 8]
0001508c: xor      eax, dword ptr [ebp - 4]
0001508f: xor      eax, ebx
00015091: call     0x14b9e
00015096: mov      ecx, dword ptr [ebp + 8]
00015099: mov      edi, eax
0001509b: xor      eax, eax
0001509d: call     0x14b5c
000150a2: xor      edi, eax
000150a4: mov      eax, dword ptr [esi + 0x78]
000150a7: xor      eax, dword ptr [ebp - 8]
000150aa: xor      eax, dword ptr [ebp - 4]
000150ad: xor      eax, edi
000150af: call     0x14b9e
000150b4: xor      ebx, eax
000150b6: mov      eax, dword ptr [esi + 0x74]
000150b9: xor      eax, dword ptr [ebp - 8]
000150bc: xor      eax, ebx
000150be: xor      eax, edi
000150c0: call     0x14b9e
000150c5: xor      dword ptr [ebp - 4], eax
000150c8: mov      eax, dword ptr [esi + 0x70]
000150cb: xor      eax, dword ptr [ebp - 4]
000150ce: xor      eax, ebx
000150d0: xor      eax, edi
000150d2: call     0x14b9e
000150d7: xor      dword ptr [ebp - 8], eax
000150da: mov      eax, dword ptr [esi + 0x6c]
000150dd: xor      eax, dword ptr [ebp - 8]
000150e0: xor      eax, dword ptr [ebp - 4]
000150e3: xor      eax, ebx
000150e5: call     0x14c16
000150ea: xor      edi, eax
000150ec: mov      eax, dword ptr [esi + 0x68]
000150ef: xor      eax, dword ptr [ebp - 8]
000150f2: xor      eax, dword ptr [ebp - 4]
000150f5: xor      eax, edi
000150f7: call     0x14c16
000150fc: xor      ebx, eax
000150fe: mov      eax, dword ptr [esi + 0x64]
00015101: xor      eax, dword ptr [ebp - 8]
00015104: xor      eax, ebx
00015106: xor      eax, edi
00015108: call     0x14c16
0001510d: xor      dword ptr [ebp - 4], eax
00015110: mov      eax, dword ptr [esi + 0x60]
00015113: xor      eax, dword ptr [ebp - 4]
00015116: xor      eax, ebx
00015118: xor      eax, edi
0001511a: call     0x14c16
0001511f: xor      dword ptr [ebp - 8], eax
00015122: mov      eax, dword ptr [esi + 0x5c]
00015125: xor      eax, dword ptr [ebp - 8]
00015128: xor      eax, dword ptr [ebp - 4]
0001512b: xor      eax, ebx
0001512d: call     0x14c16
00015132: xor      edi, eax
00015134: mov      eax, dword ptr [esi + 0x58]
00015137: xor      eax, dword ptr [ebp - 8]
0001513a: xor      eax, dword ptr [ebp - 4]
0001513d: xor      eax, edi
0001513f: call     0x14c16
00015144: xor      ebx, eax
00015146: mov      eax, dword ptr [esi + 0x54]
00015149: xor      eax, dword ptr [ebp - 8]
0001514c: xor      eax, ebx
0001514e: xor      eax, edi
00015150: call     0x14c16
00015155: xor      dword ptr [ebp - 4], eax
00015158: mov      eax, dword ptr [esi + 0x50]
0001515b: xor      eax, dword ptr [ebp - 4]
0001515e: xor      eax, ebx
00015160: xor      eax, edi
00015162: call     0x14c16
00015167: xor      dword ptr [ebp - 8], eax
0001516a: mov      eax, dword ptr [esi + 0x4c]
0001516d: xor      eax, dword ptr [ebp - 8]
00015170: xor      eax, dword ptr [ebp - 4]
00015173: xor      eax, ebx
00015175: call     0x14c16
0001517a: xor      edi, eax
0001517c: mov      eax, dword ptr [esi + 0x48]
0001517f: xor      eax, dword ptr [ebp - 8]
00015182: xor      eax, dword ptr [ebp - 4]
00015185: xor      eax, edi
00015187: call     0x14c16
0001518c: xor      ebx, eax
0001518e: mov      eax, dword ptr [esi + 0x44]
00015191: xor      eax, dword ptr [ebp - 8]
00015194: xor      eax, ebx
00015196: xor      eax, edi
00015198: call     0x14c16
0001519d: xor      dword ptr [ebp - 4], eax
000151a0: mov      eax, dword ptr [esi + 0x40]
000151a3: xor      eax, dword ptr [ebp - 4]
000151a6: xor      eax, ebx
000151a8: xor      eax, edi
000151aa: call     0x14c16
000151af: xor      dword ptr [ebp - 8], eax
000151b2: mov      eax, dword ptr [esi + 0x3c]
000151b5: xor      eax, dword ptr [ebp - 8]
000151b8: xor      eax, dword ptr [ebp - 4]
000151bb: xor      eax, ebx
000151bd: call     0x14c16
000151c2: xor      edi, eax
000151c4: mov      eax, dword ptr [esi + 0x38]
000151c7: xor      eax, dword ptr [ebp - 8]
000151ca: xor      eax, dword ptr [ebp - 4]
000151cd: xor      eax, edi
000151cf: call     0x14c16
000151d4: xor      ebx, eax
000151d6: mov      eax, dword ptr [esi + 0x34]
000151d9: xor      eax, dword ptr [ebp - 8]
000151dc: xor      eax, ebx
000151de: xor      eax, edi
000151e0: call     0x14c16
000151e5: xor      dword ptr [ebp - 4], eax
000151e8: mov      eax, dword ptr [esi + 0x30]
000151eb: xor      eax, dword ptr [ebp - 4]
000151ee: xor      eax, ebx
000151f0: xor      eax, edi
000151f2: call     0x14c16
000151f7: xor      dword ptr [ebp - 8], eax
000151fa: mov      eax, dword ptr [esi + 0x2c]
000151fd: xor      eax, dword ptr [ebp - 8]
00015200: xor      eax, dword ptr [ebp - 4]
00015203: xor      eax, ebx
00015205: call     0x14c16
0001520a: xor      edi, eax
0001520c: mov      eax, dword ptr [esi + 0x28]
0001520f: xor      eax, dword ptr [ebp - 8]
00015212: xor      eax, dword ptr [ebp - 4]
00015215: xor      eax, edi
00015217: call     0x14c16
0001521c: xor      ebx, eax
0001521e: mov      eax, dword ptr [esi + 0x24]
00015221: xor      eax, dword ptr [ebp - 8]
00015224: xor      eax, ebx
00015226: xor      eax, edi
00015228: call     0x14c16
0001522d: xor      dword ptr [ebp - 4], eax
00015230: mov      eax, dword ptr [esi + 0x20]
00015233: xor      eax, dword ptr [ebp - 4]
00015236: xor      eax, ebx
00015238: xor      eax, edi
0001523a: call     0x14c16
0001523f: xor      dword ptr [ebp - 8], eax
00015242: mov      eax, dword ptr [esi + 0x1c]
00015245: xor      eax, dword ptr [ebp - 8]
00015248: xor      eax, dword ptr [ebp - 4]
0001524b: xor      eax, ebx
0001524d: call     0x14c16
00015252: xor      edi, eax
00015254: mov      eax, dword ptr [esi + 0x18]
00015257: xor      eax, dword ptr [ebp - 8]
0001525a: xor      eax, dword ptr [ebp - 4]
0001525d: xor      eax, edi
0001525f: call     0x14c16
00015264: xor      ebx, eax
00015266: mov      eax, dword ptr [esi + 0x14]
00015269: xor      eax, dword ptr [ebp - 8]
0001526c: xor      eax, ebx
0001526e: xor      eax, edi
00015270: call     0x14c16
00015275: xor      dword ptr [ebp - 4], eax
00015278: mov      eax, dword ptr [esi + 0x10]
0001527b: xor      eax, dword ptr [ebp - 4]
0001527e: xor      eax, ebx
00015280: xor      eax, edi
00015282: call     0x14c16
00015287: xor      dword ptr [ebp - 8], eax
0001528a: mov      eax, dword ptr [esi + 0xc]
0001528d: xor      eax, dword ptr [ebp - 8]
00015290: xor      eax, dword ptr [ebp - 4]
00015293: xor      eax, ebx
00015295: call     0x14b9e
0001529a: xor      edi, eax
0001529c: mov      eax, dword ptr [esi + 8]
0001529f: xor      eax, dword ptr [ebp - 8]
000152a2: xor      eax, dword ptr [ebp - 4]
000152a5: xor      eax, edi
000152a7: call     0x14b9e
000152ac: xor      ebx, eax
000152ae: mov      eax, dword ptr [esi + 4]
000152b1: xor      eax, dword ptr [ebp - 8]
000152b4: xor      eax, ebx
000152b6: xor      eax, edi
000152b8: call     0x14b9e
000152bd: xor      dword ptr [ebp - 4], eax
000152c0: mov      eax, dword ptr [esi]
000152c2: xor      eax, dword ptr [ebp - 4]
000152c5: xor      eax, ebx
000152c7: xor      eax, edi
000152c9: call     0x14b9e
000152ce: mov      esi, dword ptr [ebp + 0xc]
000152d1: mov      ecx, eax
000152d3: xor      ecx, dword ptr [ebp - 8]
000152d6: mov      eax, esi
000152d8: call     0x14b7e
000152dd: mov      ecx, dword ptr [ebp - 4]
000152e0: lea      eax, [esi + 4]
000152e3: call     0x14b7e
000152e8: lea      eax, [esi + 8]
000152eb: mov      ecx, ebx
000152ed: call     0x14b7e
000152f2: lea      eax, [esi + 0xc]
000152f5: mov      ecx, edi
000152f7: call     0x14b7e
000152fc: pop      edi
000152fd: pop      esi
000152fe: pop      ebx
000152ff: leave    
00015300: ret      0xc
00015303: int3     
00015304: int3     
00015305: int3     
00015306: int3     
00015307: int3     
00015308: mov      edi, edi
0001530a: push     ebp
0001530b: mov      ebp, esp
0001530d: sub      esp, 0x80
00015313: push     esi
00015314: mov      esi, dword ptr [ebp + 0xc]
00015317: test     esi, esi
00015319: je       0x15323
0001531b: test     esi, 0xf
00015321: je       0x15327
00015323: xor      al, al
00015325: jmp      0x15360
00015327: lea      eax, [ebp - 0x80]
0001532a: push     eax
0001532b: push     dword ptr [ebp + 0x14]
0001532e: call     0x14c72
00015333: shr      esi, 4
00015336: mov      eax, esi
00015338: test     eax, eax
0001533a: jle      0x1535e
0001533c: mov      esi, dword ptr [ebp + 0x10]
0001533f: push     ebx
00015340: push     edi
00015341: mov      edi, dword ptr [ebp + 8]
00015344: sub      esi, edi
00015346: mov      ebx, eax
00015348: lea      eax, [ebp - 0x80]
0001534b: push     eax
0001534c: lea      eax, [esi + edi]
0001534f: push     eax
00015350: push     edi
00015351: call     0x14d98
00015356: add      edi, 0x10
00015359: dec      ebx
0001535a: jne      0x15348
0001535c: pop      edi
0001535d: pop      ebx
0001535e: mov      al, 1
00015360: pop      esi
00015361: leave    
00015362: ret      0x10
00015365: int3     
00015366: int3     
00015367: int3     
00015368: int3     
00015369: int3     
0001536a: mov      edi, edi
0001536c: push     ebp
0001536d: mov      ebp, esp
0001536f: sub      esp, 0x80
00015375: push     esi
00015376: mov      esi, dword ptr [ebp + 0xc]
00015379: test     esi, esi
0001537b: je       0x15385
0001537d: test     esi, 0xf
00015383: je       0x15389
00015385: xor      al, al
00015387: jmp      0x153c2
00015389: lea      eax, [ebp - 0x80]
0001538c: push     eax
0001538d: push     dword ptr [ebp + 0x14]
00015390: call     0x14c72
00015395: shr      esi, 4
00015398: mov      eax, esi
0001539a: test     eax, eax
0001539c: jle      0x153c0
0001539e: mov      esi, dword ptr [ebp + 0x10]
000153a1: push     ebx
000153a2: push     edi
000153a3: mov      edi, dword ptr [ebp + 8]
000153a6: sub      esi, edi
000153a8: mov      ebx, eax
000153aa: lea      eax, [ebp - 0x80]
000153ad: push     eax
000153ae: lea      eax, [esi + edi]
000153b1: push     eax
000153b2: push     edi
000153b3: call     0x15050
000153b8: add      edi, 0x10
000153bb: dec      ebx
000153bc: jne      0x153aa
000153be: pop      edi
000153bf: pop      ebx
000153c0: mov      al, 1
000153c2: pop      esi
000153c3: leave    
000153c4: ret      0x10
000153c7: int3     
000153c8: int3     
000153c9: int3     
000153ca: int3     
000153cb: int3     
000153cc: mov      edi, edi
000153ce: push     ebp
000153cf: mov      ebp, esp
000153d1: push     ecx
000153d2: mov      dword ptr [ebp - 4], ecx
000153d5: push     0
000153d7: push     dword ptr [0x1a0e0]
000153dd: push     dword ptr [0x1a0e4]
000153e3: push     dword ptr [ebp - 4]
000153e6: push     0xf7
000153eb: call     dword ptr [0x160f0]
000153f1: int3     
000153f2: int3     
000153f3: int3     
000153f4: int3     
000153f5: int3     
000153f6: int3     
000153f7: cmp      ecx, dword ptr [0x1a0e4]
000153fd: jne      0x15408
000153ff: test     ecx, 0xffff0000
00015405: jne      0x15408
00015407: ret      
00015408: jmp      0x153cc
0001540d: int3     
0001540e: int3     
0001540f: int3     
00015410: int3     
00015411: int3     
00015412: jmp      dword ptr [0x16094]
00015418: int3     
00015419: int3     
0001541a: int3     
0001541b: int3     
0001541c: int3     
0001541d: int3     
0001541e: jmp      dword ptr [0x16098]
00015424: int3     
00015425: int3     
00015426: int3     
00015427: int3     
00015428: int3     
00015429: int3     
0001542a: jmp      dword ptr [0x160a4]
00015430: int3     
00015431: int3     
00015432: int3     
00015433: int3     
00015434: int3     
00015435: int3     
00015436: jmp      dword ptr [0x160a8]
0001543c: add      byte ptr [eax], al
0001543e: add      byte ptr [eax], al
00015440: add      byte ptr [eax], al
00015442: add      byte ptr [eax], al
00015444: add      byte ptr [eax], al
00015446: add      byte ptr [eax], al
00015448: add      byte ptr [eax], al
0001544a: add      byte ptr [eax], al
0001544c: add      byte ptr [eax], al
0001544e: add      byte ptr [eax], al
00015450: add      byte ptr [eax], al
00015452: add      byte ptr [eax], al
00015454: add      byte ptr [eax], al
00015456: add      byte ptr [eax], al
00015458: add      byte ptr [eax], al
0001545a: add      byte ptr [eax], al
0001545c: add      byte ptr [eax], al
0001545e: add      byte ptr [eax], al
00015460: add      byte ptr [eax], al
00015462: add      byte ptr [eax], al
00015464: add      byte ptr [eax], al
00015466: add      byte ptr [eax], al
00015468: add      byte ptr [eax], al
0001546a: add      byte ptr [eax], al
0001546c: add      byte ptr [eax], al
0001546e: add      byte ptr [eax], al
00015470: add      byte ptr [eax], al
00015472: add      byte ptr [eax], al
00015474: add      byte ptr [eax], al
00015476: add      byte ptr [eax], al
00015478: add      byte ptr [eax], al
0001547a: add      byte ptr [eax], al
0001547c: add      byte ptr [eax], al
0001547e: add      byte ptr [eax], al
00015480: add      byte ptr [eax], al
00015482: add      byte ptr [eax], al
00015484: add      byte ptr [eax], al
00015486: add      byte ptr [eax], al
00015488: add      byte ptr [eax], al
0001548a: add      byte ptr [eax], al
0001548c: add      byte ptr [eax], al
0001548e: add      byte ptr [eax], al
00015490: add      byte ptr [eax], al
00015492: add      byte ptr [eax], al
00015494: add      byte ptr [eax], al
00015496: add      byte ptr [eax], al
00015498: add      byte ptr [eax], al
0001549a: add      byte ptr [eax], al
0001549c: add      byte ptr [eax], al
0001549e: add      byte ptr [eax], al
000154a0: add      byte ptr [eax], al
000154a2: add      byte ptr [eax], al
000154a4: add      byte ptr [eax], al
000154a6: add      byte ptr [eax], al
000154a8: add      byte ptr [eax], al
000154aa: add      byte ptr [eax], al
000154ac: add      byte ptr [eax], al
000154ae: add      byte ptr [eax], al
000154b0: add      byte ptr [eax], al
000154b2: add      byte ptr [eax], al
000154b4: add      byte ptr [eax], al
000154b6: add      byte ptr [eax], al
000154b8: add      byte ptr [eax], al
000154ba: add      byte ptr [eax], al
000154bc: add      byte ptr [eax], al
000154be: add      byte ptr [eax], al
000154c0: add      byte ptr [eax], al
000154c2: add      byte ptr [eax], al
000154c4: add      byte ptr [eax], al
000154c6: add      byte ptr [eax], al
000154c8: add      byte ptr [eax], al
000154ca: add      byte ptr [eax], al
000154cc: add      byte ptr [eax], al
000154ce: add      byte ptr [eax], al
000154d0: add      byte ptr [eax], al
000154d2: add      byte ptr [eax], al
000154d4: add      byte ptr [eax], al
000154d6: add      byte ptr [eax], al
000154d8: add      byte ptr [eax], al
000154da: add      byte ptr [eax], al
000154dc: add      byte ptr [eax], al
000154de: add      byte ptr [eax], al
000154e0: add      byte ptr [eax], al
000154e2: add      byte ptr [eax], al
000154e4: add      byte ptr [eax], al
000154e6: add      byte ptr [eax], al
000154e8: add      byte ptr [eax], al
000154ea: add      byte ptr [eax], al
000154ec: add      byte ptr [eax], al
000154ee: add      byte ptr [eax], al
000154f0: add      byte ptr [eax], al
000154f2: add      byte ptr [eax], al
000154f4: add      byte ptr [eax], al
000154f6: add      byte ptr [eax], al
000154f8: add      byte ptr [eax], al
000154fa: add      byte ptr [eax], al
000154fc: add      byte ptr [eax], al
000154fe: add      byte ptr [eax], al
00015500: add      byte ptr [eax], al
00015502: add      byte ptr [eax], al
00015504: add      byte ptr [eax], al
00015506: add      byte ptr [eax], al
00015508: add      byte ptr [eax], al
0001550a: add      byte ptr [eax], al
0001550c: add      byte ptr [eax], al
0001550e: add      byte ptr [eax], al
00015510: add      byte ptr [eax], al
00015512: add      byte ptr [eax], al
00015514: add      byte ptr [eax], al
00015516: add      byte ptr [eax], al
00015518: add      byte ptr [eax], al
0001551a: add      byte ptr [eax], al
0001551c: add      byte ptr [eax], al
0001551e: add      byte ptr [eax], al
00015520: add      byte ptr [eax], al
00015522: add      byte ptr [eax], al
00015524: add      byte ptr [eax], al
00015526: add      byte ptr [eax], al
00015528: add      byte ptr [eax], al
0001552a: add      byte ptr [eax], al
0001552c: add      byte ptr [eax], al
0001552e: add      byte ptr [eax], al
00015530: add      byte ptr [eax], al
00015532: add      byte ptr [eax], al
00015534: add      byte ptr [eax], al
00015536: add      byte ptr [eax], al
00015538: add      byte ptr [eax], al
0001553a: add      byte ptr [eax], al
0001553c: add      byte ptr [eax], al
0001553e: add      byte ptr [eax], al
00015540: add      byte ptr [eax], al
00015542: add      byte ptr [eax], al
00015544: add      byte ptr [eax], al
00015546: add      byte ptr [eax], al
00015548: add      byte ptr [eax], al
0001554a: add      byte ptr [eax], al
0001554c: add      byte ptr [eax], al
0001554e: add      byte ptr [eax], al
00015550: add      byte ptr [eax], al
00015552: add      byte ptr [eax], al
00015554: add      byte ptr [eax], al
00015556: add      byte ptr [eax], al
00015558: add      byte ptr [eax], al
0001555a: add      byte ptr [eax], al
0001555c: add      byte ptr [eax], al
0001555e: add      byte ptr [eax], al
00015560: add      byte ptr [eax], al
00015562: add      byte ptr [eax], al
00015564: add      byte ptr [eax], al
00015566: add      byte ptr [eax], al
00015568: add      byte ptr [eax], al
0001556a: add      byte ptr [eax], al
0001556c: add      byte ptr [eax], al
0001556e: add      byte ptr [eax], al
00015570: add      byte ptr [eax], al
00015572: add      byte ptr [eax], al
00015574: add      byte ptr [eax], al
00015576: add      byte ptr [eax], al
00015578: add      byte ptr [eax], al
0001557a: add      byte ptr [eax], al
0001557c: add      byte ptr [eax], al
0001557e: add      byte ptr [eax], al
00015580: add      byte ptr [eax], al
00015582: add      byte ptr [eax], al
00015584: add      byte ptr [eax], al
00015586: add      byte ptr [eax], al
00015588: add      byte ptr [eax], al
0001558a: add      byte ptr [eax], al
0001558c: add      byte ptr [eax], al
0001558e: add      byte ptr [eax], al
00015590: add      byte ptr [eax], al
00015592: add      byte ptr [eax], al
00015594: add      byte ptr [eax], al
00015596: add      byte ptr [eax], al
00015598: add      byte ptr [eax], al
0001559a: add      byte ptr [eax], al
0001559c: add      byte ptr [eax], al
0001559e: add      byte ptr [eax], al
000155a0: add      byte ptr [eax], al
000155a2: add      byte ptr [eax], al
000155a4: add      byte ptr [eax], al
000155a6: add      byte ptr [eax], al
000155a8: add      byte ptr [eax], al
000155aa: add      byte ptr [eax], al
000155ac: add      byte ptr [eax], al
000155ae: add      byte ptr [eax], al
000155b0: add      byte ptr [eax], al
000155b2: add      byte ptr [eax], al
000155b4: add      byte ptr [eax], al
000155b6: add      byte ptr [eax], al
000155b8: add      byte ptr [eax], al
000155ba: add      byte ptr [eax], al
000155bc: add      byte ptr [eax], al
000155be: add      byte ptr [eax], al
000155c0: add      byte ptr [eax], al
000155c2: add      byte ptr [eax], al
000155c4: add      byte ptr [eax], al
000155c6: add      byte ptr [eax], al
000155c8: add      byte ptr [eax], al
000155ca: add      byte ptr [eax], al
000155cc: add      byte ptr [eax], al
000155ce: add      byte ptr [eax], al
000155d0: add      byte ptr [eax], al
000155d2: add      byte ptr [eax], al
000155d4: add      byte ptr [eax], al
000155d6: add      byte ptr [eax], al
000155d8: add      byte ptr [eax], al
000155da: add      byte ptr [eax], al
000155dc: add      byte ptr [eax], al
000155de: add      byte ptr [eax], al
000155e0: add      byte ptr [eax], al
000155e2: add      byte ptr [eax], al
000155e4: add      byte ptr [eax], al
000155e6: add      byte ptr [eax], al
000155e8: add      byte ptr [eax], al
000155ea: add      byte ptr [eax], al
000155ec: add      byte ptr [eax], al
000155ee: add      byte ptr [eax], al
000155f0: add      byte ptr [eax], al
000155f2: add      byte ptr [eax], al
000155f4: add      byte ptr [eax], al
000155f6: add      byte ptr [eax], al
000155f8: add      byte ptr [eax], al
000155fa: add      byte ptr [eax], al
000155fc: add      byte ptr [eax], al
000155fe: add      byte ptr [eax], al
0001b000: add      byte ptr [eax], al
0001b002: add      byte ptr [eax], al
0001b004: add      byte ptr [eax], al
0001b006: mov      edi, edi
0001b008: push     ebp
0001b009: mov      ebp, esp
0001b00b: mov      eax, dword ptr [ebp + 8]
0001b00e: push     ebx
0001b00f: push     esi
0001b010: mov      esi, dword ptr [eax + 0x28]
0001b013: push     edi
0001b014: xor      ebx, ebx
0001b016: push     ebx
0001b017: push     ebx
0001b018: lea      eax, [esi + 0x38]
0001b01b: push     eax
0001b01c: mov      byte ptr [esi + 0x4c], 1
0001b020: call     dword ptr [0x16048]
0001b026: push     ebx
0001b027: push     ebx
0001b028: push     ebx
0001b029: push     ebx
0001b02a: push     dword ptr [esi + 0x48]
0001b02d: call     dword ptr [0x16044]
0001b033: mov      ecx, dword ptr [esi + 0x48]
0001b036: mov      edi, dword ptr [0x16018]
0001b03c: call     edi
0001b03e: mov      eax, dword ptr [esi + 0x28]
0001b041: cmp      eax, ebx
0001b043: je       0x1b069
0001b045: push     dword ptr [eax + 0xc]
0001b048: call     dword ptr [0x16040]
0001b04e: cmp      eax, 1
0001b051: mov      eax, dword ptr [esi + 0x28]
0001b054: mov      ecx, dword ptr [eax + 0xc]
0001b057: je       0x1b05d
0001b059: cmp      ecx, ebx
0001b05b: je       0x1b05f
0001b05d: call     edi
0001b05f: push     ebx
0001b060: push     dword ptr [esi + 0x28]
0001b063: call     dword ptr [0x16004]
0001b069: mov      eax, dword ptr [ebp + 8]
0001b06c: mov      esi, dword ptr [eax + 0xc]
0001b06f: push     eax
0001b070: call     dword ptr [0x1603c]
0001b076: pop      edi
0001b077: mov      eax, esi
0001b079: pop      esi
0001b07a: pop      ebx
0001b07b: pop      ebp
0001b07c: ret      4
0001b07f: int3     
0001b080: int3     
0001b081: int3     
0001b082: int3     
0001b083: int3     
0001b084: mov      edi, edi
0001b086: push     ebp
0001b087: mov      ebp, esp
0001b089: mov      ecx, dword ptr [ebp + 0xc]
0001b08c: and      dword ptr [ecx + 0x18], 0
0001b090: xor      dl, dl
0001b092: mov      dword ptr [ecx + 0x1c], 1
0001b099: call     dword ptr [0x1604c]
0001b09f: xor      eax, eax
0001b0a1: pop      ebp
0001b0a2: ret      8
0001b0a5: int3     
0001b0a6: int3     
0001b0a7: int3     
0001b0a8: int3     
0001b0a9: int3     
0001b0aa: mov      edi, edi
0001b0ac: push     ebp
0001b0ad: mov      ebp, esp
0001b0af: mov      ecx, dword ptr [ebp + 0xc]
0001b0b2: and      dword ptr [ecx + 0x1c], 0
0001b0b6: mov      eax, 0xc0000010
0001b0bb: mov      dword ptr [ecx + 0x18], eax
0001b0be: pop      ebp
0001b0bf: ret      8
0001b0c2: int3     
0001b0c3: int3     
0001b0c4: int3     
0001b0c5: int3     
0001b0c6: int3     
0001b0c7: int3     
0001b0c8: mov      edi, edi
0001b0ca: push     ebp
0001b0cb: mov      ebp, esp
0001b0cd: sub      esp, 0x14
0001b0d0: lea      eax, [ebp - 4]
0001b0d3: push     eax
0001b0d4: push     0xf00ff
0001b0d9: push     -1
0001b0db: call     dword ptr [0x16058]
0001b0e1: xor      ecx, ecx
0001b0e3: cmp      eax, ecx
0001b0e5: jl       0x1b125
0001b0e7: mov      eax, dword ptr [ebp + 8]
0001b0ea: mov      dword ptr [ebp - 0x10], eax
0001b0ed: mov      al, byte ptr [ebp + 0xc]
0001b0f0: neg      al
0001b0f2: push     esi
0001b0f3: push     ecx
0001b0f4: push     ecx
0001b0f5: push     0x10
0001b0f7: mov      dword ptr [ebp - 0x14], 1
0001b0fe: mov      dword ptr [ebp - 0xc], ecx
0001b101: sbb      eax, eax
0001b103: and      eax, 2
0001b106: mov      dword ptr [ebp - 8], eax
0001b109: lea      eax, [ebp - 0x14]
0001b10c: push     eax
0001b10d: push     ecx
0001b10e: push     dword ptr [ebp - 4]
0001b111: call     dword ptr [0x16054]
0001b117: push     dword ptr [ebp - 4]
0001b11a: mov      esi, eax
0001b11c: call     dword ptr [0x16000]
0001b122: mov      eax, esi
0001b124: pop      esi
0001b125: leave    
0001b126: ret      8
0001b129: int3     
0001b12a: int3     
0001b12b: int3     
0001b12c: int3     
0001b12d: int3     
0001b12e: mov      edi, edi
0001b130: push     ebp
0001b131: mov      ebp, esp
0001b133: sub      esp, 0x28
0001b136: mov      eax, dword ptr [0x1a0e4]
0001b13b: push     ebx
0001b13c: mov      dword ptr [ebp - 4], eax
0001b13f: push     esi
0001b140: push     edi
0001b141: xor      eax, eax
0001b143: mov      byte ptr [ebp - 0x14], 0
0001b147: lea      edi, [ebp - 0x13]
0001b14a: stosd    dword ptr es:[edi], eax
0001b14b: stosd    dword ptr es:[edi], eax
0001b14c: mov      ecx, dword ptr [ebp + 0xc]
0001b14f: mov      edx, dword ptr [ebp + 8]
0001b152: stosd    dword ptr es:[edi], eax
0001b153: mov      ebx, dword ptr [ebp + 0x10]
0001b156: and      dword ptr [ebp - 0x28], 0
0001b15a: stosw    word ptr es:[edi], ax
0001b15c: stosb    byte ptr es:[edi], al
0001b15d: mov      eax, dword ptr [ebp + 0x14]
0001b160: lea      esi, [eax - 1]
0001b163: shr      esi, 0xb
0001b166: mov      edi, esi
0001b168: shl      edi, 0xb
0001b16b: sub      eax, edi
0001b16d: mov      dword ptr [ebp - 0x24], eax
0001b170: push     1
0001b172: lea      eax, [ebp - 0x14]
0001b175: push     eax
0001b176: push     ecx
0001b177: push     edx
0001b178: mov      dword ptr [ebp - 0x20], edx
0001b17b: call     dword ptr [0x1a1bc]
0001b181: add      esp, 0x10
0001b184: test     ax, ax
0001b187: je       0x1b18d
0001b189: xor      al, al
0001b18b: jmp      0x1b1e3
0001b18d: and      dword ptr [ebp - 0x18], 0
0001b191: test     esi, esi
0001b193: jle      0x1b1c5
0001b195: mov      dword ptr [ebp - 0x1c], ebx
0001b198: mov      edi, 0x800
0001b19d: mov      ebx, dword ptr [ebp - 0x1c]
0001b1a0: push     ebx
0001b1a1: push     edi
0001b1a2: push     ebx
0001b1a3: push     dword ptr [ebp - 0x20]
0001b1a6: call     dword ptr [0x1a1c0]
0001b1ac: add      esp, 0x10
0001b1af: test     ax, ax
0001b1b2: jne      0x1b189
0001b1b4: add      dword ptr [ebp - 0x1c], edi
0001b1b7: add      ebx, 0x800
0001b1bd: inc      dword ptr [ebp - 0x18]
0001b1c0: cmp      dword ptr [ebp - 0x18], esi
0001b1c3: jl       0x1b19d
0001b1c5: lea      eax, [ebp - 0x28]
0001b1c8: push     eax
0001b1c9: push     0
0001b1cb: push     ebx
0001b1cc: push     dword ptr [ebp - 0x24]
0001b1cf: push     ebx
0001b1d0: push     dword ptr [ebp - 0x20]
0001b1d3: call     dword ptr [0x1a1c4]
0001b1d9: add      esp, 0x18
0001b1dc: neg      ax
0001b1df: sbb      al, al
0001b1e1: inc      al
0001b1e3: mov      ecx, dword ptr [ebp - 4]
0001b1e6: pop      edi
0001b1e7: pop      esi
0001b1e8: pop      ebx
0001b1e9: call     0x153f7
0001b1ee: leave    
0001b1ef: ret      0x10
0001b1f2: int3     
0001b1f3: int3     
0001b1f4: int3     
0001b1f5: int3     
0001b1f6: int3     
0001b1f7: int3     
0001b1f8: mov      edi, edi
0001b1fa: push     ebp
0001b1fb: mov      ebp, esp
0001b1fd: sub      esp, 0x28
0001b200: mov      eax, dword ptr [0x1a0e4]
0001b205: push     ebx
0001b206: mov      dword ptr [ebp - 4], eax
0001b209: push     esi
0001b20a: push     edi
0001b20b: xor      eax, eax
0001b20d: mov      byte ptr [ebp - 0x14], 0
0001b211: lea      edi, [ebp - 0x13]
0001b214: stosd    dword ptr es:[edi], eax
0001b215: stosd    dword ptr es:[edi], eax
0001b216: mov      ecx, dword ptr [ebp + 0xc]
0001b219: mov      edx, dword ptr [ebp + 8]
0001b21c: stosd    dword ptr es:[edi], eax
0001b21d: mov      ebx, dword ptr [ebp + 0x10]
0001b220: and      dword ptr [ebp - 0x28], 0
0001b224: stosw    word ptr es:[edi], ax
0001b226: stosb    byte ptr es:[edi], al
0001b227: mov      eax, dword ptr [ebp + 0x14]
0001b22a: lea      esi, [eax - 1]
0001b22d: shr      esi, 0xb
0001b230: mov      edi, esi
0001b232: shl      edi, 0xb
0001b235: sub      eax, edi
0001b237: mov      dword ptr [ebp - 0x24], eax
0001b23a: push     1
0001b23c: lea      eax, [ebp - 0x14]
0001b23f: push     eax
0001b240: push     ecx
0001b241: push     edx
0001b242: mov      dword ptr [ebp - 0x20], edx
0001b245: call     dword ptr [0x1a1c8]
0001b24b: add      esp, 0x10
0001b24e: test     ax, ax
0001b251: je       0x1b257
0001b253: xor      al, al
0001b255: jmp      0x1b2ad
0001b257: and      dword ptr [ebp - 0x18], 0
0001b25b: test     esi, esi
0001b25d: jle      0x1b28f
0001b25f: mov      dword ptr [ebp - 0x1c], ebx
0001b262: mov      edi, 0x800
0001b267: mov      ebx, dword ptr [ebp - 0x1c]
0001b26a: push     ebx
0001b26b: push     edi
0001b26c: push     ebx
0001b26d: push     dword ptr [ebp - 0x20]
0001b270: call     dword ptr [0x1a1cc]
0001b276: add      esp, 0x10
0001b279: test     ax, ax
0001b27c: jne      0x1b253
0001b27e: add      dword ptr [ebp - 0x1c], edi
0001b281: add      ebx, 0x800
0001b287: inc      dword ptr [ebp - 0x18]
0001b28a: cmp      dword ptr [ebp - 0x18], esi
0001b28d: jl       0x1b267
0001b28f: lea      eax, [ebp - 0x28]
0001b292: push     eax
0001b293: push     0
0001b295: push     ebx
0001b296: push     dword ptr [ebp - 0x24]
0001b299: push     ebx
0001b29a: push     dword ptr [ebp - 0x20]
0001b29d: call     dword ptr [0x1a1d0]
0001b2a3: add      esp, 0x18
0001b2a6: neg      ax
0001b2a9: sbb      al, al
0001b2ab: inc      al
0001b2ad: mov      ecx, dword ptr [ebp - 4]
0001b2b0: pop      edi
0001b2b1: pop      esi
0001b2b2: pop      ebx
0001b2b3: call     0x153f7
0001b2b8: leave    
0001b2b9: ret      0x10
0001b2bc: int3     
0001b2bd: int3     
0001b2be: int3     
0001b2bf: int3     
0001b2c0: int3     
0001b2c1: int3     
0001b2c2: xor      ecx, ecx
0001b2c4: push     8
0001b2c6: mov      eax, ecx
0001b2c8: pop      edx
0001b2c9: test     al, 1
0001b2cb: je       0x1b2d6
0001b2cd: shr      eax, 1
0001b2cf: xor      eax, 0xedb88320
0001b2d4: jmp      0x1b2d8
0001b2d6: shr      eax, 1
0001b2d8: dec      edx
0001b2d9: jne      0x1b2c9
0001b2db: mov      dword ptr [ecx*4 + 0x1a2a0], eax
0001b2e2: inc      ecx
0001b2e3: cmp      ecx, 0x100
0001b2e9: jl       0x1b2c4
0001b2eb: ret      
0001b2ec: int3     
0001b2ed: int3     
0001b2ee: int3     
0001b2ef: int3     
0001b2f0: int3     
0001b2f1: int3     
0001b2f2: mov      edi, edi
0001b2f4: push     ebp
0001b2f5: mov      ebp, esp
0001b2f7: xor      eax, eax
0001b2f9: cmp      dword ptr [ebp + 0x10], eax
0001b2fc: jbe      0x1b321
0001b2fe: mov      ecx, dword ptr [ebp + 0xc]
0001b301: movzx    edx, byte ptr [ebp + 8]
0001b305: movzx    ecx, byte ptr [eax + ecx]
0001b309: xor      ecx, edx
0001b30b: mov      edx, dword ptr [ebp + 8]
0001b30e: shr      edx, 8
0001b311: xor      edx, dword ptr [ecx*4 + 0x1a2a0]
0001b318: inc      eax
0001b319: cmp      eax, dword ptr [ebp + 0x10]
0001b31c: mov      dword ptr [ebp + 8], edx
0001b31f: jb       0x1b2fe
0001b321: mov      eax, dword ptr [ebp + 8]
0001b324: pop      ebp
0001b325: ret      0xc
0001b328: int3     
0001b329: int3     
0001b32a: int3     
0001b32b: int3     
0001b32c: int3     
0001b32d: int3     
0001b32e: mov      edi, edi
0001b330: push     ebp
0001b331: mov      ebp, esp
0001b333: mov      eax, dword ptr [ebp + 8]
0001b336: mov      ecx, dword ptr [eax + 0x28]
0001b339: mov      edx, dword ptr [ebp + 0xc]
0001b33c: xor      eax, eax
0001b33e: mov      dword ptr [edx + 0x1c], eax
0001b341: cmp      byte ptr [ecx + 1], al
0001b344: jne      0x1b34d
0001b346: mov      eax, 0xc00000a3
0001b34b: jmp      0x1b35f
0001b34d: cmp      byte ptr [ecx + 0x24], al
0001b350: je       0x1b35f
0001b352: cmp      dword ptr [0x1a230], eax
0001b358: jne      0x1b35f
0001b35a: mov      eax, 0xc00000a2
0001b35f: pop      ebp
0001b360: ret      8
0001b363: int3     
0001b364: int3     
0001b365: int3     
0001b366: int3     
0001b367: int3     
0001b368: mov      edi, edi
0001b36a: push     ebp
0001b36b: mov      ebp, esp
0001b36d: mov      ecx, dword ptr [ebp + 0xc]
0001b370: mov      eax, dword ptr [ecx + 0x60]
0001b373: mov      eax, dword ptr [eax + 4]
0001b376: cmp      eax, 0x28
0001b379: jae      0x1b382
0001b37b: mov      eax, 0xc0000206
0001b380: jmp      0x1b3a2
0001b382: push     0x48
0001b384: pop      edx
0001b385: cmp      eax, edx
0001b387: jae      0x1b390
0001b389: mov      eax, 0xc0000023
0001b38e: jmp      0x1b3a2
0001b390: mov      eax, dword ptr [ecx + 0xc]
0001b393: and      dword ptr [eax + 4], 0
0001b397: mov      dword ptr [eax], 1
0001b39d: mov      dword ptr [ecx + 0x1c], edx
0001b3a0: xor      eax, eax
0001b3a2: pop      ebp
0001b3a3: ret      8
0001b3a6: pop      esp
0001b3a7: add      byte ptr [eax + eax + 0x65], al
0001b3ab: add      byte ptr [esi], dh
0001b3ae: imul     eax, dword ptr [eax], 0x650063
0001b3b4: pop      esp
0001b3b5: add      byte ptr [ebp], al
0001b3b8: add      byte ptr fs:[eax], dh
0001b3bc: inc      ebp
0001b3bd: add      byte ptr [eax + eax + 0x69], al
0001b3c1: add      byte ptr [ebx], dh
0001b3c4: imul     eax, dword ptr [eax], 0x5c
0001b3c7: add      byte ptr [ebp], al
0001b3ca: add      byte ptr fs:[eax], dh
0001b3ce: inc      ebp
0001b3cf: add      byte ptr [eax + eax + 0x69], al
0001b3d3: add      byte ptr [ebx], dh
0001b3d6: imul     eax, dword ptr [eax], 0x25
0001b3d9: add      byte ptr [ebp], dh
0001b3dc: and      eax, 0x7300
0001b3e1: add      byte ptr [eax + eax + 0x47], bl
0001b3e5: add      byte ptr [eax + eax + 0x4f], cl
0001b3e9: add      byte ptr [edx], al
0001b3ec: inc      ecx
0001b3ed: add      byte ptr [eax + eax + 0x3f], cl
0001b3f1: add      byte ptr [edi], bh
0001b3f3: add      byte ptr [eax + eax + 0x25], bl
0001b3f7: add      byte ptr [ebx], ah
0001b3fa: cmp      al, byte ptr [eax]
0001b3fc: add      byte ptr [eax], al
0001b3fe: int3     
0001b3ff: int3     
0001b400: int3     
0001b401: int3     
0001b402: int3     
0001b403: int3     
0001b404: mov      edi, edi
0001b406: push     ebp
0001b407: mov      ebp, esp
0001b409: sub      esp, 0x834
0001b40f: mov      eax, dword ptr [0x1a0e4]
0001b414: push     ebx
0001b415: mov      bl, byte ptr [ebp + 8]
0001b418: cmp      bl, 0x61
0001b41b: mov      dword ptr [ebp - 4], eax
0001b41e: jl       0x1b42a
0001b420: cmp      bl, 0x7a
0001b423: jg       0x1b42a
0001b425: add      bl, 0xe0
0001b428: jmp      0x1b43c
0001b42a: cmp      bl, 0x41
0001b42d: jl       0x1b4cb
0001b433: cmp      bl, 0x5a
0001b436: jg       0x1b4cb
0001b43c: cmp      byte ptr [ebp + 0x10], 0
0001b440: push     esi
0001b441: mov      esi, dword ptr [0x1606c]
0001b447: push     edi
0001b448: mov      edi, dword ptr [0x16014]
0001b44e: je       0x1b479
0001b450: push     0x1a21c
0001b455: push     dword ptr [ebp + 0xc]
0001b458: lea      eax, [ebp - 0x414]
0001b45e: push     0x1b3a6
0001b463: push     eax
0001b464: call     esi
0001b466: add      esp, 0x10
0001b469: lea      eax, [ebp - 0x414]
0001b46f: push     eax
0001b470: lea      eax, [ebp - 0x834]
0001b476: push     eax
0001b477: call     edi
0001b479: movsx    eax, bl
0001b47c: push     eax
0001b47d: lea      eax, [ebp - 0x824]
0001b483: push     0x1b3e2
0001b488: push     eax
0001b489: call     esi
0001b48b: add      esp, 0xc
0001b48e: lea      eax, [ebp - 0x824]
0001b494: push     eax
0001b495: lea      eax, [ebp - 0x82c]
0001b49b: push     eax
0001b49c: call     edi
0001b49e: cmp      byte ptr [ebp + 0x10], 0
0001b4a2: pop      edi
0001b4a3: pop      esi
0001b4a4: je       0x1b4bc
0001b4a6: lea      eax, [ebp - 0x834]
0001b4ac: push     eax
0001b4ad: lea      eax, [ebp - 0x82c]
0001b4b3: push     eax
0001b4b4: call     dword ptr [0x16068]
0001b4ba: jmp      0x1b4d0
0001b4bc: lea      eax, [ebp - 0x82c]
0001b4c2: push     eax
0001b4c3: call     dword ptr [0x16064]
0001b4c9: jmp      0x1b4d0
0001b4cb: mov      eax, 0xc000000d
0001b4d0: mov      ecx, dword ptr [ebp - 4]
0001b4d3: pop      ebx
0001b4d4: call     0x153f7
0001b4d9: leave    
0001b4da: ret      0xc
0001b4dd: int3     
0001b4de: push     edx
0001b4df: add      byte ptr [edi], ch
0001b4e2: outsd    dx, dword ptr [esi]
0001b4e3: add      byte ptr [eax + eax], dh
0001b4e7: add      byte ptr [eax], al
0001b4e9: add      byte ptr [eax + eax + 0x44], bl
0001b4ed: add      byte ptr [edi], ch
0001b4f0: jae      0x1b4f2
0001b4f2: inc      esp
0001b4f3: add      byte ptr [ebp], ah
0001b4f6: jbe      0x1b4f8
0001b4f8: imul     eax, dword ptr [eax], 0x650063
0001b4fe: jae      0x1b500
0001b500: pop      esp
0001b501: add      byte ptr [ebp], al
0001b504: add      byte ptr fs:[eax], dh
0001b508: inc      ebp
0001b509: add      byte ptr [eax + eax + 0x69], al
0001b50d: add      byte ptr [ebx], dh
0001b510: imul     eax, dword ptr [eax], 0
0001b513: add      byte ptr [eax], al
0001b515: add      byte ptr [0x25007300], ah
0001b51b: add      byte ptr [ebx], dh
0001b51e: and      eax, 0x7300
0001b523: add      byte ptr [eax], al
0001b525: add      byte ptr [edx], dl
0001b528: outsd    dx, dword ptr [esi]
0001b529: add      byte ptr [edi], ch
0001b52c: je       0x1b52e
0001b52e: add      byte ptr [eax], al
0001b530: add      byte ptr [eax], al
0001b532: pop      esp
0001b533: add      byte ptr [eax + eax + 0x65], al
0001b537: add      byte ptr [esi], dh
0001b53a: imul     eax, dword ptr [eax], 0x650063
0001b540: pop      esp
0001b541: add      byte ptr [ebp], al
0001b544: add      byte ptr fs:[eax], dh
0001b548: inc      ebp
0001b549: add      byte ptr [eax + eax + 0x69], al
0001b54d: add      byte ptr [ebx], dh
0001b550: imul     eax, dword ptr [eax], 0
0001b553: add      byte ptr [eax], al
0001b555: add      byte ptr [0x25007300], ah
0001b55b: add      byte ptr [ebx], dh
0001b55e: and      eax, 0x7300
0001b563: add      ah, cl
0001b565: int3     
0001b566: int3     
0001b567: int3     
0001b568: int3     
0001b569: int3     
0001b56a: mov      edi, edi
0001b56c: push     ebp
0001b56d: mov      ebp, esp
0001b56f: sub      esp, 0x1a8
0001b575: mov      eax, dword ptr [0x1a0e4]
0001b57a: push     ebx
0001b57b: mov      ebx, dword ptr [ebp + 8]
0001b57e: push     esi
0001b57f: mov      esi, dword ptr [0x1606c]
0001b585: push     edi
0001b586: push     0x1b4de
0001b58b: mov      edi, 0x1a21c
0001b590: push     edi
0001b591: push     0x1b4ea
0001b596: mov      dword ptr [ebp - 4], eax
0001b599: lea      eax, [ebp - 0xcc]
0001b59f: push     0x1b516
0001b5a4: push     eax
0001b5a5: call     esi
0001b5a7: push     0x1b526
0001b5ac: push     edi
0001b5ad: push     0x1b532
0001b5b2: lea      eax, [ebp - 0x194]
0001b5b8: push     0x1b556
0001b5bd: push     eax
0001b5be: call     esi
0001b5c0: mov      esi, dword ptr [0x16014]
0001b5c6: add      esp, 0x28
0001b5c9: lea      eax, [ebp - 0x194]
0001b5cf: push     eax
0001b5d0: lea      eax, [ebp - 0x1a0]
0001b5d6: push     eax
0001b5d7: call     esi
0001b5d9: lea      eax, [ebp - 0xcc]
0001b5df: push     eax
0001b5e0: lea      eax, [ebp - 0x1a8]
0001b5e6: push     eax
0001b5e7: call     esi
0001b5e9: lea      eax, [ebp - 0x198]
0001b5ef: push     eax
0001b5f0: push     0
0001b5f2: push     0
0001b5f4: push     0x22
0001b5f6: lea      eax, [ebp - 0x1a0]
0001b5fc: push     eax
0001b5fd: xor      esi, esi
0001b5ff: inc      esi
0001b600: push     esi
0001b601: push     ebx
0001b602: call     dword ptr [0x16070]
0001b608: test     eax, eax
0001b60a: jl       0x1b657
0001b60c: mov      eax, dword ptr [ebp - 0x198]
0001b612: or       dword ptr [eax + 0x1c], 0x10
0001b616: mov      eax, dword ptr [ebp - 0x198]
0001b61c: mov      dword ptr [eax + 0x5c], esi
0001b61f: mov      eax, dword ptr [ebp - 0x198]
0001b625: mov      eax, dword ptr [eax + 0x28]
0001b628: mov      byte ptr [eax], 1
0001b62b: lea      eax, [ebp - 0x1a0]
0001b631: push     eax
0001b632: lea      eax, [ebp - 0x1a8]
0001b638: push     eax
0001b639: call     dword ptr [0x16068]
0001b63f: mov      esi, eax
0001b641: test     esi, esi
0001b643: jge      0x1b655
0001b645: push     dword ptr [ebp - 0x198]
0001b64b: call     dword ptr [0x1603c]
0001b651: mov      eax, esi
0001b653: jmp      0x1b657
0001b655: xor      eax, eax
0001b657: mov      ecx, dword ptr [ebp - 4]
0001b65a: pop      edi
0001b65b: pop      esi
0001b65c: pop      ebx
0001b65d: call     0x153f7
0001b662: leave    
0001b663: ret      4
0001b666: and      eax, 0x30252d64
0001b66b: xor      ah, byte ptr [ebp + ebp + 0x25]
0001b66f: xor      byte ptr [edx], dh
0001b671: and      byte ptr fs:[0x3a643230], ah
0001b678: and      eax, 0x3a643230
0001b67d: and      eax, 0x643230
0001b682: int3     
0001b683: int3     
0001b684: int3     
0001b685: int3     
0001b686: int3     
0001b687: int3     
0001b688: mov      edi, edi
0001b68a: push     ebp
0001b68b: mov      ebp, esp
0001b68d: sub      esp, 0x20
0001b690: push     esi
0001b691: lea      eax, [ebp - 8]
0001b694: push     eax
0001b695: call     dword ptr [0x16080]
0001b69b: lea      eax, [ebp - 0x10]
0001b69e: push     eax
0001b69f: lea      eax, [ebp - 8]
0001b6a2: push     eax
0001b6a3: call     dword ptr [0x1607c]
0001b6a9: lea      eax, [ebp - 0x20]
0001b6ac: push     eax
0001b6ad: lea      eax, [ebp - 0x10]
0001b6b0: push     eax
0001b6b1: call     dword ptr [0x16078]
0001b6b7: and      byte ptr [ebp - 0x16], 0xf0
0001b6bb: movsx    eax, word ptr [ebp - 0x16]
0001b6bf: push     eax
0001b6c0: movsx    eax, word ptr [ebp - 0x18]
0001b6c4: push     eax
0001b6c5: movsx    eax, word ptr [ebp - 0x1a]
0001b6c9: push     eax
0001b6ca: movsx    eax, word ptr [ebp - 0x1c]
0001b6ce: push     eax
0001b6cf: movsx    eax, word ptr [ebp - 0x1e]
0001b6d3: push     eax
0001b6d4: movsx    eax, word ptr [ebp - 0x20]
0001b6d8: push     eax
0001b6d9: push     0x1b666
0001b6de: mov      esi, 0x1a100
0001b6e3: push     esi
0001b6e4: call     dword ptr [0x16074]
0001b6ea: add      esp, 0x20
0001b6ed: mov      eax, esi
0001b6ef: pop      esi
0001b6f0: leave    
0001b6f1: ret      
0001b6f2: int3     
0001b6f3: int3     
0001b6f4: int3     
0001b6f5: int3     
0001b6f6: int3     
0001b6f7: int3     
0001b6f8: mov      edi, edi
0001b6fa: push     ebp
0001b6fb: mov      ebp, esp
0001b6fd: mov      eax, dword ptr [ebp + 8]
0001b700: mov      eax, dword ptr [eax + 4]
0001b703: jmp      0x1b70b
0001b705: push     eax
0001b706: call     0x1b006
0001b70b: test     eax, eax
0001b70d: jne      0x1b705
0001b70f: push     dword ptr [0x1a280]
0001b715: call     dword ptr [0x16000]
0001b71b: pop      ebp
0001b71c: ret      4
0001b71f: int3     
0001b720: inc      esp
0001b721: push     eax
0001b722: inc      esp
0001b723: inc      ebp
0001b724: add      byte ptr [eax], al
0001b726: add      byte ptr [eax], al
0001b728: push     edi
0001b729: push     ebx
0001b72a: push     esp
0001b72b: push     esi
0001b72c: jb       0x1b7a2
0001b72f: imul     ebp, dword ptr [edi + 0x6e], 0x74654720
0001b736: push     ebp
0001b737: jae      0x1b79b
0001b739: inc      esi
0001b73a: jne      0x1b7aa
0001b73c: inc      ecx
0001b73d: jb       0x1b761
0001b741: inc      esi
0001b742: popal    
0001b743: imul     ebp, dword ptr [ecx], 0x5f4d5300
0001b74b: dec      edi
0001b74c: jo       0x1b7b3
0001b74e: outsb    dx, byte ptr [esi]
0001b74f: push     ebx
0001b750: arpl     word ptr gs:[ebp + 0x6f], cx
0001b754: jne      0x1b7c3
0001b757: and      byte ptr gs:[esi + 0x61], al
0001b75b: imul     ebp, dword ptr [ecx], 0x5f4d5300
0001b763: dec      esp
0001b764: outsd    dx, dword ptr [esi]
0001b765: imul     ebp, dword ptr [bp + 0x45], 0x61462078
0001b76d: imul     ebp, dword ptr [ecx], 0x53000000
0001b775: dec      ebp
0001b776: pop      edi
0001b777: dec      ecx
0001b778: insd     dword ptr es:[edi], dx
0001b779: jo       0x1b7ea
0001b77b: jb       0x1b7f1
0001b77d: dec      ebx
0001b77e: jns      0x1b7a1
0001b781: inc      esi
0001b782: popal    
0001b783: imul     ebp, dword ptr [ecx], 0x6c694600
0001b78b: inc      esp
0001b78d: imul     esi, dword ptr [ebx + 0x6b], 0x775a203a
0001b794: inc      ebx
0001b795: jb       0x1b7fc
0001b797: popal    
0001b798: je       0x1b7ff
0001b79a: inc      esi
0001b79b: imul     ebp, dword ptr [ebp + 0x20], 0x6c696146
0001b7a3: or       al, byte ptr [eax]
0001b7a5: int3     
0001b7a6: int3     
0001b7a7: int3     
0001b7a8: int3     
0001b7a9: int3     
0001b7aa: mov      edi, edi
0001b7ac: push     ebp
0001b7ad: mov      ebp, esp
0001b7af: sub      esp, 0xb0
0001b7b5: mov      eax, dword ptr [0x1a0e4]
0001b7ba: mov      edx, dword ptr [ebp + 0xc]
0001b7bd: mov      ecx, dword ptr [ebp + 8]
0001b7c0: push     ebx
0001b7c1: mov      ebx, dword ptr [ecx + 0x28]
0001b7c4: push     esi
0001b7c5: mov      esi, dword ptr [edx + 0xc]
0001b7c8: push     edi
0001b7c9: mov      dword ptr [ebp - 4], eax
0001b7cc: mov      byte ptr [ebp - 0x14], 0
0001b7d0: xor      eax, eax
0001b7d2: lea      edi, [ebp - 0x13]
0001b7d5: stosd    dword ptr es:[edi], eax
0001b7d6: stosd    dword ptr es:[edi], eax
0001b7d7: stosd    dword ptr es:[edi], eax
0001b7d8: push     0x206b6444
0001b7dd: stosw    word ptr es:[edi], ax
0001b7df: push     0xf0
0001b7e4: push     1
0001b7e6: mov      dword ptr [ebp - 0x84], ecx
0001b7ec: mov      dword ptr [ebp - 0x74], edx
0001b7ef: stosb    byte ptr es:[edi], al
0001b7f0: mov      dword ptr [ebp - 0x78], esi
0001b7f3: call     dword ptr [0x16008]
0001b7f9: test     eax, eax
0001b7fb: mov      dword ptr [ebp - 0x70], eax
0001b7fe: jne      0x1b810
0001b800: mov      eax, 0xc000009a
0001b805: mov      ecx, dword ptr [ebp - 0x74]
0001b808: mov      dword ptr [ecx + 0x18], eax
0001b80b: jmp      0x1bd08
0001b810: push     0x3c
0001b812: pop      ecx
0001b813: mov      edi, eax
0001b815: rep movsd dword ptr es:[edi], dword ptr [esi]
0001b817: mov      ecx, dword ptr [0x1b720]
0001b81d: lea      esi, [ebp - 0x80]
0001b820: push     4
0001b822: mov      dword ptr [ebp - 0x80], ecx
0001b825: sub      esi, eax
0001b827: pop      edi
0001b828: mov      cl, byte ptr [eax]
0001b82a: dec      cl
0001b82c: xor      cl, byte ptr [esi + eax]
0001b82f: mov      byte ptr [eax], cl
0001b831: inc      eax
0001b832: dec      edi
0001b833: jne      0x1b828
0001b835: call     0x1b688
0001b83a: mov      edi, eax
0001b83c: lea      eax, [ebp - 0x6c]
0001b83f: push     eax
0001b840: call     0x12e5e
0001b845: mov      eax, edi
0001b847: lea      esi, [eax + 1]
0001b84a: mov      cl, byte ptr [eax]
0001b84c: inc      eax
0001b84d: test     cl, cl
0001b84f: jne      0x1b84a
0001b851: sub      eax, esi
0001b853: push     eax
0001b854: push     edi
0001b855: lea      eax, [ebp - 0x6c]
0001b858: push     eax
0001b859: call     0x1375e
0001b85e: lea      eax, [ebp - 0x6c]
0001b861: push     eax
0001b862: lea      eax, [ebp - 0x14]
0001b865: push     eax
0001b866: call     0x1380e
0001b86b: mov      esi, dword ptr [ebp - 0x70]
0001b86e: lea      eax, [ebp - 0x14]
0001b871: push     eax
0001b872: lea      eax, [ebp - 0x98]
0001b878: lea      edi, [esi + 0x1f]
0001b87b: push     eax
0001b87c: mov      dword ptr [ebp - 0x98], 0x10
0001b886: mov      dword ptr [ebp - 0x94], edi
0001b88c: call     0x12dda
0001b891: test     al, al
0001b893: jne      0x1b899
0001b895: push     0
0001b897: jmp      0x1b8c2
0001b899: call     0x1b2c2
0001b89e: push     0x10
0001b8a0: push     edi
0001b8a1: xor      edi, edi
0001b8a3: push     edi
0001b8a4: call     0x1b2f2
0001b8a9: cmp      eax, dword ptr [esi + 0x40]
0001b8ac: jne      0x1b8c1
0001b8ae: mov      eax, dword ptr [esi]
0001b8b0: sub      eax, 0x64
0001b8b3: je       0x1b8d3
0001b8b5: sub      eax, 0x19e
0001b8ba: je       0x1b8d3
0001b8bc: sub      eax, 4
0001b8bf: je       0x1b8d3
0001b8c1: push     edi
0001b8c2: push     esi
0001b8c3: call     dword ptr [0x16004]
0001b8c9: mov      eax, 0xc000000d
0001b8ce: jmp      0x1b805
0001b8d3: cmp      byte ptr [esi + 0x54], 0
0001b8d7: je       0x1b912
0001b8d9: cmp      dword ptr [0x1a284], edi
0001b8df: jne      0x1b912
0001b8e1: push     edi
0001b8e2: call     0x1102e
0001b8e7: test     al, al
0001b8e9: jne      0x1b908
0001b8eb: push     edi
0001b8ec: push     esi
0001b8ed: call     dword ptr [0x16004]
0001b8f3: push     0x1b728
0001b8f8: call     0x15412
0001b8fd: pop      ecx
0001b8fe: mov      eax, 0xc00000a3
0001b903: jmp      0x1b805
0001b908: mov      dword ptr [0x1a284], 1
0001b912: mov      eax, dword ptr [ebp - 0x84]
0001b918: cmp      dword ptr [eax + 0x2c], 2
0001b91c: je       0x1b924
0001b91e: mov      al, byte ptr [esi + 4]
0001b921: mov      byte ptr [ebx + 0x24], al
0001b924: mov      al, byte ptr [esi + 6]
0001b927: mov      byte ptr [ebx + 0x4d], al
0001b92a: mov      eax, dword ptr [esi + 7]
0001b92d: mov      dword ptr [ebx + 0x50], eax
0001b930: add      esi, 0xed
0001b936: mov      ax, word ptr [esi]
0001b939: mov      word ptr [ebx + 8], ax
0001b93d: mov      ax, word ptr [esi]
0001b940: mov      word ptr [ebx + 0xa], ax
0001b944: movzx    eax, word ptr [esi]
0001b947: push     0x206b6444
0001b94c: push     eax
0001b94d: push     edi
0001b94e: call     dword ptr [0x16008]
0001b954: mov      edx, dword ptr [ebp - 0x78]
0001b957: mov      dword ptr [ebx + 0xc], eax
0001b95a: movzx    ecx, word ptr [edx + 0xed]
0001b961: mov      edi, eax
0001b963: mov      eax, ecx
0001b965: shr      ecx, 2
0001b968: lea      esi, [edx + 0xef]
0001b96e: rep movsd dword ptr es:[edi], dword ptr [esi]
0001b970: mov      ecx, eax
0001b972: and      ecx, 3
0001b975: rep movsb byte ptr es:[edi], byte ptr [esi]
0001b977: push     1
0001b979: lea      esi, [ebx + 8]
0001b97c: push     esi
0001b97d: lea      eax, [ebp - 0x8c]
0001b983: push     eax
0001b984: call     dword ptr [0x16090]
0001b98a: xor      edi, edi
0001b98c: cmp      eax, edi
0001b98e: mov      dword ptr [ebp - 0x78], eax
0001b991: jge      0x1b9b4
0001b993: push     edi
0001b994: push     dword ptr [ebx + 0xc]
0001b997: mov      word ptr [esi], di
0001b99a: mov      esi, dword ptr [0x16004]
0001b9a0: mov      word ptr [ebx + 0xa], di
0001b9a4: call     esi
0001b9a6: push     edi
0001b9a7: push     dword ptr [ebp - 0x70]
0001b9aa: call     esi
0001b9ac: mov      eax, dword ptr [ebp - 0x78]
0001b9af: jmp      0x1b805
0001b9b4: lea      eax, [ebp - 0x8c]
0001b9ba: mov      dword ptr [ebp - 0xb0], 0x18
0001b9c4: mov      dword ptr [ebp - 0xac], edi
0001b9ca: mov      dword ptr [ebp - 0xa4], 0x40
0001b9d4: mov      dword ptr [ebp - 0xa8], eax
0001b9da: mov      dword ptr [ebp - 0xa0], edi
0001b9e0: mov      dword ptr [ebp - 0x9c], edi
0001b9e6: cmp      byte ptr [ebx + 0x24], 0
0001b9ea: je       0x1b9f9
0001b9ec: cmp      dword ptr [0x1a230], edi
0001b9f2: mov      edx, 0x80000000
0001b9f7: je       0x1b9fe
0001b9f9: mov      edx, 0xc0000000
0001b9fe: mov      eax, dword ptr [ebp - 0x74]
0001ba01: push     edi
0001ba02: push     edi
0001ba03: push     0x868
0001ba08: push     1
0001ba0a: push     3
0001ba0c: push     0x80
0001ba11: push     edi
0001ba12: add      eax, 0x18
0001ba15: push     eax
0001ba16: mov      dword ptr [ebp - 0x80], eax
0001ba19: lea      eax, [ebp - 0xb0]
0001ba1f: push     eax
0001ba20: lea      ecx, [ebx + 4]
0001ba23: push     edx
0001ba24: push     ecx
0001ba25: mov      dword ptr [ebp - 0x7c], ecx
0001ba28: call     dword ptr [0x1608c]
0001ba2e: cmp      eax, 0xc0000034
0001ba33: mov      dword ptr [ebp - 0x78], eax
0001ba36: je       0x1bccd
0001ba3c: cmp      eax, 0xc000000f
0001ba41: je       0x1bccd
0001ba47: cmp      eax, edi
0001ba49: jl       0x1bca2
0001ba4f: lea      eax, [ebp - 0x8c]
0001ba55: push     eax
0001ba56: call     dword ptr [0x16088]
0001ba5c: push     0x11
0001ba5e: push     4
0001ba60: lea      eax, [ebp - 0x90]
0001ba66: push     eax
0001ba67: push     dword ptr [ebp - 0x80]
0001ba6a: mov      eax, dword ptr [ebp - 0x7c]
0001ba6d: push     dword ptr [eax]
0001ba6f: call     dword ptr [0x16084]
0001ba75: cmp      eax, edi
0001ba77: mov      dword ptr [ebp - 0x78], eax
0001ba7a: jge      0x1baaa
0001ba7c: push     edi
0001ba7d: push     dword ptr [ebx + 0xc]
0001ba80: mov      word ptr [esi], di
0001ba83: mov      esi, dword ptr [0x16004]
0001ba89: mov      word ptr [ebx + 0xa], di
0001ba8d: call     esi
0001ba8f: push     edi
0001ba90: push     dword ptr [ebp - 0x70]
0001ba93: call     esi
0001ba95: mov      esi, dword ptr [ebp - 0x7c]
0001ba98: push     dword ptr [esi]
0001ba9a: call     dword ptr [0x16000]
0001baa0: mov      dword ptr [esi], edi
0001baa2: mov      eax, dword ptr [ebp - 0x78]
0001baa5: jmp      0x1bd0f
0001baaa: mov      esi, dword ptr [ebp - 0x70]
0001baad: xor      eax, eax
0001baaf: mov      al, byte ptr [esi + 6]
0001bab2: push     1
0001bab4: push     dword ptr [esi + 7]
0001bab7: push     eax
0001bab8: call     0x1b404
0001babd: test     eax, eax
0001babf: jge      0x1bac8
0001bac1: mov      byte ptr [ebx + 0x4d], 0
0001bac5: mov      dword ptr [ebx + 0x50], edi
0001bac8: mov      ecx, dword ptr [ebp - 0x90]
0001bace: mov      eax, dword ptr [ebp - 0x84]
0001bad4: mov      dword ptr [eax + 0x5c], ecx
0001bad7: cmp      byte ptr [ebx + 0x24], 0
0001badb: je       0x1bae3
0001badd: or       dword ptr [eax + 0x20], 2
0001bae1: jmp      0x1bae7
0001bae3: and      dword ptr [eax + 0x20], 0xfffffffd
0001bae7: mov      byte ptr [ebx + 1], 1
0001baeb: mov      al, byte ptr [esi + 5]
0001baee: mov      byte ptr [ebx + 0x25], al
0001baf1: mov      eax, dword ptr [esi + 0x1b]
0001baf4: mov      ecx, 0x200
0001baf9: cmp      eax, ecx
0001bafb: mov      dword ptr [ebx + 0x20], eax
0001bafe: ja       0x1bb03
0001bb00: mov      dword ptr [ebx + 0x20], ecx
0001bb03: push     edi
0001bb04: push     dword ptr [ebx + 0x20]
0001bb07: push     dword ptr [esi + 0x17]
0001bb0a: push     dword ptr [esi + 0x13]
0001bb0d: call     0x1541e
0001bb12: mov      dword ptr [ebx + 0x18], eax
0001bb15: mov      dword ptr [ebx + 0x1c], edx
0001bb18: mov      eax, dword ptr [esi + 0xb]
0001bb1b: mov      dword ptr [ebx + 0x10], eax
0001bb1e: mov      eax, dword ptr [esi + 0xf]
0001bb21: mov      dword ptr [ebx + 0x14], eax
0001bb24: mov      al, byte ptr [esi + 0x54]
0001bb27: mov      byte ptr [ebx + 0x75], al
0001bb2a: mov      eax, dword ptr [esi]
0001bb2c: sub      eax, 0x64
0001bb2f: je       0x1bb5b
0001bb31: sub      eax, 0x19e
0001bb36: je       0x1bb4d
0001bb38: sub      eax, 4
0001bb3b: jne      0x1bb64
0001bb3d: push     8
0001bb3f: add      esi, 0x1f
0001bb42: lea      edi, [ebx + 0x54]
0001bb45: pop      ecx
0001bb46: rep movsd dword ptr es:[edi], dword ptr [esi]
0001bb48: mov      esi, dword ptr [ebp - 0x70]
0001bb4b: jmp      0x1bb62
0001bb4d: mov      eax, dword ptr [esi + 0x1f]
0001bb50: mov      dword ptr [ebx + 0x54], eax
0001bb53: mov      eax, dword ptr [esi + 0x23]
0001bb56: mov      dword ptr [ebx + 0x58], eax
0001bb59: jmp      0x1bb64
0001bb5b: xor      eax, eax
0001bb5d: lea      edi, [ebx + 0x54]
0001bb60: stosd    dword ptr es:[edi], eax
0001bb61: stosd    dword ptr es:[edi], eax
0001bb62: xor      edi, edi
0001bb64: mov      al, byte ptr [esi + 0x3f]
0001bb67: mov      byte ptr [ebx + 0x74], al
0001bb6a: mov      eax, dword ptr [esi]
0001bb6c: mov      dword ptr [ebx + 0x100], eax
0001bb72: cmp      byte ptr [esi + 0x54], 0
0001bb76: je       0x1bc8e
0001bb7c: push     0x20
0001bb7e: pop      ecx
0001bb7f: add      esi, 0x6d
0001bb82: lea      edi, [ebx + 0x76]
0001bb85: rep movsd dword ptr es:[edi], dword ptr [esi]
0001bb87: xor      edi, edi
0001bb89: push     edi
0001bb8a: push     edi
0001bb8b: lea      esi, [ebx + 0xf8]
0001bb91: push     edi
0001bb92: push     esi
0001bb93: mov      dword ptr [esi], edi
0001bb95: mov      dword ptr [ebx + 0xfc], edi
0001bb9b: call     dword ptr [0x1a188]
0001bba1: add      esp, 0x10
0001bba4: test     ax, ax
0001bba7: je       0x1bbd9
0001bba9: mov      esi, dword ptr [ebp - 0x7c]
0001bbac: mov      eax, dword ptr [esi]
0001bbae: cmp      eax, edi
0001bbb0: je       0x1bbbb
0001bbb2: push     eax
0001bbb3: call     dword ptr [0x16000]
0001bbb9: mov      dword ptr [esi], edi
0001bbbb: push     edi
0001bbbc: push     dword ptr [ebp - 0x70]
0001bbbf: mov      byte ptr [ebx + 1], 0
0001bbc3: call     dword ptr [0x16004]
0001bbc9: push     0x1b748
0001bbce: call     0x15412
0001bbd3: pop      ecx
0001bbd4: jmp      0x1bc7c
0001bbd9: mov      eax, dword ptr [ebp - 0x70]
0001bbdc: push     dword ptr [eax + 0x55]
0001bbdf: add      eax, 0x59
0001bbe2: push     eax
0001bbe3: push     dword ptr [esi]
0001bbe5: call     dword ptr [0x1a214]
0001bbeb: add      esp, 0xc
0001bbee: test     ax, ax
0001bbf1: je       0x1bc22
0001bbf3: push     0x1b760
0001bbf8: call     0x15412
0001bbfd: push     dword ptr [esi]
0001bbff: call     dword ptr [0x1a18c]
0001bc05: mov      dword ptr [esi], edi
0001bc07: mov      esi, dword ptr [ebp - 0x7c]
0001bc0a: mov      eax, dword ptr [esi]
0001bc0c: cmp      eax, edi
0001bc0e: pop      ecx
0001bc0f: pop      ecx
0001bc10: mov      byte ptr [ebx + 1], 0
0001bc14: je       0x1bc1f
0001bc16: push     eax
0001bc17: call     dword ptr [0x16000]
0001bc1d: mov      dword ptr [esi], edi
0001bc1f: push     edi
0001bc20: jmp      0x1bc73
0001bc22: lea      eax, [ebx + 0xfc]
0001bc28: push     eax
0001bc29: push     0x81
0001bc2e: push     edi
0001bc2f: lea      eax, [ebx + 0x76]
0001bc32: push     eax
0001bc33: push     dword ptr [esi]
0001bc35: call     dword ptr [0x1a1a0]
0001bc3b: add      esp, 0x14
0001bc3e: test     ax, ax
0001bc41: je       0x1bc89
0001bc43: push     0x1b774
0001bc48: call     0x15412
0001bc4d: push     dword ptr [esi]
0001bc4f: call     dword ptr [0x1a18c]
0001bc55: mov      edi, dword ptr [ebp - 0x7c]
0001bc58: mov      eax, dword ptr [edi]
0001bc5a: test     eax, eax
0001bc5c: pop      ecx
0001bc5d: pop      ecx
0001bc5e: je       0x1bc6a
0001bc60: push     eax
0001bc61: call     dword ptr [0x16000]
0001bc67: and      dword ptr [edi], 0
0001bc6a: and      dword ptr [esi], 0
0001bc6d: mov      byte ptr [ebx + 1], 0
0001bc71: push     0
0001bc73: push     dword ptr [ebp - 0x70]
0001bc76: call     dword ptr [0x16004]
0001bc7c: mov      ecx, dword ptr [ebp - 0x74]
0001bc7f: mov      eax, 0xc00000a3
0001bc84: add      ecx, 0x18
0001bc87: jmp      0x1bd06
0001bc89: mov      esi, dword ptr [ebp - 0x70]
0001bc8c: xor      edi, edi
0001bc8e: push     edi
0001bc8f: push     esi
0001bc90: call     dword ptr [0x16004]
0001bc96: mov      eax, dword ptr [ebp - 0x74]
0001bc99: add      eax, 0x18
0001bc9c: mov      dword ptr [eax], edi
0001bc9e: xor      eax, eax
0001bca0: jmp      0x1bd08
0001bca2: push     edi
0001bca3: push     dword ptr [ebx + 0xc]
0001bca6: mov      word ptr [esi], di
0001bca9: mov      esi, dword ptr [0x16004]
0001bcaf: mov      word ptr [ebx + 0xa], di
0001bcb3: call     esi
0001bcb5: push     edi
0001bcb6: push     dword ptr [ebp - 0x70]
0001bcb9: call     esi
0001bcbb: lea      eax, [ebp - 0x8c]
0001bcc1: push     eax
0001bcc2: call     dword ptr [0x16088]
0001bcc8: jmp      0x1baa2
0001bccd: push     0x1b788
0001bcd2: call     0x15412
0001bcd7: pop      ecx
0001bcd8: push     edi
0001bcd9: push     dword ptr [ebx + 0xc]
0001bcdc: mov      word ptr [esi], di
0001bcdf: mov      esi, dword ptr [0x16004]
0001bce5: mov      word ptr [ebx + 0xa], di
0001bce9: call     esi
0001bceb: push     edi
0001bcec: push     dword ptr [ebp - 0x70]
0001bcef: call     esi
0001bcf1: lea      eax, [ebp - 0x8c]
0001bcf7: push     eax
0001bcf8: call     dword ptr [0x16088]
0001bcfe: mov      ecx, dword ptr [ebp - 0x80]
0001bd01: mov      eax, 0xc000000f
0001bd06: mov      dword ptr [ecx], eax
0001bd08: mov      ecx, dword ptr [ebp - 0x74]
0001bd0b: and      dword ptr [ecx + 0x1c], 0
0001bd0f: mov      ecx, dword ptr [ebp - 4]
0001bd12: pop      edi
0001bd13: pop      esi
0001bd14: pop      ebx
0001bd15: call     0x153f7
0001bd1a: leave    
0001bd1b: ret      8
0001bd1e: int3     
0001bd1f: int3     
0001bd20: int3     
0001bd21: int3     
0001bd22: int3     
0001bd23: int3     
0001bd24: mov      edi, edi
0001bd26: push     ebp
0001bd27: mov      ebp, esp
0001bd29: mov      eax, dword ptr [ebp + 8]
0001bd2c: push     ebx
0001bd2d: push     esi
0001bd2e: mov      esi, dword ptr [eax + 0x28]
0001bd31: xor      ebx, ebx
0001bd33: cmp      byte ptr [esi + 0x75], bl
0001bd36: je       0x1bd53
0001bd38: cmp      dword ptr [0x1a284], ebx
0001bd3e: jne      0x1bd53
0001bd40: mov      ecx, dword ptr [ebp + 0xc]
0001bd43: mov      eax, 0xc00000a3
0001bd48: mov      dword ptr [ecx + 0x18], eax
0001bd4b: mov      dword ptr [ecx + 0x1c], ebx
0001bd4e: jmp      0x1bdd7
0001bd53: push     ebx
0001bd54: push     dword ptr [esi + 0xc]
0001bd57: mov      word ptr [esi + 8], bx
0001bd5b: mov      word ptr [esi + 0xa], bx
0001bd5f: call     dword ptr [0x16004]
0001bd65: mov      eax, dword ptr [esi + 4]
0001bd68: cmp      eax, ebx
0001bd6a: je       0x1bd73
0001bd6c: push     eax
0001bd6d: call     dword ptr [0x16000]
0001bd73: xor      eax, eax
0001bd75: mov      al, byte ptr [esi + 0x4d]
0001bd78: cmp      al, bl
0001bd7a: mov      dword ptr [esi + 4], ebx
0001bd7d: mov      byte ptr [esi + 1], bl
0001bd80: je       0x1bd8c
0001bd82: push     ebx
0001bd83: push     dword ptr [esi + 0x50]
0001bd86: push     eax
0001bd87: call     0x1b404
0001bd8c: cmp      byte ptr [esi + 0x75], bl
0001bd8f: je       0x1bdbc
0001bd91: mov      ecx, dword ptr [esi + 0xf8]
0001bd97: cmp      ecx, ebx
0001bd99: je       0x1bdbc
0001bd9b: mov      eax, dword ptr [esi + 0xfc]
0001bda1: cmp      eax, ebx
0001bda3: je       0x1bdbc
0001bda5: push     eax
0001bda6: push     ecx
0001bda7: call     dword ptr [0x1a198]
0001bdad: push     dword ptr [esi + 0xf8]
0001bdb3: call     dword ptr [0x1a18c]
0001bdb9: add      esp, 0xc
0001bdbc: mov      byte ptr [esi + 0x4d], bl
0001bdbf: mov      dword ptr [esi + 0x50], ebx
0001bdc2: mov      dword ptr [esi + 0x10], ebx
0001bdc5: mov      dword ptr [esi + 0x14], ebx
0001bdc8: mov      dword ptr [esi + 0x20], 0x200
0001bdcf: mov      dword ptr [esi + 0x18], ebx
0001bdd2: mov      dword ptr [esi + 0x1c], ebx
0001bdd5: xor      eax, eax
0001bdd7: pop      esi
0001bdd8: pop      ebx
0001bdd9: pop      ebp
0001bdda: ret      8
0001bddd: int3     
0001bdde: int3     
0001bddf: int3     
0001bde0: int3     
0001bde1: int3     
0001bde2: mov      edi, edi
0001bde4: push     ebp
0001bde5: mov      ebp, esp
0001bde7: sub      esp, 0x30
0001bdea: mov      eax, dword ptr [0x1a0e4]
0001bdef: mov      edx, dword ptr [ebp + 8]
0001bdf2: push     ebx
0001bdf3: mov      ebx, dword ptr [ebp + 0xc]
0001bdf6: push     edi
0001bdf7: mov      dword ptr [ebp - 4], eax
0001bdfa: push     7
0001bdfc: xor      eax, eax
0001bdfe: cmp      byte ptr [edx + 0x25], 0
0001be02: mov      byte ptr [ebp - 0x24], 0
0001be06: pop      ecx
0001be07: lea      edi, [ebp - 0x23]
0001be0a: rep stosd dword ptr es:[edi], eax
0001be0c: stosw    word ptr es:[edi], ax
0001be0e: mov      byte ptr [ebp - 0x25], 1
0001be12: stosb    byte ptr es:[edi], al
0001be13: jne      0x1be1c
0001be15: mov      al, 1
0001be17: jmp      0x1bf0c
0001be1c: cmp      byte ptr [edx + 0x75], 0
0001be20: je       0x1be59
0001be22: cmp      dword ptr [0x1a284], 0
0001be29: je       0x1bf09
0001be2f: cmp      byte ptr [ebp + 0x1c], 0
0001be33: push     dword ptr [ebp + 0x10]
0001be36: push     ebx
0001be37: push     dword ptr [edx + 0xfc]
0001be3d: push     dword ptr [edx + 0xf8]
0001be43: je       0x1be4f
0001be45: call     0x1b12e
0001be4a: jmp      0x1bf06
0001be4f: call     0x1b1f8
0001be54: jmp      0x1bf06
0001be59: cmp      dword ptr [edx + 0x100], 0x206
0001be63: jne      0x1bee3
0001be65: movzx    eax, byte ptr [edx + 0x74]
0001be69: push     esi
0001be6a: lea      esi, [edx + 0x54]
0001be6d: lea      edi, [ebp - 0x24]
0001be70: movsd    dword ptr es:[edi], dword ptr [esi]
0001be71: movsd    dword ptr es:[edi], dword ptr [esi]
0001be72: movsd    dword ptr es:[edi], dword ptr [esi]
0001be73: dec      eax
0001be74: dec      eax
0001be75: movsd    dword ptr es:[edi], dword ptr [esi]
0001be76: pop      esi
0001be77: je       0x1bebe
0001be79: dec      eax
0001be7a: je       0x1bea1
0001be7c: dec      eax
0001be7d: lea      eax, [ebp - 0x24]
0001be80: je       0x1be87
0001be82: push     ebx
0001be83: push     0x10
0001be85: jmp      0x1bee9
0001be87: cmp      byte ptr [ebp + 0x1c], 0
0001be8b: push     eax
0001be8c: push     ebx
0001be8d: push     dword ptr [ebp + 0x10]
0001be90: push     ebx
0001be91: je       0x1be9a
0001be93: call     0x15308
0001be98: jmp      0x1bf06
0001be9a: call     0x1536a
0001be9f: jmp      0x1bf06
0001bea1: cmp      byte ptr [ebp + 0x1c], 0
0001bea5: lea      eax, [ebp - 0x24]
0001bea8: push     eax
0001bea9: push     ebx
0001beaa: push     dword ptr [ebp + 0x10]
0001bead: push     ebx
0001beae: je       0x1beb7
0001beb0: call     0x1490a
0001beb5: jmp      0x1bf06
0001beb7: call     0x14ad0
0001bebc: jmp      0x1bf06
0001bebe: cmp      byte ptr [ebp + 0x1c], 0
0001bec2: mov      eax, dword ptr [ebp + 0x10]
0001bec5: mov      dword ptr [ebp - 0x30], eax
0001bec8: lea      eax, [ebp - 0x24]
0001becb: push     eax
0001becc: lea      eax, [ebp - 0x30]
0001becf: mov      dword ptr [ebp - 0x2c], ebx
0001bed2: push     eax
0001bed3: je       0x1bedc
0001bed5: call     0x12d56
0001beda: jmp      0x1bf06
0001bedc: call     0x12dda
0001bee1: jmp      0x1bf06
0001bee3: push     ebx
0001bee4: lea      eax, [edx + 0x54]
0001bee7: push     8
0001bee9: cmp      byte ptr [ebp + 0x1c], 0
0001beed: push     eax
0001beee: push     dword ptr [ebp + 0x10]
0001bef1: push     ebx
0001bef2: push     dword ptr [ebp + 0x18]
0001bef5: push     dword ptr [ebp + 0x14]
0001bef8: je       0x1bf01
0001befa: call     0x128dc
0001beff: jmp      0x1bf06
0001bf01: call     0x1281a
0001bf06: mov      byte ptr [ebp - 0x25], al
0001bf09: mov      al, byte ptr [ebp - 0x25]
0001bf0c: mov      ecx, dword ptr [ebp - 4]
0001bf0f: pop      edi
0001bf10: pop      ebx
0001bf11: call     0x153f7
0001bf16: leave    
0001bf17: ret      0x18
0001bf1a: add      byte ptr [eax], al
0001bf1c: add      byte ptr [eax], al
0001bf1e: add      byte ptr [eax], al
0001bf20: add      byte ptr [eax], al
0001bf22: add      byte ptr [eax], al
0001bf24: add      byte ptr [eax], al
0001bf26: add      byte ptr [eax], al
0001bf28: add      byte ptr [eax], al
0001bf2a: add      byte ptr [eax], al
0001bf2c: add      byte ptr [eax], al
0001bf2e: add      byte ptr [eax], al
0001bf30: add      byte ptr [eax], al
0001bf32: add      byte ptr [eax], al
0001bf34: add      byte ptr [eax], al
0001bf36: add      byte ptr [eax], al
0001bf38: add      byte ptr [eax], al
0001bf3a: add      byte ptr [eax], al
0001bf3c: add      byte ptr [eax], al
0001bf3e: add      byte ptr [eax], al
0001bf40: add      byte ptr [eax], al
0001bf42: add      byte ptr [eax], al
0001bf44: add      byte ptr [eax], al
0001bf46: add      byte ptr [eax], al
0001bf48: add      byte ptr [eax], al
0001bf4a: add      byte ptr [eax], al
0001bf4c: add      byte ptr [eax], al
0001bf4e: add      byte ptr [eax], al
0001bf50: add      byte ptr [eax], al
0001bf52: add      byte ptr [eax], al
0001bf54: add      byte ptr [eax], al
0001bf56: add      byte ptr [eax], al
0001bf58: add      byte ptr [eax], al
0001bf5a: add      byte ptr [eax], al
0001bf5c: add      byte ptr [eax], al
0001bf5e: add      byte ptr [eax], al
0001bf60: add      byte ptr [eax], al
0001bf62: add      byte ptr [eax], al
0001bf64: add      byte ptr [eax], al
0001bf66: add      byte ptr [eax], al
0001bf68: add      byte ptr [eax], al
0001bf6a: add      byte ptr [eax], al
0001bf6c: add      byte ptr [eax], al
0001bf6e: add      byte ptr [eax], al
0001bf70: add      byte ptr [eax], al
0001bf72: add      byte ptr [eax], al
0001bf74: add      byte ptr [eax], al
0001bf76: add      byte ptr [eax], al
0001bf78: add      byte ptr [eax], al
0001bf7a: add      byte ptr [eax], al
0001bf7c: add      byte ptr [eax], al
0001bf7e: add      byte ptr [eax], al
0001bf80: add      byte ptr [eax], al
0001bf82: add      byte ptr [eax], al
0001bf84: add      byte ptr [eax], al
0001bf86: add      byte ptr [eax], al
0001bf88: add      byte ptr [eax], al
0001bf8a: add      byte ptr [eax], al
0001bf8c: add      byte ptr [eax], al
0001bf8e: add      byte ptr [eax], al
0001bf90: add      byte ptr [eax], al
0001bf92: add      byte ptr [eax], al
0001bf94: add      byte ptr [eax], al
0001bf96: add      byte ptr [eax], al
0001bf98: add      byte ptr [eax], al
0001bf9a: add      byte ptr [eax], al
0001bf9c: add      byte ptr [eax], al
0001bf9e: add      byte ptr [eax], al
0001bfa0: add      byte ptr [eax], al
0001bfa2: add      byte ptr [eax], al
0001bfa4: add      byte ptr [eax], al
0001bfa6: add      byte ptr [eax], al
0001bfa8: add      byte ptr [eax], al
0001bfaa: add      byte ptr [eax], al
0001bfac: add      byte ptr [eax], al
0001bfae: add      byte ptr [eax], al
0001bfb0: add      byte ptr [eax], al
0001bfb2: add      byte ptr [eax], al
0001bfb4: add      byte ptr [eax], al
0001bfb6: add      byte ptr [eax], al
0001bfb8: add      byte ptr [eax], al
0001bfba: add      byte ptr [eax], al
0001bfbc: add      byte ptr [eax], al
0001bfbe: add      byte ptr [eax], al
0001bfc0: add      byte ptr [eax], al
0001bfc2: add      byte ptr [eax], al
0001bfc4: add      byte ptr [eax], al
0001bfc6: add      byte ptr [eax], al
0001bfc8: add      byte ptr [eax], al
0001bfca: add      byte ptr [eax], al
0001bfcc: add      byte ptr [eax], al
0001bfce: add      byte ptr [eax], al
0001bfd0: add      byte ptr [eax], al
0001bfd2: add      byte ptr [eax], al
0001bfd4: add      byte ptr [eax], al
0001bfd6: add      byte ptr [eax], al
0001bfd8: add      byte ptr [eax], al
0001bfda: add      byte ptr [eax], al
0001bfdc: add      byte ptr [eax], al
0001bfde: add      byte ptr [eax], al
0001bfe0: add      byte ptr [eax], al
0001bfe2: add      byte ptr [eax], al
0001bfe4: add      byte ptr [eax], al
0001bfe6: add      byte ptr [eax], al
0001bfe8: add      byte ptr [eax], al
0001bfea: add      byte ptr [eax], al
0001bfec: add      byte ptr [eax], al
0001bfee: add      byte ptr [eax], al
0001bff0: add      byte ptr [eax], al
0001bff2: add      byte ptr [eax], al
0001bff4: add      byte ptr [eax], al
0001bff6: add      byte ptr [eax], al
0001bff8: add      byte ptr [eax], al
0001bffa: add      byte ptr [eax], al
0001bffc: add      byte ptr [eax], al
0001bffe: add      byte ptr [eax], al
0001c000: pop      esp
0001c001: add      byte ptr [ebp], al
0001c004: add      byte ptr fs:[eax], dh
0001c008: inc      ebp
0001c009: add      byte ptr [eax + eax + 0x69], al
0001c00d: add      byte ptr [ebx], dh
0001c010: imul     eax, dword ptr [eax], 0
0001c013: add      byte ptr [eax + eax + 0x44], bl
0001c017: add      byte ptr [ebp], ah
0001c01a: jbe      0x1c01c
0001c01c: imul     eax, dword ptr [eax], 0x650063
0001c022: pop      esp
0001c023: add      byte ptr [ebp], al
0001c026: add      byte ptr fs:[eax], dh
0001c02a: inc      ebp
0001c02b: add      byte ptr [eax + eax + 0x69], al
0001c02f: add      byte ptr [ebx], dh
0001c032: imul     eax, dword ptr [eax], 0
0001c035: add      byte ptr [eax], al
0001c037: add      byte ptr [0x25007300], ah
0001c03d: add      byte ptr [ebx], dh
0001c040: and      eax, 0x25007300
0001c045: add      byte ptr [ebx], dh
0001c048: inc      ebx
0001c049: add      byte ptr [eax + eax + 0x25], ah
0001c04d: add      byte ptr [ebp], dh
0001c050: add      byte ptr [eax], al
0001c052: add      byte ptr [eax], al
0001c054: pop      esp
0001c055: add      byte ptr [ebp], al
0001c058: add      byte ptr fs:[eax], dh
0001c05c: inc      ebp
0001c05d: add      byte ptr [eax + eax + 0x69], al
0001c061: add      byte ptr [ebx], dh
0001c064: imul     eax, dword ptr [eax], 0
0001c067: add      byte ptr [eax + eax + 0x44], bl
0001c06b: add      byte ptr [ebp], ah
0001c06e: jbe      0x1c070
0001c070: imul     eax, dword ptr [eax], 0x650063
0001c076: pop      esp
0001c077: add      byte ptr [ebp], al
0001c07a: add      byte ptr fs:[eax], dh
0001c07e: inc      ebp
0001c07f: add      byte ptr [eax + eax + 0x69], al
0001c083: add      byte ptr [ebx], dh
0001c086: imul     eax, dword ptr [eax], 0
0001c089: add      byte ptr [eax], al
0001c08b: add      byte ptr [0x25007300], ah
0001c091: add      byte ptr [ebx], dh
0001c094: and      eax, 0x25007300
0001c099: add      byte ptr [ebx], dh
0001c09c: and      eax, 0x7500
0001c0a1: add      byte ptr [eax], al
0001c0a3: add      byte ptr [eax + eax + 0x44], bl
0001c0a7: add      byte ptr [edi], ch
0001c0aa: jae      0x1c0ac
0001c0ac: inc      esp
0001c0ad: add      byte ptr [ebp], ah
0001c0b0: jbe      0x1c0b2
0001c0b2: imul     eax, dword ptr [eax], 0x650063
0001c0b8: jae      0x1c0ba
0001c0ba: pop      esp
0001c0bb: add      byte ptr [ebp], al
0001c0be: add      byte ptr fs:[eax], dh
0001c0c2: inc      ebp
0001c0c3: add      byte ptr [eax + eax + 0x69], al
0001c0c7: add      byte ptr [ebx], dh
0001c0ca: imul     eax, dword ptr [eax], 0x53
0001c0cd: add      byte ptr [ecx], bh
0001c0d0: insd     dword ptr es:[edi], dx
0001c0d1: add      byte ptr [0x7500], ah
0001c0d7: add      ah, cl
0001c0d9: int3     
0001c0da: int3     
0001c0db: int3     
0001c0dc: int3     
0001c0dd: int3     
0001c0de: mov      edi, edi
0001c0e0: push     ebp
0001c0e1: mov      ebp, esp
0001c0e3: sub      esp, 0x420
0001c0e9: cmp      dword ptr [ebp + 0x10], 2
0001c0ed: mov      eax, dword ptr [0x1a0e4]
0001c0f2: push     esi
0001c0f3: push     dword ptr [ebp + 0xc]
0001c0f6: mov      esi, dword ptr [ebp + 8]
0001c0f9: mov      dword ptr [ebp - 4], eax
0001c0fc: mov      eax, 0x1a21c
0001c101: push     eax
0001c102: jne      0x1c116
0001c104: push     0x1c000
0001c109: push     eax
0001c10a: push     0x1c014
0001c10f: push     0x1c038
0001c114: jmp      0x1c126
0001c116: push     0x1c054
0001c11b: push     eax
0001c11c: push     0x1c068
0001c121: push     0x1c08c
0001c126: lea      eax, [ebp - 0x204]
0001c12c: push     eax
0001c12d: call     dword ptr [0x1606c]
0001c133: add      esp, 0x1c
0001c136: lea      eax, [ebp - 0x204]
0001c13c: push     eax
0001c13d: lea      eax, [ebp - 0x418]
0001c143: push     eax
0001c144: call     dword ptr [0x16014]
0001c14a: lea      eax, [ebp - 0x408]
0001c150: push     eax
0001c151: push     0
0001c153: push     0
0001c155: push     dword ptr [ebp + 0x10]
0001c158: lea      eax, [ebp - 0x418]
0001c15e: push     eax
0001c15f: push     0x318
0001c164: push     esi
0001c165: call     dword ptr [0x16070]
0001c16b: test     eax, eax
0001c16d: jl       0x1c2d7
0001c173: mov      eax, dword ptr [ebp - 0x408]
0001c179: or       dword ptr [eax + 0x1c], 0x10
0001c17d: mov      eax, dword ptr [ebp - 0x408]
0001c183: push     ebx
0001c184: mov      ebx, dword ptr [eax + 0x28]
0001c187: mov      byte ptr [ebx + 1], 0
0001c18b: mov      dword ptr [ebx + 0x20], 0x200
0001c192: movzx    ecx, word ptr [ebp - 0x418]
0001c199: inc      ecx
0001c19a: mov      edx, ecx
0001c19c: push     edi
0001c19d: lea      eax, [ebx + 0x114]
0001c1a3: shr      ecx, 2
0001c1a6: mov      edi, eax
0001c1a8: lea      esi, [ebp - 0x204]
0001c1ae: rep movsd dword ptr es:[edi], dword ptr [esi]
0001c1b0: mov      ecx, edx
0001c1b2: push     eax
0001c1b3: and      ecx, 3
0001c1b6: lea      eax, [ebx + 0x10c]
0001c1bc: rep movsb byte ptr es:[edi], byte ptr [esi]
0001c1be: mov      esi, dword ptr [0x16014]
0001c1c4: push     eax
0001c1c5: call     esi
0001c1c7: mov      eax, dword ptr [ebp + 0xc]
0001c1ca: mov      dword ptr [ebx + 0x104], eax
0001c1d0: mov      eax, dword ptr [ebp + 0x10]
0001c1d3: cmp      eax, 2
0001c1d6: mov      dword ptr [ebx + 0x108], eax
0001c1dc: jne      0x1c1ec
0001c1de: mov      eax, dword ptr [ebp - 0x408]
0001c1e4: or       dword ptr [eax + 0x20], 2
0001c1e8: mov      byte ptr [ebx + 0x24], 1
0001c1ec: lea      eax, [ebx + 0x2c]
0001c1ef: mov      dword ptr [eax + 4], eax
0001c1f2: mov      dword ptr [eax], eax
0001c1f4: lea      eax, [ebx + 0x34]
0001c1f7: push     eax
0001c1f8: call     dword ptr [0x160d0]
0001c1fe: push     0
0001c200: push     1
0001c202: lea      edi, [ebx + 0x38]
0001c205: push     edi
0001c206: call     dword ptr [0x16024]
0001c20c: push     dword ptr [ebp + 0xc]
0001c20f: lea      eax, [ebp - 0x404]
0001c215: push     0x1c0a4
0001c21a: push     eax
0001c21b: mov      byte ptr [ebx + 0x4c], 0
0001c21f: call     dword ptr [0x1606c]
0001c225: add      esp, 0xc
0001c228: lea      eax, [ebp - 0x404]
0001c22e: push     eax
0001c22f: lea      eax, [ebp - 0x420]
0001c235: push     eax
0001c236: call     esi
0001c238: lea      eax, [ebp - 0x418]
0001c23e: push     eax
0001c23f: lea      eax, [ebp - 0x420]
0001c245: push     eax
0001c246: call     dword ptr [0x16068]
0001c24c: push     dword ptr [ebp - 0x408]
0001c252: xor      esi, esi
0001c254: cmp      eax, esi
0001c256: mov      dword ptr [ebp - 0x40c], eax
0001c25c: jl       0x1c2bf
0001c25e: push     0x11b6e
0001c263: push     esi
0001c264: push     esi
0001c265: push     esi
0001c266: push     esi
0001c267: lea      eax, [ebp - 0x410]
0001c26d: push     eax
0001c26e: call     dword ptr [0x160cc]
0001c274: cmp      eax, esi
0001c276: mov      dword ptr [ebp - 0x40c], eax
0001c27c: jl       0x1c2b9
0001c27e: push     esi
0001c27f: lea      eax, [ebx + 0x48]
0001c282: push     eax
0001c283: push     esi
0001c284: push     esi
0001c285: push     0x1f03ff
0001c28a: push     dword ptr [ebp - 0x410]
0001c290: call     dword ptr [0x160c8]
0001c296: cmp      eax, esi
0001c298: push     dword ptr [ebp - 0x410]
0001c29e: mov      dword ptr [ebp - 0x40c], eax
0001c2a4: jge      0x1c2cd
0001c2a6: call     dword ptr [0x16000]
0001c2ac: push     esi
0001c2ad: push     esi
0001c2ae: push     edi
0001c2af: mov      byte ptr [ebx + 0x4c], 1
0001c2b3: call     dword ptr [0x16048]
0001c2b9: push     dword ptr [ebp - 0x408]
0001c2bf: call     dword ptr [0x1603c]
0001c2c5: mov      eax, dword ptr [ebp - 0x40c]
0001c2cb: jmp      0x1c2d5
0001c2cd: call     dword ptr [0x16000]
0001c2d3: xor      eax, eax
0001c2d5: pop      edi
0001c2d6: pop      ebx
0001c2d7: mov      ecx, dword ptr [ebp - 4]
0001c2da: pop      esi
0001c2db: call     0x153f7
0001c2e0: leave    
0001c2e1: ret      0xc
0001c2e4: pop      esp
0001c2e5: add      byte ptr [eax], dl
0001c2e8: popal    
0001c2e9: add      byte ptr [edx], dh
0001c2ec: popal    
0001c2ed: add      byte ptr [ebp], ch
0001c2f0: add      byte ptr gs:[eax + eax + 0x65], dh
0001c2f5: add      byte ptr [edx], dh
0001c2f8: jae      0x1c2fa
0001c2fa: add      byte ptr [eax], al
0001c2fc: dec      esi
0001c2fd: add      byte ptr [ebp], dh
0001c300: insd     dword ptr es:[edi], dx
0001c301: add      byte ptr [edx], ah
0001c304: add      byte ptr gs:[edx], dh
0001c308: dec      edi
0001c309: add      byte ptr [esi], ah
0001c30c: inc      esp
0001c30d: add      byte ptr [ebp], ah
0001c310: jbe      0x1c312
0001c312: imul     eax, dword ptr [eax], 0x650063
0001c318: jae      0x1c31a
0001c31a: add      byte ptr [eax], al
0001c31c: pop      esp
0001c31d: add      byte ptr [eax + eax + 0x65], al
0001c321: add      byte ptr [esi], dh
0001c324: imul     eax, dword ptr [eax], 0x650063
0001c32a: pop      esp
0001c32b: add      byte ptr [ebp], al
0001c32e: add      byte ptr fs:[eax], dh
0001c332: inc      ebp
0001c333: add      byte ptr [eax + eax + 0x69], al
0001c337: add      byte ptr [ebx], dh
0001c33a: imul     eax, dword ptr [eax], 0
0001c33d: add      byte ptr [eax], al
0001c33f: add      byte ptr [0x25007300], ah
0001c345: add      byte ptr [ebx], dh
0001c348: add      byte ptr [eax], al
0001c34a: int3     
0001c34b: int3     
0001c34c: int3     
0001c34d: int3     
0001c34e: int3     
0001c34f: int3     
0001c350: mov      edi, edi
0001c352: push     ebp
0001c353: mov      ebp, esp
0001c355: sub      esp, 0x138
0001c35b: mov      eax, dword ptr [0x1a0e4]
0001c360: and      word ptr [ebp - 0xcc], 0
0001c368: push     ebx
0001c369: mov      ebx, dword ptr [ebp + 0xc]
0001c36c: push     esi
0001c36d: push     edi
0001c36e: mov      esi, dword ptr [ebp + 8]
0001c371: and      word ptr [ebp - 0xe0], 0
0001c379: mov      dword ptr [ebp - 4], eax
0001c37c: push     0x31
0001c37e: pop      ecx
0001c37f: xor      eax, eax
0001c381: lea      edi, [ebp - 0xca]
0001c387: rep stosd dword ptr es:[edi], eax
0001c389: stosw    word ptr es:[edi], ax
0001c38b: mov      ax, word ptr [ebx]
0001c38e: add      ax, 0x18
0001c392: mov      word ptr [ebp - 0xde], ax
0001c399: movzx    eax, ax
0001c39c: push     0x206b6444
0001c3a1: push     eax
0001c3a2: push     1
0001c3a4: mov      dword ptr [ebp - 0xd0], 0x17
0001c3ae: call     dword ptr [0x16008]
0001c3b4: test     eax, eax
0001c3b6: mov      dword ptr [ebp - 0xdc], eax
0001c3bc: jne      0x1c3c8
0001c3be: mov      eax, 0xc000009a
0001c3c3: jmp      0x1c59d
0001c3c8: push     ebx
0001c3c9: lea      eax, [ebp - 0xe0]
0001c3cf: push     eax
0001c3d0: call     dword ptr [0x160e8]
0001c3d6: push     0x1c2e4
0001c3db: lea      eax, [ebp - 0xe0]
0001c3e1: push     eax
0001c3e2: call     dword ptr [0x160e4]
0001c3e8: push     0xe
0001c3ea: pop      ecx
0001c3eb: xor      eax, eax
0001c3ed: lea      edi, [ebp - 0x138]
0001c3f3: rep stosd dword ptr es:[edi], eax
0001c3f5: xor      edi, edi
0001c3f7: push     edi
0001c3f8: lea      eax, [ebp - 0xd0]
0001c3fe: push     edi
0001c3ff: mov      dword ptr [ebp - 0x12c], eax
0001c405: lea      eax, [ebp - 0x138]
0001c40b: push     eax
0001c40c: push     dword ptr [ebp - 0xdc]
0001c412: mov      dword ptr [ebp - 0x134], 0x24
0001c41c: push     edi
0001c41d: mov      dword ptr [ebp - 0x130], 0x1c2fc
0001c427: call     dword ptr [0x160e0]
0001c42d: push     edi
0001c42e: push     dword ptr [ebp - 0xdc]
0001c434: mov      dword ptr [ebp - 0xd4], eax
0001c43a: call     dword ptr [0x16004]
0001c440: cmp      dword ptr [ebp - 0xd4], edi
0001c446: jge      0x1c452
0001c448: mov      dword ptr [ebp - 0xd0], 0x17
0001c452: push     ebx
0001c453: push     0xa
0001c455: mov      ebx, 0x1a21c
0001c45a: push     ebx
0001c45b: call     0x113e0
0001c460: push     ebx
0001c461: push     0x1c31c
0001c466: lea      eax, [ebp - 0xcc]
0001c46c: push     0x1c340
0001c471: push     eax
0001c472: call     dword ptr [0x1606c]
0001c478: add      esp, 0x10
0001c47b: lea      eax, [ebp - 0xcc]
0001c481: push     eax
0001c482: lea      eax, [ebp - 0x100]
0001c488: push     eax
0001c489: call     dword ptr [0x16014]
0001c48f: lea      eax, [ebp - 0x100]
0001c495: mov      dword ptr [ebp - 0xf0], eax
0001c49b: lea      eax, [ebp - 0xf8]
0001c4a1: push     eax
0001c4a2: push     0xf000f
0001c4a7: push     0x1a280
0001c4ac: mov      dword ptr [ebp - 0xf8], 0x18
0001c4b6: mov      dword ptr [ebp - 0xf4], edi
0001c4bc: mov      dword ptr [ebp - 0xec], 0x10
0001c4c6: mov      dword ptr [ebp - 0xe8], edi
0001c4cc: mov      dword ptr [ebp - 0xe4], edi
0001c4d2: call     dword ptr [0x160dc]
0001c4d8: cmp      eax, edi
0001c4da: mov      dword ptr [ebp - 0xd4], eax
0001c4e0: jl       0x1c59d
0001c4e6: mov      ebx, dword ptr [0x160d8]
0001c4ec: push     edi
0001c4ed: push     0x1a260
0001c4f2: call     ebx
0001c4f4: push     edi
0001c4f5: push     0x1a240
0001c4fa: call     ebx
0001c4fc: call     0x1b2c2
0001c501: push     dword ptr [0x1a280]
0001c507: call     dword ptr [0x160d4]
0001c50d: push     0x14
0001c50f: pop      eax
0001c510: cmp      dword ptr [ebp - 0xd0], eax
0001c516: jb       0x1c51e
0001c518: mov      dword ptr [ebp - 0xd0], eax
0001c51e: xor      ebx, ebx
0001c520: cmp      dword ptr [ebp - 0xd0], edi
0001c526: mov      dword ptr [ebp - 0xd8], edi
0001c52c: jbe      0x1c559
0001c52e: push     7
0001c530: push     ebx
0001c531: push     esi
0001c532: call     0x1c0de
0001c537: cmp      eax, edi
0001c539: mov      dword ptr [ebp - 0xd4], eax
0001c53f: jl       0x1c547
0001c541: inc      dword ptr [ebp - 0xd8]
0001c547: inc      ebx
0001c548: cmp      ebx, dword ptr [ebp - 0xd0]
0001c54e: jb       0x1c52e
0001c550: cmp      word ptr [ebp - 0xd8], di
0001c557: jne      0x1c56d
0001c559: push     dword ptr [0x1a280]
0001c55f: call     dword ptr [0x16000]
0001c565: mov      eax, dword ptr [ebp - 0xd4]
0001c56b: jmp      0x1c59d
0001c56d: mov      eax, 0x1b084
0001c572: mov      dword ptr [esi + 0x38], eax
0001c575: mov      dword ptr [esi + 0x40], eax
0001c578: mov      eax, 0x1149c
0001c57d: mov      dword ptr [esi + 0x44], eax
0001c580: mov      dword ptr [esi + 0x48], eax
0001c583: mov      dword ptr [esi + 0x70], 0x1150c
0001c58a: mov      dword ptr [esi + 0x34], 0x1b6f8
0001c591: push     esi
0001c592: mov      dword ptr [0x1a284], edi
0001c598: call     0x1b56a
0001c59d: mov      ecx, dword ptr [ebp - 4]
0001c5a0: pop      edi
0001c5a1: pop      esi
0001c5a2: pop      ebx
0001c5a3: call     0x153f7
0001c5a8: leave    
0001c5a9: ret      8
0001c5ac: int3     
0001c5ad: int3     
0001c5ae: int3     
0001c5af: int3     
0001c5b0: int3     
0001c5b1: mov      edi, edi
0001c5b3: push     ebp
0001c5b4: mov      ebp, esp
0001c5b6: mov      eax, dword ptr [0x1a0e4]
0001c5bb: test     eax, eax
0001c5bd: mov      ecx, 0xbb40
0001c5c2: je       0x1c5c8
0001c5c4: cmp      eax, ecx
0001c5c6: jne      0x1c5eb
0001c5c8: mov      edx, dword ptr [0x160ec]
0001c5ce: mov      eax, 0x1a0e4
0001c5d3: shr      eax, 8
0001c5d6: xor      eax, dword ptr [edx]
0001c5d8: and      eax, 0xffff
0001c5dd: mov      dword ptr [0x1a0e4], eax
0001c5e2: jne      0x1c5eb
0001c5e4: mov      eax, ecx
0001c5e6: mov      dword ptr [0x1a0e4], eax
0001c5eb: not      eax
0001c5ed: mov      dword ptr [0x1a0e0], eax
0001c5f2: pop      ebp
0001c5f3: jmp      0x1c350
0001c5f8: and      dh, al
0001c5fa: add      byte ptr [eax], al
0001c5fc: add      byte ptr [eax], al
0001c5fe: add      byte ptr [eax], al
0001c600: add      byte ptr [eax], al
0001c602: add      byte ptr [eax], al
0001c604: or       al, 0xcc
0001c606: add      byte ptr [eax], al
0001c608: add      byte ptr [eax], ah
0001c60b: add      byte ptr [eax], al
0001c60d: add      byte ptr [eax], al
0001c60f: add      byte ptr [eax], al
0001c611: add      byte ptr [eax], al
0001c613: add      byte ptr [eax], al
0001c615: add      byte ptr [eax], al
0001c617: add      byte ptr [eax], al
0001c619: add      byte ptr [eax], al
0001c61b: add      byte ptr [eax], al
0001c61d: add      byte ptr [eax], al
0001c61f: add      byte ptr [eax], bl
0001c621: mov      dword ptr [eax], 0xc72200
0001c627: add      byte ptr [esi], dh
0001c629: mov      dword ptr [eax], 0xc74e00
0001c62f: add      byte ptr [eax - 0x39], ah
0001c632: add      byte ptr [eax], al
0001c634: insb     byte ptr es:[edi], dx
0001c635: mov      dword ptr [eax], 0xc78400
0001c63b: add      byte ptr [edi + eax*8 - 0x38540000], bl
0001c642: add      byte ptr [eax], al
0001c644: int3     
0001c645: mov      dword ptr [eax], 0xc7e000
0001c64b: add      dh, bh
0001c64d: mov      dword ptr [eax], 0xc81a00
0001c653: add      byte ptr [eax + ecx*8], ah
0001c656: add      byte ptr [eax], al
0001c658: enter    0, 0x38
0001c65d: enter    0, 0x4a
0001c661: enter    0, 0x58
0001c665: enter    0, 0x70
0001c669: enter    0, 0x7e
0001c66d: enter    0, -0x6c
0001c671: enter    0, -0x4c
0001c675: enter    0, -0x32
0001c679: enter    0, -0x1c
0001c67d: enter    0, -8
0001c681: enter    0, 6
0001c685: leave    
0001c686: add      byte ptr [eax], al
0001c688: push     ds
0001c689: leave    
0001c68a: add      byte ptr [eax], al
0001c68c: leave    
0001c68e: add      byte ptr [eax], al
0001c690: inc      edx
0001c691: leave    
0001c692: add      byte ptr [eax], al
0001c694: push     esp
0001c695: leave    
0001c696: add      byte ptr [eax], al
0001c698: pop      esi
0001c699: leave    
0001c69a: add      byte ptr [eax], al
0001c69c: je       0x1c667
0001c69e: add      byte ptr [eax], al
0001c6a0: mov      cs, ecx
0001c6a2: add      byte ptr [eax], al
0001c6a4: mov      byte ptr [0xbc0000c9], al
0001c6a9: leave    
0001c6aa: add      byte ptr [eax], al
0001c6ac: aam      0xc9
0001c6ae: add      byte ptr [eax], al
0001c6b0: in       al, 0xc9
0001c6b2: add      byte ptr [eax], al
0001c6b4: add      al, 0xca
0001c6b6: add      byte ptr [eax], al
0001c6b8: adc      dl, cl
0001c6ba: add      byte ptr [eax], al
0001c6bc: sbb      cl, dl
0001c6be: add      byte ptr [eax], al
0001c6c0: sub      al, 0xca
0001c6c2: add      byte ptr [eax], al
0001c6c4: inc      esi
0001c6c5: retf     0
0001c6c8: pop      esp
0001c6c9: retf     0
0001c6cc: push     0x880000ca
0001c6d1: retf     0
0001c6d4: xchg     esi, eax
0001c6d5: retf     0
0001c6d8: mov      dh, 0xca
0001c6da: add      byte ptr [eax], al
0001c6dc: enter    0xca, 0
0001c6e0: fmulp    st(2)
0001c6e2: add      byte ptr [eax], al
0001c6e4: clc      
0001c6e5: retf     0
0001c6e8: push     cs
0001c6e9: retf     
0001c6ea: add      byte ptr [eax], al
0001c6ec: sub      cl, bl
0001c6ee: add      byte ptr [eax], al
0001c6f0: inc      edx
0001c6f1: retf     
0001c6f2: add      byte ptr [eax], al
0001c6f4: pop      edx
0001c6f5: retf     
0001c6f6: add      byte ptr [eax], al
0001c6f8: jb       0x1c6c5
0001c6fa: add      byte ptr [eax], al
0001c6fc: xchg     bl, cl
0001c6fe: add      byte ptr [eax], al
0001c700: mov      al, byte ptr [0xba0000cb]
0001c705: retf     
0001c706: add      byte ptr [eax], al
0001c708: salc     
0001c709: retf     
0001c70a: add      byte ptr [eax], al
0001c70c: out      dx, al
0001c70d: retf     
0001c70e: add      byte ptr [eax], al
0001c710: cld      
0001c711: retf     
0001c712: add      byte ptr [eax], al
0001c714: add      byte ptr [eax], al
0001c716: add      byte ptr [eax], al
0001c718: pop      esi
0001c719: add      eax, 0x6c43775a
0001c71e: outsd    dx, dword ptr [esi]
0001c71f: jae      0x1c786
0001c721: add      byte ptr [edi], dl
0001c724: inc      ebp
0001c725: js       0x1c76d
0001c727: jb       0x1c78e
0001c729: push     eax
0001c72b: outsd    dx, dword ptr [esi]
0001c72c: outsd    dx, dword ptr [esi]
0001c72d: insb     byte ptr es:[edi], dx
0001c72e: push     edi
0001c72f: imul     esi, dword ptr [eax + ebp*2 + 0x54], 0x45006761
0001c737: add      byte ptr [ebp + 0x78], al
0001c73a: inc      ecx
0001c73b: insb     byte ptr es:[edi], dx
0001c73c: insb     byte ptr es:[edi], dx
0001c73d: outsd    dx, dword ptr [esi]
0001c73e: arpl     word ptr [ecx + 0x74], sp
0001c741: push     eax
0001c743: outsd    dx, dword ptr [esi]
0001c744: outsd    dx, dword ptr [esi]
0001c745: insb     byte ptr es:[edi], dx
0001c746: push     edi
0001c747: imul     esi, dword ptr [eax + ebp*2 + 0x54], 0xa9006761
0001c74f: add      eax, 0x7551775a
0001c754: jb       0x1c7d0
0001c757: push     esi
0001c758: popal    
0001c759: insb     byte ptr es:[edi], dx
0001c75a: jne      0x1c7c1
0001c75c: dec      ebx
0001c75d: jns      0x1c760
0001c760: mov      byte ptr [0x704f775a], al
0001c766: outsb    dx, byte ptr gs:[esi]
0001c768: dec      ebx
0001c769: jns      0x1c76c
0001c76c: insb     byte ptr es:[edi], dx
0001c76d: add      al, 0x52
0001c76f: je       0x1c7dd
0001c771: dec      ecx
0001c772: outsb    dx, byte ptr [esi]
0001c773: imul     esi, dword ptr [ebp + edx*2 + 0x6e], 0x646f6369
0001c77b: push     ebx
0001c77d: je       0x1c7f1
0001c77f: imul     ebp, dword ptr [esi + 0x67], 0x3750000
0001c786: dec      edi
0001c787: bound    esp, qword ptr [esi + 0x44]
0001c78a: jb       0x1c7f2
0001c78d: jb       0x1c7f6
0001c791: outsb    dx, byte ptr [esi]
0001c792: arpl     word ptr [ebp + 0x4f], sp
0001c795: bound    ebp, qword ptr [edx + 0x65]
0001c798: arpl     word ptr [eax + eax], si
0001c79c: or       al, byte ptr [edx]
0001c79e: dec      ecx
0001c79f: outsd    dx, dword ptr [esi]
0001c7a0: inc      bx
0001c7a2: popal    
0001c7a3: insb     byte ptr es:[edi], dx
0001c7a4: insb     byte ptr es:[edi], dx
0001c7a5: inc      esp
0001c7a6: jb       0x1c811
0001c7a8: jbe      0x1c80f
0001c7aa: jb       0x1c7ac
0001c7ac: push     ebx
0001c7ad: add      dword ptr [ecx + 0x6f], ecx
0001c7b0: inc      edx
0001c7b1: jne      0x1c81c
0001c7b3: insb     byte ptr es:[edi], dx
0001c7b4: inc      esp
0001c7b6: jbe      0x1c822
0001c7b9: arpl     word ptr [ebp + 0x49], sp
0001c7bc: outsd    dx, dword ptr [esi]
0001c7bd: inc      ebx
0001c7be: outsd    dx, dword ptr [esi]
0001c7bf: outsb    dx, byte ptr [esi]
0001c7c0: je       0x1c834
0001c7c2: outsd    dx, dword ptr [esi]
0001c7c3: insb     byte ptr es:[edi], dx
0001c7c4: push     edx
0001c7c5: jno      0x1c83d
0001c7c8: jae      0x1c83f
0001c7cb: add      byte ptr [edx + 2], cl
0001c7ce: dec      ebx
0001c7cf: dec      ecx
0001c7d1: outsb    dx, byte ptr [esi]
0001c7d2: imul     esi, dword ptr [ecx + ebp*2 + 0x61], 0x657a696c
0001c7da: inc      ebp
0001c7db: jbe      0x1c842
0001c7dd: outsb    dx, byte ptr [esi]
0001c7de: je       0x1c7e0
0001c7e0: outsd    dx, dword ptr [esi]
0001c7e1: add      ecx, dword ptr [edi + 0x62]
0001c7e4: push     edx
0001c7e5: jb       0x1c84f
0001c7ea: outsb    dx, byte ptr [esi]
0001c7eb: arpl     word ptr [ebp + 0x4f], sp
0001c7ee: bound    ebp, qword ptr [edx + 0x65]
0001c7f1: arpl     word ptr [edx + eax*2 + 0x79], si
0001c7f5: push     eax
0001c7f6: outsd    dx, dword ptr [esi]
0001c7f7: imul     ebp, dword ptr [esi + 0x74], 0x7265
0001c7fe: xchg     esp, eax
0001c7ff: add      dword ptr [ecx + 0x6f], ecx
0001c802: inc      edi
0001c803: je       0x1c84a
0001c806: jbe      0x1c872
0001c809: arpl     word ptr [ebp + 0x4f], sp
0001c80c: bound    ebp, qword ptr [edx + 0x65]
0001c80f: arpl     word ptr [eax + edx*2 + 0x6f], si
0001c813: imul     ebp, dword ptr [esi + 0x74], 0x7265
0001c81a: push     ds
0001c81b: push     es
0001c81c: ja       0x1c881
0001c81e: jae      0x1c883
0001c820: jo       0x1c89b
0001c822: add      byte ptr [eax], al
0001c824: and      byte ptr [esi], al
0001c826: ja       0x1c88b
0001c828: jae      0x1c896
0001c82a: outsb    dx, byte ptr gs:[esi]
0001c82c: add      byte ptr [eax], al
0001c82e: push     es
0001c830: ja       0x1c895
0001c832: jae      0x1c8a7
0001c834: je       0x1c8a8
0001c836: add      byte ptr [eax], al
0001c838: jbe      0x1c83b
0001c83a: dec      ecx
0001c83b: outsd    dx, dword ptr [esi]
0001c83c: inc      esp
0001c83d: insb     byte ptr es:[edi], dx
0001c83f: je       0x1c8a7
0001c842: inc      esp
0001c843: jbe      0x1c8af
0001c846: arpl     word ptr [ebp], sp
0001c849: add      byte ptr [edx], bh
0001c84b: add      eax, 0x6f546553
0001c850: imul     esp, dword ptr [ebp + 0x6e], 0x54
0001c854: jns      0x1c8c6
0001c856: add      byte ptr gs:[esi + 0x57654b02], ch
0001c85d: popal    
0001c85e: imul     esi, dword ptr [esi + eax*2 + 0x6f], 0x6e695372
0001c866: insb     byte ptr es:[di], dx
0001c868: dec      edi
0001c86a: bound    ebp, qword ptr [edx + 0x65]
0001c86d: arpl     word ptr [eax + eax - 0x6d], si
0001c871: add      cl, byte ptr [ebx + 0x65]
0001c874: push     ebx
0001c875: je       0x1c8bd
0001c878: jbe      0x1c8df
0001c87a: outsb    dx, byte ptr [esi]
0001c87b: je       0x1c87d
0001c87d: add      byte ptr [ebx], cl
0001c87f: add      cl, byte ptr [ecx + 0x6f]
0001c882: inc      bx
0001c884: outsd    dx, dword ptr [esi]
0001c885: insd     dword ptr es:[edi], dx
0001c886: jo       0x1c8f4
0001c888: je       0x1c8f0
0001c88b: push     edx
0001c88c: jno      0x1c904
0001c88f: jae      0x1c906
0001c892: add      byte ptr [eax], al
0001c894: mov      al, byte ptr [0x66784500]
0001c899: dec      ecx
0001c89a: outsb    dx, byte ptr [esi]
0001c89b: je       0x1c902
0001c89d: jb       0x1c90b
0001c89f: outsd    dx, dword ptr [esi]
0001c8a0: arpl     word ptr [ebx + 0x65], bp
0001c8a3: dec      ecx
0001c8a5: outsb    dx, byte ptr [esi]
0001c8a6: jae      0x1c90d
0001c8a8: jb       0x1c91e
0001c8aa: push     esp
0001c8ab: popal    
0001c8ac: imul     ebp, dword ptr [esp + ecx*2 + 0x69], 0x7473
0001c8b4: and      dword ptr [ebx], eax
0001c8b6: dec      esi
0001c8b7: je       0x1c8fa
0001c8b9: push     0x75
0001c8bc: jae      0x1c932
0001c8be: push     eax
0001c8bf: jb       0x1c92a
0001c8c1: jbe      0x1c92c
0001c8c3: insb     byte ptr es:[edi], dx
0001c8c4: jae      0x1c91d
0001c8c9: outsd    dx, dword ptr [esi]
0001c8ca: imul     esp, dword ptr [ebp + 0x6e], 0
0001c8ce: mov      al, byte ptr [0x704f775a]
0001c8d4: outsb    dx, byte ptr gs:[esi]
0001c8d6: push     eax
0001c8d7: jb       0x1c948
0001c8d9: arpl     word ptr [ebp + 0x73], sp
0001c8dc: jae      0x1c932
0001c8de: outsd    dx, dword ptr [esi]
0001c8df: imul     esp, dword ptr [ebp + 0x6e], 0
0001c8e3: add      cl, ch
0001c8e5: add      cl, byte ptr [ebp + 0x6d]
0001c8e8: dec      ecx
0001c8e9: jae      0x1c92c
0001c8eb: jb       0x1c954
0001c8ef: jae      0x1c964
0001c8f1: push     esi
0001c8f2: popal    
0001c8f3: insb     byte ptr es:[edi], dx
0001c8f4: imul     esp, dword ptr [eax + eax], 0x775a05cd
0001c8fc: push     edi
0001c8fd: jb       0x1c968
0001c8ff: je       0x1c966
0001c901: inc      esi
0001c902: imul     ebp, dword ptr [ebp], 0x6f490178
0001c90a: inc      esp
0001c90b: insb     byte ptr es:[edi], dx
0001c90d: je       0x1c975
0001c910: push     ebx
0001c911: jns      0x1c980
0001c913: bound    ebp, qword ptr [edi + 0x6c]
0001c916: imul     esp, dword ptr [ebx + 0x4c], 0x6b6e69
0001c91d: add      byte ptr [ecx + eax + 0x49], ch
0001c921: outsd    dx, dword ptr [esi]
0001c922: inc      ebx
0001c923: jb       0x1c98a
0001c925: popal    
0001c926: je       0x1c98d
0001c928: push     ebx
0001c929: jns      0x1c998
0001c92b: bound    ebp, qword ptr [edi + 0x6c]
0001c92e: imul     esp, dword ptr [ebx + 0x4c], 0x6b6e69
0001c935: add      byte ptr [ebx], dl
0001c937: push     es
0001c938: jae      0x1c9b1
0001c93a: jo       0x1c9ae
0001c93c: imul     ebp, dword ptr [esi + 0x74], 0x63000066
0001c943: add      dword ptr [ecx + 0x6f], ecx
0001c946: inc      ebx
0001c947: jb       0x1c9ae
0001c949: popal    
0001c94a: je       0x1c9b1
0001c94c: inc      esp
0001c94d: jbe      0x1c9b9
0001c950: arpl     word ptr [ebp], sp
0001c953: add      byte ptr [esi], al
0001c955: push     es
0001c956: jae      0x1c9c8
0001c958: jb       0x1c9c3
0001c95a: outsb    dx, byte ptr [esi]
0001c95b: je       0x1c9c3
0001c95d: add      dl, bl
0001c95f: add      al, 0x52
0001c961: je       0x1c9cf
0001c963: push     esp
0001c964: imul     ebp, dword ptr [ebp + 0x65], 0x69546f54
0001c96b: insd     dword ptr es:[edi], dx
0001c96c: inc      esi
0001c96e: imul     esp, dword ptr [ebp + 0x6c], 0x94007364
0001c975: add      byte ptr [ebp + 0x78], al
0001c978: push     ebx
0001c979: jns      0x1c9ee
0001c97b: je       0x1c9e2
0001c97d: insd     dword ptr es:[edi], dx
0001c97e: push     esp
0001c97f: imul     ebp, dword ptr [ebp + 0x65], 0x6f4c6f54
0001c986: arpl     word ptr [ecx + 0x6c], sp
0001c989: push     esp
0001c98a: imul     ebp, dword ptr [ebp + 0x65], 0x4b026b00
0001c991: push     ecx
0001c993: jne      0x1c9fa
0001c995: jb       0x1ca10
0001c997: push     ebx
0001c998: jns      0x1ca0d
0001c99a: je       0x1ca01
0001c99c: insd     dword ptr es:[edi], dx
0001c99d: push     esp
0001c99e: imul     ebp, dword ptr [ebp + 0x65], 0x5a059d00
0001c9a5: ja       0x1c9f8
0001c9a7: jne      0x1ca0e
0001c9a9: jb       0x1ca24
0001c9ab: dec      ecx
0001c9ac: outsb    dx, byte ptr [esi]
0001c9ad: outsw    dx, word ptr [esi]
0001c9af: jb       0x1ca1e
0001c9b1: popal    
0001c9b2: je       0x1ca1d
0001c9b4: outsd    dx, dword ptr [esi]
0001c9b5: outsb    dx, byte ptr [esi]
0001c9b6: inc      esi
0001c9b7: imul     ebp, dword ptr [ebp], 0x52045300
0001c9bf: je       0x1ca2d
0001c9c1: inc      esi
0001c9c2: jb       0x1ca29
0001c9c4: push     ebp
0001c9c6: outsb    dx, byte ptr [esi]
0001c9c7: imul     esp, dword ptr [ebx + 0x6f], 0x74536564
0001c9ce: jb       0x1ca39
0001c9d0: outsb    dx, byte ptr [esi]
0001c9d1: add      byte ptr [bx + si], al
0001c9d4: arpl     word ptr [0x7243775a], ax
0001c9da: popal    
0001c9dc: je       0x1ca43
0001c9de: inc      esi
0001c9df: imul     ebp, dword ptr [ebp], 0x5203f700
0001c9e7: je       0x1ca55
0001c9e9: inc      ecx
0001c9ea: outsb    dx, byte ptr [esi]
0001c9eb: jae      0x1ca56
0001c9ed: push     ebx
0001c9ee: je       0x1ca62
0001c9f0: imul     ebp, dword ptr [esi + 0x67], 0x6e556f54
0001c9f7: imul     esp, dword ptr [ebx + 0x6f], 0x74536564
0001c9fe: jb       0x1ca69
0001ca00: outsb    dx, byte ptr [esi]
0001ca01: add      byte ptr [bx + si], al
0001ca04: xor      dword ptr [eax], eax
0001ca06: inc      esp
0001ca07: bound    esp, qword ptr [edi + 0x50]
0001ca0a: jb       0x1ca75
0001ca0c: outsb    dx, byte ptr [esi]
0001ca0d: je       0x1ca0f
0001ca0f: add      ch, dl
0001ca11: add      eax, 0x6c6c615f
0001ca16: insd     dword ptr es:[edi], dx
0001ca17: jne      0x1ca85
0001ca19: add      byte ptr [esi + 2], bh
0001ca1c: dec      ebx
0001ca1d: push     edx
0001ca1f: insb     byte ptr es:[edi], dx
0001ca21: popal    
0001ca23: jae      0x1ca8a
0001ca25: dec      ebp
0001ca26: jne      0x1ca9c
0001ca28: js       0x1ca2b
0001ca2b: add      byte ptr [edi], dl
0001ca2d: add      eax, 0x72436553
0001ca32: popal    
0001ca34: je       0x1ca9b
0001ca36: inc      ebx
0001ca37: insb     byte ptr es:[edi], dx
0001ca38: imul     esp, dword ptr [ebp + 0x6e], 0x63655374
0001ca3f: jne      0x1cab3
0001ca41: imul     esi, dword ptr [ecx + edi*2], 0x4b023900
0001ca49: inc      edi
0001ca4b: je       0x1ca91
0001ca4e: jne      0x1cac2
0001ca50: jb       0x1cab7
0001ca52: outsb    dx, byte ptr [esi]
0001ca53: je       0x1caa9
0001ca55: push     0x64616572
0001ca5a: add      byte ptr [eax], al
0001ca5c: fiadd    dword ptr [0x6c75615f]
0001ca62: insb     byte ptr es:[edi], dx
0001ca63: imul     esi, dword ptr fs:[esi], 0x4500a300
0001ca6b: js       0x1cad3
0001ca6d: dec      ecx
0001ca6e: outsb    dx, byte ptr [esi]
0001ca6f: je       0x1cad6
0001ca71: jb       0x1cadf
0001ca73: outsd    dx, dword ptr [esi]
0001ca74: arpl     word ptr [ebx + 0x65], bp
0001ca77: push     edx
0001ca79: insd     dword ptr es:[edi], dx
0001ca7b: outsd    dx, dword ptr [esi]
0001ca7c: jbe      0x1cae3
0001ca7e: dec      eax
0001ca7f: popal    
0001ca81: dec      esp
0001ca83: imul     esi, dword ptr [ebx + 0x74], 0x5ab0000
0001ca8a: pop      edx
0001ca8b: ja       0x1cadf
0001ca8d: popal    
0001ca8f: inc      esi
0001ca91: imul     ebp, dword ptr [ebp], 0x4d02f500
0001ca99: insd     dword ptr es:[edi], dx
0001ca9a: dec      ebp
0001ca9b: popal    
0001ca9c: jo       0x1caea
0001ca9e: outsd    dx, dword ptr [esi]
0001ca9f: arpl     word ptr [ebx + 0x65], bp
0001caa2: push     eax
0001caa4: popal    
0001caa5: jae      0x1cafc
0001caa9: jo       0x1cb10
0001caab: arpl     word ptr [ecx + 0x66], bp
0001caae: jns      0x1caf3
0001cab0: popal    
0001cab1: arpl     word ptr [eax + 0x65], bp
0001cab4: add      byte ptr [eax], al
0001cab6: xlatb    
0001cab7: add      edx, dword ptr [eax + 0x73]
0001caba: push     edx
0001cabb: jbe      0x1cb23
0001cabe: jb       0x1cb34
0001cac0: push     esp
0001cac1: outsd    dx, dword ptr [esi]
0001cac2: push     ebx
0001cac3: insb     byte ptr es:[edi], dx
0001cac5: add      byte ptr [eax], al
0001cac8: pop      ds
0001cac9: add      eax, 0x6d496553
0001cace: jo       0x1cb35
0001cad0: jb       0x1cb45
0001cad2: outsd    dx, dword ptr [esi]
0001cad3: outsb    dx, byte ptr [esi]
0001cad4: popal    
0001cad5: je       0x1cb3c
0001cad7: inc      ebx
0001cad8: insb     byte ptr es:[edi], dx
0001cad9: imul     esp, dword ptr [ebp + 0x6e], 0x3e50074
0001cae0: push     eax
0001cae1: jae      0x1cb37
0001cae3: jb       0x1cb53
0001cae6: imul     ebp, dword ptr [esi + 0x61], 0x79536574
0001caed: jae      0x1cb63
0001caef: insd     dword ptr es:[edi], dx
0001caf1: push     esp
0001caf2: push     0x64616572
0001caf7: add      byte ptr [eax + 0x53654b02], bl
0001cafd: je       0x1cb50
0001cb00: jb       0x1cb6b
0001cb02: outsd    dx, dword ptr [esi]
0001cb03: jb       0x1cb6e
0001cb05: je       0x1cb80
0001cb07: push     esp
0001cb08: push     0x64616572
0001cb0d: add      byte ptr [ebp + 3], ch
0001cb10: dec      edi
0001cb11: bound    edx, qword ptr [edx + 0x65]
0001cb14: jb       0x1cb7d
0001cb18: outsb    dx, byte ptr [esi]
0001cb19: arpl     word ptr [ebp + 0x4f], sp
0001cb1c: bound    ebp, qword ptr [edx + 0x65]
0001cb1f: arpl     word ptr [edx + eax*2 + 0x79], si
0001cb23: dec      eax
0001cb24: popal    
0001cb25: outsb    dx, byte ptr [esi]
0001cb26: insb     byte ptr es:[edi], dx
0001cb28: add      byte ptr gs:[ecx + 0x43735003], dl
0001cb2f: jb       0x1cb96
0001cb31: popal    
0001cb32: je       0x1cb99
0001cb34: push     ebx
0001cb35: jns      0x1cbaa
0001cb37: je       0x1cb9e
0001cb39: insd     dword ptr es:[edi], dx
0001cb3a: push     esp
0001cb3b: push     0x64616572
0001cb40: add      byte ptr [eax], al
0001cb42: push     ecx
0001cb43: add      cl, byte ptr [ebx + 0x65]
0001cb46: dec      ecx
0001cb47: outsb    dx, byte ptr [esi]
0001cb48: imul     esi, dword ptr [ecx + ebp*2 + 0x61], 0x657a696c
0001cb50: push     ebx
0001cb51: jo       0x1cbbc
0001cb53: outsb    dx, byte ptr [esi]
0001cb54: dec      esp
0001cb55: outsd    dx, dword ptr [esi]
0001cb56: arpl     word ptr [ebx], bp
0001cb59: add      byte ptr [edi + 5], bh
0001cb5c: pop      edx
0001cb5d: ja       0x1cbac
0001cb5f: popal    
0001cb60: imul     esp, dword ptr [ebp + 0x54], 0x65
0001cb64: insd     dword ptr es:[edi], dx
0001cb65: jo       0x1cbd6
0001cb67: jb       0x1cbca
0001cb69: jb       0x1cbe4
0001cb6b: dec      edi
0001cb6c: bound    ebp, qword ptr [edx + 0x65]
0001cb6f: arpl     word ptr [eax + eax + 0x4e], si
0001cb73: add      cl, byte ptr [ebx + 0x65]
0001cb76: dec      ecx
0001cb77: outsb    dx, byte ptr [esi]
0001cb78: imul     esi, dword ptr [ecx + ebp*2 + 0x61], 0x657a696c
0001cb80: dec      ebp
0001cb81: jne      0x1cbf7
0001cb83: js       0x1cb86
0001cb86: popal    
0001cb87: add      eax, 0x7243775a
0001cb8c: popal    
0001cb8e: je       0x1cbf5
0001cb90: inc      esp
0001cb91: imul     esi, dword ptr [edx + 0x65], 0x726f7463
0001cb98: jns      0x1cbe9
0001cb9a: bound    ebp, qword ptr [edx + 0x65]
0001cb9d: arpl     word ptr [eax + eax - 0x47], si
0001cba1: add      al, 0x52
0001cba3: je       0x1cc11
0001cba5: push     ecx
0001cba6: jne      0x1cc0d
0001cba8: jb       0x1cc23
0001cbaa: push     edx
0001cbab: imul     esi, dword ptr gs:[bp + di + 0x74], 0x61567972
0001cbb4: insb     byte ptr es:[edi], dx
0001cbb5: jne      0x1cc1c
0001cbb7: jae      0x1cbb9
0001cbb9: add      bl, bh
0001cbbb: add      edx, dword ptr [edx + 0x74]
0001cbbe: insb     byte ptr es:[edi], dx
0001cbbf: inc      ecx
0001cbc0: jo       0x1cc32
0001cbc2: outsb    dx, byte ptr gs:[esi]
0001cbc4: push     ebp
0001cbc6: outsb    dx, byte ptr [esi]
0001cbc7: imul     esp, dword ptr [ebx + 0x6f], 0x6f546564
0001cbce: push     ebx
0001cbcf: je       0x1cc43
0001cbd1: imul     ebp, dword ptr [esi + 0x67], 0x4150000
0001cbd8: push     edx
0001cbd9: je       0x1cc47
0001cbdb: inc      ebx
0001cbdc: outsd    dx, dword ptr [esi]
0001cbdd: jo       0x1cc58
0001cbdf: push     ebp
0001cbe0: outsb    dx, byte ptr [esi]
0001cbe1: imul     esp, dword ptr [ebx + 0x6f], 0x74536564
0001cbe8: jb       0x1cc53
0001cbea: outsb    dx, byte ptr [esi]
0001cbeb: add      byte ptr [bx + si], al
0001cbee: movsd    dword ptr es:[edi], dword ptr [esi]
0001cbef: add      cl, byte ptr [ebx + 0x65]
0001cbf2: push     esp
0001cbf3: imul     esp, dword ptr [ebx + 0x6b], 0x6e756f43
0001cbfa: je       0x1cbfc
0001cbfc: add      cl, byte ptr es:[ebx + 0x65]
0001cc00: inc      edx
0001cc01: jne      0x1cc6a
0001cc03: inc      ebx
0001cc04: push     0x456b6365
0001cc09: js       0x1cc0b
0001cc0b: add      byte ptr [esi + 0x74], ch
0001cc0e: outsd    dx, dword ptr [esi]
0001cc0f: jae      0x1cc7c
0001cc11: jb       0x1cc81
0001cc13: insb     byte ptr es:[edi], dx
0001cc14: js       0x1cc7d
0001cc18: add      byte ptr [eax], al
0001cc1a: add      byte ptr [eax], al
0001cc1c: add      byte ptr [eax], al
0001cc1e: add      byte ptr [eax], al
0001cc20: add      byte ptr [eax], al
0001cc22: add      byte ptr [eax], al
0001cc24: add      byte ptr [eax], al
0001cc26: add      byte ptr [eax], al
0001cc28: add      byte ptr [eax], al
0001cc2a: add      byte ptr [eax], al
0001cc2c: add      byte ptr [eax], al
0001cc2e: add      byte ptr [eax], al
0001cc30: add      byte ptr [eax], al
0001cc32: add      byte ptr [eax], al
0001cc34: add      byte ptr [eax], al
0001cc36: add      byte ptr [eax], al
0001cc38: add      byte ptr [eax], al
0001cc3a: add      byte ptr [eax], al
0001cc3c: add      byte ptr [eax], al
0001cc3e: add      byte ptr [eax], al
0001cc40: add      byte ptr [eax], al
0001cc42: add      byte ptr [eax], al
0001cc44: add      byte ptr [eax], al
0001cc46: add      byte ptr [eax], al
0001cc48: add      byte ptr [eax], al
0001cc4a: add      byte ptr [eax], al
0001cc4c: add      byte ptr [eax], al
0001cc4e: add      byte ptr [eax], al
0001cc50: add      byte ptr [eax], al
0001cc52: add      byte ptr [eax], al
0001cc54: add      byte ptr [eax], al
0001cc56: add      byte ptr [eax], al
0001cc58: add      byte ptr [eax], al
0001cc5a: add      byte ptr [eax], al
0001cc5c: add      byte ptr [eax], al
0001cc5e: add      byte ptr [eax], al
0001cc60: add      byte ptr [eax], al
0001cc62: add      byte ptr [eax], al
0001cc64: add      byte ptr [eax], al
0001cc66: add      byte ptr [eax], al
0001cc68: add      byte ptr [eax], al
0001cc6a: add      byte ptr [eax], al
0001cc6c: add      byte ptr [eax], al
0001cc6e: add      byte ptr [eax], al
0001cc70: add      byte ptr [eax], al
0001cc72: add      byte ptr [eax], al
0001cc74: add      byte ptr [eax], al
0001cc76: add      byte ptr [eax], al
0001cc78: add      byte ptr [eax], al
0001cc7a: add      byte ptr [eax], al
0001cc7c: add      byte ptr [eax], al
0001cc7e: add      byte ptr [eax], al
0001cc80: add      byte ptr [eax], al
0001cc82: add      byte ptr [eax], al
0001cc84: add      byte ptr [eax], al
0001cc86: add      byte ptr [eax], al
0001cc88: add      byte ptr [eax], al
0001cc8a: add      byte ptr [eax], al
0001cc8c: add      byte ptr [eax], al
0001cc8e: add      byte ptr [eax], al
0001cc90: add      byte ptr [eax], al
0001cc92: add      byte ptr [eax], al
0001cc94: add      byte ptr [eax], al
0001cc96: add      byte ptr [eax], al
0001cc98: add      byte ptr [eax], al
0001cc9a: add      byte ptr [eax], al
0001cc9c: add      byte ptr [eax], al
0001cc9e: add      byte ptr [eax], al
0001cca0: add      byte ptr [eax], al
0001cca2: add      byte ptr [eax], al
0001cca4: add      byte ptr [eax], al
0001cca6: add      byte ptr [eax], al
0001cca8: add      byte ptr [eax], al
0001ccaa: add      byte ptr [eax], al
0001ccac: add      byte ptr [eax], al
0001ccae: add      byte ptr [eax], al
0001ccb0: add      byte ptr [eax], al
0001ccb2: add      byte ptr [eax], al
0001ccb4: add      byte ptr [eax], al
0001ccb6: add      byte ptr [eax], al
0001ccb8: add      byte ptr [eax], al
0001ccba: add      byte ptr [eax], al
0001ccbc: add      byte ptr [eax], al
0001ccbe: add      byte ptr [eax], al
0001ccc0: add      byte ptr [eax], al
0001ccc2: add      byte ptr [eax], al
0001ccc4: add      byte ptr [eax], al
0001ccc6: add      byte ptr [eax], al
0001ccc8: add      byte ptr [eax], al
0001ccca: add      byte ptr [eax], al
0001cccc: add      byte ptr [eax], al
0001ccce: add      byte ptr [eax], al
0001ccd0: add      byte ptr [eax], al
0001ccd2: add      byte ptr [eax], al
0001ccd4: add      byte ptr [eax], al
0001ccd6: add      byte ptr [eax], al
0001ccd8: add      byte ptr [eax], al
0001ccda: add      byte ptr [eax], al
0001ccdc: add      byte ptr [eax], al
0001ccde: add      byte ptr [eax], al
0001cce0: add      byte ptr [eax], al
0001cce2: add      byte ptr [eax], al
0001cce4: add      byte ptr [eax], al
0001cce6: add      byte ptr [eax], al
0001cce8: add      byte ptr [eax], al
0001ccea: add      byte ptr [eax], al
0001ccec: add      byte ptr [eax], al
0001ccee: add      byte ptr [eax], al
0001ccf0: add      byte ptr [eax], al
0001ccf2: add      byte ptr [eax], al
0001ccf4: add      byte ptr [eax], al
0001ccf6: add      byte ptr [eax], al
0001ccf8: add      byte ptr [eax], al
0001ccfa: add      byte ptr [eax], al
0001ccfc: add      byte ptr [eax], al
0001ccfe: add      byte ptr [eax], al
0001cd00: add      byte ptr [eax], al
0001cd02: add      byte ptr [eax], al
0001cd04: add      byte ptr [eax], al
0001cd06: add      byte ptr [eax], al
0001cd08: add      byte ptr [eax], al
0001cd0a: add      byte ptr [eax], al
0001cd0c: add      byte ptr [eax], al
0001cd0e: add      byte ptr [eax], al
0001cd10: add      byte ptr [eax], al
0001cd12: add      byte ptr [eax], al
0001cd14: add      byte ptr [eax], al
0001cd16: add      byte ptr [eax], al
0001cd18: add      byte ptr [eax], al
0001cd1a: add      byte ptr [eax], al
0001cd1c: add      byte ptr [eax], al
0001cd1e: add      byte ptr [eax], al
0001cd20: add      byte ptr [eax], al
0001cd22: add      byte ptr [eax], al
0001cd24: add      byte ptr [eax], al
0001cd26: add      byte ptr [eax], al
0001cd28: add      byte ptr [eax], al
0001cd2a: add      byte ptr [eax], al
0001cd2c: add      byte ptr [eax], al
0001cd2e: add      byte ptr [eax], al
0001cd30: add      byte ptr [eax], al
0001cd32: add      byte ptr [eax], al
0001cd34: add      byte ptr [eax], al
0001cd36: add      byte ptr [eax], al
0001cd38: add      byte ptr [eax], al
0001cd3a: add      byte ptr [eax], al
0001cd3c: add      byte ptr [eax], al
0001cd3e: add      byte ptr [eax], al
0001cd40: add      byte ptr [eax], al
0001cd42: add      byte ptr [eax], al
0001cd44: add      byte ptr [eax], al
0001cd46: add      byte ptr [eax], al
0001cd48: add      byte ptr [eax], al
0001cd4a: add      byte ptr [eax], al
0001cd4c: add      byte ptr [eax], al
0001cd4e: add      byte ptr [eax], al
0001cd50: add      byte ptr [eax], al
0001cd52: add      byte ptr [eax], al
0001cd54: add      byte ptr [eax], al
0001cd56: add      byte ptr [eax], al
0001cd58: add      byte ptr [eax], al
0001cd5a: add      byte ptr [eax], al
0001cd5c: add      byte ptr [eax], al
0001cd5e: add      byte ptr [eax], al
0001cd60: add      byte ptr [eax], al
0001cd62: add      byte ptr [eax], al
0001cd64: add      byte ptr [eax], al
0001cd66: add      byte ptr [eax], al
0001cd68: add      byte ptr [eax], al
0001cd6a: add      byte ptr [eax], al
0001cd6c: add      byte ptr [eax], al
0001cd6e: add      byte ptr [eax], al
0001cd70: add      byte ptr [eax], al
0001cd72: add      byte ptr [eax], al
0001cd74: add      byte ptr [eax], al
0001cd76: add      byte ptr [eax], al
0001cd78: add      byte ptr [eax], al
0001cd7a: add      byte ptr [eax], al
0001cd7c: add      byte ptr [eax], al
0001cd7e: add      byte ptr [eax], al
0001cd80: add      byte ptr [eax], al
0001cd82: add      byte ptr [eax], al
0001cd84: add      byte ptr [eax], al
0001cd86: add      byte ptr [eax], al
0001cd88: add      byte ptr [eax], al
0001cd8a: add      byte ptr [eax], al
0001cd8c: add      byte ptr [eax], al
0001cd8e: add      byte ptr [eax], al
0001cd90: add      byte ptr [eax], al
0001cd92: add      byte ptr [eax], al
0001cd94: add      byte ptr [eax], al
0001cd96: add      byte ptr [eax], al
0001cd98: add      byte ptr [eax], al
0001cd9a: add      byte ptr [eax], al
0001cd9c: add      byte ptr [eax], al
0001cd9e: add      byte ptr [eax], al
0001cda0: add      byte ptr [eax], al
0001cda2: add      byte ptr [eax], al
0001cda4: add      byte ptr [eax], al
0001cda6: add      byte ptr [eax], al
0001cda8: add      byte ptr [eax], al
0001cdaa: add      byte ptr [eax], al
0001cdac: add      byte ptr [eax], al
0001cdae: add      byte ptr [eax], al
0001cdb0: add      byte ptr [eax], al
0001cdb2: add      byte ptr [eax], al
0001cdb4: add      byte ptr [eax], al
0001cdb6: add      byte ptr [eax], al
0001cdb8: add      byte ptr [eax], al
0001cdba: add      byte ptr [eax], al
0001cdbc: add      byte ptr [eax], al
0001cdbe: add      byte ptr [eax], al
0001cdc0: add      byte ptr [eax], al
0001cdc2: add      byte ptr [eax], al
0001cdc4: add      byte ptr [eax], al
0001cdc6: add      byte ptr [eax], al
0001cdc8: add      byte ptr [eax], al
0001cdca: add      byte ptr [eax], al
0001cdcc: add      byte ptr [eax], al
0001cdce: add      byte ptr [eax], al
0001cdd0: add      byte ptr [eax], al
0001cdd2: add      byte ptr [eax], al
0001cdd4: add      byte ptr [eax], al
0001cdd6: add      byte ptr [eax], al
0001cdd8: add      byte ptr [eax], al
0001cdda: add      byte ptr [eax], al
0001cddc: add      byte ptr [eax], al
0001cdde: add      byte ptr [eax], al
0001cde0: add      byte ptr [eax], al
0001cde2: add      byte ptr [eax], al
0001cde4: add      byte ptr [eax], al
0001cde6: add      byte ptr [eax], al
0001cde8: add      byte ptr [eax], al
0001cdea: add      byte ptr [eax], al
0001cdec: add      byte ptr [eax], al
0001cdee: add      byte ptr [eax], al
0001cdf0: add      byte ptr [eax], al
0001cdf2: add      byte ptr [eax], al
0001cdf4: add      byte ptr [eax], al
0001cdf6: add      byte ptr [eax], al
0001cdf8: add      byte ptr [eax], al
0001cdfa: add      byte ptr [eax], al
0001cdfc: add      byte ptr [eax], al
0001cdfe: add      byte ptr [eax], al