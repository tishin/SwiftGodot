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


/// A node for audio playback.
/// 
/// The ``AudioStreamPlayer`` node plays an audio stream non-positionally. It is ideal for user interfaces, menus, or background music.
/// 
/// To use this node, ``stream`` needs to be set to a valid ``AudioStream`` resource. Playing more than one sound at the same time is also supported, see ``maxPolyphony``.
/// 
/// If you need to play audio at a specific position, use ``AudioStreamPlayer2D`` or ``AudioStreamPlayer3D`` instead.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``finished``
open class AudioStreamPlayer: Node {
    private static var className = StringName("AudioStreamPlayer")
    override open class var godotClassName: StringName { className }
    public enum MixTarget: Int64, CaseIterable {
        /// The audio will be played only on the first channel. This is the default.
        case stereo = 0 // MIX_TARGET_STEREO
        /// The audio will be played on all surround channels.
        case surround = 1 // MIX_TARGET_SURROUND
        /// The audio will be played on the second channel, which is usually the center.
        case center = 2 // MIX_TARGET_CENTER
    }
    
    
    /* Properties */
    
    /// The ``AudioStream`` resource to be played. Setting this property stops all currently playing sounds. If left empty, the ``AudioStreamPlayer`` does not work.
    final public var stream: AudioStream? {
        get {
            return get_stream ()
        }
        
        set {
            set_stream (newValue)
        }
        
    }
    
    /// Volume of sound, in decibels. This is an offset of the ``stream``'s volume.
    /// 
    /// > Note: To convert between decibel and linear energy (like most volume sliders do), use ``volumeLinear``, or ``@GlobalScope.db_to_linear`` and ``@GlobalScope.linear_to_db``.
    /// 
    final public var volumeDb: Double {
        get {
            return get_volume_db ()
        }
        
        set {
            set_volume_db (newValue)
        }
        
    }
    
    /// Volume of sound, as a linear value.
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
    
    /// The audio's pitch and tempo, as a multiplier of the ``stream``'s sample rate. A value of `2.0` doubles the audio's pitch, while a value of `0.5` halves the pitch.
    final public var pitchScale: Double {
        get {
            return get_pitch_scale ()
        }
        
        set {
            set_pitch_scale (newValue)
        }
        
    }
    
    /// If `true`, this node is playing sounds. Setting this property has the same effect as ``play(fromPosition:)`` and ``stop()``.
    final public var playing: Bool {
        get {
            return is_playing ()
        }
        
        set {
            set_playing (newValue)
        }
        
    }
    
    /// If `true`, this node calls ``play(fromPosition:)`` when entering the tree.
    final public var autoplay: Bool {
        get {
            return is_autoplay_enabled ()
        }
        
        set {
            set_autoplay (newValue)
        }
        
    }
    
    /// If `true`, the sounds are paused. Setting ``streamPaused`` to `false` resumes all sounds.
    /// 
    /// > Note: This property is automatically changed when exiting or entering the tree, or this node is paused (see ``Node/processMode``).
    /// 
    final public var streamPaused: Bool {
        get {
            return get_stream_paused ()
        }
        
        set {
            set_stream_paused (newValue)
        }
        
    }
    
    /// The mix target channels, as one of the ``AudioStreamPlayer/MixTarget`` constants. Has no effect when two speakers or less are detected (see ``AudioServer.SpeakerMode``).
    final public var mixTarget: AudioStreamPlayer.MixTarget {
        get {
            return get_mix_target ()
        }
        
        set {
            set_mix_target (newValue)
        }
        
    }
    
    /// The maximum number of sounds this node can play at the same time. Calling ``play(fromPosition:)`` after this value is reached will cut off the oldest sounds.
    final public var maxPolyphony: Int32 {
        get {
            return get_max_polyphony ()
        }
        
        set {
            set_max_polyphony (newValue)
        }
        
    }
    
    /// The target bus name. All sounds from this node will be playing on this bus.
    /// 
    /// > Note: At runtime, if no bus with the given name exists, all sounds will fall back on `"Master"`. See also ``AudioServer/getBusName(busIdx:)``.
    /// 
    final public var bus: StringName {
        get {
            return get_bus ()
        }
        
        set {
            set_bus (newValue)
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
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamPlayer.method_set_stream, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_stream: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_stream")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 160907539)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_stream() -> AudioStream? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(AudioStreamPlayer.method_get_stream, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_volume_db: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_volume_db")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamPlayer.method_set_volume_db, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_volume_db: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_volume_db")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_volume_db() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlayer.method_get_volume_db, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_volume_linear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_volume_linear")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamPlayer.method_set_volume_linear, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_volume_linear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_volume_linear")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_volume_linear() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlayer.method_get_volume_linear, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_pitch_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_pitch_scale")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamPlayer.method_set_pitch_scale, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_pitch_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_pitch_scale")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pitch_scale() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlayer.method_get_pitch_scale, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_play: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("play")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1958160172)!
            }
            
        }
        
    }()
    
    /// Plays a sound from the beginning, or the given `fromPosition` in seconds.
    public final func play(fromPosition: Double = 0.0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fromPosition) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer.method_play, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_seek: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("seek")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Restarts all sounds to be played from the given `toPosition`, in seconds. Does nothing if no sounds are playing.
    public final func seek(toPosition: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: toPosition) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer.method_seek, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_stop: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("stop")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Stops all sounds from this node.
    public final func stop() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(AudioStreamPlayer.method_stop, handle, nil, nil)
        
    }
    
    fileprivate static let method_is_playing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_playing")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_playing() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStreamPlayer.method_is_playing, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_playback_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_playback_position")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 191475506)!
            }
            
        }
        
    }()
    
    /// Returns the position in the ``AudioStream`` of the latest sound, in seconds. Returns `0.0` if no sounds are playing.
    /// 
    /// > Note: The position is not always accurate, as the ``AudioServer`` does not mix audio every processed frame. To get more accurate results, add ``AudioServer/getTimeSinceLastMix()`` to the returned position.
    /// 
    /// > Note: This method always returns `0.0` if the ``stream`` is an ``AudioStreamInteractive``, since it can have multiple clips playing at once.
    /// 
    public final func getPlaybackPosition() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlayer.method_get_playback_position, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_bus: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bus")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamPlayer.method_set_bus, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_bus: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bus")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bus() -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(AudioStreamPlayer.method_get_bus, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_autoplay: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_autoplay")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamPlayer.method_set_autoplay, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_autoplay_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_autoplay_enabled")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_autoplay_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStreamPlayer.method_is_autoplay_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_mix_target: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_mix_target")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2300306138)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mix_target(_ mixTarget: AudioStreamPlayer.MixTarget) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mixTarget.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayer.method_set_mix_target, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_mix_target: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_mix_target")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 172807476)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mix_target() -> AudioStreamPlayer.MixTarget {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AudioStreamPlayer.method_get_mix_target, handle, nil, &_result)
        return AudioStreamPlayer.MixTarget (rawValue: _result)!
    }
    
    fileprivate static let method_set_playing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_playing")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamPlayer.method_set_playing, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_stream_paused: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_stream_paused")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamPlayer.method_set_stream_paused, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_stream_paused: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_stream_paused")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_stream_paused() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStreamPlayer.method_get_stream_paused, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_max_polyphony: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_max_polyphony")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamPlayer.method_set_max_polyphony, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_max_polyphony: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_max_polyphony")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_polyphony() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AudioStreamPlayer.method_get_max_polyphony, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_has_stream_playback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_stream_playback")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Returns `true` if any sound is active, even if ``streamPaused`` is set to `true`. See also ``playing`` and ``getStreamPlayback()``.
    public final func hasStreamPlayback() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStreamPlayer.method_has_stream_playback, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_stream_playback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_stream_playback")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 210135309)!
            }
            
        }
        
    }()
    
    /// Returns the latest ``AudioStreamPlayback`` of this node, usually the most recently created by ``play(fromPosition:)``. If no sounds are playing, this method fails and returns an empty playback.
    public final func getStreamPlayback() -> AudioStreamPlayback? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(AudioStreamPlayer.method_get_stream_playback, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_playback_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_playback_type")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamPlayer.method_set_playback_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_playback_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_playback_type")
        return withUnsafePointer(to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4011264623)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_playback_type() -> AudioServer.PlaybackType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AudioStreamPlayer.method_get_playback_type, handle, nil, &_result)
        return AudioServer.PlaybackType (rawValue: _result)!
    }
    
    // Signals 
    /// Emitted when a sound finishes playing without interruptions. This signal is _not_ emitted when calling ``stop()``, or when exiting the tree while sounds are playing.
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

