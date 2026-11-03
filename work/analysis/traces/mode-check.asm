1002b130: push     ebp
1002b131: mov      ebp, esp
1002b133: sub      esp, 0x10
1002b136: mov      dword ptr [ebp - 0x10], ecx
1002b139: mov      byte ptr [ebp - 5], 0
1002b13d: mov      eax, dword ptr [ebp - 0x10]
1002b140: mov      ecx, dword ptr [eax + 0x118c]
1002b146: mov      dword ptr [ebp - 0xc], ecx
1002b149: push     0
1002b14b: mov      edx, dword ptr [ebp - 0xc]
1002b14e: push     edx
1002b14f: call     0x10012750
1002b154: add      esp, 8
1002b157: mov      dword ptr [ebp - 4], eax
1002b15a: cmp      dword ptr [ebp - 4], -1
1002b15e: je       0x1002b17b
1002b160: mov      eax, dword ptr [ebp - 4]
1002b163: push     eax
1002b164: call     0x10015270
1002b169: test     eax, eax
1002b16b: jne      0x1002b171
1002b16d: mov      byte ptr [ebp - 5], 1
1002b171: mov      ecx, dword ptr [ebp - 4]
1002b174: push     ecx
1002b175: call     dword ptr [0x100682f0] ; CloseHandle
1002b17b: mov      al, byte ptr [ebp - 5]
1002b17e: mov      esp, ebp
1002b180: pop      ebp
1002b181: ret      
1002b182: int3     
1002b183: int3     
1002b184: int3     
1002b185: int3     
1002b186: int3     
1002b187: int3     
1002b188: int3     
1002b189: int3     
1002b18a: int3     
1002b18b: int3     
1002b18c: int3     
1002b18d: int3     
1002b18e: int3     
1002b18f: int3     
1002b190: push     ebp
1002b191: mov      ebp, esp
1002b193: sub      esp, 0x254
1002b199: mov      eax, dword ptr [0x1008d020]
1002b19e: xor      eax, ebp
1002b1a0: mov      dword ptr [ebp - 0x34], eax
1002b1a3: mov      dword ptr [ebp - 0x254], ecx
1002b1a9: mov      byte ptr [ebp - 0x248], 0
1002b1b0: push     0x103
1002b1b5: push     0
1002b1b7: lea      eax, [ebp - 0x247]
1002b1bd: push     eax
1002b1be: call     0x1004f490
1002b1c3: add      esp, 0xc
1002b1c6: mov      byte ptr [ebp - 0x140], 0
1002b1cd: push     0x103
1002b1d2: push     0
1002b1d4: lea      ecx, [ebp - 0x13f]
1002b1da: push     ecx
1002b1db: call     0x1004f490
1002b1e0: add      esp, 0xc
1002b1e3: mov      byte ptr [ebp - 0x249], 0
1002b1ea: push     0x104
1002b1ef: lea      edx, [ebp - 0x140]
1002b1f5: push     edx
1002b1f6: call     dword ptr [0x100682c8] ; GetSystemDirectoryA
1002b1fc: mov      dword ptr [ebp - 0x250], 0
1002b206: jmp      0x1002b217
1002b208: mov      eax, dword ptr [ebp - 0x250]
1002b20e: add      eax, 1
1002b211: mov      dword ptr [ebp - 0x250], eax
1002b217: cmp      dword ptr [ebp - 0x250], 0xa
1002b21e: jge      0x1002b2c9
1002b224: movzx    ecx, byte ptr [ebp - 0x249]
1002b22b: test     ecx, ecx
1002b22d: je       0x1002b234
1002b22f: jmp      0x1002b2c9
1002b234: cmp      dword ptr [ebp - 0x250], 0
1002b23b: jne      0x1002b25f
1002b23d: lea      edx, [ebp - 0x140]
1002b243: push     edx
1002b244: push     0x10078ad8 ; '%s\\vrvpolicy.xml'
1002b249: push     0x104
1002b24e: lea      eax, [ebp - 0x248]
1002b254: push     eax
1002b255: call     0x10048e63
1002b25a: add      esp, 0x10
1002b25d: jmp      0x1002b286
1002b25f: mov      ecx, dword ptr [ebp - 0x250]
1002b265: push     ecx
1002b266: lea      edx, [ebp - 0x140]
1002b26c: push     edx
1002b26d: push     0x10078aec ; '%s\\vrvpolicy__0%d.xml'
1002b272: push     0x104
1002b277: lea      eax, [ebp - 0x248]
1002b27d: push     eax
1002b27e: call     0x10048e63
1002b283: add      esp, 0x14
1002b286: lea      ecx, [ebp - 0x30]
1002b289: push     ecx
1002b28a: lea      edx, [ebp - 0x248]
1002b290: push     edx
1002b291: call     0x1004c6f6
1002b296: add      esp, 8
1002b299: test     eax, eax
1002b29b: jne      0x1002b2c4
1002b29d: movzx    eax, word ptr [ebp - 0x2a]
1002b2a1: and      eax, 0x8000
1002b2a6: je       0x1002b2c4
1002b2a8: lea      ecx, [ebp - 0x248]
1002b2ae: push     ecx
1002b2af: call     0x1002d010
1002b2b4: add      esp, 4
1002b2b7: test     eax, eax
1002b2b9: je       0x1002b2c4
1002b2bb: mov      byte ptr [ebp - 0x249], 1
1002b2c2: jmp      0x1002b2c9
1002b2c4: jmp      0x1002b208
1002b2c9: movzx    edx, byte ptr [ebp - 0x249]
1002b2d0: test     edx, edx
1002b2d2: jne      0x1002b341
1002b2d4: push     0x104
1002b2d9: lea      eax, [ebp - 0x248]
1002b2df: push     eax
1002b2e0: call     0x1002cf90
1002b2e5: add      esp, 8
1002b2e8: test     eax, eax
1002b2ea: je       0x1002b341
1002b2ec: push     0x10078b04 ; 'vrvpolicy.xml'
1002b2f1: lea      ecx, [ebp - 0x248]
1002b2f7: push     ecx
1002b2f8: call     0x10004550
1002b2fd: add      esp, 8
1002b300: test     eax, eax
1002b302: je       0x1002b341
1002b304: lea      edx, [ebp - 0x30]
1002b307: push     edx
1002b308: lea      eax, [ebp - 0x248]
1002b30e: push     eax
1002b30f: call     0x1004c6f6
1002b314: add      esp, 8
1002b317: test     eax, eax
1002b319: jne      0x1002b341
1002b31b: movzx    ecx, word ptr [ebp - 0x2a]
1002b31f: and      ecx, 0x8000
1002b325: je       0x1002b341
1002b327: lea      edx, [ebp - 0x248]
1002b32d: push     edx
1002b32e: call     0x1002d010
1002b333: add      esp, 4
1002b336: test     eax, eax
1002b338: je       0x1002b341
1002b33a: mov      byte ptr [ebp - 0x249], 1
1002b341: mov      al, byte ptr [ebp - 0x249]
1002b347: mov      ecx, dword ptr [ebp - 0x34]
1002b34a: xor      ecx, ebp
1002b34c: call     0x10048939
1002b351: mov      esp, ebp
1002b353: pop      ebp
1002b354: ret      
1002b355: int3     
1002b356: int3     
1002b357: int3     
1002b358: int3     
1002b359: int3     
1002b35a: int3     
1002b35b: int3     
1002b35c: int3     
1002b35d: int3     
1002b35e: int3     
1002b35f: int3     
1002b360: push     ebp
1002b361: mov      ebp, esp
1002b363: sub      esp, 0x210
1002b369: mov      eax, dword ptr [0x1008d020]
1002b36e: xor      eax, ebp
1002b370: mov      dword ptr [ebp - 0x10], eax
1002b373: push     esi
1002b374: push     edi
1002b375: mov      dword ptr [ebp - 0x210], ecx
1002b37b: jmp      0x1002b38d
1002b37d: push     esi
1002b37e: dec      ebp
1002b37f: push     eax
1002b380: jb       0x1002b3f1
1002b382: je       0x1002b3e9
1002b384: arpl     word ptr [eax + 0x62], si
1002b388: imul     ebp, dword ptr gs:[bp], 0xfc45c7
1002b391: add      byte ptr [eax], al
1002b393: add      byte ptr [ebx - 0x20f7b], cl
1002b399: inc      dword ptr [ebx - 0x7af09bc8]
1002b39f: mov      ah, 0
1002b3a1: add      byte ptr [eax], al
1002b3a3: mov      ecx, dword ptr [ebp + 0x14]
1002b3a6: push     ecx
1002b3a7: mov      edx, dword ptr [ebp + 0x10]
1002b3aa: push     edx
1002b3ab: mov      eax, dword ptr [ebp + 8]
1002b3ae: push     eax
1002b3af: call     0x10013de0
1002b3b4: test     eax, eax
1002b3b6: je       0x1002b3ef
1002b3b8: call     dword ptr [0x10068308] ; GetLastError
1002b3be: mov      dword ptr [ebp - 4], eax
1002b3c1: cmp      dword ptr [ebp - 4], 0x13
1002b3c5: jne      0x1002b3ce
1002b3c7: mov      byte ptr [0x10093d80], 1
1002b3ce: mov      ecx, 0x100976ec
1002b3d3: call     0x10003170
1002b3d8: push     eax
1002b3d9: mov      ecx, dword ptr [ebp - 0x210]
1002b3df: add      ecx, 4
1002b3e2: call     0x100032a0
1002b3e7: mov      eax, dword ptr [ebp - 4]
1002b3ea: jmp      0x1002b77d
1002b3ef: mov      dword ptr [ebp - 8], 0
1002b3f6: mov      dword ptr [ebp - 8], 0
1002b3fd: jmp      0x1002b408
1002b3ff: .byte    0x8b