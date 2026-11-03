#include <stdint.h>
#include <stddef.h>
#include "sm4_tables.h"
static uint32_t rol(uint32_t x, unsigned n) { return (x<<n)|(x>>(32-n)); }
static uint32_t tau(uint32_t x) {
 return ((uint32_t)SBOX[x>>24]<<24)|((uint32_t)SBOX[(x>>16)&255]<<16)|((uint32_t)SBOX[(x>>8)&255]<<8)|SBOX[x&255];
}
static uint32_t be(const uint8_t *p) { return ((uint32_t)p[0]<<24)|((uint32_t)p[1]<<16)|((uint32_t)p[2]<<8)|p[3]; }
static void put(uint8_t *p,uint32_t x) { p[0]=x>>24;p[1]=x>>16;p[2]=x>>8;p[3]=x; }
int sm4_crypt(const uint8_t *src,uint8_t *dst,size_t n,const uint8_t *key,int decrypt) {
 if (!src||!dst||!key||(n&15))return -1;
 uint32_t k[36],r[32];
 for(unsigned i=0;i<4;i++)k[i]=be(key+4*i)^FK[i];
 for(unsigned i=0;i<32;i++) {
  uint32_t t=tau(k[i+1]^k[i+2]^k[i+3]^CK[i]);
  r[i]=k[i+4]=k[i]^t^rol(t,13)^rol(t,23);
 }
 for(size_t pos=0;pos<n;pos+=16) {
  uint32_t x[36];
  for(unsigned i=0;i<4;i++)x[i]=be(src+pos+4*i);
  for(unsigned i=0;i<32;i++) {
   uint32_t t=tau(x[i+1]^x[i+2]^x[i+3]^r[decrypt?31-i:i]);
   x[i+4]=x[i]^t^rol(t,2)^rol(t,10)^rol(t,18)^rol(t,24);
  }
  for(unsigned i=0;i<4;i++)put(dst+pos+4*i,x[35-i]);
 }
 volatile uint32_t *v=k;for(unsigned i=0;i<36;i++)v[i]=0;
 v=r;for(unsigned i=0;i<32;i++)v[i]=0;
 return 0;
}
