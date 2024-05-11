// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Provides parameters for ``PhysicsDirectSpaceState2D/intersectPoint(parameters:maxResults:)``.
/// 
/// By changing various properties of this object, such as the point position, you can configure the parameters for ``PhysicsDirectSpaceState2D/intersectPoint(parameters:maxResults:)``.
open class PhysicsPointQueryParameters2D: RefCounted {
    override open class var godotClassName: StringName { "PhysicsPointQueryParameters2D" }
    
    /* Properties */
    
    /// The position being queried for, in global coordinates.
    final public var position: Vector2 {
        get {
            return get_position ()
        }
        
        set {
            set_position (newValue)
        }
        
    }
    
    /// If different from `0`, restricts the query to a specific canvas layer specified by its instance ID. See ``Object/getInstanceId()``.
    /// 
    /// If `0`, restricts the query to the Viewport's default canvas layer.
    /// 
    final public var canvasInstanceId: UInt {
        get {
            return get_canvas_instance_id ()
        }
        
        set {
            set_canvas_instance_id (newValue)
        }
        
    }
    
    /// The physics layers the query will detect (as a bitmask). By default, all collision layers are detected. See [url=$DOCS_URL/tutorials/physics/physics_introduction.html#collision-layers-and-masks]Collision layers and masks</a> in the documentation for more information.
    final public var collisionMask: UInt32 {
        get {
            return get_collision_mask ()
        }
        
        set {
            set_collision_mask (newValue)
        }
        
    }
    
    /// The list of object ``RID``s that will be excluded from collisions. Use ``CollisionObject2D/getRid()`` to get the ``RID`` associated with a ``CollisionObject2D``-derived node.
    final public var exclude: VariantCollection<RID> {
        get {
            return get_exclude ()
        }
        
        set {
            set_exclude (newValue)
        }
        
    }
    
    /// If `true`, the query will take ``PhysicsBody2D``s into account.
    final public var collideWithBodies: Bool {
        get {
            return is_collide_with_bodies_enabled ()
        }
        
        set {
            set_collide_with_bodies (newValue)
        }
        
    }
    
    /// If `true`, the query will take ``Area2D``s into account.
    final public var collideWithAreas: Bool {
        get {
            return is_collide_with_areas_enabled ()
        }
        
        set {
            set_collide_with_areas (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_position")
        return withUnsafePointer (to: &PhysicsPointQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_position (_ position: Vector2) {
        #if true
        
        var copy_position = position
        
        gi.object_method_bind_ptrcall_v (PhysicsPointQueryParameters2D.method_set_position, UnsafeMutableRawPointer (mutating: handle), nil, &copy_position)
        
        #else
        
        var copy_position = position
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_position) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PhysicsPointQueryParameters2D.method_set_position, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_position")
        return withUnsafePointer (to: &PhysicsPointQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_position ()-> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall (PhysicsPointQueryParameters2D.method_get_position, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_canvas_instance_id: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_canvas_instance_id")
        return withUnsafePointer (to: &PhysicsPointQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_canvas_instance_id (_ canvasInstanceId: UInt) {
        #if true
        
        var copy_canvas_instance_id = canvasInstanceId
        
        gi.object_method_bind_ptrcall_v (PhysicsPointQueryParameters2D.method_set_canvas_instance_id, UnsafeMutableRawPointer (mutating: handle), nil, &copy_canvas_instance_id)
        
        #else
        
        var copy_canvas_instance_id = canvasInstanceId
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_canvas_instance_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PhysicsPointQueryParameters2D.method_set_canvas_instance_id, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_canvas_instance_id: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_canvas_instance_id")
        return withUnsafePointer (to: &PhysicsPointQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_canvas_instance_id ()-> UInt {
        var _result: UInt = 0
        gi.object_method_bind_ptrcall (PhysicsPointQueryParameters2D.method_get_canvas_instance_id, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_collision_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_collision_mask")
        return withUnsafePointer (to: &PhysicsPointQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_collision_mask (_ collisionMask: UInt32) {
        #if true
        
        var copy_collision_mask: Int = Int (collisionMask)
        
        gi.object_method_bind_ptrcall_v (PhysicsPointQueryParameters2D.method_set_collision_mask, UnsafeMutableRawPointer (mutating: handle), nil, &copy_collision_mask)
        
        #else
        
        var copy_collision_mask: Int = Int (collisionMask)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_collision_mask) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PhysicsPointQueryParameters2D.method_set_collision_mask, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_collision_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_collision_mask")
        return withUnsafePointer (to: &PhysicsPointQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_collision_mask ()-> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall (PhysicsPointQueryParameters2D.method_get_collision_mask, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_exclude: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_exclude")
        return withUnsafePointer (to: &PhysicsPointQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_exclude (_ exclude: VariantCollection<RID>) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (PhysicsPointQueryParameters2D.method_set_exclude, UnsafeMutableRawPointer (mutating: handle), nil, &exclude.array.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &exclude.array.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PhysicsPointQueryParameters2D.method_set_exclude, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_exclude: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_exclude")
        return withUnsafePointer (to: &PhysicsPointQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_exclude ()-> VariantCollection<RID> {
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall (PhysicsPointQueryParameters2D.method_get_exclude, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VariantCollection<RID>(content: _result)
    }
    
    fileprivate static var method_set_collide_with_bodies: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_collide_with_bodies")
        return withUnsafePointer (to: &PhysicsPointQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_collide_with_bodies (_ enable: Bool) {
        #if true
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (PhysicsPointQueryParameters2D.method_set_collide_with_bodies, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PhysicsPointQueryParameters2D.method_set_collide_with_bodies, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_collide_with_bodies_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_collide_with_bodies_enabled")
        return withUnsafePointer (to: &PhysicsPointQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_collide_with_bodies_enabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (PhysicsPointQueryParameters2D.method_is_collide_with_bodies_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_collide_with_areas: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_collide_with_areas")
        return withUnsafePointer (to: &PhysicsPointQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_collide_with_areas (_ enable: Bool) {
        #if true
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (PhysicsPointQueryParameters2D.method_set_collide_with_areas, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PhysicsPointQueryParameters2D.method_set_collide_with_areas, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_collide_with_areas_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_collide_with_areas_enabled")
        return withUnsafePointer (to: &PhysicsPointQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_collide_with_areas_enabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (PhysicsPointQueryParameters2D.method_is_collide_with_areas_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

