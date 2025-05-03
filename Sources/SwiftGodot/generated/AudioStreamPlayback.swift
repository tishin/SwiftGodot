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


/// Meta class for playing back audio.
/// 
/// Can play, loop, pause a scroll through audio. See ``AudioStream`` and ``AudioStreamOggVorbis`` for usage.
open class AudioStreamPlayback: RefCounted {
    private static var className = StringName("AudioStreamPlayback")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__start: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_start")
        return withUnsafePointer(to: &AudioStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Override this method to customize what happens when the playback starts at the given position, such as by calling ``AudioStreamPlayer/play(fromPosition:)``.
    @_documentation(visibility: public)
    open func _start(fromPos: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fromPos) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayback.method__start, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__stop: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_stop")
        return withUnsafePointer(to: &AudioStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Override this method to customize what happens when the playback is stopped, such as by calling ``AudioStreamPlayer/stop()``.
    @_documentation(visibility: public)
    open func _stop() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(AudioStreamPlayback.method__stop, handle, nil, nil)
        
    }
    
    fileprivate static let method__is_playing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_playing")
        return withUnsafePointer(to: &AudioStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Overridable method. Should return `true` if this playback is active and playing its audio stream.
    @_documentation(visibility: public)
    open func _isPlaying() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStreamPlayback.method__is_playing, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_loop_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_loop_count")
        return withUnsafePointer(to: &AudioStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Overridable method. Should return how many times this audio stream has looped. Most built-in playbacks always return `0`.
    @_documentation(visibility: public)
    open func _getLoopCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AudioStreamPlayback.method__get_loop_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_playback_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_playback_position")
        return withUnsafePointer(to: &AudioStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Overridable method. Should return the current progress along the audio stream, in seconds.
    @_documentation(visibility: public)
    open func _getPlaybackPosition() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlayback.method__get_playback_position, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__seek: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_seek")
        return withUnsafePointer(to: &AudioStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Override this method to customize what happens when seeking this audio stream at the given `position`, such as by calling ``AudioStreamPlayer/seek(toPosition:)``.
    @_documentation(visibility: public)
    open func _seek(position: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayback.method__seek, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__mix: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_mix")
        return withUnsafePointer(to: &AudioStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 925936155)!
            }
            
        }
        
    }()
    
    /// Override this method to customize how the audio stream is mixed. This method is called even if the playback is not active.
    /// 
    /// > Note: It is not useful to override this method in GDScript or C#. Only GDExtension can take advantage of it.
    /// 
    @_documentation(visibility: public)
    open func _mix(buffer: OpaquePointer?, rateScale: Double, frames: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: buffer) { pArg0 in
            withUnsafePointer(to: rateScale) { pArg1 in
                withUnsafePointer(to: frames) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(AudioStreamPlayback.method__mix, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__tag_used_streams: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_tag_used_streams")
        return withUnsafePointer(to: &AudioStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Overridable method. Called whenever the audio stream is mixed if the playback is active and ``AudioServer/setEnableTaggingUsedAudioStreams(enable:)`` has been set to `true`. Editor plugins may use this method to "tag" the current position along the audio stream and display it in a preview.
    @_documentation(visibility: public)
    open func _tagUsedStreams() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(AudioStreamPlayback.method__tag_used_streams, handle, nil, nil)
        
    }
    
    fileprivate static let method__set_parameter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_parameter")
        return withUnsafePointer(to: &AudioStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3776071444)!
            }
            
        }
        
    }()
    
    /// Set the current value of a playback parameter by name (see ``AudioStream/_getParameterList()``).
    @_documentation(visibility: public)
    open func _setParameter(name: StringName, value: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: value.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AudioStreamPlayback.method__set_parameter, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_parameter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_parameter")
        return withUnsafePointer(to: &AudioStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2760726917)!
            }
            
        }
        
    }()
    
    /// Return the current value of a playback parameter by name (see ``AudioStream/_getParameterList()``).
    @_documentation(visibility: public)
    open func _getParameter(name: StringName) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayback.method__get_parameter, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_set_sample_playback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sample_playback")
        return withUnsafePointer(to: &AudioStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3195455091)!
            }
            
        }
        
    }()
    
    /// Associates ``AudioSamplePlayback`` to this ``AudioStreamPlayback`` for playing back the audio sample of this stream.
    public final func setSamplePlayback(playbackSample: AudioSamplePlayback?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: playbackSample?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayback.method_set_sample_playback, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sample_playback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sample_playback")
        return withUnsafePointer(to: &AudioStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3482738536)!
            }
            
        }
        
    }()
    
    /// Returns the ``AudioSamplePlayback`` associated with this ``AudioStreamPlayback`` for playing back the audio sample of this stream.
    public final func getSamplePlayback() -> AudioSamplePlayback? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(AudioStreamPlayback.method_get_sample_playback, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_mix_audio: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("mix_audio")
        return withUnsafePointer(to: &AudioStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341291446)!
            }
            
        }
        
    }()
    
    /// Mixes up to `frames` of audio from the stream from the current position, at a rate of `rateScale`, advancing the stream.
    /// 
    /// Returns a ``PackedVector2Array`` where each element holds the left and right channel volume levels of each frame.
    /// 
    /// > Note: Can return fewer frames than requested, make sure to use the size of the return value.
    /// 
    public final func mixAudio(rateScale: Double, frames: Int32) -> PackedVector2Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedVector2Array = PackedVector2Array ()
        withUnsafePointer(to: rateScale) { pArg0 in
            withUnsafePointer(to: frames) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AudioStreamPlayback.method_mix_audio, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_start: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("start")
        return withUnsafePointer(to: &AudioStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1958160172)!
            }
            
        }
        
    }()
    
    /// Starts the stream from the given `fromPos`, in seconds.
    public final func start(fromPos: Double = 0.0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fromPos) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayback.method_start, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_seek: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("seek")
        return withUnsafePointer(to: &AudioStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1958160172)!
            }
            
        }
        
    }()
    
    /// Seeks the stream at the given `time`, in seconds.
    public final func seek(time: Double = 0.0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: time) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayback.method_seek, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_stop: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("stop")
        return withUnsafePointer(to: &AudioStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Stops the stream.
    public final func stop() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(AudioStreamPlayback.method_stop, handle, nil, nil)
        
    }
    
    fileprivate static let method_get_loop_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_loop_count")
        return withUnsafePointer(to: &AudioStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of times the stream has looped.
    public final func getLoopCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AudioStreamPlayback.method_get_loop_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_playback_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_playback_position")
        return withUnsafePointer(to: &AudioStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the current position in the stream, in seconds.
    public final func getPlaybackPosition() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlayback.method_get_playback_position, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_playing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_playing")
        return withUnsafePointer(to: &AudioStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the stream is playing.
    public final func isPlaying() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStreamPlayback.method_is_playing, handle, nil, &_result)
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_loop_count":
                return _AudioStreamPlayback_proxy_get_loop_count
            case "_get_parameter":
                return _AudioStreamPlayback_proxy_get_parameter
            case "_get_playback_position":
                return _AudioStreamPlayback_proxy_get_playback_position
            case "_is_playing":
                return _AudioStreamPlayback_proxy_is_playing
            case "_mix":
                return _AudioStreamPlayback_proxy_mix
            case "_seek":
                return _AudioStreamPlayback_proxy_seek
            case "_set_parameter":
                return _AudioStreamPlayback_proxy_set_parameter
            case "_start":
                return _AudioStreamPlayback_proxy_start
            case "_stop":
                return _AudioStreamPlayback_proxy_stop
            case "_tag_used_streams":
                return _AudioStreamPlayback_proxy_tag_used_streams
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _AudioStreamPlayback_proxy_get_loop_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AudioStreamPlayback else { return }
    let ret = swiftObject._getLoopCount ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _AudioStreamPlayback_proxy_get_parameter (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AudioStreamPlayback else { return }
    let ret = swiftObject._getParameter (name: StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes(of: ret.content, as: Variant.ContentType.self)
    ret?.content = Variant.zero
}

func _AudioStreamPlayback_proxy_get_playback_position (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AudioStreamPlayback else { return }
    let ret = swiftObject._getPlaybackPosition ()
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _AudioStreamPlayback_proxy_is_playing (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AudioStreamPlayback else { return }
    let ret = swiftObject._isPlaying ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _AudioStreamPlayback_proxy_mix (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AudioStreamPlayback else { return }
    let ret = swiftObject._mix (buffer: args [0]!.assumingMemoryBound (to: OpaquePointer?.self).pointee, rateScale: args [1]!.assumingMemoryBound (to: Double.self).pointee, frames: args [2]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _AudioStreamPlayback_proxy_seek (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AudioStreamPlayback else { return }
    swiftObject._seek (position: args [0]!.assumingMemoryBound (to: Double.self).pointee)
}

func _AudioStreamPlayback_proxy_set_parameter (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AudioStreamPlayback else { return }
    swiftObject._setParameter (name: StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), value: args [1]!.assumingMemoryBound (to: Variant.self).pointee)
}

func _AudioStreamPlayback_proxy_start (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AudioStreamPlayback else { return }
    swiftObject._start (fromPos: args [0]!.assumingMemoryBound (to: Double.self).pointee)
}

func _AudioStreamPlayback_proxy_stop (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AudioStreamPlayback else { return }
    swiftObject._stop ()
}

func _AudioStreamPlayback_proxy_tag_used_streams (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AudioStreamPlayback else { return }
    swiftObject._tagUsedStreams ()
}

