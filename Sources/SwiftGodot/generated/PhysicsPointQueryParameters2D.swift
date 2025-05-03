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


/// Provides parameters for ``PhysicsDirectSpaceState2D/intersectPoint(parameters:maxResults:)``.
/// 
/// By changing various properties of this object, such as the point position, you can configure the parameters for ``PhysicsDirectSpaceState2D/intersectPoint(parameters:maxResults:)``.
open class PhysicsPointQueryParameters2D: RefCounted {
    private static var className = StringName("PhysicsPointQueryParameters2D")
    override open class var godotClassName: StringName { className }
    
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
    
    /// The physics layers the query will detect (as a bitmask). By default, all collision layers are detected. See <a href="https://docs.godotengine.org/en//tutorials/physics/physics_introduction.html#collision-layers-and-masks">Collision layers and masks</a> in the documentation for more information.
    final public var collisionMask: UInt32 {
        get {
            return get_collision_mask ()
        }
        
        set {
            set_collision_mask (newValue)
        }
        
    }
    
    /// The list of object ``RID``s that will be excluded from collisions. Use ``CollisionObject2D/getRid()`` to get the ``RID`` associated with a ``CollisionObject2D``-derived node.
    /// 
    /// > Note: The returned array is copied and any changes to it will not update the original property value. To update the value you need to modify the returned array, and then assign it to the property again.
    /// 
    final public var exclude: TypedArray<RID> {
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
    fileprivate static let method_set_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_position")
        return withUnsafePointer(to: &PhysicsPointQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_position(_ position: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsPointQueryParameters2D.method_set_position, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_position")
        return withUnsafePointer(to: &PhysicsPointQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_position() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(PhysicsPointQueryParameters2D.method_get_position, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_canvas_instance_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_canvas_instance_id")
        return withUnsafePointer(to: &PhysicsPointQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_canvas_instance_id(_ canvasInstanceId: UInt) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: canvasInstanceId) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsPointQueryParameters2D.method_set_canvas_instance_id, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_canvas_instance_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_canvas_instance_id")
        return withUnsafePointer(to: &PhysicsPointQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_canvas_instance_id() -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        gi.object_method_bind_ptrcall(PhysicsPointQueryParameters2D.method_get_canvas_instance_id, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collision_mask")
        return withUnsafePointer(to: &PhysicsPointQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_collision_mask(_ collisionMask: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: collisionMask) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsPointQueryParameters2D.method_set_collision_mask, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_mask")
        return withUnsafePointer(to: &PhysicsPointQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_collision_mask() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(PhysicsPointQueryParameters2D.method_get_collision_mask, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_exclude: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_exclude")
        return withUnsafePointer(to: &PhysicsPointQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_exclude(_ exclude: TypedArray<RID>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: exclude.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsPointQueryParameters2D.method_set_exclude, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_exclude: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_exclude")
        return withUnsafePointer(to: &PhysicsPointQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_exclude() -> TypedArray<RID> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(PhysicsPointQueryParameters2D.method_get_exclude, handle, nil, &_result)
        return TypedArray<RID>(takingOver: _result)
    }
    
    fileprivate static let method_set_collide_with_bodies: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collide_with_bodies")
        return withUnsafePointer(to: &PhysicsPointQueryParameters2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(PhysicsPointQueryParameters2D.method_set_collide_with_bodies, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_collide_with_bodies_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_collide_with_bodies_enabled")
        return withUnsafePointer(to: &PhysicsPointQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_collide_with_bodies_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PhysicsPointQueryParameters2D.method_is_collide_with_bodies_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_collide_with_areas: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collide_with_areas")
        return withUnsafePointer(to: &PhysicsPointQueryParameters2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(PhysicsPointQueryParameters2D.method_set_collide_with_areas, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_collide_with_areas_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_collide_with_areas_enabled")
        return withUnsafePointer(to: &PhysicsPointQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_collide_with_areas_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PhysicsPointQueryParameters2D.method_is_collide_with_areas_enabled, handle, nil, &_result)
        return _result
    }
    
}

