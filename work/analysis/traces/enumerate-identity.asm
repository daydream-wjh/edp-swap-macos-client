10035530: push     ebp
10035531: mov      ebp, esp
10035533: push     -1
10035535: push     0x10065668
1003553a: mov      eax, dword ptr fs:[0]
10035540: push     eax
10035541: sub      esp, 0x34
10035544: mov      eax, dword ptr [0x1008d020]
10035549: xor      eax, ebp
1003554b: push     eax
1003554c: lea      eax, [ebp - 0xc]
1003554f: mov      dword ptr fs:[0], eax
10035555: lea      ecx, [ebp - 0x34]
10035558: call     0x10035a00
1003555d: mov      dword ptr [ebp - 4], 0
10035564: lea      eax, [ebp - 0x34]
10035567: push     eax
10035568: call     0x10034e60
1003556d: add      esp, 4
10035570: lea      ecx, [ebp + 8]
10035573: push     ecx
10035574: lea      edx, [ebp - 0x14]
10035577: push     edx
10035578: lea      ecx, [ebp - 0x34]
1003557b: call     0x10035d10
10035580: lea      eax, [ebp - 0x3c]
10035583: push     eax
10035584: lea      ecx, [ebp - 0x34]
10035587: call     0x10035b80
1003558c: push     eax
1003558d: lea      ecx, [ebp - 0x14]
10035590: call     0x10035dd0
10035595: movzx    ecx, al
10035598: test     ecx, ecx
1003559a: je       0x100355b6
1003559c: mov      byte ptr [ebp - 0x3d], 0
100355a0: mov      dword ptr [ebp - 4], 0xffffffff
100355a7: lea      ecx, [ebp - 0x34]
100355aa: call     0x10034530
100355af: mov      al, byte ptr [ebp - 0x3d]
100355b2: jmp      0x100355e0
100355b4: jmp      0x100355ca
100355b6: lea      ecx, [ebp - 0x14]
100355b9: call     0x10035db0
100355be: add      eax, 8
100355c1: push     eax
100355c2: mov      ecx, dword ptr [ebp + 0xc]
100355c5: call     0x10034300
100355ca: mov      byte ptr [ebp - 0x3e], 1
100355ce: mov      dword ptr [ebp - 4], 0xffffffff
100355d5: lea      ecx, [ebp - 0x34]
100355d8: call     0x10034530
100355dd: mov      al, byte ptr [ebp - 0x3e]
100355e0: mov      ecx, dword ptr [ebp - 0xc]
100355e3: mov      dword ptr fs:[0], ecx
100355ea: pop      ecx
100355eb: mov      esp, ebp
100355ed: pop      ebp
100355ee: ret      
100355ef: int3     
100355f0: push     ebp
100355f1: mov      ebp, esp
100355f3: sub      esp, 0xac
100355f9: mov      eax, dword ptr [0x1008d020]
100355fe: xor      eax, ebp
10035600: mov      dword ptr [ebp - 8], eax
10035603: mov      byte ptr [ebp - 0x71], 1
10035607: mov      eax, dword ptr [0x1007188c] ; '\\\\.\\PHYSICALDRIVE0'
1003560c: mov      dword ptr [ebp - 0x70], eax
1003560f: mov      ecx, dword ptr [0x10071890] ; 'PHYSICALDRIVE0'
10035615: mov      dword ptr [ebp - 0x6c], ecx
10035618: mov      edx, dword ptr [0x10071894] ; 'ICALDRIVE0'
1003561e: mov      dword ptr [ebp - 0x68], edx
10035621: mov      eax, dword ptr [0x10071898] ; 'DRIVE0'
10035626: mov      dword ptr [ebp - 0x64], eax
10035629: mov      cx, word ptr [0x1007189c]
10035630: mov      word ptr [ebp - 0x60], cx
10035634: mov      dl, byte ptr [0x1007189e]
1003563a: mov      byte ptr [ebp - 0x5e], dl
1003563d: push     0x51
1003563f: push     0
10035641: lea      eax, [ebp - 0x5d]
10035644: push     eax
10035645: call     0x1004f490
1003564a: add      esp, 0xc
1003564d: mov      ecx, dword ptr [ebp + 8]
10035650: push     ecx
10035651: push     0x100718a0 ; '\\\\.\\PHYSICALDRIVE%d'
10035656: lea      edx, [ebp - 0x70]
10035659: push     edx
1003565a: call     0x1001f2c0
1003565f: add      esp, 0xc
10035662: push     0
10035664: push     0
10035666: push     3
10035668: push     0
1003566a: push     3
1003566c: push     0x80000000
10035671: lea      eax, [ebp - 0x70]
10035674: push     eax
10035675: call     dword ptr [0x10068330] ; CreateFileA
1003567b: mov      dword ptr [ebp - 4], eax
1003567e: cmp      dword ptr [ebp - 4], -1
10035682: je       0x10035734
10035688: mov      dword ptr [ebp - 0xa4], 0
10035692: mov      dword ptr [ebp - 0xa0], 0
1003569c: xor      ecx, ecx
1003569e: mov      dword ptr [ebp - 0x9c], ecx
100356a4: mov      dword ptr [ebp - 0x98], ecx
100356aa: mov      dword ptr [ebp - 0x94], ecx
100356b0: mov      dword ptr [ebp - 0x90], ecx
100356b6: mov      dword ptr [ebp - 0x8c], ecx
100356bc: mov      dword ptr [ebp - 0x88], ecx
100356c2: mov      dword ptr [ebp - 0x84], ecx
100356c8: mov      dword ptr [ebp - 0x80], ecx
100356cb: mov      dword ptr [ebp - 0x7c], ecx
100356ce: push     0
100356d0: lea      edx, [ebp - 0xa4]
100356d6: push     edx
100356d7: push     0x28
100356d9: lea      eax, [ebp - 0xa0]
100356df: push     eax
100356e0: push     0
100356e2: push     0
100356e4: push     0x700a0
100356e9: mov      ecx, dword ptr [ebp - 4]
100356ec: push     ecx
100356ed: call     dword ptr [0x10068298] ; DeviceIoControl
100356f3: test     eax, eax
100356f5: je       0x10035711
100356f7: mov      edx, dword ptr [ebp + 0xc]
100356fa: mov      eax, dword ptr [ebp - 0x88]
10035700: mov      dword ptr [edx], eax
10035702: mov      ecx, dword ptr [ebp - 0x84]
10035708: mov      dword ptr [edx + 4], ecx
1003570b: mov      byte ptr [ebp - 0x71], 1
1003570f: jmp      0x10035721
10035711: call     dword ptr [0x10068308] ; GetLastError
10035717: mov      dword ptr [ebp - 0xa8], eax
1003571d: mov      byte ptr [ebp - 0x71], 0
10035721: mov      edx, dword ptr [ebp - 4]
10035724: push     edx
10035725: call     dword ptr [0x100682f0] ; CloseHandle
1003572b: mov      dword ptr [ebp - 4], 0
10035732: jmp      0x10035744
10035734: call     dword ptr [0x10068308] ; GetLastError
1003573a: mov      dword ptr [ebp - 0xac], eax
10035740: mov      byte ptr [ebp - 0x71], 0
10035744: mov      al, byte ptr [ebp - 0x71]
10035747: mov      ecx, dword ptr [ebp - 8]
1003574a: xor      ecx, ebp
1003574c: call     0x10048939
10035751: mov      esp, ebp
10035753: pop      ebp
10035754: ret      
10035755: int3     
10035756: int3     
10035757: int3     
10035758: int3     
10035759: int3     
1003575a: int3     
1003575b: int3     
1003575c: int3     
1003575d: int3     
1003575e: int3     
1003575f: int3     
10035760: push     ebp
10035761: mov      ebp, esp
10035763: sub      esp, 0x14c
10035769: mov      eax, dword ptr [0x1008d020]
1003576e: xor      eax, ebp
10035770: mov      dword ptr [ebp - 0x10], eax
10035773: mov      byte ptr [ebp - 0x121], 0
1003577a: mov      dword ptr [ebp - 0xc], 0x200
10035781: lea      eax, [ebp - 0x140]
10035787: push     eax
10035788: mov      ecx, dword ptr [ebp + 8]
1003578b: push     ecx
1003578c: call     0x10035920
10035791: add      esp, 8
10035794: movzx    edx, al
10035797: test     edx, edx
10035799: je       0x100357c8
1003579b: mov      eax, dword ptr [ebp - 0x12c]
100357a1: mov      dword ptr [ebp - 0xc], eax
100357a4: mov      ecx, dword ptr [ebp - 0xc]
100357a7: push     ecx
100357a8: push     0x10071af8 ; 'CDiskFunc::ReadDisk GetUsbSizeInfoEx ok dwBytesPerSector=%d'
100357ad: push     2
100357af: push     0x13b1
100357b4: push     0x10071b34 ; '..\\..\\global\\src\\DiskFunc.cpp'
100357b9: push     0x10071b54 ; 'CDiskFunc::ReadDisk'
100357be: call     0x10033a70
100357c3: add      esp, 0x18
100357c6: jmp      0x100357ed
100357c8: call     dword ptr [0x10068308] ; GetLastError
100357ce: push     eax
100357cf: push     0x10071b68 ; 'CDiskFunc::ReadDisk GetUsbSizeInfoEx failed err=%d'
100357d4: push     2
100357d6: push     0x13b5
100357db: push     0x10071b9c ; '..\\..\\global\\src\\DiskFunc.cpp'
100357e0: push     0x10071bbc ; 'CDiskFunc::ReadDisk'
100357e5: call     0x10033a70
100357ea: add      esp, 0x18
100357ed: mov      edx, dword ptr [ebp - 0xc]
100357f0: xor      eax, eax
100357f2: push     eax
100357f3: push     edx
100357f4: mov      ecx, dword ptr [ebp + 0x10]
100357f7: push     ecx
100357f8: mov      edx, dword ptr [ebp + 0xc]
100357fb: push     edx
100357fc: call     0x10051300
10035801: mov      dword ptr [ebp - 0x120], eax
10035807: mov      dword ptr [ebp - 0x11c], edx
1003580d: mov      eax, dword ptr [ebp - 0x120]
10035813: mov      dword ptr [ebp - 0x128], eax
10035819: mov      eax, dword ptr [ebp - 0x120]
1003581f: mov      edx, dword ptr [ebp - 0x11c]
10035825: mov      cl, 0x20
10035827: call     0x10060140
1003582c: mov      dword ptr [ebp - 8], eax
1003582f: mov      byte ptr [ebp - 0x118], 0
10035836: push     0x103
1003583b: push     0
1003583d: lea      ecx, [ebp - 0x117]
10035843: push     ecx
10035844: call     0x1004f490
10035849: add      esp, 0xc
1003584c: mov      edx, dword ptr [ebp + 8]
1003584f: push     edx
10035850: push     0x10071bd0 ; '\\\\.\\PhysicalDrive%u'
10035855: lea      eax, [ebp - 0x118]
1003585b: push     eax
1003585c: call     0x1001f2c0
10035861: add      esp, 0xc
10035864: push     0
10035866: push     0
10035868: push     3
1003586a: push     0
1003586c: push     3
1003586e: push     0x80000000
10035873: lea      ecx, [ebp - 0x118]
10035879: push     ecx
1003587a: call     dword ptr [0x10068330] ; CreateFileA
10035880: mov      dword ptr [ebp - 4], eax
10035883: cmp      dword ptr [ebp - 4], 0
10035887: je       0x10035905
10035889: cmp      dword ptr [ebp - 4], -1
1003588d: je       0x10035905
1003588f: push     0
10035891: lea      edx, [ebp - 8]
10035894: push     edx
10035895: mov      eax, dword ptr [ebp - 0x128]
1003589b: push     eax
1003589c: mov      ecx, dword ptr [ebp - 4]
1003589f: push     ecx
100358a0: call     dword ptr [0x10068328] ; SetFilePointer
100358a6: mov      dword ptr [ebp - 0x144], eax
100358ac: cmp      dword ptr [ebp - 0x144], -1
100358b3: je       0x100358f4
100358b5: mov      dword ptr [ebp - 0x14c], 0
100358bf: push     0
100358c1: lea      edx, [ebp - 0x14c]
100358c7: push     edx
100358c8: mov      eax, dword ptr [ebp + 0x14]
100358cb: imul     eax, dword ptr [ebp - 0xc]
100358cf: push     eax
100358d0: mov      ecx, dword ptr [ebp + 0x18]
100358d3: push     ecx
100358d4: mov      edx, dword ptr [ebp - 4]
100358d7: push     edx
100358d8: call     dword ptr [0x100682a0] ; ReadFile
100358de: mov      dword ptr [ebp - 0x148], eax
100358e4: cmp      dword ptr [ebp - 0x148], 0
100358eb: je       0x100358f4
100358ed: mov      byte ptr [ebp - 0x121], 1
100358f4: mov      eax, dword ptr [ebp - 4]
100358f7: push     eax
100358f8: call     dword ptr [0x100682f0] ; CloseHandle
100358fe: mov      dword ptr [ebp - 4], 0
10035905: mov      al, byte ptr [ebp - 0x121]
1003590b: mov      ecx, dword ptr [ebp - 0x10]
1003590e: xor      ecx, ebp
10035910: call     0x10048939
10035915: mov      esp, ebp
10035917: pop      ebp
10035918: ret      
10035919: int3     
1003591a: int3     
1003591b: int3     
1003591c: int3     
1003591d: int3     
1003591e: int3     
1003591f: int3     
10035920: push     ebp
10035921: mov      ebp, esp
10035923: sub      esp, 0x20c
10035929: mov      eax, dword ptr [0x1008d020]
1003592e: xor      eax, ebp
10035930: mov      dword ptr [ebp - 4], eax
10035933: mov      byte ptr [ebp - 0x209], 0
1003593a: cmp      dword ptr [ebp + 8], 0
1003593e: jbe      0x10035993
10035940: cmp      dword ptr [ebp + 8], -1
10035944: je       0x10035993
10035946: mov      eax, dword ptr [ebp + 8]
10035949: push     eax
1003594a: push     0x10071c00 ; '\\\\.\\PHYSICALDRIVE%d'
1003594f: lea      ecx, [ebp - 0x208]
10035955: push     ecx
10035956: call     0x10039550
1003595b: add      esp, 0xc
1003595e: mov      edx, dword ptr [ebp + 0xc]
10035961: push     edx
10035962: lea      eax, [ebp - 0x208]
10035968: push     eax
10035969: call     0x10034d80
1003596e: add      esp, 8
10035971: test     eax, eax
10035973: setne    cl
10035976: mov      byte ptr [ebp - 0x209], cl
1003597c: movzx    edx, byte ptr [ebp - 0x209]
10035983: test     edx, edx
10035985: je       0x10035993
10035987: mov      eax, dword ptr [ebp + 0xc]
1003598a: mov      ecx, dword ptr [eax + 0x14]
1003598d: mov      dword ptr [0x10095154], ecx
10035993: mov      al, byte ptr [ebp - 0x209]
10035999: mov      ecx, dword ptr [ebp - 4]
1003599c: xor      ecx, ebp
1003599e: call     0x10048939
100359a3: mov      esp, ebp
100359a5: pop      ebp
100359a6: ret      
100359a7: int3     
100359a8: int3     
100359a9: int3     
100359aa: int3     
100359ab: int3     
100359ac: int3     
100359ad: int3     
100359ae: int3     
100359af: int3     