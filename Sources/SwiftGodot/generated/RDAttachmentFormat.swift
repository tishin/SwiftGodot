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


/// Attachment format (used by ``RenderingDevice``).
/// 
/// This object is used by ``RenderingDevice``.
open class RDAttachmentFormat: RefCounted {
    private static var className = StringName("RDAttachmentFormat")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The attachment's data format.
    final public var format: RenderingDevice.DataFormat {
        get {
            return get_format ()
        }
        
        set {
            set_format (newValue)
        }
        
    }
    
    /// The number of samples used when sampling the attachment.
    final public var samples: RenderingDevice.TextureSamples {
        get {
            return get_samples ()
        }
        
        set {
            set_samples (newValue)
        }
        
    }
    
    /// The attachment's usage flags, which determine what can be done with it.
    final public var usageFlags: UInt32 {
        get {
            return get_usage_flags ()
        }
        
        set {
            set_usage_flags (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_format: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_format")
        return withUnsafePointer(to: &RDAttachmentFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 565531219)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_format(_ pMember: RenderingDevice.DataFormat) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDAttachmentFormat.method_set_format, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_format: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_format")
        return withUnsafePointer(to: &RDAttachmentFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2235804183)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_format() -> RenderingDevice.DataFormat {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDAttachmentFormat.method_get_format, handle, nil, &_result)
        return RenderingDevice.DataFormat (rawValue: _result)!
    }
    
    fileprivate static let method_set_samples: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_samples")
        return withUnsafePointer(to: &RDAttachmentFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3774171498)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_samples(_ pMember: RenderingDevice.TextureSamples) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDAttachmentFormat.method_set_samples, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_samples: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_samples")
        return withUnsafePointer(to: &RDAttachmentFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 407791724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_samples() -> RenderingDevice.TextureSamples {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDAttachmentFormat.method_get_samples, handle, nil, &_result)
        return RenderingDevice.TextureSamples (rawValue: _result)!
    }
    
    fileprivate static let method_set_usage_flags: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_usage_flags")
        return withUnsafePointer(to: &RDAttachmentFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_usage_flags(_ pMember: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDAttachmentFormat.method_set_usage_flags, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_usage_flags: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_usage_flags")
        return withUnsafePointer(to: &RDAttachmentFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_usage_flags() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(RDAttachmentFormat.method_get_usage_flags, handle, nil, &_result)
        return _result
    }
    
}

