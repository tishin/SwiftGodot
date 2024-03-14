// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Plays back audio non-positionally.
/// 
/// Plays an audio stream non-positionally.
/// 
/// To play audio positionally, use ``AudioStreamPlayer2D`` or ``AudioStreamPlayer3D`` instead of ``AudioStreamPlayer``.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``finished``
open class AudioStreamPlayer: Node {
    override open class var godotClassName: StringName { "AudioStreamPlayer" }
    public enum MixTarget: Int64, CustomDebugStringConvertible {
        /// The audio will be played only on the first channel.
        case stereo = 0 // MIX_TARGET_STEREO
        /// The audio will be played on all surround channels.
        case surround = 1 // MIX_TARGET_SURROUND
        /// The audio will be played on the second channel, which is usually the center.
        case center = 2 // MIX_TARGET_CENTER
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .stereo: return ".stereo"
                case .surround: return ".surround"
                case .center: return ".center"
            }
            
        }
        
    }
    
    
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
    
    /// Volume of sound, in dB.
    final public var volumeDb: Double {
        get {
            return get_volume_db ()
        }
        
        set {
            set_volume_db (newValue)
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
    
    /// If the audio configuration has more than two speakers, this sets the target channels. See ``AudioStreamPlayer/MixTarget`` constants.
    final public var mixTarget: AudioStreamPlayer.MixTarget {
        get {
            return get_mix_target ()
        }
        
        set {
            set_mix_target (newValue)
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
    
    /* Methods */
    fileprivate static var method_set_stream: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_stream")
        return withUnsafePointer (to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2210767741)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_stream (_ stream: AudioStream?) {
        #if true
        
        var copy_stream_handle = stream?.handle
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlayer.method_set_stream, UnsafeMutableRawPointer (mutating: handle), nil, &copy_stream_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: stream?.handle) { p0 in
        _args.append (stream == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPlayer.method_set_stream, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_stream: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_stream")
        return withUnsafePointer (to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 160907539)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_stream ()-> AudioStream? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (AudioStreamPlayer.method_get_stream, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_volume_db: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_volume_db")
        return withUnsafePointer (to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_volume_db (_ volumeDb: Double) {
        #if true
        
        var copy_volume_db = volumeDb
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlayer.method_set_volume_db, UnsafeMutableRawPointer (mutating: handle), nil, &copy_volume_db)
        
        #else
        
        var copy_volume_db = volumeDb
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_volume_db) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPlayer.method_set_volume_db, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_volume_db: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_volume_db")
        return withUnsafePointer (to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_volume_db ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (AudioStreamPlayer.method_get_volume_db, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_pitch_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_pitch_scale")
        return withUnsafePointer (to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pitch_scale (_ pitchScale: Double) {
        #if true
        
        var copy_pitch_scale = pitchScale
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlayer.method_set_pitch_scale, UnsafeMutableRawPointer (mutating: handle), nil, &copy_pitch_scale)
        
        #else
        
        var copy_pitch_scale = pitchScale
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_pitch_scale) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPlayer.method_set_pitch_scale, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_pitch_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_pitch_scale")
        return withUnsafePointer (to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pitch_scale ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (AudioStreamPlayer.method_get_pitch_scale, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_play: GDExtensionMethodBindPtr = {
        let methodName = StringName ("play")
        return withUnsafePointer (to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1958160172)!
            }
            
        }
        
    }()
    
    /// Plays the audio from the given `fromPosition`, in seconds.
    public final func play (fromPosition: Double = 0.0) {
        #if true
        
        var copy_from_position = fromPosition
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlayer.method_play, UnsafeMutableRawPointer (mutating: handle), nil, &copy_from_position)
        
        #else
        
        var copy_from_position = fromPosition
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_from_position) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPlayer.method_play, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_seek: GDExtensionMethodBindPtr = {
        let methodName = StringName ("seek")
        return withUnsafePointer (to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Sets the position from which audio will be played, in seconds.
    public final func seek (toPosition: Double) {
        #if true
        
        var copy_to_position = toPosition
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlayer.method_seek, UnsafeMutableRawPointer (mutating: handle), nil, &copy_to_position)
        
        #else
        
        var copy_to_position = toPosition
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_to_position) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPlayer.method_seek, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_stop: GDExtensionMethodBindPtr = {
        let methodName = StringName ("stop")
        return withUnsafePointer (to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Stops the audio.
    public final func stop () {
        gi.object_method_bind_ptrcall (AudioStreamPlayer.method_stop, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_is_playing: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_playing")
        return withUnsafePointer (to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    public final func isPlaying ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (AudioStreamPlayer.method_is_playing, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_playback_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_playback_position")
        return withUnsafePointer (to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 191475506)!
            }
            
        }
        
    }()
    
    /// Returns the position in the ``AudioStream`` in seconds.
    public final func getPlaybackPosition ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (AudioStreamPlayer.method_get_playback_position, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_bus: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_bus")
        return withUnsafePointer (to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bus (_ bus: StringName) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlayer.method_set_bus, UnsafeMutableRawPointer (mutating: handle), nil, &bus.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &bus.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPlayer.method_set_bus, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_bus: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_bus")
        return withUnsafePointer (to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bus ()-> StringName {
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall (AudioStreamPlayer.method_get_bus, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_autoplay: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_autoplay")
        return withUnsafePointer (to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_autoplay (_ enable: Bool) {
        #if true
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlayer.method_set_autoplay, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPlayer.method_set_autoplay, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_autoplay_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_autoplay_enabled")
        return withUnsafePointer (to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_autoplay_enabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (AudioStreamPlayer.method_is_autoplay_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_mix_target: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_mix_target")
        return withUnsafePointer (to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2300306138)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mix_target (_ mixTarget: AudioStreamPlayer.MixTarget) {
        #if true
        
        var copy_mix_target = Int64 (mixTarget.rawValue)
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlayer.method_set_mix_target, UnsafeMutableRawPointer (mutating: handle), nil, &copy_mix_target)
        
        #else
        
        var copy_mix_target = Int64 (mixTarget.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_mix_target) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPlayer.method_set_mix_target, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_mix_target: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_mix_target")
        return withUnsafePointer (to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 172807476)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mix_target ()-> AudioStreamPlayer.MixTarget {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (AudioStreamPlayer.method_get_mix_target, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return AudioStreamPlayer.MixTarget (rawValue: _result)!
    }
    
    fileprivate static var method_set_stream_paused: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_stream_paused")
        return withUnsafePointer (to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_stream_paused (_ pause: Bool) {
        #if true
        
        var copy_pause = pause
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlayer.method_set_stream_paused, UnsafeMutableRawPointer (mutating: handle), nil, &copy_pause)
        
        #else
        
        var copy_pause = pause
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_pause) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPlayer.method_set_stream_paused, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_stream_paused: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_stream_paused")
        return withUnsafePointer (to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_stream_paused ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (AudioStreamPlayer.method_get_stream_paused, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_max_polyphony: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_max_polyphony")
        return withUnsafePointer (to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_polyphony (_ maxPolyphony: Int32) {
        #if true
        
        var copy_max_polyphony: Int = Int (maxPolyphony)
        
        gi.object_method_bind_ptrcall_v (AudioStreamPlayer.method_set_max_polyphony, UnsafeMutableRawPointer (mutating: handle), nil, &copy_max_polyphony)
        
        #else
        
        var copy_max_polyphony: Int = Int (maxPolyphony)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_max_polyphony) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamPlayer.method_set_max_polyphony, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_max_polyphony: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_max_polyphony")
        return withUnsafePointer (to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_polyphony ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (AudioStreamPlayer.method_get_max_polyphony, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_has_stream_playback: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_stream_playback")
        return withUnsafePointer (to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Returns whether the ``AudioStreamPlayer`` can return the ``AudioStreamPlayback`` object or not.
    public final func hasStreamPlayback ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (AudioStreamPlayer.method_has_stream_playback, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_stream_playback: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_stream_playback")
        return withUnsafePointer (to: &AudioStreamPlayer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 210135309)!
            }
            
        }
        
    }()
    
    /// Returns the ``AudioStreamPlayback`` object associated with this ``AudioStreamPlayer``.
    public final func getStreamPlayback ()-> AudioStreamPlayback? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (AudioStreamPlayer.method_get_stream_playback, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
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

