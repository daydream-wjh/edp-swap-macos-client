10029e80: push     ebp
10029e81: mov      ebp, esp
10029e83: push     -1
10029e85: push     0x10064a28
10029e8a: mov      eax, dword ptr fs:[0]
10029e90: push     eax
10029e91: sub      esp, 0xc
10029e94: mov      eax, dword ptr [0x1008d020]
10029e99: xor      eax, ebp
10029e9b: push     eax
10029e9c: lea      eax, [ebp - 0xc]
10029e9f: mov      dword ptr fs:[0], eax
10029ea5: mov      dword ptr [ebp - 0x18], ecx
10029ea8: mov      eax, dword ptr [ebp - 0x18]
10029eab: cmp      dword ptr [eax + 0x1840], 0
10029eb2: jne      0x10029f4f
10029eb8: mov      ecx, dword ptr [ebp - 0x18]
10029ebb: movzx    edx, byte ptr [ecx + 0x1178]
10029ec2: test     edx, edx
10029ec4: je       0x10029f28
10029ec6: lea      ecx, [ebp - 0x10]
10029ec9: call     0x10003030
10029ece: mov      dword ptr [ebp - 4], 0
10029ed5: push     0x100785c8 ; 'EdpEDisk.dll'
10029eda: mov      ecx, 0x10097670
10029edf: call     0x10010b10
10029ee4: push     eax
10029ee5: push     0x100785d8 ; '%s%s'
10029eea: lea      eax, [ebp - 0x10]
10029eed: push     eax
10029eee: call     0x10004350
10029ef3: add      esp, 0x10
10029ef6: lea      ecx, [ebp - 0x10]
10029ef9: call     0x10003170
10029efe: push     eax
10029eff: call     dword ptr [0x10068348] ; LoadLibraryA
10029f05: mov      ecx, dword ptr [ebp - 0x18]
10029f08: mov      dword ptr [ecx + 0x1840], eax
10029f0e: call     dword ptr [0x10068308] ; GetLastError
10029f14: mov      dword ptr [ebp - 0x14], eax
10029f17: mov      dword ptr [ebp - 4], 0xffffffff
10029f1e: lea      ecx, [ebp - 0x10]
10029f21: call     0x100030d0
10029f26: jmp      0x10029f3c
10029f28: push     0x100785e0 ; 'EdpEDiskEx.dll'
10029f2d: call     dword ptr [0x10068348] ; LoadLibraryA
10029f33: mov      edx, dword ptr [ebp - 0x18]
10029f36: mov      dword ptr [edx + 0x1840], eax
10029f3c: mov      eax, dword ptr [ebp - 0x18]
10029f3f: cmp      dword ptr [eax + 0x1840], 0
10029f46: jne      0x10029f4f
10029f48: xor      al, al
10029f4a: jmp      0x1002a113
10029f4f: cmp      dword ptr [0x10095118], 0
10029f56: jne      0x10029f82
10029f58: push     0x100785f0 ; 'EdpStartService'
10029f5d: mov      ecx, dword ptr [ebp - 0x18]
10029f60: mov      edx, dword ptr [ecx + 0x1840]
10029f66: push     edx
10029f67: call     dword ptr [0x1006834c] ; GetProcAddress
10029f6d: mov      dword ptr [0x10095118], eax
10029f72: cmp      dword ptr [0x10095118], 0
10029f79: jne      0x10029f82
10029f7b: xor      al, al
10029f7d: jmp      0x1002a113
10029f82: cmp      dword ptr [0x1009511c], 0
10029f89: jne      0x10029fb5
10029f8b: push     0x10078600 ; 'EdpStopService'
10029f90: mov      eax, dword ptr [ebp - 0x18]
10029f93: mov      ecx, dword ptr [eax + 0x1840]
10029f99: push     ecx
10029f9a: call     dword ptr [0x1006834c] ; GetProcAddress
10029fa0: mov      dword ptr [0x1009511c], eax
10029fa5: cmp      dword ptr [0x1009511c], 0
10029fac: jne      0x10029fb5
10029fae: xor      al, al
10029fb0: jmp      0x1002a113
10029fb5: cmp      dword ptr [0x10095120], 0
10029fbc: jne      0x10029fe8
10029fbe: push     0x10078610 ; 'EdpMountFile'
10029fc3: mov      edx, dword ptr [ebp - 0x18]
10029fc6: mov      eax, dword ptr [edx + 0x1840]
10029fcc: push     eax
10029fcd: call     dword ptr [0x1006834c] ; GetProcAddress
10029fd3: mov      dword ptr [0x10095120], eax
10029fd8: cmp      dword ptr [0x10095120], 0
10029fdf: jne      0x10029fe8
10029fe1: xor      al, al
10029fe3: jmp      0x1002a113
10029fe8: cmp      dword ptr [0x10095124], 0
10029fef: jne      0x1002a01b
10029ff1: push     0x10078620 ; 'EdpUnMountFile'
10029ff6: mov      ecx, dword ptr [ebp - 0x18]
10029ff9: mov      edx, dword ptr [ecx + 0x1840]
10029fff: push     edx
1002a000: call     dword ptr [0x1006834c] ; GetProcAddress
1002a006: mov      dword ptr [0x10095124], eax
1002a00b: cmp      dword ptr [0x10095124], 0
1002a012: jne      0x1002a01b
1002a014: xor      al, al
1002a016: jmp      0x1002a113
1002a01b: cmp      dword ptr [0x10095128], 0
1002a022: jne      0x1002a04e
1002a024: push     0x10078630 ; 'EdpUnMountFileEx'
1002a029: mov      eax, dword ptr [ebp - 0x18]
1002a02c: mov      ecx, dword ptr [eax + 0x1840]
1002a032: push     ecx
1002a033: call     dword ptr [0x1006834c] ; GetProcAddress
1002a039: mov      dword ptr [0x10095128], eax
1002a03e: cmp      dword ptr [0x10095128], 0
1002a045: jne      0x1002a04e
1002a047: xor      al, al
1002a049: jmp      0x1002a113
1002a04e: cmp      dword ptr [0x1009512c], 0
1002a055: jne      0x1002a081
1002a057: push     0x10078644 ; 'EdpUnMountFileByHandle'
1002a05c: mov      edx, dword ptr [ebp - 0x18]
1002a05f: mov      eax, dword ptr [edx + 0x1840]
1002a065: push     eax
1002a066: call     dword ptr [0x1006834c] ; GetProcAddress
1002a06c: mov      dword ptr [0x1009512c], eax
1002a071: cmp      dword ptr [0x1009512c], 0
1002a078: jne      0x1002a081
1002a07a: xor      al, al
1002a07c: jmp      0x1002a113
1002a081: cmp      dword ptr [0x10095138], 0
1002a088: jne      0x1002a0b1
1002a08a: push     0x1007865c ; 'EdpForceUnMountALLFile'
1002a08f: mov      ecx, dword ptr [ebp - 0x18]
1002a092: mov      edx, dword ptr [ecx + 0x1840]
1002a098: push     edx
1002a099: call     dword ptr [0x1006834c] ; GetProcAddress
1002a09f: mov      dword ptr [0x10095138], eax
1002a0a4: cmp      dword ptr [0x10095138], 0
1002a0ab: jne      0x1002a0b1
1002a0ad: xor      al, al
1002a0af: jmp      0x1002a113
1002a0b1: cmp      dword ptr [0x10095130], 0
1002a0b8: jne      0x1002a0e1
1002a0ba: push     0x10078674 ; 'EdpChangePwd'
1002a0bf: mov      eax, dword ptr [ebp - 0x18]
1002a0c2: mov      ecx, dword ptr [eax + 0x1840]
1002a0c8: push     ecx
1002a0c9: call     dword ptr [0x1006834c] ; GetProcAddress
1002a0cf: mov      dword ptr [0x10095130], eax
1002a0d4: cmp      dword ptr [0x10095130], 0
1002a0db: jne      0x1002a0e1
1002a0dd: xor      al, al
1002a0df: jmp      0x1002a113
1002a0e1: cmp      dword ptr [0x10095134], 0
1002a0e8: jne      0x1002a111
1002a0ea: push     0x10078684 ; 'EdpErrorMessage'
1002a0ef: mov      edx, dword ptr [ebp - 0x18]
1002a0f2: mov      eax, dword ptr [edx + 0x1840]
1002a0f8: push     eax
1002a0f9: call     dword ptr [0x1006834c] ; GetProcAddress
1002a0ff: mov      dword ptr [0x10095134], eax
1002a104: cmp      dword ptr [0x10095134], 0
1002a10b: jne      0x1002a111
1002a10d: xor      al, al
1002a10f: jmp      0x1002a113
1002a111: mov      al, 1
1002a113: mov      ecx, dword ptr [ebp - 0xc]
1002a116: mov      dword ptr fs:[0], ecx
1002a11d: pop      ecx
1002a11e: mov      esp, ebp
1002a120: pop      ebp
1002a121: ret      
1002a122: int3     
1002a123: int3     
1002a124: int3     
1002a125: int3     
1002a126: int3     
1002a127: int3     
1002a128: int3     
1002a129: int3     
1002a12a: int3     
1002a12b: int3     
1002a12c: int3     
1002a12d: int3     
1002a12e: int3     
1002a12f: int3     
1002a130: push     ebp
1002a131: mov      ebp, esp
1002a133: push     ecx
1002a134: mov      dword ptr [ebp - 4], ecx
1002a137: mov      eax, dword ptr [ebp - 4]
1002a13a: cmp      dword ptr [eax + 0x1840], 0
1002a141: je       0x1002a160
1002a143: mov      ecx, dword ptr [ebp - 4]
1002a146: mov      edx, dword ptr [ecx + 0x1840]
1002a14c: push     edx
1002a14d: call     dword ptr [0x10068350] ; FreeLibrary
1002a153: mov      eax, dword ptr [ebp - 4]
1002a156: mov      dword ptr [eax + 0x1840], 0
1002a160: mov      dword ptr [0x10095118], 0
1002a16a: mov      dword ptr [0x1009511c], 0
1002a174: mov      dword ptr [0x10095120], 0
1002a17e: mov      dword ptr [0x10095124], 0
1002a188: mov      dword ptr [0x10095130], 0
1002a192: mov      dword ptr [0x10095134], 0
1002a19c: mov      esp, ebp
1002a19e: pop      ebp
1002a19f: ret      
1002a1a0: push     ebp
1002a1a1: mov      ebp, esp
1002a1a3: sub      esp, 8
1002a1a6: mov      dword ptr [ebp - 8], ecx
1002a1a9: mov      byte ptr [ebp - 1], 0
1002a1ad: movzx    eax, byte ptr [ebp + 8]
1002a1b1: test     eax, eax
1002a1b3: je       0x1002a20b
1002a1b5: mov      ecx, dword ptr [ebp - 8]
1002a1b8: call     0x10029e80
1002a1bd: movzx    ecx, al
1002a1c0: test     ecx, ecx
1002a1c2: je       0x1002a1fb
1002a1c4: mov      edx, dword ptr [ebp - 8]
1002a1c7: movzx    eax, byte ptr [edx + 0x1a0]
1002a1ce: push     eax
1002a1cf: call     dword ptr [0x10095118]
1002a1d5: neg      eax
1002a1d7: sbb      eax, eax
1002a1d9: add      eax, 1
1002a1dc: mov      byte ptr [ebp - 1], al
1002a1df: movzx    ecx, byte ptr [ebp - 1]
1002a1e3: test     ecx, ecx
1002a1e5: jne      0x1002a1f9
1002a1e7: call     dword ptr [0x10095134]
1002a1ed: push     eax
1002a1ee: mov      ecx, dword ptr [ebp - 8]
1002a1f1: add      ecx, 4
1002a1f4: call     0x100032a0
1002a1f9: jmp      0x1002a20b
1002a1fb: push     0x10078694
1002a200: mov      ecx, dword ptr [ebp - 8]
1002a203: add      ecx, 4
1002a206: call     0x100032a0
1002a20b: mov      al, byte ptr [ebp - 1]
1002a20e: mov      esp, ebp
1002a210: pop      ebp
1002a211: ret      4
1002a214: int3     
1002a215: int3     
1002a216: int3     
1002a217: int3     
1002a218: int3     
1002a219: int3     
1002a21a: int3     
1002a21b: int3     
1002a21c: int3     
1002a21d: int3     
1002a21e: int3     
1002a21f: int3     
1002a220: push     ebp
1002a221: mov      ebp, esp
1002a223: sub      esp, 0xc
1002a226: mov      dword ptr [ebp - 0xc], ecx
1002a229: mov      byte ptr [ebp - 1], 0
1002a22d: mov      eax, dword ptr [ebp - 0xc]
1002a230: movzx    ecx, byte ptr [eax + 0x1178]
1002a237: test     ecx, ecx
1002a239: jne      0x1002a314
1002a23f: mov      edx, dword ptr [ebp - 0xc]
1002a242: movzx    eax, byte ptr [edx + 0x1179]
1002a249: test     eax, eax
1002a24b: je       0x1002a269
1002a24d: mov      ecx, dword ptr [ebp - 0xc]
1002a250: movzx    edx, byte ptr [ecx + 0x117a]
1002a257: test     edx, edx
1002a259: jne      0x1002a269
1002a25b: mov      eax, dword ptr [ebp - 0xc]
1002a25e: .byte    0x0f
1002a25f: .byte    0xb6