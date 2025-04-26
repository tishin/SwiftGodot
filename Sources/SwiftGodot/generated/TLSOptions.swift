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


/// TLS configuration for clients and servers.
/// 
/// TLSOptions abstracts the configuration options for the ``StreamPeerTLS`` and ``PacketPeerDTLS`` classes.
/// 
/// Objects of this class cannot be instantiated directly, and one of the static methods ``client(trustedChain:commonNameOverride:)``, ``clientUnsafe(trustedChain:)``, or ``server(key:certificate:)`` should be used instead.
/// 
open class TLSOptions: RefCounted {
    private static var className = StringName("TLSOptions")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_client: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("client")
        return withUnsafePointer(to: &TLSOptions.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3565000357)!
            }
            
        }
        
    }()
    
    /// Creates a TLS client configuration which validates certificates and their common names (fully qualified domain names).
    /// 
    /// You can specify a custom `trustedChain` of certification authorities (the default CA list will be used if `null`), and optionally provide a `commonNameOverride` if you expect the certificate to have a common name other than the server FQDN.
    /// 
    /// > Note: On the Web platform, TLS verification is always enforced against the CA list of the web browser. This is considered a security feature.
    /// 
    public static func client(trustedChain: X509Certificate? = nil, commonNameOverride: String = "") -> TLSOptions? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: trustedChain?.handle) { pArg0 in
            let commonNameOverride = GString(commonNameOverride)
            withUnsafePointer(to: commonNameOverride.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_client, nil, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_client_unsafe: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("client_unsafe")
        return withUnsafePointer(to: &TLSOptions.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2090251749)!
            }
            
        }
        
    }()
    
    /// Creates an **unsafe** TLS client configuration where certificate validation is optional. You can optionally provide a valid `trustedChain`, but the common name of the certificates will never be checked. Using this configuration for purposes other than testing **is not recommended**.
    /// 
    /// > Note: On the Web platform, TLS verification is always enforced against the CA list of the web browser. This is considered a security feature.
    /// 
    public static func clientUnsafe(trustedChain: X509Certificate? = nil) -> TLSOptions? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: trustedChain?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_client_unsafe, nil, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_server: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("server")
        return withUnsafePointer(to: &TLSOptions.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36969539)!
            }
            
        }
        
    }()
    
    /// Creates a TLS server configuration using the provided `key` and `certificate`.
    /// 
    /// > Note: The `certificate` should include the full certificate chain up to the signing CA (certificates file can be concatenated using a general purpose text editor).
    /// 
    public static func server(key: CryptoKey?, certificate: X509Certificate?) -> TLSOptions? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: key?.handle) { pArg0 in
            withUnsafePointer(to: certificate?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_server, nil, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_is_server: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_server")
        return withUnsafePointer(to: &TLSOptions.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if created with ``TLSOptions/server(key:certificate:)``, `false` otherwise.
    public final func isServer() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TLSOptions.method_is_server, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_unsafe_client: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_unsafe_client")
        return withUnsafePointer(to: &TLSOptions.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if created with ``TLSOptions/clientUnsafe(trustedChain:)``, `false` otherwise.
    public final func isUnsafeClient() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TLSOptions.method_is_unsafe_client, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_common_name_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_common_name_override")
        return withUnsafePointer(to: &TLSOptions.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the common name (domain name) override specified when creating with ``TLSOptions/client(trustedChain:commonNameOverride:)``.
    public final func getCommonNameOverride() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(TLSOptions.method_get_common_name_override, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_trusted_ca_chain: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_trusted_ca_chain")
        return withUnsafePointer(to: &TLSOptions.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1120709175)!
            }
            
        }
        
    }()
    
    /// Returns the CA ``X509Certificate`` chain specified when creating with ``TLSOptions/client(trustedChain:commonNameOverride:)`` or ``TLSOptions/clientUnsafe(trustedChain:)``.
    public final func getTrustedCaChain() -> X509Certificate? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(TLSOptions.method_get_trusted_ca_chain, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_private_key: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_private_key")
        return withUnsafePointer(to: &TLSOptions.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2119971811)!
            }
            
        }
        
    }()
    
    /// Returns the ``CryptoKey`` specified when creating with ``TLSOptions/server(key:certificate:)``.
    public final func getPrivateKey() -> CryptoKey? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(TLSOptions.method_get_private_key, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_own_certificate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_own_certificate")
        return withUnsafePointer(to: &TLSOptions.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1120709175)!
            }
            
        }
        
    }()
    
    /// Returns the ``X509Certificate`` specified when creating with ``TLSOptions/server(key:certificate:)``.
    public final func getOwnCertificate() -> X509Certificate? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(TLSOptions.method_get_own_certificate, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
}

