100282a0: push     ebp
100282a1: mov      ebp, esp
100282a3: push     -1
100282a5: push     0x100656fb
100282aa: mov      eax, dword ptr fs:[0]
100282b0: push     eax
100282b1: sub      esp, 0x33c
100282b7: mov      eax, dword ptr [0x1008d020]
100282bc: xor      eax, ebp
100282be: mov      dword ptr [ebp - 0x10], eax
100282c1: push     eax
100282c2: lea      eax, [ebp - 0xc]
100282c5: mov      dword ptr fs:[0], eax
100282cb: mov      dword ptr [ebp - 0x348], ecx
100282d1: jmp      0x100282e3
100282e3: mov      byte ptr [ebp - 0x233], 1
100282ea: mov      dword ptr [ebp - 0x224], 0
100282f4: push     0x20c
100282f9: push     0
100282fb: lea      eax, [ebp - 0x220]
10028301: push     eax
10028302: call     0x1004f490
10028307: add      esp, 0xc
1002830a: mov      ecx, dword ptr [ebp - 0x348]
10028310: movzx    edx, byte ptr [ecx + 0x1178]
10028317: test     edx, edx
10028319: jne      0x1002838d
1002831b: mov      eax, dword ptr [ebp - 0x348]
10028321: movzx    ecx, byte ptr [eax + 0x117a]
10028328: test     ecx, ecx
1002832a: je       0x1002838d
1002832c: mov      edx, dword ptr [ebp - 0x348]
10028332: movzx    eax, byte ptr [edx + 0x20]
10028336: test     eax, eax
10028338: jne      0x1002838d
1002833a: lea      ecx, [ebp - 0x340]
10028340: call     0x10003030
10028345: mov      dword ptr [ebp - 4], 0
1002834c: mov      ecx, dword ptr [0x100976f0]
10028352: push     ecx
10028353: push     0x10077dd4
10028358: lea      edx, [ebp - 0x340]
1002835e: push     edx
1002835f: call     0x10004350
10028364: add      esp, 0xc
10028367: lea      ecx, [ebp - 0x340]
1002836d: call     0x10003170
10028372: push     eax
10028373: call     0x1002e7b0
10028378: add      esp, 4
1002837b: mov      dword ptr [ebp - 4], 0xffffffff
10028382: lea      ecx, [ebp - 0x340]
10028388: call     0x100030d0
1002838d: mov      eax, dword ptr [ebp - 0x348]
10028393: movzx    ecx, byte ptr [eax + 0x1178]
1002839a: test     ecx, ecx
1002839c: je       0x100284b8
100283a2: push     0x10077df0
100283a7: push     0
100283a9: push     0x56e
100283ae: push     0x10077e0c
100283b3: push     0x10077e38
100283b8: call     0x10024100
100283bd: add      esp, 0x14
100283c0: cmp      dword ptr [ebp + 0xc], 2
100283c4: jne      0x1002843c
100283c6: mov      edx, dword ptr [ebp - 0x348]
100283cc: cmp      dword ptr [edx + 0x1184], 2
100283d3: jne      0x100283e1
100283d5: mov      dword ptr [ebp - 0x21c], 1
100283df: jmp      0x1002843a
100283e1: mov      eax, dword ptr [ebp - 0x348]
100283e7: cmp      dword ptr [eax + 0x1184], 1
100283ee: jne      0x100283fc
100283f0: mov      dword ptr [ebp - 0x21c], 0
100283fa: jmp      0x1002843a
100283fc: push     0x10077e58
10028401: push     0
10028403: push     0x57b
10028408: push     0x10077e74
1002840d: push     0x10077ea0
10028412: call     0x10024100
10028417: add      esp, 0x14
1002841a: mov      ecx, 0x100976ac
1002841f: call     0x10003170
10028424: push     eax
10028425: mov      ecx, dword ptr [ebp - 0x348]
1002842b: add      ecx, 4
1002842e: call     0x100032a0
10028433: xor      al, al
10028435: jmp      0x1002891c
1002843a: jmp      0x100284b6
1002843c: cmp      dword ptr [ebp + 0xc], 4
10028440: jne      0x100284b6
10028442: mov      ecx, dword ptr [ebp - 0x348]
10028448: cmp      dword ptr [ecx + 0x1188], 2
1002844f: jne      0x1002845d
10028451: mov      dword ptr [ebp - 0x21c], 1
1002845b: jmp      0x100284b6
1002845d: mov      edx, dword ptr [ebp - 0x348]
10028463: cmp      dword ptr [edx + 0x1188], 1
1002846a: jne      0x10028478
1002846c: mov      dword ptr [ebp - 0x21c], 0
10028476: jmp      0x100284b6
10028478: push     0x10077ec0
1002847d: push     0
1002847f: push     0x58c
10028484: push     0x10077edc
10028489: push     0x10077f08
1002848e: call     0x10024100
10028493: add      esp, 0x14
10028496: mov      ecx, 0x100976ac
1002849b: call     0x10003170
100284a0: push     eax
100284a1: mov      ecx, dword ptr [ebp - 0x348]
100284a7: add      ecx, 4
100284aa: call     0x100032a0
100284af: xor      al, al
100284b1: jmp      0x1002891c
100284b6: jmp      0x10028508
100284b8: cmp      dword ptr [ebp + 0xc], 2
100284bc: jne      0x100284ca
100284be: mov      dword ptr [ebp - 0x21c], 1
100284c8: jmp      0x10028508
100284ca: push     0x10077f28
100284cf: push     0
100284d1: push     0x59a
100284d6: push     0x10077f44
100284db: push     0x10077f70
100284e0: call     0x10024100
100284e5: add      esp, 0x14
100284e8: mov      ecx, 0x100976ac
100284ed: call     0x10003170
100284f2: push     eax
100284f3: mov      ecx, dword ptr [ebp - 0x348]
100284f9: add      ecx, 4
100284fc: call     0x100032a0
10028501: xor      al, al
10028503: jmp      0x1002891c
10028508: mov      ecx, dword ptr [ebp - 0x348]
1002850e: call     0x10029e80
10028513: movzx    eax, al
10028516: test     eax, eax
10028518: jne      0x1002853a
1002851a: mov      ecx, 0x100976dc
1002851f: call     0x10003170
10028524: push     eax
10028525: mov      ecx, dword ptr [ebp - 0x348]
1002852b: add      ecx, 4
1002852e: call     0x100032a0
10028533: xor      al, al
10028535: jmp      0x1002891c
1002853a: mov      ecx, dword ptr [ebp - 0x348]
10028540: mov      edx, dword ptr [ebp + 0xc]
10028543: cmp      edx, dword ptr [ecx + 0x214]
10028549: je       0x10028570
1002854b: mov      byte ptr [ebp - 0x233], 0
10028552: mov      ecx, 0x1009771c
10028557: call     0x10003170
1002855c: push     eax
1002855d: mov      ecx, dword ptr [ebp - 0x348]
10028563: add      ecx, 4
10028566: call     0x100032a0
1002856b: jmp      0x10028906
10028570: mov      byte ptr [ebp - 0x231], 0
10028577: mov      dword ptr [ebp - 0x224], 0x64
10028581: mov      dword ptr [ebp - 0x220], 0
1002858b: mov      eax, dword ptr [ebp - 0x348]
10028591: mov      ecx, dword ptr [eax + 0x230]
10028597: mov      dword ptr [ebp - 0x214], ecx
1002859d: mov      edx, dword ptr [eax + 0x234]
100285a3: mov      dword ptr [ebp - 0x210], edx
100285a9: mov      eax, dword ptr [ebp - 0x348]
100285af: mov      ecx, dword ptr [eax + 0x228]
100285b5: mov      dword ptr [ebp - 0x204], ecx
100285bb: mov      edx, dword ptr [ebp - 0x348]
100285c1: mov      eax, dword ptr [edx + 0x220]
100285c7: mov      dword ptr [ebp - 0x20c], eax
100285cd: mov      ecx, dword ptr [edx + 0x224]
100285d3: mov      dword ptr [ebp - 0x208], ecx
100285d9: mov      edx, dword ptr [ebp - 0x348]
100285df: xor      eax, eax
100285e1: cmp      dword ptr [edx + 0x21c], 1
100285e8: sete     al
100285eb: mov      byte ptr [ebp - 0x218], al
100285f1: mov      ecx, dword ptr [ebp - 0x348]
100285f7: mov      dl, byte ptr [ecx + 0x1b52]
100285fd: mov      byte ptr [ebp - 0xc0], dl
10028603: push     0
10028605: push     0x20
10028607: push     0
10028609: lea      eax, [ebp - 0x200]
1002860f: push     eax
10028610: call     0x1001f170
10028615: add      esp, 0x10
10028618: movzx    ecx, byte ptr [ebp - 0xc0]
1002861f: test     ecx, ecx
10028621: je       0x10028677
10028623: mov      edx, dword ptr [ebp - 0x348]
10028629: mov      eax, dword ptr [edx + 0x2b8]
1002862f: mov      dword ptr [ebp - 0xbc], eax
10028635: push     0
10028637: push     0x20
10028639: mov      ecx, dword ptr [ebp - 0x348]
1002863f: add      ecx, 0x2bc
10028645: push     ecx
10028646: lea      edx, [ebp - 0xb8]
1002864c: push     edx
1002864d: call     0x1001f130
10028652: add      esp, 0x10
10028655: push     0
10028657: push     0x80
1002865c: mov      eax, dword ptr [ebp - 0x348]
10028662: add      eax, 0x238
10028667: push     eax
10028668: lea      ecx, [ebp - 0x98]
1002866e: push     ecx
1002866f: call     0x1001f130
10028674: add      esp, 0x10
10028677: mov      edx, dword ptr [ebp - 0x348]
1002867d: mov      eax, dword ptr [edx + 0x118c]
10028683: push     eax
10028684: push     0x10077f90
10028689: push     0x104
1002868e: lea      ecx, [ebp - 0x1c8]
10028694: push     ecx
10028695: call     0x10048e63
1002869a: add      esp, 0x10
1002869d: mov      byte ptr [ebp - 0x232], 0
100286a4: mov      edx, dword ptr [ebp - 0x348]
100286aa: movzx    eax, byte ptr [edx + 0x1b50]
100286b1: test     eax, eax
100286b3: je       0x100286cf
100286b5: cmp      dword ptr [ebp - 0x21c], 0
100286bc: jne      0x100286cf
100286be: mov      dword ptr [ebp - 0x21c], 1
100286c8: mov      byte ptr [ebp - 0x232], 1
100286cf: xor      ecx, ecx
100286d1: je       0x100286f1
100286d3: push     0x10077fb0
100286d8: push     0
100286da: push     0x5dc
100286df: push     0x10077fd0
100286e4: push     0x10077ffc
100286e9: call     0x10024100
100286ee: add      esp, 0x14
100286f1: mov      edx, dword ptr [ebp + 0xc]
100286f4: mov      dword ptr [ebp - 0xc4], edx
100286fa: mov      eax, dword ptr [ebp + 8]
100286fd: push     eax
100286fe: lea      ecx, [ebp - 0x224]
10028704: push     ecx
10028705: call     0x1002cc70
1002870a: add      esp, 8
1002870d: test     eax, eax
1002870f: jne      0x10028736
10028711: mov      byte ptr [ebp - 0x233], 0
10028718: mov      ecx, 0x1009773c
1002871d: call     0x10003170
10028722: push     eax
10028723: mov      ecx, dword ptr [ebp - 0x348]
10028729: add      ecx, 4
1002872c: call     0x100032a0
10028731: jmp      0x10028906
10028736: lea      edx, [ebp - 0x224]
1002873c: push     edx
1002873d: call     dword ptr [0x10095120]
10028743: mov      byte ptr [ebp - 0x231], al
10028749: movsx    eax, byte ptr [ebp - 0x231]
10028750: test     eax, eax
10028752: jne      0x10028770
10028754: call     dword ptr [0x10095134]
1002875a: push     eax
1002875b: mov      ecx, dword ptr [ebp - 0x348]
10028761: add      ecx, 4
10028764: call     0x100032a0
10028769: xor      al, al
1002876b: jmp      0x1002891c
10028770: xor      ecx, ecx
10028772: je       0x10028792
10028774: push     0x1007801c
10028779: push     0
1002877b: push     0x5f1
10028780: push     0x10078044
10028785: push     0x10078070
1002878a: call     0x10024100
1002878f: add      esp, 0x14
10028792: movzx    edx, byte ptr [ebp - 0x232]
10028799: test     edx, edx
1002879b: je       0x100287b0
1002879d: movzx    eax, byte ptr [ebp - 0x231]
100287a4: push     eax
100287a5: mov      ecx, dword ptr [ebp - 0x348]
100287ab: call     0x1002a3e0
100287b0: movzx    ecx, byte ptr [ebp - 0x231]
100287b7: push     ecx
100287b8: mov      ecx, dword ptr [ebp - 0x348]
100287be: call     0x1002a520
100287c3: movzx    edx, byte ptr [ebp - 0x231]
100287ca: push     edx
100287cb: mov      ecx, dword ptr [ebp - 0x348]
100287d1: call     0x1002aff0
100287d6: mov      eax, dword ptr [ebp - 0x348]
100287dc: cmp      dword ptr [eax + 0x214], 4
100287e3: jne      0x100287f3
100287e5: mov      cl, byte ptr [ebp - 0x231]
100287eb: mov      byte ptr [0x1009764e], cl
100287f1: jmp      0x100287ff
100287f3: mov      dl, byte ptr [ebp - 0x231]
100287f9: mov      byte ptr [0x1009764d], dl
100287ff: mov      byte ptr [ebp - 0x33c], 0
10028806: push     0x103
1002880b: push     0
1002880d: lea      eax, [ebp - 0x33b]
10028813: push     eax
10028814: call     0x1004f490
10028819: add      esp, 0xc
1002881c: mov      ecx, dword ptr [0x10078090]
10028822: mov      dword ptr [ebp - 0x230], ecx
10028828: xor      edx, edx
1002882a: mov      dword ptr [ebp - 0x22c], edx
10028830: mov      word ptr [ebp - 0x228], dx
10028837: mov      al, byte ptr [ebp - 0x231]
1002883d: mov      byte ptr [ebp - 0x230], al
10028843: push     0
10028845: push     0
10028847: push     0
10028849: push     0
1002884b: push     0
1002884d: push     0x104
10028852: lea      ecx, [ebp - 0x33c]
10028858: push     ecx
10028859: lea      edx, [ebp - 0x230]
1002885f: push     edx
10028860: call     dword ptr [0x1006825c]
10028866: test     eax, eax
10028868: je       0x10028906
1002886e: mov      eax, dword ptr [ebp - 0x348]
10028874: cmp      dword ptr [eax + 0x214], 2
1002887b: jne      0x100288b5
1002887d: mov      ecx, 0x100976f0
10028882: call     0x10003170
10028887: push     eax
10028888: lea      ecx, [ebp - 0x33c]
1002888e: push     ecx
1002888f: call     0x1004c1e4
10028894: add      esp, 8
10028897: test     eax, eax
10028899: je       0x100288b3
1002889b: mov      ecx, 0x100976f0
100288a0: call     0x10003170
100288a5: push     eax
100288a6: lea      edx, [ebp - 0x230]
100288ac: push     edx
100288ad: call     dword ptr [0x10068264]
100288b3: jmp      0x10028906
100288b5: mov      eax, dword ptr [ebp - 0x348]
100288bb: cmp      dword ptr [eax + 0x214], 4
100288c2: jne      0x10028906
100288c4: mov      ecx, 0x100976d8
100288c9: call     0x10003170
100288ce: push     eax
100288cf: lea      ecx, [ebp - 0x33c]
100288d5: push     ecx
100288d6: call     0x1004c1e4
100288db: add      esp, 8
100288de: test     eax, eax
100288e0: je       0x10028906
100288e2: mov      ecx, 0x100976d8
100288e7: call     0x10003170
100288ec: push     eax
100288ed: lea      edx, [ebp - 0x230]
100288f3: push     edx
100288f4: call     dword ptr [0x10068264]
100288fa: call     dword ptr [0x10068308]
10028900: mov      dword ptr [ebp - 0x344], eax
10028906: jmp      0x10028916
10028916: mov      al, byte ptr [ebp - 0x233]
1002891c: mov      ecx, dword ptr [ebp - 0xc]
1002891f: mov      dword ptr fs:[0], ecx
10028926: pop      ecx
10028927: mov      ecx, dword ptr [ebp - 0x10]
1002892a: xor      ecx, ebp
1002892c: call     0x10048939
10028931: mov      esp, ebp
10028933: pop      ebp
10028934: ret      0xc