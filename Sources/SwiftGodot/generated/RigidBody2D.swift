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


/// A 2D physics body that is moved by a physics simulation.
/// 
/// ``RigidBody2D`` implements full 2D physics. It cannot be controlled directly, instead, you must apply forces to it (gravity, impulses, etc.), and the physics simulation will calculate the resulting movement, rotation, react to collisions, and affect other physics bodies in its path.
/// 
/// The body's behavior can be adjusted via ``lockRotation``, ``freeze``, and ``freezeMode``. By changing various properties of the object, such as ``mass``, you can control how the physics simulation acts on it.
/// 
/// A rigid body will always maintain its shape and size, even when forces are applied to it. It is useful for objects that can be interacted with in an environment, such as a tree that can be knocked over or a stack of crates that can be pushed around.
/// 
/// If you need to override the default physics behavior, you can write a custom force integration function. See ``customIntegrator``.
/// 
/// > Note: Changing the 2D transform or ``linearVelocity`` of a ``RigidBody2D`` very often may lead to some unpredictable behaviors. If you need to directly affect the body, prefer ``_integrateForces(state:)`` as it allows you to directly access the physics state.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``bodyShapeEntered``
/// - ``bodyShapeExited``
/// - ``bodyEntered``
/// - ``bodyExited``
/// - ``sleepingStateChanged``
open class RigidBody2D: PhysicsBody2D {
    private static var className = StringName("RigidBody2D")
    override open class var godotClassName: StringName { className }
    public enum FreezeMode: Int64, CaseIterable {
        /// Static body freeze mode (default). The body is not affected by gravity and forces. It can be only moved by user code and doesn't collide with other bodies along its path.
        case `static` = 0 // FREEZE_MODE_STATIC
        /// Kinematic body freeze mode. Similar to ``FreezeMode/`static```, but collides with other bodies along its path when moved. Useful for a frozen body that needs to be animated.
        case kinematic = 1 // FREEZE_MODE_KINEMATIC
    }
    
    public enum CenterOfMassMode: Int64, CaseIterable {
        /// In this mode, the body's center of mass is calculated automatically based on its shapes. This assumes that the shapes' origins are also their center of mass.
        case auto = 0 // CENTER_OF_MASS_MODE_AUTO
        /// In this mode, the body's center of mass is set through ``centerOfMass``. Defaults to the body's origin position.
        case custom = 1 // CENTER_OF_MASS_MODE_CUSTOM
    }
    
    public enum DampMode: Int64, CaseIterable {
        /// In this mode, the body's damping value is added to any value set in areas or the default value.
        case combine = 0 // DAMP_MODE_COMBINE
        /// In this mode, the body's damping value replaces any value set in areas or the default value.
        case replace = 1 // DAMP_MODE_REPLACE
    }
    
    public enum CCDMode: Int64, CaseIterable {
        /// Continuous collision detection disabled. This is the fastest way to detect body collisions, but can miss small, fast-moving objects.
        case disabled = 0 // CCD_MODE_DISABLED
        /// Continuous collision detection enabled using raycasting. This is faster than shapecasting but less precise.
        case castRay = 1 // CCD_MODE_CAST_RAY
        /// Continuous collision detection enabled using shapecasting. This is the slowest CCD method and the most precise.
        case castShape = 2 // CCD_MODE_CAST_SHAPE
    }
    
    
    /* Properties */
    
    /// The body's mass.
    final public var mass: Double {
        get {
            return get_mass ()
        }
        
        set {
            set_mass (newValue)
        }
        
    }
    
    /// The physics material override for the body.
    /// 
    /// If a material is assigned to this property, it will be used instead of any other physics material, such as an inherited one.
    /// 
    final public var physicsMaterialOverride: PhysicsMaterial? {
        get {
            return get_physics_material_override ()
        }
        
        set {
            set_physics_material_override (newValue)
        }
        
    }
    
    /// Multiplies the gravity applied to the body. The body's gravity is calculated from the ``ProjectSettings/physics/2d/defaultGravity`` project setting and/or any additional gravity vector applied by ``Area2D``s.
    final public var gravityScale: Double {
        get {
            return get_gravity_scale ()
        }
        
        set {
            set_gravity_scale (newValue)
        }
        
    }
    
    /// Defines the way the body's center of mass is set. See ``RigidBody2D/CenterOfMassMode`` for possible values.
    final public var centerOfMassMode: RigidBody2D.CenterOfMassMode {
        get {
            return get_center_of_mass_mode ()
        }
        
        set {
            set_center_of_mass_mode (newValue)
        }
        
    }
    
    /// The body's custom center of mass, relative to the body's origin position, when ``centerOfMassMode`` is set to ``CenterOfMassMode/custom``. This is the balanced point of the body, where applied forces only cause linear acceleration. Applying forces outside of the center of mass causes angular acceleration.
    /// 
    /// When ``centerOfMassMode`` is set to ``CenterOfMassMode/auto`` (default value), the center of mass is automatically computed.
    /// 
    final public var centerOfMass: Vector2 {
        get {
            return get_center_of_mass ()
        }
        
        set {
            set_center_of_mass (newValue)
        }
        
    }
    
    /// The body's moment of inertia. This is like mass, but for rotation: it determines how much torque it takes to rotate the body. The moment of inertia is usually computed automatically from the mass and the shapes, but this property allows you to set a custom value.
    /// 
    /// If set to `0`, inertia is automatically computed (default value).
    /// 
    /// > Note: This value does not change when inertia is automatically computed. Use ``PhysicsServer2D`` to get the computed inertia.
    /// 
    final public var inertia: Double {
        get {
            return get_inertia ()
        }
        
        set {
            set_inertia (newValue)
        }
        
    }
    
    /// If `true`, the body will not move and will not calculate forces until woken up by another body through, for example, a collision, or by using the ``applyImpulse(_:position:)`` or ``applyForce(_:position:)`` methods.
    final public var sleeping: Bool {
        get {
            return is_sleeping ()
        }
        
        set {
            set_sleeping (newValue)
        }
        
    }
    
    /// If `true`, the body can enter sleep mode when there is no movement. See ``sleeping``.
    final public var canSleep: Bool {
        get {
            return is_able_to_sleep ()
        }
        
        set {
            set_can_sleep (newValue)
        }
        
    }
    
    /// If `true`, the body cannot rotate. Gravity and forces only apply linear movement.
    final public var lockRotation: Bool {
        get {
            return is_lock_rotation_enabled ()
        }
        
        set {
            set_lock_rotation_enabled (newValue)
        }
        
    }
    
    /// If `true`, the body is frozen. Gravity and forces are not applied anymore.
    /// 
    /// See ``freezeMode`` to set the body's behavior when frozen.
    /// 
    /// For a body that is always frozen, use ``StaticBody2D`` or ``AnimatableBody2D`` instead.
    /// 
    final public var freeze: Bool {
        get {
            return is_freeze_enabled ()
        }
        
        set {
            set_freeze_enabled (newValue)
        }
        
    }
    
    /// The body's freeze mode. Can be used to set the body's behavior when ``freeze`` is enabled. See ``RigidBody2D/FreezeMode`` for possible values.
    /// 
    /// For a body that is always frozen, use ``StaticBody2D`` or ``AnimatableBody2D`` instead.
    /// 
    final public var freezeMode: RigidBody2D.FreezeMode {
        get {
            return get_freeze_mode ()
        }
        
        set {
            set_freeze_mode (newValue)
        }
        
    }
    
    /// If `true`, the standard force integration (like gravity or damping) will be disabled for this body. Other than collision response, the body will only move as determined by the ``_integrateForces(state:)`` method, if that virtual method is overridden.
    /// 
    /// Setting this property will call the method ``PhysicsServer2D/bodySetOmitForceIntegration(body:enable:)`` internally.
    /// 
    final public var customIntegrator: Bool {
        get {
            return is_using_custom_integrator ()
        }
        
        set {
            set_use_custom_integrator (newValue)
        }
        
    }
    
    /// Continuous collision detection mode.
    /// 
    /// Continuous collision detection tries to predict where a moving body will collide instead of moving it and correcting its movement after collision. Continuous collision detection is slower, but more precise and misses fewer collisions with small, fast-moving objects. Raycasting and shapecasting methods are available. See ``RigidBody2D/CCDMode`` for details.
    /// 
    final public var continuousCd: RigidBody2D.CCDMode {
        get {
            return get_continuous_collision_detection_mode ()
        }
        
        set {
            set_continuous_collision_detection_mode (newValue)
        }
        
    }
    
    /// If `true`, the RigidBody2D will emit signals when it collides with another body.
    /// 
    /// > Note: By default the maximum contacts reported is set to 0, meaning nothing will be recorded, see ``maxContactsReported``.
    /// 
    final public var contactMonitor: Bool {
        get {
            return is_contact_monitor_enabled ()
        }
        
        set {
            set_contact_monitor (newValue)
        }
        
    }
    
    /// The maximum number of contacts that will be recorded. Requires a value greater than 0 and ``contactMonitor`` to be set to `true` to start to register contacts. Use ``getContactCount()`` to retrieve the count or ``getCollidingBodies()`` to retrieve bodies that have been collided with.
    /// 
    /// > Note: The number of contacts is different from the number of collisions. Collisions between parallel edges will result in two contacts (one at each end), and collisions between parallel faces will result in four contacts (one at each corner).
    /// 
    final public var maxContactsReported: Int32 {
        get {
            return get_max_contacts_reported ()
        }
        
        set {
            set_max_contacts_reported (newValue)
        }
        
    }
    
    /// The body's linear velocity in pixels per second. Can be used sporadically, but **don't set this every frame**, because physics may run in another thread and runs at a different granularity. Use ``_integrateForces(state:)`` as your process loop for precise control of the body state.
    final public var linearVelocity: Vector2 {
        get {
            return get_linear_velocity ()
        }
        
        set {
            set_linear_velocity (newValue)
        }
        
    }
    
    /// Defines how ``linearDamp`` is applied. See ``RigidBody2D/DampMode`` for possible values.
    final public var linearDampMode: RigidBody2D.DampMode {
        get {
            return get_linear_damp_mode ()
        }
        
        set {
            set_linear_damp_mode (newValue)
        }
        
    }
    
    /// Damps the body's movement. By default, the body will use the ``ProjectSettings/physics/2d/defaultLinearDamp`` setting or any value override set by an ``Area2D`` the body is in. Depending on ``linearDampMode``, you can set ``linearDamp`` to be added to or to replace the body's damping value.
    /// 
    /// See ``ProjectSettings/physics/2d/defaultLinearDamp`` for more details about damping.
    /// 
    final public var linearDamp: Double {
        get {
            return get_linear_damp ()
        }
        
        set {
            set_linear_damp (newValue)
        }
        
    }
    
    /// The body's rotational velocity in _radians_ per second.
    final public var angularVelocity: Double {
        get {
            return get_angular_velocity ()
        }
        
        set {
            set_angular_velocity (newValue)
        }
        
    }
    
    /// Defines how ``angularDamp`` is applied. See ``RigidBody2D/DampMode`` for possible values.
    final public var angularDampMode: RigidBody2D.DampMode {
        get {
            return get_angular_damp_mode ()
        }
        
        set {
            set_angular_damp_mode (newValue)
        }
        
    }
    
    /// Damps the body's rotation. By default, the body will use the ``ProjectSettings/physics/2d/defaultAngularDamp`` setting or any value override set by an ``Area2D`` the body is in. Depending on ``angularDampMode``, you can set ``angularDamp`` to be added to or to replace the body's damping value.
    /// 
    /// See ``ProjectSettings/physics/2d/defaultAngularDamp`` for more details about damping.
    /// 
    final public var angularDamp: Double {
        get {
            return get_angular_damp ()
        }
        
        set {
            set_angular_damp (newValue)
        }
        
    }
    
    /// The body's total constant positional forces applied during each physics update.
    /// 
    /// See ``addConstantForce(_:position:)`` and ``addConstantCentralForce(_:)``.
    /// 
    final public var constantForce: Vector2 {
        get {
            return get_constant_force ()
        }
        
        set {
            set_constant_force (newValue)
        }
        
    }
    
    /// The body's total constant rotational forces applied during each physics update.
    /// 
    /// See ``addConstantTorque(_:)``.
    /// 
    final public var constantTorque: Double {
        get {
            return get_constant_torque ()
        }
        
        set {
            set_constant_torque (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method__integrate_forces: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_integrate_forces")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 370287496)!
            }
            
        }
        
    }()
    
    /// Called during physics processing, allowing you to read and safely modify the simulation state for the object. By default, it is called before the standard force integration, but the ``customIntegrator`` property allows you to disable the standard force integration and do fully custom force integration for a body.
    @_documentation(visibility: public)
    open func _integrateForces(state: PhysicsDirectBodyState2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: state?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method__integrate_forces, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_mass: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_mass")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mass(_ mass: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mass) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_set_mass, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_mass: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_mass")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mass() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(RigidBody2D.method_get_mass, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_inertia: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_inertia")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_inertia() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(RigidBody2D.method_get_inertia, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_inertia: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_inertia")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_inertia(_ inertia: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: inertia) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_set_inertia, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_center_of_mass_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_center_of_mass_mode")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1757235706)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_center_of_mass_mode(_ mode: RigidBody2D.CenterOfMassMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_set_center_of_mass_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_center_of_mass_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_center_of_mass_mode")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3277132817)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_center_of_mass_mode() -> RigidBody2D.CenterOfMassMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RigidBody2D.method_get_center_of_mass_mode, handle, nil, &_result)
        return RigidBody2D.CenterOfMassMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_center_of_mass: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_center_of_mass")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_center_of_mass(_ centerOfMass: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: centerOfMass) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_set_center_of_mass, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_center_of_mass: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_center_of_mass")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_center_of_mass() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(RigidBody2D.method_get_center_of_mass, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_physics_material_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_physics_material_override")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1784508650)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_physics_material_override(_ physicsMaterialOverride: PhysicsMaterial?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: physicsMaterialOverride?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_set_physics_material_override, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_physics_material_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_physics_material_override")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2521850424)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_physics_material_override() -> PhysicsMaterial? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(RigidBody2D.method_get_physics_material_override, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_gravity_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_gravity_scale")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_gravity_scale(_ gravityScale: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: gravityScale) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_set_gravity_scale, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_gravity_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_gravity_scale")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_gravity_scale() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(RigidBody2D.method_get_gravity_scale, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_linear_damp_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_linear_damp_mode")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3406533708)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_linear_damp_mode(_ linearDampMode: RigidBody2D.DampMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: linearDampMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_set_linear_damp_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_linear_damp_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_linear_damp_mode")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2970511462)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_linear_damp_mode() -> RigidBody2D.DampMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RigidBody2D.method_get_linear_damp_mode, handle, nil, &_result)
        return RigidBody2D.DampMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_angular_damp_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_angular_damp_mode")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3406533708)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_angular_damp_mode(_ angularDampMode: RigidBody2D.DampMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: angularDampMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_set_angular_damp_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_angular_damp_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_angular_damp_mode")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2970511462)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_angular_damp_mode() -> RigidBody2D.DampMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RigidBody2D.method_get_angular_damp_mode, handle, nil, &_result)
        return RigidBody2D.DampMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_linear_damp: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_linear_damp")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_linear_damp(_ linearDamp: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: linearDamp) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_set_linear_damp, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_linear_damp: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_linear_damp")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_linear_damp() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(RigidBody2D.method_get_linear_damp, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_angular_damp: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_angular_damp")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_angular_damp(_ angularDamp: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: angularDamp) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_set_angular_damp, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_angular_damp: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_angular_damp")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_angular_damp() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(RigidBody2D.method_get_angular_damp, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_linear_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_linear_velocity")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_linear_velocity(_ linearVelocity: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: linearVelocity) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_set_linear_velocity, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_linear_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_linear_velocity")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_linear_velocity() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(RigidBody2D.method_get_linear_velocity, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_angular_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_angular_velocity")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_angular_velocity(_ angularVelocity: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: angularVelocity) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_set_angular_velocity, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_angular_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_angular_velocity")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_angular_velocity() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(RigidBody2D.method_get_angular_velocity, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_max_contacts_reported: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_max_contacts_reported")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_contacts_reported(_ amount: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_set_max_contacts_reported, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_max_contacts_reported: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_max_contacts_reported")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_contacts_reported() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(RigidBody2D.method_get_max_contacts_reported, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_contact_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_contact_count")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of contacts this body has with other bodies. By default, this returns 0 unless bodies are configured to monitor contacts (see ``contactMonitor``).
    /// 
    /// > Note: To retrieve the colliding bodies, use ``getCollidingBodies()``.
    /// 
    public final func getContactCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(RigidBody2D.method_get_contact_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_use_custom_integrator: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_custom_integrator")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_custom_integrator(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_set_use_custom_integrator, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_using_custom_integrator: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_using_custom_integrator")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_using_custom_integrator() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RigidBody2D.method_is_using_custom_integrator, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_contact_monitor: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_contact_monitor")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_contact_monitor(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_set_contact_monitor, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_contact_monitor_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_contact_monitor_enabled")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_contact_monitor_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RigidBody2D.method_is_contact_monitor_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_continuous_collision_detection_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_continuous_collision_detection_mode")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1000241384)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_continuous_collision_detection_mode(_ mode: RigidBody2D.CCDMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_set_continuous_collision_detection_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_continuous_collision_detection_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_continuous_collision_detection_mode")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 815214376)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_continuous_collision_detection_mode() -> RigidBody2D.CCDMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RigidBody2D.method_get_continuous_collision_detection_mode, handle, nil, &_result)
        return RigidBody2D.CCDMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_axis_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_axis_velocity")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    /// Sets the body's velocity on the given axis. The velocity in the given vector axis will be set as the given vector length. This is useful for jumping behavior.
    public final func setAxisVelocity(_ axisVelocity: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: axisVelocity) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_set_axis_velocity, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_apply_central_impulse: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("apply_central_impulse")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3862383994)!
            }
            
        }
        
    }()
    
    /// Applies a directional impulse without affecting rotation.
    /// 
    /// An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "_force" functions otherwise).
    /// 
    /// This is equivalent to using ``applyImpulse(_:position:)`` at the body's center of mass.
    /// 
    public final func applyCentralImpulse(_ impulse: Vector2 = Vector2 (x: 0, y: 0)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: impulse) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_apply_central_impulse, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_apply_impulse: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("apply_impulse")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4288681949)!
            }
            
        }
        
    }()
    
    /// Applies a positioned impulse to the body.
    /// 
    /// An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "_force" functions otherwise).
    /// 
    /// `position` is the offset from the body origin in global coordinates.
    /// 
    public final func applyImpulse(_ impulse: Vector2, position: Vector2 = Vector2 (x: 0, y: 0)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: impulse) { pArg0 in
            withUnsafePointer(to: position) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RigidBody2D.method_apply_impulse, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_apply_torque_impulse: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("apply_torque_impulse")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Applies a rotational impulse to the body without affecting the position.
    /// 
    /// An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "_force" functions otherwise).
    /// 
    /// > Note: ``inertia`` is required for this to work. To have ``inertia``, an active ``CollisionShape2D`` must be a child of the node, or you can manually set ``inertia``.
    /// 
    public final func applyTorqueImpulse(torque: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: torque) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_apply_torque_impulse, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_apply_central_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("apply_central_force")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    /// Applies a directional force without affecting rotation. A force is time dependent and meant to be applied every physics update.
    /// 
    /// This is equivalent to using ``applyForce(_:position:)`` at the body's center of mass.
    /// 
    public final func applyCentralForce(_ force: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: force) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_apply_central_force, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_apply_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("apply_force")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4288681949)!
            }
            
        }
        
    }()
    
    /// Applies a positioned force to the body. A force is time dependent and meant to be applied every physics update.
    /// 
    /// `position` is the offset from the body origin in global coordinates.
    /// 
    public final func applyForce(_ force: Vector2, position: Vector2 = Vector2 (x: 0, y: 0)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: force) { pArg0 in
            withUnsafePointer(to: position) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RigidBody2D.method_apply_force, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_apply_torque: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("apply_torque")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Applies a rotational force without affecting position. A force is time dependent and meant to be applied every physics update.
    /// 
    /// > Note: ``inertia`` is required for this to work. To have ``inertia``, an active ``CollisionShape2D`` must be a child of the node, or you can manually set ``inertia``.
    /// 
    public final func applyTorque(_ torque: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: torque) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_apply_torque, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_constant_central_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_constant_central_force")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    /// Adds a constant directional force without affecting rotation that keeps being applied over time until cleared with `constant_force = Vector2(0, 0)`.
    /// 
    /// This is equivalent to using ``addConstantForce(_:position:)`` at the body's center of mass.
    /// 
    public final func addConstantCentralForce(_ force: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: force) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_add_constant_central_force, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_constant_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_constant_force")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4288681949)!
            }
            
        }
        
    }()
    
    /// Adds a constant positioned force to the body that keeps being applied over time until cleared with `constant_force = Vector2(0, 0)`.
    /// 
    /// `position` is the offset from the body origin in global coordinates.
    /// 
    public final func addConstantForce(_ force: Vector2, position: Vector2 = Vector2 (x: 0, y: 0)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: force) { pArg0 in
            withUnsafePointer(to: position) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RigidBody2D.method_add_constant_force, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_constant_torque: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_constant_torque")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Adds a constant rotational force without affecting position that keeps being applied over time until cleared with `constant_torque = 0`.
    public final func addConstantTorque(_ torque: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: torque) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_add_constant_torque, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_constant_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_constant_force")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_constant_force(_ force: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: force) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_set_constant_force, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_constant_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_constant_force")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_constant_force() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(RigidBody2D.method_get_constant_force, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_constant_torque: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_constant_torque")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_constant_torque(_ torque: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: torque) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_set_constant_torque, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_constant_torque: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_constant_torque")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_constant_torque() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(RigidBody2D.method_get_constant_torque, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_sleeping: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sleeping")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sleeping(_ sleeping: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: sleeping) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_set_sleeping, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_sleeping: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_sleeping")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_sleeping() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RigidBody2D.method_is_sleeping, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_can_sleep: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_can_sleep")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_can_sleep(_ ableToSleep: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: ableToSleep) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_set_can_sleep, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_able_to_sleep: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_able_to_sleep")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_able_to_sleep() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RigidBody2D.method_is_able_to_sleep, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_lock_rotation_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_lock_rotation_enabled")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_lock_rotation_enabled(_ lockRotation: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: lockRotation) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_set_lock_rotation_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_lock_rotation_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_lock_rotation_enabled")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_lock_rotation_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RigidBody2D.method_is_lock_rotation_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_freeze_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_freeze_enabled")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_freeze_enabled(_ freezeMode: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: freezeMode) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_set_freeze_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_freeze_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_freeze_enabled")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_freeze_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RigidBody2D.method_is_freeze_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_freeze_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_freeze_mode")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1705112154)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_freeze_mode(_ freezeMode: RigidBody2D.FreezeMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: freezeMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RigidBody2D.method_set_freeze_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_freeze_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_freeze_mode")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2016872314)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_freeze_mode() -> RigidBody2D.FreezeMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RigidBody2D.method_get_freeze_mode, handle, nil, &_result)
        return RigidBody2D.FreezeMode (rawValue: _result)!
    }
    
    fileprivate static let method_get_colliding_bodies: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_colliding_bodies")
        return withUnsafePointer(to: &RigidBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns a list of the bodies colliding with this one. Requires ``contactMonitor`` to be set to `true` and ``maxContactsReported`` to be set high enough to detect all the collisions.
    /// 
    /// > Note: The result of this test is not immediate after moving objects. For performance, list of collisions is updated once per frame and before the physics step. Consider using signals instead.
    /// 
    public final func getCollidingBodies() -> TypedArray<Node2D?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(RigidBody2D.method_get_colliding_bodies, handle, nil, &_result)
        return TypedArray<Node2D?>(takingOver: _result)
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_integrate_forces":
                return _RigidBody2D_proxy_integrate_forces
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
    // Signals 
    /// Emitted when one of this RigidBody2D's ``Shape2D``s collides with another ``PhysicsBody2D`` or ``TileMap``'s ``Shape2D``s. Requires ``contactMonitor`` to be set to `true` and ``maxContactsReported`` to be set high enough to detect all the collisions. ``TileMap``s are detected if the ``TileSet`` has Collision ``Shape2D``s.
    /// 
    /// `bodyRid` the ``RID`` of the other ``PhysicsBody2D`` or ``TileSet``'s ``CollisionObject2D`` used by the ``PhysicsServer2D``.
    /// 
    /// `body` the ``Node``, if it exists in the tree, of the other ``PhysicsBody2D`` or ``TileMap``.
    /// 
    /// `bodyShapeIndex` the index of the ``Shape2D`` of the other ``PhysicsBody2D`` or ``TileMap`` used by the ``PhysicsServer2D``. Get the ``CollisionShape2D`` node with `body.shape_owner_get_owner(body.shape_find_owner(body_shape_index))`.
    /// 
    /// `localShapeIndex` the index of the ``Shape2D`` of this RigidBody2D used by the ``PhysicsServer2D``. Get the ``CollisionShape2D`` node with `self.shape_owner_get_owner(self.shape_find_owner(local_shape_index))`.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.bodyShapeEntered.connect { bodyRid, body, bodyShapeIndex, localShapeIndex in
    ///    print ("caught signal")
    /// }
    /// ```
    public var bodyShapeEntered: SignalWithArguments<RID, Node?, Int64, Int64> { SignalWithArguments<RID, Node?, Int64, Int64> (target: self, signalName: "body_shape_entered") }
    
    /// Emitted when the collision between one of this RigidBody2D's ``Shape2D``s and another ``PhysicsBody2D`` or ``TileMap``'s ``Shape2D``s ends. Requires ``contactMonitor`` to be set to `true` and ``maxContactsReported`` to be set high enough to detect all the collisions. ``TileMap``s are detected if the ``TileSet`` has Collision ``Shape2D``s.
    /// 
    /// `bodyRid` the ``RID`` of the other ``PhysicsBody2D`` or ``TileSet``'s ``CollisionObject2D`` used by the ``PhysicsServer2D``.
    /// 
    /// `body` the ``Node``, if it exists in the tree, of the other ``PhysicsBody2D`` or ``TileMap``.
    /// 
    /// `bodyShapeIndex` the index of the ``Shape2D`` of the other ``PhysicsBody2D`` or ``TileMap`` used by the ``PhysicsServer2D``. Get the ``CollisionShape2D`` node with `body.shape_owner_get_owner(body.shape_find_owner(body_shape_index))`.
    /// 
    /// `localShapeIndex` the index of the ``Shape2D`` of this RigidBody2D used by the ``PhysicsServer2D``. Get the ``CollisionShape2D`` node with `self.shape_owner_get_owner(self.shape_find_owner(local_shape_index))`.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.bodyShapeExited.connect { bodyRid, body, bodyShapeIndex, localShapeIndex in
    ///    print ("caught signal")
    /// }
    /// ```
    public var bodyShapeExited: SignalWithArguments<RID, Node?, Int64, Int64> { SignalWithArguments<RID, Node?, Int64, Int64> (target: self, signalName: "body_shape_exited") }
    
    /// Emitted when a collision with another ``PhysicsBody2D`` or ``TileMap`` occurs. Requires ``contactMonitor`` to be set to `true` and ``maxContactsReported`` to be set high enough to detect all the collisions. ``TileMap``s are detected if the ``TileSet`` has Collision ``Shape2D``s.
    /// 
    /// `body` the ``Node``, if it exists in the tree, of the other ``PhysicsBody2D`` or ``TileMap``.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.bodyEntered.connect { body in
    ///    print ("caught signal")
    /// }
    /// ```
    public var bodyEntered: SignalWithArguments<Node?> { SignalWithArguments<Node?> (target: self, signalName: "body_entered") }
    
    /// Emitted when the collision with another ``PhysicsBody2D`` or ``TileMap`` ends. Requires ``contactMonitor`` to be set to `true` and ``maxContactsReported`` to be set high enough to detect all the collisions. ``TileMap``s are detected if the ``TileSet`` has Collision ``Shape2D``s.
    /// 
    /// `body` the ``Node``, if it exists in the tree, of the other ``PhysicsBody2D`` or ``TileMap``.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.bodyExited.connect { body in
    ///    print ("caught signal")
    /// }
    /// ```
    public var bodyExited: SignalWithArguments<Node?> { SignalWithArguments<Node?> (target: self, signalName: "body_exited") }
    
    /// Emitted when the physics engine changes the body's sleeping state.
    /// 
    /// > Note: Changing the value ``sleeping`` will not trigger this signal. It is only emitted if the sleeping state is changed by the physics engine or `emit_signal("sleeping_state_changed")` is used.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.sleepingStateChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var sleepingStateChanged: SimpleSignal { SimpleSignal (target: self, signalName: "sleeping_state_changed") }
    
}

// Support methods for proxies
func _RigidBody2D_proxy_integrate_forces (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? RigidBody2D else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    swiftObject._integrateForces (state: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? PhysicsDirectBodyState2D)
}

