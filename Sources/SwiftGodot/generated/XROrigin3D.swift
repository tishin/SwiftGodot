// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// The origin point in AR/VR.
/// 
/// This is a special node within the AR/VR system that maps the physical location of the center of our tracking space to the virtual location within our game world.
/// 
/// There should be only one of these nodes in your scene and you must have one. All the XRCamera3D, XRController3D and XRAnchor3D nodes should be direct children of this node for spatial tracking to work correctly.
/// 
/// It is the position of this node that you update when your character needs to move through your game world while we're not moving in the real world. Movement in the real world is always in relation to this origin point.
/// 
/// For example, if your character is driving a car, the XROrigin3D node should be a child node of this car. Or, if you're implementing a teleport system to move your character, you should change the position of this node.
/// 
open class XROrigin3D: Node3D {
    override open class var godotClassName: StringName { "XROrigin3D" }
    
    /* Properties */
    
    /// Allows you to adjust the scale to your game's units. Most AR/VR platforms assume a scale of 1 game world unit = 1 real world meter.
    /// 
    /// > Note: This method is a passthrough to the ``XRServer`` itself.
    /// 
    final public var worldScale: Double {
        get {
            return get_world_scale ()
        }
        
        set {
            set_world_scale (newValue)
        }
        
    }
    
    /// Is this XROrigin3D node the current origin used by the ``XRServer``?
    final public var current: Bool {
        get {
            return is_current ()
        }
        
        set {
            set_current (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_world_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_world_scale")
        return withUnsafePointer (to: &XROrigin3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_world_scale (_ worldScale: Double) {
        #if true
        
        var copy_world_scale = worldScale
        
        gi.object_method_bind_ptrcall_v (XROrigin3D.method_set_world_scale, UnsafeMutableRawPointer (mutating: handle), nil, &copy_world_scale)
        
        #else
        
        var copy_world_scale = worldScale
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_world_scale) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (XROrigin3D.method_set_world_scale, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_world_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_world_scale")
        return withUnsafePointer (to: &XROrigin3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_world_scale ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (XROrigin3D.method_get_world_scale, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_current: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_current")
        return withUnsafePointer (to: &XROrigin3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_current (_ enabled: Bool) {
        #if true
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (XROrigin3D.method_set_current, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (XROrigin3D.method_set_current, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_current: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_current")
        return withUnsafePointer (to: &XROrigin3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_current ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (XROrigin3D.method_is_current, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}
