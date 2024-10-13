// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A 2D shape that sweeps a region of space to detect ``CollisionObject2D``s.
/// 
/// Shape casting allows to detect collision objects by sweeping its ``shape`` along the cast direction determined by ``targetPosition``. This is similar to ``RayCast2D``, but it allows for sweeping a region of space, rather than just a straight line. ``ShapeCast2D`` can detect multiple collision objects. It is useful for things like wide laser beams or snapping a simple shape to a floor.
/// 
/// Immediate collision overlaps can be done with the ``targetPosition`` set to `Vector2(0, 0)` and by calling ``forceShapecastUpdate()`` within the same physics frame. This helps to overcome some limitations of ``Area2D`` when used as an instantaneous detection area, as collision information isn't immediately available to it.
/// 
/// > Note: Shape casting is more computationally expensive than ray casting.
/// 
open class ShapeCast2D: Node2D {
    override open class var godotClassName: StringName { "ShapeCast2D" }
    
    /* Properties */
    
    /// If `true`, collisions will be reported.
    final public var enabled: Bool {
        get {
            return is_enabled ()
        }
        
        set {
            set_enabled (newValue)
        }
        
    }
    
    /// The ``Shape2D``-derived shape to be used for collision queries.
    final public var shape: Shape2D? {
        get {
            return get_shape ()
        }
        
        set {
            set_shape (newValue)
        }
        
    }
    
    /// If `true`, the parent node will be excluded from collision detection.
    final public var excludeParent: Bool {
        get {
            return get_exclude_parent_body ()
        }
        
        set {
            set_exclude_parent_body (newValue)
        }
        
    }
    
    /// The shape's destination point, relative to this node's `position`.
    final public var targetPosition: Vector2 {
        get {
            return get_target_position ()
        }
        
        set {
            set_target_position (newValue)
        }
        
    }
    
    /// The collision margin for the shape. A larger margin helps detecting collisions more consistently, at the cost of precision.
    final public var margin: Double {
        get {
            return get_margin ()
        }
        
        set {
            set_margin (newValue)
        }
        
    }
    
    /// The number of intersections can be limited with this parameter, to reduce the processing time.
    final public var maxResults: Int32 {
        get {
            return get_max_results ()
        }
        
        set {
            set_max_results (newValue)
        }
        
    }
    
    /// The shape's collision mask. Only objects in at least one collision layer enabled in the mask will be detected.
    final public var collisionMask: UInt32 {
        get {
            return get_collision_mask ()
        }
        
        set {
            set_collision_mask (newValue)
        }
        
    }
    
    /// If `true`, collisions with ``Area2D``s will be reported.
    final public var collideWithAreas: Bool {
        get {
            return is_collide_with_areas_enabled ()
        }
        
        set {
            set_collide_with_areas (newValue)
        }
        
    }
    
    /// If `true`, collisions with ``PhysicsBody2D``s will be reported.
    final public var collideWithBodies: Bool {
        get {
            return is_collide_with_bodies_enabled ()
        }
        
        set {
            set_collide_with_bodies (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_enabled")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_enabled(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast2D.method_set_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_enabled")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_enabled() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ShapeCast2D.method_is_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_shape: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_shape")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 771364740)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shape(_ shape: Shape2D?) {
        withUnsafePointer(to: shape?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast2D.method_set_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_shape: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_shape")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 522005891)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_shape() -> Shape2D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(ShapeCast2D.method_get_shape, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_target_position: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_target_position")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_target_position(_ localPoint: Vector2) {
        withUnsafePointer(to: localPoint) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast2D.method_set_target_position, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_target_position: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_target_position")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_target_position() -> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(ShapeCast2D.method_get_target_position, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_margin: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_margin")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_margin(_ margin: Double) {
        withUnsafePointer(to: margin) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast2D.method_set_margin, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_margin: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_margin")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_margin() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(ShapeCast2D.method_get_margin, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_max_results: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_max_results")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_results(_ maxResults: Int32) {
        withUnsafePointer(to: maxResults) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast2D.method_set_max_results, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_max_results: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_max_results")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_results() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(ShapeCast2D.method_get_max_results, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_is_colliding: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_colliding")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns whether any object is intersecting with the shape's vector (considering the vector length).
    public final func isColliding() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ShapeCast2D.method_is_colliding, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_collision_count: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_collision_count")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// The number of collisions detected at the point of impact. Use this to iterate over multiple collisions as provided by ``getCollider(index:)``, ``getColliderShape(index:)``, ``getCollisionPoint(index:)``, and ``getCollisionNormal(index:)`` methods.
    public final func getCollisionCount() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(ShapeCast2D.method_get_collision_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_force_shapecast_update: GDExtensionMethodBindPtr = {
        let methodName = StringName("force_shapecast_update")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Updates the collision information for the shape immediately, without waiting for the next `_physics_process` call. Use this method, for example, when the shape or its parent has changed state.
    /// 
    /// > Note: `enabled == true` is not required for this to work.
    /// 
    public final func forceShapecastUpdate() {
        gi.object_method_bind_ptrcall(ShapeCast2D.method_force_shapecast_update, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static var method_get_collider: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_collider")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3332903315)!
            }
            
        }
        
    }()
    
    /// Returns the collided ``Object`` of one of the multiple collisions at `index`, or `null` if no object is intersecting the shape (i.e. ``isColliding()`` returns `false`).
    public final func getCollider(index: Int32) -> Object? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast2D.method_get_collider, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_get_collider_rid: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_collider_rid")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 495598643)!
            }
            
        }
        
    }()
    
    /// Returns the ``RID`` of the collided object of one of the multiple collisions at `index`.
    public final func getColliderRid(index: Int32) -> RID {
        let _result: RID = RID ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast2D.method_get_collider_rid, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_collider_shape: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_collider_shape")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the shape ID of the colliding shape of one of the multiple collisions at `index`, or `0` if no object is intersecting the shape (i.e. ``isColliding()`` returns `false`).
    public final func getColliderShape(index: Int32) -> Int32 {
        var _result: Int32 = 0
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast2D.method_get_collider_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_collision_point: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_collision_point")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2299179447)!
            }
            
        }
        
    }()
    
    /// Returns the collision point of one of the multiple collisions at `index` where the shape intersects the colliding object.
    /// 
    /// > Note: this point is in the **global** coordinate system.
    /// 
    public final func getCollisionPoint(index: Int32) -> Vector2 {
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast2D.method_get_collision_point, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_collision_normal: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_collision_normal")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2299179447)!
            }
            
        }
        
    }()
    
    /// Returns the normal of one of the multiple collisions at `index` of the intersecting object.
    public final func getCollisionNormal(index: Int32) -> Vector2 {
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast2D.method_get_collision_normal, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_closest_collision_safe_fraction: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_closest_collision_safe_fraction")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// The fraction from the ``ShapeCast2D``'s origin to its ``targetPosition`` (between 0 and 1) of how far the shape can move without triggering a collision.
    public final func getClosestCollisionSafeFraction() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(ShapeCast2D.method_get_closest_collision_safe_fraction, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_closest_collision_unsafe_fraction: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_closest_collision_unsafe_fraction")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// The fraction from the ``ShapeCast2D``'s origin to its ``targetPosition`` (between 0 and 1) of how far the shape must move to trigger a collision.
    /// 
    /// In ideal conditions this would be the same as ``getClosestCollisionSafeFraction()``, however shape casting is calculated in discrete steps, so the precise point of collision can occur between two calculated positions.
    /// 
    public final func getClosestCollisionUnsafeFraction() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(ShapeCast2D.method_get_closest_collision_unsafe_fraction, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_add_exception_rid: GDExtensionMethodBindPtr = {
        let methodName = StringName("add_exception_rid")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// Adds a collision exception so the shape does not report collisions with the specified ``RID``.
    public final func addExceptionRid(_ rid: RID) {
        withUnsafePointer(to: rid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast2D.method_add_exception_rid, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_add_exception: GDExtensionMethodBindPtr = {
        let methodName = StringName("add_exception")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3090941106)!
            }
            
        }
        
    }()
    
    /// Adds a collision exception so the shape does not report collisions with the specified ``CollisionObject2D`` node.
    public final func addException(node: CollisionObject2D?) {
        withUnsafePointer(to: node?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast2D.method_add_exception, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_remove_exception_rid: GDExtensionMethodBindPtr = {
        let methodName = StringName("remove_exception_rid")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// Removes a collision exception so the shape does report collisions with the specified ``RID``.
    public final func removeExceptionRid(_ rid: RID) {
        withUnsafePointer(to: rid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast2D.method_remove_exception_rid, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_remove_exception: GDExtensionMethodBindPtr = {
        let methodName = StringName("remove_exception")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3090941106)!
            }
            
        }
        
    }()
    
    /// Removes a collision exception so the shape does report collisions with the specified ``CollisionObject2D`` node.
    public final func removeException(node: CollisionObject2D?) {
        withUnsafePointer(to: node?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast2D.method_remove_exception, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_clear_exceptions: GDExtensionMethodBindPtr = {
        let methodName = StringName("clear_exceptions")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all collision exceptions for this shape.
    public final func clearExceptions() {
        gi.object_method_bind_ptrcall(ShapeCast2D.method_clear_exceptions, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static var method_set_collision_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_collision_mask")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_collision_mask(_ mask: UInt32) {
        withUnsafePointer(to: mask) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast2D.method_set_collision_mask, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_collision_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_collision_mask")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_collision_mask() -> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(ShapeCast2D.method_get_collision_mask, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_collision_mask_value: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_collision_mask_value")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Based on `value`, enables or disables the specified layer in the ``collisionMask``, given a `layerNumber` between 1 and 32.
    public final func setCollisionMaskValue(layerNumber: Int32, value: Bool) {
        withUnsafePointer(to: layerNumber) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ShapeCast2D.method_set_collision_mask_value, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_collision_mask_value: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_collision_mask_value")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns whether or not the specified layer of the ``collisionMask`` is enabled, given a `layerNumber` between 1 and 32.
    public final func getCollisionMaskValue(layerNumber: Int32) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: layerNumber) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast2D.method_get_collision_mask_value, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_set_exclude_parent_body: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_exclude_parent_body")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_exclude_parent_body(_ mask: Bool) {
        withUnsafePointer(to: mask) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast2D.method_set_exclude_parent_body, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_exclude_parent_body: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_exclude_parent_body")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_exclude_parent_body() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ShapeCast2D.method_get_exclude_parent_body, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_collide_with_areas: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_collide_with_areas")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_collide_with_areas(_ enable: Bool) {
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast2D.method_set_collide_with_areas, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_collide_with_areas_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_collide_with_areas_enabled")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_collide_with_areas_enabled() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ShapeCast2D.method_is_collide_with_areas_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_collide_with_bodies: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_collide_with_bodies")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_collide_with_bodies(_ enable: Bool) {
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast2D.method_set_collide_with_bodies, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_collide_with_bodies_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_collide_with_bodies_enabled")
        return withUnsafePointer(to: &ShapeCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_collide_with_bodies_enabled() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ShapeCast2D.method_is_collide_with_bodies_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

