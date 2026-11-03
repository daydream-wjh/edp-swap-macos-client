100359b0: push     ebp
100359b1: mov      ebp, esp
100359b3: push     ecx
100359b4: mov      dword ptr [ebp - 4], ecx
100359b7: push     1
100359b9: mov      eax, dword ptr [ebp + 0xc]
100359bc: push     eax
100359bd: lea      ecx, [ebp + 8]
100359c0: push     ecx
100359c1: mov      ecx, dword ptr [ebp - 4]
100359c4: call     0x1001dc60
100359c9: mov      esp, ebp
100359cb: pop      ebp
100359cc: ret      8
100359cf: int3     
100359d0: push     ebp
100359d1: mov      ebp, esp
100359d3: push     ecx
100359d4: mov      dword ptr [ebp - 4], ecx
100359d7: mov      eax, dword ptr [ebp + 8]
100359da: push     eax
100359db: call     0x10001970
100359e0: add      esp, 4
100359e3: push     eax
100359e4: mov      ecx, dword ptr [ebp + 0xc]
100359e7: push     ecx
100359e8: mov      edx, dword ptr [ebp + 8]
100359eb: push     edx
100359ec: mov      ecx, dword ptr [ebp - 4]
100359ef: call     0x10035e40
100359f4: mov      esp, ebp
100359f6: pop      ebp
100359f7: ret      8
100359fa: int3     
100359fb: int3     
100359fc: int3     
100359fd: int3     
100359fe: int3     
100359ff: int3     
10035a00: push     ebp
10035a01: mov      ebp, esp
10035a03: sub      esp, 8
10035a06: mov      dword ptr [ebp - 8], ecx
10035a09: lea      ecx, [ebp - 1]
10035a0c: call     0x10010cc0
10035a11: push     eax
10035a12: lea      eax, [ebp - 2]
10035a15: push     eax
10035a16: mov      ecx, dword ptr [ebp - 8]
10035a19: call     0x10035f20
10035a1e: mov      eax, dword ptr [ebp - 8]
10035a21: mov      esp, ebp
10035a23: pop      ebp
10035a24: ret      
10035a25: int3     
10035a26: int3     
10035a27: int3     
10035a28: int3     
10035a29: int3     
10035a2a: int3     
10035a2b: int3     
10035a2c: int3     
10035a2d: int3     
10035a2e: int3     
10035a2f: int3     
10035a30: push     ebp
10035a31: mov      ebp, esp
10035a33: push     -1
10035a35: push     0x10065438
10035a3a: mov      eax, dword ptr fs:[0]
10035a40: push     eax
10035a41: push     ecx
10035a42: mov      eax, dword ptr [0x1008d020]
10035a47: xor      eax, ebp
10035a49: push     eax
10035a4a: lea      eax, [ebp - 0xc]
10035a4d: mov      dword ptr fs:[0], eax
10035a53: mov      dword ptr [ebp - 0x10], ecx
10035a56: mov      dword ptr [ebp - 4], 0
10035a5d: mov      ecx, dword ptr [ebp - 0x10]