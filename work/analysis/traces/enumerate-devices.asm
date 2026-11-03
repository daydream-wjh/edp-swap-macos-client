10034e60: push     ebp
10034e61: mov      ebp, esp
10034e63: push     -1
10034e65: push     0x100654a2
10034e6a: mov      eax, dword ptr fs:[0]
10034e70: push     eax
10034e71: sub      esp, 0x8b0
10034e77: mov      eax, dword ptr [0x1008d020]
10034e7c: xor      eax, ebp
10034e7e: mov      dword ptr [ebp - 0x10], eax
10034e81: push     eax
10034e82: lea      eax, [ebp - 0xc]
10034e85: mov      dword ptr fs:[0], eax
10034e8b: mov      ecx, dword ptr [ebp + 8]
10034e8e: call     0x10035a90
10034e93: push     0x12
10034e95: push     0
10034e97: push     0
10034e99: push     0x1006c878
10034e9e: call     dword ptr [0x1006836c] ; SetupDiGetClassDevsA
10034ea4: mov      dword ptr [ebp - 0x438], eax
10034eaa: cmp      dword ptr [ebp - 0x438], -1
10034eb1: je       0x10034ebc
10034eb3: cmp      dword ptr [ebp - 0x438], 0
10034eba: jne      0x10034ec1
10034ebc: jmp      0x100353ae
10034ec1: xor      eax, eax
10034ec3: mov      dword ptr [ebp - 0x2c], eax
10034ec6: mov      dword ptr [ebp - 0x28], eax
10034ec9: mov      dword ptr [ebp - 0x24], eax
10034ecc: mov      dword ptr [ebp - 0x20], eax
10034ecf: mov      dword ptr [ebp - 0x1c], eax
10034ed2: mov      dword ptr [ebp - 0x18], eax
10034ed5: mov      dword ptr [ebp - 0x14], eax
10034ed8: mov      dword ptr [ebp - 0x2c], 0x1c
10034edf: mov      dword ptr [ebp - 0x43c], 0
10034ee9: lea      ecx, [ebp - 0x434]
10034eef: mov      dword ptr [ebp - 0x30], ecx
10034ef2: mov      dword ptr [ebp - 0x458], 0x1c
10034efc: lea      edx, [ebp - 0x458]
10034f02: push     edx
10034f03: mov      eax, dword ptr [ebp - 0x43c]
10034f09: push     eax
10034f0a: push     0x1006c878
10034f0f: push     0
10034f11: mov      ecx, dword ptr [ebp - 0x438]
10034f17: push     ecx
10034f18: call     dword ptr [0x10068374] ; SetupDiEnumDeviceInterfaces
10034f1e: test     eax, eax
10034f20: je       0x100353a1
10034f26: lea      ecx, [ebp - 0x5bc]
10034f2c: call     0x100340e0
10034f31: mov      dword ptr [ebp - 4], 0
10034f38: mov      dword ptr [ebp - 0x5c0], 0
10034f42: push     0
10034f44: lea      edx, [ebp - 0x5c0]
10034f4a: push     edx
10034f4b: push     0
10034f4d: push     0
10034f4f: lea      eax, [ebp - 0x458]
10034f55: push     eax
10034f56: mov      ecx, dword ptr [ebp - 0x438]
10034f5c: push     ecx
10034f5d: call     dword ptr [0x10068370] ; SetupDiGetDeviceInterfaceDetailA
10034f63: cmp      dword ptr [ebp - 0x5c0], 0
10034f6a: je       0x1003537b
10034f70: cmp      dword ptr [ebp - 0x5c0], 0x400
10034f7a: ja       0x1003537b
10034f80: mov      edx, dword ptr [ebp - 0x30]
10034f83: mov      dword ptr [edx], 5
10034f89: xor      eax, eax
10034f8b: mov      dword ptr [ebp - 0x2c], eax
10034f8e: mov      dword ptr [ebp - 0x28], eax
10034f91: mov      dword ptr [ebp - 0x24], eax
10034f94: mov      dword ptr [ebp - 0x20], eax
10034f97: mov      dword ptr [ebp - 0x1c], eax
10034f9a: mov      dword ptr [ebp - 0x18], eax
10034f9d: mov      dword ptr [ebp - 0x14], eax
10034fa0: mov      dword ptr [ebp - 0x2c], 0x1c
10034fa7: lea      ecx, [ebp - 0x2c]
10034faa: push     ecx
10034fab: lea      edx, [ebp - 0x5c0]
10034fb1: push     edx
10034fb2: mov      eax, dword ptr [ebp - 0x5c0]
10034fb8: push     eax
10034fb9: mov      ecx, dword ptr [ebp - 0x30]
10034fbc: push     ecx
10034fbd: lea      edx, [ebp - 0x458]
10034fc3: push     edx
10034fc4: mov      eax, dword ptr [ebp - 0x438]
10034fca: push     eax
10034fcb: call     dword ptr [0x10068370] ; SetupDiGetDeviceInterfaceDetailA
10034fd1: mov      dword ptr [ebp - 0x5c4], eax
10034fd7: cmp      dword ptr [ebp - 0x5c4], 0
10034fde: je       0x1003537b
10034fe4: mov      ecx, dword ptr [ebp - 0x30]
10034fe7: push     ecx
10034fe8: call     0x100353d0
10034fed: add      esp, 4
10034ff0: movzx    edx, al
10034ff3: test     edx, edx
10034ff5: je       0x1003537b
10034ffb: mov      dword ptr [ebp - 0x730], 0xffffffff
10035005: mov      dword ptr [ebp - 0x6f4], 0xffffffff
1003500f: lea      eax, [ebp - 0x6f4]
10035015: push     eax
10035016: lea      ecx, [ebp - 0x730]
1003501c: push     ecx
1003501d: mov      edx, dword ptr [ebp - 0x30]
10035020: push     edx
10035021: call     0x10034910
10035026: add      esp, 0xc
10035029: movzx    eax, al
1003502c: test     eax, eax
1003502e: je       0x10035048
10035030: mov      ecx, dword ptr [ebp - 0x730]
10035036: mov      dword ptr [ebp - 0x51c], ecx
1003503c: mov      edx, dword ptr [ebp - 0x6f4]
10035042: mov      dword ptr [ebp - 0x518], edx
10035048: mov      eax, dword ptr [ebp - 0x730]
1003504e: xor      ecx, ecx
10035050: mov      dword ptr [ebp - 0x6fc], eax
10035056: mov      dword ptr [ebp - 0x6f8], ecx
1003505c: mov      eax, dword ptr [ebp - 0x6fc]
10035062: mov      edx, dword ptr [ebp - 0x6f8]
10035068: mov      cl, 0x20
1003506a: call     0x10051790
1003506f: mov      dword ptr [ebp - 0x6fc], eax
10035075: mov      dword ptr [ebp - 0x6f8], edx
1003507b: mov      edx, dword ptr [ebp - 0x6f4]
10035081: xor      eax, eax
10035083: or       edx, dword ptr [ebp - 0x6fc]
10035089: or       eax, dword ptr [ebp - 0x6f8]
1003508f: mov      dword ptr [ebp - 0x6fc], edx
10035095: mov      dword ptr [ebp - 0x6f8], eax
1003509b: mov      dword ptr [ebp - 0x704], 0
100350a5: mov      dword ptr [ebp - 0x700], 0
100350af: lea      ecx, [ebp - 0x704]
100350b5: push     ecx
100350b6: mov      edx, dword ptr [ebp - 0x30]
100350b9: push     edx
100350ba: call     0x10034c50
100350bf: add      esp, 8
100350c2: movzx    eax, al
100350c5: test     eax, eax
100350c7: je       0x100350e1
100350c9: mov      ecx, dword ptr [ebp - 0x704]
100350cf: mov      dword ptr [ebp - 0x524], ecx
100350d5: mov      edx, dword ptr [ebp - 0x700]
100350db: mov      dword ptr [ebp - 0x520], edx
100350e1: lea      ecx, [ebp - 0x6e8]
100350e7: call     0x1000e050
100350ec: mov      byte ptr [ebp - 4], 1
100350f0: lea      ecx, [ebp - 0x728]
100350f6: call     0x1000e050
100350fb: mov      byte ptr [ebp - 4], 2
100350ff: lea      eax, [ebp - 0x728]
10035105: push     eax
10035106: lea      ecx, [ebp - 0x6e8]
1003510c: push     ecx
1003510d: mov      edx, dword ptr [ebp - 0x30]
10035110: push     edx
10035111: call     0x100349d0
10035116: add      esp, 0xc
10035119: mov      byte ptr [ebp - 0x6ed], al
1003511f: movzx    eax, byte ptr [ebp - 0x6ed]
10035126: test     eax, eax
10035128: je       0x1003514e
1003512a: lea      ecx, [ebp - 0x6e8]
10035130: push     ecx
10035131: lea      ecx, [ebp - 0x57c]
10035137: call     0x10018990
1003513c: lea      edx, [ebp - 0x728]
10035142: push     edx
10035143: lea      ecx, [ebp - 0x560]
10035149: call     0x10018990
1003514e: mov      eax, dword ptr [ebp - 0x18]
10035151: mov      dword ptr [ebp - 0x70c], eax
10035157: push     0
10035159: push     0x104
1003515e: lea      ecx, [ebp - 0x6cc]
10035164: push     ecx
10035165: mov      edx, dword ptr [ebp - 0x70c]
1003516b: push     edx
1003516c: call     dword ptr [0x1006837c] ; CM_Get_Device_IDA
10035172: mov      dword ptr [ebp - 0x6ec], eax
10035178: cmp      dword ptr [ebp - 0x6ec], 0
1003517f: jne      0x10035193
10035181: lea      eax, [ebp - 0x6cc]
10035187: push     eax
10035188: lea      ecx, [ebp - 0x598]
1003518e: call     0x100032a0
10035193: push     0
10035195: mov      ecx, dword ptr [ebp - 0x70c]
1003519b: push     ecx
1003519c: lea      edx, [ebp - 0x708]
100351a2: push     edx
100351a3: call     dword ptr [0x10068378] ; CM_Get_Parent
100351a9: mov      dword ptr [ebp - 0x72c], eax
100351af: cmp      dword ptr [ebp - 0x72c], 0
100351b6: jne      0x10035340
100351bc: mov      byte ptr [ebp - 0x83c], 0
100351c3: push     0x103
100351c8: push     0
100351ca: lea      eax, [ebp - 0x83b]
100351d0: push     eax
100351d1: call     0x1004f490
100351d6: add      esp, 0xc
100351d9: push     0
100351db: push     0x104
100351e0: lea      ecx, [ebp - 0x83c]
100351e6: push     ecx
100351e7: mov      edx, dword ptr [ebp - 0x708]
100351ed: push     edx
100351ee: call     dword ptr [0x1006837c] ; CM_Get_Device_IDA
100351f4: mov      dword ptr [ebp - 0x840], eax
100351fa: cmp      dword ptr [ebp - 0x840], 0
10035201: jne      0x10035340
10035207: lea      eax, [ebp - 0x83c]
1003520d: push     eax
1003520e: lea      ecx, [ebp - 0x5b4]
10035214: call     0x100032a0
10035219: push     0x1004b99b
1003521e: lea      ecx, [ebp - 0x880]
10035224: push     ecx
10035225: lea      ecx, [ebp - 0x5b4]
1003522b: call     0x10017030
10035230: mov      edx, dword ptr [eax + 4]
10035233: push     edx
10035234: mov      eax, dword ptr [eax]
10035236: push     eax
10035237: lea      ecx, [ebp - 0x888]
1003523d: push     ecx
1003523e: lea      ecx, [ebp - 0x5b4]
10035244: call     0x10017060
10035249: mov      edx, dword ptr [eax + 4]
1003524c: push     edx
1003524d: mov      eax, dword ptr [eax]
1003524f: push     eax
10035250: lea      ecx, [ebp - 0x890]
10035256: push     ecx
10035257: lea      ecx, [ebp - 0x5b4]
1003525d: call     0x10017030
10035262: mov      edx, dword ptr [eax + 4]
10035265: push     edx
10035266: mov      eax, dword ptr [eax]
10035268: push     eax
10035269: lea      ecx, [ebp - 0x898]
1003526f: push     ecx
10035270: call     0x10017200
10035275: add      esp, 0x20
10035278: mov      edx, dword ptr [0x10084268]
1003527e: push     edx
1003527f: push     0x16
10035281: lea      eax, [ebp - 0x8b4]
10035287: push     eax
10035288: lea      ecx, [ebp - 0x5b4]
1003528e: call     0x1001d920
10035293: mov      dword ptr [ebp - 0x8b8], eax
10035299: mov      ecx, dword ptr [ebp - 0x8b8]
1003529f: mov      dword ptr [ebp - 0x8bc], ecx
100352a5: mov      byte ptr [ebp - 4], 3
100352a9: mov      edx, dword ptr [ebp - 0x8bc]
100352af: push     edx
100352b0: lea      ecx, [ebp - 0x544]
100352b6: call     0x10018990
100352bb: mov      byte ptr [ebp - 4], 2
100352bf: lea      ecx, [ebp - 0x8b4]
100352c5: call     0x10003280
100352ca: push     4
100352cc: push     8
100352ce: lea      eax, [ebp - 0x878]
100352d4: push     eax
100352d5: lea      ecx, [ebp - 0x5b4]
100352db: call     0x1001d920
100352e0: mov      byte ptr [ebp - 4], 4
100352e4: lea      ecx, [ebp - 0x878]
100352ea: push     ecx
100352eb: lea      ecx, [ebp - 0x50c]
100352f1: call     0x10018990
100352f6: push     4
100352f8: push     0x11
100352fa: lea      edx, [ebp - 0x85c]
10035300: push     edx
10035301: lea      ecx, [ebp - 0x5b4]
10035307: call     0x1001d920
1003530c: mov      byte ptr [ebp - 4], 5
10035310: lea      eax, [ebp - 0x85c]
10035316: push     eax
10035317: lea      ecx, [ebp - 0x4f0]
1003531d: call     0x10018990
10035322: mov      byte ptr [ebp - 4], 4
10035326: lea      ecx, [ebp - 0x85c]
1003532c: call     0x10003280
10035331: mov      byte ptr [ebp - 4], 2
10035335: lea      ecx, [ebp - 0x878]
1003533b: call     0x10003280
10035340: lea      ecx, [ebp - 0x5bc]
10035346: push     ecx
10035347: lea      edx, [ebp - 0x6f4]
1003534d: push     edx
1003534e: mov      ecx, dword ptr [ebp + 8]
10035351: call     0x10035bb0
10035356: mov      ecx, eax
10035358: call     0x10034300
1003535d: mov      byte ptr [ebp - 4], 1
10035361: lea      ecx, [ebp - 0x728]
10035367: call     0x10003280
1003536c: mov      byte ptr [ebp - 4], 0
10035370: lea      ecx, [ebp - 0x6e8]
10035376: call     0x10003280
1003537b: mov      eax, dword ptr [ebp - 0x43c]
10035381: add      eax, 1
10035384: mov      dword ptr [ebp - 0x43c], eax
1003538a: mov      dword ptr [ebp - 4], 0xffffffff
10035391: lea      ecx, [ebp - 0x5bc]
10035397: call     0x100342b0
1003539c: jmp      0x10034efc
100353a1: mov      ecx, dword ptr [ebp - 0x438]
100353a7: push     ecx
100353a8: call     dword ptr [0x10068380] ; SetupDiDestroyDeviceInfoList
100353ae: mov      ecx, dword ptr [ebp - 0xc]
100353b1: mov      dword ptr fs:[0], ecx
100353b8: pop      ecx
100353b9: mov      ecx, dword ptr [ebp - 0x10]
100353bc: xor      ecx, ebp
100353be: call     0x10048939
100353c3: mov      esp, ebp
100353c5: pop      ebp
100353c6: ret      
100353c7: int3     
100353c8: int3     
100353c9: int3     
100353ca: int3     
100353cb: int3     
100353cc: int3     
100353cd: int3     
100353ce: int3     
100353cf: int3     
100353d0: push     ebp
100353d1: mov      ebp, esp
100353d3: sub      esp, 0x224
100353d9: mov      eax, dword ptr [0x1008d020]
100353de: xor      eax, ebp
100353e0: mov      dword ptr [ebp - 0x10], eax
100353e3: mov      byte ptr [ebp - 5], 1
100353e7: cmp      dword ptr [ebp + 8], 0
100353eb: jne      0x100353f4
100353ed: xor      al, al
100353ef: jmp      0x1003551d
100353f4: push     0
100353f6: push     0
100353f8: push     3
100353fa: push     0
100353fc: push     3
100353fe: push     0xc0000000
10035403: mov      eax, dword ptr [ebp + 8]
10035406: add      eax, 4
10035409: push     eax
1003540a: call     dword ptr [0x10068330] ; CreateFileA
10035410: mov      dword ptr [ebp - 4], eax
10035413: cmp      dword ptr [ebp - 4], -1
10035417: jne      0x1003542b
10035419: call     dword ptr [0x10068308] ; GetLastError
1003541f: mov      dword ptr [ebp - 0xc], eax
10035422: mov      byte ptr [ebp - 5], 0
10035426: jmp      0x1003551a
1003542b: mov      dword ptr [ebp - 0x1c], 0
10035432: mov      dword ptr [ebp - 0x18], 0
10035439: mov      dword ptr [ebp - 0x220], 0
10035443: push     0x228
10035448: call     0x1004b14c
1003544d: add      esp, 4
10035450: mov      dword ptr [ebp - 0x21c], eax
10035456: mov      ecx, dword ptr [ebp - 0x21c]
1003545c: mov      dword ptr [ecx + 4], 0x227
10035463: push     0
10035465: lea      edx, [ebp - 0x220]
1003546b: push     edx
1003546c: mov      eax, dword ptr [ebp - 0x21c]
10035472: mov      ecx, dword ptr [eax + 4]
10035475: push     ecx
10035476: mov      edx, dword ptr [ebp - 0x21c]
1003547c: push     edx
1003547d: push     0xc
1003547f: lea      eax, [ebp - 0x1c]
10035482: push     eax
10035483: push     0x2d1400
10035488: mov      ecx, dword ptr [ebp - 4]
1003548b: push     ecx
1003548c: call     dword ptr [0x10068298] ; DeviceIoControl
10035492: test     eax, eax
10035494: je       0x100354ae
10035496: mov      edx, dword ptr [ebp - 0x21c]
1003549c: cmp      dword ptr [edx + 0x1c], 7
100354a0: jne      0x100354a8
100354a2: mov      byte ptr [ebp - 5], 1
100354a6: jmp      0x100354ac
100354a8: mov      byte ptr [ebp - 5], 0
100354ac: jmp      0x100354f0
100354ae: push     0
100354b0: lea      eax, [ebp - 0x220]
100354b6: push     eax
100354b7: push     0x1f3
100354bc: lea      ecx, [ebp - 0x218]
100354c2: push     ecx
100354c3: push     0
100354c5: push     0
100354c7: push     0x82006008
100354cc: mov      edx, dword ptr [ebp - 4]
100354cf: push     edx
100354d0: call     dword ptr [0x10068298] ; DeviceIoControl
100354d6: test     eax, eax
100354d8: je       0x100354e0
100354da: mov      byte ptr [ebp - 5], 1
100354de: jmp      0x100354f0
100354e0: call     dword ptr [0x10068308] ; GetLastError
100354e6: mov      dword ptr [ebp - 0x224], eax
100354ec: mov      byte ptr [ebp - 5], 0
100354f0: mov      eax, dword ptr [ebp - 0x21c]
100354f6: push     eax
100354f7: call     0x100495c6
100354fc: add      esp, 4
100354ff: mov      dword ptr [ebp - 0x21c], 0
10035509: mov      ecx, dword ptr [ebp - 4]
1003550c: push     ecx
1003550d: call     dword ptr [0x100682f0] ; CloseHandle
10035513: mov      dword ptr [ebp - 4], 0
1003551a: mov      al, byte ptr [ebp - 5]
1003551d: mov      ecx, dword ptr [ebp - 0x10]
10035520: xor      ecx, ebp
10035522: call     0x10048939
10035527: mov      esp, ebp
10035529: pop      ebp
1003552a: ret      
1003552b: int3     
1003552c: int3     
1003552d: int3     
1003552e: int3     
1003552f: int3     