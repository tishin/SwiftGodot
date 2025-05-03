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


/// Texture view (used by ``RenderingDevice``).
/// 
/// This object is used by ``RenderingDevice``.
open class RDTextureView: RefCounted {
    private static var className = StringName("RDTextureView")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Optional override for the data format to return sampled values in. The corresponding ``RDTextureFormat`` must have had this added as a shareable format. The default value of ``RenderingDevice/DataFormat/max`` does not override the format.
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
    fileprivate static let method_set_format_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_format_override")
        return withUnsafePointer(to: &RDTextureView.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 565531219)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_format_override(_ pMember: RenderingDevice.DataFormat) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDTextureView.method_set_format_override, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_format_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_format_override")
        return withUnsafePointer(to: &RDTextureView.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2235804183)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_format_override() -> RenderingDevice.DataFormat {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDTextureView.method_get_format_override, handle, nil, &_result)
        return RenderingDevice.DataFormat (rawValue: _result)!
    }
    
    fileprivate static let method_set_swizzle_r: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_swizzle_r")
        return withUnsafePointer(to: &RDTextureView.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3833362581)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_swizzle_r(_ pMember: RenderingDevice.TextureSwizzle) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDTextureView.method_set_swizzle_r, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_swizzle_r: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_swizzle_r")
        return withUnsafePointer(to: &RDTextureView.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4150792614)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_swizzle_r() -> RenderingDevice.TextureSwizzle {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDTextureView.method_get_swizzle_r, handle, nil, &_result)
        return RenderingDevice.TextureSwizzle (rawValue: _result)!
    }
    
    fileprivate static let method_set_swizzle_g: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_swizzle_g")
        return withUnsafePointer(to: &RDTextureView.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3833362581)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_swizzle_g(_ pMember: RenderingDevice.TextureSwizzle) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDTextureView.method_set_swizzle_g, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_swizzle_g: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_swizzle_g")
        return withUnsafePointer(to: &RDTextureView.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4150792614)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_swizzle_g() -> RenderingDevice.TextureSwizzle {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDTextureView.method_get_swizzle_g, handle, nil, &_result)
        return RenderingDevice.TextureSwizzle (rawValue: _result)!
    }
    
    fileprivate static let method_set_swizzle_b: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_swizzle_b")
        return withUnsafePointer(to: &RDTextureView.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3833362581)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_swizzle_b(_ pMember: RenderingDevice.TextureSwizzle) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDTextureView.method_set_swizzle_b, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_swizzle_b: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_swizzle_b")
        return withUnsafePointer(to: &RDTextureView.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4150792614)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_swizzle_b() -> RenderingDevice.TextureSwizzle {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDTextureView.method_get_swizzle_b, handle, nil, &_result)
        return RenderingDevice.TextureSwizzle (rawValue: _result)!
    }
    
    fileprivate static let method_set_swizzle_a: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_swizzle_a")
        return withUnsafePointer(to: &RDTextureView.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3833362581)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_swizzle_a(_ pMember: RenderingDevice.TextureSwizzle) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDTextureView.method_set_swizzle_a, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_swizzle_a: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_swizzle_a")
        return withUnsafePointer(to: &RDTextureView.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4150792614)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_swizzle_a() -> RenderingDevice.TextureSwizzle {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDTextureView.method_get_swizzle_a, handle, nil, &_result)
        return RenderingDevice.TextureSwizzle (rawValue: _result)!
    }
    
}

