10012750: push     ebp
10012751: mov      ebp, esp
10012753: sub      esp, 0x20c
10012759: mov      eax, dword ptr [0x1008d020]
1001275e: xor      eax, ebp
10012760: mov      dword ptr [ebp - 4], eax
10012763: mov      dword ptr [ebp - 0x20c], 0
1001276d: mov      eax, dword ptr [ebp + 8]
10012770: push     eax
10012771: push     0x1007b974 ; '\\\\.\\PHYSICALDRIVE%d'
10012776: lea      ecx, [ebp - 0x208]
1001277c: push     ecx
1001277d: call     0x1001f2c0
10012782: add      esp, 0xc
10012785: push     0
10012787: push     0
10012789: push     3
1001278b: push     0
1001278d: push     3
1001278f: movzx    edx, byte ptr [ebp + 0xc]
10012793: neg      edx
10012795: sbb      edx, edx
10012797: and      edx, 0xc0000000
1001279d: add      edx, 0xc0000000
100127a3: push     edx
100127a4: lea      eax, [ebp - 0x208]
100127aa: push     eax
100127ab: call     dword ptr [0x10068330] ; CreateFileA
100127b1: mov      dword ptr [ebp - 0x20c], eax
100127b7: mov      eax, dword ptr [ebp - 0x20c]
100127bd: mov      ecx, dword ptr [ebp - 4]
100127c0: xor      ecx, ebp
100127c2: call     0x10048939
100127c7: mov      esp, ebp
100127c9: pop      ebp
100127ca: ret      
100127cb: int3     
100127cc: int3     
100127cd: int3     
100127ce: int3     
100127cf: int3     
100127d0: push     ebp
100127d1: mov      ebp, esp
100127d3: push     -1
100127d5: push     0x10065580
100127da: mov      eax, dword ptr fs:[0]
100127e0: push     eax
100127e1: sub      esp, 0x40
100127e4: mov      eax, dword ptr [0x1008d020]
100127e9: xor      eax, ebp
100127eb: mov      dword ptr [ebp - 0x10], eax
100127ee: push     eax
100127ef: lea      eax, [ebp - 0xc]
100127f2: mov      dword ptr fs:[0], eax
100127f8: lea      ecx, [ebp - 0x2c]
100127fb: call     0x1000e050
10012800: mov      dword ptr [ebp - 4], 0
10012807: lea      ecx, [ebp - 0x48]
1001280a: call     0x1000e050
1001280f: mov      byte ptr [ebp - 4], 1
10012813: mov      ecx, dword ptr [ebp + 8]
10012816: call     0x10003310
1001281b: push     eax
1001281c: push     0x104
10012821: push     0x10093d88
10012826: call     0x10048ea2
1001282b: add      esp, 0xc
1001282e: mov      ecx, dword ptr [ebp + 8]
10012831: call     0x10003310
10012836: push     eax
10012837: push     0x104
1001283c: push     0x10093e90
10012841: call     0x10048ea2
10012846: add      esp, 0xc
10012849: push     0x104
1001284e: .byte    0x68
1001284f: .byte    0x88