// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// RemoteTransform3D pushes its own ``Transform3D`` to another ``Node3D`` derived Node in the scene.
/// 
/// RemoteTransform3D pushes its own ``Transform3D`` to another ``Node3D`` derived Node (called the remote node) in the scene.
/// 
/// It can be set to update another Node's position, rotation and/or scale. It can use either global or local coordinates.
/// 
open class RemoteTransform3D: Node3D {
    override open class var godotClassName: StringName { "RemoteTransform3D" }
    
    /* Properties */
    
    /// The ``NodePath`` to the remote node, relative to the RemoteTransform3D's position in the scene.
    final public var remotePath: NodePath {
        get {
            return get_remote_node ()
        }
        
        set {
            set_remote_node (newValue)
        }
        
    }
    
    /// If `true`, global coordinates are used. If `false`, local coordinates are used.
    final public var useGlobalCoordinates: Bool {
        get {
            return get_use_global_coordinates ()
        }
        
        set {
            set_use_global_coordinates (newValue)
        }
        
    }
    
    /// If `true`, the remote node's position is updated.
    final public var updatePosition: Bool {
        get {
            return get_update_position ()
        }
        
        set {
            set_update_position (newValue)
        }
        
    }
    
    /// If `true`, the remote node's rotation is updated.
    final public var updateRotation: Bool {
        get {
            return get_update_rotation ()
        }
        
        set {
            set_update_rotation (newValue)
        }
        
    }
    
    /// If `true`, the remote node's scale is updated.
    final public var updateScale: Bool {
        get {
            return get_update_scale ()
        }
        
        set {
            set_update_scale (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_remote_node: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_remote_node")
        return withUnsafePointer(to: &RemoteTransform3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_remote_node(_ path: NodePath) {
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RemoteTransform3D.method_set_remote_node, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_remote_node: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_remote_node")
        return withUnsafePointer(to: &RemoteTransform3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_remote_node() -> NodePath {
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(RemoteTransform3D.method_get_remote_node, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_force_update_cache: GDExtensionMethodBindPtr = {
        let methodName = StringName("force_update_cache")
        return withUnsafePointer(to: &RemoteTransform3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// ``RemoteTransform3D`` caches the remote node. It may not notice if the remote node disappears; ``forceUpdateCache()`` forces it to update the cache again.
    public final func forceUpdateCache() {
        gi.object_method_bind_ptrcall(RemoteTransform3D.method_force_update_cache, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static var method_set_use_global_coordinates: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_use_global_coordinates")
        return withUnsafePointer(to: &RemoteTransform3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_global_coordinates(_ useGlobalCoordinates: Bool) {
        withUnsafePointer(to: useGlobalCoordinates) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RemoteTransform3D.method_set_use_global_coordinates, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_use_global_coordinates: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_use_global_coordinates")
        return withUnsafePointer(to: &RemoteTransform3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_use_global_coordinates() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RemoteTransform3D.method_get_use_global_coordinates, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_update_position: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_update_position")
        return withUnsafePointer(to: &RemoteTransform3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_update_position(_ updateRemotePosition: Bool) {
        withUnsafePointer(to: updateRemotePosition) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RemoteTransform3D.method_set_update_position, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_update_position: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_update_position")
        return withUnsafePointer(to: &RemoteTransform3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_update_position() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RemoteTransform3D.method_get_update_position, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_update_rotation: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_update_rotation")
        return withUnsafePointer(to: &RemoteTransform3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_update_rotation(_ updateRemoteRotation: Bool) {
        withUnsafePointer(to: updateRemoteRotation) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RemoteTransform3D.method_set_update_rotation, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_update_rotation: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_update_rotation")
        return withUnsafePointer(to: &RemoteTransform3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_update_rotation() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RemoteTransform3D.method_get_update_rotation, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_update_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_update_scale")
        return withUnsafePointer(to: &RemoteTransform3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_update_scale(_ updateRemoteScale: Bool) {
        withUnsafePointer(to: updateRemoteScale) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RemoteTransform3D.method_set_update_scale, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_update_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_update_scale")
        return withUnsafePointer(to: &RemoteTransform3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_update_scale() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RemoteTransform3D.method_get_update_scale, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}
