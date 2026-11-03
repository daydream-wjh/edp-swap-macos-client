10034300: push     ebp
10034301: mov      ebp, esp
10034303: push     ecx
10034304: mov      dword ptr [ebp - 4], ecx
10034307: mov      eax, dword ptr [ebp + 8]
1003430a: push     eax
1003430b: mov      ecx, dword ptr [ebp - 4]
1003430e: call     0x10034020
10034313: mov      ecx, dword ptr [ebp + 8]
10034316: add      ecx, 0xb0
1003431c: push     ecx
1003431d: mov      ecx, dword ptr [ebp - 4]
10034320: add      ecx, 0xb0
10034326: call     0x10018990
1003432b: mov      edx, dword ptr [ebp + 8]
1003432e: add      edx, 0xcc
10034334: push     edx
10034335: mov      ecx, dword ptr [ebp - 4]
10034338: add      ecx, 0xcc
1003433e: call     0x10018990
10034343: mov      eax, dword ptr [ebp + 8]
10034346: add      eax, 0xe8
1003434b: push     eax
1003434c: mov      ecx, dword ptr [ebp - 4]
1003434f: add      ecx, 0xe8
10034355: call     0x100344c0
1003435a: mov      eax, dword ptr [ebp - 4]
1003435d: mov      esp, ebp
1003435f: pop      ebp
10034360: ret      4
10034363: int3     
10034364: int3     
10034365: int3     
10034366: int3     
10034367: int3     
10034368: int3     
10034369: int3     
1003436a: int3     
1003436b: int3     
1003436c: int3     
1003436d: int3     
1003436e: int3     
1003436f: int3     
10034370: push     ebp
10034371: mov      ebp, esp
10034373: push     -1
10034375: push     0x1006490c
1003437a: mov      eax, dword ptr fs:[0]
10034380: push     eax
10034381: push     ecx
10034382: mov      eax, dword ptr [0x1008d020]
10034387: xor      eax, ebp
10034389: push     eax
1003438a: lea      eax, [ebp - 0xc]
1003438d: mov      dword ptr fs:[0], eax
10034393: mov      dword ptr [ebp - 0x10], ecx
10034396: mov      eax, dword ptr [ebp - 0x10]
10034399: mov      dword ptr [eax], 0x10084394
1003439f: mov      ecx, dword ptr [ebp - 0x10]
100343a2: add      ecx, 4
100343a5: call     0x1000e050
100343aa: mov      dword ptr [ebp - 4], 0
100343b1: mov      ecx, dword ptr [ebp - 0x10]
100343b4: add      ecx, 0x20
100343b7: call     0x1000e050
100343bc: mov      byte ptr [ebp - 4], 1
100343c0: mov      ecx, dword ptr [ebp - 0x10]
100343c3: add      ecx, 0x3c
100343c6: call     0x1000e050
100343cb: mov      byte ptr [ebp - 4], 2
100343cf: mov      ecx, dword ptr [ebp - 0x10]
100343d2: add      ecx, 0x58
100343d5: call     0x1000e050
100343da: mov      byte ptr [ebp - 4], 3
100343de: push     0x1006cb81
100343e3: mov      ecx, dword ptr [ebp - 0x10]
100343e6: add      ecx, 4
100343e9: call     0x100032a0
100343ee: push     0x1006cb82
100343f3: mov      ecx, dword ptr [ebp - 0x10]
100343f6: add      ecx, 0x20
100343f9: call     0x100032a0
100343fe: push     0x1006cb83
10034403: mov      ecx, dword ptr [ebp - 0x10]
10034406: add      ecx, 0x3c
10034409: call     0x100032a0
1003440e: push     0x1006cb8b
10034413: mov      ecx, dword ptr [ebp - 0x10]
10034416: add      ecx, 0x58
10034419: call     0x100032a0
1003441e: mov      ecx, dword ptr [ebp - 0x10]
10034421: mov      dword ptr [ecx + 0x74], 0
10034428: mov      dword ptr [ebp - 4], 0xffffffff
1003442f: mov      eax, dword ptr [ebp - 0x10]
10034432: mov      ecx, dword ptr [ebp - 0xc]
10034435: mov      dword ptr fs:[0], ecx
1003443c: pop      ecx
1003443d: mov      esp, ebp
1003443f: pop      ebp
10034440: ret      
10034441: int3     
10034442: int3     
10034443: int3     
10034444: int3     
10034445: int3     
10034446: int3     
10034447: int3     
10034448: int3     
10034449: int3     
1003444a: int3     
1003444b: int3     
1003444c: int3     
1003444d: int3     
1003444e: int3     
1003444f: int3     
10034450: push     ebp
10034451: mov      ebp, esp
10034453: push     ecx
10034454: mov      dword ptr [ebp - 4], ecx
10034457: mov      ecx, dword ptr [ebp - 4]
1003445a: call     0x10034480
1003445f: mov      eax, dword ptr [ebp + 8]
10034462: and      eax, 1
10034465: je       0x10034473
10034467: mov      ecx, dword ptr [ebp - 4]
1003446a: push     ecx
1003446b: call     0x1003aedf
10034470: add      esp, 4
10034473: mov      eax, dword ptr [ebp - 4]
10034476: mov      esp, ebp
10034478: pop      ebp
10034479: ret      4
1003447c: int3     
1003447d: int3     
1003447e: int3     
1003447f: int3     
10034480: push     ebp
10034481: mov      ebp, esp
10034483: push     ecx
10034484: mov      dword ptr [ebp - 4], ecx
10034487: mov      eax, dword ptr [ebp - 4]
1003448a: mov      dword ptr [eax], 0x10084394
10034490: mov      ecx, dword ptr [ebp - 4]
10034493: add      ecx, 0x58
10034496: call     0x10003280
1003449b: mov      ecx, dword ptr [ebp - 4]
1003449e: add      ecx, 0x3c
100344a1: call     0x10003280
100344a6: mov      ecx, dword ptr [ebp - 4]
100344a9: add      ecx, 0x20
100344ac: call     0x10003280
100344b1: mov      ecx, dword ptr [ebp - 4]
100344b4: add      ecx, 4
100344b7: call     0x10003280
100344bc: mov      esp, ebp
100344be: pop      ebp
100344bf: ret      
100344c0: push     ebp
100344c1: mov      ebp, esp
100344c3: push     ecx
100344c4: mov      dword ptr [ebp - 4], ecx
100344c7: mov      eax, dword ptr [ebp + 8]
100344ca: add      eax, 4
100344cd: push     eax
100344ce: mov      ecx, dword ptr [ebp - 4]
100344d1: add      ecx, 4
100344d4: call     0x10018990
100344d9: mov      ecx, dword ptr [ebp + 8]
100344dc: add      ecx, 0x20
100344df: push     ecx
100344e0: mov      ecx, dword ptr [ebp - 4]
100344e3: add      ecx, 0x20
100344e6: call     0x10018990
100344eb: mov      edx, dword ptr [ebp + 8]
100344ee: add      edx, 0x3c
100344f1: push     edx
100344f2: mov      ecx, dword ptr [ebp - 4]
100344f5: add      ecx, 0x3c
100344f8: call     0x10018990
100344fd: mov      eax, dword ptr [ebp + 8]
10034500: add      eax, 0x58
10034503: push     eax
10034504: mov      ecx, dword ptr [ebp - 4]
10034507: add      ecx, 0x58
1003450a: call     0x10018990
1003450f: mov      ecx, dword ptr [ebp - 4]
10034512: mov      edx, dword ptr [ebp + 8]
10034515: mov      eax, dword ptr [edx + 0x74]
10034518: mov      dword ptr [ecx + 0x74], eax
1003451b: mov      eax, dword ptr [ebp - 4]
1003451e: mov      esp, ebp
10034520: pop      ebp
10034521: ret      4
10034524: int3     
10034525: int3     
10034526: int3     
10034527: int3     
10034528: int3     
10034529: int3     
1003452a: int3     
1003452b: int3     
1003452c: int3     
1003452d: int3     
1003452e: int3     
1003452f: int3     