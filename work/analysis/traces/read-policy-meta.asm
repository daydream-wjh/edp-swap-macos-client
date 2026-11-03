10016260: push     ebp
10016261: mov      ebp, esp
10016263: push     -1
10016265: push     0x10065d88
1001626a: mov      eax, dword ptr fs:[0]
10016270: push     eax
10016271: sub      esp, 0xbc
10016277: push     esi
10016278: push     edi
10016279: mov      eax, dword ptr [0x1008d020]
1001627e: xor      eax, ebp
10016280: push     eax
10016281: lea      eax, [ebp - 0xc]
10016284: mov      dword ptr fs:[0], eax
1001628a: mov      dword ptr [ebp - 0x1c], 0
10016291: lea      ecx, [ebp - 0x24]
10016294: call     0x10003030
10016299: mov      dword ptr [ebp - 4], 0
100162a0: mov      dword ptr [ebp - 0x14], 0x42474c4c
100162a7: mov      eax, dword ptr [ebp + 0x14]
100162aa: imul     eax, dword ptr [ebp + 0x18]
100162ae: mov      dword ptr [ebp - 0x20], eax
100162b1: mov      ecx, dword ptr [ebp - 0x20]
100162b4: push     ecx
100162b5: call     0x1003aed4
100162ba: add      esp, 4
100162bd: mov      dword ptr [ebp - 0x2c], eax
100162c0: mov      edx, dword ptr [ebp - 0x2c]
100162c3: mov      dword ptr [ebp - 0x1c], edx
100162c6: cmp      dword ptr [ebp - 0x1c], 0
100162ca: jne      0x100162ea
100162cc: mov      dword ptr [ebp - 0x30], 1
100162d3: mov      dword ptr [ebp - 4], 0xffffffff
100162da: lea      ecx, [ebp - 0x24]
100162dd: call     0x100030d0
100162e2: mov      eax, dword ptr [ebp - 0x30]
100162e5: jmp      0x100167a1
100162ea: push     0
100162ec: mov      eax, dword ptr [ebp - 0x20]
100162ef: push     eax
100162f0: push     0
100162f2: mov      ecx, dword ptr [ebp - 0x1c]
100162f5: push     ecx
100162f6: call     0x1001f170
100162fb: add      esp, 0x10
100162fe: cmp      dword ptr [ebp + 0x10], 0
10016302: jne      0x1001630b
10016304: mov      dword ptr [ebp + 0x10], 8
1001630b: mov      edx, dword ptr [ebp - 0x1c]
1001630e: push     edx
1001630f: sub      esp, 0x114
10016315: mov      ecx, 0x45
1001631a: lea      esi, [ebp + 0xc]
1001631d: mov      edi, esp
1001631f: rep movsd dword ptr es:[edi], dword ptr [esi]
10016321: mov      eax, dword ptr [ebp + 8]
10016324: push     eax
10016325: call     0x10015f40
1001632a: mov      dword ptr [ebp - 0x28], eax
1001632d: cmp      dword ptr [ebp - 0x28], 1
10016331: jle      0x10016758
10016337: mov      ecx, dword ptr [ebp + 0x120]
1001633d: mov      edx, dword ptr [ebp - 0x1c]
10016340: mov      eax, dword ptr [edx + 4]
10016343: mov      dword ptr [ecx + 4], eax
10016346: mov      ecx, dword ptr [ebp + 0x120]
1001634c: mov      edx, dword ptr [ebp - 0x1c]
1001634f: mov      eax, dword ptr [edx]
10016351: mov      dword ptr [ecx], eax
10016353: push     0
10016355: push     4
10016357: mov      ecx, dword ptr [ebp - 0x1c]
1001635a: add      ecx, 8
1001635d: push     ecx
1001635e: mov      edx, dword ptr [ebp + 0x120]
10016364: add      edx, 8
10016367: push     edx
10016368: call     0x1001f130
1001636d: add      esp, 0x10
10016370: mov      eax, dword ptr [ebp + 0x120]
10016376: mov      ecx, dword ptr [ebp - 0x1c]
10016379: mov      edx, dword ptr [ecx + 0xc]
1001637c: mov      dword ptr [eax + 0xc], edx
1001637f: mov      eax, dword ptr [ebp + 0x120]
10016385: mov      ecx, dword ptr [ebp - 0x1c]
10016388: mov      edx, dword ptr [ecx + 0x10]
1001638b: mov      dword ptr [eax + 0x10], edx
1001638e: mov      eax, dword ptr [ebp + 0x120]
10016394: mov      ecx, dword ptr [ebp - 0x1c]
10016397: mov      edx, dword ptr [ecx + 0x14]
1001639a: mov      dword ptr [eax + 0x14], edx
1001639d: push     0
1001639f: push     0x20
100163a1: mov      eax, dword ptr [ebp - 0x1c]
100163a4: add      eax, 0x1e
100163a7: push     eax
100163a8: mov      ecx, dword ptr [ebp + 0x120]
100163ae: add      ecx, 0x1e
100163b1: push     ecx
100163b2: call     0x1001f130
100163b7: add      esp, 0x10
100163ba: push     0
100163bc: push     0x40
100163be: mov      edx, dword ptr [ebp - 0x1c]
100163c1: add      edx, 0x40
100163c4: push     edx
100163c5: mov      eax, dword ptr [ebp + 0x120]
100163cb: add      eax, 0x40
100163ce: push     eax
100163cf: call     0x1001f130
100163d4: add      esp, 0x10
100163d7: mov      ecx, dword ptr [ebp + 0x120]
100163dd: mov      edx, dword ptr [ebp - 0x1c]
100163e0: mov      ax, word ptr [edx + 0x3e]
100163e4: mov      word ptr [ecx + 0x3e], ax
100163e8: push     0
100163ea: push     6
100163ec: mov      ecx, dword ptr [ebp - 0x1c]
100163ef: add      ecx, 0x18
100163f2: push     ecx
100163f3: mov      edx, dword ptr [ebp + 0x120]
100163f9: add      edx, 0x18
100163fc: push     edx
100163fd: call     0x1001f130
10016402: add      esp, 0x10
10016405: mov      eax, dword ptr [ebp + 0x120]
1001640b: movzx    ecx, word ptr [eax + 0x3e]
1001640f: add      ecx, dword ptr [ebp - 0x1c]
10016412: push     ecx
10016413: lea      ecx, [ebp - 0x24]
10016416: call     0x100030f0
1001641b: mov      edx, dword ptr [ebp + 0x120]
10016421: add      edx, 0x80
10016427: push     edx
10016428: push     0x1007c688 ; 'GLab='
1001642d: push     ecx
1001642e: mov      ecx, esp
10016430: mov      dword ptr [ebp - 0x34], esp
10016433: lea      eax, [ebp - 0x24]
10016436: push     eax
10016437: call     0x1000df60
1001643c: mov      dword ptr [ebp - 0x88], eax
10016442: call     0x10015dd0
10016447: add      esp, 0xc
1001644a: mov      ecx, dword ptr [ebp + 0x120]
10016450: add      ecx, 0xc0
10016456: push     ecx
10016457: push     0x1007c690 ; 'Indus='
1001645c: push     ecx
1001645d: mov      ecx, esp
1001645f: mov      dword ptr [ebp - 0x38], esp
10016462: lea      edx, [ebp - 0x24]
10016465: push     edx
10016466: call     0x1000df60
1001646b: mov      dword ptr [ebp - 0x8c], eax
10016471: call     0x10015dd0
10016476: add      esp, 0xc
10016479: mov      eax, dword ptr [ebp + 0x120]
1001647f: add      eax, 0x1c0
10016484: push     eax
10016485: push     0x1007c698 ; 'Orgcd='
1001648a: push     ecx
1001648b: mov      ecx, esp
1001648d: mov      dword ptr [ebp - 0x3c], esp
10016490: lea      edx, [ebp - 0x24]
10016493: push     edx
10016494: call     0x1000df60
10016499: mov      dword ptr [ebp - 0x90], eax
1001649f: call     0x10015dd0
100164a4: add      esp, 0xc
100164a7: mov      eax, dword ptr [ebp + 0x120]
100164ad: add      eax, 0x2c0
100164b2: push     eax
100164b3: push     0x1007c6a0 ; 'Org='
100164b8: push     ecx
100164b9: mov      ecx, esp
100164bb: mov      dword ptr [ebp - 0x40], esp
100164be: lea      edx, [ebp - 0x24]
100164c1: push     edx
100164c2: call     0x1000df60
100164c7: mov      dword ptr [ebp - 0x94], eax
100164cd: call     0x10015dd0
100164d2: add      esp, 0xc
100164d5: mov      eax, dword ptr [ebp + 0x120]
100164db: add      eax, 0x3c0
100164e0: push     eax
100164e1: push     0x1007c6a8 ; 'Unit='
100164e6: push     ecx
100164e7: mov      ecx, esp
100164e9: mov      dword ptr [ebp - 0x44], esp
100164ec: lea      edx, [ebp - 0x24]
100164ef: push     edx
100164f0: call     0x1000df60
100164f5: mov      dword ptr [ebp - 0x98], eax
100164fb: call     0x10015dd0
10016500: add      esp, 0xc
10016503: mov      eax, dword ptr [ebp + 0x120]
10016509: add      eax, 0x4c0
1001650e: push     eax
1001650f: push     0x1007c6b0 ; 'Dept='
10016514: push     ecx
10016515: mov      ecx, esp
10016517: mov      dword ptr [ebp - 0x48], esp
1001651a: lea      edx, [ebp - 0x24]
1001651d: push     edx
1001651e: .byte    0xe8
1001651f: .byte    0x3d