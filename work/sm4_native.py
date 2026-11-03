import ctypes
from pathlib import Path
lib=ctypes.CDLL(str(Path(__file__).resolve().parent/'libsm4.dylib'))
fn=lib.sm4_crypt
fn.argtypes=[ctypes.c_void_p,ctypes.c_void_p,ctypes.c_size_t,ctypes.c_void_p,ctypes.c_int]
fn.restype=ctypes.c_int
def crypt(data,key,decrypt=True):
 if len(key)!=16 or len(data)%16:raise ValueError('SM4 requires a 16-byte key and whole blocks')
 dst=ctypes.create_string_buffer(len(data));keybuf=ctypes.create_string_buffer(key)
 try:
  if fn(data,dst,len(data),keybuf,int(decrypt)):raise ValueError('SM4 transform failed')
  return dst.raw
 finally:ctypes.memset(keybuf,0,len(keybuf))
