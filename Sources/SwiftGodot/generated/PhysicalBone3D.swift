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


/// A physics body used to make bones in a ``Skeleton3D`` react to physics.
/// 
/// The ``PhysicalBone3D`` node is a physics body that can be used to make bones in a ``Skeleton3D`` react to physics.
/// 
/// > Note: In order to detect physical bones with raycasts, the ``SkeletonModifier3D/active`` property of the parent ``PhysicalBoneSimulator3D`` must be `true` and the ``Skeleton3D``'s bone must be assigned to ``PhysicalBone3D`` correctly; it means that ``getBoneId()`` should return a valid id (`>= 0`).
/// 
open class PhysicalBone3D: PhysicsBody3D {
    private static var className = StringName("PhysicalBone3D")
    override open class var godotClassName: StringName { className }
    public enum DampMode: Int64, CaseIterable {
        /// In this mode, the body's damping value is added to any value set in areas or the default value.
        case combine = 0 // DAMP_MODE_COMBINE
        /// In this mode, the body's damping value replaces any value set in areas or the default value.
        case replace = 1 // DAMP_MODE_REPLACE
    }
    
    public enum JointType: Int64, CaseIterable {
        /// No joint is applied to the PhysicsBone3D.
        case none = 0 // JOINT_TYPE_NONE
        /// A pin joint is applied to the PhysicsBone3D.
        case pin = 1 // JOINT_TYPE_PIN
        /// A cone joint is applied to the PhysicsBone3D.
        case cone = 2 // JOINT_TYPE_CONE
        /// A hinge joint is applied to the PhysicsBone3D.
        case hinge = 3 // JOINT_TYPE_HINGE
        /// A slider joint is applied to the PhysicsBone3D.
        case slider = 4 // JOINT_TYPE_SLIDER
        /// A 6 degrees of freedom joint is applied to the PhysicsBone3D.
        case jointType6dof = 5 // JOINT_TYPE_6DOF
    }
    
    
    /* Properties */
    
    /// Sets the joint type. See ``PhysicalBone3D/JointType`` for possible values.
    final public var jointType: PhysicalBone3D.JointType {
        get {
            return get_joint_type ()
        }
        
        set {
            set_joint_type (newValue)
        }
        
    }
    
    /// Sets the joint's transform.
    final public var jointOffset: Transform3D {
        get {
            return get_joint_offset ()
        }
        
        set {
            set_joint_offset (newValue)
        }
        
    }
    
    /// Sets the joint's rotation in radians.
    final public var jointRotation: Vector3 {
        get {
            return get_joint_rotation ()
        }
        
        set {
            set_joint_rotation (newValue)
        }
        
    }
    
    /// Sets the body's transform.
    final public var bodyOffset: Transform3D {
        get {
            return get_body_offset ()
        }
        
        set {
            set_body_offset (newValue)
        }
        
    }
    
    /// The body's mass.
    final public var mass: Double {
        get {
            return get_mass ()
        }
        
        set {
            set_mass (newValue)
        }
        
    }
    
    /// The body's friction, from `0` (frictionless) to `1` (max friction).
    final public var friction: Double {
        get {
            return get_friction ()
        }
        
        set {
            set_friction (newValue)
        }
        
    }
    
    /// The body's bounciness. Values range from `0` (no bounce) to `1` (full bounciness).
    /// 
    /// > Note: Even with ``bounce`` set to `1.0`, some energy will be lost over time due to linear and angular damping. To have a ``PhysicalBone3D`` that preserves all its energy over time, set ``bounce`` to `1.0`, ``linearDampMode`` to ``DampMode/replace``, ``linearDamp`` to `0.0`, ``angularDampMode`` to ``DampMode/replace``, and ``angularDamp`` to `0.0`.
    /// 
    final public var bounce: Double {
        get {
            return get_bounce ()
        }
        
        set {
            set_bounce (newValue)
        }
        
    }
    
    /// This is multiplied by ``ProjectSettings/physics/3d/defaultGravity`` to produce this body's gravity. For example, a value of `1.0` will apply normal gravity, `2.0` will apply double the gravity, and `0.5` will apply half the gravity to this body.
    final public var gravityScale: Double {
        get {
            return get_gravity_scale ()
        }
        
        set {
            set_gravity_scale (newValue)
        }
        
    }
    
    /// If `true`, the standard force integration (like gravity or damping) will be disabled for this body. Other than collision response, the body will only move as determined by the ``_integrateForces(state:)`` method, if that virtual method is overridden.
    /// 
    /// Setting this property will call the method ``PhysicsServer3D/bodySetOmitForceIntegration(body:enable:)`` internally.
    /// 
    final public var customIntegrator: Bool {
        get {
            return is_using_custom_integrator ()
        }
        
        set {
            set_use_custom_integrator (newValue)
        }
        
    }
    
    /// Defines how ``linearDamp`` is applied. See ``PhysicalBone3D/DampMode`` for possible values.
    final public var linearDampMode: PhysicalBone3D.DampMode {
        get {
            return get_linear_damp_mode ()
        }
        
        set {
            set_linear_damp_mode (newValue)
        }
        
    }
    
    /// Damps the body's movement. By default, the body will use ``ProjectSettings/physics/3d/defaultLinearDamp`` or any value override set by an ``Area3D`` the body is in. Depending on ``linearDampMode``, ``linearDamp`` may be added to or replace the body's damping value.
    /// 
    /// See ``ProjectSettings/physics/3d/defaultLinearDamp`` for more details about damping.
    /// 
    final public var linearDamp: Double {
        get {
            return get_linear_damp ()
        }
        
        set {
            set_linear_damp (newValue)
        }
        
    }
    
    /// Defines how ``angularDamp`` is applied. See ``PhysicalBone3D/DampMode`` for possible values.
    final public var angularDampMode: PhysicalBone3D.DampMode {
        get {
            return get_angular_damp_mode ()
        }
        
        set {
            set_angular_damp_mode (newValue)
        }
        
    }
    
    /// Damps the body's rotation. By default, the body will use the ``ProjectSettings/physics/3d/defaultAngularDamp`` project setting or any value override set by an ``Area3D`` the body is in. Depending on ``angularDampMode``, you can set ``angularDamp`` to be added to or to replace the body's damping value.
    /// 
    /// See ``ProjectSettings/physics/3d/defaultAngularDamp`` for more details about damping.
    /// 
    final public var angularDamp: Double {
        get {
            return get_angular_damp ()
        }
        
        set {
            set_angular_damp (newValue)
        }
        
    }
    
    /// The body's linear velocity in units per second. Can be used sporadically, but **don't set this every frame**, because physics may run in another thread and runs at a different granularity. Use ``_integrateForces(state:)`` as your process loop for precise control of the body state.
    final public var linearVelocity: Vector3 {
        get {
            return get_linear_velocity ()
        }
        
        set {
            set_linear_velocity (newValue)
        }
        
    }
    
    /// The PhysicalBone3D's rotational velocity in _radians_ per second.
    final public var angularVelocity: Vector3 {
        get {
            return get_angular_velocity ()
        }
        
        set {
            set_angular_velocity (newValue)
        }
        
    }
    
    /// If `true`, the body is deactivated when there is no movement, so it will not take part in the simulation until it is awakened by an external force.
    final public var canSleep: Bool {
        get {
            return is_able_to_sleep ()
        }
        
        set {
            set_can_sleep (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method__integrate_forces: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_integrate_forces")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 420958145)!
            }
            
        }
        
    }()
    
    /// Called during physics processing, allowing you to read and safely modify the simulation state for the object. By default, it is called before the standard force integration, but the ``customIntegrator`` property allows you to disable the standard force integration and do fully custom force integration for a body.
    @_documentation(visibility: public)
    open func _integrateForces(state: PhysicsDirectBodyState3D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: state?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicalBone3D.method__integrate_forces, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_apply_central_impulse: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("apply_central_impulse")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// Applies a directional impulse without affecting rotation.
    /// 
    /// An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "_integrate_forces" functions otherwise).
    /// 
    /// This is equivalent to using ``applyImpulse(_:position:)`` at the body's center of mass.
    /// 
    public final func applyCentralImpulse(_ impulse: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: impulse) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicalBone3D.method_apply_central_impulse, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_apply_impulse: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("apply_impulse")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2754756483)!
            }
            
        }
        
    }()
    
    /// Applies a positioned impulse to the PhysicsBone3D.
    /// 
    /// An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "_integrate_forces" functions otherwise).
    /// 
    /// `position` is the offset from the PhysicsBone3D origin in global coordinates.
    /// 
    public final func applyImpulse(_ impulse: Vector3, position: Vector3 = Vector3 (x: 0, y: 0, z: 0)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: impulse) { pArg0 in
            withUnsafePointer(to: position) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicalBone3D.method_apply_impulse, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_joint_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_joint_type")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2289552604)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_joint_type(_ jointType: PhysicalBone3D.JointType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: jointType.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicalBone3D.method_set_joint_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_joint_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_joint_type")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 931347320)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_joint_type() -> PhysicalBone3D.JointType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(PhysicalBone3D.method_get_joint_type, handle, nil, &_result)
        return PhysicalBone3D.JointType (rawValue: _result)!
    }
    
    fileprivate static let method_set_joint_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_joint_offset")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2952846383)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_joint_offset(_ offset: Transform3D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicalBone3D.method_set_joint_offset, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_joint_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_joint_offset")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3229777777)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_joint_offset() -> Transform3D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform3D = Transform3D ()
        gi.object_method_bind_ptrcall(PhysicalBone3D.method_get_joint_offset, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_joint_rotation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_joint_rotation")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_joint_rotation(_ euler: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: euler) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicalBone3D.method_set_joint_rotation, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_joint_rotation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_joint_rotation")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_joint_rotation() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(PhysicalBone3D.method_get_joint_rotation, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_body_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_body_offset")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2952846383)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_body_offset(_ offset: Transform3D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicalBone3D.method_set_body_offset, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_body_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_body_offset")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3229777777)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_body_offset() -> Transform3D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform3D = Transform3D ()
        gi.object_method_bind_ptrcall(PhysicalBone3D.method_get_body_offset, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_simulate_physics: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_simulate_physics")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the PhysicsBone3D is allowed to simulate physics.
    public final func getSimulatePhysics() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PhysicalBone3D.method_get_simulate_physics, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_simulating_physics: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_simulating_physics")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the PhysicsBone3D is currently simulating physics.
    public final func isSimulatingPhysics() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PhysicalBone3D.method_is_simulating_physics, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_bone_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bone_id")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the unique identifier of the PhysicsBone3D.
    public final func getBoneId() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(PhysicalBone3D.method_get_bone_id, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_mass: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_mass")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(PhysicalBone3D.method_set_mass, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_mass: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_mass")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mass() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicalBone3D.method_get_mass, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_friction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_friction")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_friction(_ friction: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: friction) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicalBone3D.method_set_friction, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_friction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_friction")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_friction() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicalBone3D.method_get_friction, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_bounce: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bounce")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bounce(_ bounce: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: bounce) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicalBone3D.method_set_bounce, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_bounce: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bounce")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bounce() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicalBone3D.method_get_bounce, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_gravity_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_gravity_scale")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(PhysicalBone3D.method_set_gravity_scale, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_gravity_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_gravity_scale")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_gravity_scale() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicalBone3D.method_get_gravity_scale, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_linear_damp_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_linear_damp_mode")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1244972221)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_linear_damp_mode(_ linearDampMode: PhysicalBone3D.DampMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: linearDampMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicalBone3D.method_set_linear_damp_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_linear_damp_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_linear_damp_mode")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 205884699)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_linear_damp_mode() -> PhysicalBone3D.DampMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(PhysicalBone3D.method_get_linear_damp_mode, handle, nil, &_result)
        return PhysicalBone3D.DampMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_angular_damp_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_angular_damp_mode")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1244972221)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_angular_damp_mode(_ angularDampMode: PhysicalBone3D.DampMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: angularDampMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicalBone3D.method_set_angular_damp_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_angular_damp_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_angular_damp_mode")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 205884699)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_angular_damp_mode() -> PhysicalBone3D.DampMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(PhysicalBone3D.method_get_angular_damp_mode, handle, nil, &_result)
        return PhysicalBone3D.DampMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_linear_damp: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_linear_damp")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(PhysicalBone3D.method_set_linear_damp, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_linear_damp: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_linear_damp")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_linear_damp() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicalBone3D.method_get_linear_damp, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_angular_damp: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_angular_damp")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(PhysicalBone3D.method_set_angular_damp, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_angular_damp: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_angular_damp")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_angular_damp() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicalBone3D.method_get_angular_damp, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_linear_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_linear_velocity")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_linear_velocity(_ linearVelocity: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: linearVelocity) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicalBone3D.method_set_linear_velocity, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_linear_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_linear_velocity")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_linear_velocity() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(PhysicalBone3D.method_get_linear_velocity, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_angular_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_angular_velocity")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_angular_velocity(_ angularVelocity: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: angularVelocity) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicalBone3D.method_set_angular_velocity, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_angular_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_angular_velocity")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_angular_velocity() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(PhysicalBone3D.method_get_angular_velocity, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_use_custom_integrator: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_custom_integrator")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(PhysicalBone3D.method_set_use_custom_integrator, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_using_custom_integrator: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_using_custom_integrator")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_using_custom_integrator() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PhysicalBone3D.method_is_using_custom_integrator, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_can_sleep: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_can_sleep")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(PhysicalBone3D.method_set_can_sleep, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_able_to_sleep: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_able_to_sleep")
        return withUnsafePointer(to: &PhysicalBone3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_able_to_sleep() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PhysicalBone3D.method_is_able_to_sleep, handle, nil, &_result)
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_integrate_forces":
                return _PhysicalBone3D_proxy_integrate_forces
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _PhysicalBone3D_proxy_integrate_forces (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicalBone3D else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    swiftObject._integrateForces (state: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? PhysicsDirectBodyState3D)
}

