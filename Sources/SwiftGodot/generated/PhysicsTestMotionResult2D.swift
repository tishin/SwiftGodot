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


/// Describes the motion and collision result from ``PhysicsServer2D/bodyTestMotion(body:parameters:result:)``.
/// 
/// Describes the motion and collision result from ``PhysicsServer2D/bodyTestMotion(body:parameters:result:)``.
open class PhysicsTestMotionResult2D: RefCounted {
    private static var className = StringName("PhysicsTestMotionResult2D")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_get_travel: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_travel")
        return withUnsafePointer(to: &PhysicsTestMotionResult2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    /// Returns the moving object's travel before collision.
    public final func getTravel() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(PhysicsTestMotionResult2D.method_get_travel, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_remainder: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_remainder")
        return withUnsafePointer(to: &PhysicsTestMotionResult2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    /// Returns the moving object's remaining movement vector.
    public final func getRemainder() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(PhysicsTestMotionResult2D.method_get_remainder, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_collision_point: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_point")
        return withUnsafePointer(to: &PhysicsTestMotionResult2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    /// Returns the point of collision in global coordinates, if a collision occurred.
    public final func getCollisionPoint() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(PhysicsTestMotionResult2D.method_get_collision_point, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_collision_normal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_normal")
        return withUnsafePointer(to: &PhysicsTestMotionResult2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    /// Returns the colliding body's shape's normal at the point of collision, if a collision occurred.
    public final func getCollisionNormal() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(PhysicsTestMotionResult2D.method_get_collision_normal, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_collider_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collider_velocity")
        return withUnsafePointer(to: &PhysicsTestMotionResult2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    /// Returns the colliding body's velocity, if a collision occurred.
    public final func getColliderVelocity() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(PhysicsTestMotionResult2D.method_get_collider_velocity, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_collider_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collider_id")
        return withUnsafePointer(to: &PhysicsTestMotionResult2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the unique instance ID of the colliding body's attached ``Object``, if a collision occurred. See ``Object/getInstanceId()``.
    public final func getColliderId() -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        gi.object_method_bind_ptrcall(PhysicsTestMotionResult2D.method_get_collider_id, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_collider_rid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collider_rid")
        return withUnsafePointer(to: &PhysicsTestMotionResult2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Returns the colliding body's ``RID`` used by the ``PhysicsServer2D``, if a collision occurred.
    public final func getColliderRid() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsTestMotionResult2D.method_get_collider_rid, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_collider: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collider")
        return withUnsafePointer(to: &PhysicsTestMotionResult2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1981248198)!
            }
            
        }
        
    }()
    
    /// Returns the colliding body's attached ``Object``, if a collision occurred.
    public final func getCollider() -> Object? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(PhysicsTestMotionResult2D.method_get_collider, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_collider_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collider_shape")
        return withUnsafePointer(to: &PhysicsTestMotionResult2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the colliding body's shape index, if a collision occurred. See ``CollisionObject2D``.
    public final func getColliderShape() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(PhysicsTestMotionResult2D.method_get_collider_shape, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_collision_local_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_local_shape")
        return withUnsafePointer(to: &PhysicsTestMotionResult2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the moving object's colliding shape, if a collision occurred.
    public final func getCollisionLocalShape() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(PhysicsTestMotionResult2D.method_get_collision_local_shape, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_collision_depth: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_depth")
        return withUnsafePointer(to: &PhysicsTestMotionResult2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the length of overlap along the collision normal, if a collision occurred.
    public final func getCollisionDepth() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicsTestMotionResult2D.method_get_collision_depth, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_collision_safe_fraction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_safe_fraction")
        return withUnsafePointer(to: &PhysicsTestMotionResult2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the maximum fraction of the motion that can occur without a collision, between `0` and `1`.
    public final func getCollisionSafeFraction() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicsTestMotionResult2D.method_get_collision_safe_fraction, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_collision_unsafe_fraction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_unsafe_fraction")
        return withUnsafePointer(to: &PhysicsTestMotionResult2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the minimum fraction of the motion needed to collide, if a collision occurred, between `0` and `1`.
    public final func getCollisionUnsafeFraction() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicsTestMotionResult2D.method_get_collision_unsafe_fraction, handle, nil, &_result)
        return _result
    }
    
}

