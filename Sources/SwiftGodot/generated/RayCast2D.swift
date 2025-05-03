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


/// A ray in 2D space, used to find the first ``CollisionObject2D`` it intersects.
/// 
/// A raycast represents a ray from its origin to its ``targetPosition`` that finds the closest ``CollisionObject2D`` along its path, if it intersects any.
/// 
/// ``RayCast2D`` can ignore some objects by adding them to an exception list, by making its detection reporting ignore ``Area2D``s (``collideWithAreas``) or ``PhysicsBody2D``s (``collideWithBodies``), or by configuring physics layers.
/// 
/// ``RayCast2D`` calculates intersection every physics frame, and it holds the result until the next physics frame. For an immediate raycast, or if you want to configure a ``RayCast2D`` multiple times within the same physics frame, use ``forceRaycastUpdate()``.
/// 
/// To sweep over a region of 2D space, you can approximate the region with multiple ``RayCast2D``s or use ``ShapeCast2D``.
/// 
open class RayCast2D: Node2D {
    private static var className = StringName("RayCast2D")
    override open class var godotClassName: StringName { className }
    
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
    
    /// If `true`, the parent node will be excluded from collision detection.
    final public var excludeParent: Bool {
        get {
            return get_exclude_parent_body ()
        }
        
        set {
            set_exclude_parent_body (newValue)
        }
        
    }
    
    /// The ray's destination point, relative to the RayCast's `position`.
    final public var targetPosition: Vector2 {
        get {
            return get_target_position ()
        }
        
        set {
            set_target_position (newValue)
        }
        
    }
    
    /// The ray's collision mask. Only objects in at least one collision layer enabled in the mask will be detected. See <a href="https://docs.godotengine.org/en//tutorials/physics/physics_introduction.html#collision-layers-and-masks">Collision layers and masks</a> in the documentation for more information.
    final public var collisionMask: UInt32 {
        get {
            return get_collision_mask ()
        }
        
        set {
            set_collision_mask (newValue)
        }
        
    }
    
    /// If `true`, the ray will detect a hit when starting inside shapes. In this case the collision normal will be `Vector2(0, 0)`. Does not affect concave polygon shapes.
    final public var hitFromInside: Bool {
        get {
            return is_hit_from_inside_enabled ()
        }
        
        set {
            set_hit_from_inside (newValue)
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
    fileprivate static let method_set_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_enabled")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RayCast2D.method_set_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_enabled")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RayCast2D.method_is_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_target_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_target_position")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_target_position(_ localPoint: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: localPoint) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RayCast2D.method_set_target_position, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_target_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_target_position")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_target_position() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(RayCast2D.method_get_target_position, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_colliding: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_colliding")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns whether any object is intersecting with the ray's vector (considering the vector length).
    public final func isColliding() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RayCast2D.method_is_colliding, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_force_raycast_update: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("force_raycast_update")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Updates the collision information for the ray immediately, without waiting for the next `_physics_process` call. Use this method, for example, when the ray or its parent has changed state.
    /// 
    /// > Note: ``enabled`` does not need to be `true` for this to work.
    /// 
    public final func forceRaycastUpdate() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(RayCast2D.method_force_raycast_update, handle, nil, nil)
        
    }
    
    fileprivate static let method_get_collider: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collider")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1981248198)!
            }
            
        }
        
    }()
    
    /// Returns the first object that the ray intersects, or `null` if no object is intersecting the ray (i.e. ``isColliding()`` returns `false`).
    public final func getCollider() -> Object? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(RayCast2D.method_get_collider, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_collider_rid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collider_rid")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Returns the ``RID`` of the first object that the ray intersects, or an empty ``RID`` if no object is intersecting the ray (i.e. ``isColliding()`` returns `false`).
    public final func getColliderRid() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(RayCast2D.method_get_collider_rid, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_collider_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collider_shape")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the shape ID of the first object that the ray intersects, or `0` if no object is intersecting the ray (i.e. ``isColliding()`` returns `false`).
    /// 
    /// To get the intersected shape node, for a ``CollisionObject2D`` target, use:
    /// 
    public final func getColliderShape() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(RayCast2D.method_get_collider_shape, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_collision_point: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_point")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    /// Returns the collision point at which the ray intersects the closest object, in the global coordinate system. If ``hitFromInside`` is `true` and the ray starts inside of a collision shape, this function will return the origin point of the ray.
    /// 
    /// > Note: Check that ``isColliding()`` returns `true` before calling this method to ensure the returned point is valid and up-to-date.
    /// 
    public final func getCollisionPoint() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(RayCast2D.method_get_collision_point, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_collision_normal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_normal")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    /// Returns the normal of the intersecting object's shape at the collision point, or `Vector2(0, 0)` if the ray starts inside the shape and ``hitFromInside`` is `true`.
    /// 
    /// > Note: Check that ``isColliding()`` returns `true` before calling this method to ensure the returned normal is valid and up-to-date.
    /// 
    public final func getCollisionNormal() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(RayCast2D.method_get_collision_normal, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_add_exception_rid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_exception_rid")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// Adds a collision exception so the ray does not report collisions with the specified ``RID``.
    public final func addExceptionRid(_ rid: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: rid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RayCast2D.method_add_exception_rid, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_exception: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_exception")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3090941106)!
            }
            
        }
        
    }()
    
    /// Adds a collision exception so the ray does not report collisions with the specified ``CollisionObject2D`` node.
    public final func addException(node: CollisionObject2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: node?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RayCast2D.method_add_exception, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_exception_rid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_exception_rid")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// Removes a collision exception so the ray does report collisions with the specified ``RID``.
    public final func removeExceptionRid(_ rid: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: rid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RayCast2D.method_remove_exception_rid, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_exception: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_exception")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3090941106)!
            }
            
        }
        
    }()
    
    /// Removes a collision exception so the ray does report collisions with the specified ``CollisionObject2D`` node.
    public final func removeException(node: CollisionObject2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: node?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RayCast2D.method_remove_exception, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_clear_exceptions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_exceptions")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all collision exceptions for this ray.
    public final func clearExceptions() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(RayCast2D.method_clear_exceptions, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collision_mask")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_collision_mask(_ mask: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mask) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RayCast2D.method_set_collision_mask, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_mask")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_collision_mask() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(RayCast2D.method_get_collision_mask, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_collision_mask_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collision_mask_value")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Based on `value`, enables or disables the specified layer in the ``collisionMask``, given a `layerNumber` between 1 and 32.
    public final func setCollisionMaskValue(layerNumber: Int32, value: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layerNumber) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RayCast2D.method_set_collision_mask_value, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_collision_mask_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_mask_value")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns whether or not the specified layer of the ``collisionMask`` is enabled, given a `layerNumber` between 1 and 32.
    public final func getCollisionMaskValue(layerNumber: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: layerNumber) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RayCast2D.method_get_collision_mask_value, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_exclude_parent_body: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_exclude_parent_body")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_exclude_parent_body(_ mask: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mask) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RayCast2D.method_set_exclude_parent_body, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_exclude_parent_body: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_exclude_parent_body")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_exclude_parent_body() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RayCast2D.method_get_exclude_parent_body, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_collide_with_areas: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collide_with_areas")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_collide_with_areas(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RayCast2D.method_set_collide_with_areas, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_collide_with_areas_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_collide_with_areas_enabled")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_collide_with_areas_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RayCast2D.method_is_collide_with_areas_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_collide_with_bodies: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collide_with_bodies")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_collide_with_bodies(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RayCast2D.method_set_collide_with_bodies, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_collide_with_bodies_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_collide_with_bodies_enabled")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_collide_with_bodies_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RayCast2D.method_is_collide_with_bodies_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_hit_from_inside: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_hit_from_inside")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_hit_from_inside(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RayCast2D.method_set_hit_from_inside, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_hit_from_inside_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_hit_from_inside_enabled")
        return withUnsafePointer(to: &RayCast2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_hit_from_inside_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RayCast2D.method_is_hit_from_inside_enabled, handle, nil, &_result)
        return _result
    }
    
}

