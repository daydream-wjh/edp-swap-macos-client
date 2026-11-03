100253d0: push     ebp
100253d1: mov      ebp, esp
100253d3: push     -1
100253d5: push     0x100662ac
100253da: mov      eax, dword ptr fs:[0]
100253e0: push     eax
100253e1: sub      esp, 0x294
100253e7: mov      eax, dword ptr [0x1008d020]
100253ec: xor      eax, ebp
100253ee: mov      dword ptr [ebp - 0x10], eax
100253f1: push     eax
100253f2: lea      eax, [ebp - 0xc]
100253f5: mov      dword ptr fs:[0], eax
100253fb: mov      dword ptr [ebp - 0x280], ecx
10025401: push     0x10076504 ; 'InitDiskInfo enter'
10025406: push     0
10025408: push     0x14c
1002540d: push     0x10076518 ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
10025412: push     0x10076544 ; 'CEdpDiskControl::InitDiskInfo'
10025417: call     0x10024100
1002541c: add      esp, 0x14
1002541f: jmp      0x10025431
10025421: push     esi
10025422: dec      ebp
10025423: push     eax
10025424: jb       0x10025495
10025426: je       0x1002548d
10025428: arpl     word ptr [eax + 0x62], si
1002542c: imul     ebp, dword ptr gs:[bp], 0xfdd085c7
10025435: .byte    0xff
10025436: .byte    0xff
10025437: .byte    0xff
10025438: .byte    0xff
10025439: .byte    0xff
1002543a: inc      edi
1002543c: test     eax, ebp
1002543e: std      
1002543f: .byte    0xff
10025440: .byte    0xff
10025441: .byte    0xff
10025442: .byte    0xff
10025443: .byte    0xff
10025444: inc      edi
10025446: test     esp, edx
10025448: std      
10025449: .byte    0xff
1002544a: inc      dword ptr [eax]
1002544c: add      byte ptr [eax], al
1002544e: add      dh, al
10025450: test     esp, ebp
10025452: std      
10025453: .byte    0xff
10025454: inc      dword ptr [eax]
10025456: push     0x1ff
1002545b: push     0
1002545d: lea      eax, [ebp - 0x213]
10025463: push     eax
10025464: call     0x1004f490
10025469: add      esp, 0xc
1002546c: mov      ecx, dword ptr [ebp - 0x280]
10025472: call     0x1002cb40
10025477: mov      byte ptr [ebp - 0x21d], al
1002547d: cmp      dword ptr [0x1009513c], 0
10025484: je       0x10025498
10025486: movzx    ecx, byte ptr [ebp - 0x21d]
1002548d: test     ecx, ecx
1002548f: je       0x10025498
10025491: mov      al, 1
10025493: jmp      0x10025ea6
10025498: mov      edx, dword ptr [ebp - 0x280]
1002549e: mov      eax, dword ptr [edx + 0x118c]
100254a4: mov      dword ptr [ebp - 0x230], eax
100254aa: mov      ecx, dword ptr [ebp - 0x230]
100254b0: push     ecx
100254b1: call     0x10034570
100254b6: add      esp, 4
100254b9: mov      edx, dword ptr [ebp - 0x280]
100254bf: mov      dword ptr [edx + 0x24], eax
100254c2: mov      eax, dword ptr [ebp - 0x280]
100254c8: mov      ecx, dword ptr [eax + 0x24]
100254cb: mov      dword ptr [0x10095114], ecx
100254d1: lea      ecx, [ebp - 0x21c]
100254d7: call     0x10003030
100254dc: mov      dword ptr [ebp - 4], 0
100254e3: mov      edx, dword ptr [ebp - 0x230]
100254e9: push     edx
100254ea: push     0x10076564
100254ef: lea      eax, [ebp - 0x21c]
100254f5: push     eax
100254f6: call     0x10004350
100254fb: add      esp, 0xc
100254fe: lea      ecx, [ebp - 0x21c]
10025504: call     0x10003180
10025509: push     eax
1002550a: push     0
1002550c: push     0x161
10025511: push     0x10076584 ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
10025516: push     0x100765b0 ; 'CEdpDiskControl::InitDiskInfo'
1002551b: call     0x10024100
10025520: add      esp, 0x14
10025523: mov      ecx, dword ptr [ebp - 0x230]
10025529: push     ecx
1002552a: call     0x100128f0
1002552f: add      esp, 4
10025532: lea      ecx, [ebp - 0x224]
10025538: call     0x10003030
1002553d: mov      byte ptr [ebp - 4], 1
10025541: mov      edx, dword ptr [ebp - 0x230]
10025547: push     edx
10025548: push     0x100765d0
1002554d: lea      eax, [ebp - 0x224]
10025553: push     eax
10025554: call     0x10004350
10025559: add      esp, 0xc
1002555c: lea      ecx, [ebp - 0x224]
10025562: call     0x10003180
10025567: push     eax
10025568: push     0
1002556a: push     0x166
1002556f: push     0x100765f0 ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
10025574: push     0x1007661c ; 'CEdpDiskControl::InitDiskInfo'
10025579: call     0x10024100
1002557e: add      esp, 0x14
10025581: push     0
10025583: mov      ecx, dword ptr [ebp - 0x230]
10025589: push     ecx
1002558a: call     0x10012750
1002558f: add      esp, 8
10025592: mov      dword ptr [ebp - 0x218], eax
10025598: cmp      dword ptr [ebp - 0x218], -1
1002559f: jne      0x100255ed
100255a1: mov      ecx, 0x100976fc
100255a6: call     0x10003170
100255ab: push     eax
100255ac: mov      ecx, dword ptr [ebp - 0x280]
100255b2: add      ecx, 4
100255b5: call     0x100032a0
100255ba: mov      byte ptr [ebp - 0x26d], 0
100255c1: mov      byte ptr [ebp - 4], 0
100255c5: lea      ecx, [ebp - 0x224]
100255cb: call     0x100030d0
100255d0: mov      dword ptr [ebp - 4], 0xffffffff
100255d7: lea      ecx, [ebp - 0x21c]
100255dd: call     0x100030d0
100255e2: mov      al, byte ptr [ebp - 0x26d]
100255e8: jmp      0x10025ea6
100255ed: mov      byte ptr [ebp - 0x225], 0
100255f4: mov      edx, dword ptr [ebp - 0x280]
100255fa: mov      byte ptr [edx + 0x1179], 0
10025601: mov      eax, dword ptr [ebp - 0x280]
10025607: mov      byte ptr [eax + 0x117a], 0
1002560e: mov      ecx, dword ptr [ebp - 0x280]
10025614: mov      byte ptr [ecx + 0x117b], 0
1002561b: mov      edx, dword ptr [ebp - 0x218]
10025621: push     edx
10025622: mov      ecx, dword ptr [ebp - 0x280]
10025628: call     0x10026280
1002562d: movzx    eax, al
10025630: test     eax, eax
10025632: jne      0x10025813
10025638: push     0x1007663c ; 'InitDiskInfo UpdateLabelInfo fail'
1002563d: push     4
1002563f: push     0x182
10025644: push     0x10076660 ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
10025649: push     0x1007668c ; 'CEdpDiskControl::InitDiskInfo'
1002564e: call     0x10024100
10025653: add      esp, 0x14
10025656: lea      ecx, [ebp - 0x24c]
1002565c: call     0x1000e050
10025661: mov      byte ptr [ebp - 4], 2
10025665: lea      ecx, [ebp - 0x24c]
1002566b: push     ecx
1002566c: mov      edx, dword ptr [ebp - 0x230]
10025672: push     edx
10025673: mov      eax, dword ptr [ebp - 0x218]
10025679: push     eax
1002567a: call     0x10014dc0
1002567f: add      esp, 0xc
10025682: movzx    ecx, al
10025685: test     ecx, ecx
10025687: jne      0x100256f6
10025689: push     0x100766ac ; 'InitDiskInfo GetBackDevicePath fail'
1002568e: push     4
10025690: push     0x186
10025695: push     0x100766d0 ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
1002569a: push     0x100766fc ; 'CEdpDiskControl::InitDiskInfo'
1002569f: call     0x10024100
100256a4: add      esp, 0x14
100256a7: mov      edx, dword ptr [ebp - 0x218]
100256ad: push     edx
100256ae: call     dword ptr [0x100682f0] ; CloseHandle
100256b4: mov      byte ptr [ebp - 0x26e], 0
100256bb: mov      byte ptr [ebp - 4], 1
100256bf: lea      ecx, [ebp - 0x24c]
100256c5: call     0x10003280
100256ca: mov      byte ptr [ebp - 4], 0
100256ce: lea      ecx, [ebp - 0x224]
100256d4: call     0x100030d0
100256d9: mov      dword ptr [ebp - 4], 0xffffffff
100256e0: lea      ecx, [ebp - 0x21c]
100256e6: call     0x100030d0
100256eb: mov      al, byte ptr [ebp - 0x26e]
100256f1: jmp      0x10025ea6
100256f6: lea      eax, [ebp - 0x24c]
100256fc: push     eax
100256fd: call     0x100127d0
10025702: add      esp, 4
10025705: movzx    ecx, al
10025708: test     ecx, ecx
1002570a: jne      0x10025779
1002570c: push     0x1007671c ; 'InitDiskInfo UpdateUniqueID fail'
10025711: push     4
10025713: push     0x18c
10025718: push     0x10076740 ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
1002571d: push     0x1007676c ; 'CEdpDiskControl::InitDiskInfo'
10025722: call     0x10024100
10025727: add      esp, 0x14
1002572a: mov      edx, dword ptr [ebp - 0x218]
10025730: push     edx
10025731: call     dword ptr [0x100682f0] ; CloseHandle
10025737: mov      byte ptr [ebp - 0x26f], 0
1002573e: mov      byte ptr [ebp - 4], 1
10025742: lea      ecx, [ebp - 0x24c]
10025748: call     0x10003280
1002574d: mov      byte ptr [ebp - 4], 0
10025751: lea      ecx, [ebp - 0x224]
10025757: call     0x100030d0
1002575c: mov      dword ptr [ebp - 4], 0xffffffff
10025763: lea      ecx, [ebp - 0x21c]
10025769: call     0x100030d0
1002576e: mov      al, byte ptr [ebp - 0x26f]
10025774: jmp      0x10025ea6
10025779: mov      eax, dword ptr [ebp - 0x218]
1002577f: push     eax
10025780: mov      ecx, dword ptr [ebp - 0x280]
10025786: call     0x10026280
1002578b: movzx    ecx, al
1002578e: test     ecx, ecx
10025790: jne      0x100257ff
10025792: push     0x1007678c ; 'InitDiskInfo Re UpdateLabelInfo fail'
10025797: push     4
10025799: push     0x193
1002579e: push     0x100767b4 ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
100257a3: push     0x100767e0 ; 'CEdpDiskControl::InitDiskInfo'
100257a8: call     0x10024100
100257ad: add      esp, 0x14
100257b0: mov      edx, dword ptr [ebp - 0x218]
100257b6: push     edx
100257b7: call     dword ptr [0x100682f0] ; CloseHandle
100257bd: mov      byte ptr [ebp - 0x270], 0
100257c4: mov      byte ptr [ebp - 4], 1
100257c8: lea      ecx, [ebp - 0x24c]
100257ce: call     0x10003280
100257d3: mov      byte ptr [ebp - 4], 0
100257d7: lea      ecx, [ebp - 0x224]
100257dd: call     0x100030d0
100257e2: mov      dword ptr [ebp - 4], 0xffffffff
100257e9: lea      ecx, [ebp - 0x21c]
100257ef: call     0x100030d0
100257f4: mov      al, byte ptr [ebp - 0x270]
100257fa: jmp      0x10025ea6
100257ff: mov      byte ptr [ebp - 4], 1
10025803: lea      ecx, [ebp - 0x24c]
10025809: call     0x10003280
1002580e: jmp      0x10025a7e
10025813: push     0x10076800 ; 'InitDiskInfo UpdateLabelInfo ok'
10025818: push     0
1002581a: push     0x19a
1002581f: push     0x10076820 ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
10025824: push     0x1007684c ; 'CEdpDiskControl::InitDiskInfo'
10025829: call     0x10024100
1002582e: add      esp, 0x14
10025831: lea      ecx, [ebp - 0x268]
10025837: call     0x1000e050
1002583c: mov      byte ptr [ebp - 4], 3
10025840: lea      eax, [ebp - 0x268]
10025846: push     eax
10025847: mov      ecx, dword ptr [ebp - 0x230]
1002584d: push     ecx
1002584e: mov      edx, dword ptr [ebp - 0x218]
10025854: push     edx
10025855: call     0x10014dc0
1002585a: add      esp, 0xc
1002585d: movzx    eax, al
10025860: test     eax, eax
10025862: jne      0x1002591f
10025868: push     0x10094fd8
1002586d: lea      ecx, [ebp - 0x268]
10025873: call     0x100032a0
10025878: push     0x1007686c ; 'WriteToUsb11: '
1002587d: call     dword ptr [0x10068340] ; OutputDebugStringA
10025883: lea      ecx, [ebp - 0x268]
10025889: call     0x10003310
1002588e: push     eax
1002588f: call     dword ptr [0x10068340] ; OutputDebugStringA
10025895: sub      esp, 0x1c
10025898: mov      ecx, esp
1002589a: mov      dword ptr [ebp - 0x274], esp
100258a0: lea      edx, [ebp - 0x268]
100258a6: push     edx
100258a7: call     0x10003240
100258ac: mov      dword ptr [ebp - 0x284], eax
100258b2: mov      eax, dword ptr [ebp - 0x230]
100258b8: push     eax
100258b9: mov      ecx, dword ptr [ebp - 0x218]
100258bf: push     ecx
100258c0: mov      ecx, dword ptr [ebp - 0x280]
100258c6: call     0x10024b90
100258cb: mov      byte ptr [ebp - 0x285], al
100258d1: movzx    edx, byte ptr [ebp - 0x285]
100258d8: test     edx, edx
100258da: je       0x100258fc
100258dc: push     0x1007687c ; 'InitDiskInfo WriteToUsb11 ok'
100258e1: push     0
100258e3: push     0x1a5
100258e8: push     0x1007689c ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
100258ed: push     0x100768c8 ; 'CEdpDiskControl::InitDiskInfo'
100258f2: call     0x10024100
100258f7: add      esp, 0x14
100258fa: jmp      0x1002591a
100258fc: push     0x100768e8 ; 'InitDiskInfo WriteToUsb11 failed'
10025901: push     4
10025903: push     0x1a9
10025908: push     0x1007690c ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
1002590d: push     0x10076938 ; 'CEdpDiskControl::InitDiskInfo'
10025912: call     0x10024100
10025917: add      esp, 0x14
1002591a: jmp      0x10025a6f
1002591f: mov      dword ptr [ebp - 0x28c], 0x10094fd8
10025929: mov      eax, dword ptr [ebp - 0x28c]
1002592f: add      eax, 1
10025932: mov      dword ptr [ebp - 0x290], eax
10025938: mov      ecx, dword ptr [ebp - 0x28c]
1002593e: mov      dl, byte ptr [ecx]
10025940: mov      byte ptr [ebp - 0x291], dl
10025946: add      dword ptr [ebp - 0x28c], 1
1002594d: cmp      byte ptr [ebp - 0x291], 0
10025954: jne      0x10025938
10025956: mov      eax, dword ptr [ebp - 0x28c]
1002595c: sub      eax, dword ptr [ebp - 0x290]
10025962: mov      dword ptr [ebp - 0x298], eax
10025968: je       0x10025a3f
1002596e: push     0x10094fd8
10025973: lea      ecx, [ebp - 0x268]
10025979: push     ecx
1002597a: call     0x1002da00
1002597f: add      esp, 8
10025982: movzx    edx, al
10025985: test     edx, edx
10025987: je       0x10025a3f
1002598d: push     0x10094fd8
10025992: lea      ecx, [ebp - 0x268]
10025998: call     0x100032a0
1002599d: push     0x10076958 ; 'WriteToUsb11: '
100259a2: call     dword ptr [0x10068340] ; OutputDebugStringA
100259a8: lea      ecx, [ebp - 0x268]
100259ae: call     0x10003310
100259b3: push     eax
100259b4: call     dword ptr [0x10068340] ; OutputDebugStringA
100259ba: sub      esp, 0x1c
100259bd: mov      ecx, esp
100259bf: mov      dword ptr [ebp - 0x278], esp
100259c5: lea      eax, [ebp - 0x268]
100259cb: push     eax
100259cc: call     0x10003240
100259d1: mov      dword ptr [ebp - 0x29c], eax
100259d7: mov      ecx, dword ptr [ebp - 0x230]
100259dd: push     ecx
100259de: mov      edx, dword ptr [ebp - 0x218]
100259e4: push     edx
100259e5: mov      ecx, dword ptr [ebp - 0x280]
100259eb: call     0x10024b90
100259f0: mov      byte ptr [ebp - 0x29d], al
100259f6: movzx    eax, byte ptr [ebp - 0x29d]
100259fd: test     eax, eax
100259ff: je       0x10025a21
10025a01: push     0x10076968 ; 'InitDiskInfo WriteToUsb11 ok'
10025a06: push     0
10025a08: push     0x1b6
10025a0d: push     0x10076988 ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
10025a12: push     0x100769b4 ; 'CEdpDiskControl::InitDiskInfo'
10025a17: call     0x10024100
10025a1c: add      esp, 0x14
10025a1f: jmp      0x10025a3f
10025a21: push     0x100769d4 ; 'InitDiskInfo WriteToUsb11 failed'
10025a26: push     4
10025a28: push     0x1ba
10025a2d: push     0x100769f8 ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
10025a32: push     0x10076a24 ; 'CEdpDiskControl::InitDiskInfo'
10025a37: call     0x10024100
10025a3c: add      esp, 0x14
10025a3f: lea      ecx, [ebp - 0x268]
10025a45: call     0x10003310
10025a4a: push     eax
10025a4b: call     dword ptr [0x10068340] ; OutputDebugStringA
10025a51: push     0x10076a44 ; 'InitDiskInfo GetBackDevicePath Ok'
10025a56: push     0
10025a58: push     0x1be
10025a5d: push     0x10076a68 ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
10025a62: push     0x10076a94 ; 'CEdpDiskControl::InitDiskInfo'
10025a67: call     0x10024100
10025a6c: add      esp, 0x14
10025a6f: mov      byte ptr [ebp - 4], 1
10025a73: lea      ecx, [ebp - 0x268]
10025a79: call     0x10003280
10025a7e: mov      ecx, dword ptr [ebp - 0x218]
10025a84: push     ecx
10025a85: mov      ecx, dword ptr [ebp - 0x280]
10025a8b: call     0x100261a0
10025a90: mov      edx, dword ptr [ebp - 0x280]
10025a96: movzx    eax, byte ptr [edx + 0x1b52]
10025a9d: test     eax, eax
10025a9f: je       0x10025ac2
10025aa1: mov      ecx, dword ptr [ebp - 0x280]
10025aa7: cmp      dword ptr [ecx + 0x214], 4
10025aae: jne      0x10025abd
10025ab0: mov      edx, dword ptr [ebp - 0x280]
10025ab6: mov      byte ptr [edx + 0x117b], 1
10025abd: jmp      0x10025bfa
10025ac2: push     0x10076ab4 ; 'InitDiskInfo Get Partions Info begin'
10025ac7: push     0
10025ac9: push     0x1ce
10025ace: push     0x10076adc ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
10025ad3: push     0x10076b08 ; 'CEdpDiskControl::InitDiskInfo'
10025ad8: call     0x10024100
10025add: add      esp, 0x14
10025ae0: mov      dword ptr [ebp - 0x26c], 0
10025aea: mov      dword ptr [ebp - 0x26c], 0
10025af4: jmp      0x10025b05
10025af6: mov      eax, dword ptr [ebp - 0x26c]
10025afc: add      eax, 1
10025aff: mov      dword ptr [ebp - 0x26c], eax
10025b05: cmp      dword ptr [ebp - 0x26c], 3
10025b0c: jge      0x10025bb2
10025b12: mov      ecx, dword ptr [ebp - 0x26c]
10025b18: imul     ecx, ecx, 0x60
10025b1b: mov      edx, dword ptr [ebp - 0x280]
10025b21: cmp      dword ptr [edx + ecx + 0xf4], 1
10025b29: jne      0x10025b3a
10025b2b: mov      eax, dword ptr [ebp - 0x280]
10025b31: mov      byte ptr [eax + 0x1179], 1
10025b38: jmp      0x10025bad
10025b3a: mov      ecx, dword ptr [ebp - 0x26c]
10025b40: imul     ecx, ecx, 0x60
10025b43: mov      edx, dword ptr [ebp - 0x280]
10025b49: cmp      dword ptr [edx + ecx + 0xf4], 2
10025b51: jne      0x10025b87
10025b53: mov      eax, dword ptr [ebp - 0x280]
10025b59: mov      byte ptr [eax + 0x117a], 1
10025b60: mov      ecx, dword ptr [ebp - 0x26c]
10025b66: imul     ecx, ecx, 0x60
10025b69: mov      edx, dword ptr [ebp - 0x280]
10025b6f: xor      eax, eax
10025b71: cmp      dword ptr [edx + ecx + 0xfc], 1
10025b79: sete     al
10025b7c: mov      ecx, dword ptr [ebp - 0x280]
10025b82: mov      byte ptr [ecx + 0x20], al
10025b85: jmp      0x10025bad
10025b87: mov      edx, dword ptr [ebp - 0x26c]
10025b8d: imul     edx, edx, 0x60
10025b90: mov      eax, dword ptr [ebp - 0x280]
10025b96: cmp      dword ptr [eax + edx + 0xf4], 4
10025b9e: jne      0x10025bad
10025ba0: mov      ecx, dword ptr [ebp - 0x280]
10025ba6: mov      byte ptr [ecx + 0x117b], 1
10025bad: jmp      0x10025af6
10025bb2: mov      edx, dword ptr [ebp - 0x280]
10025bb8: movzx    eax, byte ptr [edx + 0x117b]
10025bbf: push     eax
10025bc0: mov      ecx, dword ptr [ebp - 0x280]
10025bc6: movzx    edx, byte ptr [ecx + 0x117a]
10025bcd: push     edx
10025bce: mov      eax, dword ptr [ebp - 0x280]
10025bd4: movzx    ecx, byte ptr [eax + 0x1179]
10025bdb: push     ecx
10025bdc: push     0x10076b28 ; 'InitDiskInfo m_bHasBootPart=%d, m_bHasSharePart=%d, m_bHasEncryptPart=%d'
10025be1: push     0
10025be3: push     0x1e5
10025be8: push     0x10076b74 ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
10025bed: push     0x10076ba0 ; 'CEdpDiskControl::InitDiskInfo'
10025bf2: call     0x10024100
10025bf7: add      esp, 0x20
10025bfa: push     0
10025bfc: push     0x104
10025c01: push     0
10025c03: mov      edx, dword ptr [ebp - 0x280]
10025c09: add      edx, 0x1948
10025c0f: push     edx
10025c10: call     0x1001f170
10025c15: add      esp, 0x10
10025c18: mov      eax, dword ptr [ebp - 0x280]
10025c1e: movzx    ecx, byte ptr [eax + 0x1b52]
10025c25: test     ecx, ecx
10025c27: jne      0x10025cfd
10025c2d: mov      edx, dword ptr [ebp - 0x280]
10025c33: cmp      dword ptr [edx], 0x202
10025c39: jl       0x10025cce
10025c3f: mov      eax, dword ptr [ebp - 0x280]
10025c45: add      eax, 0x990
10025c4a: push     eax
10025c4b: push     0x104
10025c50: mov      ecx, dword ptr [ebp - 0x280]
10025c56: add      ecx, 0x1948
10025c5c: push     ecx
10025c5d: call     0x10048ea2
10025c62: add      esp, 0xc
10025c65: mov      edx, dword ptr [ebp - 0x280]
10025c6b: movsx    eax, byte ptr [edx + 0xdf4]
10025c72: test     eax, eax
10025c74: je       0x10025c8d
10025c76: mov      ecx, dword ptr [ebp - 0x280]
10025c7c: add      ecx, 0xdf4
10025c82: push     ecx
10025c83: mov      ecx, 0x100976f0
10025c88: call     0x100030f0
10025c8d: mov      edx, dword ptr [ebp - 0x280]
10025c93: movsx    eax, byte ptr [edx + 0xef4]
10025c9a: test     eax, eax
10025c9c: je       0x10025cb5
10025c9e: mov      ecx, dword ptr [ebp - 0x280]
10025ca4: add      ecx, 0xef4
10025caa: push     ecx
10025cab: mov      ecx, 0x100976d8
10025cb0: call     0x100030f0
10025cb5: mov      edx, dword ptr [ebp - 0x280]
10025cbb: add      edx, 0x890
10025cc1: push     edx
10025cc2: mov      ecx, 0x10097478
10025cc7: call     0x100030f0
10025ccc: jmp      0x10025cfd
10025cce: mov      eax, dword ptr [ebp - 0x280]
10025cd4: add      eax, 0x1948
10025cd9: push     eax
10025cda: mov      ecx, dword ptr [ebp - 0x218]
10025ce0: push     ecx
10025ce1: call     0x10014000
10025ce6: test     eax, eax
10025ce8: je       0x10025cfd
10025cea: mov      ecx, 0x100976b8
10025cef: call     0x10003170
10025cf4: push     eax
10025cf5: call     0x1002e7b0
10025cfa: add      esp, 4
10025cfd: movzx    edx, byte ptr [ebp - 0x21d]
10025d04: test     edx, edx
10025d06: je       0x10025e15
10025d0c: push     0x10076bc0 ; 'InitDiskInfo CheckIsCalledByEdpEdisk return true, module called by EdpEdisk'
10025d11: push     0
10025d13: push     0x1fe
10025d18: push     0x10076c0c ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
10025d1d: push     0x10076c38 ; 'CEdpDiskControl::InitDiskInfo'
10025d22: call     0x10024100
10025d27: add      esp, 0x14
10025d2a: mov      eax, dword ptr [ebp - 0x280]
10025d30: movzx    ecx, byte ptr [eax + 0x1178]
10025d37: test     ecx, ecx
10025d39: jne      0x10025e13
10025d3f: mov      edx, dword ptr [ebp - 0x280]
10025d45: movzx    eax, byte ptr [edx + 0x1179]
10025d4c: test     eax, eax
10025d4e: jne      0x10025da9
10025d50: mov      ecx, 0x10097728
10025d55: call     0x10003170
10025d5a: push     eax
10025d5b: mov      ecx, dword ptr [ebp - 0x280]
10025d61: add      ecx, 4
10025d64: call     0x100032a0
10025d69: mov      ecx, dword ptr [ebp - 0x218]
10025d6f: push     ecx
10025d70: call     dword ptr [0x100682f0] ; CloseHandle
10025d76: mov      byte ptr [ebp - 0x279], 0
10025d7d: mov      byte ptr [ebp - 4], 0
10025d81: lea      ecx, [ebp - 0x224]
10025d87: call     0x100030d0
10025d8c: mov      dword ptr [ebp - 4], 0xffffffff
10025d93: lea      ecx, [ebp - 0x21c]
10025d99: call     0x100030d0
10025d9e: mov      al, byte ptr [ebp - 0x279]
10025da4: jmp      0x10025ea6
10025da9: mov      edx, dword ptr [ebp - 0x280]
10025daf: movzx    eax, byte ptr [edx + 0x117a]
10025db6: test     eax, eax
10025db8: jne      0x10025e13
10025dba: mov      ecx, 0x1009777c
10025dbf: call     0x10003170
10025dc4: push     eax
10025dc5: mov      ecx, dword ptr [ebp - 0x280]
10025dcb: add      ecx, 4
10025dce: call     0x100032a0
10025dd3: mov      ecx, dword ptr [ebp - 0x218]
10025dd9: push     ecx
10025dda: call     dword ptr [0x100682f0] ; CloseHandle
10025de0: mov      byte ptr [ebp - 0x27a], 0
10025de7: mov      byte ptr [ebp - 4], 0
10025deb: lea      ecx, [ebp - 0x224]
10025df1: call     0x100030d0
10025df6: mov      dword ptr [ebp - 4], 0xffffffff
10025dfd: lea      ecx, [ebp - 0x21c]
10025e03: call     0x100030d0
10025e08: mov      al, byte ptr [ebp - 0x27a]
10025e0e: jmp      0x10025ea6
10025e13: jmp      0x10025e33
10025e15: push     0x10076c58 ; 'InitDiskInfo CheckIsCalledByEdpEdisk return false, module not called by EdpEdisk'
10025e1a: push     0
10025e1c: push     0x213
10025e21: push     0x10076cac ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
10025e26: push     0x10076cd8 ; 'CEdpDiskControl::InitDiskInfo'
10025e2b: call     0x10024100
10025e30: add      esp, 0x14
10025e33: mov      edx, dword ptr [ebp - 0x218]
10025e39: push     edx
10025e3a: call     dword ptr [0x100682f0] ; CloseHandle
10025e40: jmp      0x10025e50
10025e42: push     esi
10025e43: dec      ebp
10025e44: push     eax
10025e45: jb       0x10025eb6
10025e47: je       0x10025eae
10025e49: arpl     word ptr [eax + 0x65], si
10025e4d: outsb    dx, byte ptr [esi]
10025e4e: add      byte ptr fs:[eax - 8], ch
10025e52: insb     byte ptr es:[edi], dx
10025e53: pop      es
10025e54: adc      byte ptr [edx], ch
10025e57: push     0x22f
10025e5c: push     0x10076d0c ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
10025e61: push     0x10076d38 ; 'CEdpDiskControl::InitDiskInfo'
10025e66: call     0x10024100
10025e6b: add      esp, 0x14
10025e6e: mov      dword ptr [0x1009513c], 1
10025e78: mov      byte ptr [ebp - 0x27b], 1
10025e7f: mov      byte ptr [ebp - 4], 0
10025e83: lea      ecx, [ebp - 0x224]
10025e89: call     0x100030d0
10025e8e: mov      dword ptr [ebp - 4], 0xffffffff
10025e95: lea      ecx, [ebp - 0x21c]
10025e9b: call     0x100030d0
10025ea0: mov      al, byte ptr [ebp - 0x27b]
10025ea6: mov      ecx, dword ptr [ebp - 0xc]
10025ea9: mov      dword ptr fs:[0], ecx