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


/// Internal class used by ``VideoStream`` to manage playback state when played from a ``VideoStreamPlayer``.
/// 
/// This class is intended to be overridden by video decoder extensions with custom implementations of ``VideoStream``.
open class VideoStreamPlayback: Resource {
    private static var className = StringName("VideoStreamPlayback")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__stop: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_stop")
        return withUnsafePointer(to: &VideoStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Stops playback. May be called multiple times before ``_play()``, or in response to ``VideoStreamPlayer/stop()``. ``_isPlaying()`` should return `false` once stopped.
    @_documentation(visibility: public)
    open func _stop() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(VideoStreamPlayback.method__stop, handle, nil, nil)
        
    }
    
    fileprivate static let method__play: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_play")
        return withUnsafePointer(to: &VideoStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called in response to ``VideoStreamPlayer/autoplay`` or ``VideoStreamPlayer/play()``. Note that manual playback may also invoke ``_stop()`` multiple times before this method is called. ``_isPlaying()`` should return `true` once playing.
    @_documentation(visibility: public)
    open func _play() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(VideoStreamPlayback.method__play, handle, nil, nil)
        
    }
    
    fileprivate static let method__is_playing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_playing")
        return withUnsafePointer(to: &VideoStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns the playback state, as determined by calls to ``_play()`` and ``_stop()``.
    @_documentation(visibility: public)
    open func _isPlaying() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(VideoStreamPlayback.method__is_playing, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__set_paused: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_paused")
        return withUnsafePointer(to: &VideoStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Set the paused status of video playback. ``_isPaused()`` must return `paused`. Called in response to the ``VideoStreamPlayer/paused`` setter.
    @_documentation(visibility: public)
    open func _setPaused(_ paused: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: paused) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VideoStreamPlayback.method__set_paused, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__is_paused: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_paused")
        return withUnsafePointer(to: &VideoStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns the paused status, as set by ``_setPaused(_:)``.
    @_documentation(visibility: public)
    open func _isPaused() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(VideoStreamPlayback.method__is_paused, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_length: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_length")
        return withUnsafePointer(to: &VideoStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the video duration in seconds, if known, or 0 if unknown.
    @_documentation(visibility: public)
    open func _getLength() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(VideoStreamPlayback.method__get_length, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_playback_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_playback_position")
        return withUnsafePointer(to: &VideoStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Return the current playback timestamp. Called in response to the ``VideoStreamPlayer/streamPosition`` getter.
    @_documentation(visibility: public)
    open func _getPlaybackPosition() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(VideoStreamPlayback.method__get_playback_position, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__seek: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_seek")
        return withUnsafePointer(to: &VideoStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Seeks to `time` seconds. Called in response to the ``VideoStreamPlayer/streamPosition`` setter.
    @_documentation(visibility: public)
    open func _seek(time: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: time) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VideoStreamPlayback.method__seek, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__set_audio_track: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_audio_track")
        return withUnsafePointer(to: &VideoStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Select the audio track `idx`. Called when playback starts, and in response to the ``VideoStreamPlayer/audioTrack`` setter.
    @_documentation(visibility: public)
    open func _setAudioTrack(idx: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VideoStreamPlayback.method__set_audio_track, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_texture")
        return withUnsafePointer(to: &VideoStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    /// Allocates a ``Texture2D`` in which decoded video frames will be drawn.
    @_documentation(visibility: public)
    open func _getTexture() -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(VideoStreamPlayback.method__get_texture, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__update: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_update")
        return withUnsafePointer(to: &VideoStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Ticks video playback for `delta` seconds. Called every frame as long as both ``_isPaused()`` and ``_isPlaying()`` return `true`.
    @_documentation(visibility: public)
    open func _update(delta: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: delta) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VideoStreamPlayback.method__update, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_channels: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_channels")
        return withUnsafePointer(to: &VideoStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of audio channels.
    @_documentation(visibility: public)
    open func _getChannels() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(VideoStreamPlayback.method__get_channels, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_mix_rate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_mix_rate")
        return withUnsafePointer(to: &VideoStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the audio sample rate used for mixing.
    @_documentation(visibility: public)
    open func _getMixRate() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(VideoStreamPlayback.method__get_mix_rate, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_mix_audio: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("mix_audio")
        return withUnsafePointer(to: &VideoStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 93876830)!
            }
            
        }
        
    }()
    
    /// Render `numFrames` audio frames (of ``_getChannels()`` floats each) from `buffer`, starting from index `offset` in the array. Returns the number of audio frames rendered, or -1 on error.
    public final func mixAudio(numFrames: Int32, buffer: PackedFloat32Array = PackedFloat32Array(), offset: Int32 = 0) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: numFrames) { pArg0 in
            withUnsafePointer(to: buffer.content) { pArg1 in
                withUnsafePointer(to: offset) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(VideoStreamPlayback.method_mix_audio, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_channels":
                return _VideoStreamPlayback_proxy_get_channels
            case "_get_length":
                return _VideoStreamPlayback_proxy_get_length
            case "_get_mix_rate":
                return _VideoStreamPlayback_proxy_get_mix_rate
            case "_get_playback_position":
                return _VideoStreamPlayback_proxy_get_playback_position
            case "_get_texture":
                return _VideoStreamPlayback_proxy_get_texture
            case "_is_paused":
                return _VideoStreamPlayback_proxy_is_paused
            case "_is_playing":
                return _VideoStreamPlayback_proxy_is_playing
            case "_play":
                return _VideoStreamPlayback_proxy_play
            case "_seek":
                return _VideoStreamPlayback_proxy_seek
            case "_set_audio_track":
                return _VideoStreamPlayback_proxy_set_audio_track
            case "_set_paused":
                return _VideoStreamPlayback_proxy_set_paused
            case "_stop":
                return _VideoStreamPlayback_proxy_stop
            case "_update":
                return _VideoStreamPlayback_proxy_update
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _VideoStreamPlayback_proxy_get_channels (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VideoStreamPlayback else { return }
    let ret = swiftObject._getChannels ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _VideoStreamPlayback_proxy_get_length (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VideoStreamPlayback else { return }
    let ret = swiftObject._getLength ()
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _VideoStreamPlayback_proxy_get_mix_rate (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VideoStreamPlayback else { return }
    let ret = swiftObject._getMixRate ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _VideoStreamPlayback_proxy_get_playback_position (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VideoStreamPlayback else { return }
    let ret = swiftObject._getPlaybackPosition ()
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _VideoStreamPlayback_proxy_get_texture (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VideoStreamPlayback else { return }
    let ret = swiftObject._getTexture ()
    retPtr!.storeBytes (of: ret?.handle, as:  GodotNativeObjectPointer?.self) // Texture2D
}

func _VideoStreamPlayback_proxy_is_paused (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VideoStreamPlayback else { return }
    let ret = swiftObject._isPaused ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _VideoStreamPlayback_proxy_is_playing (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VideoStreamPlayback else { return }
    let ret = swiftObject._isPlaying ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _VideoStreamPlayback_proxy_play (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VideoStreamPlayback else { return }
    swiftObject._play ()
}

func _VideoStreamPlayback_proxy_seek (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VideoStreamPlayback else { return }
    swiftObject._seek (time: args [0]!.assumingMemoryBound (to: Double.self).pointee)
}

func _VideoStreamPlayback_proxy_set_audio_track (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VideoStreamPlayback else { return }
    swiftObject._setAudioTrack (idx: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
}

func _VideoStreamPlayback_proxy_set_paused (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VideoStreamPlayback else { return }
    swiftObject._setPaused (args [0]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _VideoStreamPlayback_proxy_stop (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VideoStreamPlayback else { return }
    swiftObject._stop ()
}

func _VideoStreamPlayback_proxy_update (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VideoStreamPlayback else { return }
    swiftObject._update (delta: args [0]!.assumingMemoryBound (to: Double.self).pointee)
}

