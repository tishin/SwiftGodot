// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Meta class for playing back audio.
/// 
/// Can play, loop, pause a scroll through audio. See ``AudioStream`` and ``AudioStreamOggVorbis`` for usage.
open class AudioStreamPlayback: RefCounted {
    override open class var godotClassName: StringName { "AudioStreamPlayback" }
    /* Methods */
    /// Override this method to customize what happens when the playback starts at the given position, such as by calling ``AudioStreamPlayer/play(fromPosition:)``.
    @_documentation(visibility: public)
    open func _start(fromPos: Double) {
    }
    
    /// Override this method to customize what happens when the playback is stopped, such as by calling ``AudioStreamPlayer/stop()``.
    @_documentation(visibility: public)
    open func _stop() {
    }
    
    /// Overridable method. Should return `true` if this playback is active and playing its audio stream.
    @_documentation(visibility: public)
    open func _isPlaying() -> Bool {
        return false
    }
    
    /// Overridable method. Should return how many times this audio stream has looped. Most built-in playbacks always return `0`.
    @_documentation(visibility: public)
    open func _getLoopCount() -> Int32 {
        return 0
    }
    
    /// Overridable method. Should return the current progress along the audio stream, in seconds.
    @_documentation(visibility: public)
    open func _getPlaybackPosition() -> Double {
        return 0.0
    }
    
    /// Override this method to customize what happens when seeking this audio stream at the given `position`, such as by calling ``AudioStreamPlayer/seek(toPosition:)``.
    @_documentation(visibility: public)
    open func _seek(position: Double) {
    }
    
    /// Override this method to customize how the audio stream is mixed. This method is called even if the playback is not active.
    /// 
    /// > Note: It is not useful to override this method in GDScript or C#. Only GDExtension can take advantage of it.
    /// 
    @_documentation(visibility: public)
    open func _mix(buffer: OpaquePointer?, rateScale: Double, frames: Int32) -> Int32 {
        return 0
    }
    
    /// Overridable method. Called whenever the audio stream is mixed if the playback is active and ``AudioServer/setEnableTaggingUsedAudioStreams(enable:)`` has been set to `true`. Editor plugins may use this method to "tag" the current position along the audio stream and display it in a preview.
    @_documentation(visibility: public)
    open func _tagUsedStreams() {
    }
    
    /// Set the current value of a playback parameter by name (see ``AudioStream/_getParameterList()``).
    @_documentation(visibility: public)
    open func _setParameter(name: StringName, value: Variant) {
    }
    
    /// Return the current value of a playback parameter by name (see ``AudioStream/_getParameterList()``).
    @_documentation(visibility: public)
    open func _getParameter(name: StringName) -> Variant {
        return Variant ()
    }
    
    fileprivate static var method_set_sample_playback: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_sample_playback")
        return withUnsafePointer(to: &AudioStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3195455091)!
            }
            
        }
        
    }()
    
    /// Associates ``AudioSamplePlayback`` to this ``AudioStreamPlayback`` for playing back the audio sample of this stream.
    public final func setSamplePlayback(playbackSample: AudioSamplePlayback?) {
        withUnsafePointer(to: playbackSample?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlayback.method_set_sample_playback, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_sample_playback: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_sample_playback")
        return withUnsafePointer(to: &AudioStreamPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3482738536)!
            }
            
        }
        
    }()
    
    /// Returns the ``AudioSamplePlayback`` associated with this ``AudioStreamPlayback`` for playing back the audio sample of this stream.
    public final func getSamplePlayback() -> AudioSamplePlayback? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(AudioStreamPlayback.method_get_sample_playback, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
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
    let swiftObject = Unmanaged<AudioStreamPlayback>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getLoopCount ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _AudioStreamPlayback_proxy_get_parameter (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<AudioStreamPlayback>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getParameter (name: StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Variant
    ret.content = Variant.zero
}

func _AudioStreamPlayback_proxy_get_playback_position (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<AudioStreamPlayback>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getPlaybackPosition ()
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _AudioStreamPlayback_proxy_is_playing (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<AudioStreamPlayback>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._isPlaying ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _AudioStreamPlayback_proxy_mix (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<AudioStreamPlayback>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._mix (buffer: args [0]!.assumingMemoryBound (to: OpaquePointer?.self).pointee, rateScale: args [1]!.assumingMemoryBound (to: Double.self).pointee, frames: args [2]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _AudioStreamPlayback_proxy_seek (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<AudioStreamPlayback>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._seek (position: args [0]!.assumingMemoryBound (to: Double.self).pointee)
}

func _AudioStreamPlayback_proxy_set_parameter (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<AudioStreamPlayback>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._setParameter (name: StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), value: args [1]!.assumingMemoryBound (to: Variant.self).pointee)
}

func _AudioStreamPlayback_proxy_start (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<AudioStreamPlayback>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._start (fromPos: args [0]!.assumingMemoryBound (to: Double.self).pointee)
}

func _AudioStreamPlayback_proxy_stop (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<AudioStreamPlayback>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._stop ()
}

func _AudioStreamPlayback_proxy_tag_used_streams (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<AudioStreamPlayback>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._tagUsedStreams ()
}

