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


/// Provides parameters for ``PhysicsServer2D/bodyTestMotion(body:parameters:result:)``.
/// 
/// By changing various properties of this object, such as the motion, you can configure the parameters for ``PhysicsServer2D/bodyTestMotion(body:parameters:result:)``.
open class PhysicsTestMotionParameters2D: RefCounted {
    private static var className = StringName("PhysicsTestMotionParameters2D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Transform in global space where the motion should start. Usually set to ``Node2D/globalTransform`` for the current body's transform.
    final public var from: Transform2D {
        get {
            return get_from ()
        }
        
        set {
            set_from (newValue)
        }
        
    }
    
    /// Motion vector to define the length and direction of the motion to test.
    final public var motion: Vector2 {
        get {
            return get_motion ()
        }
        
        set {
            set_motion (newValue)
        }
        
    }
    
    /// Increases the size of the shapes involved in the collision detection.
    final public var margin: Double {
        get {
            return get_margin ()
        }
        
        set {
            set_margin (newValue)
        }
        
    }
    
    /// If set to `true`, shapes of type ``PhysicsServer2D/ShapeType/separationRay`` are used to detect collisions and can stop the motion. Can be useful when snapping to the ground.
    /// 
    /// If set to `false`, shapes of type ``PhysicsServer2D/ShapeType/separationRay`` are only used for separation when overlapping with other bodies. That's the main use for separation ray shapes.
    /// 
    final public var collideSeparationRay: Bool {
        get {
            return is_collide_separation_ray_enabled ()
        }
        
        set {
            set_collide_separation_ray_enabled (newValue)
        }
        
    }
    
    /// Optional array of body ``RID`` to exclude from collision. Use ``CollisionObject2D/getRid()`` to get the ``RID`` associated with a ``CollisionObject2D``-derived node.
    final public var excludeBodies: TypedArray<RID> {
        get {
            return get_exclude_bodies ()
        }
        
        set {
            set_exclude_bodies (newValue)
        }
        
    }
    
    /// Optional array of object unique instance ID to exclude from collision. See ``Object/getInstanceId()``.
    final public var excludeObjects: TypedArray<Int64> {
        get {
            return get_exclude_objects ()
        }
        
        set {
            set_exclude_objects (newValue)
        }
        
    }
    
    /// If set to `true`, any depenetration from the recovery phase is reported as a collision; this is used e.g. by ``CharacterBody2D`` for improving floor detection during floor snapping.
    /// 
    /// If set to `false`, only collisions resulting from the motion are reported, which is generally the desired behavior.
    /// 
    final public var recoveryAsCollision: Bool {
        get {
            return is_recovery_as_collision_enabled ()
        }
        
        set {
            set_recovery_as_collision_enabled (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_get_from: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_from")
        return withUnsafePointer(to: &PhysicsTestMotionParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3814499831)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_from() -> Transform2D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform2D = Transform2D ()
        gi.object_method_bind_ptrcall(PhysicsTestMotionParameters2D.method_get_from, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_from: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_from")
        return withUnsafePointer(to: &PhysicsTestMotionParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2761652528)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_from(_ from: Transform2D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsTestMotionParameters2D.method_set_from, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_motion: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_motion")
        return withUnsafePointer(to: &PhysicsTestMotionParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_motion() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(PhysicsTestMotionParameters2D.method_get_motion, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_motion: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_motion")
        return withUnsafePointer(to: &PhysicsTestMotionParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_motion(_ motion: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: motion) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsTestMotionParameters2D.method_set_motion, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_margin")
        return withUnsafePointer(to: &PhysicsTestMotionParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_margin() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicsTestMotionParameters2D.method_get_margin, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_margin")
        return withUnsafePointer(to: &PhysicsTestMotionParameters2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(PhysicsTestMotionParameters2D.method_set_margin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_collide_separation_ray_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_collide_separation_ray_enabled")
        return withUnsafePointer(to: &PhysicsTestMotionParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_collide_separation_ray_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PhysicsTestMotionParameters2D.method_is_collide_separation_ray_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_collide_separation_ray_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collide_separation_ray_enabled")
        return withUnsafePointer(to: &PhysicsTestMotionParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_collide_separation_ray_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsTestMotionParameters2D.method_set_collide_separation_ray_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_exclude_bodies: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_exclude_bodies")
        return withUnsafePointer(to: &PhysicsTestMotionParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_exclude_bodies() -> TypedArray<RID> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(PhysicsTestMotionParameters2D.method_get_exclude_bodies, handle, nil, &_result)
        return TypedArray<RID>(takingOver: _result)
    }
    
    fileprivate static let method_set_exclude_bodies: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_exclude_bodies")
        return withUnsafePointer(to: &PhysicsTestMotionParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_exclude_bodies(_ excludeList: TypedArray<RID>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: excludeList.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsTestMotionParameters2D.method_set_exclude_bodies, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_exclude_objects: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_exclude_objects")
        return withUnsafePointer(to: &PhysicsTestMotionParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_exclude_objects() -> TypedArray<Int64> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(PhysicsTestMotionParameters2D.method_get_exclude_objects, handle, nil, &_result)
        return TypedArray<Int64>(takingOver: _result)
    }
    
    fileprivate static let method_set_exclude_objects: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_exclude_objects")
        return withUnsafePointer(to: &PhysicsTestMotionParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_exclude_objects(_ excludeList: TypedArray<Int64>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: excludeList.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsTestMotionParameters2D.method_set_exclude_objects, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_recovery_as_collision_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_recovery_as_collision_enabled")
        return withUnsafePointer(to: &PhysicsTestMotionParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_recovery_as_collision_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PhysicsTestMotionParameters2D.method_is_recovery_as_collision_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_recovery_as_collision_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_recovery_as_collision_enabled")
        return withUnsafePointer(to: &PhysicsTestMotionParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_recovery_as_collision_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsTestMotionParameters2D.method_set_recovery_as_collision_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}

