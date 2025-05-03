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


/// A CPU-based 3D particle emitter.
/// 
/// CPU-based 3D particle node used to create a variety of particle systems and effects.
/// 
/// See also ``GPUParticles3D``, which provides the same functionality with hardware acceleration, but may not run on older devices.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``finished``
open class CPUParticles3D: GeometryInstance3D {
    private static var className = StringName("CPUParticles3D")
    override open class var godotClassName: StringName { className }
    public enum DrawOrder: Int64, CaseIterable {
        /// Particles are drawn in the order emitted.
        case index = 0 // DRAW_ORDER_INDEX
        /// Particles are drawn in order of remaining lifetime. In other words, the particle with the highest lifetime is drawn at the front.
        case lifetime = 1 // DRAW_ORDER_LIFETIME
        /// Particles are drawn in order of depth.
        case viewDepth = 2 // DRAW_ORDER_VIEW_DEPTH
    }
    
    public enum Parameter: Int64, CaseIterable {
        /// Use with ``setParamMin(param:value:)``, ``setParamMax(param:value:)``, and ``setParamCurve(param:curve:)`` to set initial velocity properties.
        case initialLinearVelocity = 0 // PARAM_INITIAL_LINEAR_VELOCITY
        /// Use with ``setParamMin(param:value:)``, ``setParamMax(param:value:)``, and ``setParamCurve(param:curve:)`` to set angular velocity properties.
        case angularVelocity = 1 // PARAM_ANGULAR_VELOCITY
        /// Use with ``setParamMin(param:value:)``, ``setParamMax(param:value:)``, and ``setParamCurve(param:curve:)`` to set orbital velocity properties.
        case orbitVelocity = 2 // PARAM_ORBIT_VELOCITY
        /// Use with ``setParamMin(param:value:)``, ``setParamMax(param:value:)``, and ``setParamCurve(param:curve:)`` to set linear acceleration properties.
        case linearAccel = 3 // PARAM_LINEAR_ACCEL
        /// Use with ``setParamMin(param:value:)``, ``setParamMax(param:value:)``, and ``setParamCurve(param:curve:)`` to set radial acceleration properties.
        case radialAccel = 4 // PARAM_RADIAL_ACCEL
        /// Use with ``setParamMin(param:value:)``, ``setParamMax(param:value:)``, and ``setParamCurve(param:curve:)`` to set tangential acceleration properties.
        case tangentialAccel = 5 // PARAM_TANGENTIAL_ACCEL
        /// Use with ``setParamMin(param:value:)``, ``setParamMax(param:value:)``, and ``setParamCurve(param:curve:)`` to set damping properties.
        case damping = 6 // PARAM_DAMPING
        /// Use with ``setParamMin(param:value:)``, ``setParamMax(param:value:)``, and ``setParamCurve(param:curve:)`` to set angle properties.
        case angle = 7 // PARAM_ANGLE
        /// Use with ``setParamMin(param:value:)``, ``setParamMax(param:value:)``, and ``setParamCurve(param:curve:)`` to set scale properties.
        case scale = 8 // PARAM_SCALE
        /// Use with ``setParamMin(param:value:)``, ``setParamMax(param:value:)``, and ``setParamCurve(param:curve:)`` to set hue variation properties.
        case hueVariation = 9 // PARAM_HUE_VARIATION
        /// Use with ``setParamMin(param:value:)``, ``setParamMax(param:value:)``, and ``setParamCurve(param:curve:)`` to set animation speed properties.
        case animSpeed = 10 // PARAM_ANIM_SPEED
        /// Use with ``setParamMin(param:value:)``, ``setParamMax(param:value:)``, and ``setParamCurve(param:curve:)`` to set animation offset properties.
        case animOffset = 11 // PARAM_ANIM_OFFSET
        /// Represents the size of the ``CPUParticles3D/Parameter`` enum.
        case max = 12 // PARAM_MAX
    }
    
    public enum ParticleFlags: Int64, CaseIterable {
        /// Use with ``setParticleFlag(_:enable:)`` to set ``particleFlagAlignY``.
        case alignYToVelocity = 0 // PARTICLE_FLAG_ALIGN_Y_TO_VELOCITY
        /// Use with ``setParticleFlag(_:enable:)`` to set ``particleFlagRotateY``.
        case rotateY = 1 // PARTICLE_FLAG_ROTATE_Y
        /// Use with ``setParticleFlag(_:enable:)`` to set ``particleFlagDisableZ``.
        case disableZ = 2 // PARTICLE_FLAG_DISABLE_Z
        /// Represents the size of the ``CPUParticles3D/ParticleFlags`` enum.
        case max = 3 // PARTICLE_FLAG_MAX
    }
    
    public enum EmissionShape: Int64, CaseIterable {
        /// All particles will be emitted from a single point.
        case point = 0 // EMISSION_SHAPE_POINT
        /// Particles will be emitted in the volume of a sphere.
        case sphere = 1 // EMISSION_SHAPE_SPHERE
        /// Particles will be emitted on the surface of a sphere.
        case sphereSurface = 2 // EMISSION_SHAPE_SPHERE_SURFACE
        /// Particles will be emitted in the volume of a box.
        case box = 3 // EMISSION_SHAPE_BOX
        /// Particles will be emitted at a position chosen randomly among ``emissionPoints``. Particle color will be modulated by ``emissionColors``.
        case points = 4 // EMISSION_SHAPE_POINTS
        /// Particles will be emitted at a position chosen randomly among ``emissionPoints``. Particle velocity and rotation will be set based on ``emissionNormals``. Particle color will be modulated by ``emissionColors``.
        case directedPoints = 5 // EMISSION_SHAPE_DIRECTED_POINTS
        /// Particles will be emitted in a ring or cylinder.
        case ring = 6 // EMISSION_SHAPE_RING
        /// Represents the size of the ``CPUParticles3D/EmissionShape`` enum.
        case max = 7 // EMISSION_SHAPE_MAX
    }
    
    
    /* Properties */
    
    /// If `true`, particles are being emitted. ``emitting`` can be used to start and stop particles from emitting. However, if ``oneShot`` is `true` setting ``emitting`` to `true` will not restart the emission cycle until after all active particles finish processing. You can use the [signal finished] signal to be notified once all active particles finish processing.
    final public var emitting: Bool {
        get {
            return is_emitting ()
        }
        
        set {
            set_emitting (newValue)
        }
        
    }
    
    /// Number of particles emitted in one emission cycle.
    final public var amount: Int32 {
        get {
            return get_amount ()
        }
        
        set {
            set_amount (newValue)
        }
        
    }
    
    /// Amount of time each particle will exist.
    final public var lifetime: Double {
        get {
            return get_lifetime ()
        }
        
        set {
            set_lifetime (newValue)
        }
        
    }
    
    /// If `true`, only one emission cycle occurs. If set `true` during a cycle, emission will stop at the cycle's end.
    final public var oneShot: Bool {
        get {
            return get_one_shot ()
        }
        
        set {
            set_one_shot (newValue)
        }
        
    }
    
    /// Particle system starts as if it had already run for this many seconds.
    final public var preprocess: Double {
        get {
            return get_pre_process_time ()
        }
        
        set {
            set_pre_process_time (newValue)
        }
        
    }
    
    /// Particle system's running speed scaling ratio. A value of `0` can be used to pause the particles.
    final public var speedScale: Double {
        get {
            return get_speed_scale ()
        }
        
        set {
            set_speed_scale (newValue)
        }
        
    }
    
    /// How rapidly particles in an emission cycle are emitted. If greater than `0`, there will be a gap in emissions before the next cycle begins.
    final public var explosiveness: Double {
        get {
            return get_explosiveness_ratio ()
        }
        
        set {
            set_explosiveness_ratio (newValue)
        }
        
    }
    
    /// Emission lifetime randomness ratio.
    final public var randomness: Double {
        get {
            return get_randomness_ratio ()
        }
        
        set {
            set_randomness_ratio (newValue)
        }
        
    }
    
    /// If `true`, particles will use the same seed for every simulation using the seed defined in ``seed``. This is useful for situations where the visual outcome should be consistent across replays, for example when using Movie Maker mode.
    final public var useFixedSeed: Bool {
        get {
            return get_use_fixed_seed ()
        }
        
        set {
            set_use_fixed_seed (newValue)
        }
        
    }
    
    /// Sets the random seed used by the particle system. Only effective if ``useFixedSeed`` is `true`.
    final public var seed: UInt32 {
        get {
            return get_seed ()
        }
        
        set {
            set_seed (newValue)
        }
        
    }
    
    /// Particle lifetime randomness ratio.
    final public var lifetimeRandomness: Double {
        get {
            return get_lifetime_randomness ()
        }
        
        set {
            set_lifetime_randomness (newValue)
        }
        
    }
    
    /// The particle system's frame rate is fixed to a value. For example, changing the value to 2 will make the particles render at 2 frames per second. Note this does not slow down the particle system itself.
    final public var fixedFps: Int32 {
        get {
            return get_fixed_fps ()
        }
        
        set {
            set_fixed_fps (newValue)
        }
        
    }
    
    /// If `true`, results in fractional delta calculation which has a smoother particles display effect.
    final public var fractDelta: Bool {
        get {
            return get_fractional_delta ()
        }
        
        set {
            set_fractional_delta (newValue)
        }
        
    }
    
    /// The ``AABB`` that determines the node's region which needs to be visible on screen for the particle system to be active.
    /// 
    /// Grow the box if particles suddenly appear/disappear when the node enters/exits the screen. The ``AABB`` can be grown via code or with the **Particles → Generate AABB** editor tool.
    /// 
    final public var visibilityAabb: AABB {
        get {
            return get_visibility_aabb ()
        }
        
        set {
            set_visibility_aabb (newValue)
        }
        
    }
    
    /// If `true`, particles use the parent node's coordinate space (known as local coordinates). This will cause particles to move and rotate along the ``CPUParticles3D`` node (and its parents) when it is moved or rotated. If `false`, particles use global coordinates; they will not move or rotate along the ``CPUParticles3D`` node (and its parents) when it is moved or rotated.
    final public var localCoords: Bool {
        get {
            return get_use_local_coordinates ()
        }
        
        set {
            set_use_local_coordinates (newValue)
        }
        
    }
    
    /// Particle draw order. Uses ``CPUParticles3D/DrawOrder`` values.
    final public var drawOrder: CPUParticles3D.DrawOrder {
        get {
            return get_draw_order ()
        }
        
        set {
            set_draw_order (newValue)
        }
        
    }
    
    /// The ``Mesh`` used for each particle. If `null`, particles will be spheres.
    final public var mesh: Mesh? {
        get {
            return get_mesh ()
        }
        
        set {
            set_mesh (newValue)
        }
        
    }
    
    /// Particles will be emitted inside this region. See ``CPUParticles3D/EmissionShape`` for possible values.
    final public var emissionShape: CPUParticles3D.EmissionShape {
        get {
            return get_emission_shape ()
        }
        
        set {
            set_emission_shape (newValue)
        }
        
    }
    
    /// The sphere's radius if ``CPUParticles3D/EmissionShape`` is set to ``EmissionShape/sphere``.
    final public var emissionSphereRadius: Double {
        get {
            return get_emission_sphere_radius ()
        }
        
        set {
            set_emission_sphere_radius (newValue)
        }
        
    }
    
    /// The rectangle's extents if ``emissionShape`` is set to ``EmissionShape/box``.
    final public var emissionBoxExtents: Vector3 {
        get {
            return get_emission_box_extents ()
        }
        
        set {
            set_emission_box_extents (newValue)
        }
        
    }
    
    /// Sets the initial positions to spawn particles when using ``EmissionShape/points`` or ``EmissionShape/directedPoints``.
    final public var emissionPoints: PackedVector3Array {
        get {
            return get_emission_points ()
        }
        
        set {
            set_emission_points (newValue)
        }
        
    }
    
    /// Sets the direction the particles will be emitted in when using ``EmissionShape/directedPoints``.
    final public var emissionNormals: PackedVector3Array {
        get {
            return get_emission_normals ()
        }
        
        set {
            set_emission_normals (newValue)
        }
        
    }
    
    /// Sets the ``Color``s to modulate particles by when using ``EmissionShape/points`` or ``EmissionShape/directedPoints``.
    /// 
    /// > Note: ``emissionColors`` multiplies the particle mesh's vertex colors. To have a visible effect on a ``BaseMaterial3D``, ``BaseMaterial3D/vertexColorUseAsAlbedo`` _must_ be `true`. For a ``ShaderMaterial``, `ALBEDO *= COLOR.rgb;` must be inserted in the shader's `fragment()` function. Otherwise, ``emissionColors`` will have no visible effect.
    /// 
    final public var emissionColors: PackedColorArray {
        get {
            return get_emission_colors ()
        }
        
        set {
            set_emission_colors (newValue)
        }
        
    }
    
    /// The axis of the ring when using the emitter ``EmissionShape/ring``.
    final public var emissionRingAxis: Vector3 {
        get {
            return get_emission_ring_axis ()
        }
        
        set {
            set_emission_ring_axis (newValue)
        }
        
    }
    
    /// The height of the ring when using the emitter ``EmissionShape/ring``.
    final public var emissionRingHeight: Double {
        get {
            return get_emission_ring_height ()
        }
        
        set {
            set_emission_ring_height (newValue)
        }
        
    }
    
    /// The radius of the ring when using the emitter ``EmissionShape/ring``.
    final public var emissionRingRadius: Double {
        get {
            return get_emission_ring_radius ()
        }
        
        set {
            set_emission_ring_radius (newValue)
        }
        
    }
    
    /// The inner radius of the ring when using the emitter ``EmissionShape/ring``.
    final public var emissionRingInnerRadius: Double {
        get {
            return get_emission_ring_inner_radius ()
        }
        
        set {
            set_emission_ring_inner_radius (newValue)
        }
        
    }
    
    /// The angle of the cone when using the emitter ``EmissionShape/ring``. The default angle of 90 degrees results in a ring, while an angle of 0 degrees results in a cone. Intermediate values will result in a ring where one end is larger than the other.
    /// 
    /// > Note: Depending on ``emissionRingHeight``, the angle may be clamped if the ring's end is reached to form a perfect cone.
    /// 
    final public var emissionRingConeAngle: Double {
        get {
            return get_emission_ring_cone_angle ()
        }
        
        set {
            set_emission_ring_cone_angle (newValue)
        }
        
    }
    
    /// Align Y axis of particle with the direction of its velocity.
    final public var particleFlagAlignY: Bool {
        get {
            return get_particle_flag (CPUParticles3D.ParticleFlags (rawValue: 0)!)
        }
        
        set {
            set_particle_flag (CPUParticles3D.ParticleFlags (rawValue: 0)!, newValue)
        }
        
    }
    
    /// If `true`, particles rotate around Y axis by ``angleMin``.
    final public var particleFlagRotateY: Bool {
        get {
            return get_particle_flag (CPUParticles3D.ParticleFlags (rawValue: 1)!)
        }
        
        set {
            set_particle_flag (CPUParticles3D.ParticleFlags (rawValue: 1)!, newValue)
        }
        
    }
    
    /// If `true`, particles will not move on the Z axis.
    final public var particleFlagDisableZ: Bool {
        get {
            return get_particle_flag (CPUParticles3D.ParticleFlags (rawValue: 2)!)
        }
        
        set {
            set_particle_flag (CPUParticles3D.ParticleFlags (rawValue: 2)!, newValue)
        }
        
    }
    
    /// Unit vector specifying the particles' emission direction.
    final public var direction: Vector3 {
        get {
            return get_direction ()
        }
        
        set {
            set_direction (newValue)
        }
        
    }
    
    /// Each particle's initial direction range from `+spread` to `-spread` degrees. Applied to X/Z plane and Y/Z planes.
    final public var spread: Double {
        get {
            return get_spread ()
        }
        
        set {
            set_spread (newValue)
        }
        
    }
    
    /// Amount of ``spread`` in Y/Z plane. A value of `1` restricts particles to X/Z plane.
    final public var flatness: Double {
        get {
            return get_flatness ()
        }
        
        set {
            set_flatness (newValue)
        }
        
    }
    
    /// Gravity applied to every particle.
    final public var gravity: Vector3 {
        get {
            return get_gravity ()
        }
        
        set {
            set_gravity (newValue)
        }
        
    }
    
    /// Minimum value of the initial velocity.
    final public var initialVelocityMin: Double {
        get {
            return get_param_min (CPUParticles3D.Parameter (rawValue: 0)!)
        }
        
        set {
            set_param_min (CPUParticles3D.Parameter (rawValue: 0)!, newValue)
        }
        
    }
    
    /// Maximum value of the initial velocity.
    final public var initialVelocityMax: Double {
        get {
            return get_param_max (CPUParticles3D.Parameter (rawValue: 0)!)
        }
        
        set {
            set_param_max (CPUParticles3D.Parameter (rawValue: 0)!, newValue)
        }
        
    }
    
    /// Minimum initial angular velocity (rotation speed) applied to each particle in _degrees_ per second.
    final public var angularVelocityMin: Double {
        get {
            return get_param_min (CPUParticles3D.Parameter (rawValue: 1)!)
        }
        
        set {
            set_param_min (CPUParticles3D.Parameter (rawValue: 1)!, newValue)
        }
        
    }
    
    /// Maximum initial angular velocity (rotation speed) applied to each particle in _degrees_ per second.
    final public var angularVelocityMax: Double {
        get {
            return get_param_max (CPUParticles3D.Parameter (rawValue: 1)!)
        }
        
        set {
            set_param_max (CPUParticles3D.Parameter (rawValue: 1)!, newValue)
        }
        
    }
    
    /// Each particle's angular velocity (rotation speed) will vary along this ``Curve`` over its lifetime. Should be a unit ``Curve``.
    final public var angularVelocityCurve: Curve? {
        get {
            return get_param_curve (CPUParticles3D.Parameter (rawValue: 1)!)
        }
        
        set {
            set_param_curve (CPUParticles3D.Parameter (rawValue: 1)!, newValue)
        }
        
    }
    
    /// Minimum orbit velocity.
    final public var orbitVelocityMin: Double {
        get {
            return get_param_min (CPUParticles3D.Parameter (rawValue: 2)!)
        }
        
        set {
            set_param_min (CPUParticles3D.Parameter (rawValue: 2)!, newValue)
        }
        
    }
    
    /// Maximum orbit velocity.
    final public var orbitVelocityMax: Double {
        get {
            return get_param_max (CPUParticles3D.Parameter (rawValue: 2)!)
        }
        
        set {
            set_param_max (CPUParticles3D.Parameter (rawValue: 2)!, newValue)
        }
        
    }
    
    /// Each particle's orbital velocity will vary along this ``Curve``. Should be a unit ``Curve``.
    final public var orbitVelocityCurve: Curve? {
        get {
            return get_param_curve (CPUParticles3D.Parameter (rawValue: 2)!)
        }
        
        set {
            set_param_curve (CPUParticles3D.Parameter (rawValue: 2)!, newValue)
        }
        
    }
    
    /// Minimum linear acceleration.
    final public var linearAccelMin: Double {
        get {
            return get_param_min (CPUParticles3D.Parameter (rawValue: 3)!)
        }
        
        set {
            set_param_min (CPUParticles3D.Parameter (rawValue: 3)!, newValue)
        }
        
    }
    
    /// Maximum linear acceleration.
    final public var linearAccelMax: Double {
        get {
            return get_param_max (CPUParticles3D.Parameter (rawValue: 3)!)
        }
        
        set {
            set_param_max (CPUParticles3D.Parameter (rawValue: 3)!, newValue)
        }
        
    }
    
    /// Each particle's linear acceleration will vary along this ``Curve``. Should be a unit ``Curve``.
    final public var linearAccelCurve: Curve? {
        get {
            return get_param_curve (CPUParticles3D.Parameter (rawValue: 3)!)
        }
        
        set {
            set_param_curve (CPUParticles3D.Parameter (rawValue: 3)!, newValue)
        }
        
    }
    
    /// Minimum radial acceleration.
    final public var radialAccelMin: Double {
        get {
            return get_param_min (CPUParticles3D.Parameter (rawValue: 4)!)
        }
        
        set {
            set_param_min (CPUParticles3D.Parameter (rawValue: 4)!, newValue)
        }
        
    }
    
    /// Maximum radial acceleration.
    final public var radialAccelMax: Double {
        get {
            return get_param_max (CPUParticles3D.Parameter (rawValue: 4)!)
        }
        
        set {
            set_param_max (CPUParticles3D.Parameter (rawValue: 4)!, newValue)
        }
        
    }
    
    /// Each particle's radial acceleration will vary along this ``Curve``. Should be a unit ``Curve``.
    final public var radialAccelCurve: Curve? {
        get {
            return get_param_curve (CPUParticles3D.Parameter (rawValue: 4)!)
        }
        
        set {
            set_param_curve (CPUParticles3D.Parameter (rawValue: 4)!, newValue)
        }
        
    }
    
    /// Minimum tangent acceleration.
    final public var tangentialAccelMin: Double {
        get {
            return get_param_min (CPUParticles3D.Parameter (rawValue: 5)!)
        }
        
        set {
            set_param_min (CPUParticles3D.Parameter (rawValue: 5)!, newValue)
        }
        
    }
    
    /// Maximum tangent acceleration.
    final public var tangentialAccelMax: Double {
        get {
            return get_param_max (CPUParticles3D.Parameter (rawValue: 5)!)
        }
        
        set {
            set_param_max (CPUParticles3D.Parameter (rawValue: 5)!, newValue)
        }
        
    }
    
    /// Each particle's tangential acceleration will vary along this ``Curve``. Should be a unit ``Curve``.
    final public var tangentialAccelCurve: Curve? {
        get {
            return get_param_curve (CPUParticles3D.Parameter (rawValue: 5)!)
        }
        
        set {
            set_param_curve (CPUParticles3D.Parameter (rawValue: 5)!, newValue)
        }
        
    }
    
    /// Minimum damping.
    final public var dampingMin: Double {
        get {
            return get_param_min (CPUParticles3D.Parameter (rawValue: 6)!)
        }
        
        set {
            set_param_min (CPUParticles3D.Parameter (rawValue: 6)!, newValue)
        }
        
    }
    
    /// Maximum damping.
    final public var dampingMax: Double {
        get {
            return get_param_max (CPUParticles3D.Parameter (rawValue: 6)!)
        }
        
        set {
            set_param_max (CPUParticles3D.Parameter (rawValue: 6)!, newValue)
        }
        
    }
    
    /// Damping will vary along this ``Curve``. Should be a unit ``Curve``.
    final public var dampingCurve: Curve? {
        get {
            return get_param_curve (CPUParticles3D.Parameter (rawValue: 6)!)
        }
        
        set {
            set_param_curve (CPUParticles3D.Parameter (rawValue: 6)!, newValue)
        }
        
    }
    
    /// Minimum angle.
    final public var angleMin: Double {
        get {
            return get_param_min (CPUParticles3D.Parameter (rawValue: 7)!)
        }
        
        set {
            set_param_min (CPUParticles3D.Parameter (rawValue: 7)!, newValue)
        }
        
    }
    
    /// Maximum angle.
    final public var angleMax: Double {
        get {
            return get_param_max (CPUParticles3D.Parameter (rawValue: 7)!)
        }
        
        set {
            set_param_max (CPUParticles3D.Parameter (rawValue: 7)!, newValue)
        }
        
    }
    
    /// Each particle's rotation will be animated along this ``Curve``. Should be a unit ``Curve``.
    final public var angleCurve: Curve? {
        get {
            return get_param_curve (CPUParticles3D.Parameter (rawValue: 7)!)
        }
        
        set {
            set_param_curve (CPUParticles3D.Parameter (rawValue: 7)!, newValue)
        }
        
    }
    
    /// Minimum scale.
    final public var scaleAmountMin: Double {
        get {
            return get_param_min (CPUParticles3D.Parameter (rawValue: 8)!)
        }
        
        set {
            set_param_min (CPUParticles3D.Parameter (rawValue: 8)!, newValue)
        }
        
    }
    
    /// Maximum scale.
    final public var scaleAmountMax: Double {
        get {
            return get_param_max (CPUParticles3D.Parameter (rawValue: 8)!)
        }
        
        set {
            set_param_max (CPUParticles3D.Parameter (rawValue: 8)!, newValue)
        }
        
    }
    
    /// Each particle's scale will vary along this ``Curve``. Should be a unit ``Curve``.
    final public var scaleAmountCurve: Curve? {
        get {
            return get_param_curve (CPUParticles3D.Parameter (rawValue: 8)!)
        }
        
        set {
            set_param_curve (CPUParticles3D.Parameter (rawValue: 8)!, newValue)
        }
        
    }
    
    /// If set to `true`, three different scale curves can be specified, one per scale axis.
    final public var splitScale: Bool {
        get {
            return get_split_scale ()
        }
        
        set {
            set_split_scale (newValue)
        }
        
    }
    
    /// Curve for the scale over life, along the x axis.
    final public var scaleCurveX: Curve? {
        get {
            return get_scale_curve_x ()
        }
        
        set {
            set_scale_curve_x (newValue)
        }
        
    }
    
    /// Curve for the scale over life, along the y axis.
    final public var scaleCurveY: Curve? {
        get {
            return get_scale_curve_y ()
        }
        
        set {
            set_scale_curve_y (newValue)
        }
        
    }
    
    /// Curve for the scale over life, along the z axis.
    final public var scaleCurveZ: Curve? {
        get {
            return get_scale_curve_z ()
        }
        
        set {
            set_scale_curve_z (newValue)
        }
        
    }
    
    /// Each particle's initial color.
    /// 
    /// > Note: ``color`` multiplies the particle mesh's vertex colors. To have a visible effect on a ``BaseMaterial3D``, ``BaseMaterial3D/vertexColorUseAsAlbedo`` _must_ be `true`. For a ``ShaderMaterial``, `ALBEDO *= COLOR.rgb;` must be inserted in the shader's `fragment()` function. Otherwise, ``color`` will have no visible effect.
    /// 
    final public var color: Color {
        get {
            return get_color ()
        }
        
        set {
            set_color (newValue)
        }
        
    }
    
    /// Each particle's color will vary along this ``Gradient`` over its lifetime (multiplied with ``color``).
    /// 
    /// > Note: ``colorRamp`` multiplies the particle mesh's vertex colors. To have a visible effect on a ``BaseMaterial3D``, ``BaseMaterial3D/vertexColorUseAsAlbedo`` _must_ be `true`. For a ``ShaderMaterial``, `ALBEDO *= COLOR.rgb;` must be inserted in the shader's `fragment()` function. Otherwise, ``colorRamp`` will have no visible effect.
    /// 
    final public var colorRamp: Gradient? {
        get {
            return get_color_ramp ()
        }
        
        set {
            set_color_ramp (newValue)
        }
        
    }
    
    /// Each particle's initial color will vary along this ``Gradient`` (multiplied with ``color``).
    /// 
    /// > Note: ``colorInitialRamp`` multiplies the particle mesh's vertex colors. To have a visible effect on a ``BaseMaterial3D``, ``BaseMaterial3D/vertexColorUseAsAlbedo`` _must_ be `true`. For a ``ShaderMaterial``, `ALBEDO *= COLOR.rgb;` must be inserted in the shader's `fragment()` function. Otherwise, ``colorInitialRamp`` will have no visible effect.
    /// 
    final public var colorInitialRamp: Gradient? {
        get {
            return get_color_initial_ramp ()
        }
        
        set {
            set_color_initial_ramp (newValue)
        }
        
    }
    
    /// Minimum hue variation.
    final public var hueVariationMin: Double {
        get {
            return get_param_min (CPUParticles3D.Parameter (rawValue: 9)!)
        }
        
        set {
            set_param_min (CPUParticles3D.Parameter (rawValue: 9)!, newValue)
        }
        
    }
    
    /// Maximum hue variation.
    final public var hueVariationMax: Double {
        get {
            return get_param_max (CPUParticles3D.Parameter (rawValue: 9)!)
        }
        
        set {
            set_param_max (CPUParticles3D.Parameter (rawValue: 9)!, newValue)
        }
        
    }
    
    /// Each particle's hue will vary along this ``Curve``. Should be a unit ``Curve``.
    final public var hueVariationCurve: Curve? {
        get {
            return get_param_curve (CPUParticles3D.Parameter (rawValue: 9)!)
        }
        
        set {
            set_param_curve (CPUParticles3D.Parameter (rawValue: 9)!, newValue)
        }
        
    }
    
    /// Minimum particle animation speed.
    final public var animSpeedMin: Double {
        get {
            return get_param_min (CPUParticles3D.Parameter (rawValue: 10)!)
        }
        
        set {
            set_param_min (CPUParticles3D.Parameter (rawValue: 10)!, newValue)
        }
        
    }
    
    /// Maximum particle animation speed.
    final public var animSpeedMax: Double {
        get {
            return get_param_max (CPUParticles3D.Parameter (rawValue: 10)!)
        }
        
        set {
            set_param_max (CPUParticles3D.Parameter (rawValue: 10)!, newValue)
        }
        
    }
    
    /// Each particle's animation speed will vary along this ``Curve``. Should be a unit ``Curve``.
    final public var animSpeedCurve: Curve? {
        get {
            return get_param_curve (CPUParticles3D.Parameter (rawValue: 10)!)
        }
        
        set {
            set_param_curve (CPUParticles3D.Parameter (rawValue: 10)!, newValue)
        }
        
    }
    
    /// Minimum animation offset.
    final public var animOffsetMin: Double {
        get {
            return get_param_min (CPUParticles3D.Parameter (rawValue: 11)!)
        }
        
        set {
            set_param_min (CPUParticles3D.Parameter (rawValue: 11)!, newValue)
        }
        
    }
    
    /// Maximum animation offset.
    final public var animOffsetMax: Double {
        get {
            return get_param_max (CPUParticles3D.Parameter (rawValue: 11)!)
        }
        
        set {
            set_param_max (CPUParticles3D.Parameter (rawValue: 11)!, newValue)
        }
        
    }
    
    /// Each particle's animation offset will vary along this ``Curve``. Should be a unit ``Curve``.
    final public var animOffsetCurve: Curve? {
        get {
            return get_param_curve (CPUParticles3D.Parameter (rawValue: 11)!)
        }
        
        set {
            set_param_curve (CPUParticles3D.Parameter (rawValue: 11)!, newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_emitting: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_emitting")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_emitting(_ emitting: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: emitting) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_emitting, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_amount: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_amount")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_amount(_ amount: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_amount, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_lifetime: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_lifetime")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_lifetime(_ secs: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: secs) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_lifetime, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_one_shot: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_one_shot")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_one_shot(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_one_shot, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_pre_process_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_pre_process_time")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pre_process_time(_ secs: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: secs) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_pre_process_time, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_explosiveness_ratio: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_explosiveness_ratio")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_explosiveness_ratio(_ ratio: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: ratio) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_explosiveness_ratio, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_randomness_ratio: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_randomness_ratio")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_randomness_ratio(_ ratio: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: ratio) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_randomness_ratio, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_visibility_aabb: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_visibility_aabb")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 259215842)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visibility_aabb(_ aabb: AABB) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: aabb) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_visibility_aabb, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_lifetime_randomness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_lifetime_randomness")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_lifetime_randomness(_ random: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: random) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_lifetime_randomness, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_use_local_coordinates: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_local_coordinates")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_local_coordinates(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_use_local_coordinates, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_fixed_fps: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_fixed_fps")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fixed_fps(_ fps: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fps) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_fixed_fps, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_fractional_delta: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_fractional_delta")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fractional_delta(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_fractional_delta, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_speed_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_speed_scale")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_speed_scale(_ scale: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: scale) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_speed_scale, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_emitting: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_emitting")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_emitting() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CPUParticles3D.method_is_emitting, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_amount: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_amount")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_amount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_amount, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_lifetime: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_lifetime")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_lifetime() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_lifetime, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_one_shot: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_one_shot")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_one_shot() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_one_shot, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_pre_process_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_pre_process_time")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pre_process_time() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_pre_process_time, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_explosiveness_ratio: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_explosiveness_ratio")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_explosiveness_ratio() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_explosiveness_ratio, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_randomness_ratio: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_randomness_ratio")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_randomness_ratio() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_randomness_ratio, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_visibility_aabb: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_visibility_aabb")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1068685055)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_visibility_aabb() -> AABB {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: AABB = AABB ()
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_visibility_aabb, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_lifetime_randomness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_lifetime_randomness")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_lifetime_randomness() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_lifetime_randomness, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_use_local_coordinates: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_use_local_coordinates")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_use_local_coordinates() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_use_local_coordinates, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_fixed_fps: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_fixed_fps")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fixed_fps() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_fixed_fps, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_fractional_delta: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_fractional_delta")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fractional_delta() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_fractional_delta, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_speed_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_speed_scale")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_speed_scale() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_speed_scale, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_draw_order: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_draw_order")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1427401774)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_draw_order(_ order: CPUParticles3D.DrawOrder) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: order.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_draw_order, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_draw_order: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_draw_order")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1321900776)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_draw_order() -> CPUParticles3D.DrawOrder {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_draw_order, handle, nil, &_result)
        return CPUParticles3D.DrawOrder (rawValue: _result)!
    }
    
    fileprivate static let method_set_mesh: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_mesh")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 194775623)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mesh(_ mesh: Mesh?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mesh?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_mesh, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_mesh: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_mesh")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1808005922)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mesh() -> Mesh? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_mesh, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_use_fixed_seed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_fixed_seed")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_fixed_seed(_ useFixedSeed: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: useFixedSeed) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_use_fixed_seed, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_use_fixed_seed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_use_fixed_seed")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_use_fixed_seed() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_use_fixed_seed, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_seed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_seed")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_seed(_ seed: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: seed) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_seed, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_seed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_seed")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_seed() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_seed, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_restart: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("restart")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 107499316)!
            }
            
        }
        
    }()
    
    /// Restarts the particle emitter.
    /// 
    /// If `keepSeed` is `true`, the current random seed will be preserved. Useful for seeking and playback.
    /// 
    public final func restart(keepSeed: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: keepSeed) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_restart, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_request_particles_process: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("request_particles_process")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Requests the particles to process for extra process time during a single frame.
    /// 
    /// Useful for particle playback, if used in combination with ``useFixedSeed`` or by calling ``restart(keepSeed:)`` with parameter `keep_seed` set to `true`.
    /// 
    public final func requestParticlesProcess(processTime: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: processTime) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_request_particles_process, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_capture_aabb: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("capture_aabb")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1068685055)!
            }
            
        }
        
    }()
    
    /// Returns the axis-aligned bounding box that contains all the particles that are active in the current frame.
    public final func captureAabb() -> AABB {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: AABB = AABB ()
        gi.object_method_bind_ptrcall(CPUParticles3D.method_capture_aabb, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_direction")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_direction(_ direction: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: direction) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_direction, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_direction")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_direction() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_direction, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_spread: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_spread")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_spread(_ degrees: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: degrees) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_spread, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_spread: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_spread")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_spread() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_spread, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_flatness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_flatness")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_flatness(_ amount: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_flatness, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_flatness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_flatness")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_flatness() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_flatness, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_param_min: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_param_min")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 557936109)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the minimum value for the given parameter.
    fileprivate final func set_param_min(_ param: CPUParticles3D.Parameter, _ value: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: param.rawValue) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CPUParticles3D.method_set_param_min, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_param_min: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_param_min")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 597646162)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns the minimum value range for the given parameter.
    fileprivate final func get_param_min(_ param: CPUParticles3D.Parameter) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: param.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_get_param_min, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_param_max: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_param_max")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 557936109)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the maximum value for the given parameter.
    fileprivate final func set_param_max(_ param: CPUParticles3D.Parameter, _ value: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: param.rawValue) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CPUParticles3D.method_set_param_max, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_param_max: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_param_max")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 597646162)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns the maximum value range for the given parameter.
    fileprivate final func get_param_max(_ param: CPUParticles3D.Parameter) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: param.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_get_param_max, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_param_curve: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_param_curve")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4044142537)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the ``Curve`` of the parameter specified by ``CPUParticles3D/Parameter``. Should be a unit ``Curve``.
    fileprivate final func set_param_curve(_ param: CPUParticles3D.Parameter, _ curve: Curve?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: param.rawValue) { pArg0 in
            withUnsafePointer(to: curve?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CPUParticles3D.method_set_param_curve, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_param_curve: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_param_curve")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4132790277)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns the ``Curve`` of the parameter specified by ``CPUParticles3D/Parameter``.
    fileprivate final func get_param_curve(_ param: CPUParticles3D.Parameter) -> Curve? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: param.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_get_param_curve, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_color")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_color(_ color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_color, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_color")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_color() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_color, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_color_ramp: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_color_ramp")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2756054477)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_color_ramp(_ ramp: Gradient?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: ramp?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_color_ramp, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_color_ramp: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_color_ramp")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 132272999)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_color_ramp() -> Gradient? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_color_ramp, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_color_initial_ramp: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_color_initial_ramp")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2756054477)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_color_initial_ramp(_ ramp: Gradient?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: ramp?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_color_initial_ramp, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_color_initial_ramp: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_color_initial_ramp")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 132272999)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_color_initial_ramp() -> Gradient? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_color_initial_ramp, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_particle_flag: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_particle_flag")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3515406498)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Enables or disables the given particle flag (see ``CPUParticles3D/ParticleFlags`` for options).
    fileprivate final func set_particle_flag(_ particleFlag: CPUParticles3D.ParticleFlags, _ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: particleFlag.rawValue) { pArg0 in
            withUnsafePointer(to: enable) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CPUParticles3D.method_set_particle_flag, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_particle_flag: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_particle_flag")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2845201987)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns the enabled state of the given particle flag (see ``CPUParticles3D/ParticleFlags`` for options).
    fileprivate final func get_particle_flag(_ particleFlag: CPUParticles3D.ParticleFlags) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: particleFlag.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_get_particle_flag, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_emission_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_emission_shape")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 491823814)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_emission_shape(_ shape: CPUParticles3D.EmissionShape) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shape.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_emission_shape, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_emission_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_emission_shape")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2961454842)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_emission_shape() -> CPUParticles3D.EmissionShape {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_emission_shape, handle, nil, &_result)
        return CPUParticles3D.EmissionShape (rawValue: _result)!
    }
    
    fileprivate static let method_set_emission_sphere_radius: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_emission_sphere_radius")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_emission_sphere_radius(_ radius: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: radius) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_emission_sphere_radius, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_emission_sphere_radius: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_emission_sphere_radius")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_emission_sphere_radius() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_emission_sphere_radius, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_emission_box_extents: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_emission_box_extents")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_emission_box_extents(_ extents: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: extents) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_emission_box_extents, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_emission_box_extents: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_emission_box_extents")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_emission_box_extents() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_emission_box_extents, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_emission_points: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_emission_points")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 334873810)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_emission_points(_ array: PackedVector3Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_emission_points, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_emission_points: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_emission_points")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 497664490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_emission_points() -> PackedVector3Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedVector3Array = PackedVector3Array ()
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_emission_points, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_emission_normals: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_emission_normals")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 334873810)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_emission_normals(_ array: PackedVector3Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_emission_normals, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_emission_normals: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_emission_normals")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 497664490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_emission_normals() -> PackedVector3Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedVector3Array = PackedVector3Array ()
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_emission_normals, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_emission_colors: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_emission_colors")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3546319833)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_emission_colors(_ array: PackedColorArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_emission_colors, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_emission_colors: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_emission_colors")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1392750486)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_emission_colors() -> PackedColorArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedColorArray = PackedColorArray ()
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_emission_colors, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_emission_ring_axis: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_emission_ring_axis")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_emission_ring_axis(_ axis: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: axis) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_emission_ring_axis, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_emission_ring_axis: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_emission_ring_axis")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_emission_ring_axis() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_emission_ring_axis, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_emission_ring_height: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_emission_ring_height")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_emission_ring_height(_ height: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: height) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_emission_ring_height, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_emission_ring_height: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_emission_ring_height")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_emission_ring_height() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_emission_ring_height, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_emission_ring_radius: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_emission_ring_radius")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_emission_ring_radius(_ radius: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: radius) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_emission_ring_radius, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_emission_ring_radius: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_emission_ring_radius")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_emission_ring_radius() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_emission_ring_radius, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_emission_ring_inner_radius: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_emission_ring_inner_radius")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_emission_ring_inner_radius(_ innerRadius: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: innerRadius) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_emission_ring_inner_radius, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_emission_ring_inner_radius: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_emission_ring_inner_radius")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_emission_ring_inner_radius() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_emission_ring_inner_radius, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_emission_ring_cone_angle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_emission_ring_cone_angle")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_emission_ring_cone_angle(_ coneAngle: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: coneAngle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_emission_ring_cone_angle, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_emission_ring_cone_angle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_emission_ring_cone_angle")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_emission_ring_cone_angle() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_emission_ring_cone_angle, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_gravity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_gravity")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_gravity() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_gravity, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_gravity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_gravity")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_gravity(_ accelVec: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: accelVec) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_gravity, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_split_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_split_scale")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_split_scale() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_split_scale, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_split_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_split_scale")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_split_scale(_ splitScale: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: splitScale) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_split_scale, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_scale_curve_x: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_scale_curve_x")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2460114913)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_scale_curve_x() -> Curve? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_scale_curve_x, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_scale_curve_x: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_scale_curve_x")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 270443179)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_scale_curve_x(_ scaleCurve: Curve?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: scaleCurve?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_scale_curve_x, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_scale_curve_y: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_scale_curve_y")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2460114913)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_scale_curve_y() -> Curve? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_scale_curve_y, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_scale_curve_y: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_scale_curve_y")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 270443179)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_scale_curve_y(_ scaleCurve: Curve?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: scaleCurve?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_scale_curve_y, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_scale_curve_z: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_scale_curve_z")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2460114913)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_scale_curve_z() -> Curve? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(CPUParticles3D.method_get_scale_curve_z, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_scale_curve_z: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_scale_curve_z")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 270443179)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_scale_curve_z(_ scaleCurve: Curve?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: scaleCurve?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_set_scale_curve_z, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_convert_from_particles: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("convert_from_particles")
        return withUnsafePointer(to: &CPUParticles3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1078189570)!
            }
            
        }
        
    }()
    
    /// Sets this node's properties to match a given ``GPUParticles3D`` node with an assigned ``ParticleProcessMaterial``.
    public final func convertFromParticles(_ particles: Node?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: particles?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CPUParticles3D.method_convert_from_particles, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    // Signals 
    /// Emitted when all active particles have finished processing. When ``oneShot`` is disabled, particles will process continuously, so this is never emitted.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.finished.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var finished: SimpleSignal { SimpleSignal (target: self, signalName: "finished") }
    
}

