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


/// Plays positional sound in 3D space.
/// 
/// Plays audio with positional sound effects, based on the relative position of the audio listener. Positional effects include distance attenuation, directionality, and the Doppler effect. For greater realism, a low-pass filter is applied to distant sounds. This can be disabled by setting ``attenuationFilterCutoffHz`` to `20500`.
/// 
/// By default, audio is heard from the camera position. This can be changed by adding an ``AudioListener3D`` node to the scene and enabling it by calling ``AudioListener3D/makeCurrent()`` on it.
/// 
/// See also ``AudioStreamPlayer`` to play a sound non-positionally.
/// 
/// > Note: Hiding an ``AudioStreamPlayer3D`` node does not disable its audio output. To temporarily disable an ``AudioStreamPlayer3D``'s audio output, set ``volumeDb`` to a very low value like `-100` (which isn't audible to human hearing).
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``finished``
open class AudioStreamPlayer3D: Node3D {
    private static var className = StringName("AudioStreamPlayer3D")
    override open class var godotClassName: StringName { className }
    public enum AttenuationModel: Int64, CaseIterable {
        /// Attenuation of loudness according to linear distance.
        case inverseDistance = 0 // ATTENUATION_INVERSE_DISTANCE
        /// Attenuation of loudness according to squared distance.
        case inverseSquareDistance = 1 // ATTENUATION_INVERSE_SQUARE_DISTANCE
        /// Attenuation of loudness according to logarithmic distance.
        case logarithmic = 2 // ATTENUATION_LOGARITHMIC
        /// No attenuation of loudness according to distance. The sound will still be heard positionally, unlike an ``AudioStreamPlayer``. ``AttenuationModel/disabled`` can be combined with a ``maxDistance`` value greater than `0.0` to achieve linear attenuation clamped to a sphere of a defined size.
        case disabled = 3 // ATTENUATION_DISABLED
    }
    
    public enum DopplerTracking: Int64, CaseIterable {
        /// Disables doppler tracking.
        case disabled = 0 // DOPPLER_TRACKING_DISABLED
        /// Executes doppler tracking during process frames (see ``Node/notificationInternalProcess``).
        case idleStep = 1 // DOPPLER_TRACKING_IDLE_STEP
        /// Executes doppler tracking during physics frames (see ``Node/notificationInternalPhysicsProcess``).
        case physicsStep = 2 // DOPPLER_TRACKING_PHYSICS_STEP
    }
    
    
    /* Properties */
    
    /// The ``AudioStream`` resource to be played.
    final public var stream: AudioStream? {
        get {
            return get_stream ()
        }
        
        set {
            set_stream (newValue)
        }
        
    }
    
    /// Decides if audio should get quieter with distance linearly, quadratically, logarithmically, or not be affected by distance, effectively disabling attenuation.
    final public var attenuationModel: AudioStreamPlayer3D.AttenuationModel {
        get {
            return get_attenuation_model ()
        }
        
        set {
            set_attenuation_model (newValue)
        }
        
    }
    
    /// The base sound level before attenuation, in decibels.
    final public var volumeDb: Double {
        get {
            return get_volume_db ()
        }
        
        set {
            set_volume_db (newValue)
        }
        
    }
    
    /// The base sound level before attenuation, as a linear value.
    /// 
    /// > Note: This member modifies ``volumeDb`` for convenience. The returned value is equivalent to the result of ``@GlobalScope.db_to_linear`` on ``volumeDb``. Setting this member is equivalent to setting ``volumeDb`` to the result of ``@GlobalScope.linear_to_db`` on a value.
    /// 
    final public var volumeLinear: Double {
        get {
            return get_volume_linear ()
        }
        
        set {
            set_volume_linear (newValue)
        }
        
    }
    
    /// The factor for the attenuation effect. Higher values make the sound audible over a larger distance.
    final public var unitSize: Double {
        get {
            return get_unit_size ()
        }
        
        set {
            set_unit_size (newValue)
        }
        
    }
    
    /// Sets the absolute maximum of the sound level, in decibels.
    final public var maxDb: Double {
        get {
            return get_max_db ()
        }
        
        set {
            set_max_db (newValue)
        }
        
    }
    
    /// The pitch and the tempo of the audio, as a multiplier of the audio sample's sample rate.
    final public var pitchScale: Double {
        get {
            return get_pitch_scale ()
        }
        
        set {
            set_pitch_scale (newValue)
        }
        
    }
    
    /// If `true`, audio is playing or is queued to be played (see ``play(fromPosition:)``).
    final public var playing: Bool {
        get {
            return is_playing ()
        }
        
        set {
            set_playing (newValue)
        }
        
    }
    
    /// If `true`, audio plays when the AudioStreamPlayer3D node is added to scene tree.
    final public var autoplay: Bool {
        get {
            return is_autoplay_enabled ()
        }
        
        set {
            set_autoplay (newValue)
        }
        
    }
    
    /// If `true`, the playback is paused. You can resume it by setting ``streamPaused`` to `false`.
    final public var streamPaused: Bool {
        get {
            return get_stream_paused ()
        }
        
        set {
            set_stream_paused (newValue)
        }
        
    }
    
    /// The distance past which the sound can no longer be heard at all. Only has an effect if set to a value greater than `0.0`. ``maxDistance`` works in tandem with ``unitSize``. However, unlike ``unitSize`` whose behavior depends on the ``attenuationModel``, ``maxDistance`` always works in a linear fashion. This can be used to prevent the ``AudioStreamPlayer3D`` from requiring audio mixing when the listener is far away, which saves CPU resources.
    final public var maxDistance: Double {
        get {
            return get_max_distance ()
        }
        
        set {
            set_max_distance (newValue)
        }
        
    }
    
    /// The maximum number of sounds this node can play at the same time. Playing additional sounds after this value is reached will cut off the oldest sounds.
    final public var maxPolyphony: Int32 {
        get {
            return get_max_polyphony ()
        }
        
        set {
            set_max_polyphony (newValue)
        }
        
    }
    
    /// Scales the panning strength for this node by multiplying the base ``ProjectSettings/audio/general/3dPanningStrength`` with this factor. Higher values will pan audio from left to right more dramatically than lower values.
    final public var panningStrength: Double {
        get {
            return get_panning_strength ()
        }
        
        set {
            set_panning_strength (newValue)
        }
        
    }
    
    /// The bus on which this audio is playing.
    /// 
    /// > Note: When setting this property, keep in mind that no validation is performed to see if the given name matches an existing bus. This is because audio bus layouts might be loaded after this property is set. If this given name can't be resolved at runtime, it will fall back to `"Master"`.
    /// 
    final public var bus: StringName {
        get {
            return get_bus ()
        }
        
        set {
            set_bus (newValue)
        }
        
    }
    
    /// Determines which ``Area3D`` layers affect the sound for reverb and audio bus effects. Areas can be used to redirect ``AudioStream``s so that they play in a certain audio bus. An example of how you might use this is making a "water" area so that sounds played in the water are redirected through an audio bus to make them sound like they are being played underwater.
    final public var areaMask: UInt32 {
        get {
            return get_area_mask ()
        }
        
        set {
            set_area_mask (newValue)
        }
        
    }
    
    /// The playback type of the stream player. If set other than to the default value, it will force that playback type.
    final public var playbackType: AudioServer.PlaybackType {
        get {
            return get_playback_type ()
        }
        
        set {
            set_playback_type (newValue)
        }
        
    }
    
    /// If `true`, the audio should be attenuated according to the direction of the sound.
    final public var emissionAngleEnabled: Bool {
        get {
            return is_emission_angle_enabled ()
        }
        
        set {
            set_emission_angle_enabled (newValue)
        }
        
    }
    
    /// The angle in which the audio reaches a listener unattenuated.
    final public var emissionAngleDegrees: Double {
        get {
            return get_emission_angle ()
        }
        
        set {
            set_emission_angle (newValue)
        }
        
    }
    
    /// Attenuation factor used if listener is outside of ``emissionAngleDegrees`` and ``emissionAngleEnabled`` is set, in decibels.
    final public var emissionAngleFilterAttenuationDb: Double {
        get {
            return get_emission_angle_filter_attenuation_db ()
        }
        
        set {
            set_emission_angle_filter_attenuation_db (newValue)
        }
        
    }
    
    /// The cutoff frequency of the attenuation low-pass filter, in Hz. A sound above this frequency is attenuated more than a sound below this frequency. To disable this effect, set this to `20500` as this frequency is above the human hearing limit.
    final public var attenuationFilterCutoffHz: Double {
        get {
            return get_attenuation_filter_cutoff_hz ()
        }
        
        set {
            set_attenuation_filter_cutoff_hz (newValue)
        }
        
    }
    
    /// Amount how much the filter affects the loudness, in decibels.
    final public var attenuationFilterDb: Double {
        get {
            return get_attenuation_filter_db ()
        }
        
        set {
            set_attenuation_filter_db (newValue)
        }
        
    }
    
    /// Decides in which step the Doppler effect should be calculated.
    final public var dopplerTracking: AudioStreamPlayer3D.DopplerTracking {
        get {
            return get_doppler_tracking ()
        }
        
        set {
            set_doppler_tracking (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_stream: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_stream")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2210767741)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_stream(_ stream: AudioStream?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: stream?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_set_stream, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_stream: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_stream")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 160907539)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_stream() -> AudioStream? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_get_stream, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_volume_db: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_volume_db")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_volume_db(_ volumeDb: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: volumeDb) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_set_volume_db, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_volume_db: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_volume_db")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_volume_db() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_get_volume_db, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_volume_linear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_volume_linear")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_volume_linear(_ volumeLinear: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: volumeLinear) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_set_volume_linear, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_volume_linear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_volume_linear")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_volume_linear() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_get_volume_linear, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_unit_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_unit_size")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_unit_size(_ unitSize: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: unitSize) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_set_unit_size, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_unit_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_unit_size")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_unit_size() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_get_unit_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_max_db: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_max_db")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_db(_ maxDb: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: maxDb) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_set_max_db, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_max_db: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_max_db")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_db() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_get_max_db, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_pitch_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_pitch_scale")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pitch_scale(_ pitchScale: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pitchScale) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_set_pitch_scale, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_pitch_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_pitch_scale")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pitch_scale() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_get_pitch_scale, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_play: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("play")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1958160172)!
            }
            
        }
        
    }()
    
    /// Queues the audio to play on the next physics frame, from the given position `fromPosition`, in seconds.
    public final func play(fromPosition: Double = 0.0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fromPosition) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_play, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_seek: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("seek")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Sets the position from which audio will be played, in seconds.
    public final func seek(toPosition: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: toPosition) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_seek, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_stop: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("stop")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Stops the audio.
    public final func stop() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_stop, handle, nil, nil)
        
    }
    
    fileprivate static let method_is_playing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_playing")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_playing() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_is_playing, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_playback_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_playback_position")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 191475506)!
            }
            
        }
        
    }()
    
    /// Returns the position in the ``AudioStream``.
    public final func getPlaybackPosition() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_get_playback_position, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_bus: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bus")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bus(_ bus: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: bus.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_set_bus, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_bus: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bus")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bus() -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_get_bus, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_autoplay: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_autoplay")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_autoplay(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_set_autoplay, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_autoplay_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_autoplay_enabled")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_autoplay_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_is_autoplay_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_playing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_playing")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_playing(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_set_playing, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_max_distance: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_max_distance")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_distance(_ meters: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: meters) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_set_max_distance, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_max_distance: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_max_distance")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_distance() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_get_max_distance, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_area_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_area_mask")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_area_mask(_ mask: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mask) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_set_area_mask, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_area_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_area_mask")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_area_mask() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_get_area_mask, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_emission_angle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_emission_angle")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_emission_angle(_ degrees: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: degrees) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_set_emission_angle, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_emission_angle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_emission_angle")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_emission_angle() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_get_emission_angle, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_emission_angle_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_emission_angle_enabled")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_emission_angle_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_set_emission_angle_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_emission_angle_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_emission_angle_enabled")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_emission_angle_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_is_emission_angle_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_emission_angle_filter_attenuation_db: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_emission_angle_filter_attenuation_db")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_emission_angle_filter_attenuation_db(_ db: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: db) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_set_emission_angle_filter_attenuation_db, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_emission_angle_filter_attenuation_db: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_emission_angle_filter_attenuation_db")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_emission_angle_filter_attenuation_db() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_get_emission_angle_filter_attenuation_db, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_attenuation_filter_cutoff_hz: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_attenuation_filter_cutoff_hz")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_attenuation_filter_cutoff_hz(_ degrees: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: degrees) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_set_attenuation_filter_cutoff_hz, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_attenuation_filter_cutoff_hz: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_attenuation_filter_cutoff_hz")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_attenuation_filter_cutoff_hz() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_get_attenuation_filter_cutoff_hz, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_attenuation_filter_db: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_attenuation_filter_db")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_attenuation_filter_db(_ db: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: db) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_set_attenuation_filter_db, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_attenuation_filter_db: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_attenuation_filter_db")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_attenuation_filter_db() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_get_attenuation_filter_db, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_attenuation_model: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_attenuation_model")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2988086229)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_attenuation_model(_ model: AudioStreamPlayer3D.AttenuationModel) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: model.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_set_attenuation_model, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_attenuation_model: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_attenuation_model")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3035106060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_attenuation_model() -> AudioStreamPlayer3D.AttenuationModel {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_get_attenuation_model, handle, nil, &_result)
        return AudioStreamPlayer3D.AttenuationModel (rawValue: _result)!
    }
    
    fileprivate static let method_set_doppler_tracking: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_doppler_tracking")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3968161450)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_doppler_tracking(_ mode: AudioStreamPlayer3D.DopplerTracking) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_set_doppler_tracking, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_doppler_tracking: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_doppler_tracking")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1702418664)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_doppler_tracking() -> AudioStreamPlayer3D.DopplerTracking {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_get_doppler_tracking, handle, nil, &_result)
        return AudioStreamPlayer3D.DopplerTracking (rawValue: _result)!
    }
    
    fileprivate static let method_set_stream_paused: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_stream_paused")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_stream_paused(_ pause: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pause) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_set_stream_paused, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_stream_paused: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_stream_paused")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_stream_paused() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_get_stream_paused, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_max_polyphony: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_max_polyphony")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_polyphony(_ maxPolyphony: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: maxPolyphony) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_set_max_polyphony, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_max_polyphony: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_max_polyphony")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_polyphony() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_get_max_polyphony, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_panning_strength: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_panning_strength")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_panning_strength(_ panningStrength: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: panningStrength) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_set_panning_strength, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_panning_strength: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_panning_strength")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_panning_strength() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_get_panning_strength, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_has_stream_playback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_stream_playback")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Returns whether the ``AudioStreamPlayer`` can return the ``AudioStreamPlayback`` object or not.
    public final func hasStreamPlayback() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_has_stream_playback, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_stream_playback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_stream_playback")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 210135309)!
            }
            
        }
        
    }()
    
    /// Returns the ``AudioStreamPlayback`` object associated with this ``AudioStreamPlayer3D``.
    public final func getStreamPlayback() -> AudioStreamPlayback? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_get_stream_playback, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_playback_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_playback_type")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 725473817)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_playback_type(_ playbackType: AudioServer.PlaybackType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: playbackType.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_set_playback_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_playback_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_playback_type")
        return withUnsafePointer(to: &AudioStreamPlayer3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4011264623)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_playback_type() -> AudioServer.PlaybackType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AudioStreamPlayer3D.method_get_playback_type, handle, nil, &_result)
        return AudioServer.PlaybackType (rawValue: _result)!
    }
    
    // Signals 
    /// Emitted when the audio stops playing.
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

