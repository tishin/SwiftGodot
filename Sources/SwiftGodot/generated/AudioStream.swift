// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Base class for audio streams.
/// 
/// Base class for audio streams. Audio streams are used for sound effects and music playback, and support WAV (via ``AudioStreamWAV``) and Ogg (via ``AudioStreamOggVorbis``) file formats.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``parameterListChanged``
open class AudioStream: Resource {
    override open class var godotClassName: StringName { "AudioStream" }
    /* Methods */
    /// Override this method to customize the returned value of ``instantiatePlayback()``. Should returned a new ``AudioStreamPlayback`` created when the stream is played (such as by an ``AudioStreamPlayer``)..
    @_documentation(visibility: public)
    open func _instantiatePlayback() -> AudioStreamPlayback? {
        return AudioStreamPlayback ()
    }
    
    /// Override this method to customize the name assigned to this audio stream. Unused by the engine.
    @_documentation(visibility: public)
    open func _getStreamName() -> String {
        return String ()
    }
    
    /// Override this method to customize the returned value of ``getLength()``. Should return the length of this audio stream, in seconds.
    @_documentation(visibility: public)
    open func _getLength() -> Double {
        return 0.0
    }
    
    /// Override this method to customize the returned value of ``isMonophonic()``. Should return `true` if this audio stream only supports one channel.
    @_documentation(visibility: public)
    open func _isMonophonic() -> Bool {
        return false
    }
    
    /// Overridable method. Should return the tempo of this audio stream, in beats per minute (BPM). Used by the engine to determine the position of every beat.
    /// 
    /// Ideally, the returned value should be based off the stream's sample rate (``AudioStreamWAV/mixRate``, for example).
    /// 
    @_documentation(visibility: public)
    open func _getBpm() -> Double {
        return 0.0
    }
    
    /// Overridable method. Should return the total number of beats of this audio stream. Used by the engine to determine the position of every beat.
    /// 
    /// Ideally, the returned value should be based off the stream's sample rate (``AudioStreamWAV/mixRate``, for example).
    /// 
    @_documentation(visibility: public)
    open func _getBeatCount() -> Int32 {
        return 0
    }
    
    /// Return the controllable parameters of this stream. This array contains dictionaries with a property info description format (see ``Object/getPropertyList()``). Additionally, the default value for this parameter must be added tho each dictionary in "default_value" field.
    @_documentation(visibility: public)
    open func _getParameterList() -> VariantCollection<GDictionary> {
        return VariantCollection<GDictionary>()
    }
    
    fileprivate static var method_get_length: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_length")
        return withUnsafePointer(to: &AudioStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the length of the audio stream in seconds.
    public final func getLength() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStream.method_get_length, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_is_monophonic: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_monophonic")
        return withUnsafePointer(to: &AudioStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this audio stream only supports one channel (_monophony_), or `false` if the audio stream supports two or more channels (_polyphony_).
    public final func isMonophonic() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStream.method_is_monophonic, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_instantiate_playback: GDExtensionMethodBindPtr = {
        let methodName = StringName("instantiate_playback")
        return withUnsafePointer(to: &AudioStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 210135309)!
            }
            
        }
        
    }()
    
    /// Returns a newly created ``AudioStreamPlayback`` intended to play this audio stream. Useful for when you want to extend ``_instantiatePlayback()`` but call ``instantiatePlayback()`` from an internally held AudioStream subresource. An example of this can be found in the source code for `AudioStreamRandomPitch::instantiate_playback`.
    public final func instantiatePlayback() -> AudioStreamPlayback? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(AudioStream.method_instantiate_playback, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_can_be_sampled: GDExtensionMethodBindPtr = {
        let methodName = StringName("can_be_sampled")
        return withUnsafePointer(to: &AudioStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns if the current ``AudioStream`` can be used as a sample. Only static streams can be sampled.
    public final func canBeSampled() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStream.method_can_be_sampled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_generate_sample: GDExtensionMethodBindPtr = {
        let methodName = StringName("generate_sample")
        return withUnsafePointer(to: &AudioStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2646048999)!
            }
            
        }
        
    }()
    
    /// Generates an ``AudioSample`` based on the current stream.
    public final func generateSample() -> AudioSample? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(AudioStream.method_generate_sample, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_is_meta_stream: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_meta_stream")
        return withUnsafePointer(to: &AudioStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the stream is a collection of other streams, `false` otherwise.
    public final func isMetaStream() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStream.method_is_meta_stream, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_beat_count":
                return _AudioStream_proxy_get_beat_count
            case "_get_bpm":
                return _AudioStream_proxy_get_bpm
            case "_get_length":
                return _AudioStream_proxy_get_length
            case "_get_parameter_list":
                return _AudioStream_proxy_get_parameter_list
            case "_get_stream_name":
                return _AudioStream_proxy_get_stream_name
            case "_instantiate_playback":
                return _AudioStream_proxy_instantiate_playback
            case "_is_monophonic":
                return _AudioStream_proxy_is_monophonic
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
    // Signals 
    /// Signal to be emitted to notify when the parameter list changed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.parameterListChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var parameterListChanged: SimpleSignal { SimpleSignal (target: self, signalName: "parameter_list_changed") }
    
}

// Support methods for proxies
func _AudioStream_proxy_get_beat_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<AudioStream>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getBeatCount ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _AudioStream_proxy_get_bpm (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<AudioStream>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getBpm ()
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _AudioStream_proxy_get_length (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<AudioStream>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getLength ()
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _AudioStream_proxy_get_parameter_list (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<AudioStream>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getParameterList ()
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Dictionary
}

func _AudioStream_proxy_get_stream_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<AudioStream>.fromOpaque(instance).takeUnretainedValue()
    let ret = GString (swiftObject._getStreamName ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _AudioStream_proxy_instantiate_playback (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<AudioStream>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._instantiatePlayback ()
    retPtr!.storeBytes (of: ret?.handle, as: UnsafeRawPointer?.self) // AudioStreamPlayback
}

func _AudioStream_proxy_is_monophonic (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<AudioStream>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._isMonophonic ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}
