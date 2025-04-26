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


/// Used to create an HMAC for a message using a key.
/// 
/// The HMACContext class is useful for advanced HMAC use cases, such as streaming the message as it supports creating the message over time rather than providing it all at once.
/// 
open class HMACContext: RefCounted {
    private static var className = StringName("HMACContext")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_start: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("start")
        return withUnsafePointer(to: &HMACContext.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3537364598)!
            }
            
        }
        
    }()
    
    /// Initializes the HMACContext. This method cannot be called again on the same HMACContext until ``finish()`` has been called.
    public final func start(hashType: HashingContext.HashType, key: PackedByteArray) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: hashType.rawValue) { pArg0 in
            withUnsafePointer(to: key.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(HMACContext.method_start, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_update: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("update")
        return withUnsafePointer(to: &HMACContext.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 680677267)!
            }
            
        }
        
    }()
    
    /// Updates the message to be HMACed. This can be called multiple times before ``finish()`` is called to append `data` to the message, but cannot be called until ``start(hashType:key:)`` has been called.
    public final func update(data: PackedByteArray) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: data.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(HMACContext.method_update, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_finish: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("finish")
        return withUnsafePointer(to: &HMACContext.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2115431945)!
            }
            
        }
        
    }()
    
    /// Returns the resulting HMAC. If the HMAC failed, an empty ``PackedByteArray`` is returned.
    public final func finish() -> PackedByteArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedByteArray = PackedByteArray ()
        gi.object_method_bind_ptrcall(HMACContext.method_finish, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
}

