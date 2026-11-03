"""Portable arithmetic prototype. No device I/O or authentication logic."""
def mul(a,b):
 r=0
 while b:
  if b&1:r^=a
  a=((a<<1)^ (0x11b if a&128 else 0))&255;b>>=1
 return r
def inv(a):
 if a==0:return 0
 r=1
 for _ in range(254):r=mul(r,a)
 return r
def rot8(a,n):return ((a<<n)|(a>>(8-n)))&255
S=[]
for a in range(256):
 x=inv(a);S.append(x^rot8(x,1)^rot8(x,2)^rot8(x,3)^rot8(x,4)^0x63)
IS=[0]*256
for i,v in enumerate(S):IS[v]=i
def expand(key):
 if len(key)!=16:raise ValueError('AES-128 key must be 16 bytes')
 out=list(key);rc=1
 while len(out)<176:
  t=out[-4:]
  if len(out)%16==0:
   t=[S[x] for x in t[1:]+t[:1]];t[0]^=rc;rc=mul(rc,2)
  for x in t:out.append(out[-16]^x)
 return bytes(out)
def shift(s,inverse=False):
 d=-1 if inverse else 1
 return [s[4*((c+d*r)%4)+r] for c in range(4) for r in range(4)]
def mix(s,inverse=False):
 coeff=[14,11,13,9] if inverse else [2,3,1,1]
 out=[]
 for c in range(4):
  v=s[c*4:c*4+4]
  for r in range(4):
   x=0
   for j in range(4):x^=mul(v[j],coeff[(j-r)%4])
   out.append(x)
 return out
def block(data,keys,decrypt=False):
 if len(data)!=16 or len(keys)!=176:raise ValueError('Invalid block or expanded schedule')
 s=list(data)
 def add(n):
  nonlocal s
  s=[a^b for a,b in zip(s,keys[n*16:n*16+16])]
 if decrypt:
  add(10)
  for n in range(9,0,-1):
   s=[IS[x] for x in shift(s,True)];add(n);s=mix(s,True)
  s=[IS[x] for x in shift(s,True)];add(0)
 else:
  add(0)
  for n in range(1,10):
   s=mix(shift([S[x] for x in s]));add(n)
  s=shift([S[x] for x in s]);add(10)
 return bytes(s)
def offset_transform(data,key,salt,byte_offset,decrypt=True):
 """Candidate driver branch only; not a universal device decryptor."""
 if len(data)%16 or not key or len(salt)!=16:raise ValueError('Invalid input sizes')
 schedule=expand(bytes(salt[i]^key[i%len(key)] for i in range(16)))
 out=bytearray()
 for pos in range(0,len(data),16):
  tweak=((byte_offset+pos)&((1<<64)-1)).to_bytes(8,'little')
  keys=bytes(v^tweak[i%8] for i,v in enumerate(schedule))
  out.extend(block(data[pos:pos+16],keys,decrypt))
 return bytes(out)
