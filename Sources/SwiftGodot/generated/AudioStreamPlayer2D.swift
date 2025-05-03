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


/// Plays positional sound in 2D space.
/// 
/// Plays audio that is attenuated with distance to the listener.
/// 
/// By default, audio is heard from the screen center. This can be changed by adding an ``AudioListener2D`` node to the scene and enabling it by calling ``AudioListener2D/makeCurrent()`` on it.
/// 
/// See also ``AudioStreamPlayer`` to play a sound non-positionally.
/// 
/// > Note: Hiding an ``AudioStreamPlayer2D`` node does not disable its audio output. To temporarily disable an ``AudioStreamPlayer2D``'s audio output, set ``volumeDb`` to a very low value like `-100` (which isn't audible to human hearing).
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``finished``
open class AudioStreamPlayer2D: Node2D {
    private static var className = StringName("AudioStreamPlayer2D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The ``AudioStream`` object to be played.
    final public var stream: AudioStream? {
        get {
            return get_stream ()
        }
        
        set {
            set_stream (newValue)
        }
        
    }
    
    /// Base volume before attenuation, in decibels.
    final public var volumeDb: Double {
        get {
            return get_volume_db ()
        }
        
        set {
            set_volume_db (newValue)
        }
        
    }
    
    /// Base volume before attenuation, as a linear value.
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
    
    /// If `true`, audio plays when added to scene tree.
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
    
    /// Maximum distance from which audio is still hearable.
    final public var maxDistance: Double {
        get {
            return get_max_distance ()
        }
        
        set {
            set_max_distance (newValue)
        }
        
    }
    
    /// The volume is attenuated over distance with this as an exponent.
    final public var attenuation: Double {
        get {
            return get_attenuation ()
        }
        
        set {
            set_attenuation (newValue)
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
    
    /// Scales the panning strength for this node by multiplying the base ``ProjectSettings/audio/general/2dPanningStrength`` with this factor. Higher values will pan audio from left to right more dramatically than lower values.
    final public var panningStrength: Double {
        get {
            return get_panning_strength ()
        }
        
        set {
            set_panning_strength (newValue)
        }
        
    }
    
    /// Bus on which this audio is playing.
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
    
    /// Determines which ``Area2D`` layers affect the sound for reverb and audio bus effects. Areas can be used to redirect ``AudioStream``s so that they play in a certain audio bus. An example of how you might use this is making a "water" area so that sounds played in the water are redirected through an audio bus to make them sound like they are being played underwater.
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
    
    /* Methods */
    fileprivate static let method_set_stream: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_stream")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_set_stream, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_stream: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_stream")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 160907539)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_stream() -> AudioStream? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_get_stream, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_volume_db: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_volume_db")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_set_volume_db, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_volume_db: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_volume_db")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_volume_db() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_get_volume_db, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_volume_linear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_volume_linear")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_set_volume_linear, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_volume_linear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_volume_linear")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_volume_linear() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_get_volume_linear, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_pitch_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_pitch_scale")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_set_pitch_scale, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_pitch_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_pitch_scale")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pitch_scale() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_get_pitch_scale, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_play: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("play")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_play, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_seek: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("seek")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_seek, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_stop: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("stop")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Stops the audio.
    public final func stop() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_stop, handle, nil, nil)
        
    }
    
    fileprivate static let method_is_playing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_playing")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_playing() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_is_playing, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_playback_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_playback_position")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 191475506)!
            }
            
        }
        
    }()
    
    /// Returns the position in the ``AudioStream``.
    public final func getPlaybackPosition() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_get_playback_position, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_bus: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bus")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_set_bus, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_bus: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bus")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bus() -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_get_bus, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_autoplay: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_autoplay")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_set_autoplay, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_autoplay_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_autoplay_enabled")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_autoplay_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_is_autoplay_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_playing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_playing")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_set_playing, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_max_distance: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_max_distance")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_distance(_ pixels: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pixels) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_set_max_distance, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_max_distance: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_max_distance")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_distance() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_get_max_distance, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_attenuation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_attenuation")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_attenuation(_ curve: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: curve) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_set_attenuation, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_attenuation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_attenuation")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_attenuation() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_get_attenuation, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_area_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_area_mask")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_set_area_mask, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_area_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_area_mask")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_area_mask() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_get_area_mask, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_stream_paused: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_stream_paused")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_set_stream_paused, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_stream_paused: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_stream_paused")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_stream_paused() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_get_stream_paused, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_max_polyphony: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_max_polyphony")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_set_max_polyphony, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_max_polyphony: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_max_polyphony")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_polyphony() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_get_max_polyphony, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_panning_strength: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_panning_strength")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_set_panning_strength, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_panning_strength: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_panning_strength")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_panning_strength() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_get_panning_strength, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_has_stream_playback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_stream_playback")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Returns whether the ``AudioStreamPlayer`` can return the ``AudioStreamPlayback`` object or not.
    public final func hasStreamPlayback() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_has_stream_playback, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_stream_playback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_stream_playback")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 210135309)!
            }
            
        }
        
    }()
    
    /// Returns the ``AudioStreamPlayback`` object associated with this ``AudioStreamPlayer2D``.
    public final func getStreamPlayback() -> AudioStreamPlayback? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_get_stream_playback, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_playback_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_playback_type")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_set_playback_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_playback_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_playback_type")
        return withUnsafePointer(to: &AudioStreamPlayer2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4011264623)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_playback_type() -> AudioServer.PlaybackType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AudioStreamPlayer2D.method_get_playback_type, handle, nil, &_result)
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

