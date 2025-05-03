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


/// A 3D shape that sweeps a region of space to detect ``CollisionObject3D``s.
/// 
/// Shape casting allows to detect collision objects by sweeping its ``shape`` along the cast direction determined by ``targetPosition``. This is similar to ``RayCast3D``, but it allows for sweeping a region of space, rather than just a straight line. ``ShapeCast3D`` can detect multiple collision objects. It is useful for things like wide laser beams or snapping a simple shape to a floor.
/// 
/// Immediate collision overlaps can be done with the ``targetPosition`` set to `Vector3(0, 0, 0)` and by calling ``forceShapecastUpdate()`` within the same physics frame. This helps to overcome some limitations of ``Area3D`` when used as an instantaneous detection area, as collision information isn't immediately available to it.
/// 
/// > Note: Shape casting is more computationally expensive than ray casting.
/// 
open class ShapeCast3D: Node3D {
    private static var className = StringName("ShapeCast3D")
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
    
    /// The shape to be used for collision queries.
    final public var shape: Shape3D? {
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
    
    /// The shape's destination point, relative to this node's ``Node3D/position``.
    final public var targetPosition: Vector3 {
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
    
    /// The shape's collision mask. Only objects in at least one collision layer enabled in the mask will be detected. See <a href="https://docs.godotengine.org/en//tutorials/physics/physics_introduction.html#collision-layers-and-masks">Collision layers and masks</a> in the documentation for more information.
    final public var collisionMask: UInt32 {
        get {
            return get_collision_mask ()
        }
        
        set {
            set_collision_mask (newValue)
        }
        
    }
    
    /// Returns the complete collision information from the collision sweep. The data returned is the same as in the ``PhysicsDirectSpaceState3D/getRestInfo(parameters:)`` method.
    final public var collisionResult: VariantArray {
        get {
            return get_collision_result ()
        }
        
    }
    
    /// If `true`, collisions with ``Area3D``s will be reported.
    final public var collideWithAreas: Bool {
        get {
            return is_collide_with_areas_enabled ()
        }
        
        set {
            set_collide_with_areas (newValue)
        }
        
    }
    
    /// If `true`, collisions with ``PhysicsBody3D``s will be reported.
    final public var collideWithBodies: Bool {
        get {
            return is_collide_with_bodies_enabled ()
        }
        
        set {
            set_collide_with_bodies (newValue)
        }
        
    }
    
    /// The custom color to use to draw the shape in the editor and at run-time if **Visible Collision Shapes** is enabled in the **Debug** menu. This color will be highlighted at run-time if the ``ShapeCast3D`` is colliding with something.
    /// 
    /// If set to `Color(0.0, 0.0, 0.0)` (by default), the color set in ``ProjectSettings/debug/shapes/collision/shapeColor`` is used.
    /// 
    final public var debugShapeCustomColor: Color {
        get {
            return get_debug_shape_custom_color ()
        }
        
        set {
            set_debug_shape_custom_color (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_resource_changed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("resource_changed")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 968641751)!
            }
            
        }
        
    }()
    
    /// This method does nothing.
    public final func resourceChanged(resource: Resource?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: resource?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast3D.method_resource_changed, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_enabled")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(ShapeCast3D.method_set_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_enabled")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ShapeCast3D.method_is_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_shape")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1549710052)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shape(_ shape: Shape3D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shape?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast3D.method_set_shape, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_shape")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3214262478)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_shape() -> Shape3D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(ShapeCast3D.method_get_shape, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_target_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_target_position")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_target_position(_ localPoint: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: localPoint) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast3D.method_set_target_position, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_target_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_target_position")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_target_position() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(ShapeCast3D.method_get_target_position, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_margin")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_margin(_ margin: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: margin) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast3D.method_set_margin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_margin")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_margin() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(ShapeCast3D.method_get_margin, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_max_results: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_max_results")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_results(_ maxResults: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: maxResults) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast3D.method_set_max_results, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_max_results: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_max_results")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_results() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(ShapeCast3D.method_get_max_results, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_colliding: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_colliding")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns whether any object is intersecting with the shape's vector (considering the vector length).
    public final func isColliding() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ShapeCast3D.method_is_colliding, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_collision_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_count")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// The number of collisions detected at the point of impact. Use this to iterate over multiple collisions as provided by ``getCollider(index:)``, ``getColliderShape(index:)``, ``getCollisionPoint(index:)``, and ``getCollisionNormal(index:)`` methods.
    public final func getCollisionCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(ShapeCast3D.method_get_collision_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_force_shapecast_update: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("force_shapecast_update")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Updates the collision information for the shape immediately, without waiting for the next `_physics_process` call. Use this method, for example, when the shape or its parent has changed state.
    /// 
    /// > Note: Setting ``enabled`` to `true` is not required for this to work.
    /// 
    public final func forceShapecastUpdate() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ShapeCast3D.method_force_shapecast_update, handle, nil, nil)
        
    }
    
    fileprivate static let method_get_collider: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collider")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3332903315)!
            }
            
        }
        
    }()
    
    /// Returns the collided ``Object`` of one of the multiple collisions at `index`, or `null` if no object is intersecting the shape (i.e. ``isColliding()`` returns `false`).
    public final func getCollider(index: Int32) -> Object? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast3D.method_get_collider, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_collider_rid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collider_rid")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 495598643)!
            }
            
        }
        
    }()
    
    /// Returns the ``RID`` of the collided object of one of the multiple collisions at `index`.
    public final func getColliderRid(index: Int32) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast3D.method_get_collider_rid, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_collider_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collider_shape")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the shape ID of the colliding shape of one of the multiple collisions at `index`, or `0` if no object is intersecting the shape (i.e. ``isColliding()`` returns `false`).
    public final func getColliderShape(index: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast3D.method_get_collider_shape, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_collision_point: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_point")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 711720468)!
            }
            
        }
        
    }()
    
    /// Returns the collision point of one of the multiple collisions at `index` where the shape intersects the colliding object.
    /// 
    /// > Note: This point is in the **global** coordinate system.
    /// 
    public final func getCollisionPoint(index: Int32) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast3D.method_get_collision_point, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_collision_normal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_normal")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 711720468)!
            }
            
        }
        
    }()
    
    /// Returns the normal of one of the multiple collisions at `index` of the intersecting object.
    public final func getCollisionNormal(index: Int32) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast3D.method_get_collision_normal, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_closest_collision_safe_fraction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_closest_collision_safe_fraction")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the fraction from this cast's origin to its ``targetPosition`` of how far the shape can move without triggering a collision, as a value between `0.0` and `1.0`.
    public final func getClosestCollisionSafeFraction() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(ShapeCast3D.method_get_closest_collision_safe_fraction, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_closest_collision_unsafe_fraction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_closest_collision_unsafe_fraction")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the fraction from this cast's origin to its ``targetPosition`` of how far the shape must move to trigger a collision, as a value between `0.0` and `1.0`.
    /// 
    /// In ideal conditions this would be the same as ``getClosestCollisionSafeFraction()``, however shape casting is calculated in discrete steps, so the precise point of collision can occur between two calculated positions.
    /// 
    public final func getClosestCollisionUnsafeFraction() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(ShapeCast3D.method_get_closest_collision_unsafe_fraction, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_add_exception_rid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_exception_rid")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// Adds a collision exception so the shape does not report collisions with the specified ``RID``.
    public final func addExceptionRid(_ rid: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: rid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast3D.method_add_exception_rid, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_exception: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_exception")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1976431078)!
            }
            
        }
        
    }()
    
    /// Adds a collision exception so the shape does not report collisions with the specified node.
    public final func addException(node: CollisionObject3D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: node?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast3D.method_add_exception, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_exception_rid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_exception_rid")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// Removes a collision exception so the shape does report collisions with the specified ``RID``.
    public final func removeExceptionRid(_ rid: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: rid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast3D.method_remove_exception_rid, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_exception: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_exception")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1976431078)!
            }
            
        }
        
    }()
    
    /// Removes a collision exception so the shape does report collisions with the specified node.
    public final func removeException(node: CollisionObject3D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: node?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast3D.method_remove_exception, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_clear_exceptions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_exceptions")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all collision exceptions for this shape.
    public final func clearExceptions() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ShapeCast3D.method_clear_exceptions, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collision_mask")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(ShapeCast3D.method_set_collision_mask, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_mask")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_collision_mask() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(ShapeCast3D.method_get_collision_mask, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_collision_mask_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collision_mask_value")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
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
                        gi.object_method_bind_ptrcall(ShapeCast3D.method_set_collision_mask_value, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_collision_mask_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_mask_value")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(ShapeCast3D.method_get_collision_mask_value, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_exclude_parent_body: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_exclude_parent_body")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(ShapeCast3D.method_set_exclude_parent_body, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_exclude_parent_body: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_exclude_parent_body")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_exclude_parent_body() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ShapeCast3D.method_get_exclude_parent_body, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_collide_with_areas: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collide_with_areas")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(ShapeCast3D.method_set_collide_with_areas, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_collide_with_areas_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_collide_with_areas_enabled")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_collide_with_areas_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ShapeCast3D.method_is_collide_with_areas_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_collide_with_bodies: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collide_with_bodies")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(ShapeCast3D.method_set_collide_with_bodies, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_collide_with_bodies_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_collide_with_bodies_enabled")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_collide_with_bodies_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ShapeCast3D.method_is_collide_with_bodies_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_collision_result: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_result")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_collision_result() -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        gi.object_method_bind_ptrcall(ShapeCast3D.method_get_collision_result, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_debug_shape_custom_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_debug_shape_custom_color")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_debug_shape_custom_color(_ debugShapeCustomColor: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: debugShapeCustomColor) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ShapeCast3D.method_set_debug_shape_custom_color, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_debug_shape_custom_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_debug_shape_custom_color")
        return withUnsafePointer(to: &ShapeCast3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_debug_shape_custom_color() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(ShapeCast3D.method_get_debug_shape_custom_color, handle, nil, &_result)
        return _result
    }
    
}

