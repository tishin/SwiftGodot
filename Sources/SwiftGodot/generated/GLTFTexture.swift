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


/// GLTFTexture represents a texture in a glTF file.
open class GLTFTexture: Resource {
    private static var className = StringName("GLTFTexture")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The index of the image associated with this texture, see ``GLTFState/getImages()``. If -1, then this texture does not have an image assigned.
    final public var srcImage: Int32 {
        get {
            return get_src_image ()
        }
        
        set {
            set_src_image (newValue)
        }
        
    }
    
    /// ID of the texture sampler to use when sampling the image. If -1, then the default texture sampler is used (linear filtering, and repeat wrapping in both axes).
    final public var sampler: Int32 {
        get {
            return get_sampler ()
        }
        
        set {
            set_sampler (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_get_src_image: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_src_image")
        return withUnsafePointer(to: &GLTFTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_src_image() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GLTFTexture.method_get_src_image, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_src_image: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_src_image")
        return withUnsafePointer(to: &GLTFTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_src_image(_ srcImage: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: srcImage) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFTexture.method_set_src_image, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sampler: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sampler")
        return withUnsafePointer(to: &GLTFTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sampler() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GLTFTexture.method_get_sampler, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_sampler: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sampler")
        return withUnsafePointer(to: &GLTFTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sampler(_ sampler: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: sampler) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFTexture.method_set_sampler, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}

