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


/// Occluder shape resource for use with occlusion culling in ``OccluderInstance3D``.
/// 
/// ``Occluder3D`` stores an occluder shape that can be used by the engine's occlusion culling system.
/// 
/// See ``OccluderInstance3D``'s documentation for instructions on setting up occlusion culling.
/// 
open class Occluder3D: Resource {
    private static var className = StringName("Occluder3D")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_get_vertices: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_vertices")
        return withUnsafePointer(to: &Occluder3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 497664490)!
            }
            
        }
        
    }()
    
    /// Returns the occluder shape's vertex positions.
    public final func getVertices() -> PackedVector3Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedVector3Array = PackedVector3Array ()
        gi.object_method_bind_ptrcall(Occluder3D.method_get_vertices, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_indices: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_indices")
        return withUnsafePointer(to: &Occluder3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1930428628)!
            }
            
        }
        
    }()
    
    /// Returns the occluder shape's vertex indices.
    public final func getIndices() -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall(Occluder3D.method_get_indices, handle, nil, &_result.content)
        return _result
    }
    
}

