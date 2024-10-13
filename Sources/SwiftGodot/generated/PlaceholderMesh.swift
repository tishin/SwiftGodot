// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Placeholder class for a mesh.
/// 
/// This class is used when loading a project that uses a ``Mesh`` subclass in 2 conditions:
/// 
/// - When running the project exported in dedicated server mode, only the texture's dimensions are kept (as they may be relied upon for gameplay purposes or positioning of other elements). This allows reducing the exported PCK's size significantly.
/// 
/// - When this subclass is missing due to using a different engine version or build (e.g. modules disabled).
/// 
open class PlaceholderMesh: Mesh {
    override open class var godotClassName: StringName { "PlaceholderMesh" }
    
    /* Properties */
    
    /// The smallest ``AABB`` enclosing this mesh in local space.
    final public var aabb: AABB {
        get {
            return getAabb ()
        }
        
        set {
            set_aabb (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_aabb: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_aabb")
        return withUnsafePointer(to: &PlaceholderMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 259215842)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_aabb(_ aabb: AABB) {
        withUnsafePointer(to: aabb) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PlaceholderMesh.method_set_aabb, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}
