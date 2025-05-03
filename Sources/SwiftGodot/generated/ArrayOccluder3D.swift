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


/// 3D polygon shape for use with occlusion culling in ``OccluderInstance3D``.
/// 
/// ``ArrayOccluder3D`` stores an arbitrary 3D polygon shape that can be used by the engine's occlusion culling system. This is analogous to ``ArrayMesh``, but for occluders.
/// 
/// See ``OccluderInstance3D``'s documentation for instructions on setting up occlusion culling.
/// 
open class ArrayOccluder3D: Occluder3D {
    private static var className = StringName("ArrayOccluder3D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The occluder's vertex positions in local 3D coordinates.
    /// 
    /// > Note: The occluder is always updated after setting this value. If creating occluders procedurally, consider using ``setArrays(vertices:indices:)`` instead to avoid updating the occluder twice when it's created.
    /// 
    final public var vertices: PackedVector3Array {
        get {
            return getVertices ()
        }
        
        set {
            set_vertices (newValue)
        }
        
    }
    
    /// The occluder's index position. Indices determine which points from the ``vertices`` array should be drawn, and in which order.
    /// 
    /// > Note: The occluder is always updated after setting this value. If creating occluders procedurally, consider using ``setArrays(vertices:indices:)`` instead to avoid updating the occluder twice when it's created.
    /// 
    final public var indices: PackedInt32Array {
        get {
            return getIndices ()
        }
        
        set {
            set_indices (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_arrays: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_arrays")
        return withUnsafePointer(to: &ArrayOccluder3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3233972621)!
            }
            
        }
        
    }()
    
    /// Sets ``indices`` and ``vertices``, while updating the final occluder only once after both values are set.
    public final func setArrays(vertices: PackedVector3Array, indices: PackedInt32Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: vertices.content) { pArg0 in
            withUnsafePointer(to: indices.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ArrayOccluder3D.method_set_arrays, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_vertices: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_vertices")
        return withUnsafePointer(to: &ArrayOccluder3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 334873810)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_vertices(_ vertices: PackedVector3Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: vertices.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ArrayOccluder3D.method_set_vertices, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_indices: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_indices")
        return withUnsafePointer(to: &ArrayOccluder3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3614634198)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_indices(_ indices: PackedInt32Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: indices.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ArrayOccluder3D.method_set_indices, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}

