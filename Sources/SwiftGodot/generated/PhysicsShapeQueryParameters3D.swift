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


/// Provides parameters for ``PhysicsDirectSpaceState3D/intersectShape(parameters:maxResults:)``.
/// 
/// By changing various properties of this object, such as the shape, you can configure the parameters for ``PhysicsDirectSpaceState3D/intersectShape(parameters:maxResults:)``.
open class PhysicsShapeQueryParameters3D: RefCounted {
    private static var className = StringName("PhysicsShapeQueryParameters3D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The physics layers the query will detect (as a bitmask). By default, all collision layers are detected. See <a href="https://docs.godotengine.org/en//tutorials/physics/physics_introduction.html#collision-layers-and-masks">Collision layers and masks</a> in the documentation for more information.
    final public var collisionMask: UInt32 {
        get {
            return get_collision_mask ()
        }
        
        set {
            set_collision_mask (newValue)
        }
        
    }
    
    /// The list of object ``RID``s that will be excluded from collisions. Use ``CollisionObject3D/getRid()`` to get the ``RID`` associated with a ``CollisionObject3D``-derived node.
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
    
    /// The collision margin for the shape.
    final public var margin: Double {
        get {
            return get_margin ()
        }
        
        set {
            set_margin (newValue)
        }
        
    }
    
    /// The motion of the shape being queried for.
    final public var motion: Vector3 {
        get {
            return get_motion ()
        }
        
        set {
            set_motion (newValue)
        }
        
    }
    
    /// The ``Shape3D`` that will be used for collision/intersection queries. This stores the actual reference which avoids the shape to be released while being used for queries, so always prefer using this over ``shapeRid``.
    final public var shape: Resource? {
        get {
            return get_shape ()
        }
        
        set {
            set_shape (newValue)
        }
        
    }
    
    /// The queried shape's ``RID`` that will be used for collision/intersection queries. Use this over ``shape`` if you want to optimize for performance using the Servers API:
    /// 
    final public var shapeRid: RID {
        get {
            return get_shape_rid ()
        }
        
        set {
            set_shape_rid (newValue)
        }
        
    }
    
    /// The queried shape's transform matrix.
    final public var transform: Transform3D {
        get {
            return get_transform ()
        }
        
        set {
            set_transform (newValue)
        }
        
    }
    
    /// If `true`, the query will take ``PhysicsBody3D``s into account.
    final public var collideWithBodies: Bool {
        get {
            return is_collide_with_bodies_enabled ()
        }
        
        set {
            set_collide_with_bodies (newValue)
        }
        
    }
    
    /// If `true`, the query will take ``Area3D``s into account.
    final public var collideWithAreas: Bool {
        get {
            return is_collide_with_areas_enabled ()
        }
        
        set {
            set_collide_with_areas (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_shape")
        return withUnsafePointer(to: &PhysicsShapeQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 968641751)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shape(_ shape: Resource?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shape?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsShapeQueryParameters3D.method_set_shape, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_shape")
        return withUnsafePointer(to: &PhysicsShapeQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 121922552)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_shape() -> Resource? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(PhysicsShapeQueryParameters3D.method_get_shape, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_shape_rid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_shape_rid")
        return withUnsafePointer(to: &PhysicsShapeQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shape_rid(_ shape: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shape.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsShapeQueryParameters3D.method_set_shape_rid, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_shape_rid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_shape_rid")
        return withUnsafePointer(to: &PhysicsShapeQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_shape_rid() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsShapeQueryParameters3D.method_get_shape_rid, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_transform")
        return withUnsafePointer(to: &PhysicsShapeQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2952846383)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_transform(_ transform: Transform3D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: transform) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsShapeQueryParameters3D.method_set_transform, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_transform")
        return withUnsafePointer(to: &PhysicsShapeQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3229777777)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_transform() -> Transform3D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform3D = Transform3D ()
        gi.object_method_bind_ptrcall(PhysicsShapeQueryParameters3D.method_get_transform, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_motion: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_motion")
        return withUnsafePointer(to: &PhysicsShapeQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_motion(_ motion: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: motion) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsShapeQueryParameters3D.method_set_motion, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_motion: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_motion")
        return withUnsafePointer(to: &PhysicsShapeQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_motion() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(PhysicsShapeQueryParameters3D.method_get_motion, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_margin")
        return withUnsafePointer(to: &PhysicsShapeQueryParameters3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(PhysicsShapeQueryParameters3D.method_set_margin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_margin")
        return withUnsafePointer(to: &PhysicsShapeQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_margin() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicsShapeQueryParameters3D.method_get_margin, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collision_mask")
        return withUnsafePointer(to: &PhysicsShapeQueryParameters3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(PhysicsShapeQueryParameters3D.method_set_collision_mask, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_mask")
        return withUnsafePointer(to: &PhysicsShapeQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_collision_mask() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(PhysicsShapeQueryParameters3D.method_get_collision_mask, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_exclude: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_exclude")
        return withUnsafePointer(to: &PhysicsShapeQueryParameters3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(PhysicsShapeQueryParameters3D.method_set_exclude, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_exclude: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_exclude")
        return withUnsafePointer(to: &PhysicsShapeQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_exclude() -> TypedArray<RID> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(PhysicsShapeQueryParameters3D.method_get_exclude, handle, nil, &_result)
        return TypedArray<RID>(takingOver: _result)
    }
    
    fileprivate static let method_set_collide_with_bodies: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collide_with_bodies")
        return withUnsafePointer(to: &PhysicsShapeQueryParameters3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(PhysicsShapeQueryParameters3D.method_set_collide_with_bodies, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_collide_with_bodies_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_collide_with_bodies_enabled")
        return withUnsafePointer(to: &PhysicsShapeQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_collide_with_bodies_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PhysicsShapeQueryParameters3D.method_is_collide_with_bodies_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_collide_with_areas: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collide_with_areas")
        return withUnsafePointer(to: &PhysicsShapeQueryParameters3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(PhysicsShapeQueryParameters3D.method_set_collide_with_areas, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_collide_with_areas_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_collide_with_areas_enabled")
        return withUnsafePointer(to: &PhysicsShapeQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_collide_with_areas_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PhysicsShapeQueryParameters3D.method_is_collide_with_areas_enabled, handle, nil, &_result)
        return _result
    }
    
}

