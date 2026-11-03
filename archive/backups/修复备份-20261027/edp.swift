import Foundation

// ============ 基础工具 ============
func u32le(_ b: [UInt8], _ o: Int) -> UInt32 {
    return UInt32(b[o]) | (UInt32(b[o+1]) << 8) | (UInt32(b[o+2]) << 16) | (UInt32(b[o+3]) << 24)
}
func u64le(_ b: [UInt8], _ o: Int) -> UInt64 {
    var v: UInt64 = 0
    for i in (0..<8).reversed() { v = (v << 8) | UInt64(b[o+i]) }
    return v
}
func putU32le(_ b: inout [UInt8], _ o: Int, _ v: UInt32) {
    b[o] = UInt8(v & 0xff); b[o+1] = UInt8((v >> 8) & 0xff)
    b[o+2] = UInt8((v >> 16) & 0xff); b[o+3] = UInt8((v >> 24) & 0xff)
}
func u16le(_ b: [UInt8], _ o: Int) -> UInt16 { return UInt16(b[o]) | (UInt16(b[o+1]) << 8) }
func putU16le(_ b: inout [UInt8], _ o: Int, _ v: UInt16) {
    b[o] = UInt8(v & 0xff); b[o+1] = UInt8((v >> 8) & 0xff)
}

// ============ CRC32 ============
let crcTable: [UInt32] = {
    var t = [UInt32](repeating: 0, count: 256)
    for i in 0..<256 {
        var c = UInt32(i)
        for _ in 0..<8 { c = (c & 1) != 0 ? (0xEDB88320 ^ (c >> 1)) : (c >> 1) }
        t[i] = c
    }
    return t
}()
func crc32(_ data: [UInt8], _ initValue: UInt32 = 0xffffffff) -> UInt32 {
    var c = initValue
    for b in data { c = crcTable[Int((c ^ UInt32(b)) & 0xff)] ^ (c >> 8) }
    return c
}
// 参考实现用的是「寄存器从 0 起算、不做最终异或」的 CRC32 变体
func edpCRC(_ data: [UInt8]) -> UInt32 { return crc32(data, 0) }

// ============ MD5 ============
func md5(_ message: [UInt8]) -> [UInt8] {
    let s: [UInt32] = [7,12,17,22,7,12,17,22,7,12,17,22,7,12,17,22,
                       5,9,14,20,5,9,14,20,5,9,14,20,5,9,14,20,
                       4,11,16,23,4,11,16,23,4,11,16,23,4,11,16,23,
                       6,10,15,21,6,10,15,21,6,10,15,21,6,10,15,21]
    var K = [UInt32](repeating: 0, count: 64)
    for i in 0..<64 { K[i] = UInt32(truncatingIfNeeded: Int64(abs(sin(Double(i + 1))) * 4294967296.0)) }
    var a0: UInt32 = 0x67452301, b0: UInt32 = 0xefcdab89, c0: UInt32 = 0x98badcfe, d0: UInt32 = 0x10325476
    var msg = message
    let bitLen = UInt64(message.count) * 8
    msg.append(0x80)
    while msg.count % 64 != 56 { msg.append(0) }
    for i in 0..<8 { msg.append(UInt8((bitLen >> (8 * UInt64(i))) & 0xff)) }
    var offset = 0
    while offset < msg.count {
        var M = [UInt32](repeating: 0, count: 16)
        for i in 0..<16 { M[i] = u32le(msg, offset + i * 4) }
        var A = a0, B = b0, C = c0, D = d0
        for i in 0..<64 {
            var F: UInt32, g: Int
            if i < 16 { F = (B & C) | (~B & D); g = i }
            else if i < 32 { F = (D & B) | (~D & C); g = (5 * i + 1) % 16 }
            else if i < 48 { F = B ^ C ^ D; g = (3 * i + 5) % 16 }
            else { F = C ^ (B | ~D); g = (7 * i) % 16 }
            F = F &+ A &+ K[i] &+ M[g]
            A = D; D = C; C = B
            B = B &+ rotl(F, s[i])
        }
        a0 = a0 &+ A; b0 = b0 &+ B; c0 = c0 &+ C; d0 = d0 &+ D
        offset += 64
    }
    var out = [UInt8]()
    for v in [a0, b0, c0, d0] { out.append(UInt8(v & 0xff)); out.append(UInt8((v >> 8) & 0xff)); out.append(UInt8((v >> 16) & 0xff)); out.append(UInt8((v >> 24) & 0xff)) }
    return out
}
func rotl(_ x: UInt32, _ n: UInt32) -> UInt32 { return (x << n) | (x >> (32 - n)) }

// ============ AES-128（用于元数据的偏移扰动变换）============
let aesSbox: [UInt8] = [0x63,0x7c,0x77,0x7b,0xf2,0x6b,0x6f,0xc5,0x30,0x01,0x67,0x2b,0xfe,0xd7,0xab,0x76,0xca,0x82,0xc9,0x7d,0xfa,0x59,0x47,0xf0,0xad,0xd4,0xa2,0xaf,0x9c,0xa4,0x72,0xc0,0xb7,0xfd,0x93,0x26,0x36,0x3f,0xf7,0xcc,0x34,0xa5,0xe5,0xf1,0x71,0xd8,0x31,0x15,0x04,0xc7,0x23,0xc3,0x18,0x96,0x05,0x9a,0x07,0x12,0x80,0xe2,0xeb,0x27,0xb2,0x75,0x09,0x83,0x2c,0x1a,0x1b,0x6e,0x5a,0xa0,0x52,0x3b,0xd6,0xb3,0x29,0xe3,0x2f,0x84,0x53,0xd1,0x00,0xed,0x20,0xfc,0xb1,0x5b,0x6a,0xcb,0xbe,0x39,0x4a,0x4c,0x58,0xcf,0xd0,0xef,0xaa,0xfb,0x43,0x4d,0x33,0x85,0x45,0xf9,0x02,0x7f,0x50,0x3c,0x9f,0xa8,0x51,0xa3,0x40,0x8f,0x92,0x9d,0x38,0xf5,0xbc,0xb6,0xda,0x21,0x10,0xff,0xf3,0xd2,0xcd,0x0c,0x13,0xec,0x5f,0x97,0x44,0x17,0xc4,0xa7,0x7e,0x3d,0x64,0x5d,0x19,0x73,0x60,0x81,0x4f,0xdc,0x22,0x2a,0x90,0x88,0x46,0xee,0xb8,0x14,0xde,0x5e,0x0b,0xdb,0xe0,0x32,0x3a,0x0a,0x49,0x06,0x24,0x5c,0xc2,0xd3,0xac,0x62,0x91,0x95,0xe4,0x79,0xe7,0xc8,0x37,0x6d,0x8d,0xd5,0x4e,0xa9,0x6c,0x56,0xf4,0xea,0x65,0x7a,0xae,0x08,0xba,0x78,0x25,0x2e,0x1c,0xa6,0xb4,0xc6,0xe8,0xdd,0x74,0x1f,0x4b,0xbd,0x8b,0x8a,0x70,0x3e,0xb5,0x66,0x48,0x03,0xf6,0x0e,0x61,0x35,0x57,0xb9,0x86,0xc1,0x1d,0x9e,0xe1,0xf8,0x98,0x11,0x69,0xd9,0x8e,0x94,0x9b,0x1e,0x87,0xe9,0xce,0x55,0x28,0xdf,0x8c,0xa1,0x89,0x0d,0xbf,0xe6,0x42,0x68,0x41,0x99,0x2d,0x0f,0xb0,0x54,0xbb,0x16]
func rotl8(_ x: UInt8, _ n: UInt8) -> UInt8 { return (x << n) | (x >> (8 - n)) }
let aesInvSbox: [UInt8] = {
    var inv = [UInt8](repeating: 0, count: 256)
    for i in 0..<256 { inv[Int(aesSbox[i])] = UInt8(i) }
    return inv
}()
func gmul(_ a: UInt8, _ b: UInt8) -> UInt8 {
    var a = a, b = b, p: UInt8 = 0
    for _ in 0..<8 {
        if (b & 1) != 0 { p ^= a }
        let hi = a & 0x80
        a <<= 1
        if hi != 0 { a ^= 0x1B }
        b >>= 1
    }
    return p
}
func aesExpand(_ key: [UInt8]) -> [UInt8] {
    var w = key
    var rc: UInt8 = 1
    while w.count < 176 {
        var t = Array(w[(w.count - 4)..<w.count])
        if w.count % 16 == 0 {
            t = [t[1], t[2], t[3], t[0]]
            t = t.map { aesSbox[Int($0)] }
            t[0] ^= rc
            rc = gmul(rc, 2)
        }
        for x in t { w.append(w[w.count - 16] ^ x) }
    }
    return w
}
func aesAddRK(_ s: inout [UInt8], _ rk: [UInt8], _ round: Int) {
    for i in 0..<16 { s[i] ^= rk[round * 16 + i] }
}
func aesShift(_ s: [UInt8], _ inverse: Bool) -> [UInt8] {
    let d = inverse ? -1 : 1
    var out = [UInt8](repeating: 0, count: 16)
    for c in 0..<4 { for r in 0..<4 {
        let src = 4 * ((c + d * r + 4) % 4) + r
        out[c * 4 + r] = s[src]
    } }
    return out
}
func aesMix(_ s: [UInt8], _ inverse: Bool) -> [UInt8] {
    let coeff: [UInt8] = inverse ? [14, 11, 13, 9] : [2, 3, 1, 1]
    var out = [UInt8](repeating: 0, count: 16)
    for c in 0..<4 {
        let v = Array(s[c * 4..<c * 4 + 4])
        for r in 0..<4 {
            var x: UInt8 = 0
            for j in 0..<4 { x ^= gmul(v[j], coeff[((j - r) % 4 + 4) % 4]) }
            out[c * 4 + r] = x
        }
    }
    return out
}
func aesEncryptBlock(_ block: [UInt8], _ rk: [UInt8]) -> [UInt8] {
    var s = block
    aesAddRK(&s, rk, 0)
    for round in 1...9 {
        s = s.map { aesSbox[Int($0)] }
        s = aesShift(s, false)
        s = aesMix(s, false)
        aesAddRK(&s, rk, round)
    }
    s = s.map { aesSbox[Int($0)] }
    s = aesShift(s, false)
    aesAddRK(&s, rk, 10)
    return s
}
func aesDecryptBlock(_ block: [UInt8], _ rk: [UInt8]) -> [UInt8] {
    var s = block
    aesAddRK(&s, rk, 10)
    for round in stride(from: 9, through: 1, by: -1) {
        s = s.map { aesInvSbox[Int($0)] }
        s = aesShift(s, true)
        aesAddRK(&s, rk, round)
        s = aesMix(s, true)
    }
    s = s.map { aesInvSbox[Int($0)] }
    s = aesShift(s, true)
    aesAddRK(&s, rk, 0)
    return s
}
func offsetTransform(_ data: [UInt8], key: [UInt8], salt: [UInt8], byteOffset: UInt64, decrypt: Bool) -> [UInt8] {
    var aesKey = [UInt8](repeating: 0, count: 16)
    for i in 0..<16 { aesKey[i] = salt[i] ^ key[i % key.count] }
    let schedule = aesExpand(aesKey)
    var out = [UInt8](); out.reserveCapacity(data.count)
    var pos = 0
    while pos < data.count {
        let tweakVal = byteOffset &+ UInt64(pos)
        var tw = [UInt8](repeating: 0, count: 8)
        for i in 0..<8 { tw[i] = UInt8((tweakVal >> (8 * UInt64(i))) & 0xff) }
        var keys = schedule
        for i in 0..<176 { keys[i] ^= tw[i % 8] }
        let block = Array(data[pos..<pos + 16])
        out += decrypt ? aesDecryptBlock(block, keys) : aesEncryptBlock(block, keys)
        pos += 16
    }
    return out
}

// ============ SM4 ============
let sm4Sbox: [UInt8] = [0xd6,0x90,0xe9,0xfe,0xcc,0xe1,0x3d,0xb7,0x16,0xb6,0x14,0xc2,0x28,0xfb,0x2c,0x05,0x2b,0x67,0x9a,0x76,0x2a,0xbe,0x04,0xc3,0xaa,0x44,0x13,0x26,0x49,0x86,0x06,0x99,0x9c,0x42,0x50,0xf4,0x91,0xef,0x98,0x7a,0x33,0x54,0x0b,0x43,0xed,0xcf,0xac,0x62,0xe4,0xb3,0x1c,0xa9,0xc9,0x08,0xe8,0x95,0x80,0xdf,0x94,0xfa,0x75,0x8f,0x3f,0xa6,0x47,0x07,0xa7,0xfc,0xf3,0x73,0x17,0xba,0x83,0x59,0x3c,0x19,0xe6,0x85,0x4f,0xa8,0x68,0x6b,0x81,0xb2,0x71,0x64,0xda,0x8b,0xf8,0xeb,0x0f,0x4b,0x70,0x56,0x9d,0x35,0x1e,0x24,0x0e,0x5e,0x63,0x58,0xd1,0xa2,0x25,0x22,0x7c,0x3b,0x01,0x21,0x78,0x87,0xd4,0x00,0x46,0x57,0x9f,0xd3,0x27,0x52,0x4c,0x36,0x02,0xe7,0xa0,0xc4,0xc8,0x9e,0xea,0xbf,0x8a,0xd2,0x40,0xc7,0x38,0xb5,0xa3,0xf7,0xf2,0xce,0xf9,0x61,0x15,0xa1,0xe0,0xae,0x5d,0xa4,0x9b,0x34,0x1a,0x55,0xad,0x93,0x32,0x30,0xf5,0x8c,0xb1,0xe3,0x1d,0xf6,0xe2,0x2e,0x82,0x66,0xca,0x60,0xc0,0x29,0x23,0xab,0x0d,0x53,0x4e,0x6f,0xd5,0xdb,0x37,0x45,0xde,0xfd,0x8e,0x2f,0x03,0xff,0x6a,0x72,0x6d,0x6c,0x5b,0x51,0x8d,0x1b,0xaf,0x92,0xbb,0xdd,0xbc,0x7f,0x11,0xd9,0x5c,0x41,0x1f,0x10,0x5a,0xd8,0x0a,0xc1,0x31,0x88,0xa5,0xcd,0x7b,0xbd,0x2d,0x74,0xd0,0x12,0xb8,0xe5,0xb4,0xb0,0x89,0x69,0x97,0x4a,0x0c,0x96,0x77,0x7e,0x65,0xb9,0xf1,0x09,0xc5,0x6e,0xc6,0x84,0x18,0xf0,0x7d,0xec,0x3a,0xdc,0x4d,0x20,0x79,0xee,0x5f,0x3e,0xd7,0xcb,0x39,0x48]
let sm4FK: [UInt32] = [0xa3b1bac6,0x56aa3350,0x677d9197,0xb27022dc]
let sm4CK: [UInt32] = [0x00070e15,0x1c232a31,0x383f464d,0x545b6269,0x70777e85,0x8c939aa1,0xa8afb6bd,0xc4cbd2d9,0xe0e7eef5,0xfc030a11,0x181f262d,0x343b4249,0x50575e65,0x6c737a81,0x888f969d,0xa4abb2b9,0xc0c7ced5,0xdce3eaf1,0xf8ff060d,0x141b2229,0x30373e45,0x4c535a61,0x686f767d,0x848b9299,0xa0a7aeb5,0xbcc3cad1,0xd8dfe6ed,0xf4fb0209,0x10171e25,0x2c333a41,0x484f565d,0x646b7279]
func sm4Tau(_ x: UInt32) -> UInt32 {
    return (UInt32(sm4Sbox[Int((x >> 24) & 0xff)]) << 24) | (UInt32(sm4Sbox[Int((x >> 16) & 0xff)]) << 16) | (UInt32(sm4Sbox[Int((x >> 8) & 0xff)]) << 8) | UInt32(sm4Sbox[Int(x & 0xff)])
}
func be32(_ b: [UInt8], _ o: Int) -> UInt32 {
    return (UInt32(b[o]) << 24) | (UInt32(b[o+1]) << 16) | (UInt32(b[o+2]) << 8) | UInt32(b[o+3])
}
func sm4Crypt(_ data: [UInt8], _ key: [UInt8], _ decrypt: Bool) -> [UInt8] {
    var k = [UInt32](repeating: 0, count: 36)
    var r = [UInt32](repeating: 0, count: 32)
    for i in 0..<4 { k[i] = be32(key, i * 4) ^ sm4FK[i] }
    for i in 0..<32 {
        let t = sm4Tau(k[i+1] ^ k[i+2] ^ k[i+3] ^ sm4CK[i])
        k[i+4] = k[i] ^ t ^ rotl(t, 13) ^ rotl(t, 23)
        r[i] = k[i+4]
    }
    var out = [UInt8](repeating: 0, count: data.count)
    var pos = 0
    var x = [UInt32](repeating: 0, count: 36)
    while pos < data.count {
        for i in 0..<4 { x[i] = be32(data, pos + i * 4) }
        for i in 0..<32 {
            let t = sm4Tau(x[i+1] ^ x[i+2] ^ x[i+3] ^ r[decrypt ? 31 - i : i])
            x[i+4] = x[i] ^ t ^ rotl(t, 2) ^ rotl(t, 10) ^ rotl(t, 18) ^ rotl(t, 24)
        }
        for i in 0..<4 {
            let v = x[35 - i]
            out[pos + i * 4] = UInt8((v >> 24) & 0xff)
            out[pos + i * 4 + 1] = UInt8((v >> 16) & 0xff)
            out[pos + i * 4 + 2] = UInt8((v >> 8) & 0xff)
            out[pos + i * 4 + 3] = UInt8(v & 0xff)
        }
        pos += 16
    }
    return out
}

// ============ 设备与文件 I/O ============
func preadAll(_ fd: Int32, _ n: Int, _ off: UInt64) -> [UInt8] {
    var buf = [UInt8](repeating: 0, count: n)
    var got = 0
    while got < n {
        let r = buf.withUnsafeMutableBytes { pread(fd, $0.baseAddress!.advanced(by: got), n - got, off_t(off) + off_t(got)) }
        if r <= 0 { break }
        got += r
    }
    if got != n { return Array(buf[0..<got]) }
    return buf
}
@discardableResult
func pwriteAll(_ fd: Int32, _ data: [UInt8], _ off: UInt64) -> Bool {
    var done = 0
    while done < data.count {
        let r = data.withUnsafeBytes { pwrite(fd, $0.baseAddress!.advanced(by: done), data.count - done, off_t(off) + off_t(done)) }
        if r <= 0 { return false }
        done += r
    }
    return true
}

// 多核并行 SM4（大块数据提速数倍）
// 阈值不能太高：DeviceReader 按 1MB 块解密设备数据，若阈值是 2MB 就只有单线程，
// 读盘/挂载会被解密速度（约 114MB/s）卡住，而不是 U 盘带宽。
func sm4CryptFast(_ data: [UInt8], _ key: [UInt8], _ decrypt: Bool) -> [UInt8] {
    let n = ProcessInfo.processInfo.activeProcessorCount
    if data.count < 256 * 1024 || n < 2 { return sm4Crypt(data, key, decrypt) }
    let chunk = (data.count / n / 16) * 16
    if chunk < 16 { return sm4Crypt(data, key, decrypt) }
    var out = [UInt8](repeating: 0, count: data.count)
    let chunks = (data.count + chunk - 1) / chunk
    out.withUnsafeMutableBytes { ob in
        data.withUnsafeBytes { ib in
            let oPtr = ob.baseAddress!.assumingMemoryBound(to: UInt8.self)
            let iPtr = ib.baseAddress!.assumingMemoryBound(to: UInt8.self)
            DispatchQueue.concurrentPerform(iterations: chunks) { idx in
                let start = idx * chunk
                let len = min(chunk, data.count - start)
                let sub = Array(UnsafeBufferPointer(start: iPtr + start, count: len))
                let enc = sm4Crypt(sub, key, decrypt)
                (oPtr + start).update(from: enc, count: len)
            }
        }
    }
    return out
}

// 打开文件并禁用页缓存（避免大镜像读写的文件页算进进程内存）
func fdNoCache(_ path: String, write: Bool = false) -> Int32? {
    let fd = open(path, write ? O_RDWR : O_RDONLY)
    if fd < 0 { return nil }
    // 注：不使用 F_NOCACHE——它会让每次保存都从 SSD 重读整盘镜像（实测慢 5 倍）。
    // 内存占用靠 pread 到固定缓冲区控制，不会把文件页映射进进程。
    return fd
}

final class RawFile {
    let fd: Int32
    init?(_ path: String, write: Bool = false) {
        guard let f = fdNoCache(path, write: write) else { return nil }
        fd = f
    }
    deinit { close(fd) }
    func read(_ off: UInt64, _ n: Int) -> [UInt8] { return preadAll(fd, n, off) }
    @discardableResult func write(_ data: [UInt8], _ off: UInt64) -> Bool { return pwriteAll(fd, data, off) }
    func synchronize() { fsync(fd) }
}

// ============ 元数据解析 ============
struct Volume {
    var record: [UInt8]
    var offset: UInt64
    var size: UInt64
    var algorithm: UInt8
    var key: [UInt8]
}

func decodeVolume(_ fd: Int32, totalSize: UInt64) throws -> Volume {
    let head = preadAll(fd, 32768, 0)
    guard head.count == 32768 else { throw Err("读取设备元数据不完整") }
    var s = Array(head[2048..<2560])
    var digits = ""
    var i = 0
    guard s[0] == 0x24, s[1] == 0x24, s[2] == 0x24 else { throw Err("设备元数据标记缺失") }
    i = 3
    while i < s.count, s[i] >= 0x30, s[i] <= 0x39 { digits.append(Character(UnicodeScalar(s[i]))); i += 1 }
    guard i + 2 < s.count, s[i] == 0x24, s[i+1] == 0x24, s[i+2] == 0x24, let v = UInt32(digits) else { throw Err("设备元数据头无法识别") }
    var mask = UInt16(truncatingIfNeeded: (v & 0xffff) ^ (v >> 16))
    for k in 0..<244 {
        let o = 24 + k * 2
        putU16le(&s, o, u16le(s, o) ^ mask)
        mask = UInt16(truncatingIfNeeded: (UInt32(mask) + 255 - UInt32(k)) & 0xffff)
    }
    let h = Array(s[24..<71])
    guard u32le(h, 0) == (v ^ 0x88888888) else { throw Err("设备元数据头校验失败") }
    guard Array(h[33..<37]) == Array("LLGB".utf8) else { throw Err("设备元数据标识不匹配") }
    let salt = Array("EDPSECDISK200709".utf8)
    let back = Array(head[11*512..<12*512])
    guard Array(back[0..<4]) == Array("DRKB".utf8) else { throw Err("缺少设备标识记录") }
    var material = Array(back[0..<256])
    material += Array("0dd8".utf8)
    material += Array("2005".utf8)
    for k in 0..<8 { material.append(UInt8((totalSize >> (8 * UInt64(k))) & 0xff)) }
    var key4 = [UInt8](repeating: 0, count: 4)
    putU32le(&key4, 0, edpCRC(material))
    let decoded = offsetTransform(Array(back[256..<512]), key: key4, salt: salt, byteOffset: 0, decrypt: true)
    guard Array(decoded[0..<4]) == Array("PDKB".utf8) else { throw Err("设备标识记录校验失败") }
    var identityBytes: [UInt8] = []
    for b in decoded[4...] { if b == 0 { break }; identityBytes.append(b) }
    let identity = String(bytes: identityBytes, encoding: .utf8)?.lowercased() ?? ""
    guard !identity.isEmpty else { throw Err("设备标识为空") }
    let start = UInt64(h[43]) * 512
    let length = UInt64(h[44]) * 512
    guard length == 512, start + length <= UInt64(head.count) else { throw Err("暂不支持该元数据布局") }
    var key4b = [UInt8](repeating: 0, count: 4)
    putU32le(&key4b, 0, edpCRC(Array(identity.utf8)))
    let table = offsetTransform(Array(head[Int(start)..<Int(start) + 512]), key: key4b, salt: salt, byteOffset: 0, decrypt: true)
    guard Array(table[0..<4]) == Array("EDPF".utf8) else { throw Err("分区记录标记无效") }
    guard (u16le(table, 288) ^ 0x88) == 0x206 else { throw Err("分区记录版本不匹配") }
    var chosen: [UInt8]? = nil
    for k in 0..<3 {
        let r = Array(table[k*96..<(k+1)*96])
        guard Array(r[0..<4]) == Array("EDPF".utf8) else { throw Err("分区记录标记无效") }
        let kind = u32le(r, 12)
        let sector = u64le(r, 24)
        let n = u64le(r, 40)
        guard sector * 512 + n <= totalSize, n % 512 == 0 else { throw Err("分区边界无效") }
        if kind == 2 { chosen = r }
    }
    guard let r = chosen, r[88] == 2 else { throw Err("暂不支持这支盘的交换区算法") }
    return Volume(record: r, offset: u64le(r, 24) * 512, size: u64le(r, 40), algorithm: r[88], key: [])
}

func gbkBytes(_ s: String) -> [UInt8]? {
    let enc = CFStringConvertEncodingToNSStringEncoding(CFStringEncoding(CFStringEncodings.GB_18030_2000.rawValue))
    guard let d = s.data(using: String.Encoding(rawValue: enc)) else { return nil }
    return Array(d)
}

func unlockVolume(_ vol: inout Volume, password: String) throws {
    guard let p = gbkBytes(password), !p.isEmpty, p.count <= 20 else { throw Err("此版本客户端要求密码为 1–20 字节") }
    guard edpCRC(p) == u32le(vol.record, 48) else { throw Err("交换区密码校验未通过；未向设备提交口令") }
    let key = sm4Crypt(Array(vol.record[56..<72]), md5(p), true)
    guard edpCRC(key) == u32le(vol.record, 52) else { throw Err("密钥校验未通过，已停止") }
    vol.key = key
}

// ============ exFAT 布局 ============
final class ExfatLayout {
    var heap: UInt64 = 0, cs: UInt64 = 0, count: UInt64 = 0, root: UInt32 = 0
    var bitmap: [UInt8] = []
    var fat: UInt64 = 0
    let size: UInt64
    let readFn: (UInt64, Int) -> [UInt8]
    init(read: @escaping (UInt64, Int) -> [UInt8], size: UInt64) throws {
        self.readFn = read; self.size = size
        let b = read(0, 512)
        guard b.count == 512, Array(b[3..<11]) == Array("EXFAT   ".utf8) else { throw Err("exFAT signature missing") }
        let bs = UInt64(1) << UInt64(b[108]); let spc = UInt64(1) << UInt64(b[109])
        cs = bs * spc
        fat = UInt64(u32le(b, 80)) * bs
        heap = UInt64(u32le(b, 88)) * bs
        count = UInt64(u32le(b, 92))
        root = u32le(b, 96)
        guard bs == 512, cs <= 32*1024*1024, heap + count*cs <= size, heap <= 256*1024*1024 else { throw Err("Unsupported or invalid exFAT geometry") }
        guard b[110] == 1 else { throw Err("Multiple FATs are not supported") }
        var seen = Set<UInt32>(); var c = root; var bm: (UInt32, UInt64)? = nil
        while !seen.contains(c) && seen.count < 128 {
            seen.insert(c)
            let block = read(clusterOffset(c), Int(cs))
            var o = 0
            while o + 32 <= block.count {
                let e = Array(block[o..<o+32])
                if e[0] == 0x81 && (e[1] & 1) == 0 {
                    bm = (u32le(e, 20), u64le(e, 24)); break
                }
                o += 32
            }
            if bm != nil { break }
            c = nextCluster(c)
            if c >= 0xfffffff8 { break }
        }
        guard let bmi = bm, bmi.1 >= (count + 7)/8, bmi.1 <= 32*1024*1024 else { throw Err("Valid allocation bitmap not found") }
        var c2 = bmi.0; var n = bmi.1; var seen2 = Set<UInt32>()
        while n > 0 {
            guard !seen2.contains(c2) else { throw Err("Allocation bitmap cycle") }
            seen2.insert(c2)
            let take = min(n, cs)
            bitmap += read(clusterOffset(c2), Int(take))
            n -= take
            if n > 0 { c2 = nextCluster(c2) }
        }
    }
    func clusterOffset(_ c: UInt32) -> UInt64 {
        return heap + (UInt64(c) - 2) * cs
    }
    func nextCluster(_ c: UInt32) -> UInt32 {
        let b = readFn(fat + UInt64(c) * 4, 4)
        return b.count == 4 ? u32le(b, 0) : 0xffffffff
    }
    func used(_ c: UInt32) -> Bool {
        let idx = Int((UInt64(c) - 2) / 8)
        guard idx < bitmap.count else { return false }
        return (bitmap[idx] & (1 << UInt8((UInt64(c) - 2) % 8))) != 0
    }
    func ranges() -> [(UInt64, UInt64)] {
        var out: [(UInt64, UInt64)] = [(0, heap)]
        var start: UInt64? = nil
        var c: UInt64 = 2
        while c < count + 2 {
            let u = used(UInt32(c))
            if u && start == nil { start = c }
            if !u && start != nil {
                out.append((clusterOffset(UInt32(start!)), (c - start!) * cs)); start = nil
            }
            c += 1
        }
        if let s = start { out.append((clusterOffset(UInt32(s)), (count + 2 - s) * cs)) }
        return out
    }
}

struct Err: Error, CustomStringConvertible {
    let msg: String
    init(_ m: String) { msg = m }
    var description: String { msg }
}

// ============ 子进程 ============
func run(_ path: String, _ args: [String]) -> (Int32, Data, Data) {
    let p = Process(); p.executableURL = URL(fileURLWithPath: path)
    p.arguments = args
    let o = Pipe(), e = Pipe(); p.standardOutput = o; p.standardError = e
    do { try p.run() } catch { return (-1, Data(), Data()) }
    let od = o.fileHandleForReading.readDataToEndOfFile()
    let ed = e.fileHandleForReading.readDataToEndOfFile()
    p.waitUntilExit()
    return (p.terminationStatus, od, ed)
}

// ============ 工作镜像 ============
struct Manifest {
    var imageOffset: UInt64
    var size: UInt64
    var offset: UInt64
}
func manifestPath(_ work: String) -> String { return work + "/manifest.json" }
func writeManifest(_ work: String, _ m: Manifest) {
    let d: [String: Any] = ["image_offset": m.imageOffset, "size": m.size, "exchange_offset": m.offset]
    if let j = try? JSONSerialization.data(withJSONObject: d, options: [.prettyPrinted]) {
        try? j.write(to: URL(fileURLWithPath: manifestPath(work)))
    }
}
func readManifest(_ work: String) -> Manifest? {
    guard let d = FileManager.default.contents(atPath: manifestPath(work)),
          let j = try? JSONSerialization.jsonObject(with: d) as? [String: Any] else { return nil }
    return Manifest(imageOffset: UInt64(j["image_offset"] as? Int ?? 0), size: UInt64(j["size"] as? Int ?? 0), offset: UInt64(j["exchange_offset"] as? Int ?? 0))
}

func decryptChunk(_ raw: [UInt8], _ key: [UInt8]) -> [UInt8] { return sm4Crypt(raw, key, true) }

/// 按 1MB 块解密读取：任意偏移/长度（含 4 字节 FAT 项）都能正确工作
final class DeviceReader {
    let fd: Int32; let base: UInt64; let size: UInt64; let key: [UInt8]
    var cache: [UInt64: [UInt8]] = [:]
    static let chunk: UInt64 = 1024 * 1024
    init(fd: Int32, base: UInt64, size: UInt64, key: [UInt8]) {
        self.fd = fd; self.base = base; self.size = size; self.key = key
    }
    func read(_ off: UInt64, _ n: Int) -> [UInt8] {
        var out = [UInt8](); out.reserveCapacity(n)
        var pos = off
        let end = min(off &+ UInt64(n), size)
        while pos < end {
            let ci = pos / DeviceReader.chunk
            let cs = ci * DeviceReader.chunk
            if cache[ci] == nil {
                let len = min(DeviceReader.chunk, size &- cs)
                if len % 16 != 0 { return out }
                cache[ci] = sm4CryptFast(preadAll(fd, Int(len), base &+ cs), key, true)
                if cache.count > 24, let k = cache.keys.first(where: { $0 != ci }) { cache.removeValue(forKey: k) }
            }
            guard let data = cache[ci], data.count > 0 else { return out }
            let localStart = Int(pos &- cs)
            if localStart >= data.count { break }
            let take = min(Int(end &- pos), data.count - localStart)
            out += data[localStart..<localStart + take]
            ioReadTotal &+= UInt64(take)
            pos &+= UInt64(take)
        }
        return out
    }
}
func encryptChunk(_ raw: [UInt8], _ key: [UInt8]) -> [UInt8] { return sm4Crypt(raw, key, false) }

func buildImage(fd: Int32, vol: Volume, work: String, onProgress: (Int, Int) -> Void) throws -> Manifest {
    let imgPath = work + "/工作镜像.raw"
    let basePath = work + "/基线镜像.raw"
    FileManager.default.createFile(atPath: imgPath, contents: nil, attributes: [.posixPermissions: 0o600])
    guard let out = FileHandle(forWritingAtPath: imgPath) else { throw Err("无法创建工作镜像") }
    defer { try? out.close() }
    let reader = DeviceReader(fd: fd, base: vol.offset, size: vol.size, key: vol.key)
    let boot = reader.read(0, 512)
    let imageOffset = u64le(boot, 64) * 512
    guard imageOffset <= 64*1024*1024 else { throw Err("Unsupported image partition offset") }
    try out.truncate(atOffset: imageOffset + vol.size)
    if imageOffset > 0 {
        var mbr = [UInt8](repeating: 0, count: 512)
        mbr[446+4] = 7
        putU32le(&mbr, 454, UInt32(imageOffset / 512))
        putU32le(&mbr, 458, UInt32(vol.size / 512))
        mbr[510] = 0x55; mbr[511] = 0xAA
        try out.seek(toOffset: 0)
        try out.write(contentsOf: Data(mbr))
    }
    let layout = try ExfatLayout(read: { o, n in reader.read(o, n) }, size: vol.size)
    var total = 0
    for (_, n) in layout.ranges() { total += Int(n) }
    var done = 0
    for (start, n) in layout.ranges() {
        var off = start
        while off < start + n {
            let take = min(UInt64(1024*1024), start + n - off)
            let plain = reader.read(off, Int(take))
            if ProcessInfo.processInfo.environment["EDP_DEBUG"] != nil {
                let nz = plain.reduce(0) { $0 + ($1 != 0 ? 1 : 0) }
                log("build off=\(off) take=\(take) got=\(plain.count) nonzero=\(nz)")
            }
            try out.seek(toOffset: imageOffset + off)
            try out.write(contentsOf: Data(plain))
            done += Int(take); onProgress(done, total)
            off += take
        }
    }
    try out.synchronize()
    // 基线镜像（原子安装：中断也不会留下缺失或残缺的基线）
    try installBaseline(from: imgPath, to: basePath)
    return Manifest(imageOffset: imageOffset, size: vol.size, offset: vol.offset)
}

func mountImage(_ imgPath: String) throws -> (whole: String, volume: String, mountPoint: String) {
    let r = run("/usr/bin/hdiutil", ["attach", "-imagekey", "diskimage-class=CRawDiskImage", "-nomount", "-noautofsck", "-plist", imgPath])
    guard r.0 == 0 else { throw Err("无法挂载工作镜像") }
    guard let plist = try? PropertyListSerialization.propertyList(from: r.1, options: [], format: nil) as? [String: Any],
          let ents = plist["system-entities"] as? [[String: Any]] else { throw Err("无法解析挂载结果") }
    var devs: [String] = [], vols: [String] = []
    for e in ents {
        if let d = e["dev-entry"] as? String { devs.append(d) }
        if (e["volume-kind"] as? String) == "exfat", let d = e["dev-entry"] as? String { vols.append(d) }
    }
    guard vols.count == 1, let whole = devs.min(by: { $0.count < $1.count }) else {
        if let d = devs.first { _ = run("/usr/bin/hdiutil", ["detach", d]) }
        throw Err("工作镜像没有呈现单一 exFAT 卷")
    }
    // 不加 nobrowse：让卷像普通 U 盘一样出现在访达侧边栏/桌面
    let m = run("/usr/sbin/diskutil", ["mount", "-mountOptions", "noatime", vols[0]])
    if m.0 != 0 {
        _ = run("/usr/bin/hdiutil", ["detach", whole])
        throw Err("macOS 无法挂载工作镜像")
    }
    let info = run("/usr/sbin/diskutil", ["info", "-plist", vols[0]])
    var mp = ""
    if let pl = try? PropertyListSerialization.propertyList(from: info.1, options: [], format: nil) as? [String: Any] {
        mp = pl["MountPoint"] as? String ?? ""
    }
    return (whole, vols[0], mp)
}

func detachImage(_ whole: String, _ volume: String) throws {
    let u = run("/usr/sbin/diskutil", ["unmount", volume])
    if u.0 != 0 { throw Err("工作区仍被占用，请关闭打开的文件后再保存；未强制卸载") }
    _ = run("/usr/bin/hdiutil", ["detach", whole])
}

// ============ 卷级刷盘（关键：不卸载也能读到最新数据）============
@_silgen_name("sync_volume_np")
func edp_sync_volume_np(_ path: UnsafePointer<CChar>, _ flags: Int32) -> Int32

func flushVolume(_ mountPoint: String) -> Int32 {
    return mountPoint.withCString { edp_sync_volume_np($0, 0x01 | 0x02) }   // FULLSYNC | WAIT
}

// ============ 文件系统事件监视（写入即保存）============
import CoreServices

final class FlagBox {
    private let lock = NSLock()
    private var v = false
    func set() { lock.lock(); v = true; lock.unlock() }
    func take() -> Bool { lock.lock(); let r = v; v = false; lock.unlock(); return r }
}

private func edpFSEventsCallback(_ streamRef: ConstFSEventStreamRef,
                                 _ info: UnsafeMutableRawPointer?,
                                 _ numEvents: Int,
                                 _ paths: UnsafeMutableRawPointer,
                                 _ flags: UnsafePointer<FSEventStreamEventFlags>,
                                 _ ids: UnsafePointer<FSEventStreamEventId>) {
    guard let info = info else { return }
    // 忽略系统自身产生的噪音（不触发保存）
    if numEvents > 0 {
        let arr = paths.assumingMemoryBound(to: UnsafePointer<CChar>?.self)
        var useful = false
        for k in 0..<numEvents {
            if let c = arr[k] {
                let p = String(cString: c)
                if p.contains("/.Spotlight-V100") || p.contains("/.fseventsd") || p.contains("/.Trashes") { continue }
                useful = true; break
            }
        }
        if !useful { return }
    }
    Unmanaged<FlagBox>.fromOpaque(info).takeUnretainedValue().set()
}

final class FSMonitor {
    let box = FlagBox()
    private var stream: FSEventStreamRef?
    private let queue = DispatchQueue(label: "edp.fsevents")
    init(path: String) {
        var ctx = FSEventStreamContext(version: 0,
                                       info: Unmanaged.passUnretained(box).toOpaque(),
                                       retain: nil, release: nil, copyDescription: nil)
        let paths = [path] as CFArray
        let flags = UInt32(kFSEventStreamCreateFlagFileEvents
                           | kFSEventStreamCreateFlagNoDefer
                           | kFSEventStreamCreateFlagWatchRoot)
        stream = FSEventStreamCreate(nil, edpFSEventsCallback, &ctx, paths,
                                     FSEventStreamEventId(kFSEventStreamEventIdSinceNow), 0.1, flags)
        if let st = stream {
            FSEventStreamSetDispatchQueue(st, queue)
            if !FSEventStreamStart(st) { stream = nil }
        }
        log("FSEvents 监视: " + (stream == nil ? "不可用，回退到定期检查" : "已启动"))
    }
    func stop() {
        if let st = stream {
            FSEventStreamStop(st); FSEventStreamInvalidate(st); FSEventStreamRelease(st)
        }
        stream = nil
    }
}

/// 快速校验：只比对元数据区 + 跨数据区的采样窗口；匹配则视为未变化，用于加速挂载
func quickVerify(fd: Int32, vol: Volume, work: String, m: Manifest) -> Bool {
    guard let base = RawFile(work + "/基线镜像.raw") else { return false }
    guard let layout = try? ExfatLayout(read: { o, n in base.read(m.imageOffset + o, n) }, size: vol.size) else { return false }
    let reader = DeviceReader(fd: fd, base: vol.offset, size: vol.size, key: vol.key)
    func same(_ off: UInt64, _ len: Int) -> Bool {
        if len <= 0 { return true }
        let b = base.read(m.imageOffset + off, len)
        let d = reader.read(off, len)
        return b.count == len && d.count == len && b == d
    }
    // 元数据区（引导扇区 + FAT 区）
    var off: UInt64 = 0
    while off < layout.heap {
        let take = Int(min(4 * 1024 * 1024, layout.heap - off))
        if !same(off, take) { return false }
        off += UInt64(take)
    }
    // 根目录簇
    if !same(layout.clusterOffset(layout.root), Int(layout.cs)) { return false }
    // 数据区：跨所有已用区间取 32 个 256KB 采样窗口
    var ranges: [(UInt64, UInt64)] = []
    for (s, n) in layout.ranges() where s >= layout.heap { ranges.append((s, n)) }
    let total = ranges.reduce(UInt64(0)) { $0 + $1.1 }
    if total > 0 {
        let win: UInt64 = 256 * 1024
        for k in 0..<32 {
            let pos = total * UInt64(k) / 32
            var cum: UInt64 = 0
            for (s, n) in ranges {
                if pos < cum + n {
                    let at = s + (pos - cum)
                    if !same(at, Int(min(win, s + n - at))) { return false }
                    break
                }
                cum += n
            }
        }
    }
    return true
}

// ============ 工作镜像摘要（自动保存用）============
func imageDigest(_ path: String, _ m: Manifest) -> UInt32? {
    guard let fh = RawFile(path) else { return nil }
    guard let layout = try? ExfatLayout(read: { o, n in fh.read(m.imageOffset + o, n) }, size: m.size) else { return nil }
    var d: UInt32 = 0
    for (start, n) in layout.ranges() {
        var off = start
        while off < start + n {
            let take = UInt64(min(1024*1024, start + n - off))
            let chunk = fh.read(m.imageOffset + off, Int(take))
            if chunk.isEmpty { break }
            d = crc32(chunk, d)
            off += take
        }
    }
    return d
}

// ============ 写回（批量、轻量日志、进度）============
struct Journal {
    var path: String
    var offsets: [UInt64]
}

func journalDir(_ work: String) -> String { return work + "/回滚记录" }

func writeJournal(_ work: String, _ offsets: [UInt64]) throws -> String {
    let d = journalDir(work)
    try? FileManager.default.createDirectory(atPath: d, withIntermediateDirectories: true)
    let f = DateFormatter(); f.dateFormat = "yyyyMMdd-HHmmss"
    let name = "\(d)/\(f.string(from: Date()))-\(Int(Date().timeIntervalSince1970 * 1000) % 100000).jrn"
    var data = Data("EDPJRN02".utf8)
    var cnt = UInt32(offsets.count)
    withUnsafeBytes(of: &cnt) { data.append(contentsOf: $0) }
    for o in offsets { var v = o; withUnsafeBytes(of: &v) { data.append(contentsOf: $0) } }
    try data.write(to: URL(fileURLWithPath: name), options: [.atomic])
    fsyncPath(name)   // 日志必须先于设备写入落盘
    fsyncPath(d)
    return name
}

func readJournal(_ path: String) -> [UInt64]? {
    guard let data = FileManager.default.contents(atPath: path), data.count >= 12,
          String(data: data[0..<8], encoding: .ascii) == "EDPJRN02" else { return nil }
    var cnt: UInt32 = 0
    _ = withUnsafeMutableBytes(of: &cnt) { data.copyBytes(to: $0, from: 8..<12) }
    guard data.count >= 12 + Int(cnt) * 8 else { return nil }
    var out = [UInt64](); out.reserveCapacity(Int(cnt))
    for i in 0..<Int(cnt) {
        var v: UInt64 = 0
        _ = withUnsafeMutableBytes(of: &v) { data.copyBytes(to: $0, from: 12 + i * 8 ..< 20 + i * 8) }
        out.append(v)
    }
    return out
}

/// 增量同步：把 U 盘上与基线不同的扇区拉进工作镜像（比整盘重建快得多）
func incrementalResync(fd: Int32, vol: Volume, work: String, m: Manifest) throws -> Int {
    let imgPath = work + "/工作镜像.raw", basePath = work + "/基线镜像.raw"
    guard let img = RawFile(imgPath, write: true), let base = RawFile(basePath) else { throw Err("缺少工作镜像或基线镜像") }
    let layout = try ExfatLayout(read: { o, n in base.read(m.imageOffset + o, n) }, size: vol.size)
    let reader = DeviceReader(fd: fd, base: vol.offset, size: vol.size, key: vol.key)
    var fixed = 0
    for (start, n) in layout.ranges() {
        var off = start
        while off < start + n {
            let take = UInt64(min(1024*1024, start + n - off))
            let b = base.read(m.imageOffset + off, Int(take))
            let d = reader.read(off, Int(take))
            if b == d { off += take; continue }
            _ = img.write(d, m.imageOffset + off)
            fixed += Int(take) / 512
            off += take
        }
    }
    img.synchronize()
    // 基线对齐到刚同步好的镜像（原子安装）
    try installBaseline(from: imgPath, to: basePath)
    return fixed
}

/// 把升序扇区偏移合并成连续区间（每段最多 maxRun 字节）
func coalesceRuns(_ sectors: [UInt64], maxRun: UInt64 = 4 * 1024 * 1024) -> [(UInt64, Int)] {
    var runs: [(UInt64, Int)] = []
    var i = 0
    while i < sectors.count {
        let start = sectors[i]
        var end = start + 512
        i += 1
        while i < sectors.count, sectors[i] == end, end - start < maxRun { end += 512; i += 1 }
        runs.append((start, Int(end - start)))
    }
    return runs
}

/// 比较两个数组里 [offset, offset+n) 的内容（不产生临时数组）
func sliceEqual(_ a: [UInt8], _ ao: Int, _ b: [UInt8], _ bo: Int, _ n: Int) -> Bool {
    return a.withUnsafeBytes { ap in
        b.withUnsafeBytes { bp in
            memcmp(ap.baseAddress!.advanced(by: ao), bp.baseAddress!.advanced(by: bo), n) == 0
        }
    }
}

/// 尽力把文件或目录刷到磁盘（日志落盘用；失败不致命）
func fsyncPath(_ path: String) {
    let fd = open(path, O_RDONLY)
    if fd >= 0 { _ = fsync(fd); close(fd) }
}

/// 原子替换文件（同目录 rename，POSIX 保证目标要么是旧文件要么是新文件）
func renameReplace(_ from: String, _ to: String) -> Bool {
    return from.withCString { f in to.withCString { t in rename(f, t) == 0 } }
}

/// 原子更新基线镜像：克隆/复制到临时文件后 rename 覆盖，中断不会留下缺失或残缺的基线
func installBaseline(from srcPath: String, to basePath: String) throws {
    let tmp = basePath + ".new"
    try? FileManager.default.removeItem(atPath: tmp)
    let cp = run("/bin/cp", ["-c", srcPath, tmp])
    if cp.0 != 0 {
        try? FileManager.default.removeItem(atPath: tmp)
        do { try FileManager.default.copyItem(atPath: srcPath, toPath: tmp) }
        catch { try? FileManager.default.removeItem(atPath: tmp); throw Err("更新基线失败：\(error)") }
    }
    if !renameReplace(tmp, basePath) {
        let why = String(cString: strerror(errno))
        try? FileManager.default.removeItem(atPath: tmp)
        throw Err("更新基线失败：\(why)")
    }
}

/// 用基线镜像把未完成的写回还原。逐个扇区核对：设备内容必须等于
/// 「写前密文」（基线明文加密）或「写后密文」（工作镜像明文加密）。
/// 任何对不上的扇区都说明设备被外部改动、或日志不属于这支盘——此时停止并保留日志，
/// 绝不明目回滚。回滚写入逐段检查返回值并回读，失败则保留日志等待下次重试。
func restorePendingJournals(fd: Int32, vol: Volume, work: String, m: Manifest) throws -> Int {
    let d = journalDir(work)
    guard let files = try? FileManager.default.contentsOfDirectory(atPath: d) else { return 0 }
    let pending = files.filter { $0.hasSuffix(".jrn") }.sorted()
    if pending.isEmpty { return 0 }
    guard m.size == vol.size, m.offset == vol.offset, let base = RawFile(work + "/基线镜像.raw") else {
        throw Err("发现未完成的写回日志，但基线镜像缺失或与当前交换区不匹配；已停止，未改写设备。如确认 U 盘内容以当前为准，可删除 \(d)/*.jrn 后再启动")
    }
    let img = RawFile(work + "/工作镜像.raw")
    guard let baseLayout = try? ExfatLayout(read: { o, n in base.read(m.imageOffset + o, n) }, size: vol.size) else {
        throw Err("基线镜像无法解析，无法核对回滚日志；已停止，未改写设备")
    }
    // 基线中已分配的扇区才是「有写前内容」的；基线中空闲的簇可能保留着更早的旧数据，
    // 它们本次被重新分配时，盘上内容与基线（零）对不上是正常的。
    func baseUsed(_ off: UInt64) -> Bool {
        if off < baseLayout.heap { return true }
        let c = (off - baseLayout.heap) / baseLayout.cs + 2
        return c < baseLayout.count + 2 && baseLayout.used(UInt32(c))
    }
    var restored = 0
    for f in pending {
        let path = d + "/" + f
        guard var offsets = readJournal(path) else { log("忽略无法解析的回滚日志：\(f)"); continue }
        if offsets.isEmpty {
            try? FileManager.default.moveItem(atPath: path, toPath: path + ".stale")
            continue
        }
        offsets.sort()
        for o in offsets {
            guard vol.size >= 512, o % 512 == 0, o <= vol.size - 512 else {
                throw Err("回滚日志范围无效（\(f)）；已停止，未改写设备")
            }
        }
        let runs = coalesceRuns(offsets)
        // 第一遍：只核对，不动设备
        var rollbackRuns: [(UInt64, Int)] = []
        for (start, len) in runs {
            let beforePlain = base.read(m.imageOffset + start, len)
            guard beforePlain.count == len else {
                throw Err("基线镜像不完整，无法核对回滚日志 \(f)；已停止，未改写设备")
            }
            let beforeC = sm4CryptFast(beforePlain, vol.key, false)
            let actual = preadAll(fd, len, vol.offset + start)
            guard actual.count == len else { throw Err("设备读取不完整，无法核对回滚日志 \(f)；已停止，未改写设备") }
            var afterC: [UInt8]? = nil
            if let img = img {
                let afterPlain = img.read(m.imageOffset + start, len)
                if afterPlain.count == len { afterC = sm4CryptFast(afterPlain, vol.key, false) }
            }
            var anyWritten = false
            var i = 0
            while i < len {
                let off = start + UInt64(i)
                if sliceEqual(actual, i, beforeC, i, 512) {
                    // 仍是写前内容，无需处理
                } else if let ac = afterC, sliceEqual(actual, i, ac, i, 512) {
                    anyWritten = true
                } else if !baseUsed(off) {
                    // 基线中空闲的簇：盘上残留旧数据属正常，视作未写
                } else {
                    throw Err("未完成写回日志与设备内容不符（\(f)，偏移 \(off)）；已停止，未改写设备，日志已保留")
                }
                i += 512
            }
            if anyWritten { rollbackRuns.append((start, len)) }
        }
        if rollbackRuns.isEmpty {
            // 设备已全部处于写前状态：日志过期或此前已回滚
            try? FileManager.default.moveItem(atPath: path, toPath: path + ".stale")
            continue
        }
        // 第二遍：回滚为写前密文，逐段检查写入并回读
        for (start, len) in rollbackRuns {
            let beforePlain = base.read(m.imageOffset + start, len)
            guard beforePlain.count == len else { throw Err("基线镜像不完整，回滚中止；日志已保留：\(f)") }
            let beforeC = sm4CryptFast(beforePlain, vol.key, false)
            guard pwriteAll(fd, beforeC, vol.offset + start) else {
                throw Err("回滚写入失败；日志已保留：\(f)")
            }
            let back = preadAll(fd, len, vol.offset + start)
            guard back == beforeC else { throw Err("回滚回读校验失败；日志已保留：\(f)") }
        }
        fsync(fd)
        _ = fcntl(fd, F_FULLFSYNC)
        try? FileManager.default.moveItem(atPath: path, toPath: path + ".rolledback")
        log("已回滚未完成的写回：\(f)（\(offsets.count) 扇区）")
        restored += 1
    }
    return restored
}

var blockHashCache: [UInt64: UInt32] = [:]

func syncToDevice(fd: Int32, vol: Volume, work: String, m: Manifest, progress: (Int, Int) -> Void) throws -> [String: Any] {
    let imgPath = work + "/工作镜像.raw", basePath = work + "/基线镜像.raw"
    // 保存期间卷仍挂载，用户可继续编辑：先给镜像拍瞬时快照（APFS 克隆），
    // 比对、写盘与基线更新全部基于快照。快照之后的编辑不会混进这次写回，
    // 也不会被「基线=镜像」吞掉，而是留给下一轮自动保存。
    let snapPath = work + "/同步快照.raw"
    try? FileManager.default.removeItem(atPath: snapPath)
    let snapCP = run("/bin/cp", ["-c", imgPath, snapPath])
    if snapCP.0 != 0 {
        try? FileManager.default.removeItem(atPath: snapPath)
        do { try FileManager.default.copyItem(atPath: imgPath, toPath: snapPath) }
        catch { throw Err("无法为工作镜像创建同步快照：\(error)") }
    }
    defer { try? FileManager.default.removeItem(atPath: snapPath) }
    guard let imgR = RawFile(snapPath), let baseR = RawFile(basePath) else { throw Err("缺少工作镜像或基线镜像") }
    let layout = try ExfatLayout(read: { o, n in imgR.read(m.imageOffset + o, n) }, size: vol.size)
    let oldLayout = try ExfatLayout(read: { o, n in baseR.read(m.imageOffset + o, n) }, size: vol.size)
    guard layout.heap == oldLayout.heap, layout.cs == oldLayout.cs, layout.count == oldLayout.count else {
        throw Err("工作镜像几何发生变化，不能同步")
    }
    // 只有基线（写前）已分配的扇区才要求与源盘密文一致；
    // 基线里空闲、这次新分配的簇本来就允许被覆盖。
    func oldUsed(_ off: UInt64) -> Bool {
        if off < oldLayout.heap { return true }
        let c = (off - oldLayout.heap) / oldLayout.cs + 2
        return c < oldLayout.count + 2 && oldLayout.used(UInt32(c))
    }
    let t0 = Date()
    // 1) 比对快照与基线，收集需要写到设备的扇区。
    //    基线中空闲、这次新分配的簇即使内容与基线相同（都是零）也要写：
    //    盘上这些簇可能残留更早的旧数据，不写会让下次校验误判「源盘被外部改动」。
    var changed: [UInt64] = []
    let CH: UInt64 = 4 * 1024 * 1024
    for (start, n) in layout.ranges() {
        var off = start
        while off < start + n {
            let take = UInt64(min(CH, start + n - off))
            let newB = imgR.read(m.imageOffset + off, Int(take))
            if newB.count != Int(take) { throw Err("工作镜像读取不完整，已停止保存") }
            let oldB = baseR.read(m.imageOffset + off, Int(take))
            if oldB.count != Int(take) { throw Err("基线镜像读取不完整，已停止保存") }
            var i = 0
            while i + 512 <= Int(take) {
                let sectorOff = off + UInt64(i)
                if !sliceEqual(newB, i, oldB, i, 512) || !oldUsed(sectorOff) {
                    changed.append(sectorOff)
                }
                i += 512
            }
            off += take
        }
    }

    let t1 = Date()
    if changed.isEmpty { return ["changed_sectors": 0, "changed_bytes": 0, "journal": ""] }
    let runs = coalesceRuns(changed)
    // 2) 先落盘日志（只记偏移，回滚时用基线重算旧密文）
    let jpath = try writeJournal(work, changed)
    // 3) 任何设备写入之前，核对源盘：只读取并比对「基线中已分配」的扇区。
    //    基线中空闲、本次新分配的簇不必读回来（盘上旧内容本来就可以被覆盖），
    //    纯新增大文件时不再为核对把整个文件从 U 盘读一遍。
    for (start, len) in runs {
        var i = 0
        while i < len {
            while i < len, !oldUsed(start + UInt64(i)) { i += 512 }
            if i >= len { break }
            let subStart = start + UInt64(i)
            var subLen = 0
            while i < len, oldUsed(start + UInt64(i)) {
                i += 512
                subLen += 512
            }
            let plain = baseR.read(m.imageOffset + subStart, subLen)
            guard plain.count == subLen else { throw Err("基线镜像不完整，无法核对源盘") }
            let expect = sm4CryptFast(plain, vol.key, false)
            let actual = preadAll(fd, subLen, vol.offset + subStart)
            guard actual.count == subLen else { throw Err("设备读取不完整，已停止保存") }
            var j = 0
            while j < subLen {
                if !sliceEqual(actual, j, expect, j, 512) {
                    try? FileManager.default.moveItem(atPath: jpath, toPath: jpath + ".stale")
                    throw Err("源盘内容已变化，未写入；工作镜像与回滚记录已保留")
                }
                j += 512
            }
        }
    }
    // 4) 批量写入（连续扇区合并为 ≤4MB 的区间，攒 16MB 一批）
    var t2 = Date()
    var t3 = Date()
    var written = 0
    var batch: [(UInt64, [UInt8])] = []
    var batchBytes = 0
    var batchIndex = 0
    var deviceWritesStarted = false
    do {
        for (start, len) in runs {
            let plain = imgR.read(m.imageOffset + start, len)
            if plain.count != len { throw Err("工作镜像读取不完整，已停止保存") }
            let cipher = sm4CryptFast(plain, vol.key, false)
            // 攒成 16MB 一批再写，减少 USB 读写切换（实测能显著提速）
            batch.append((start, cipher))
            batchBytes += len
            if batchBytes >= 16 * 1024 * 1024 {
                deviceWritesStarted = true
                for (o, c) in batch { if !pwriteAll(fd, c, vol.offset + o) { throw Err("写入 U 盘失败") } }
                ioWriteTotal &+= UInt64(batchBytes)
                // 抽样校验：每 4 批校验一次，减少 USB 读写切换
                batchIndex += 1
                if batchIndex % 4 == 0 {
                    for (o, c) in batch {
                        let back = preadAll(fd, c.count, vol.offset + o)
                        if back != c { throw Err("写入后回读不一致（扇区 \(o)）") }
                    }
                }
                batch.removeAll(keepingCapacity: true); batchBytes = 0
            }
            written += len / 512
            progress(written, changed.count)
        }
        if !batch.isEmpty {
            deviceWritesStarted = true
            for (o, c) in batch { if !pwriteAll(fd, c, vol.offset + o) { throw Err("写入 U 盘失败") } }
            ioWriteTotal &+= UInt64(batchBytes)
            for (o, c) in batch {
                let back = preadAll(fd, c.count, vol.offset + o)
                if back != c { throw Err("写入后回读不一致（扇区 \(o)）") }
            }
            batch.removeAll(keepingCapacity: true); batchBytes = 0
        }
        t2 = Date()
        fsync(fd)
        // 关键：强制 USB 设备把内部写缓存刷到闪存（否则拔盘/重新枚举会丢数据）
        // 部分设备不支持 F_FULLFSYNC（ENOTTY），无害，静默忽略
        _ = fcntl(fd, F_FULLFSYNC)
        // 回读校验已在写入时逐块完成
    } catch {
        // 只有真正开始写过设备才需要回滚；回滚同样基于基线，并逐段回读校验
        var rollbackOK = true
        if deviceWritesStarted {
            for (start, len) in runs {
                var plain = baseR.read(m.imageOffset + start, len)
                if plain.count < len { plain += [UInt8](repeating: 0, count: len - plain.count) }
                let before = sm4CryptFast(plain, vol.key, false)
                if !pwriteAll(fd, before, vol.offset + start) || preadAll(fd, len, vol.offset + start) != before {
                    rollbackOK = false
                    break
                }
            }
            fsync(fd)
        }
        if rollbackOK {
            // 关键：标记为已回滚，避免下次启动用「已经变过的基线」再回滚一次导致数据错乱
            try? FileManager.default.moveItem(atPath: jpath, toPath: jpath + ".rolledback")
        } else {
            log("回滚未完成，保留未完成日志，等待下次启动恢复")
        }
        throw error
    }
    t3 = Date()
    log(String(format: "耗时: 比对 %.1fs  写入 %.1fs  校验 %.1fs  改动 %.1fMB",
               t1.timeIntervalSince(t0), t2.timeIntervalSince(t1), t3.timeIntervalSince(t2),
               Double(changed.count) * 512 / 1048576))
    // 5) 写回成功后，把快照（本次实际写入设备的镜像状态）原子替换为基线；
    //    保存期间的新编辑仍在工作镜像里，下一轮会作为差异写回
    if !renameReplace(snapPath, basePath) {
        do { try installBaseline(from: snapPath, to: basePath) }
        catch { throw Err("写回已完成，但基线更新失败（\(error)）；请立即再保存一次以对齐基线") }
    }
    try? FileManager.default.moveItem(atPath: jpath, toPath: jpath + ".done")
    return ["changed_sectors": changed.count, "changed_bytes": changed.count * 512, "journal": (jpath as NSString).lastPathComponent]
}

// ============ 打开原始设备（必要时强制卸载其上的卷）============
func openDeviceRW(_ device: String) -> (Int32, String) {
    var fd = open(device, O_RDWR)
    if fd >= 0 { return (fd, "") }
    let firstErr = String(cString: strerror(errno))
    if errno == EBUSY {
        let name = (device as NSString).lastPathComponent
        let disk = name.hasPrefix("r") ? String(name.dropFirst()) : name
        let r = run("/usr/sbin/diskutil", ["unmountDisk", "force", "/dev/" + disk])
        log("已尝试强制卸载 \(disk)（状态 \(r.0)）")
        usleep(600_000)
        fd = open(device, O_RDWR)
        if fd >= 0 { return (fd, "") }
        return (fd, firstErr + " / " + String(cString: strerror(errno)))
    }
    return (fd, firstErr)
}

// ============ I/O 统计（用于界面显示速度）============
var ioReadTotal: UInt64 = 0
var ioWriteTotal: UInt64 = 0
var lastIoRead: UInt64 = 0
var lastIoWrite: UInt64 = 0
var lastIoSampleAt = Date()
var curReadMBS: Double = 0
var curWriteMBS: Double = 0

// ============ 设备容量 ============
func deviceSize(_ fd: Int32) -> UInt64 {
    let e = lseek(fd, 0, SEEK_END)
    if e > 0 { return UInt64(e) }
    var bs: UInt32 = 0; var bc: UInt64 = 0
    if ioctl(fd, 0x40046418, &bs) == 0, ioctl(fd, 0x40086412, &bc) == 0, bs > 0, bc > 0 {
        return UInt64(bs) * bc
    }
    return 0
}

// ============ 主程序 ============
func log(_ s: String) { FileHandle.standardError.write(Data((s + "\n").utf8)) }

func readPasswordFromStdin() -> String {
    var data = Data()
    while true {
        let chunk = FileHandle.standardInput.availableData
        if chunk.isEmpty { break }
        data.append(chunk)
        if let s = String(data: data, encoding: .utf8), s.contains("\n") { break }
    }
    var s = String(data: data, encoding: .utf8) ?? ""
    while s.hasSuffix("\n") || s.hasSuffix("\r") { s.removeLast() }
    return s
}

func ctlPath(_ work: String) -> String { return work + "/ctrl" }
func pidPath(_ work: String) -> String { return work + "/edp.pid" }
func statePath(_ work: String) -> String { return work + "/state.json" }
func writeState(_ work: String, _ extra: [String: Any]) {
    var d = (try? JSONSerialization.jsonObject(with: Data(contentsOf: URL(fileURLWithPath: statePath(work))))) as? [String: Any] ?? [:]
    for (k, v) in extra { d[k] = v }
    d["updated"] = Int(Date().timeIntervalSince1970)
    if let j = try? JSONSerialization.data(withJSONObject: d, options: [.prettyPrinted, .sortedKeys]) {
        try? j.write(to: URL(fileURLWithPath: statePath(work)))
    }
}

func verifyAgainstDevice(fd: Int32, vol: Volume, work: String, m: Manifest) throws {
    let basePath = work + "/基线镜像.raw"
    guard let base = RawFile(basePath) else { throw Err("缺少基线镜像") }
    let layout = try ExfatLayout(read: { o, n in base.read(m.imageOffset + o, n) }, size: vol.size)
    let devReader2 = DeviceReader(fd: fd, base: vol.offset, size: vol.size, key: vol.key)
    for (start, n) in layout.ranges() {
        var off = start
        while off < start + n {
            let take = UInt64(min(1024*1024, start + n - off))
            let b = base.read(m.imageOffset + off, Int(take))
            let d = devReader2.read(off, Int(take))
            if b != d { throw Err("U 盘与保留的工作镜像不同；未同步镜像已保留，已停止以避免覆盖") }
            off += take
        }
    }
}

func mountCommand(device: String, work: String, sizeArg: UInt64) throws -> Int32 {
    log("STEP open")
    let opened = openDeviceRW(device)
    let fd = opened.0
    guard fd >= 0 else { throw Err("无法以读写方式打开设备：\(opened.1)") }
    var size = sizeArg
    if size == 0 { size = deviceSize(fd) }
    guard size > 0 else { throw Err("无法获取设备容量") }
    log("STEP decode size=\(size)")
    var vol = try decodeVolume(fd, totalSize: size)
    log("STEP password")
    let password = readPasswordFromStdin()
    guard !password.isEmpty else { throw Err("未收到交换区密码") }
    log("STEP unlock")
    try unlockVolume(&vol, password: password)
    log("STEP unlocked")
    var m = readManifest(work) ?? Manifest(imageOffset: 0, size: 0, offset: 0)
    let imgPath = work + "/工作镜像.raw"
    let basePath = work + "/基线镜像.raw"
    let haveWork = FileManager.default.fileExists(atPath: imgPath) && FileManager.default.fileExists(atPath: basePath)
    // 清理上次中断留下的临时文件
    try? FileManager.default.removeItem(atPath: work + "/同步快照.raw")
    try? FileManager.default.removeItem(atPath: basePath + ".new")
    let restored = try restorePendingJournals(fd: fd, vol: vol, work: work, m: readManifest(work) ?? Manifest(imageOffset: 0, size: 0, offset: 0))
    if restored > 0 { log("已恢复 \(restored) 个未完成的写回日志") }
    let justRolledBack = restored > 0
    var reuseOK = false
    if haveWork, m.size == vol.size, m.offset == vol.offset {
        if quickVerify(fd: fd, vol: vol, work: work, m: m) {
            reuseOK = true
            log("快速校验通过，复用工作镜像")
        }
      if !reuseOK {
        do {
            try verifyAgainstDevice(fd: fd, vol: vol, work: work, m: m)
            reuseOK = true
            log("复用已保留的工作镜像")
        } catch {
            // 永远不拦用户：以 U 盘为准。先判断本地是否有未保存修改。
            let imgD = imageDigest(imgPath, m), baseD = imageDigest(basePath, m)
            if imgD == baseD || justRolledBack {
                // 本地没有未保存修改 → 只同步差异扇区（秒级），不整盘重建
                do {
                    let n = try incrementalResync(fd: fd, vol: vol, work: work, m: m)
                    log("已按 U 盘增量同步 \(n) 个扇区（无需整盘重建）")
                    reuseOK = true
                } catch {
                    log("增量同步失败，改为整盘重建：\(error)")
                }
            }
            if !reuseOK && imgD != baseD {
                let f = DateFormatter(); f.dateFormat = "yyyyMMdd-HHmmss"
                let backup = work + "-backup-" + f.string(from: Date())
                try? FileManager.default.createDirectory(atPath: backup, withIntermediateDirectories: true)
                try? FileManager.default.moveItem(atPath: imgPath, toPath: backup + "/工作镜像.raw")
                try? FileManager.default.moveItem(atPath: basePath, toPath: backup + "/基线镜像.raw")
                log("U 盘与旧镜像不一致，已按 U 盘重建；旧镜像（含未保存修改）备份在 \(backup)")
            } else if !reuseOK {
                log("U 盘内容有变化，按 U 盘重建工作镜像")
            }
        }
      }
    }
    if !reuseOK {
        if haveWork {
            // 旧镜像与当前盘不符：改名保留
            let stamp = String(Int(Date().timeIntervalSince1970))
            try? FileManager.default.moveItem(atPath: imgPath, toPath: work + "/旧工作镜像-" + stamp + ".raw")
            try? FileManager.default.moveItem(atPath: basePath, toPath: work + "/旧基线镜像-" + stamp + ".raw")
        }
        log("STEP build")
        m = try buildImage(fd: fd, vol: vol, work: work, onProgress: { d, t in
            if t > 0 { writeState(work, ["phase": "准备工作镜像", "progress": Double(d) / Double(t)]) }
        })
        writeManifest(work, m)
    }
    log("STEP mount image")
    var img = try mountImage(imgPath)
    log("STEP mounted")
    log("MOUNTPOINT=\(img.mountPoint)")
    writeState(work, ["phase": "已挂载", "mountpoint": img.mountPoint, "running": true])
    try? Data("\(getpid())".utf8).write(to: URL(fileURLWithPath: pidPath(work)))
    // 不再自动弹出访达窗口；需要时由脚本菜单或用户自己在访达里打开
    signal(SIGUSR1, { _ in gSave = 1 })
    signal(SIGTERM, { _ in gQuit = 1 })
    signal(SIGINT, { _ in gQuit = 1 })
    signal(SIGHUP, { _ in gQuit = 1 })
    // 自动保存配置（运行中可被 autosave.conf 实时修改）
    var autosaveEnabled = true
    if let c = try? String(contentsOfFile: work + "/autosave", encoding: .utf8),
       c.trimmingCharacters(in: .whitespacesAndNewlines) == "0" { autosaveEnabled = false }
    var autosaveIdle: Double = 1.0
    if let c = try? String(contentsOfFile: work + "/autosave-idle", encoding: .utf8),
       let v = Double(c.trimmingCharacters(in: .whitespacesAndNewlines)), v >= 0.5 { autosaveIdle = v }
    let autosaveDir = work + "/autosave.conf"
    if let c = try? String(contentsOfFile: autosaveDir, encoding: .utf8) {
        for line in c.split(separator: "\n") {
            let t = line.trimmingCharacters(in: .whitespaces)
            if t == "off" || t == "0" { autosaveEnabled = false }
            if t.hasPrefix("idle="), let v = Double(t.dropFirst(5)), v >= 0.5 { autosaveIdle = v }
        }
    }

    var mounted = true
    let mountPoint = img.mountPoint
    let monitor = FSMonitor(path: mountPoint)
    var baselineDigest = imageDigest(basePath, m)
    var lastDigest = imageDigest(imgPath, m)
    var lastChangeAt = Date()
    var lastCheckAt = Date.distantPast
    var lastAutoTry = Date.distantPast
    var lastCfgCheck = Date.distantPast
    var dirty = false
    var firstDirtyAt = Date()
    var autosaveMaxDelay: Double = 60

    func doSave(_ auto: Bool) {
        writeState(work, ["phase": auto ? "检测到修改，正在自动保存到 U 盘" : "正在保存到 U 盘"])
        do {
            // 不卸载：先强制把挂载卷与镜像文件刷到磁盘，再读镜像做差异。
            // （实测 sync() + F_FULLFSYNC 后镜像文件内容即为最新，无需 detach）
            sync()
            if let fh = FileHandle(forUpdatingAtPath: imgPath) {
                _ = fcntl(fh.fileDescriptor, F_NOCACHE)
                fsync(fh.fileDescriptor)
                _ = fcntl(fh.fileDescriptor, F_FULLFSYNC)
                try? fh.close()
            }
            let saveStart = Date()
            let r = try syncToDevice(fd: fd, vol: vol, work: work, m: m, progress: { d, t in
                if t > 0 {
                    let el = Date().timeIntervalSince(saveStart)
                    let mb = Double(d) * 512 / 1048576
                    writeState(work, ["phase": "正在保存到 U 盘",
                                      "save_bytes": Int(d) * 512, "save_total": Int(t) * 512,
                                      "save_mb": mb, "save_total_mb": Double(t) * 512 / 1048576,
                                      "save_mbs": el > 0.05 ? mb / el : 0,
                                      "running": true])
                }
            })
            let saveSecs = Date().timeIntervalSince(saveStart)
            log("SAVE_OK=\(r)")
            let savedMB = (Double((r["changed_bytes"] as? Int) ?? 0) / 1048576)
            writeState(work, ["last_save_mb": savedMB, "last_save_secs": saveSecs,
                              "last_save_mbs": saveSecs > 0.05 ? savedMB / saveSecs : 0,
                              "save_bytes": 0, "save_total": 0, "save_mb": 0,
                              "save_total_mb": 0, "save_mbs": 0])
            baselineDigest = imageDigest(basePath, m)
            lastDigest = baselineDigest
            dirty = false
            writeState(work, ["phase": "已加密保存到 U 盘，并完成写入回读校验",
                              "last_sync": r, "running": true, "auto": auto])
        } catch {
            log("SAVE_ERR=\(error)")
            writeState(work, ["phase": "保存未完成；工作镜像与回滚记录保留", "error": "\(error)", "auto": auto])
            if !mounted {
                if let again = try? mountImage(imgPath) { img = again; mounted = true }
            }
            lastAutoTry = Date().addingTimeInterval(4)
        }
    }

    while gQuit == 0 {
        if let d = FileManager.default.contents(atPath: ctlPath(work)), let s = String(data: d, encoding: .utf8) {
            let cmd = s.trimmingCharacters(in: .whitespacesAndNewlines)
            if !cmd.isEmpty {
                try? Data().write(to: URL(fileURLWithPath: ctlPath(work)))
                if cmd == "save" { gSave = 1 }
                if cmd == "quit" { gQuit = 1 }
                if cmd == "discard" { dirty = false; gQuit = 1 }
                if cmd == "eject" { gEject = 1; gQuit = 1 }
            }
        }
        if gSave != 0 {
            gSave = 0
            doSave(false)
        }
        if mounted && !FileManager.default.fileExists(atPath: mountPoint) {
            // 用户在访达里把卷弹出了：先落盘，再退出，避免丢修改
            log("检测到卷已不在，执行最后一次保存后退出")
            mounted = false
            doSave(true)
            // 注意：这里不自动弹出整块 U 盘——只有用户明确选"保存并弹出"才弹，
            // 避免镜像被外部卸载时把盘也弹掉。
            gQuit = 1
        }
        // 每 2 秒重读一次自动保存开关，改配置立即生效
        if Date().timeIntervalSince(lastCfgCheck) > 2 {
            lastCfgCheck = Date()
            var on = true
            if let c = try? String(contentsOfFile: work + "/autosave.conf", encoding: .utf8) {
                for line in c.split(separator: "\n") {
                    let t = line.trimmingCharacters(in: .whitespaces)
                    if t == "off" || t == "0" { on = false }
                    if t == "on" || t == "1" { on = true }
                    if t.hasPrefix("idle="), let v = Double(t.dropFirst(5)), v >= 0.5 { autosaveIdle = v }
                    if t.hasPrefix("max="), let v = Double(t.dropFirst(4)), v >= 5 { autosaveMaxDelay = v }
                }
            }
            if on != autosaveEnabled {
                autosaveEnabled = on
                writeState(work, ["phase": on ? "自动保存：已开启" : "自动保存：已关闭（请用菜单保存）", "running": true])
                log("自动保存已" + (on ? "开启" : "关闭"))
            }
        }
        // 事件驱动：文件一写入就排队保存（防抖，等这一波写操作收尾）
        if Date().timeIntervalSince(lastIoSampleAt) >= 1.0 {
            let dt = max(Date().timeIntervalSince(lastIoSampleAt), 0.001)
            curReadMBS = Double(ioReadTotal &- lastIoRead) / dt / 1048576
            curWriteMBS = Double(ioWriteTotal &- lastIoWrite) / dt / 1048576
            lastIoRead = ioReadTotal; lastIoWrite = ioWriteTotal; lastIoSampleAt = Date()
            writeState(work, ["read_mbs": curReadMBS, "write_mbs": curWriteMBS,
                              "read_total_mb": Double(ioReadTotal) / 1048576,
                              "write_total_mb": Double(ioWriteTotal) / 1048576])
        }
        if monitor.box.take() {
            if !dirty { firstDirtyAt = Date() }
            dirty = true; lastChangeAt = Date()
        }
        // 兜底：万一事件丢失，每 30 秒比对一次镜像摘要
        if mounted && Date().timeIntervalSince(lastCheckAt) > 30 {
            lastCheckAt = Date()
            if let d = imageDigest(imgPath, m) {
                if d != lastDigest { lastDigest = d; dirty = true; lastChangeAt = Date() }
                if !dirty, let bd = baselineDigest, d != bd { dirty = true }
            }
        }
        // 长时间连续写入时，即使一直在变也每隔 maxDelay 落盘一次
        let sustained = dirty && Date().timeIntervalSince(firstDirtyAt) > autosaveMaxDelay
        if autosaveEnabled && mounted && dirty,
           (Date().timeIntervalSince(lastChangeAt) > autosaveIdle || sustained),
           Date().timeIntervalSince(lastAutoTry) > 1.0 {
            lastAutoTry = Date().addingTimeInterval(4)
            doSave(true)
            lastChangeAt = Date()
        }
        usleep(250_000)
    }
    monitor.stop()
    if dirty && mounted { doSave(true) }
    if mounted {
        var ok = false
        for _ in 0..<5 {
            if (try? detachImage(img.whole, img.volume)) != nil { ok = true; break }
            usleep(800_000)
        }
        if !ok {
            _ = run("/usr/sbin/diskutil", ["unmount", "force", img.volume])
            _ = run("/usr/bin/hdiutil", ["detach", img.whole, "-force"])
            log("退出时强制卸载工作镜像")
        }
    }
    close(fd)
    if gEject != 0 {
        let bn = (device as NSString).lastPathComponent
        let dk = bn.hasPrefix("r") ? String(bn.dropFirst()) : bn
        let ej = run("/usr/sbin/diskutil", ["eject", "/dev/" + dk])
        log("已弹出整盘 \(dk)（状态 \(ej.0)）")
    }
    try? FileManager.default.removeItem(atPath: pidPath(work))
    writeState(work, ["phase": "已卸载", "running": false])
    return 0
}

var gSave: Int32 = 0
var gQuit: Int32 = 0
var gEject: Int32 = 0

func ctlCommand(_ work: String, _ cmd: String) -> Int32 {
    let p = ctlPath(work)
    if !FileManager.default.fileExists(atPath: p) { FileManager.default.createFile(atPath: p, contents: nil) }
    do { try Data((cmd + "\n").utf8).write(to: URL(fileURLWithPath: p)) } catch { log("无法写入控制文件"); return 1 }
    return 0
}

// 入口
let args = CommandLine.arguments
do {
    if args.count >= 4, args[1] == "mount" {
        let sz = args.count >= 5 ? (UInt64(args[4]) ?? 0) : 0
        exit(try mountCommand(device: args[2], work: args[3], sizeArg: sz))
    } else if args.count >= 3, args[1] == "dbg" {
        let fd = open(args[2], O_RDONLY)
        var size = args.count >= 4 ? (UInt64(args[3]) ?? 0) : 0
        if size == 0 { size = deviceSize(fd) }
        let head = preadAll(fd, 32768, 0)
        let salt = Array("EDPSECDISK200709".utf8)
        let back = Array(head[11*512..<12*512])
        var material = Array(back[0..<256])
        material += Array("0dd8".utf8); material += Array("2005".utf8)
        for k in 0..<8 { material.append(UInt8((UInt64(size) >> (8 * UInt64(k))) & 0xff)) }
        print("crc1=", String(format: "%08x", edpCRC(material)))
        var key4 = [UInt8](repeating: 0, count: 4); putU32le(&key4, 0, edpCRC(material))
        let decoded = offsetTransform(Array(back[256..<512]), key: key4, salt: salt, byteOffset: 0, decrypt: true)
        print("decoded[:16]=", decoded[0..<16].map { String(format: "%02x", $0) }.joined())
        exit(0)
    } else if args.count >= 4, args[1] == "verify" {
        let dev = args[2], work = args[3]
        let fd = open(dev, O_RDONLY)
        guard fd >= 0 else { throw Err("无法打开设备（需要授权）") }
        var size = args.count >= 5 ? (UInt64(args[4]) ?? 0) : 0
        if size == 0 { size = deviceSize(fd) }
        var vol = try decodeVolume(fd, totalSize: size)
        let pw = readPasswordFromStdin()
        try unlockVolume(&vol, password: pw)
        guard let m = readManifest(work) else { throw Err("缺少 manifest") }
        guard let base = FileHandle(forReadingAtPath: work + "/基线镜像.raw") else { throw Err("缺少基线镜像") }
        let layout = try ExfatLayout(read: { o, n in
            try? base.seek(toOffset: m.imageOffset + o); return [UInt8](base.readData(ofLength: n))
        }, size: vol.size)
        let reader = DeviceReader(fd: fd, base: vol.offset, size: vol.size, key: vol.key)
        var diffs: [UInt64] = []
        var inHeap = 0
        for (start, n) in layout.ranges() {
            var off = start
            while off < start + n {
                let take = UInt64(min(1024*1024, start + n - off))
                try base.seek(toOffset: m.imageOffset + off); let b = [UInt8](base.readData(ofLength: Int(take)))
                let d = reader.read(off, Int(take))
                var i = 0
                while i + 512 <= Int(take) && i < b.count && i < d.count {
                    if Array(b[i..<i+512]) != Array(d[i..<i+512]) {
                        diffs.append(off + UInt64(i))
                        if off + UInt64(i) < layout.heap { inHeap += 1 }
                    }
                    i += 512
                }
                off += take
            }
        }
        print("差异扇区数: \(diffs.count)  其中前 3MB(FAT区)内: \(inHeap)")
        for o in diffs.prefix(6) {
            try? base.seek(toOffset: m.imageOffset + o)
            let bb = [UInt8](base.readData(ofLength: 32))
            let dd = reader.read(o, 32)
            print("  offset=\(o)  基线:\(bb.map{String(format:"%02x",$0)}.joined())  盘:\(dd.map{String(format:"%02x",$0)}.joined())")
        }
        exit(0)
    } else if args.count >= 2, args[1] == "bench" {
        let key = [UInt8](repeating: 0x5a, count: 16)
        let mb = 64
        let data = [UInt8](repeating: 0x33, count: mb * 1024 * 1024)
        var t = Date()
        let c1 = sm4Crypt(data, key, false)
        let single = Date().timeIntervalSince(t)
        t = Date()
        let c2 = sm4CryptFast(data, key, false)
        let multi = Date().timeIntervalSince(t)
        print(String(format: "单线程 SM4: %.1f MB/s", Double(mb) / single))
        print(String(format: "多核   SM4: %.1f MB/s", Double(mb) / multi))
        print("一致性:", c1 == c2)
        // 读路径加速验证：DeviceReader 按 1MB 块调用，应走多核
        let oneMB = Array(data[0..<(1024 * 1024)])
        t = Date()
        var oneTotal = 0
        for _ in 0..<64 { oneTotal += sm4CryptFast(oneMB, key, false).count }
        let chunked = Date().timeIntervalSince(t)
        print(String(format: "1MB 分块(读路径): %.1f MB/s", Double(64) / chunked))
        print("1MB 分块一致性:", oneTotal == 64 * 1024 * 1024)
        exit(0)
    } else if args.count >= 2, args[1] == "selftest" {
        let aesKey = (0..<16).map { UInt8($0) }
        let aesPt: [UInt8] = [0x00,0x11,0x22,0x33,0x44,0x55,0x66,0x77,0x88,0x99,0xaa,0xbb,0xcc,0xdd,0xee,0xff]
        let ct = aesEncryptBlock(aesPt, aesExpand(aesKey))
        print("AES128:", ct.map { String(format: "%02x", $0) }.joined())
        let sm4Key: [UInt8] = [0x01,0x23,0x45,0x67,0x89,0xab,0xcd,0xef,0xfe,0xdc,0xba,0x98,0x76,0x54,0x32,0x10]
        let sm = sm4Crypt(sm4Key, sm4Key, false)
        print("SM4:", sm.map { String(format: "%02x", $0) }.joined())
        print("MD5(abc):", md5(Array("abc".utf8)).map { String(format: "%02x", $0) }.joined())
        print("CRC32(123456789):", String(format: "%08x", edpCRC(Array("123456789".utf8))))
        exit(0)
    } else if args.count >= 3, args[1] == "probe" {
        let fd = open(args[2], O_RDONLY)
        guard fd >= 0 else { throw Err("无法打开设备") }
        var size = args.count >= 4 ? (UInt64(args[3]) ?? 0) : 0
        if size == 0 { size = deviceSize(fd) }
        let v = try decodeVolume(fd, totalSize: size)
        print("exchange_offset=\(v.offset)")
        print("exchange_size=\(v.size)")
        print("algorithm=\(v.algorithm)")
        exit(0)
    } else if args.count >= 4, args[1] == "ctl" {
        exit(ctlCommand(args[3], args[2]))
    } else {
        log("用法: edp mount <device> <workdir> | edp ctl save|quit <workdir>")
        exit(2)
    }
} catch {
    log("错误: \(error)")
    exit(1)
}
