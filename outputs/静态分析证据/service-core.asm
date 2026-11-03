10009c20: push ebp
10009c21: mov ebp, esp
10009c23: push -1
10009c25: push 0x1002e5b6
10009c2a: mov eax, dword ptr fs:[0]
10009c30: push eax
10009c31: sub esp, 0x178
10009c37: mov eax, dword ptr [0x1003ac54]
10009c3c: xor eax, ebp
10009c3e: mov dword ptr [ebp - 0x10], eax
10009c41: push ebx
10009c42: push esi
10009c43: push edi
10009c44: push eax
10009c45: lea eax, [ebp - 0xc]
10009c48: mov dword ptr fs:[0], eax
10009c4e: mov dword ptr [ebp - 0x14], 0
10009c55: mov dword ptr [ebp - 0x18], 0
10009c5c: mov dword ptr [ebp - 0x1c], 0
10009c63: mov dword ptr [ebp - 0x20], 0
10009c6a: mov byte ptr [ebp - 0x124], 0
10009c71: push 0x103
10009c76: push 0
10009c78: lea eax, [ebp - 0x123]
10009c7e: push eax
10009c7f: call 0x10018170
10009c84: add esp, 0xc
10009c87: mov dword ptr [ebp - 0x128], 0xffffffff
10009c91: mov byte ptr [ebp - 0x129], 0
10009c98: mov dword ptr [ebp - 0x130], 0
10009ca2: mov dword ptr [ebp - 0x134], 0
10009cac: cmp dword ptr [ebp + 8], 0
10009cb0: je 0x10009cc0
10009cb2: mov eax, dword ptr [ebp + 8]
10009cb5: movsx ecx, byte ptr [eax]
10009cb8: test ecx, ecx
10009cba: jne 0x10009d43
10009cc0: lea ecx, [ebp - 0x138]
10009cc6: call 0x10001e60
10009ccb: mov dword ptr [ebp - 4], 0
10009cd2: push 0x104
10009cd7: lea eax, [ebp - 0x124]
10009cdd: push eax
10009cde: call dword ptr [0x10030278]
10009ce4: call 0x1000a0e0
10009ce9: test eax, eax
10009ceb: je 0x10009cff
10009ced: push 0x10031294
10009cf2: lea ecx, [ebp - 0x138]
10009cf8: call 0x10001f30
10009cfd: jmp 0x10009d0f
10009cff: push 0x1003127c
10009d04: lea ecx, [ebp - 0x138]
10009d0a: call 0x10001f30
10009d0f: mov eax, dword ptr [ebp - 0x138]
10009d15: push eax
10009d16: lea ecx, [ebp - 0x124]
10009d1c: push ecx
10009d1d: push 0x10031274
10009d22: push 0x1003c11c
10009d27: call 0x10004c60
10009d2c: add esp, 0x10
10009d2f: mov dword ptr [ebp - 4], 0xffffffff
10009d36: lea ecx, [ebp - 0x138]
10009d3c: call 0x10001f10
10009d41: jmp 0x10009d51
10009d43: mov eax, dword ptr [ebp + 8]
10009d46: push eax
10009d47: mov ecx, 0x1003c11c
10009d4c: call 0x10001f30
10009d51: push 0x1000
10009d56: call dword ptr [0x1003044c]
10009d5c: mov dword ptr [0x1003c118], eax
10009d61: cmp dword ptr [0x1003c118], 0
10009d68: je 0x10009d7e
10009d6a: push 0x10031448
10009d6f: call 0x1000b4e0
10009d74: add esp, 4
10009d77: mov al, 1
10009d79: jmp 0x10009fdc
10009d7e: push 0x100305de
10009d83: lea ecx, [ebp - 0x13c]
10009d89: call 0x10001e90
10009d8e: mov dword ptr [ebp - 4], 1
10009d95: mov eax, dword ptr [0x1003c11c]
10009d9a: push eax
10009d9b: push 0x10031440
10009da0: lea ecx, [ebp - 0x13c]
10009da6: push ecx
10009da7: call 0x10004c60
10009dac: add esp, 0xc
10009daf: lea ecx, [ebp - 0x13c]
10009db5: call 0x10004c40
10009dba: push eax
10009dbb: call dword ptr [0x1003024c]
10009dc1: lea ecx, [ebp - 0x13c]
10009dc7: call 0x10004c40
10009dcc: push eax
10009dcd: mov ecx, 0x1003c11c
10009dd2: call 0x10004c40
10009dd7: push eax
10009dd8: call 0x1001a97b
10009ddd: add esp, 8
10009de0: mov ecx, 0x1003c11c
10009de5: call 0x10004c40
10009dea: push eax
10009deb: call dword ptr [0x1003024c]
10009df1: mov dword ptr [ebp - 0x140], 0
10009dfb: mov ecx, 0x1003c11c
10009e00: call 0x10004c40
10009e05: push eax
10009e06: call 0x1000b4e0
10009e0b: add esp, 4
10009e0e: push 0
10009e10: push 0x80
10009e15: push 4
10009e17: push 0
10009e19: push 0
10009e1b: push 0x1f01ff
10009e20: mov ecx, 0x1003c11c
10009e25: call 0x10004c40
10009e2a: push eax
10009e2b: .byte 0xff
10009e2c: .byte 0x15
10009e2d: test al, 2
10009e2f: .byte 0x03