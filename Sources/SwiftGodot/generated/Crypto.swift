// This file is auto-generated, do not edit.
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
#if canImport(Darwin)
import Darwin
#elseif os(Windows)
import ucrt
import WinSDK
#elseif canImport(Android)
import Android
#elseif canImport(Glibc)
import Glibc
#elseif canImport(Musl)
import Musl
#else
#error("Unable to identify your C library.")
#endif
#endif


/// Provides access to advanced cryptographic functionalities.
/// 
/// The Crypto class provides access to advanced cryptographic functionalities.
/// 
/// Currently, this includes asymmetric key encryption/decryption, signing/verification, and generating cryptographically secure random bytes, RSA keys, HMAC digests, and self-signed ``X509Certificate``s.
/// 
open class Crypto: RefCounted {
    private static var className = StringName("Crypto")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_generate_random_bytes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("generate_random_bytes")
        return withUnsafePointer(to: &Crypto.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 47165747)!
            }
            
        }
        
    }()
    
    /// Generates a ``PackedByteArray`` of cryptographically secure random bytes with given `size`.
    public final func generateRandomBytes(size: Int32) -> PackedByteArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedByteArray = PackedByteArray ()
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Crypto.method_generate_random_bytes, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_generate_rsa: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("generate_rsa")
        return withUnsafePointer(to: &Crypto.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1237515462)!
            }
            
        }
        
    }()
    
    /// Generates an RSA ``CryptoKey`` that can be used for creating self-signed certificates and passed to ``StreamPeerTLS/acceptStream(_:serverOptions:)``.
    public final func generateRsa(size: Int32) -> CryptoKey? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Crypto.method_generate_rsa, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_generate_self_signed_certificate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("generate_self_signed_certificate")
        return withUnsafePointer(to: &Crypto.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 492266173)!
            }
            
        }
        
    }()
    
    /// Generates a self-signed ``X509Certificate`` from the given ``CryptoKey`` and `issuerName`. The certificate validity will be defined by `notBefore` and `notAfter` (first valid date and last valid date). The `issuerName` must contain at least "CN=" (common name, i.e. the domain name), "O=" (organization, i.e. your company name), "C=" (country, i.e. 2 lettered ISO-3166 code of the country the organization is based in).
    /// 
    /// A small example to generate an RSA key and an X509 self-signed certificate.
    /// 
    public final func generateSelfSignedCertificate(key: CryptoKey?, issuerName: String = "CN=myserver,O=myorganisation,C=IT", notBefore: String = "20140101000000", notAfter: String = "20340101000000") -> X509Certificate? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: key?.handle) { pArg0 in
            let issuerName = GString(issuerName)
            withUnsafePointer(to: issuerName.content) { pArg1 in
                let notBefore = GString(notBefore)
                withUnsafePointer(to: notBefore.content) { pArg2 in
                    let notAfter = GString(notAfter)
                    withUnsafePointer(to: notAfter.content) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(Crypto.method_generate_self_signed_certificate, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_sign: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("sign")
        return withUnsafePointer(to: &Crypto.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1673662703)!
            }
            
        }
        
    }()
    
    /// Sign a given `hash` of type `hashType` with the provided private `key`.
    public final func sign(hashType: HashingContext.HashType, hash: PackedByteArray, key: CryptoKey?) -> PackedByteArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedByteArray = PackedByteArray ()
        withUnsafePointer(to: hashType.rawValue) { pArg0 in
            withUnsafePointer(to: hash.content) { pArg1 in
                withUnsafePointer(to: key?.handle) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Crypto.method_sign, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_verify: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("verify")
        return withUnsafePointer(to: &Crypto.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2805902225)!
            }
            
        }
        
    }()
    
    /// Verify that a given `signature` for `hash` of type `hashType` against the provided public `key`.
    public final func verify(hashType: HashingContext.HashType, hash: PackedByteArray, signature: PackedByteArray, key: CryptoKey?) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: hashType.rawValue) { pArg0 in
            withUnsafePointer(to: hash.content) { pArg1 in
                withUnsafePointer(to: signature.content) { pArg2 in
                    withUnsafePointer(to: key?.handle) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(Crypto.method_verify, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_encrypt: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("encrypt")
        return withUnsafePointer(to: &Crypto.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2361793670)!
            }
            
        }
        
    }()
    
    /// Encrypt the given `plaintext` with the provided public `key`.
    /// 
    /// > Note: The maximum size of accepted plaintext is limited by the key size.
    /// 
    public final func encrypt(key: CryptoKey?, plaintext: PackedByteArray) -> PackedByteArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedByteArray = PackedByteArray ()
        withUnsafePointer(to: key?.handle) { pArg0 in
            withUnsafePointer(to: plaintext.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Crypto.method_encrypt, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_decrypt: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("decrypt")
        return withUnsafePointer(to: &Crypto.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2361793670)!
            }
            
        }
        
    }()
    
    /// Decrypt the given `ciphertext` with the provided private `key`.
    /// 
    /// > Note: The maximum size of accepted ciphertext is limited by the key size.
    /// 
    public final func decrypt(key: CryptoKey?, ciphertext: PackedByteArray) -> PackedByteArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedByteArray = PackedByteArray ()
        withUnsafePointer(to: key?.handle) { pArg0 in
            withUnsafePointer(to: ciphertext.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Crypto.method_decrypt, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_hmac_digest: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("hmac_digest")
        return withUnsafePointer(to: &Crypto.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2368951203)!
            }
            
        }
        
    }()
    
    /// Generates an <a href="https://en.wikipedia.org/wiki/HMAC">HMAC</a> digest of `msg` using `key`. The `hashType` parameter is the hashing algorithm that is used for the inner and outer hashes.
    /// 
    /// Currently, only ``HashingContext/HashType/sha256`` and ``HashingContext/HashType/sha1`` are supported.
    /// 
    public final func hmacDigest(hashType: HashingContext.HashType, key: PackedByteArray, msg: PackedByteArray) -> PackedByteArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedByteArray = PackedByteArray ()
        withUnsafePointer(to: hashType.rawValue) { pArg0 in
            withUnsafePointer(to: key.content) { pArg1 in
                withUnsafePointer(to: msg.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Crypto.method_hmac_digest, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_constant_time_compare: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("constant_time_compare")
        return withUnsafePointer(to: &Crypto.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1024142237)!
            }
            
        }
        
    }()
    
    /// Compares two ``PackedByteArray``s for equality without leaking timing information in order to prevent timing attacks.
    /// 
    /// See <a href="https://paragonie.com/blog/2015/11/preventing-timing-attacks-on-string-comparison-with-double-hmac-strategy">this blog post</a> for more information.
    /// 
    public final func constantTimeCompare(trusted: PackedByteArray, received: PackedByteArray) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: trusted.content) { pArg0 in
            withUnsafePointer(to: received.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Crypto.method_constant_time_compare, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
}

