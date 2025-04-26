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


/// Describes the motion and collision result from ``PhysicsServer3D/bodyTestMotion(body:parameters:result:)``.
/// 
/// Describes the motion and collision result from ``PhysicsServer3D/bodyTestMotion(body:parameters:result:)``.
open class PhysicsTestMotionResult3D: RefCounted {
    private static var className = StringName("PhysicsTestMotionResult3D")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_get_travel: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_travel")
        return withUnsafePointer(to: &PhysicsTestMotionResult3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    /// Returns the moving object's travel before collision.
    public final func getTravel() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(PhysicsTestMotionResult3D.method_get_travel, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_remainder: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_remainder")
        return withUnsafePointer(to: &PhysicsTestMotionResult3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    /// Returns the moving object's remaining movement vector.
    public final func getRemainder() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(PhysicsTestMotionResult3D.method_get_remainder, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_collision_safe_fraction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_safe_fraction")
        return withUnsafePointer(to: &PhysicsTestMotionResult3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the maximum fraction of the motion that can occur without a collision, between `0` and `1`.
    public final func getCollisionSafeFraction() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicsTestMotionResult3D.method_get_collision_safe_fraction, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_collision_unsafe_fraction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_unsafe_fraction")
        return withUnsafePointer(to: &PhysicsTestMotionResult3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the minimum fraction of the motion needed to collide, if a collision occurred, between `0` and `1`.
    public final func getCollisionUnsafeFraction() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicsTestMotionResult3D.method_get_collision_unsafe_fraction, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_collision_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_count")
        return withUnsafePointer(to: &PhysicsTestMotionResult3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of detected collisions.
    public final func getCollisionCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(PhysicsTestMotionResult3D.method_get_collision_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_collision_point: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_point")
        return withUnsafePointer(to: &PhysicsTestMotionResult3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1914908202)!
            }
            
        }
        
    }()
    
    /// Returns the point of collision in global coordinates given a collision index (the deepest collision by default), if a collision occurred.
    public final func getCollisionPoint(collisionIndex: Int32 = 0) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: collisionIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsTestMotionResult3D.method_get_collision_point, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_collision_normal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_normal")
        return withUnsafePointer(to: &PhysicsTestMotionResult3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1914908202)!
            }
            
        }
        
    }()
    
    /// Returns the colliding body's shape's normal at the point of collision given a collision index (the deepest collision by default), if a collision occurred.
    public final func getCollisionNormal(collisionIndex: Int32 = 0) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: collisionIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsTestMotionResult3D.method_get_collision_normal, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_collider_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collider_velocity")
        return withUnsafePointer(to: &PhysicsTestMotionResult3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1914908202)!
            }
            
        }
        
    }()
    
    /// Returns the colliding body's velocity given a collision index (the deepest collision by default), if a collision occurred.
    public final func getColliderVelocity(collisionIndex: Int32 = 0) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: collisionIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsTestMotionResult3D.method_get_collider_velocity, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_collider_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collider_id")
        return withUnsafePointer(to: &PhysicsTestMotionResult3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1591665591)!
            }
            
        }
        
    }()
    
    /// Returns the unique instance ID of the colliding body's attached ``Object`` given a collision index (the deepest collision by default), if a collision occurred. See ``Object/getInstanceId()``.
    public final func getColliderId(collisionIndex: Int32 = 0) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: collisionIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsTestMotionResult3D.method_get_collider_id, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_collider_rid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collider_rid")
        return withUnsafePointer(to: &PhysicsTestMotionResult3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1231817359)!
            }
            
        }
        
    }()
    
    /// Returns the colliding body's ``RID`` used by the ``PhysicsServer3D`` given a collision index (the deepest collision by default), if a collision occurred.
    public final func getColliderRid(collisionIndex: Int32 = 0) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: collisionIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsTestMotionResult3D.method_get_collider_rid, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_collider: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collider")
        return withUnsafePointer(to: &PhysicsTestMotionResult3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2639523548)!
            }
            
        }
        
    }()
    
    /// Returns the colliding body's attached ``Object`` given a collision index (the deepest collision by default), if a collision occurred.
    public final func getCollider(collisionIndex: Int32 = 0) -> Object? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: collisionIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsTestMotionResult3D.method_get_collider, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_collider_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collider_shape")
        return withUnsafePointer(to: &PhysicsTestMotionResult3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1591665591)!
            }
            
        }
        
    }()
    
    /// Returns the colliding body's shape index given a collision index (the deepest collision by default), if a collision occurred. See ``CollisionObject3D``.
    public final func getColliderShape(collisionIndex: Int32 = 0) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: collisionIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsTestMotionResult3D.method_get_collider_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_collision_local_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_local_shape")
        return withUnsafePointer(to: &PhysicsTestMotionResult3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1591665591)!
            }
            
        }
        
    }()
    
    /// Returns the moving object's colliding shape given a collision index (the deepest collision by default), if a collision occurred.
    public final func getCollisionLocalShape(collisionIndex: Int32 = 0) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: collisionIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsTestMotionResult3D.method_get_collision_local_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_collision_depth: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_depth")
        return withUnsafePointer(to: &PhysicsTestMotionResult3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 218038398)!
            }
            
        }
        
    }()
    
    /// Returns the length of overlap along the collision normal given a collision index (the deepest collision by default), if a collision occurred.
    public final func getCollisionDepth(collisionIndex: Int32 = 0) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: collisionIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsTestMotionResult3D.method_get_collision_depth, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
}

