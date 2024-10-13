// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Base class for CSG primitives.
/// 
/// Parent class for various CSG primitives. It contains code and functionality that is common between them. It cannot be used directly. Instead use one of the various classes that inherit from it.
/// 
/// > Note: CSG nodes are intended to be used for level prototyping. Creating CSG nodes has a significant CPU cost compared to creating a ``MeshInstance3D`` with a ``PrimitiveMesh``. Moving a CSG node within another CSG node also has a significant CPU cost, so it should be avoided during gameplay.
/// 
open class CSGPrimitive3D: CSGShape3D {
    override open class var godotClassName: StringName { "CSGPrimitive3D" }
    
    /* Properties */
    
    /// If set, the order of the vertices in each triangle are reversed resulting in the backside of the mesh being drawn.
    final public var flipFaces: Bool {
        get {
            return get_flip_faces ()
        }
        
        set {
            set_flip_faces (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_flip_faces: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_flip_faces")
        return withUnsafePointer(to: &CSGPrimitive3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_flip_faces(_ flipFaces: Bool) {
        withUnsafePointer(to: flipFaces) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGPrimitive3D.method_set_flip_faces, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_flip_faces: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_flip_faces")
        return withUnsafePointer(to: &CSGPrimitive3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_flip_faces() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CSGPrimitive3D.method_get_flip_faces, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}
