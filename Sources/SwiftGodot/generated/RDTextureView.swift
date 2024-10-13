// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Texture view (used by ``RenderingDevice``).
/// 
/// This object is used by ``RenderingDevice``.
open class RDTextureView: RefCounted {
    override open class var godotClassName: StringName { "RDTextureView" }
    
    /* Properties */
    
    /// Optional override for the data format to return sampled values in. The default value of ``RenderingDevice/DataFormat/max`` does not override the format.
    final public var formatOverride: RenderingDevice.DataFormat {
        get {
            return get_format_override ()
        }
        
        set {
            set_format_override (newValue)
        }
        
    }
    
    /// The channel to sample when sampling the red color channel.
    final public var swizzleR: RenderingDevice.TextureSwizzle {
        get {
            return get_swizzle_r ()
        }
        
        set {
            set_swizzle_r (newValue)
        }
        
    }
    
    /// The channel to sample when sampling the green color channel.
    final public var swizzleG: RenderingDevice.TextureSwizzle {
        get {
            return get_swizzle_g ()
        }
        
        set {
            set_swizzle_g (newValue)
        }
        
    }
    
    /// The channel to sample when sampling the blue color channel.
    final public var swizzleB: RenderingDevice.TextureSwizzle {
        get {
            return get_swizzle_b ()
        }
        
        set {
            set_swizzle_b (newValue)
        }
        
    }
    
    /// The channel to sample when sampling the alpha channel.
    final public var swizzleA: RenderingDevice.TextureSwizzle {
        get {
            return get_swizzle_a ()
        }
        
        set {
            set_swizzle_a (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_format_override: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_format_override")
        return withUnsafePointer(to: &RDTextureView.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 565531219)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_format_override(_ pMember: RenderingDevice.DataFormat) {
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDTextureView.method_set_format_override, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_format_override: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_format_override")
        return withUnsafePointer(to: &RDTextureView.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2235804183)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_format_override() -> RenderingDevice.DataFormat {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDTextureView.method_get_format_override, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return RenderingDevice.DataFormat (rawValue: _result)!
    }
    
    fileprivate static var method_set_swizzle_r: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_swizzle_r")
        return withUnsafePointer(to: &RDTextureView.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3833362581)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_swizzle_r(_ pMember: RenderingDevice.TextureSwizzle) {
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDTextureView.method_set_swizzle_r, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_swizzle_r: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_swizzle_r")
        return withUnsafePointer(to: &RDTextureView.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4150792614)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_swizzle_r() -> RenderingDevice.TextureSwizzle {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDTextureView.method_get_swizzle_r, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return RenderingDevice.TextureSwizzle (rawValue: _result)!
    }
    
    fileprivate static var method_set_swizzle_g: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_swizzle_g")
        return withUnsafePointer(to: &RDTextureView.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3833362581)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_swizzle_g(_ pMember: RenderingDevice.TextureSwizzle) {
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDTextureView.method_set_swizzle_g, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_swizzle_g: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_swizzle_g")
        return withUnsafePointer(to: &RDTextureView.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4150792614)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_swizzle_g() -> RenderingDevice.TextureSwizzle {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDTextureView.method_get_swizzle_g, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return RenderingDevice.TextureSwizzle (rawValue: _result)!
    }
    
    fileprivate static var method_set_swizzle_b: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_swizzle_b")
        return withUnsafePointer(to: &RDTextureView.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3833362581)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_swizzle_b(_ pMember: RenderingDevice.TextureSwizzle) {
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDTextureView.method_set_swizzle_b, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_swizzle_b: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_swizzle_b")
        return withUnsafePointer(to: &RDTextureView.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4150792614)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_swizzle_b() -> RenderingDevice.TextureSwizzle {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDTextureView.method_get_swizzle_b, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return RenderingDevice.TextureSwizzle (rawValue: _result)!
    }
    
    fileprivate static var method_set_swizzle_a: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_swizzle_a")
        return withUnsafePointer(to: &RDTextureView.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3833362581)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_swizzle_a(_ pMember: RenderingDevice.TextureSwizzle) {
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDTextureView.method_set_swizzle_a, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_swizzle_a: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_swizzle_a")
        return withUnsafePointer(to: &RDTextureView.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4150792614)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_swizzle_a() -> RenderingDevice.TextureSwizzle {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDTextureView.method_get_swizzle_a, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return RenderingDevice.TextureSwizzle (rawValue: _result)!
    }
    
}

