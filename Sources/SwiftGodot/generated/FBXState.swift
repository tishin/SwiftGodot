// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// The FBXState handles the state data imported from FBX files.
open class FBXState: GLTFState {
    override open class var godotClassName: StringName { "FBXState" }
    
    /* Properties */
    
    /// If `true`, the import process used auxiliary nodes called geometry helper nodes. These nodes help preserve the pivots and transformations of the original 3D model during import.
    final public var allowGeometryHelperNodes: Bool {
        get {
            return get_allow_geometry_helper_nodes ()
        }
        
        set {
            set_allow_geometry_helper_nodes (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_get_allow_geometry_helper_nodes: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_allow_geometry_helper_nodes")
        return withUnsafePointer(to: &FBXState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_allow_geometry_helper_nodes() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(FBXState.method_get_allow_geometry_helper_nodes, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_allow_geometry_helper_nodes: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_allow_geometry_helper_nodes")
        return withUnsafePointer(to: &FBXState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_allow_geometry_helper_nodes(_ allow: Bool) {
        withUnsafePointer(to: allow) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FBXState.method_set_allow_geometry_helper_nodes, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}

