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


/// Provides functionality for computing cryptographic hashes chunk by chunk.
/// 
/// The HashingContext class provides an interface for computing cryptographic hashes over multiple iterations. Useful for computing hashes of big files (so you don't have to load them all in memory), network streams, and data streams in general (so you don't have to hold buffers).
/// 
/// The ``HashingContext/HashType`` enum shows the supported hashing algorithms.
/// 
open class HashingContext: RefCounted {
    private static var className = StringName("HashingContext")
    override open class var godotClassName: StringName { className }
    public enum HashType: Int64, CaseIterable {
        /// Hashing algorithm: MD5.
        case md5 = 0 // HASH_MD5
        /// Hashing algorithm: SHA-1.
        case sha1 = 1 // HASH_SHA1
        /// Hashing algorithm: SHA-256.
        case sha256 = 2 // HASH_SHA256
    }
    
    /* Methods */
    fileprivate static let method_start: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("start")
        return withUnsafePointer(to: &HashingContext.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3940338335)!
            }
            
        }
        
    }()
    
    /// Starts a new hash computation of the given `type` (e.g. ``HashType/sha256`` to start computation of an SHA-256).
    public final func start(type: HashingContext.HashType) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(HashingContext.method_start, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_update: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("update")
        return withUnsafePointer(to: &HashingContext.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 680677267)!
            }
            
        }
        
    }()
    
    /// Updates the computation with the given `chunk` of data.
    public final func update(chunk: PackedByteArray) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: chunk.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(HashingContext.method_update, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_finish: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("finish")
        return withUnsafePointer(to: &HashingContext.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2115431945)!
            }
            
        }
        
    }()
    
    /// Closes the current context, and return the computed hash.
    public final func finish() -> PackedByteArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedByteArray = PackedByteArray ()
        gi.object_method_bind_ptrcall(HashingContext.method_finish, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
}

