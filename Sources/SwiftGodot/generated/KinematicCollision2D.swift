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


/// Holds collision data from the movement of a ``PhysicsBody2D``.
/// 
/// Holds collision data from the movement of a ``PhysicsBody2D``, usually from ``PhysicsBody2D/moveAndCollide(motion:testOnly:safeMargin:recoveryAsCollision:)``. When a ``PhysicsBody2D`` is moved, it stops if it detects a collision with another body. If a collision is detected, a ``KinematicCollision2D`` object is returned.
/// 
/// The collision data includes the colliding object, the remaining motion, and the collision position. This data can be used to determine a custom response to the collision.
/// 
open class KinematicCollision2D: RefCounted {
    private static var className = StringName("KinematicCollision2D")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_get_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_position")
        return withUnsafePointer(to: &KinematicCollision2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    /// Returns the point of collision in global coordinates.
    public final func getPosition() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(KinematicCollision2D.method_get_position, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_normal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_normal")
        return withUnsafePointer(to: &KinematicCollision2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    /// Returns the colliding body's shape's normal at the point of collision.
    public final func getNormal() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(KinematicCollision2D.method_get_normal, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_travel: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_travel")
        return withUnsafePointer(to: &KinematicCollision2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    /// Returns the moving object's travel before collision.
    public final func getTravel() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(KinematicCollision2D.method_get_travel, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_remainder: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_remainder")
        return withUnsafePointer(to: &KinematicCollision2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    /// Returns the moving object's remaining movement vector.
    public final func getRemainder() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(KinematicCollision2D.method_get_remainder, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_angle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_angle")
        return withUnsafePointer(to: &KinematicCollision2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2841063350)!
            }
            
        }
        
    }()
    
    /// Returns the collision angle according to `upDirection`, which is ``Vector2/up`` by default. This value is always positive.
    public final func getAngle(upDirection: Vector2 = Vector2 (x: 0, y: -1)) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: upDirection) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(KinematicCollision2D.method_get_angle, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_depth: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_depth")
        return withUnsafePointer(to: &KinematicCollision2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the colliding body's length of overlap along the collision normal.
    public final func getDepth() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(KinematicCollision2D.method_get_depth, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_local_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_local_shape")
        return withUnsafePointer(to: &KinematicCollision2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1981248198)!
            }
            
        }
        
    }()
    
    /// Returns the moving object's colliding shape.
    public final func getLocalShape() -> Object? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(KinematicCollision2D.method_get_local_shape, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_collider: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collider")
        return withUnsafePointer(to: &KinematicCollision2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1981248198)!
            }
            
        }
        
    }()
    
    /// Returns the colliding body's attached ``Object``.
    public final func getCollider() -> Object? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(KinematicCollision2D.method_get_collider, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_collider_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collider_id")
        return withUnsafePointer(to: &KinematicCollision2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the unique instance ID of the colliding body's attached ``Object``. See ``Object/getInstanceId()``.
    public final func getColliderId() -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        gi.object_method_bind_ptrcall(KinematicCollision2D.method_get_collider_id, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_collider_rid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collider_rid")
        return withUnsafePointer(to: &KinematicCollision2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Returns the colliding body's ``RID`` used by the ``PhysicsServer2D``.
    public final func getColliderRid() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(KinematicCollision2D.method_get_collider_rid, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_collider_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collider_shape")
        return withUnsafePointer(to: &KinematicCollision2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1981248198)!
            }
            
        }
        
    }()
    
    /// Returns the colliding body's shape.
    public final func getColliderShape() -> Object? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(KinematicCollision2D.method_get_collider_shape, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_collider_shape_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collider_shape_index")
        return withUnsafePointer(to: &KinematicCollision2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the colliding body's shape index. See ``CollisionObject2D``.
    public final func getColliderShapeIndex() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(KinematicCollision2D.method_get_collider_shape_index, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_collider_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collider_velocity")
        return withUnsafePointer(to: &KinematicCollision2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    /// Returns the colliding body's velocity.
    public final func getColliderVelocity() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(KinematicCollision2D.method_get_collider_velocity, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

