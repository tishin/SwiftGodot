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


/// Provides direct access to a physics body in the ``PhysicsServer3D``.
/// 
/// Provides direct access to a physics body in the ``PhysicsServer3D``, allowing safe changes to physics properties. This object is passed via the direct state callback of ``RigidBody3D``, and is intended for changing the direct state of that body. See ``RigidBody3D/_integrateForces(state:)``.
open class PhysicsDirectBodyState3D: Object {
    private static var className = StringName("PhysicsDirectBodyState3D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The timestep (delta) used for the simulation.
    final public var step: Double {
        get {
            return get_step ()
        }
        
    }
    
    /// The inverse of the mass of the body.
    final public var inverseMass: Double {
        get {
            return get_inverse_mass ()
        }
        
    }
    
    /// The rate at which the body stops rotating, if there are not any other forces moving it.
    final public var totalAngularDamp: Double {
        get {
            return get_total_angular_damp ()
        }
        
    }
    
    /// The rate at which the body stops moving, if there are not any other forces moving it.
    final public var totalLinearDamp: Double {
        get {
            return get_total_linear_damp ()
        }
        
    }
    
    /// The inverse of the inertia of the body.
    final public var inverseInertia: Vector3 {
        get {
            return get_inverse_inertia ()
        }
        
    }
    
    /// The inverse of the inertia tensor of the body.
    final public var inverseInertiaTensor: Basis {
        get {
            return get_inverse_inertia_tensor ()
        }
        
    }
    
    /// The total gravity vector being currently applied to this body.
    final public var totalGravity: Vector3 {
        get {
            return get_total_gravity ()
        }
        
    }
    
    /// The body's center of mass position relative to the body's center in the global coordinate system.
    final public var centerOfMass: Vector3 {
        get {
            return get_center_of_mass ()
        }
        
    }
    
    /// The body's center of mass position in the body's local coordinate system.
    final public var centerOfMassLocal: Vector3 {
        get {
            return get_center_of_mass_local ()
        }
        
    }
    
    final public var principalInertiaAxes: Basis {
        get {
            return get_principal_inertia_axes ()
        }
        
    }
    
    /// The body's rotational velocity in _radians_ per second.
    final public var angularVelocity: Vector3 {
        get {
            return get_angular_velocity ()
        }
        
        set {
            set_angular_velocity (newValue)
        }
        
    }
    
    /// The body's linear velocity in units per second.
    final public var linearVelocity: Vector3 {
        get {
            return get_linear_velocity ()
        }
        
        set {
            set_linear_velocity (newValue)
        }
        
    }
    
    /// If `true`, this body is currently sleeping (not active).
    final public var sleeping: Bool {
        get {
            return is_sleeping ()
        }
        
        set {
            set_sleep_state (newValue)
        }
        
    }
    
    /// The body's transformation matrix.
    final public var transform: Transform3D {
        get {
            return get_transform ()
        }
        
        set {
            set_transform (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_get_total_gravity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_total_gravity")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_total_gravity() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_total_gravity, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_total_linear_damp: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_total_linear_damp")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_total_linear_damp() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_total_linear_damp, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_total_angular_damp: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_total_angular_damp")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_total_angular_damp() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_total_angular_damp, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_center_of_mass: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_center_of_mass")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_center_of_mass() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_center_of_mass, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_center_of_mass_local: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_center_of_mass_local")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_center_of_mass_local() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_center_of_mass_local, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_principal_inertia_axes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_principal_inertia_axes")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2716978435)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_principal_inertia_axes() -> Basis {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Basis = Basis ()
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_principal_inertia_axes, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_inverse_mass: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_inverse_mass")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_inverse_mass() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_inverse_mass, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_inverse_inertia: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_inverse_inertia")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_inverse_inertia() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_inverse_inertia, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_inverse_inertia_tensor: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_inverse_inertia_tensor")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2716978435)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_inverse_inertia_tensor() -> Basis {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Basis = Basis ()
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_inverse_inertia_tensor, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_linear_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_linear_velocity")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_linear_velocity(_ velocity: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: velocity) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_set_linear_velocity, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_linear_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_linear_velocity")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_linear_velocity() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_linear_velocity, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_angular_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_angular_velocity")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_angular_velocity(_ velocity: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: velocity) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_set_angular_velocity, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_angular_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_angular_velocity")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_angular_velocity() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_angular_velocity, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_transform")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_set_transform, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_transform")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3229777777)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_transform() -> Transform3D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform3D = Transform3D ()
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_transform, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_velocity_at_local_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_velocity_at_local_position")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 192990374)!
            }
            
        }
        
    }()
    
    /// Returns the body's velocity at the given relative position, including both translation and rotation.
    public final func getVelocityAtLocalPosition(_ localPosition: Vector3) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: localPosition) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_velocity_at_local_position, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_apply_central_impulse: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("apply_central_impulse")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2007698547)!
            }
            
        }
        
    }()
    
    /// Applies a directional impulse without affecting rotation.
    /// 
    /// An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "_force" functions otherwise).
    /// 
    /// This is equivalent to using ``applyImpulse(_:position:)`` at the body's center of mass.
    /// 
    public final func applyCentralImpulse(_ impulse: Vector3 = Vector3 (x: 0, y: 0, z: 0)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: impulse) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_apply_central_impulse, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_apply_impulse: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("apply_impulse")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2754756483)!
            }
            
        }
        
    }()
    
    /// Applies a positioned impulse to the body.
    /// 
    /// An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "_force" functions otherwise).
    /// 
    /// `position` is the offset from the body origin in global coordinates.
    /// 
    public final func applyImpulse(_ impulse: Vector3, position: Vector3 = Vector3 (x: 0, y: 0, z: 0)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: impulse) { pArg0 in
            withUnsafePointer(to: position) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_apply_impulse, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_apply_torque_impulse: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("apply_torque_impulse")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// Applies a rotational impulse to the body without affecting the position.
    /// 
    /// An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "_force" functions otherwise).
    /// 
    /// > Note: ``inverseInertia`` is required for this to work. To have ``inverseInertia``, an active ``CollisionShape3D`` must be a child of the node, or you can manually set ``inverseInertia``.
    /// 
    public final func applyTorqueImpulse(_ impulse: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: impulse) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_apply_torque_impulse, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_apply_central_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("apply_central_force")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2007698547)!
            }
            
        }
        
    }()
    
    /// Applies a directional force without affecting rotation. A force is time dependent and meant to be applied every physics update.
    /// 
    /// This is equivalent to using ``applyForce(_:position:)`` at the body's center of mass.
    /// 
    public final func applyCentralForce(_ force: Vector3 = Vector3 (x: 0, y: 0, z: 0)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: force) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_apply_central_force, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_apply_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("apply_force")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2754756483)!
            }
            
        }
        
    }()
    
    /// Applies a positioned force to the body. A force is time dependent and meant to be applied every physics update.
    /// 
    /// `position` is the offset from the body origin in global coordinates.
    /// 
    public final func applyForce(_ force: Vector3, position: Vector3 = Vector3 (x: 0, y: 0, z: 0)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: force) { pArg0 in
            withUnsafePointer(to: position) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_apply_force, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_apply_torque: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("apply_torque")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// Applies a rotational force without affecting position. A force is time dependent and meant to be applied every physics update.
    /// 
    /// > Note: ``inverseInertia`` is required for this to work. To have ``inverseInertia``, an active ``CollisionShape3D`` must be a child of the node, or you can manually set ``inverseInertia``.
    /// 
    public final func applyTorque(_ torque: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: torque) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_apply_torque, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_constant_central_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_constant_central_force")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2007698547)!
            }
            
        }
        
    }()
    
    /// Adds a constant directional force without affecting rotation that keeps being applied over time until cleared with `constant_force = Vector3(0, 0, 0)`.
    /// 
    /// This is equivalent to using ``addConstantForce(_:position:)`` at the body's center of mass.
    /// 
    public final func addConstantCentralForce(_ force: Vector3 = Vector3 (x: 0, y: 0, z: 0)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: force) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_add_constant_central_force, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_constant_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_constant_force")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2754756483)!
            }
            
        }
        
    }()
    
    /// Adds a constant positioned force to the body that keeps being applied over time until cleared with `constant_force = Vector3(0, 0, 0)`.
    /// 
    /// `position` is the offset from the body origin in global coordinates.
    /// 
    public final func addConstantForce(_ force: Vector3, position: Vector3 = Vector3 (x: 0, y: 0, z: 0)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: force) { pArg0 in
            withUnsafePointer(to: position) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_add_constant_force, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_constant_torque: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_constant_torque")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// Adds a constant rotational force without affecting position that keeps being applied over time until cleared with `constant_torque = Vector3(0, 0, 0)`.
    public final func addConstantTorque(_ torque: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: torque) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_add_constant_torque, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_constant_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_constant_force")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// Sets the body's total constant positional forces applied during each physics update.
    /// 
    /// See ``addConstantForce(_:position:)`` and ``addConstantCentralForce(_:)``.
    /// 
    public final func setConstantForce(_ force: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: force) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_set_constant_force, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_constant_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_constant_force")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    /// Returns the body's total constant positional forces applied during each physics update.
    /// 
    /// See ``addConstantForce(_:position:)`` and ``addConstantCentralForce(_:)``.
    /// 
    public final func getConstantForce() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_constant_force, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_constant_torque: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_constant_torque")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// Sets the body's total constant rotational forces applied during each physics update.
    /// 
    /// See ``addConstantTorque(_:)``.
    /// 
    public final func setConstantTorque(_ torque: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: torque) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_set_constant_torque, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_constant_torque: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_constant_torque")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    /// Returns the body's total constant rotational forces applied during each physics update.
    /// 
    /// See ``addConstantTorque(_:)``.
    /// 
    public final func getConstantTorque() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_constant_torque, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_sleep_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sleep_state")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sleep_state(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_set_sleep_state, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_sleeping: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_sleeping")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_sleeping() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_is_sleeping, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_contact_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_contact_count")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of contacts this body has with other bodies.
    /// 
    /// > Note: By default, this returns 0 unless bodies are configured to monitor contacts. See ``RigidBody3D/contactMonitor``.
    /// 
    public final func getContactCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_contact_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_contact_local_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_contact_local_position")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 711720468)!
            }
            
        }
        
    }()
    
    /// Returns the position of the contact point on the body in the global coordinate system.
    public final func getContactLocalPosition(contactIdx: Int32) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: contactIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_contact_local_position, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_contact_local_normal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_contact_local_normal")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 711720468)!
            }
            
        }
        
    }()
    
    /// Returns the local normal at the contact point.
    public final func getContactLocalNormal(contactIdx: Int32) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: contactIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_contact_local_normal, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_contact_impulse: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_contact_impulse")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 711720468)!
            }
            
        }
        
    }()
    
    /// Impulse created by the contact.
    public final func getContactImpulse(contactIdx: Int32) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: contactIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_contact_impulse, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_contact_local_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_contact_local_shape")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the local shape index of the collision.
    public final func getContactLocalShape(contactIdx: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: contactIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_contact_local_shape, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_contact_local_velocity_at_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_contact_local_velocity_at_position")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 711720468)!
            }
            
        }
        
    }()
    
    /// Returns the linear velocity vector at the body's contact point.
    public final func getContactLocalVelocityAtPosition(contactIdx: Int32) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: contactIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_contact_local_velocity_at_position, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_contact_collider: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_contact_collider")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 495598643)!
            }
            
        }
        
    }()
    
    /// Returns the collider's ``RID``.
    public final func getContactCollider(contactIdx: Int32) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: contactIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_contact_collider, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_contact_collider_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_contact_collider_position")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 711720468)!
            }
            
        }
        
    }()
    
    /// Returns the position of the contact point on the collider in the global coordinate system.
    public final func getContactColliderPosition(contactIdx: Int32) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: contactIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_contact_collider_position, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_contact_collider_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_contact_collider_id")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the collider's object id.
    public final func getContactColliderId(contactIdx: Int32) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: contactIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_contact_collider_id, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_contact_collider_object: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_contact_collider_object")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3332903315)!
            }
            
        }
        
    }()
    
    /// Returns the collider object.
    public final func getContactColliderObject(contactIdx: Int32) -> Object? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: contactIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_contact_collider_object, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_contact_collider_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_contact_collider_shape")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the collider's shape index.
    public final func getContactColliderShape(contactIdx: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: contactIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_contact_collider_shape, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_contact_collider_velocity_at_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_contact_collider_velocity_at_position")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 711720468)!
            }
            
        }
        
    }()
    
    /// Returns the linear velocity vector at the collider's contact point.
    public final func getContactColliderVelocityAtPosition(contactIdx: Int32) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: contactIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_contact_collider_velocity_at_position, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_step: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_step")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_step() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_step, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_integrate_forces: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("integrate_forces")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Updates the body's linear and angular velocity by applying gravity and damping for the equivalent of one physics tick.
    public final func integrateForces() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_integrate_forces, handle, nil, nil)
        
    }
    
    fileprivate static let method_get_space_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_space_state")
        return withUnsafePointer(to: &PhysicsDirectBodyState3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2069328350)!
            }
            
        }
        
    }()
    
    /// Returns the current state of the space, useful for queries.
    public final func getSpaceState() -> PhysicsDirectSpaceState3D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3D.method_get_space_state, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
}

