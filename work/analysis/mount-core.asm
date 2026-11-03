10007350: push ebp
10007351: mov ebp, esp
10007353: push -1
10007355: push 0x1002e368
1000735a: mov eax, dword ptr fs:[0]
10007360: push eax
10007361: push ecx
10007362: sub esp, 0x180
10007368: mov eax, dword ptr [0x1003ac54]
1000736d: xor eax, ebp
1000736f: mov dword ptr [ebp - 0x14], eax
10007372: push ebx
10007373: push esi
10007374: push edi
10007375: push eax
10007376: lea eax, [ebp - 0xc]
10007379: mov dword ptr fs:[0], eax
1000737f: mov dword ptr [ebp - 0x10], esp
10007382: mov dword ptr [ebp - 0x18], ecx
10007385: jmp 0x10007397
10007387: push esi
10007388: dec ebp
10007389: push eax
1000738a: jb 0x100073fb
1000738c: je 0x100073f3
1000738e: arpl word ptr [eax + 0x62], si
10007392: imul ebp, dword ptr gs:[bp], 0x1e745c6
1000739b: mov dword ptr [ebp - 0x20], 0
100073a2: mov dword ptr [ebp - 0x24], 0
100073a9: mov dword ptr [ebp - 0x28], 0
100073b0: cmp dword ptr [ebp + 8], 0
100073b4: je 0x100073c1
100073b6: mov eax, dword ptr [ebp + 8]
100073b9: movsx ecx, byte ptr [eax + 0x5c]
100073bd: test ecx, ecx
100073bf: jne 0x100073d5
100073c1: push 0x10030ad4
100073c6: mov ecx, dword ptr [ebp - 0x18]
100073c9: call 0x10008d90
100073ce: xor al, al
100073d0: jmp 0x100078c4
100073d5: mov eax, dword ptr [ebp + 8]
100073d8: movzx ecx, byte ptr [eax + 0x164]
100073df: test ecx, ecx
100073e1: jne 0x100073ff
100073e3: mov eax, dword ptr [ebp + 8]
100073e6: add eax, 0x24
100073e9: jne 0x100073ff
100073eb: push 0x10030ac8
100073f0: mov ecx, dword ptr [ebp - 0x18]
100073f3: call 0x10008d90
100073f8: xor al, al
100073fa: jmp 0x100078c4
100073ff: mov dword ptr [ebp - 0x2c], 0
10007406: mov dword ptr [ebp - 0x30], 0
1000740d: push 0x10030ab4
10007412: mov ecx, dword ptr [ebp - 0x18]
10007415: call 0x10008d90
1000741a: cmp dword ptr [0x1003c110], 0
10007421: je 0x10007626
10007427: push 0x10030aa0
1000742c: mov ecx, dword ptr [ebp - 0x18]
1000742f: call 0x10008d90
10007434: push 0
10007436: lea eax, [ebp - 0x30]
10007439: push eax
1000743a: push 4
1000743c: lea ecx, [ebp - 0x2c]
1000743f: push ecx
10007440: push 0
10007442: push 0
10007444: push 0x8200e018
10007449: mov edx, dword ptr [0x1003c110]
1000744f: push edx
10007450: call dword ptr [0x10030274]
10007456: test eax, eax
10007458: setne al
1000745b: mov byte ptr [ebp - 0x19], al
1000745e: movzx eax, byte ptr [ebp - 0x19]
10007462: test eax, eax
10007464: jne 0x10007498
10007466: push 0x10030a88
1000746b: mov ecx, dword ptr [ebp - 0x18]
1000746e: call 0x10008d90
10007473: call dword ptr [0x100302ac]
10007479: mov dword ptr [ebp - 0x34], eax
1000747c: push 0x10030a50
10007481: mov ecx, dword ptr [ebp - 0x18]
10007484: add ecx, 0x28
10007487: call 0x10006810
1000748c: xor al, al
1000748e: jmp 0x100078c4
10007493: jmp 0x10007626
10007498: mov eax, dword ptr [ebp + 8]
1000749b: movzx ecx, byte ptr [eax + 0x44]
1000749f: cmp ecx, 1
100074a2: je 0x100074b0
100074a4: mov eax, dword ptr [ebp + 8]
100074a7: movzx ecx, byte ptr [eax + 0x44]
100074ab: cmp ecx, 2
100074ae: jne 0x100074e7
100074b0: cmp dword ptr [ebp - 0x2c], 0x13305bb
100074b7: je 0x100074e2
100074b9: cmp dword ptr [ebp - 0x2c], 0x13305c5
100074c0: je 0x100074e2
100074c2: cmp dword ptr [ebp - 0x2c], 0x13305cf
100074c9: je 0x100074e2
100074cb: push 0x10030a50
100074d0: mov ecx, dword ptr [ebp - 0x18]
100074d3: add ecx, 0x28
100074d6: call 0x10006810
100074db: xor al, al
100074dd: jmp 0x100078c4
100074e2: jmp 0x10007626
100074e7: mov eax, dword ptr [ebp + 8]
100074ea: movzx ecx, byte ptr [eax + 0x44]
100074ee: cmp ecx, 3
100074f1: jne 0x10007521
100074f3: cmp dword ptr [ebp - 0x2c], 0x13305c5
100074fa: je 0x1000751c
100074fc: cmp dword ptr [ebp - 0x2c], 0x13305cf
10007503: je 0x1000751c
10007505: push 0x10030a50
1000750a: mov ecx, dword ptr [ebp - 0x18]
1000750d: add ecx, 0x28
10007510: call 0x10006810
10007515: xor al, al
10007517: jmp 0x100078c4
1000751c: jmp 0x10007626
10007521: mov eax, dword ptr [ebp + 8]
10007524: movzx ecx, byte ptr [eax + 0x44]
10007528: cmp ecx, 4
1000752b: jne 0x10007626
10007531: push 0x100305de
10007536: lea ecx, [ebp - 0x38]
10007539: call 0x10001e90
1000753e: mov dword ptr [ebp - 4], 0
10007545: mov byte ptr [ebp - 0x13c], 0
1000754c: push 0x103
10007551: push 0
10007553: lea eax, [ebp - 0x13b]
10007559: push eax
1000755a: call 0x10018170
1000755f: add esp, 0xc
10007562: push 0x104
10007567: lea eax, [ebp - 0x13c]
1000756d: push eax
1000756e: call dword ptr [0x10030278]
10007574: call 0x1000a0e0
10007579: test eax, eax
1000757b: je 0x10007597
1000757d: lea eax, [ebp - 0x13c]
10007583: push eax
10007584: push 0x10030a34
10007589: lea ecx, [ebp - 0x38]
1000758c: push ecx
1000758d: call 0x10004c60
10007592: add esp, 0xc
10007595: jmp 0x100075af
10007597: lea eax, [ebp - 0x13c]
1000759d: push eax
1000759e: push 0x10030a18
100075a3: lea ecx, [ebp - 0x38]
100075a6: push ecx
100075a7: call 0x10004c60
100075ac: add esp, 0xc
100075af: lea ecx, [ebp - 0x38]
100075b2: call 0x10004c40
100075b7: push eax
100075b8: call 0x1000a1f0
100075bd: add esp, 4
100075c0: mov dword ptr [ebp - 0x144], eax
100075c6: mov dword ptr [ebp - 0x140], edx
100075cc: cmp dword ptr [ebp - 0x140], 0x30006
100075d6: ja 0x10007617
100075d8: jb 0x100075e6
100075da: cmp dword ptr [ebp - 0x144], 0xa001c
100075e4: jae 0x10007617
100075e6: push 0x10030a50
100075eb: mov ecx, dword ptr [ebp - 0x18]
100075ee: add ecx, 0x28
100075f1: call 0x10006810
100075f6: mov byte ptr [ebp - 0x18d], 0
100075fd: mov dword ptr [ebp - 4], 0xffffffff
10007604: lea ecx, [ebp - 0x38]
10007607: call 0x10001f10
1000760c: mov al, byte ptr [ebp - 0x18d]
10007612: jmp 0x100078c4
10007617: mov dword ptr [ebp - 4], 0xffffffff
1000761e: lea ecx, [ebp - 0x38]
10007621: call 0x10001f10
10007626: mov eax, dword ptr [ebp + 8]
10007629: add eax, 0x5c
1000762c: mov dword ptr [ebp - 0x24], eax
1000762f: mov eax, dword ptr [ebp - 0x24]
10007632: push eax
10007633: call 0x10019870
10007638: add esp, 4
1000763b: add eax, 0xf7
10007640: mov dword ptr [ebp - 0x20], eax
10007643: mov eax, dword ptr [ebp - 0x20]
10007646: push eax
10007647: call 0x1000b883
1000764c: add esp, 4
1000764f: mov dword ptr [ebp - 0x18c], eax
10007655: mov ecx, dword ptr [ebp - 0x18c]
1000765b: mov dword ptr [ebp - 0x28], ecx
1000765e: cmp dword ptr [ebp - 0x28], 0
10007662: jne 0x10007678
10007664: push 0x10030a0c
10007669: mov ecx, dword ptr [ebp - 0x18]
1000766c: call 0x10008d90
10007671: xor al, al
10007673: jmp 0x100078c4
10007678: mov dword ptr [ebp - 4], 1
1000767f: mov eax, dword ptr [ebp - 0x20]
10007682: push eax
10007683: push 0
10007685: mov ecx, dword ptr [ebp - 0x28]
10007688: push ecx
10007689: call 0x10018170
1000768e: add esp, 0xc
10007691: mov eax, dword ptr [ebp - 0x24]
10007694: movsx ecx, byte ptr [eax]
10007697: cmp ecx, 0x5c
1000769a: jne 0x100076f7
1000769c: mov eax, dword ptr [ebp - 0x24]
1000769f: movsx ecx, byte ptr [eax + 1]
100076a3: cmp ecx, 0x5c
100076a6: jne 0x100076dd
100076a8: push 0
100076aa: push 0x10030a04
100076af: mov eax, dword ptr [ebp - 0x28]
100076b2: add eax, 0xef
100076b7: push eax
100076b8: call 0x1000aeb0
100076bd: add esp, 0xc
100076c0: push 0
100076c2: mov eax, dword ptr [ebp - 0x24]
100076c5: add eax, 1
100076c8: push eax
100076c9: mov ecx, dword ptr [ebp - 0x28]
100076cc: add ecx, 0xef
100076d2: push ecx
100076d3: call 0x1000af00
100076d8: add esp, 0xc
100076db: jmp 0x100076f5
100076dd: push 0
100076df: mov eax, dword ptr [ebp - 0x24]
100076e2: push eax
100076e3: mov ecx, dword ptr [ebp - 0x28]
100076e6: add ecx, 0xef
100076ec: push ecx
100076ed: call 0x1000aeb0
100076f2: add esp, 0xc
100076f5: jmp 0x10007727
100076f7: push 0
100076f9: push 0x100309fc
100076fe: mov eax, dword ptr [ebp - 0x28]
10007701: add eax, 0xef
10007706: push eax
10007707: call 0x1000aeb0
1000770c: add esp, 0xc
1000770f: push 0
10007711: mov eax, dword ptr [ebp - 0x24]
10007714: push eax
10007715: mov ecx, dword ptr [ebp - 0x28]
10007718: add ecx, 0xef
1000771e: push ecx
1000771f: call 0x1000af00
10007724: add esp, 0xc
10007727: mov eax, dword ptr [ebp - 0x28]
1000772a: mov ecx, dword ptr [ebp + 8]
1000772d: mov edx, dword ptr [ecx]
1000772f: mov dword ptr [eax], edx
10007731: mov eax, dword ptr [ebp + 8]
10007734: xor ecx, ecx
10007736: cmp dword ptr [eax + 8], 0
1000773a: sete cl
1000773d: mov edx, dword ptr [ebp - 0x28]
10007740: mov byte ptr [edx + 4], cl
10007743: mov eax, dword ptr [ebp - 0x28]
10007746: add eax, 0xef
1000774b: push eax
1000774c: call 0x10019870
10007751: add esp, 4
10007754: mov ecx, dword ptr [ebp - 0x28]
10007757: mov word ptr [ecx + 0xed], ax
1000775e: mov eax, dword ptr [ebp - 0x28]
10007761: mov ecx, dword ptr [ebp + 8]
10007764: mov dl, byte ptr [ecx + 0x44]
10007767: mov byte ptr [eax + 0x3f], dl
1000776a: mov eax, dword ptr [ebp - 0x28]
1000776d: mov ecx, dword ptr [ebp + 8]
10007770: mov edx, dword ptr [ecx + 0x18]
10007773: mov dword ptr [eax + 0x13], edx
10007776: mov ecx, dword ptr [ecx + 0x1c]
10007779: mov dword ptr [eax + 0x17], ecx
1000777c: mov eax, dword ptr [ebp - 0x28]
1000777f: mov ecx, dword ptr [ebp + 8]
10007782: mov edx, dword ptr [ecx + 0x10]
10007785: mov dword ptr [eax + 0xb], edx
10007788: mov ecx, dword ptr [ecx + 0x14]
1000778b: mov dword ptr [eax + 0xf], ecx
1000778e: mov eax, dword ptr [ebp - 0x28]
10007791: mov ecx, dword ptr [ebp + 8]
10007794: mov edx, dword ptr [ecx + 0x20]
10007797: mov dword ptr [eax + 0x1b], edx
1000779a: mov eax, dword ptr [ebp - 0x28]
1000779d: mov ecx, dword ptr [ebp + 8]
100077a0: mov dl, byte ptr [ecx + 0xc]
100077a3: mov byte ptr [eax + 5], dl
100077a6: mov eax, dword ptr [ebp - 0x28]
100077a9: mov ecx, dword ptr [ebp + 8]
100077ac: mov dl, byte ptr [ecx + 0x164]
100077b2: mov byte ptr [eax + 0x54], dl
100077b5: push 0
100077b7: push 0x20
100077b9: mov eax, dword ptr [ebp + 8]
100077bc: add eax, 0x24
100077bf: push eax
100077c0: mov ecx, dword ptr [ebp - 0x28]
100077c3: add ecx, 0x1f
100077c6: push ecx
100077c7: call 0x1000ae30
100077cc: add esp, 0x10
100077cf: mov eax, dword ptr [ebp - 0x28]
100077d2: mov ecx, dword ptr [ebp + 8]
100077d5: mov edx, dword ptr [ecx + 0x48]
100077d8: mov dword ptr [eax + 0x40], edx
100077db: push 0
100077dd: push 0x10
100077df: mov eax, dword ptr [ebp + 8]
100077e2: add eax, 0x4c
100077e5: push eax
100077e6: mov ecx, dword ptr [ebp - 0x28]
100077e9: add ecx, 0x44
100077ec: push ecx
100077ed: call 0x1000ae30
100077f2: add esp, 0x10
100077f5: mov eax, dword ptr [ebp - 0x28]
100077f8: movzx ecx, byte ptr [eax + 0x54]
100077fc: test ecx, ecx
100077fe: je 0x1000784a
10007800: mov eax, dword ptr [ebp - 0x28]
10007803: mov ecx, dword ptr [ebp + 8]
10007806: mov edx, dword ptr [ecx + 0x168]
1000780c: mov dword ptr [eax + 0x55], edx
1000780f: push 0
10007811: push 0x20
10007813: mov eax, dword ptr [ebp + 8]
10007816: add eax, 0x16c
1000781b: push eax
1000781c: mov ecx, dword ptr [ebp - 0x28]
1000781f: add ecx, 0x59
10007822: push ecx
10007823: call 0x1000ae30
10007828: add esp, 0x10
1000782b: push 0
1000782d: push 0x80
10007832: mov eax, dword ptr [ebp + 8]
10007835: add eax, 0x18c
1000783a: push eax
1000783b: mov ecx, dword ptr [ebp - 0x28]
1000783e: add ecx, 0x6d
10007841: push ecx
10007842: call 0x1000ae30
10007847: add esp, 0x10
1000784a: mov eax, dword ptr [ebp + 8]
1000784d: mov ecx, dword ptr [eax + 0x160]
10007853: push ecx
10007854: mov edx, dword ptr [ebp + 8]
10007857: mov eax, dword ptr [edx + 4]
1000785a: push eax
1000785b: mov ecx, dword ptr [ebp - 0x28]
1000785e: push ecx
1000785f: mov ecx, dword ptr [ebp - 0x18]
10007862: call 0x10007c40
10007867: mov byte ptr [ebp - 0x18e], al
1000786d: mov dl, byte ptr [ebp - 0x18e]
10007873: mov byte ptr [ebp - 0x19], dl
10007876: jmp 0x10007885
10007878: mov dword ptr [ebp - 4], 0xffffffff
1000787f: mov eax, 0x1000788c
10007884: ret 
10007885: mov dword ptr [ebp - 4], 0xffffffff
1000788c: cmp dword ptr [ebp - 0x28], 0
10007890: je 0x100078b1
10007892: mov eax, dword ptr [ebp - 0x28]
10007895: mov dword ptr [ebp - 0x188], eax
1000789b: mov ecx, dword ptr [ebp - 0x188]
100078a1: push ecx
100078a2: call 0x1000b878
100078a7: add esp, 4
100078aa: mov dword ptr [ebp - 0x28], 0
100078b1: jmp 0x100078c1
100078b3: push esi
100078b4: dec ebp
100078b5: push eax
100078b6: jb 0x10007927
100078b8: je 0x1000791f
100078ba: arpl word ptr [eax + 0x65], si
100078be: outsb dx, byte ptr [esi]
100078bf: add byte ptr fs:[edx + 0x4d8be745], cl
100078c6: hlt 
100078c7: mov dword ptr fs:[0], ecx
100078ce: pop ecx
100078cf: pop edi
100078d0: pop esi
100078d1: pop ebx
100078d2: mov ecx, dword ptr [ebp - 0x14]
100078d5: xor ecx, ebp
100078d7: call 0x10018140
100078dc: mov esp, ebp
100078de: pop ebp
100078df: ret 4
100078e2: int3 
100078e3: int3 
100078e4: int3 
100078e5: int3 
100078e6: int3 
100078e7: int3 
100078e8: int3 
100078e9: int3 
100078ea: int3 
100078eb: int3 
100078ec: int3 
100078ed: int3 
100078ee: int3 
100078ef: int3 