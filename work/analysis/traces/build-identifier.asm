10034680: push     ebp
10034681: mov      ebp, esp
10034683: push     -1
10034685: push     0x100656c4
1003468a: mov      eax, dword ptr fs:[0]
10034690: push     eax
10034691: sub      esp, 0x204
10034697: mov      eax, dword ptr [0x1008d020]
1003469c: xor      eax, ebp
1003469e: mov      dword ptr [ebp - 0x14], eax
100346a1: push     eax
100346a2: lea      eax, [ebp - 0xc]
100346a5: mov      dword ptr fs:[0], eax
100346ab: lea      ecx, [ebp - 0x194]
100346b1: call     0x100340e0
100346b6: mov      dword ptr [ebp - 4], 0
100346bd: lea      eax, [ebp - 0x194]
100346c3: push     eax
100346c4: mov      ecx, dword ptr [ebp + 8]
100346c7: push     ecx
100346c8: call     0x10035530
100346cd: add      esp, 8
100346d0: mov      byte ptr [ebp - 0xd], al
100346d3: movzx    edx, byte ptr [ebp - 0xd]
100346d7: test     edx, edx
100346d9: jne      0x100346ff
100346db: mov      byte ptr [ebp - 0x19d], 0
100346e2: mov      dword ptr [ebp - 4], 0xffffffff
100346e9: lea      ecx, [ebp - 0x194]
100346ef: call     0x100342b0
100346f4: mov      al, byte ptr [ebp - 0x19d]
100346fa: jmp      0x100348f5
100346ff: lea      eax, [ebp - 0x170]
10034705: push     eax
10034706: lea      ecx, [ebp - 0x30]
10034709: call     0x10003240
1003470e: mov      byte ptr [ebp - 4], 1
10034712: mov      dword ptr [ebp - 0x19c], 0
1003471c: mov      ecx, dword ptr [ebp - 0x19c]
10034722: push     ecx
10034723: push     0x5c
10034725: lea      ecx, [ebp - 0x30]
10034728: call     0x100359b0
1003472d: mov      dword ptr [ebp - 0x198], eax
10034733: mov      edx, dword ptr [ebp - 0x198]
10034739: cmp      edx, dword ptr [ebp - 0x19c]
1003473f: jl       0x10034825
10034745: mov      eax, dword ptr [ebp - 0x198]
1003474b: add      eax, 1
1003474e: mov      dword ptr [ebp - 0x19c], eax
10034754: mov      ecx, dword ptr [ebp - 0x19c]
1003475a: push     ecx
1003475b: push     0x5c
1003475d: lea      ecx, [ebp - 0x30]
10034760: call     0x100359b0
10034765: mov      dword ptr [ebp - 0x198], eax
1003476b: mov      edx, dword ptr [ebp - 0x198]
10034771: cmp      edx, dword ptr [ebp - 0x19c]
10034777: jl       0x100347d2
10034779: mov      eax, dword ptr [ebp - 0x198]
1003477f: sub      eax, dword ptr [ebp - 0x19c]
10034785: push     eax
10034786: mov      ecx, dword ptr [ebp - 0x19c]
1003478c: push     ecx
1003478d: lea      edx, [ebp - 0x1bc]
10034793: push     edx
10034794: lea      ecx, [ebp - 0x30]
10034797: call     0x1001d920
1003479c: mov      dword ptr [ebp - 0x1fc], eax
100347a2: mov      eax, dword ptr [ebp - 0x1fc]
100347a8: mov      dword ptr [ebp - 0x200], eax
100347ae: mov      byte ptr [ebp - 4], 2
100347b2: mov      ecx, dword ptr [ebp - 0x200]
100347b8: push     ecx
100347b9: mov      ecx, dword ptr [ebp + 0xc]
100347bc: call     0x10018990
100347c1: mov      byte ptr [ebp - 4], 1
100347c5: lea      ecx, [ebp - 0x1bc]
100347cb: call     0x10003280
100347d0: jmp      0x10034823
100347d2: mov      edx, dword ptr [0x10084268]
100347d8: push     edx
100347d9: mov      eax, dword ptr [ebp - 0x19c]
100347df: push     eax
100347e0: lea      ecx, [ebp - 0x1d8]
100347e6: push     ecx
100347e7: lea      ecx, [ebp - 0x30]
100347ea: call     0x1001d920
100347ef: mov      dword ptr [ebp - 0x204], eax
100347f5: mov      edx, dword ptr [ebp - 0x204]
100347fb: mov      dword ptr [ebp - 0x208], edx
10034801: mov      byte ptr [ebp - 4], 3
10034805: mov      eax, dword ptr [ebp - 0x208]
1003480b: push     eax
1003480c: mov      ecx, dword ptr [ebp + 0xc]
1003480f: call     0x10018990
10034814: mov      byte ptr [ebp - 4], 1
10034818: lea      ecx, [ebp - 0x1d8]
1003481e: call     0x10003280
10034823: jmp      0x10034831
10034825: lea      ecx, [ebp - 0x30]
10034828: push     ecx
10034829: mov      ecx, dword ptr [ebp + 0xc]
1003482c: call     0x10018990
10034831: mov      edx, dword ptr [0x10084268]
10034837: push     edx
10034838: push     0x10070ce0
1003483d: mov      ecx, dword ptr [ebp + 0xc]
10034840: call     0x100359d0
10034845: mov      dword ptr [ebp - 0x198], eax
1003484b: cmp      dword ptr [ebp - 0x198], 0
10034852: jl       0x100348be
10034854: push     8
10034856: push     0x10070ce4 ; 'usbstor\\'
1003485b: lea      ecx, [ebp - 0x30]
1003485e: call     0x10003310
10034863: push     eax
10034864: call     0x100490cd
10034869: add      esp, 0xc
1003486c: test     eax, eax
1003486e: jne      0x100348be
10034870: mov      eax, dword ptr [ebp - 0x198]
10034876: push     eax
10034877: push     0
10034879: lea      ecx, [ebp - 0x1f4]
1003487f: push     ecx
10034880: mov      ecx, dword ptr [ebp + 0xc]
10034883: call     0x1001d920
10034888: mov      dword ptr [ebp - 0x20c], eax
1003488e: mov      edx, dword ptr [ebp - 0x20c]
10034894: mov      dword ptr [ebp - 0x210], edx
1003489a: mov      byte ptr [ebp - 4], 4
1003489e: mov      eax, dword ptr [ebp - 0x210]
100348a4: push     eax
100348a5: mov      ecx, dword ptr [ebp + 0x10]
100348a8: call     0x10018990
100348ad: mov      byte ptr [ebp - 4], 1
100348b1: lea      ecx, [ebp - 0x1f4]
100348b7: call     0x10003280
100348bc: jmp      0x100348ca
100348be: mov      ecx, dword ptr [ebp + 0xc]
100348c1: push     ecx
100348c2: mov      ecx, dword ptr [ebp + 0x10]
100348c5: call     0x10018990
100348ca: mov      byte ptr [ebp - 0x1f5], 1
100348d1: mov      byte ptr [ebp - 4], 0
100348d5: lea      ecx, [ebp - 0x30]
100348d8: call     0x10003280
100348dd: mov      dword ptr [ebp - 4], 0xffffffff
100348e4: lea      ecx, [ebp - 0x194]
100348ea: call     0x100342b0
100348ef: mov      al, byte ptr [ebp - 0x1f5]
100348f5: mov      ecx, dword ptr [ebp - 0xc]
100348f8: mov      dword ptr fs:[0], ecx
100348ff: pop      ecx
10034900: mov      ecx, dword ptr [ebp - 0x14]
10034903: xor      ecx, ebp
10034905: call     0x10048939
1003490a: mov      esp, ebp
1003490c: pop      ebp
1003490d: ret      
1003490e: int3     
1003490f: int3     
10034910: push     ebp
10034911: mov      ebp, esp
10034913: sub      esp, 0x20
10034916: mov      byte ptr [ebp - 5], 1
1003491a: cmp      dword ptr [ebp + 8], 0
1003491e: jne      0x10034927
10034920: xor      al, al
10034922: jmp      0x100349cb
10034927: push     0
10034929: push     0
1003492b: push     3
1003492d: push     0
1003492f: push     3
10034931: push     0xc0000000
10034936: mov      eax, dword ptr [ebp + 8]
10034939: add      eax, 4
1003493c: push     eax
1003493d: call     dword ptr [0x10068330] ; CreateFileA
10034943: mov      dword ptr [ebp - 4], eax
10034946: cmp      dword ptr [ebp - 4], -1
1003494a: je       0x100349bb
1003494c: mov      dword ptr [ebp - 0xc], 0
10034953: mov      dword ptr [ebp - 0x18], 0
1003495a: xor      ecx, ecx
1003495c: mov      dword ptr [ebp - 0x14], ecx
1003495f: mov      dword ptr [ebp - 0x10], ecx
10034962: push     0
10034964: lea      edx, [ebp - 0xc]
10034967: push     edx
10034968: push     0xc
1003496a: lea      eax, [ebp - 0x18]
1003496d: push     eax
1003496e: push     0
10034970: push     0
10034972: push     0x2d1080
10034977: mov      ecx, dword ptr [ebp - 4]
1003497a: push     ecx
1003497b: call     dword ptr [0x10068298] ; DeviceIoControl
10034981: test     eax, eax
10034983: je       0x1003499b
10034985: mov      edx, dword ptr [ebp + 0xc]
10034988: mov      eax, dword ptr [ebp - 0x18]
1003498b: mov      dword ptr [edx], eax
1003498d: mov      ecx, dword ptr [ebp + 0x10]
10034990: mov      edx, dword ptr [ebp - 0x14]
10034993: mov      dword ptr [ecx], edx
10034995: mov      byte ptr [ebp - 5], 1
10034999: jmp      0x100349a8
1003499b: call     dword ptr [0x10068308] ; GetLastError
100349a1: mov      dword ptr [ebp - 0x1c], eax
100349a4: mov      byte ptr [ebp - 5], 0
100349a8: mov      eax, dword ptr [ebp - 4]
100349ab: push     eax
100349ac: call     dword ptr [0x100682f0] ; CloseHandle
100349b2: mov      dword ptr [ebp - 4], 0
100349b9: jmp      0x100349c8
100349bb: call     dword ptr [0x10068308] ; GetLastError
100349c1: mov      dword ptr [ebp - 0x20], eax
100349c4: mov      byte ptr [ebp - 5], 0
100349c8: mov      al, byte ptr [ebp - 5]
100349cb: mov      esp, ebp
100349cd: pop      ebp
100349ce: ret      
100349cf: int3     
100349d0: push     ebp
100349d1: mov      ebp, esp
100349d3: sub      esp, 0x448
100349d9: mov      eax, dword ptr [0x1008d020]
100349de: xor      eax, ebp
100349e0: mov      dword ptr [ebp - 0xc], eax
100349e3: mov      byte ptr [ebp - 5], 1
100349e7: cmp      dword ptr [ebp + 8], 0
100349eb: jne      0x100349f4
100349ed: xor      al, al
100349ef: jmp      0x10034c3a
100349f4: push     0
100349f6: push     0
100349f8: push     3
100349fa: push     0
100349fc: push     3
100349fe: .byte    0x68
100349ff: .byte    0x00