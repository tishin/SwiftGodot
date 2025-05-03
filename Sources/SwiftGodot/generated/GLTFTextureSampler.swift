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


/// Represents a glTF texture sampler
/// 
/// Represents a texture sampler as defined by the base glTF spec. Texture samplers in glTF specify how to sample data from the texture's base image, when rendering the texture on an object.
open class GLTFTextureSampler: Resource {
    private static var className = StringName("GLTFTextureSampler")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Texture's magnification filter, used when texture appears larger on screen than the source image.
    final public var magFilter: Int32 {
        get {
            return get_mag_filter ()
        }
        
        set {
            set_mag_filter (newValue)
        }
        
    }
    
    /// Texture's minification filter, used when the texture appears smaller on screen than the source image.
    final public var minFilter: Int32 {
        get {
            return get_min_filter ()
        }
        
        set {
            set_min_filter (newValue)
        }
        
    }
    
    /// Wrapping mode to use for S-axis (horizontal) texture coordinates.
    final public var wrapS: Int32 {
        get {
            return get_wrap_s ()
        }
        
        set {
            set_wrap_s (newValue)
        }
        
    }
    
    /// Wrapping mode to use for T-axis (vertical) texture coordinates.
    final public var wrapT: Int32 {
        get {
            return get_wrap_t ()
        }
        
        set {
            set_wrap_t (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_get_mag_filter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_mag_filter")
        return withUnsafePointer(to: &GLTFTextureSampler.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mag_filter() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GLTFTextureSampler.method_get_mag_filter, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_mag_filter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_mag_filter")
        return withUnsafePointer(to: &GLTFTextureSampler.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mag_filter(_ filterMode: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: filterMode) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFTextureSampler.method_set_mag_filter, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_min_filter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_min_filter")
        return withUnsafePointer(to: &GLTFTextureSampler.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_min_filter() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GLTFTextureSampler.method_get_min_filter, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_min_filter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_min_filter")
        return withUnsafePointer(to: &GLTFTextureSampler.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_min_filter(_ filterMode: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: filterMode) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFTextureSampler.method_set_min_filter, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_wrap_s: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_wrap_s")
        return withUnsafePointer(to: &GLTFTextureSampler.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_wrap_s() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GLTFTextureSampler.method_get_wrap_s, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_wrap_s: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_wrap_s")
        return withUnsafePointer(to: &GLTFTextureSampler.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_wrap_s(_ wrapMode: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: wrapMode) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFTextureSampler.method_set_wrap_s, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_wrap_t: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_wrap_t")
        return withUnsafePointer(to: &GLTFTextureSampler.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_wrap_t() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GLTFTextureSampler.method_get_wrap_t, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_wrap_t: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_wrap_t")
        return withUnsafePointer(to: &GLTFTextureSampler.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_wrap_t(_ wrapMode: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: wrapMode) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFTextureSampler.method_set_wrap_t, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}

