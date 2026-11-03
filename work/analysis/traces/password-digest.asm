1002ff50: push     ebp
1002ff51: mov      ebp, esp
1002ff53: push     ecx
1002ff54: mov      dword ptr [ebp - 4], ecx
1002ff57: mov      ecx, dword ptr [ebp - 4]
1002ff5a: call     0x1002ffa0
1002ff5f: mov      eax, dword ptr [ebp - 4]
1002ff62: mov      esp, ebp
1002ff64: pop      ebp
1002ff65: ret      
1002ff66: int3     
1002ff67: int3     
1002ff68: int3     
1002ff69: int3     
1002ff6a: int3     
1002ff6b: int3     
1002ff6c: int3     
1002ff6d: int3     
1002ff6e: int3     
1002ff6f: int3     
1002ff70: push     ebp
1002ff71: mov      ebp, esp
1002ff73: push     ecx
1002ff74: mov      dword ptr [ebp - 4], ecx
1002ff77: mov      eax, dword ptr [ebp - 4]
1002ff7a: movzx    ecx, byte ptr [eax + 0x68]
1002ff7e: test     ecx, ecx
1002ff80: jne      0x1002ff91
1002ff82: mov      edx, dword ptr [ebp - 4]
1002ff85: mov      byte ptr [edx + 0x68], 1
1002ff89: mov      ecx, dword ptr [ebp - 4]
1002ff8c: call     0x10030150
1002ff91: mov      eax, dword ptr [ebp - 4]
1002ff94: add      eax, 0x58
1002ff97: mov      esp, ebp
1002ff99: pop      ebp
1002ff9a: ret      
1002ff9b: int3     
1002ff9c: int3     
1002ff9d: int3     
1002ff9e: int3     
1002ff9f: int3     
1002ffa0: push     ebp
1002ffa1: mov      ebp, esp
1002ffa3: push     ecx
1002ffa4: mov      dword ptr [ebp - 4], ecx
1002ffa7: mov      eax, dword ptr [ebp - 4]
1002ffaa: mov      byte ptr [eax + 0x68], 0
1002ffae: mov      ecx, dword ptr [ebp - 4]
1002ffb1: mov      dword ptr [ecx + 0x14], 0
1002ffb8: mov      edx, dword ptr [ebp - 4]
1002ffbb: mov      dword ptr [edx + 0x10], 0
1002ffc2: mov      eax, dword ptr [ebp - 4]
1002ffc5: mov      dword ptr [eax], 0x67452301
1002ffcb: mov      ecx, dword ptr [ebp - 4]
1002ffce: mov      dword ptr [ecx + 4], 0xefcdab89
1002ffd5: mov      edx, dword ptr [ebp - 4]
1002ffd8: mov      dword ptr [edx + 8], 0x98badcfe
1002ffdf: mov      eax, dword ptr [ebp - 4]
1002ffe2: mov      dword ptr [eax + 0xc], 0x10325476
1002ffe9: mov      esp, ebp
1002ffeb: pop      ebp
1002ffec: ret      
1002ffed: int3     
1002ffee: int3     
1002ffef: int3     
1002fff0: push     ebp
1002fff1: mov      ebp, esp
1002fff3: push     ecx
1002fff4: mov      dword ptr [ebp - 4], ecx
1002fff7: mov      eax, dword ptr [ebp + 0xc]
1002fffa: push     eax
1002fffb: mov      ecx, dword ptr [ebp + 8]
1002fffe: push     ecx
1002ffff: mov      ecx, dword ptr [ebp - 4]
10030002: call     0x10030040
10030007: mov      esp, ebp
10030009: pop      ebp
1003000a: ret      8
1003000d: int3     
1003000e: int3     
1003000f: int3     