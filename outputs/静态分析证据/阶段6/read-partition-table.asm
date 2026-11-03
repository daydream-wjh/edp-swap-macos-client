100156b0: push     ebp
100156b1: mov      ebp, esp
100156b3: sub      esp, 0x64
100156b6: jmp      0x100156c8
100156b8: push     esi
100156b9: dec      ebp
100156ba: push     eax
100156bb: jb       0x1001572c
100156bd: je       0x10015724
100156bf: arpl     word ptr [eax + 0x62], si
100156c3: imul     ebp, dword ptr gs:[bp], 0xfc45c7
100156cc: add      byte ptr [eax], al
100156ce: add      bh, al
100156d0: inc      ebp
100156d1: in       al, dx
100156d2: add      byte ptr [eax], al
100156d4: add      byte ptr [eax], al
100156d6: mov      eax, dword ptr [ebp + 0xc]
100156d9: mov      ecx, dword ptr [ebp + 0xc]
100156dc: mov      edx, dword ptr [eax + 8]
100156df: imul     edx, dword ptr [ecx + 0xc]
100156e3: push     edx
100156e4: call     0x1003aed4
100156e9: add      esp, 4
100156ec: mov      dword ptr [ebp - 0x1c], eax
100156ef: mov      eax, dword ptr [ebp - 0x1c]
100156f2: mov      dword ptr [ebp - 4], eax
100156f5: cmp      dword ptr [ebp - 4], 0
100156f9: jne      0x10015705
100156fb: mov      eax, 1
10015700: jmp      0x10015b76
10015705: mov      ecx, dword ptr [ebp + 0xc]
10015708: mov      edx, dword ptr [ebp + 0xc]
1001570b: mov      eax, dword ptr [ecx + 8]
1001570e: imul     eax, dword ptr [edx + 0xc]
10015712: push     eax
10015713: call     0x1003aed4
10015718: add      esp, 4
1001571b: mov      dword ptr [ebp - 0x20], eax
1001571e: mov      ecx, dword ptr [ebp - 0x20]
10015721: mov      dword ptr [ebp - 0x14], ecx
10015724: cmp      dword ptr [ebp - 0x14], 0
10015728: jne      0x10015746
1001572a: mov      edx, dword ptr [ebp - 4]
1001572d: mov      dword ptr [ebp - 0x24], edx
10015730: mov      eax, dword ptr [ebp - 0x24]
10015733: push     eax
10015734: call     0x1003aedf
10015739: add      esp, 4
1001573c: mov      eax, 1
10015741: jmp      0x10015b76
10015746: push     0
10015748: mov      ecx, dword ptr [ebp + 0xc]
1001574b: mov      edx, dword ptr [ebp + 0xc]
1001574e: mov      eax, dword ptr [ecx + 8]
10015751: imul     eax, dword ptr [edx + 0xc]
10015755: push     eax
10015756: push     0
10015758: mov      ecx, dword ptr [ebp - 4]
1001575b: push     ecx
1001575c: call     0x1001f170
10015761: add      esp, 0x10
10015764: push     0
10015766: mov      edx, dword ptr [ebp + 0xc]
10015769: mov      eax, dword ptr [ebp + 0xc]
1001576c: mov      ecx, dword ptr [edx + 8]
1001576f: imul     ecx, dword ptr [eax + 0xc]
10015773: push     ecx
10015774: push     0
10015776: mov      edx, dword ptr [ebp - 0x14]
10015779: push     edx
1001577a: call     0x1001f170
1001577f: add      esp, 0x10
10015782: mov      eax, dword ptr [ebp + 0xc]
10015785: cmp      dword ptr [eax + 4], 0
10015789: jne      0x10015795
1001578b: mov      ecx, dword ptr [ebp + 0xc]
1001578e: mov      dword ptr [ecx + 4], 0xc
10015795: push     0
10015797: push     0
10015799: mov      edx, dword ptr [ebp + 0xc]
1001579c: mov      eax, dword ptr [0x10095114]
100157a1: add      eax, dword ptr [edx + 4]
100157a4: mov      ecx, dword ptr [ebp + 0xc]
100157a7: imul     eax, dword ptr [ecx + 0xc]
100157ab: push     eax
100157ac: mov      edx, dword ptr [ebp + 8]
100157af: push     edx
100157b0: call     dword ptr [0x10068328] ; SetFilePointer
100157b6: mov      dword ptr [ebp - 0xc], eax
100157b9: push     0
100157bb: lea      eax, [ebp - 8]
100157be: push     eax
100157bf: mov      ecx, dword ptr [ebp + 0xc]
100157c2: mov      edx, dword ptr [ebp + 0xc]
100157c5: mov      eax, dword ptr [ecx + 8]
100157c8: imul     eax, dword ptr [edx + 0xc]
100157cc: push     eax
100157cd: mov      ecx, dword ptr [ebp - 4]
100157d0: push     ecx
100157d1: mov      edx, dword ptr [ebp + 8]
100157d4: push     edx
100157d5: call     dword ptr [0x100682a0] ; ReadFile
100157db: test     eax, eax
100157dd: jne      0x1001580e
100157df: mov      eax, dword ptr [ebp - 0x14]
100157e2: mov      dword ptr [ebp - 0x28], eax
100157e5: mov      ecx, dword ptr [ebp - 0x28]
100157e8: push     ecx
100157e9: call     0x1003aedf
100157ee: add      esp, 4
100157f1: mov      edx, dword ptr [ebp - 4]
100157f4: mov      dword ptr [ebp - 0x2c], edx
100157f7: mov      eax, dword ptr [ebp - 0x2c]
100157fa: push     eax
100157fb: call     0x1003aedf
10015800: add      esp, 4
10015803: call     dword ptr [0x10068308] ; GetLastError
10015809: jmp      0x10015b76
1001580e: push     0
10015810: mov      ecx, dword ptr [ebp + 0xc]
10015813: mov      edx, dword ptr [ebp + 0xc]
10015816: mov      eax, dword ptr [ecx + 8]
10015819: imul     eax, dword ptr [edx + 0xc]
1001581d: push     eax
1001581e: mov      ecx, dword ptr [ebp - 4]
10015821: push     ecx
10015822: mov      edx, dword ptr [ebp - 0x14]
10015825: push     edx
10015826: call     0x1001f130
1001582b: add      esp, 0x10
1001582e: call     0x1003a990
10015833: mov      eax, dword ptr [ebp + 0xc]
10015836: add      eax, 0x10
10015839: mov      dword ptr [ebp - 0x48], eax
1001583c: mov      ecx, dword ptr [ebp - 0x48]
1001583f: add      ecx, 1
10015842: mov      dword ptr [ebp - 0x4c], ecx
10015845: mov      edx, dword ptr [ebp - 0x48]
10015848: mov      al, byte ptr [edx]
1001584a: mov      byte ptr [ebp - 0x4d], al
1001584d: add      dword ptr [ebp - 0x48], 1
10015851: cmp      byte ptr [ebp - 0x4d], 0
10015855: jne      0x10015845
10015857: mov      ecx, dword ptr [ebp - 0x48]
1001585a: sub      ecx, dword ptr [ebp - 0x4c]
1001585d: mov      dword ptr [ebp - 0x54], ecx
10015860: mov      edx, dword ptr [ebp - 0x54]
10015863: push     edx
10015864: mov      eax, dword ptr [ebp + 0xc]
10015867: add      eax, 0x10
1001586a: push     eax
1001586b: push     0
1001586d: call     0x1003aa10
10015872: add      esp, 0xc
10015875: mov      dword ptr [ebp - 0x10], eax
10015878: mov      ecx, dword ptr [ebp - 4]
1001587b: push     ecx
1001587c: push     4
1001587e: lea      edx, [ebp - 0x10]
10015881: push     edx
10015882: push     0x200
10015887: mov      eax, dword ptr [ebp - 4]
1001588a: push     eax
1001588b: push     0
1001588d: push     0
1001588f: call     0x1003a6b0
10015894: add      esp, 0x1c
10015897: mov      ecx, dword ptr [ebp - 4]
1001589a: cmp      dword ptr [ecx], 0x46504445
100158a0: je       0x100159d4
100158a6: mov      dword ptr [ebp - 0x18], 0
100158ad: push     0
100158af: mov      edx, dword ptr [ebp + 0xc]
100158b2: mov      eax, dword ptr [ebp + 0xc]
100158b5: mov      ecx, dword ptr [edx + 8]
100158b8: imul     ecx, dword ptr [eax + 0xc]
100158bc: push     ecx
100158bd: mov      edx, dword ptr [ebp - 0x14]
100158c0: push     edx
100158c1: mov      eax, dword ptr [ebp - 4]
100158c4: push     eax
100158c5: call     0x1001f130
100158ca: add      esp, 0x10
100158cd: mov      dword ptr [ebp - 0x58], 0x10093e90
100158d4: mov      ecx, dword ptr [ebp - 0x58]
100158d7: add      ecx, 1
100158da: mov      dword ptr [ebp - 0x5c], ecx
100158dd: mov      edx, dword ptr [ebp - 0x58]
100158e0: mov      al, byte ptr [edx]
100158e2: mov      byte ptr [ebp - 0x5d], al
100158e5: add      dword ptr [ebp - 0x58], 1
100158e9: cmp      byte ptr [ebp - 0x5d], 0
100158ed: jne      0x100158dd
100158ef: mov      ecx, dword ptr [ebp - 0x58]
100158f2: sub      ecx, dword ptr [ebp - 0x5c]
100158f5: mov      dword ptr [ebp - 0x64], ecx
100158f8: mov      edx, dword ptr [ebp - 0x64]
100158fb: push     edx
100158fc: push     0x10093e90
10015901: push     0
10015903: call     0x1003aa10
10015908: add      esp, 0xc
1001590b: mov      dword ptr [ebp - 0x10], eax
1001590e: mov      eax, dword ptr [ebp - 4]
10015911: push     eax
10015912: push     4
10015914: lea      ecx, [ebp - 0x10]
10015917: push     ecx
10015918: push     0x200
1001591d: mov      edx, dword ptr [ebp - 4]
10015920: push     edx
10015921: push     0
10015923: push     0
10015925: call     0x1003a6b0
1001592a: add      esp, 0x1c
1001592d: mov      eax, dword ptr [ebp - 4]
10015930: cmp      dword ptr [eax], 0x46504445
10015936: jne      0x10015986
10015938: push     0x10093e90
1001593d: push     0x100
10015942: mov      ecx, dword ptr [ebp + 0xc]
10015945: add      ecx, 0x10
10015948: push     ecx
10015949: call     0x10048ea2
1001594e: add      esp, 0xc
10015951: push     0x10093e90
10015956: push     0x104
1001595b: push     0x10093d88
10015960: call     0x10048ea2
10015965: add      esp, 0xc
10015968: push     0x10093e90
1001596d: push     0x104
10015972: push     0x10094fd8
10015977: call     0x10048ea2
1001597c: add      esp, 0xc
1001597f: mov      dword ptr [ebp - 0x18], 1
10015986: cmp      dword ptr [ebp - 0x18], 0
1001598a: jne      0x100159d2
1001598c: mov      edx, dword ptr [ebp - 0x14]
1001598f: mov      dword ptr [ebp - 0x30], edx
10015992: mov      eax, dword ptr [ebp - 0x30]
10015995: push     eax
10015996: call     0x1003aedf
1001599b: add      esp, 4
1001599e: mov      ecx, dword ptr [ebp - 4]
100159a1: mov      dword ptr [ebp - 0x34], ecx
100159a4: mov      edx, dword ptr [ebp - 0x34]
100159a7: push     edx
100159a8: call     0x1003aedf
100159ad: add      esp, 4
100159b0: push     0x1007c434
100159b5: call     dword ptr [0x10068340] ; OutputDebugStringA
100159bb: push     0x1007c468
100159c0: call     0x1001fa30
100159c5: add      esp, 4
100159c8: mov      eax, 1
100159cd: jmp      0x10015b76
100159d2: jmp      0x100159eb
100159d4: push     0x10093d88
100159d9: push     0x104
100159de: .byte    0x68
100159df: .byte    0xd8