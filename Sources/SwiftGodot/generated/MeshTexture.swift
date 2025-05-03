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


/// Simple texture that uses a mesh to draw itself.
/// 
/// Simple texture that uses a mesh to draw itself. It's limited because flags can't be changed and region drawing is not supported.
open class MeshTexture: Texture2D {
    private static var className = StringName("MeshTexture")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Sets the mesh used to draw. It must be a mesh using 2D vertices.
    final public var mesh: Mesh? {
        get {
            return get_mesh ()
        }
        
        set {
            set_mesh (newValue)
        }
        
    }
    
    /// Sets the base texture that the Mesh will use to draw.
    final public var baseTexture: Texture2D? {
        get {
            return get_base_texture ()
        }
        
        set {
            set_base_texture (newValue)
        }
        
    }
    
    /// Sets the size of the image, needed for reference.
    final public var imageSize: Vector2 {
        get {
            return get_image_size ()
        }
        
        set {
            set_image_size (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_mesh: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_mesh")
        return withUnsafePointer(to: &MeshTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 194775623)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mesh(_ mesh: Mesh?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mesh?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshTexture.method_set_mesh, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_mesh: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_mesh")
        return withUnsafePointer(to: &MeshTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1808005922)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mesh() -> Mesh? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(MeshTexture.method_get_mesh, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_image_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_image_size")
        return withUnsafePointer(to: &MeshTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_image_size(_ size: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshTexture.method_set_image_size, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_image_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_image_size")
        return withUnsafePointer(to: &MeshTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_image_size() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(MeshTexture.method_get_image_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_base_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_base_texture")
        return withUnsafePointer(to: &MeshTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4051416890)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_base_texture(_ texture: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: texture?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshTexture.method_set_base_texture, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_base_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_base_texture")
        return withUnsafePointer(to: &MeshTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_base_texture() -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(MeshTexture.method_get_base_texture, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
}

