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


/// A 2D particle emitter.
/// 
/// 2D particle node used to create a variety of particle systems and effects. ``GPUParticles2D`` features an emitter that generates some number of particles at a given rate.
/// 
/// Use the ``processMaterial`` property to add a ``ParticleProcessMaterial`` to configure particle appearance and behavior. Alternatively, you can add a ``ShaderMaterial`` which will be applied to all particles.
/// 
/// 2D particles can optionally collide with ``LightOccluder2D``, but they don't collide with ``PhysicsBody2D`` nodes.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``finished``
open class GPUParticles2D: Node2D {
    private static var className = StringName("GPUParticles2D")
    override open class var godotClassName: StringName { className }
    public enum DrawOrder: Int64, CaseIterable {
        /// Particles are drawn in the order emitted.
        case index = 0 // DRAW_ORDER_INDEX
        /// Particles are drawn in order of remaining lifetime. In other words, the particle with the highest lifetime is drawn at the front.
        case lifetime = 1 // DRAW_ORDER_LIFETIME
        /// Particles are drawn in reverse order of remaining lifetime. In other words, the particle with the lowest lifetime is drawn at the front.
        case reverseLifetime = 2 // DRAW_ORDER_REVERSE_LIFETIME
    }
    
    public enum EmitFlags: Int64, CaseIterable {
        /// Particle starts at the specified position.
        case position = 1 // EMIT_FLAG_POSITION
        /// Particle starts with specified rotation and scale.
        case rotationScale = 2 // EMIT_FLAG_ROTATION_SCALE
        /// Particle starts with the specified velocity vector, which defines the emission direction and speed.
        case velocity = 4 // EMIT_FLAG_VELOCITY
        /// Particle starts with specified color.
        case color = 8 // EMIT_FLAG_COLOR
        /// Particle starts with specified `CUSTOM` data.
        case custom = 16 // EMIT_FLAG_CUSTOM
    }
    
    
    /* Properties */
    
    /// If `true`, particles are being emitted. ``emitting`` can be used to start and stop particles from emitting. However, if ``oneShot`` is `true` setting ``emitting`` to `true` will not restart the emission cycle unless all active particles have finished processing. Use the [signal finished] signal to be notified once all active particles finish processing.
    /// 
    /// > Note: For ``oneShot`` emitters, due to the particles being computed on the GPU, there may be a short period after receiving the [signal finished] signal during which setting this to `true` will not restart the emission cycle.
    /// 
    /// **Tip:** If your ``oneShot`` emitter needs to immediately restart emitting particles once [signal finished] signal is received, consider calling ``restart(keepSeed:)`` instead of setting ``emitting``.
    /// 
    final public var emitting: Bool {
        get {
            return is_emitting ()
        }
        
        set {
            set_emitting (newValue)
        }
        
    }
    
    /// The number of particles to emit in one emission cycle. The effective emission rate is `(amount * amount_ratio) / lifetime` particles per second. Higher values will increase GPU requirements, even if not all particles are visible at a given time or if ``amountRatio`` is decreased.
    /// 
    /// > Note: Changing this value will cause the particle system to restart. To avoid this, change ``amountRatio`` instead.
    /// 
    final public var amount: Int32 {
        get {
            return get_amount ()
        }
        
        set {
            set_amount (newValue)
        }
        
    }
    
    /// The ratio of particles that should actually be emitted. If set to a value lower than `1.0`, this will set the amount of emitted particles throughout the lifetime to `amount * amount_ratio`. Unlike changing ``amount``, changing ``amountRatio`` while emitting does not affect already-emitted particles and doesn't cause the particle system to restart. ``amountRatio`` can be used to create effects that make the number of emitted particles vary over time.
    /// 
    /// > Note: Reducing the ``amountRatio`` has no performance benefit, since resources need to be allocated and processed for the total ``amount`` of particles regardless of the ``amountRatio``. If you don't intend to change the number of particles emitted while the particles are emitting, make sure ``amountRatio`` is set to `1` and change ``amount`` to your liking instead.
    /// 
    final public var amountRatio: Double {
        get {
            return get_amount_ratio ()
        }
        
        set {
            set_amount_ratio (newValue)
        }
        
    }
    
    /// Path to another ``GPUParticles2D`` node that will be used as a subemitter (see ``ParticleProcessMaterial/subEmitterMode``). Subemitters can be used to achieve effects such as fireworks, sparks on collision, bubbles popping into water drops, and more.
    /// 
    /// > Note: When ``subEmitter`` is set, the target ``GPUParticles2D`` node will no longer emit particles on its own.
    /// 
    final public var subEmitter: NodePath {
        get {
            return get_sub_emitter ()
        }
        
        set {
            set_sub_emitter (newValue)
        }
        
    }
    
    /// Particle texture. If `null`, particles will be squares with a size of 1×1 pixels.
    /// 
    /// > Note: To use a flipbook texture, assign a new ``CanvasItemMaterial`` to the ``GPUParticles2D``'s ``CanvasItem/material`` property, then enable ``CanvasItemMaterial/particlesAnimation`` and set ``CanvasItemMaterial/particlesAnimHFrames``, ``CanvasItemMaterial/particlesAnimVFrames``, and ``CanvasItemMaterial/particlesAnimLoop`` to match the flipbook texture.
    /// 
    final public var texture: Texture2D? {
        get {
            return get_texture ()
        }
        
        set {
            set_texture (newValue)
        }
        
    }
    
    /// The amount of time each particle will exist (in seconds). The effective emission rate is `(amount * amount_ratio) / lifetime` particles per second.
    final public var lifetime: Double {
        get {
            return get_lifetime ()
        }
        
        set {
            set_lifetime (newValue)
        }
        
    }
    
    /// Causes all the particles in this node to interpolate towards the end of their lifetime.
    /// 
    /// > Note: This only works when used with a ``ParticleProcessMaterial``. It needs to be manually implemented for custom process shaders.
    /// 
    final public var interpToEnd: Double {
        get {
            return get_interp_to_end ()
        }
        
        set {
            set_interp_to_end (newValue)
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
    /// 
    /// > Note: This can be very expensive if set to a high number as it requires running the particle shader a number of times equal to the ``fixedFps`` (or 30, if ``fixedFps`` is 0) for every second. In extreme cases it can even lead to a GPU crash due to the volume of work done in a single frame.
    /// 
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
    
    /// The particle system's frame rate is fixed to a value. For example, changing the value to 2 will make the particles render at 2 frames per second. Note this does not slow down the simulation of the particle system itself.
    final public var fixedFps: Int32 {
        get {
            return get_fixed_fps ()
        }
        
        set {
            set_fixed_fps (newValue)
        }
        
    }
    
    /// Enables particle interpolation, which makes the particle movement smoother when their ``fixedFps`` is lower than the screen refresh rate.
    final public var interpolate: Bool {
        get {
            return get_interpolate ()
        }
        
        set {
            set_interpolate (newValue)
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
    
    /// Multiplier for particle's collision radius. `1.0` corresponds to the size of the sprite. If particles appear to sink into the ground when colliding, increase this value. If particles appear to float when colliding, decrease this value. Only effective if ``ParticleProcessMaterial/collisionMode`` is ``ParticleProcessMaterial/CollisionMode/rigid`` or ``ParticleProcessMaterial/CollisionMode/hideOnContact``.
    /// 
    /// > Note: Particles always have a spherical collision shape.
    /// 
    final public var collisionBaseSize: Double {
        get {
            return get_collision_base_size ()
        }
        
        set {
            set_collision_base_size (newValue)
        }
        
    }
    
    /// The ``Rect2`` that determines the node's region which needs to be visible on screen for the particle system to be active.
    /// 
    /// Grow the rect if particles suddenly appear/disappear when the node enters/exits the screen. The ``Rect2`` can be grown via code or with the **Particles → Generate Visibility Rect** editor tool.
    /// 
    final public var visibilityRect: Rect2 {
        get {
            return get_visibility_rect ()
        }
        
        set {
            set_visibility_rect (newValue)
        }
        
    }
    
    /// If `true`, particles use the parent node's coordinate space (known as local coordinates). This will cause particles to move and rotate along the ``GPUParticles2D`` node (and its parents) when it is moved or rotated. If `false`, particles use global coordinates; they will not move or rotate along the ``GPUParticles2D`` node (and its parents) when it is moved or rotated.
    final public var localCoords: Bool {
        get {
            return get_use_local_coordinates ()
        }
        
        set {
            set_use_local_coordinates (newValue)
        }
        
    }
    
    /// Particle draw order. Uses ``GPUParticles2D/DrawOrder`` values.
    final public var drawOrder: GPUParticles2D.DrawOrder {
        get {
            return get_draw_order ()
        }
        
        set {
            set_draw_order (newValue)
        }
        
    }
    
    /// If `true`, enables particle trails using a mesh skinning system.
    /// 
    /// > Note: Unlike ``GPUParticles3D``, the number of trail sections and subdivisions is set with the ``trailSections`` and ``trailSectionSubdivisions`` properties.
    /// 
    final public var trailEnabled: Bool {
        get {
            return is_trail_enabled ()
        }
        
        set {
            set_trail_enabled (newValue)
        }
        
    }
    
    /// The amount of time the particle's trail should represent (in seconds). Only effective if ``trailEnabled`` is `true`.
    final public var trailLifetime: Double {
        get {
            return get_trail_lifetime ()
        }
        
        set {
            set_trail_lifetime (newValue)
        }
        
    }
    
    /// The number of sections to use for the particle trail rendering. Higher values can result in smoother trail curves, at the cost of performance due to increased mesh complexity. See also ``trailSectionSubdivisions``. Only effective if ``trailEnabled`` is `true`.
    final public var trailSections: Int32 {
        get {
            return get_trail_sections ()
        }
        
        set {
            set_trail_sections (newValue)
        }
        
    }
    
    /// The number of subdivisions to use for the particle trail rendering. Higher values can result in smoother trail curves, at the cost of performance due to increased mesh complexity. See also ``trailSections``. Only effective if ``trailEnabled`` is `true`.
    final public var trailSectionSubdivisions: Int32 {
        get {
            return get_trail_section_subdivisions ()
        }
        
        set {
            set_trail_section_subdivisions (newValue)
        }
        
    }
    
    /// ``Material`` for processing particles. Can be a ``ParticleProcessMaterial`` or a ``ShaderMaterial``.
    final public var processMaterial: Material? {
        get {
            return get_process_material ()
        }
        
        set {
            set_process_material (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_emitting: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_emitting")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_emitting, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_amount: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_amount")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_amount, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_lifetime: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_lifetime")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_lifetime, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_one_shot: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_one_shot")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_one_shot(_ secs: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: secs) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_one_shot, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_pre_process_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_pre_process_time")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_pre_process_time, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_explosiveness_ratio: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_explosiveness_ratio")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_explosiveness_ratio, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_randomness_ratio: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_randomness_ratio")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_randomness_ratio, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_visibility_rect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_visibility_rect")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2046264180)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visibility_rect(_ visibilityRect: Rect2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: visibilityRect) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_visibility_rect, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_use_local_coordinates: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_local_coordinates")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_use_local_coordinates, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_fixed_fps: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_fixed_fps")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_fixed_fps, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_fractional_delta: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_fractional_delta")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_fractional_delta, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_interpolate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_interpolate")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_interpolate(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_interpolate, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_process_material: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_process_material")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2757459619)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_process_material(_ material: Material?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: material?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_process_material, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_speed_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_speed_scale")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_speed_scale, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_collision_base_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collision_base_size")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_collision_base_size(_ size: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_collision_base_size, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_interp_to_end: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_interp_to_end")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_interp_to_end(_ interp: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: interp) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_interp_to_end, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_request_particles_process: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("request_particles_process")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_request_particles_process, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_emitting: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_emitting")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_emitting() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GPUParticles2D.method_is_emitting, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_amount: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_amount")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_amount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GPUParticles2D.method_get_amount, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_lifetime: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_lifetime")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_lifetime() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GPUParticles2D.method_get_lifetime, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_one_shot: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_one_shot")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_one_shot() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GPUParticles2D.method_get_one_shot, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_pre_process_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_pre_process_time")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pre_process_time() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GPUParticles2D.method_get_pre_process_time, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_explosiveness_ratio: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_explosiveness_ratio")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_explosiveness_ratio() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GPUParticles2D.method_get_explosiveness_ratio, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_randomness_ratio: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_randomness_ratio")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_randomness_ratio() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GPUParticles2D.method_get_randomness_ratio, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_visibility_rect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_visibility_rect")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1639390495)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_visibility_rect() -> Rect2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Rect2 = Rect2 ()
        gi.object_method_bind_ptrcall(GPUParticles2D.method_get_visibility_rect, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_use_local_coordinates: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_use_local_coordinates")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_use_local_coordinates() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GPUParticles2D.method_get_use_local_coordinates, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_fixed_fps: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_fixed_fps")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fixed_fps() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GPUParticles2D.method_get_fixed_fps, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_fractional_delta: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_fractional_delta")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fractional_delta() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GPUParticles2D.method_get_fractional_delta, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_interpolate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_interpolate")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_interpolate() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GPUParticles2D.method_get_interpolate, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_process_material: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_process_material")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 5934680)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_process_material() -> Material? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(GPUParticles2D.method_get_process_material, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_speed_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_speed_scale")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_speed_scale() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GPUParticles2D.method_get_speed_scale, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_collision_base_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_base_size")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_collision_base_size() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GPUParticles2D.method_get_collision_base_size, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_interp_to_end: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_interp_to_end")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_interp_to_end() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GPUParticles2D.method_get_interp_to_end, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_draw_order: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_draw_order")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1939677959)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_draw_order(_ order: GPUParticles2D.DrawOrder) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: order.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_draw_order, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_draw_order: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_draw_order")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 941479095)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_draw_order() -> GPUParticles2D.DrawOrder {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(GPUParticles2D.method_get_draw_order, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return GPUParticles2D.DrawOrder (rawValue: _result)!
    }
    
    fileprivate static let method_set_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_texture")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4051416890)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture(_ texture: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: texture?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_texture, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture() -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(GPUParticles2D.method_get_texture, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_capture_rect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("capture_rect")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1639390495)!
            }
            
        }
        
    }()
    
    /// Returns a rectangle containing the positions of all existing particles.
    /// 
    /// > Note: When using threaded rendering this method synchronizes the rendering thread. Calling it often may have a negative impact on performance.
    /// 
    public final func captureRect() -> Rect2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Rect2 = Rect2 ()
        gi.object_method_bind_ptrcall(GPUParticles2D.method_capture_rect, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_restart: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("restart")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 107499316)!
            }
            
        }
        
    }()
    
    /// Restarts the particle emission cycle, clearing existing particles. To avoid particles vanishing from the viewport, wait for the [signal finished] signal before calling.
    /// 
    /// > Note: The [signal finished] signal is only emitted by ``oneShot`` emitters.
    /// 
    /// If `keepSeed` is `true`, the current random seed will be preserved. Useful for seeking and playback.
    /// 
    public final func restart(keepSeed: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: keepSeed) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_restart, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_sub_emitter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sub_emitter")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sub_emitter(_ path: NodePath) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_sub_emitter, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sub_emitter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sub_emitter")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sub_emitter() -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(GPUParticles2D.method_get_sub_emitter, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_emit_particle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("emit_particle")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2179202058)!
            }
            
        }
        
    }()
    
    /// Emits a single particle. Whether `xform`, `velocity`, `color` and `custom` are applied depends on the value of `flags`. See ``GPUParticles2D/EmitFlags``.
    /// 
    /// The default ParticleProcessMaterial will overwrite `color` and use the contents of `custom` as `(rotation, age, animation, lifetime)`.
    /// 
    /// > Note: ``emitParticle(xform:velocity:color:custom:flags:)`` is only supported on the Forward+ and Mobile rendering methods, not Compatibility.
    /// 
    public final func emitParticle(xform: Transform2D, velocity: Vector2, color: Color, custom: Color, flags: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: xform) { pArg0 in
            withUnsafePointer(to: velocity) { pArg1 in
                withUnsafePointer(to: color) { pArg2 in
                    withUnsafePointer(to: custom) { pArg3 in
                        withUnsafePointer(to: flags) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(GPUParticles2D.method_emit_particle, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_trail_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_trail_enabled")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_trail_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_trail_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_trail_lifetime: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_trail_lifetime")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_trail_lifetime(_ secs: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: secs) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_trail_lifetime, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_trail_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_trail_enabled")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_trail_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GPUParticles2D.method_is_trail_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_trail_lifetime: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_trail_lifetime")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_trail_lifetime() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GPUParticles2D.method_get_trail_lifetime, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_trail_sections: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_trail_sections")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_trail_sections(_ sections: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: sections) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_trail_sections, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_trail_sections: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_trail_sections")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_trail_sections() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GPUParticles2D.method_get_trail_sections, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_trail_section_subdivisions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_trail_section_subdivisions")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_trail_section_subdivisions(_ subdivisions: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: subdivisions) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_trail_section_subdivisions, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_trail_section_subdivisions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_trail_section_subdivisions")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_trail_section_subdivisions() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GPUParticles2D.method_get_trail_section_subdivisions, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_convert_from_particles: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("convert_from_particles")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1078189570)!
            }
            
        }
        
    }()
    
    /// Sets this node's properties to match a given ``CPUParticles2D`` node.
    public final func convertFromParticles(_ particles: Node?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: particles?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_convert_from_particles, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_amount_ratio: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_amount_ratio")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_amount_ratio(_ ratio: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: ratio) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_amount_ratio, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_amount_ratio: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_amount_ratio")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_amount_ratio() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GPUParticles2D.method_get_amount_ratio, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_use_fixed_seed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_fixed_seed")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_use_fixed_seed, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_use_fixed_seed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_use_fixed_seed")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_use_fixed_seed() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GPUParticles2D.method_get_use_fixed_seed, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_seed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_seed")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(GPUParticles2D.method_set_seed, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_seed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_seed")
        return withUnsafePointer(to: &GPUParticles2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_seed() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(GPUParticles2D.method_get_seed, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    // Signals 
    /// Emitted when all active particles have finished processing. To immediately restart the emission cycle, call ``restart(keepSeed:)``.
    /// 
    /// This signal is never emitted when ``oneShot`` is disabled, as particles will be emitted and processed continuously.
    /// 
    /// > Note: For ``oneShot`` emitters, due to the particles being computed on the GPU, there may be a short period after receiving the signal during which setting ``emitting`` to `true` will not restart the emission cycle. This delay is avoided by instead calling ``restart(keepSeed:)``.
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
    /// obj.finished.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var finished: SimpleSignal { SimpleSignal (target: self, signalName: "finished") }
    
}

