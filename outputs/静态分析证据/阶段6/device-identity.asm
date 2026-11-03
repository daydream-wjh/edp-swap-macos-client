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
1001284e: push     0x10093d88
10012853: call     0x1004b717
10012858: add      esp, 8
1001285b: push     0x104
10012860: push     0x10093e90
10012865: call     0x1004b717
1001286a: add      esp, 8
1001286d: push     0x1007ba00 ; 'UpdateUniqueID unique_identifier='
10012872: call     dword ptr [0x10068340] ; OutputDebugStringA
10012878: push     0x10093d88
1001287d: call     dword ptr [0x10068340] ; OutputDebugStringA
10012883: push     0x1007ba24 ; 'UpdateUniqueID unique_identifier_short='
10012888: call     dword ptr [0x10068340] ; OutputDebugStringA
1001288e: push     0x10093e90
10012893: call     dword ptr [0x10068340] ; OutputDebugStringA
10012899: push     0x1007ba4c ; 'UpdateUniqueID unique_identifier='
1001289e: call     0x1001fa30
100128a3: add      esp, 4
100128a6: push     0x10093d88
100128ab: call     0x1001fa30
100128b0: add      esp, 4
100128b3: mov      byte ptr [ebp - 0x49], 1
100128b7: mov      byte ptr [ebp - 4], 0
100128bb: lea      ecx, [ebp - 0x48]
100128be: call     0x10003280
100128c3: mov      dword ptr [ebp - 4], 0xffffffff
100128ca: lea      ecx, [ebp - 0x2c]
100128cd: call     0x10003280
100128d2: mov      al, byte ptr [ebp - 0x49]
100128d5: mov      ecx, dword ptr [ebp - 0xc]
100128d8: mov      dword ptr fs:[0], ecx
100128df: pop      ecx
100128e0: mov      ecx, dword ptr [ebp - 0x10]
100128e3: xor      ecx, ebp
100128e5: call     0x10048939
100128ea: mov      esp, ebp
100128ec: pop      ebp
100128ed: ret      
100128ee: int3     
100128ef: int3     
100128f0: push     ebp
100128f1: mov      ebp, esp
100128f3: push     -1
100128f5: push     0x100658c6
100128fa: mov      eax, dword ptr fs:[0]
10012900: push     eax
10012901: sub      esp, 0x284
10012907: mov      eax, dword ptr [0x1008d020]
1001290c: xor      eax, ebp
1001290e: mov      dword ptr [ebp - 0x10], eax
10012911: push     eax
10012912: lea      eax, [ebp - 0xc]
10012915: mov      dword ptr fs:[0], eax
1001291b: mov      eax, dword ptr [ebp + 8]
1001291e: push     eax
1001291f: push     0x1007ba70 ; '\\\\.\\PHYSICALDRIVE%d'
10012924: lea      ecx, [ebp - 0x214]
1001292a: push     ecx
1001292b: call     0x1001f2c0
10012930: add      esp, 0xc
10012933: push     0x10092740
10012938: lea      edx, [ebp - 0x214]
1001293e: push     edx
1001293f: call     0x10012640
10012944: add      esp, 8
10012947: mov      dword ptr [ebp - 0x218], eax
1001294d: call     0x10012b40
10012952: test     eax, eax
10012954: jne      0x1001298b
10012956: push     0x1007ba84 ; 'unique_identifier='
1001295b: call     dword ptr [0x10068340] ; OutputDebugStringA
10012961: push     0x10093d88
10012966: call     dword ptr [0x10068340] ; OutputDebugStringA
1001296c: push     0x1007ba98 ; 'unique_identifier='
10012971: call     0x1001fa30
10012976: add      esp, 4
10012979: push     0x10093d88
1001297e: call     0x1001fa30
10012983: add      esp, 4
10012986: jmp      0x10012b27
1001298b: lea      ecx, [ebp - 0x234]
10012991: call     0x1000e050
10012996: mov      dword ptr [ebp - 4], 0
1001299d: lea      ecx, [ebp - 0x250]
100129a3: call     0x1000e050
100129a8: mov      byte ptr [ebp - 4], 1
100129ac: lea      eax, [ebp - 0x250]
100129b2: push     eax
100129b3: lea      ecx, [ebp - 0x234]
100129b9: push     ecx
100129ba: mov      edx, dword ptr [ebp + 8]
100129bd: push     edx
100129be: call     0x10034680
100129c3: add      esp, 0xc
100129c6: push     0x1004b99b
100129cb: lea      eax, [ebp - 0x258]
100129d1: push     eax
100129d2: lea      ecx, [ebp - 0x234]
100129d8: call     0x10017030
100129dd: mov      ecx, dword ptr [eax + 4]
100129e0: push     ecx
100129e1: mov      edx, dword ptr [eax]
100129e3: push     edx
100129e4: lea      eax, [ebp - 0x260]
100129ea: push     eax
100129eb: lea      ecx, [ebp - 0x234]
100129f1: call     0x10017060
100129f6: mov      ecx, dword ptr [eax + 4]
100129f9: push     ecx
100129fa: mov      edx, dword ptr [eax]
100129fc: push     edx
100129fd: lea      eax, [ebp - 0x268]
10012a03: push     eax
10012a04: lea      ecx, [ebp - 0x234]
10012a0a: call     0x10017030
10012a0f: mov      ecx, dword ptr [eax + 4]
10012a12: push     ecx
10012a13: mov      edx, dword ptr [eax]
10012a15: push     edx
10012a16: lea      eax, [ebp - 0x270]
10012a1c: push     eax
10012a1d: call     0x10017200
10012a22: add      esp, 0x20
10012a25: push     0x1004b99b
10012a2a: lea      ecx, [ebp - 0x278]
10012a30: push     ecx
10012a31: lea      ecx, [ebp - 0x250]
10012a37: call     0x10017030
10012a3c: mov      edx, dword ptr [eax + 4]
10012a3f: push     edx
10012a40: mov      eax, dword ptr [eax]
10012a42: push     eax
10012a43: lea      ecx, [ebp - 0x280]
10012a49: push     ecx
10012a4a: lea      ecx, [ebp - 0x250]
10012a50: call     0x10017060
10012a55: mov      edx, dword ptr [eax + 4]
10012a58: push     edx
10012a59: mov      eax, dword ptr [eax]
10012a5b: push     eax
10012a5c: lea      ecx, [ebp - 0x288]
10012a62: push     ecx
10012a63: lea      ecx, [ebp - 0x250]
10012a69: call     0x10017030
10012a6e: mov      edx, dword ptr [eax + 4]
10012a71: push     edx
10012a72: mov      eax, dword ptr [eax]
10012a74: push     eax
10012a75: lea      ecx, [ebp - 0x290]
10012a7b: push     ecx
10012a7c: call     0x10017200
10012a81: add      esp, 0x20
10012a84: lea      ecx, [ebp - 0x234]
10012a8a: call     0x10003310
10012a8f: push     eax
10012a90: push     0x104
10012a95: push     0x10093d88
10012a9a: call     0x10048ea2
10012a9f: add      esp, 0xc
10012aa2: lea      ecx, [ebp - 0x250]
10012aa8: call     0x10003310
10012aad: push     eax
10012aae: push     0x104
10012ab3: push     0x10093e90
10012ab8: call     0x10048ea2
10012abd: add      esp, 0xc
10012ac0: push     0x1007baac ; 'unique_identifier='
10012ac5: call     dword ptr [0x10068340] ; OutputDebugStringA
10012acb: push     0x10093d88
10012ad0: call     dword ptr [0x10068340] ; OutputDebugStringA
10012ad6: push     0x1007bac0 ; 'unique_identifier_short='
10012adb: call     dword ptr [0x10068340] ; OutputDebugStringA
10012ae1: push     0x10093e90
10012ae6: call     dword ptr [0x10068340] ; OutputDebugStringA
10012aec: push     0x1007badc ; 'unique_identifier='
10012af1: call     0x1001fa30
10012af6: add      esp, 4
10012af9: push     0x10093d88
10012afe: call     0x1001fa30
10012b03: add      esp, 4
10012b06: mov      byte ptr [ebp - 4], 0
10012b0a: lea      ecx, [ebp - 0x250]
10012b10: call     0x10003280
10012b15: mov      dword ptr [ebp - 4], 0xffffffff
10012b1c: lea      ecx, [ebp - 0x234]
10012b22: call     0x10003280
10012b27: mov      ecx, dword ptr [ebp - 0xc]
10012b2a: mov      dword ptr fs:[0], ecx
10012b31: pop      ecx
10012b32: mov      ecx, dword ptr [ebp - 0x10]
10012b35: xor      ecx, ebp
10012b37: call     0x10048939
10012b3c: mov      esp, ebp
10012b3e: pop      ebp
10012b3f: ret      