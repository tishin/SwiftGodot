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


/// Texture for 2D that is bound to a texture created on the ``RenderingDevice``.
/// 
/// This texture class allows you to use a 2D texture created directly on the ``RenderingDevice`` as a texture for materials, meshes, etc.
open class Texture2DRD: Texture2D {
    private static var className = StringName("Texture2DRD")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The RID of the texture object created on the ``RenderingDevice``.
    final public var textureRdRid: RID {
        get {
            return get_texture_rd_rid ()
        }
        
        set {
            set_texture_rd_rid (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_texture_rd_rid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_texture_rd_rid")
        return withUnsafePointer(to: &Texture2DRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_rd_rid(_ textureRdRid: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: textureRdRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Texture2DRD.method_set_texture_rd_rid, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_texture_rd_rid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture_rd_rid")
        return withUnsafePointer(to: &Texture2DRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_rd_rid() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(Texture2DRD.method_get_texture_rd_rid, handle, nil, &_result.content)
        return _result
    }
    
}

