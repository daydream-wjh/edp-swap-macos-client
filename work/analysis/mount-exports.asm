100098c0: push ebp
100098c1: mov ebp, esp
100098c3: sub esp, 0x254
100098c9: mov eax, dword ptr [0x1003ac54]
100098ce: xor eax, ebp
100098d0: mov dword ptr [ebp - 4], eax
100098d3: push ebx
100098d4: push esi
100098d5: push edi
100098d6: mov byte ptr [ebp - 5], 0
100098da: mov byte ptr [ebp - 6], 0
100098de: push 0x10031330
100098e3: call 0x1000b4e0
100098e8: add esp, 4
100098eb: mov eax, dword ptr [ebp + 8]
100098ee: push eax
100098ef: mov ecx, 0x1003c120
100098f4: call 0x10007350
100098f9: mov byte ptr [ebp - 5], al
100098fc: movzx eax, byte ptr [ebp - 5]
10009900: test eax, eax
10009902: je 0x100099ab
10009908: push 0x1003130c
1000990d: call 0x1000b4e0
10009912: add esp, 4
10009915: mov ecx, 0x1003c120
1000991a: call 0x10007bd0
1000991f: mov byte ptr [ebp - 6], al
10009922: mov byte ptr [ebp - 0x214], 0
10009929: push 0xff
1000992e: push 0
10009930: lea eax, [ebp - 0x213]
10009936: push eax
10009937: call 0x10018170
1000993c: add esp, 0xc
1000993f: movsx eax, byte ptr [ebp - 6]
10009943: push eax
10009944: push 0x100312f0
10009949: lea ecx, [ebp - 0x214]
1000994f: push ecx
10009950: call 0x1000af70
10009955: add esp, 0xc
10009958: lea eax, [ebp - 0x214]
1000995e: push eax
1000995f: call 0x1000b4e0
10009964: add esp, 4
10009967: mov ecx, 0x1003c120
1000996c: call 0x10007bb0
10009971: mov dword ptr [ebp - 0x110], eax
10009977: mov al, byte ptr [ebp - 6]
1000997a: mov byte ptr [ebp - 0x114], al
10009980: push 0
10009982: mov eax, dword ptr [ebp + 8]
10009985: add eax, 0x5c
10009988: push eax
10009989: lea ecx, [ebp - 0x10c]
1000998f: push ecx
10009990: call 0x1000aeb0
10009995: add esp, 0xc
10009998: lea eax, [ebp - 0x114]
1000999e: push eax
1000999f: mov ecx, 0x1003c044
100099a4: call 0x100010c0
100099a9: jmp 0x100099b8
100099ab: push 0x100312c8
100099b0: call 0x1000b4e0
100099b5: add esp, 4
100099b8: mov al, byte ptr [ebp - 6]
100099bb: pop edi
100099bc: pop esi
100099bd: pop ebx
100099be: mov ecx, dword ptr [ebp - 4]
100099c1: xor ecx, ebp
100099c3: call 0x10018140
100099c8: mov esp, ebp
100099ca: pop ebp
100099cb: ret 4
100099ce: int3 
100099cf: int3 
100099d0: push ebp
100099d1: mov ebp, esp
100099d3: sub esp, 0x40
100099d6: push ebx
100099d7: push esi
100099d8: push edi
100099d9: push 0
100099db: movzx eax, byte ptr [ebp + 8]
100099df: push eax
100099e0: call 0x100099f0
100099e5: pop edi
100099e6: pop esi
100099e7: pop ebx
100099e8: mov esp, ebp
100099ea: pop ebp
100099eb: ret 4
100099ee: int3 
100099ef: int3 
100099f0: push ebp
100099f1: mov ebp, esp
100099f3: sub esp, 0x154
100099f9: mov eax, dword ptr [0x1003ac54]
100099fe: xor eax, ebp
10009a00: mov dword ptr [ebp - 4], eax
10009a03: push ebx
10009a04: push esi
10009a05: push edi
10009a06: mov byte ptr [ebp - 5], 0
10009a0a: movsx eax, byte ptr [ebp + 8]
10009a0e: test eax, eax
10009a10: jne 0x10009a1f
10009a12: mov ecx, 0x1003c120
10009a17: call 0x10007bd0
10009a1c: mov byte ptr [ebp + 8], al
10009a1f: push 0x100313a0
10009a24: call 0x1000b4e0
10009a29: add esp, 4
10009a2c: movzx eax, byte ptr [ebp + 0xc]
10009a30: push eax
10009a31: movzx ecx, byte ptr [ebp + 8]
10009a35: push ecx
10009a36: mov ecx, 0x1003c120
10009a3b: call 0x100078f0
10009a40: mov byte ptr [ebp - 5], al
10009a43: movzx eax, byte ptr [ebp - 5]
10009a47: test eax, eax
10009a49: je 0x10009a72
10009a4b: push 0x10031370
10009a50: call 0x1000b4e0
10009a55: add esp, 4
10009a58: mov al, byte ptr [ebp + 8]
10009a5b: mov byte ptr [ebp - 0x114], al
10009a61: lea eax, [ebp - 0x114]
10009a67: push eax
10009a68: mov ecx, 0x1003c044
10009a6d: call 0x100012f0
10009a72: push 0x10031344
10009a77: call 0x1000b4e0
10009a7c: add esp, 4
10009a7f: movzx eax, byte ptr [ebp - 5]
10009a83: neg eax
10009a85: sbb eax, eax
10009a87: add eax, 1
10009a8a: pop edi
10009a8b: pop esi
10009a8c: pop ebx
10009a8d: mov ecx, dword ptr [ebp - 4]
10009a90: xor ecx, ebp
10009a92: call 0x10018140
10009a97: mov esp, ebp
10009a99: pop ebp
10009a9a: ret 8
10009a9d: int3 
10009a9e: int3 
10009a9f: int3 
10009aa0: push ebp
10009aa1: mov ebp, esp
10009aa3: sub esp, 0x44
10009aa6: push ebx
10009aa7: push esi
10009aa8: push edi
10009aa9: mov byte ptr [ebp - 1], 0
10009aad: mov eax, dword ptr [ebp + 0xc]
10009ab0: push eax
10009ab1: mov ecx, dword ptr [ebp + 8]
10009ab4: push ecx
10009ab5: mov ecx, 0x1003c120
10009aba: call 0x100079b0
10009abf: mov byte ptr [ebp - 1], al
10009ac2: movzx eax, byte ptr [ebp - 1]
10009ac6: neg eax
10009ac8: sbb eax, eax
10009aca: add eax, 1
10009acd: pop edi
10009ace: pop esi
10009acf: pop ebx
10009ad0: mov esp, ebp
10009ad2: pop ebp
10009ad3: ret 8
10009ad6: int3 
10009ad7: int3 
10009ad8: int3 
10009ad9: int3 
10009ada: int3 
10009adb: int3 
10009adc: int3 
10009add: int3 
10009ade: int3 
10009adf: int3 
10009ae0: push ebp
10009ae1: mov ebp, esp
10009ae3: sub esp, 0x40
10009ae6: push ebx
10009ae7: push esi
10009ae8: push edi
10009ae9: mov ecx, 0x1003c120
10009aee: call 0x10007bf0
10009af3: pop edi
10009af4: pop esi
10009af5: pop ebx
10009af6: mov esp, ebp
10009af8: pop ebp
10009af9: ret 
10009afa: int3 
10009afb: int3 
10009afc: int3 
10009afd: int3 
10009afe: int3 
10009aff: int3 
10009b00: push ebp
10009b01: mov ebp, esp
10009b03: sub esp, 0x154
10009b09: mov eax, dword ptr [0x1003ac54]
10009b0e: xor eax, ebp
10009b10: mov dword ptr [ebp - 4], eax
10009b13: push ebx
10009b14: push esi
10009b15: push edi
10009b16: mov byte ptr [ebp - 5], 0
10009b1a: cmp dword ptr [ebp + 0xc], -1
10009b1e: je 0x10009b26
10009b20: cmp dword ptr [ebp + 0xc], 0
10009b24: jne 0x10009b2c
10009b26: movzx eax, byte ptr [ebp - 5]
10009b2a: jmp 0x10009b96
10009b2c: push 0x100313c8
10009b31: call 0x1000b4e0
10009b36: add esp, 4
10009b39: movsx eax, byte ptr [ebp + 8]
10009b3d: test eax, eax
10009b3f: jne 0x10009b4e
10009b41: mov ecx, 0x1003c120
10009b46: .byte 0xe8
10009b47: test eax, esp
10009b49: .byte 0xff
100094b0: push ebp
100094b1: mov ebp, esp
100094b3: push -1
100094b5: push 0x1002e546
100094ba: mov eax, dword ptr fs:[0]
100094c0: push eax
100094c1: sub esp, 0x17c
100094c7: mov eax, dword ptr [0x1003ac54]
100094cc: xor eax, ebp
100094ce: mov dword ptr [ebp - 0x10], eax
100094d1: push ebx
100094d2: push esi
100094d3: push edi
100094d4: push eax
100094d5: lea eax, [ebp - 0xc]
100094d8: mov dword ptr fs:[0], eax
100094de: mov byte ptr [ebp - 0x11], 0
100094e2: push 0x100312ac
100094e7: call 0x1000b4e0
100094ec: add esp, 4
100094ef: call 0x1000a0e0
100094f4: mov dword ptr [0x1003c114], eax
100094f9: push 0x100305de
100094fe: lea ecx, [ebp - 0x18]
10009501: call 0x10001e90
10009506: mov dword ptr [ebp - 4], 0
1000950d: lea ecx, [ebp - 0x1c]
10009510: call 0x10001e60
10009515: mov byte ptr [ebp - 4], 1
10009519: mov byte ptr [ebp - 0x120], 0
10009520: push 0x103
10009525: push 0
10009527: lea eax, [ebp - 0x11f]
1000952d: push eax
1000952e: call 0x10018170
10009533: add esp, 0xc
10009536: push 0x104
1000953b: lea eax, [ebp - 0x120]
10009541: push eax
10009542: call dword ptr [0x10030278]
10009548: call 0x1000a0e0
1000954d: test eax, eax
1000954f: je 0x10009560
10009551: push 0x10031294
10009556: lea ecx, [ebp - 0x1c]
10009559: call 0x10001f30
1000955e: jmp 0x1000956d
10009560: push 0x1003127c
10009565: lea ecx, [ebp - 0x1c]
10009568: call 0x10001f30
1000956d: mov eax, dword ptr [ebp - 0x1c]
10009570: push eax
10009571: lea ecx, [ebp - 0x120]
10009577: push ecx
10009578: push 0x10031274
1000957d: lea edx, [ebp - 0x18]
10009580: push edx
10009581: call 0x10004c60
10009586: add esp, 0x10
10009589: lea ecx, [ebp - 0x18]
1000958c: call 0x10004c40
10009591: push eax
10009592: call 0x1000b4e0
10009597: add esp, 4
1000959a: mov byte ptr [ebp - 0x121], 0
100095a1: push 0
100095a3: lea ecx, [ebp - 0x18]
100095a6: call 0x100026a0
100095ab: push eax
100095ac: call dword ptr [0x100302e4]
100095b2: test eax, eax
100095b4: jne 0x100095cc
100095b6: lea ecx, [ebp - 0x18]
100095b9: call 0x10004c40
100095be: push eax
100095bf: call 0x10009c20
100095c4: add esp, 4
100095c7: jmp 0x1000964f
100095cc: lea ecx, [ebp - 0x18]
100095cf: call 0x10004c40
100095d4: push eax
100095d5: call 0x1000a1f0
100095da: add esp, 4
100095dd: mov dword ptr [ebp - 0x12c], eax
100095e3: mov dword ptr [ebp - 0x128], edx
100095e9: lea ecx, [ebp - 0x130]
100095ef: call 0x10001e60
100095f4: mov byte ptr [ebp - 4], 2
100095f8: mov eax, dword ptr [ebp - 0x128]
100095fe: push eax
100095ff: mov ecx, dword ptr [ebp - 0x12c]
10009605: push ecx
10009606: movzx edx, byte ptr [ebp + 8]
1000960a: push edx
1000960b: push 0x1003123c
10009610: lea eax, [ebp - 0x130]
10009616: push eax
10009617: call 0x10004c60
1000961c: add esp, 0x14
1000961f: cmp dword ptr [ebp - 0x128], 0x30006
10009629: ja 0x10009640
1000962b: jb 0x10009639
1000962d: cmp dword ptr [ebp - 0x12c], 0xa001c
10009637: jae 0x10009640
10009639: mov byte ptr [ebp - 0x121], 1
10009640: mov byte ptr [ebp - 4], 1
10009644: lea ecx, [ebp - 0x130]
1000964a: call 0x10001f10
1000964f: movzx eax, byte ptr [ebp - 0x121]
10009656: test eax, eax
10009658: je 0x100096cf
1000965a: lea ecx, [ebp - 0x18]
1000965d: call 0x10004c40
10009662: push eax
10009663: call 0x10009c20
10009668: add esp, 4
1000966b: mov byte ptr [ebp - 0x11], al
1000966e: movzx eax, byte ptr [ebp - 0x11]
10009672: test eax, eax
10009674: jne 0x100096c2
10009676: push 0x1003121c
1000967b: call 0x1000b4e0
10009680: add esp, 4
10009683: push 0x10031208
10009688: mov ecx, 0x1003c120
1000968d: call 0x10007c10
10009692: mov dword ptr [ebp - 0x184], 1
1000969c: mov byte ptr [ebp - 4], 0
100096a0: lea ecx, [ebp - 0x1c]
100096a3: call 0x10001f10
100096a8: mov dword ptr [ebp - 4], 0xffffffff
100096af: lea ecx, [ebp - 0x18]
100096b2: call 0x10001f10
100096b7: mov eax, dword ptr [ebp - 0x184]
100096bd: jmp 0x100097e4
100096c2: push 0x100311e4
100096c7: call 0x1000b4e0
100096cc: add esp, 4
100096cf: lea ecx, [ebp - 0x18]
100096d2: call 0x10004c40
100096d7: push eax
100096d8: push 0x100311d8
100096dd: call 0x100057a0
100096e2: add esp, 8
100096e5: mov dword ptr [ebp - 0x134], eax
100096eb: push 0x100311d8
100096f0: call 0x10005d90
100096f5: add esp, 4
100096f8: test eax, eax
100096fa: je 0x10009753
100096fc: movzx eax, byte ptr [ebp - 0x121]
10009703: test eax, eax
10009705: je 0x10009753
10009707: push 0x100311a4
1000970c: call 0x1000b4e0
10009711: add esp, 4
10009714: push 0x10030a50
10009719: mov ecx, 0x1003c120
1000971e: call 0x10007c10
10009723: mov dword ptr [ebp - 0x180], 1
1000972d: mov byte ptr [ebp - 4], 0
10009731: lea ecx, [ebp - 0x1c]
10009734: call 0x10001f10
10009739: .byte 0xc7