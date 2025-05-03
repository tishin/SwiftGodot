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


/// A cryptographic key (RSA or elliptic-curve).
/// 
/// The CryptoKey class represents a cryptographic key. Keys can be loaded and saved like any other ``Resource``.
/// 
/// They can be used to generate a self-signed ``X509Certificate`` via ``Crypto/generateSelfSignedCertificate(key:issuerName:notBefore:notAfter:)`` and as private key in ``StreamPeerTLS/acceptStream(_:serverOptions:)`` along with the appropriate certificate.
/// 
open class CryptoKey: Resource {
    private static var className = StringName("CryptoKey")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_save: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("save")
        return withUnsafePointer(to: &CryptoKey.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 885841341)!
            }
            
        }
        
    }()
    
    /// Saves a key to the given `path`. If `publicOnly` is `true`, only the public key will be saved.
    /// 
    /// > Note: `path` should be a "*.pub" file if `publicOnly` is `true`, a "*.key" file otherwise.
    /// 
    public final func save(path: String, publicOnly: Bool = false) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: publicOnly) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CryptoKey.method_save, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_load: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("load")
        return withUnsafePointer(to: &CryptoKey.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 885841341)!
            }
            
        }
        
    }()
    
    /// Loads a key from `path`. If `publicOnly` is `true`, only the public key will be loaded.
    /// 
    /// > Note: `path` should be a "*.pub" file if `publicOnly` is `true`, a "*.key" file otherwise.
    /// 
    public final func load(path: String, publicOnly: Bool = false) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: publicOnly) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CryptoKey.method_load, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_is_public_only: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_public_only")
        return withUnsafePointer(to: &CryptoKey.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this CryptoKey only has the public part, and not the private one.
    public final func isPublicOnly() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CryptoKey.method_is_public_only, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_save_to_string: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("save_to_string")
        return withUnsafePointer(to: &CryptoKey.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 32795936)!
            }
            
        }
        
    }()
    
    /// Returns a string containing the key in PEM format. If `publicOnly` is `true`, only the public key will be included.
    public final func saveToString(publicOnly: Bool = false) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: publicOnly) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CryptoKey.method_save_to_string, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_load_from_string: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("load_from_string")
        return withUnsafePointer(to: &CryptoKey.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 885841341)!
            }
            
        }
        
    }()
    
    /// Loads a key from the given `stringKey`. If `publicOnly` is `true`, only the public key will be loaded.
    public final func loadFromString(stringKey: String, publicOnly: Bool = false) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let stringKey = GString(stringKey)
        withUnsafePointer(to: stringKey.content) { pArg0 in
            withUnsafePointer(to: publicOnly) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CryptoKey.method_load_from_string, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
}

