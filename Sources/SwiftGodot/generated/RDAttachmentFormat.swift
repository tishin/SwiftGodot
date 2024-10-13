// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Attachment format (used by ``RenderingDevice``).
/// 
/// This object is used by ``RenderingDevice``.
open class RDAttachmentFormat: RefCounted {
    override open class var godotClassName: StringName { "RDAttachmentFormat" }
    
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
    fileprivate static var method_set_format: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_format")
        return withUnsafePointer(to: &RDAttachmentFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 565531219)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_format(_ pMember: RenderingDevice.DataFormat) {
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDAttachmentFormat.method_set_format, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_format: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_format")
        return withUnsafePointer(to: &RDAttachmentFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2235804183)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_format() -> RenderingDevice.DataFormat {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDAttachmentFormat.method_get_format, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return RenderingDevice.DataFormat (rawValue: _result)!
    }
    
    fileprivate static var method_set_samples: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_samples")
        return withUnsafePointer(to: &RDAttachmentFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3774171498)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_samples(_ pMember: RenderingDevice.TextureSamples) {
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDAttachmentFormat.method_set_samples, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_samples: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_samples")
        return withUnsafePointer(to: &RDAttachmentFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 407791724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_samples() -> RenderingDevice.TextureSamples {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDAttachmentFormat.method_get_samples, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return RenderingDevice.TextureSamples (rawValue: _result)!
    }
    
    fileprivate static var method_set_usage_flags: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_usage_flags")
        return withUnsafePointer(to: &RDAttachmentFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_usage_flags(_ pMember: UInt32) {
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDAttachmentFormat.method_set_usage_flags, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_usage_flags: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_usage_flags")
        return withUnsafePointer(to: &RDAttachmentFormat.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_usage_flags() -> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(RDAttachmentFormat.method_get_usage_flags, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

