10026280: push     ebp
10026281: mov      ebp, esp
10026283: sub      esp, 8
10026286: mov      dword ptr [ebp - 8], ecx
10026289: push     0x10076f84
1002628e: push     4
10026290: push     0x29f
10026295: push     0x10076fa4 ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
1002629a: push     0x10076fd0 ; 'CEdpDiskControl::UpdateLabelInfo'
1002629f: call     0x10024100
100262a4: add      esp, 0x14
100262a7: mov      eax, dword ptr [ebp - 8]
100262aa: add      eax, 0x1a4c
100262af: push     eax
100262b0: mov      ecx, dword ptr [ebp - 8]
100262b3: add      ecx, 0x2b8
100262b9: push     ecx
100262ba: mov      edx, dword ptr [ebp - 8]
100262bd: add      edx, 0x208
100262c3: push     edx
100262c4: mov      eax, dword ptr [ebp + 8]
100262c7: push     eax
100262c8: call     0x10015110
100262cd: mov      dword ptr [ebp - 4], eax
100262d0: push     0x10076ff4
100262d5: push     4
100262d7: push     0x2a1
100262dc: push     0x10077028 ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
100262e1: push     0x10077054 ; 'CEdpDiskControl::UpdateLabelInfo'
100262e6: call     0x10024100
100262eb: add      esp, 0x14
100262ee: cmp      dword ptr [ebp - 4], 0
100262f2: je       0x100264a6
100262f8: mov      ecx, dword ptr [ebp - 8]
100262fb: mov      byte ptr [ecx + 0x1b52], 0
10026302: push     0x10077078
10026307: push     4
10026309: push     0x2a6
1002630e: push     0x100770b0 ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
10026313: push     0x100770dc ; 'CEdpDiskControl::UpdateLabelInfo'
10026318: call     0x10024100
1002631d: add      esp, 0x14
10026320: mov      edx, dword ptr [ebp - 8]
10026323: add      edx, 0x2d0
10026329: push     edx
1002632a: mov      eax, dword ptr [ebp - 8]
1002632d: add      eax, 0x1830
10026332: push     eax
10026333: mov      ecx, dword ptr [ebp - 8]
10026336: add      ecx, 0x28
10026339: push     ecx
1002633a: mov      edx, dword ptr [ebp - 8]
1002633d: add      edx, 0xe8
10026343: push     edx
10026344: mov      eax, dword ptr [ebp - 8]
10026347: add      eax, 0x1024
1002634c: push     eax
1002634d: mov      ecx, dword ptr [ebp + 8]
10026350: push     ecx
10026351: call     0x100167c0
10026356: mov      dword ptr [ebp - 4], eax
10026359: cmp      dword ptr [ebp - 4], 0
1002635d: je       0x10026436
10026363: mov      edx, dword ptr [ebp - 8]
10026366: add      edx, 0x1830
1002636c: push     edx
1002636d: mov      eax, dword ptr [ebp - 8]
10026370: add      eax, 0x28
10026373: push     eax
10026374: mov      ecx, dword ptr [ebp + 8]
10026377: push     ecx
10026378: call     0x10013990
1002637d: mov      dword ptr [ebp - 4], eax
10026380: cmp      dword ptr [ebp - 4], 0
10026384: je       0x100263a8
10026386: mov      ecx, 0x100976b8
1002638b: call     0x10003170
10026390: push     eax
10026391: mov      ecx, dword ptr [ebp - 8]
10026394: add      ecx, 4
10026397: call     0x100032a0
1002639c: xor      al, al
1002639e: jmp      0x100264ee
100263a3: jmp      0x10026434
100263a8: mov      edx, dword ptr [ebp - 8]
100263ab: add      edx, 0x28
100263ae: push     edx
100263af: mov      eax, dword ptr [ebp - 8]
100263b2: add      eax, 0xe8
100263b7: push     eax
100263b8: call     0x10015520
100263bd: add      esp, 8
100263c0: push     0x10077100
100263c5: push     0
100263c7: push     0x2b4
100263cc: push     0x10077124 ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
100263d1: push     0x10077150 ; 'CEdpDiskControl::UpdateLabelInfo'
100263d6: call     0x10024100
100263db: add      esp, 0x14
100263de: mov      ecx, dword ptr [ebp - 8]
100263e1: mov      dword ptr [ecx], 0x64
100263e7: mov      edx, dword ptr [ebp - 8]
100263ea: add      edx, 0x1053
100263f0: push     edx
100263f1: mov      eax, dword ptr [ebp + 8]
100263f4: push     eax
100263f5: call     0x10016dc0
100263fa: mov      ecx, dword ptr [ebp - 8]
100263fd: mov      edx, dword ptr [ecx]
100263ff: push     edx
10026400: mov      ecx, dword ptr [ebp - 8]
10026403: call     0x1002ca00
10026408: movzx    eax, al
1002640b: test     eax, eax
1002640d: jne      0x10026434
1002640f: push     0x10077174
10026414: push     4
10026416: push     0x2b9
1002641b: push     0x100771a4 ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
10026420: push     0x100771d0 ; 'CEdpDiskControl::UpdateLabelInfo'
10026425: call     0x10024100
1002642a: add      esp, 0x14
1002642d: xor      al, al
1002642f: jmp      0x100264ee
10026434: jmp      0x100264a4
10026436: push     0x100771f4
1002643b: push     0
1002643d: push     0x2c0
10026442: push     0x10077214 ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
10026447: push     0x10077240 ; 'CEdpDiskControl::UpdateLabelInfo'
1002644c: call     0x10024100
10026451: add      esp, 0x14
10026454: mov      ecx, dword ptr [ebp - 8]
10026457: movzx    edx, word ptr [ecx + 0x1830]
1002645e: mov      eax, dword ptr [ebp - 8]
10026461: mov      dword ptr [eax], edx
10026463: mov      ecx, dword ptr [ebp - 8]
10026466: mov      edx, dword ptr [ecx]
10026468: push     edx
10026469: mov      ecx, dword ptr [ebp - 8]
1002646c: call     0x1002ca00
10026471: movzx    eax, al
10026474: test     eax, eax
10026476: jne      0x100264a4
10026478: push     0x10077264
1002647d: push     4
1002647f: push     0x2ce
10026484: push     0x10077294 ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
10026489: push     0x100772c0 ; 'CEdpDiskControl::UpdateLabelInfo'
1002648e: call     0x10024100
10026493: add      esp, 0x14
10026496: mov      ecx, dword ptr [ebp + 8]
10026499: push     ecx
1002649a: call     dword ptr [0x100682f0] ; CloseHandle
100264a0: xor      al, al
100264a2: jmp      0x100264ee
100264a4: jmp      0x100264ce
100264a6: push     0x100772e4
100264ab: push     0
100264ad: push     0x2d6
100264b2: push     0x100772f8 ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
100264b7: push     0x10077324 ; 'CEdpDiskControl::UpdateLabelInfo'
100264bc: call     0x10024100
100264c1: add      esp, 0x14
100264c4: mov      edx, dword ptr [ebp - 8]
100264c7: mov      byte ptr [edx + 0x1b52], 1
100264ce: push     0x10077348
100264d3: push     4
100264d5: push     0x2da
100264da: push     0x10077368 ; '.\\Class\\EdpDiskControl\\EdpDiskControl.cpp'
100264df: push     0x10077394 ; 'CEdpDiskControl::UpdateLabelInfo'
100264e4: call     0x10024100
100264e9: add      esp, 0x14
100264ec: mov      al, 1
100264ee: mov      esp, ebp
100264f0: pop      ebp
100264f1: ret      4
100264f4: int3     
100264f5: int3     
100264f6: int3     
100264f7: int3     
100264f8: int3     
100264f9: int3     
100264fa: int3     
100264fb: int3     
100264fc: int3     
100264fd: int3     
100264fe: int3     
100264ff: int3     