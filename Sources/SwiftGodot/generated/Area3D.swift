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


/// A region of 3D space that detects other ``CollisionObject3D``s entering or exiting it.
/// 
/// ``Area3D`` is a region of 3D space defined by one or multiple ``CollisionShape3D`` or ``CollisionPolygon3D`` child nodes. It detects when other ``CollisionObject3D``s enter or exit it, and it also keeps track of which collision objects haven't exited it yet (i.e. which one are overlapping it).
/// 
/// This node can also locally alter or override physics parameters (gravity, damping) and route audio to custom audio buses.
/// 
/// > Note: Areas and bodies created with ``PhysicsServer3D`` might not interact as expected with ``Area3D``s, and might not emit signals or track objects correctly.
/// 
/// > Warning: Using a ``ConcavePolygonShape3D`` inside a ``CollisionShape3D`` child of this node (created e.g. by using the **Create Trimesh Collision Sibling** option in the **Mesh** menu that appears when selecting a ``MeshInstance3D`` node) may give unexpected results, since this collision shape is hollow. If this is not desired, it has to be split into multiple ``ConvexPolygonShape3D``s or primitive shapes like ``BoxShape3D``, or in some cases it may be replaceable by a ``CollisionPolygon3D``.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``bodyShapeEntered``
/// - ``bodyShapeExited``
/// - ``bodyEntered``
/// - ``bodyExited``
/// - ``areaShapeEntered``
/// - ``areaShapeExited``
/// - ``areaEntered``
/// - ``areaExited``
open class Area3D: CollisionObject3D {
    private static var className = StringName("Area3D")
    override open class var godotClassName: StringName { className }
    public enum SpaceOverride: Int64, CaseIterable {
        /// This area does not affect gravity/damping.
        case disabled = 0 // SPACE_OVERRIDE_DISABLED
        /// This area adds its gravity/damping values to whatever has been calculated so far (in ``priority`` order).
        case combine = 1 // SPACE_OVERRIDE_COMBINE
        /// This area adds its gravity/damping values to whatever has been calculated so far (in ``priority`` order), ignoring any lower priority areas.
        case combineReplace = 2 // SPACE_OVERRIDE_COMBINE_REPLACE
        /// This area replaces any gravity/damping, even the defaults, ignoring any lower priority areas.
        case replace = 3 // SPACE_OVERRIDE_REPLACE
        /// This area replaces any gravity/damping calculated so far (in ``priority`` order), but keeps calculating the rest of the areas.
        case replaceCombine = 4 // SPACE_OVERRIDE_REPLACE_COMBINE
    }
    
    
    /* Properties */
    
    /// If `true`, the area detects bodies or areas entering and exiting it.
    final public var monitoring: Bool {
        get {
            return is_monitoring ()
        }
        
        set {
            set_monitoring (newValue)
        }
        
    }
    
    /// If `true`, other monitoring areas can detect this area.
    final public var monitorable: Bool {
        get {
            return is_monitorable ()
        }
        
        set {
            set_monitorable (newValue)
        }
        
    }
    
    /// The area's priority. Higher priority areas are processed first. The ``World3D``'s physics is always processed last, after all areas.
    final public var priority: Int32 {
        get {
            return get_priority ()
        }
        
        set {
            set_priority (newValue)
        }
        
    }
    
    /// Override mode for gravity calculations within this area. See ``Area3D/SpaceOverride`` for possible values.
    final public var gravitySpaceOverride: Area3D.SpaceOverride {
        get {
            return get_gravity_space_override_mode ()
        }
        
        set {
            set_gravity_space_override_mode (newValue)
        }
        
    }
    
    /// If `true`, gravity is calculated from a point (set via ``gravityPointCenter``). See also ``gravitySpaceOverride``.
    final public var gravityPoint: Bool {
        get {
            return is_gravity_a_point ()
        }
        
        set {
            set_gravity_is_point (newValue)
        }
        
    }
    
    /// The distance at which the gravity strength is equal to ``gravity``. For example, on a planet 100 meters in radius with a surface gravity of 4.0 m/s², set the ``gravity`` to 4.0 and the unit distance to 100.0. The gravity will have falloff according to the inverse square law, so in the example, at 200 meters from the center the gravity will be 1.0 m/s² (twice the distance, 1/4th the gravity), at 50 meters it will be 16.0 m/s² (half the distance, 4x the gravity), and so on.
    /// 
    /// The above is true only when the unit distance is a positive number. When this is set to 0.0, the gravity will be constant regardless of distance.
    /// 
    final public var gravityPointUnitDistance: Double {
        get {
            return get_gravity_point_unit_distance ()
        }
        
        set {
            set_gravity_point_unit_distance (newValue)
        }
        
    }
    
    /// If gravity is a point (see ``gravityPoint``), this will be the point of attraction.
    final public var gravityPointCenter: Vector3 {
        get {
            return get_gravity_point_center ()
        }
        
        set {
            set_gravity_point_center (newValue)
        }
        
    }
    
    /// The area's gravity vector (not normalized).
    final public var gravityDirection: Vector3 {
        get {
            return get_gravity_direction ()
        }
        
        set {
            set_gravity_direction (newValue)
        }
        
    }
    
    /// The area's gravity intensity (in meters per second squared). This value multiplies the gravity direction. This is useful to alter the force of gravity without altering its direction.
    final public var gravity: Double {
        get {
            return get_gravity ()
        }
        
        set {
            set_gravity (newValue)
        }
        
    }
    
    /// Override mode for linear damping calculations within this area. See ``Area3D/SpaceOverride`` for possible values.
    final public var linearDampSpaceOverride: Area3D.SpaceOverride {
        get {
            return get_linear_damp_space_override_mode ()
        }
        
        set {
            set_linear_damp_space_override_mode (newValue)
        }
        
    }
    
    /// The rate at which objects stop moving in this area. Represents the linear velocity lost per second.
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
    
    /// Override mode for angular damping calculations within this area. See ``Area3D/SpaceOverride`` for possible values.
    final public var angularDampSpaceOverride: Area3D.SpaceOverride {
        get {
            return get_angular_damp_space_override_mode ()
        }
        
        set {
            set_angular_damp_space_override_mode (newValue)
        }
        
    }
    
    /// The rate at which objects stop spinning in this area. Represents the angular velocity lost per second.
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
    
    /// The magnitude of area-specific wind force.
    /// 
    /// > Note: This wind force only applies to ``SoftBody3D`` nodes. Other physics bodies are currently not affected by wind.
    /// 
    final public var windForceMagnitude: Double {
        get {
            return get_wind_force_magnitude ()
        }
        
        set {
            set_wind_force_magnitude (newValue)
        }
        
    }
    
    /// The exponential rate at which wind force decreases with distance from its origin.
    /// 
    /// > Note: This wind force only applies to ``SoftBody3D`` nodes. Other physics bodies are currently not affected by wind.
    /// 
    final public var windAttenuationFactor: Double {
        get {
            return get_wind_attenuation_factor ()
        }
        
        set {
            set_wind_attenuation_factor (newValue)
        }
        
    }
    
    /// The ``Node3D`` which is used to specify the direction and origin of an area-specific wind force. The direction is opposite to the z-axis of the ``Node3D``'s local transform, and its origin is the origin of the ``Node3D``'s local transform.
    /// 
    /// > Note: This wind force only applies to ``SoftBody3D`` nodes. Other physics bodies are currently not affected by wind.
    /// 
    final public var windSourcePath: NodePath {
        get {
            return get_wind_source_path ()
        }
        
        set {
            set_wind_source_path (newValue)
        }
        
    }
    
    /// If `true`, the area's audio bus overrides the default audio bus.
    final public var audioBusOverride: Bool {
        get {
            return is_overriding_audio_bus ()
        }
        
        set {
            set_audio_bus_override (newValue)
        }
        
    }
    
    /// The name of the area's audio bus.
    final public var audioBusName: StringName {
        get {
            return get_audio_bus_name ()
        }
        
        set {
            set_audio_bus_name (newValue)
        }
        
    }
    
    /// If `true`, the area applies reverb to its associated audio.
    final public var reverbBusEnabled: Bool {
        get {
            return is_using_reverb_bus ()
        }
        
        set {
            set_use_reverb_bus (newValue)
        }
        
    }
    
    /// The name of the reverb bus to use for this area's associated audio.
    final public var reverbBusName: StringName {
        get {
            return get_reverb_bus_name ()
        }
        
        set {
            set_reverb_bus_name (newValue)
        }
        
    }
    
    /// The degree to which this area applies reverb to its associated audio. Ranges from `0` to `1` with `0.1` precision.
    final public var reverbBusAmount: Double {
        get {
            return get_reverb_amount ()
        }
        
        set {
            set_reverb_amount (newValue)
        }
        
    }
    
    /// The degree to which this area's reverb is a uniform effect. Ranges from `0` to `1` with `0.1` precision.
    final public var reverbBusUniformity: Double {
        get {
            return get_reverb_uniformity ()
        }
        
        set {
            set_reverb_uniformity (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_gravity_space_override_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_gravity_space_override_mode")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2311433571)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_gravity_space_override_mode(_ spaceOverrideMode: Area3D.SpaceOverride) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: spaceOverrideMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Area3D.method_set_gravity_space_override_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_gravity_space_override_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_gravity_space_override_mode")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 958191869)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_gravity_space_override_mode() -> Area3D.SpaceOverride {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(Area3D.method_get_gravity_space_override_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return Area3D.SpaceOverride (rawValue: _result)!
    }
    
    fileprivate static let method_set_gravity_is_point: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_gravity_is_point")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_gravity_is_point(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Area3D.method_set_gravity_is_point, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_gravity_a_point: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_gravity_a_point")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_gravity_a_point() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Area3D.method_is_gravity_a_point, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_gravity_point_unit_distance: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_gravity_point_unit_distance")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_gravity_point_unit_distance(_ distanceScale: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: distanceScale) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Area3D.method_set_gravity_point_unit_distance, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_gravity_point_unit_distance: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_gravity_point_unit_distance")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_gravity_point_unit_distance() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Area3D.method_get_gravity_point_unit_distance, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_gravity_point_center: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_gravity_point_center")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_gravity_point_center(_ center: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: center) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Area3D.method_set_gravity_point_center, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_gravity_point_center: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_gravity_point_center")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_gravity_point_center() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(Area3D.method_get_gravity_point_center, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_gravity_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_gravity_direction")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_gravity_direction(_ direction: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: direction) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Area3D.method_set_gravity_direction, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_gravity_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_gravity_direction")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_gravity_direction() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(Area3D.method_get_gravity_direction, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_gravity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_gravity")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_gravity(_ gravity: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: gravity) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Area3D.method_set_gravity, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_gravity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_gravity")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_gravity() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Area3D.method_get_gravity, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_linear_damp_space_override_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_linear_damp_space_override_mode")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2311433571)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_linear_damp_space_override_mode(_ spaceOverrideMode: Area3D.SpaceOverride) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: spaceOverrideMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Area3D.method_set_linear_damp_space_override_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_linear_damp_space_override_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_linear_damp_space_override_mode")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 958191869)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_linear_damp_space_override_mode() -> Area3D.SpaceOverride {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(Area3D.method_get_linear_damp_space_override_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return Area3D.SpaceOverride (rawValue: _result)!
    }
    
    fileprivate static let method_set_angular_damp_space_override_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_angular_damp_space_override_mode")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2311433571)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_angular_damp_space_override_mode(_ spaceOverrideMode: Area3D.SpaceOverride) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: spaceOverrideMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Area3D.method_set_angular_damp_space_override_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_angular_damp_space_override_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_angular_damp_space_override_mode")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 958191869)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_angular_damp_space_override_mode() -> Area3D.SpaceOverride {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(Area3D.method_get_angular_damp_space_override_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return Area3D.SpaceOverride (rawValue: _result)!
    }
    
    fileprivate static let method_set_angular_damp: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_angular_damp")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(Area3D.method_set_angular_damp, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_angular_damp: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_angular_damp")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_angular_damp() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Area3D.method_get_angular_damp, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_linear_damp: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_linear_damp")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(Area3D.method_set_linear_damp, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_linear_damp: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_linear_damp")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_linear_damp() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Area3D.method_get_linear_damp, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_priority: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_priority")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_priority(_ priority: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: priority) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Area3D.method_set_priority, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_priority: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_priority")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_priority() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Area3D.method_get_priority, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_wind_force_magnitude: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_wind_force_magnitude")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_wind_force_magnitude(_ windForceMagnitude: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: windForceMagnitude) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Area3D.method_set_wind_force_magnitude, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_wind_force_magnitude: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_wind_force_magnitude")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_wind_force_magnitude() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Area3D.method_get_wind_force_magnitude, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_wind_attenuation_factor: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_wind_attenuation_factor")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_wind_attenuation_factor(_ windAttenuationFactor: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: windAttenuationFactor) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Area3D.method_set_wind_attenuation_factor, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_wind_attenuation_factor: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_wind_attenuation_factor")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_wind_attenuation_factor() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Area3D.method_get_wind_attenuation_factor, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_wind_source_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_wind_source_path")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_wind_source_path(_ windSourcePath: NodePath) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: windSourcePath.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Area3D.method_set_wind_source_path, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_wind_source_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_wind_source_path")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_wind_source_path() -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(Area3D.method_get_wind_source_path, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_monitorable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_monitorable")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_monitorable(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Area3D.method_set_monitorable, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_monitorable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_monitorable")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_monitorable() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Area3D.method_is_monitorable, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_monitoring: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_monitoring")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_monitoring(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Area3D.method_set_monitoring, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_monitoring: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_monitoring")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_monitoring() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Area3D.method_is_monitoring, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_overlapping_bodies: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_overlapping_bodies")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns a list of intersecting ``PhysicsBody3D``s and ``GridMap``s. The overlapping body's ``CollisionObject3D/collisionLayer`` must be part of this area's ``CollisionObject3D/collisionMask`` in order to be detected.
    /// 
    /// For performance reasons (collisions are all processed at the same time) this list is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.
    /// 
    public final func getOverlappingBodies() -> TypedArray<Node3D?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(Area3D.method_get_overlapping_bodies, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<Node3D?>(takingOver: _result)
    }
    
    fileprivate static let method_get_overlapping_areas: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_overlapping_areas")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns a list of intersecting ``Area3D``s. The overlapping area's ``CollisionObject3D/collisionLayer`` must be part of this area's ``CollisionObject3D/collisionMask`` in order to be detected.
    /// 
    /// For performance reasons (collisions are all processed at the same time) this list is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.
    /// 
    public final func getOverlappingAreas() -> TypedArray<Area3D?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(Area3D.method_get_overlapping_areas, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<Area3D?>(takingOver: _result)
    }
    
    fileprivate static let method_has_overlapping_bodies: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_overlapping_bodies")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if intersecting any ``PhysicsBody3D``s or ``GridMap``s, otherwise returns `false`. The overlapping body's ``CollisionObject3D/collisionLayer`` must be part of this area's ``CollisionObject3D/collisionMask`` in order to be detected.
    /// 
    /// For performance reasons (collisions are all processed at the same time) the list of overlapping bodies is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.
    /// 
    public final func hasOverlappingBodies() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Area3D.method_has_overlapping_bodies, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_has_overlapping_areas: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_overlapping_areas")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if intersecting any ``Area3D``s, otherwise returns `false`. The overlapping area's ``CollisionObject3D/collisionLayer`` must be part of this area's ``CollisionObject3D/collisionMask`` in order to be detected.
    /// 
    /// For performance reasons (collisions are all processed at the same time) the list of overlapping areas is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.
    /// 
    public final func hasOverlappingAreas() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Area3D.method_has_overlapping_areas, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_overlaps_body: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("overlaps_body")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3093956946)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given physics body intersects or overlaps this ``Area3D``, `false` otherwise.
    /// 
    /// > Note: The result of this test is not immediate after moving objects. For performance, list of overlaps is updated once per frame and before the physics step. Consider using signals instead.
    /// 
    /// The `body` argument can either be a ``PhysicsBody3D`` or a ``GridMap`` instance. While GridMaps are not physics body themselves, they register their tiles with collision shapes as a virtual physics body.
    /// 
    public final func overlapsBody(_ body: Node?) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: body?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Area3D.method_overlaps_body, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_overlaps_area: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("overlaps_area")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3093956946)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given ``Area3D`` intersects or overlaps this ``Area3D``, `false` otherwise.
    /// 
    /// > Note: The result of this test is not immediate after moving objects. For performance, list of overlaps is updated once per frame and before the physics step. Consider using signals instead.
    /// 
    public final func overlapsArea(_ area: Node?) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: area?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Area3D.method_overlaps_area, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_audio_bus_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_audio_bus_override")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_audio_bus_override(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Area3D.method_set_audio_bus_override, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_overriding_audio_bus: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_overriding_audio_bus")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_overriding_audio_bus() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Area3D.method_is_overriding_audio_bus, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_audio_bus_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_audio_bus_name")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_audio_bus_name(_ name: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Area3D.method_set_audio_bus_name, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_audio_bus_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_audio_bus_name")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_audio_bus_name() -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(Area3D.method_get_audio_bus_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_use_reverb_bus: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_reverb_bus")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_reverb_bus(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Area3D.method_set_use_reverb_bus, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_using_reverb_bus: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_using_reverb_bus")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_using_reverb_bus() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Area3D.method_is_using_reverb_bus, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_reverb_bus_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_reverb_bus_name")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_reverb_bus_name(_ name: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Area3D.method_set_reverb_bus_name, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_reverb_bus_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_reverb_bus_name")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_reverb_bus_name() -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(Area3D.method_get_reverb_bus_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_reverb_amount: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_reverb_amount")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_reverb_amount(_ amount: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Area3D.method_set_reverb_amount, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_reverb_amount: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_reverb_amount")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_reverb_amount() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Area3D.method_get_reverb_amount, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_reverb_uniformity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_reverb_uniformity")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_reverb_uniformity(_ amount: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Area3D.method_set_reverb_uniformity, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_reverb_uniformity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_reverb_uniformity")
        return withUnsafePointer(to: &Area3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_reverb_uniformity() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Area3D.method_get_reverb_uniformity, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    // Signals 
    /// Emitted when a ``Shape3D`` of the received `body` enters a shape of this area. `body` can be a ``PhysicsBody3D`` or a ``GridMap``. ``GridMap``s are detected if their ``MeshLibrary`` has collision shapes configured. Requires ``monitoring`` to be set to `true`.
    /// 
    /// `localShapeIndex` and `bodyShapeIndex` contain indices of the interacting shapes from this area and the interacting body, respectively. `bodyRid` contains the ``RID`` of the body. These values can be used with the ``PhysicsServer3D``.
    /// 
    /// **Example:** Get the ``CollisionShape3D`` node from the shape index:
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
    public var bodyShapeEntered: SignalWithArguments<RID, Node3D?, Int64, Int64> { SignalWithArguments<RID, Node3D?, Int64, Int64> (target: self, signalName: "body_shape_entered") }
    
    /// Emitted when a ``Shape3D`` of the received `body` exits a shape of this area. `body` can be a ``PhysicsBody3D`` or a ``GridMap``. ``GridMap``s are detected if their ``MeshLibrary`` has collision shapes configured. Requires ``monitoring`` to be set to `true`.
    /// 
    /// See also [signal body_shape_entered].
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
    public var bodyShapeExited: SignalWithArguments<RID, Node3D?, Int64, Int64> { SignalWithArguments<RID, Node3D?, Int64, Int64> (target: self, signalName: "body_shape_exited") }
    
    /// Emitted when the received `body` enters this area. `body` can be a ``PhysicsBody3D`` or a ``GridMap``. ``GridMap``s are detected if their ``MeshLibrary`` has collision shapes configured. Requires ``monitoring`` to be set to `true`.
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
    public var bodyEntered: SignalWithArguments<Node3D?> { SignalWithArguments<Node3D?> (target: self, signalName: "body_entered") }
    
    /// Emitted when the received `body` exits this area. `body` can be a ``PhysicsBody3D`` or a ``GridMap``. ``GridMap``s are detected if their ``MeshLibrary`` has collision shapes configured. Requires ``monitoring`` to be set to `true`.
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
    public var bodyExited: SignalWithArguments<Node3D?> { SignalWithArguments<Node3D?> (target: self, signalName: "body_exited") }
    
    /// Emitted when a ``Shape3D`` of the received `area` enters a shape of this area. Requires ``monitoring`` to be set to `true`.
    /// 
    /// `localShapeIndex` and `areaShapeIndex` contain indices of the interacting shapes from this area and the other area, respectively. `areaRid` contains the ``RID`` of the other area. These values can be used with the ``PhysicsServer3D``.
    /// 
    /// **Example:** Get the ``CollisionShape3D`` node from the shape index:
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
    /// obj.areaShapeEntered.connect { areaRid, area, areaShapeIndex, localShapeIndex in
    ///    print ("caught signal")
    /// }
    /// ```
    public var areaShapeEntered: SignalWithArguments<RID, Area3D?, Int64, Int64> { SignalWithArguments<RID, Area3D?, Int64, Int64> (target: self, signalName: "area_shape_entered") }
    
    /// Emitted when a ``Shape3D`` of the received `area` exits a shape of this area. Requires ``monitoring`` to be set to `true`.
    /// 
    /// See also [signal area_shape_entered].
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
    /// obj.areaShapeExited.connect { areaRid, area, areaShapeIndex, localShapeIndex in
    ///    print ("caught signal")
    /// }
    /// ```
    public var areaShapeExited: SignalWithArguments<RID, Area3D?, Int64, Int64> { SignalWithArguments<RID, Area3D?, Int64, Int64> (target: self, signalName: "area_shape_exited") }
    
    /// Emitted when the received `area` enters this area. Requires ``monitoring`` to be set to `true`.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.areaEntered.connect { area in
    ///    print ("caught signal")
    /// }
    /// ```
    public var areaEntered: SignalWithArguments<Area3D?> { SignalWithArguments<Area3D?> (target: self, signalName: "area_entered") }
    
    /// Emitted when the received `area` exits this area. Requires ``monitoring`` to be set to `true`.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.areaExited.connect { area in
    ///    print ("caught signal")
    /// }
    /// ```
    public var areaExited: SignalWithArguments<Area3D?> { SignalWithArguments<Area3D?> (target: self, signalName: "area_exited") }
    
}

