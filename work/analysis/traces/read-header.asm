10015110: push     ebp
10015111: mov      ebp, esp
10015113: mov      eax, 0x1010
10015118: call     0x100513f0
1001511d: mov      eax, dword ptr [0x1008d020]
10015122: xor      eax, ebp
10015124: mov      dword ptr [ebp - 0xc], eax
10015127: jmp      0x10015139
10015129: push     esi
1001512a: dec      ebp
1001512b: push     eax
1001512c: jb       0x1001519d
1001512e: je       0x10015195
10015130: arpl     word ptr [eax + 0x62], si
10015134: imul     ebp, dword ptr gs:[bp], 0xeff085c6
1001513d: .byte    0xff
1001513e: inc      dword ptr [eax]
10015140: push     0xfff
10015145: push     0
10015147: lea      eax, [ebp - 0x100f]
1001514d: push     eax
1001514e: call     0x1004f490
10015153: add      esp, 0xc
10015156: cmp      dword ptr [ebp + 0x10], 0
1001515a: je       0x10015162
1001515c: cmp      dword ptr [ebp + 0xc], 0
10015160: jne      0x1001516c
10015162: mov      eax, 1
10015167: jmp      0x10015258
1001516c: push     0
1001516e: push     0
10015170: mov      ecx, dword ptr [0x10095114]
10015176: add      ecx, 8
10015179: imul     ecx, dword ptr [0x10092754]
10015180: push     ecx
10015181: mov      edx, dword ptr [ebp + 8]
10015184: push     edx
10015185: call     dword ptr [0x10068328] ; SetFilePointer
1001518b: mov      dword ptr [ebp - 8], eax
1001518e: push     0
10015190: lea      eax, [ebp - 4]
10015193: push     eax
10015194: mov      ecx, dword ptr [0x10092754]
1001519a: push     ecx
1001519b: lea      edx, [ebp - 0x1010]
100151a1: push     edx
100151a2: mov      eax, dword ptr [ebp + 8]
100151a5: push     eax
100151a6: call     dword ptr [0x100682a0] ; ReadFile
100151ac: test     eax, eax
100151ae: jne      0x100151bb
100151b0: call     dword ptr [0x10068308] ; GetLastError
100151b6: jmp      0x10015258
100151bb: cmp      dword ptr [ebp - 0x1010], 0x46544b45
100151c5: je       0x100151d1
100151c7: mov      eax, 1
100151cc: jmp      0x10015258
100151d1: push     0
100151d3: push     0xb0
100151d8: lea      ecx, [ebp - 0x100c]
100151de: push     ecx
100151df: mov      edx, dword ptr [ebp + 0xc]
100151e2: push     edx
100151e3: call     0x1001f130
100151e8: add      esp, 0x10
100151eb: call     0x10014480
100151f0: test     eax, eax
100151f2: jne      0x100151fb
100151f4: mov      eax, 1
100151f9: jmp      0x10015258
100151fb: mov      eax, dword ptr [ebp + 0x14]
100151fe: push     eax
100151ff: mov      ecx, dword ptr [ebp + 0x10]
10015202: push     ecx
10015203: push     0xb0
10015208: mov      edx, dword ptr [ebp + 0xc]
1001520b: push     edx
1001520c: call     0x10014850
10015211: add      esp, 0x10
10015214: test     eax, eax
10015216: je       0x1001521f
10015218: mov      eax, 1
1001521d: jmp      0x10015258
1001521f: cmp      dword ptr [0x10095100], 0
10015226: je       0x10015234
10015228: mov      eax, dword ptr [0x10095100]
1001522d: push     eax
1001522e: call     dword ptr [0x10068350] ; FreeLibrary
10015234: mov      ecx, dword ptr [ebp + 0xc]
10015237: cmp      dword ptr [ecx], 0x46544b45
1001523d: je       0x10015246
1001523f: mov      eax, 1
10015244: jmp      0x10015258
10015246: jmp      0x10015256
10015248: push     esi
10015249: dec      ebp
1001524a: push     eax
1001524b: jb       0x100152bc
1001524d: je       0x100152b4
1001524f: arpl     word ptr [eax + 0x65], si
10015253: outsb    dx, byte ptr [esi]
10015254: add      byte ptr fs:[ebx], dh
10015257: ror      byte ptr [ebx - 0x32cc0bb3], 0xe8
1001525e: xlatb    
1001525f: add      eax, dword ptr ss:[eax]
10015262: mov      esp, ebp
10015264: pop      ebp
10015265: ret      0x10
10015268: int3     
10015269: int3     
1001526a: int3     
1001526b: int3     
1001526c: int3     
1001526d: int3     
1001526e: int3     
1001526f: int3     
10015270: push     ebp
10015271: mov      ebp, esp
10015273: mov      eax, 0x1018
10015278: call     0x100513f0
1001527d: mov      eax, dword ptr [0x1008d020]
10015282: xor      eax, ebp
10015284: mov      dword ptr [ebp - 4], eax
10015287: mov      dword ptr [ebp - 0x100c], 1
10015291: mov      dword ptr [ebp - 0x1014], 0
1001529b: mov      dword ptr [ebp - 0x1010], 0
100152a5: mov      byte ptr [ebp - 0x1008], 0
100152ac: push     0xfff
100152b1: push     0
100152b3: lea      eax, [ebp - 0x1007]
100152b9: push     eax
100152ba: call     0x1004f490
100152bf: add      esp, 0xc
100152c2: push     0
100152c4: push     0
100152c6: mov      ecx, dword ptr [0x10095114]
100152cc: add      ecx, 5
100152cf: imul     ecx, dword ptr [0x10092754]
100152d6: push     ecx
100152d7: mov      edx, dword ptr [ebp + 8]
100152da: push     edx
100152db: call     dword ptr [0x10068328] ; SetFilePointer
100152e1: mov      dword ptr [ebp - 0x1018], eax
100152e7: push     0
100152e9: lea      eax, [ebp - 0x1010]
100152ef: push     eax
100152f0: mov      ecx, dword ptr [0x10092754]
100152f6: push     ecx
100152f7: lea      edx, [ebp - 0x1008]
100152fd: push     edx
100152fe: mov      eax, dword ptr [ebp + 8]
10015301: push     eax
10015302: call     dword ptr [0x100682a0] ; ReadFile
10015308: test     eax, eax
1001530a: je       0x1001536b
1001530c: push     0
1001530e: push     0
10015310: mov      ecx, dword ptr [0x10095114]
10015316: add      ecx, 5
10015319: imul     ecx, dword ptr [0x10092754]
10015320: push     ecx
10015321: mov      edx, dword ptr [ebp + 8]
10015324: push     edx
10015325: call     dword ptr [0x10068328] ; SetFilePointer
1001532b: mov      dword ptr [ebp - 0x1018], eax
10015331: push     0
10015333: lea      eax, [ebp - 0x1010]
10015339: push     eax
1001533a: mov      ecx, dword ptr [0x10092754]
10015340: push     ecx
10015341: lea      edx, [ebp - 0x1008]
10015347: push     edx
10015348: mov      eax, dword ptr [ebp + 8]
1001534b: push     eax
1001534c: call     dword ptr [0x10068314] ; WriteFile
10015352: test     eax, eax
10015354: jne      0x1001536b
10015356: call     dword ptr [0x10068308] ; GetLastError
1001535c: cmp      eax, 0x13
1001535f: jne      0x1001536b
10015361: mov      dword ptr [ebp - 0x100c], 0
1001536b: mov      eax, dword ptr [ebp - 0x100c]
10015371: mov      ecx, dword ptr [ebp - 4]
10015374: xor      ecx, ebp
10015376: call     0x10048939
1001537b: mov      esp, ebp
1001537d: pop      ebp
1001537e: ret      4
10015381: int3     
10015382: int3     
10015383: int3     
10015384: int3     
10015385: int3     
10015386: int3     
10015387: int3     
10015388: int3     
10015389: int3     
1001538a: int3     
1001538b: int3     
1001538c: int3     
1001538d: int3     
1001538e: int3     
1001538f: int3     
10015390: push     ebp
10015391: mov      ebp, esp
10015393: push     ecx
10015394: push     esi
10015395: push     edi
10015396: mov      dword ptr [ebp - 4], 0
1001539d: jmp      0x100153a8
1001539f: mov      eax, dword ptr [ebp - 4]
100153a2: add      eax, 1
100153a5: mov      dword ptr [ebp - 4], eax
100153a8: cmp      dword ptr [ebp - 4], 3
100153ac: jge      0x1001550d
100153b2: mov      ecx, dword ptr [ebp - 4]
100153b5: imul     ecx, ecx, 0x60
100153b8: mov      edx, dword ptr [ebp - 4]
100153bb: shl      edx, 6
100153be: mov      eax, dword ptr [ebp + 8]
100153c1: mov      esi, dword ptr [ebp + 0xc]
100153c4: mov      ecx, dword ptr [esi + ecx + 4]
100153c8: mov      dword ptr [eax + edx + 4], ecx
100153cc: mov      edx, dword ptr [ebp - 4]
100153cf: imul     edx, edx, 0x60
100153d2: mov      eax, dword ptr [ebp - 4]
100153d5: shl      eax, 6
100153d8: mov      ecx, dword ptr [ebp + 8]
100153db: mov      esi, dword ptr [ebp + 0xc]
100153de: mov      edx, dword ptr [esi + edx + 0x30]
100153e2: mov      dword ptr [ecx + eax + 0x30], edx
100153e6: mov      eax, dword ptr [ebp - 4]
100153e9: imul     eax, eax, 0x60
100153ec: mov      ecx, dword ptr [ebp - 4]
100153ef: shl      ecx, 6
100153f2: mov      edx, dword ptr [ebp + 8]
100153f5: mov      esi, dword ptr [ebp + 0xc]
100153f8: mov      edi, dword ptr [esi + eax + 0x18]
100153fc: mov      dword ptr [edx + ecx + 0x18], edi
10015400: mov      eax, dword ptr [esi + eax + 0x1c]
10015404: mov      dword ptr [edx + ecx + 0x1c], eax
10015408: mov      ecx, dword ptr [ebp - 4]
1001540b: imul     ecx, ecx, 0x60
1001540e: mov      edx, dword ptr [ebp - 4]
10015411: shl      edx, 6
10015414: mov      eax, dword ptr [ebp + 8]
10015417: mov      esi, dword ptr [ebp + 0xc]
1001541a: mov      edi, dword ptr [esi + ecx + 0x20]
1001541e: mov      dword ptr [eax + edx + 0x20], edi
10015422: mov      ecx, dword ptr [esi + ecx + 0x24]
10015426: mov      dword ptr [eax + edx + 0x24], ecx
1001542a: mov      edx, dword ptr [ebp - 4]
1001542d: imul     edx, edx, 0x60
10015430: mov      eax, dword ptr [ebp - 4]
10015433: shl      eax, 6
10015436: mov      ecx, dword ptr [ebp + 8]
10015439: mov      esi, dword ptr [ebp + 0xc]
1001543c: mov      edx, dword ptr [esi + edx + 0xc]
10015440: mov      dword ptr [ecx + eax + 0xc], edx
10015444: mov      eax, dword ptr [ebp - 4]
10015447: imul     eax, eax, 0x60
1001544a: mov      ecx, dword ptr [ebp - 4]
1001544d: shl      ecx, 6
10015450: mov      edx, dword ptr [ebp + 8]
10015453: mov      esi, dword ptr [ebp + 0xc]
10015456: mov      edi, dword ptr [esi + eax + 0x28]
1001545a: mov      dword ptr [edx + ecx + 0x28], edi
1001545e: mov      eax, dword ptr [esi + eax + 0x2c]
10015462: mov      dword ptr [edx + ecx + 0x2c], eax
10015466: mov      ecx, dword ptr [ebp - 4]
10015469: imul     ecx, ecx, 0x60
1001546c: mov      edx, dword ptr [ebp - 4]
1001546f: shl      edx, 6
10015472: mov      eax, dword ptr [ebp + 8]
10015475: mov      esi, dword ptr [ebp + 0xc]
10015478: mov      ecx, dword ptr [esi + ecx + 8]
1001547c: mov      dword ptr [eax + edx + 8], ecx
10015480: mov      edx, dword ptr [ebp - 4]
10015483: imul     edx, edx, 0x60
10015486: mov      eax, dword ptr [ebp - 4]
10015489: shl      eax, 6
1001548c: mov      ecx, dword ptr [ebp + 8]
1001548f: mov      esi, dword ptr [ebp + 0xc]
10015492: mov      edx, dword ptr [esi + edx + 0x14]
10015496: mov      dword ptr [ecx + eax + 0x14], edx
1001549a: mov      eax, dword ptr [ebp - 4]
1001549d: imul     eax, eax, 0x60
100154a0: mov      ecx, dword ptr [ebp - 4]
100154a3: shl      ecx, 6
100154a6: mov      edx, dword ptr [ebp + 8]
100154a9: mov      esi, dword ptr [ebp + 0xc]
100154ac: mov      eax, dword ptr [esi + eax + 0x10]
100154b0: mov      dword ptr [edx + ecx + 0x10], eax
100154b4: mov      ecx, dword ptr [ebp - 4]
100154b7: imul     ecx, ecx, 0x60
100154ba: mov      edx, dword ptr [ebp - 4]
100154bd: shl      edx, 6
100154c0: mov      eax, dword ptr [ebp + 8]
100154c3: mov      esi, dword ptr [ebp + 0xc]
100154c6: mov      ecx, dword ptr [esi + ecx]
100154c9: mov      dword ptr [eax + edx], ecx
100154cc: mov      edx, dword ptr [ebp - 4]
100154cf: imul     edx, edx, 0x60
100154d2: mov      eax, dword ptr [ebp - 4]
100154d5: shl      eax, 6
100154d8: mov      ecx, dword ptr [ebp + 8]
100154db: mov      esi, dword ptr [ebp + 0xc]
100154de: mov      edx, dword ptr [esi + edx + 0x34]
100154e2: mov      dword ptr [ecx + eax + 0x34], edx
100154e6: mov      eax, dword ptr [ebp - 4]
100154e9: imul     eax, eax, 0x60
100154ec: mov      ecx, dword ptr [ebp - 4]
100154ef: shl      ecx, 6
100154f2: mov      edx, dword ptr [ebp + 8]
100154f5: mov      esi, dword ptr [ebp + 0xc]
100154f8: mov      edi, dword ptr [esi + eax + 0x38]
100154fc: mov      dword ptr [edx + ecx + 0x38], edi
10015500: mov      eax, dword ptr [esi + eax + 0x3c]
10015504: mov      dword ptr [edx + ecx + 0x3c], eax
10015508: jmp      0x1001539f
1001550d: pop      edi
1001550e: pop      esi
1001550f: mov      esp, ebp
10015511: pop      ebp
10015512: ret      
10015513: int3     
10015514: int3     
10015515: int3     
10015516: int3     
10015517: int3     
10015518: int3     
10015519: int3     
1001551a: int3     
1001551b: int3     
1001551c: int3     
1001551d: int3     
1001551e: int3     
1001551f: int3     