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


/// An X509 certificate (e.g. for TLS).
/// 
/// The X509Certificate class represents an X509 certificate. Certificates can be loaded and saved like any other ``Resource``.
/// 
/// They can be used as the server certificate in ``StreamPeerTLS/acceptStream(_:serverOptions:)`` (along with the proper ``CryptoKey``), and to specify the only certificate that should be accepted when connecting to a TLS server via ``StreamPeerTLS/connectToStream(_:commonName:clientOptions:)``.
/// 
open class X509Certificate: Resource {
    private static var className = StringName("X509Certificate")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_save: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("save")
        return withUnsafePointer(to: &X509Certificate.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Saves a certificate to the given `path` (should be a "*.crt" file).
    public final func save(path: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(X509Certificate.method_save, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_load: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("load")
        return withUnsafePointer(to: &X509Certificate.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Loads a certificate from `path` ("*.crt" file).
    public final func load(path: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(X509Certificate.method_load, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_save_to_string: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("save_to_string")
        return withUnsafePointer(to: &X509Certificate.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2841200299)!
            }
            
        }
        
    }()
    
    /// Returns a string representation of the certificate, or an empty string if the certificate is invalid.
    public final func saveToString() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(X509Certificate.method_save_to_string, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_load_from_string: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("load_from_string")
        return withUnsafePointer(to: &X509Certificate.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Loads a certificate from the given `string`.
    public final func loadFromString(_ string: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let string = GString(string)
        withUnsafePointer(to: string.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(X509Certificate.method_load_from_string, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
}

