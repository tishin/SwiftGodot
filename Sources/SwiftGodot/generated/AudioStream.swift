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


/// Base class for audio streams.
/// 
/// Base class for audio streams. Audio streams are used for sound effects and music playback, and support WAV (via ``AudioStreamWAV``) and Ogg (via ``AudioStreamOggVorbis``) file formats.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``parameterListChanged``
open class AudioStream: Resource {
    private static var className = StringName("AudioStream")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__instantiate_playback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_instantiate_playback")
        return withUnsafePointer(to: &AudioStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3093715447)!
            }
            
        }
        
    }()
    
    /// Override this method to customize the returned value of ``instantiatePlayback()``. Should return a new ``AudioStreamPlayback`` created when the stream is played (such as by an ``AudioStreamPlayer``).
    @_documentation(visibility: public)
    open func _instantiatePlayback() -> AudioStreamPlayback? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(AudioStream.method__instantiate_playback, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__get_stream_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_stream_name")
        return withUnsafePointer(to: &AudioStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Override this method to customize the name assigned to this audio stream. Unused by the engine.
    @_documentation(visibility: public)
    open func _getStreamName() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(AudioStream.method__get_stream_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__get_length: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_length")
        return withUnsafePointer(to: &AudioStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Override this method to customize the returned value of ``getLength()``. Should return the length of this audio stream, in seconds.
    @_documentation(visibility: public)
    open func _getLength() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStream.method__get_length, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__is_monophonic: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_monophonic")
        return withUnsafePointer(to: &AudioStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Override this method to customize the returned value of ``isMonophonic()``. Should return `true` if this audio stream only supports one channel.
    @_documentation(visibility: public)
    open func _isMonophonic() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStream.method__is_monophonic, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_bpm: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_bpm")
        return withUnsafePointer(to: &AudioStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Overridable method. Should return the tempo of this audio stream, in beats per minute (BPM). Used by the engine to determine the position of every beat.
    /// 
    /// Ideally, the returned value should be based off the stream's sample rate (``AudioStreamWAV/mixRate``, for example).
    /// 
    @_documentation(visibility: public)
    open func _getBpm() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStream.method__get_bpm, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_beat_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_beat_count")
        return withUnsafePointer(to: &AudioStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Overridable method. Should return the total number of beats of this audio stream. Used by the engine to determine the position of every beat.
    /// 
    /// Ideally, the returned value should be based off the stream's sample rate (``AudioStreamWAV/mixRate``, for example).
    /// 
    @_documentation(visibility: public)
    open func _getBeatCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AudioStream.method__get_beat_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_parameter_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_parameter_list")
        return withUnsafePointer(to: &AudioStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Return the controllable parameters of this stream. This array contains dictionaries with a property info description format (see ``Object/getPropertyList()``). Additionally, the default value for this parameter must be added tho each dictionary in "default_value" field.
    @_documentation(visibility: public)
    open func _getParameterList() -> TypedArray<VariantDictionary> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(AudioStream.method__get_parameter_list, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method__has_loop: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_has_loop")
        return withUnsafePointer(to: &AudioStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Override this method to return `true` if this stream has a loop.
    @_documentation(visibility: public)
    open func _hasLoop() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStream.method__has_loop, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_bar_beats: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_bar_beats")
        return withUnsafePointer(to: &AudioStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Override this method to return the bar beats of this stream.
    @_documentation(visibility: public)
    open func _getBarBeats() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AudioStream.method__get_bar_beats, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_length: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_length")
        return withUnsafePointer(to: &AudioStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the length of the audio stream in seconds.
    public final func getLength() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStream.method_get_length, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_monophonic: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_monophonic")
        return withUnsafePointer(to: &AudioStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this audio stream only supports one channel (_monophony_), or `false` if the audio stream supports two or more channels (_polyphony_).
    public final func isMonophonic() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStream.method_is_monophonic, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_instantiate_playback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("instantiate_playback")
        return withUnsafePointer(to: &AudioStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 210135309)!
            }
            
        }
        
    }()
    
    /// Returns a newly created ``AudioStreamPlayback`` intended to play this audio stream. Useful for when you want to extend ``_instantiatePlayback()`` but call ``instantiatePlayback()`` from an internally held AudioStream subresource. An example of this can be found in the source code for `AudioStreamRandomPitch::instantiate_playback`.
    public final func instantiatePlayback() -> AudioStreamPlayback? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(AudioStream.method_instantiate_playback, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_can_be_sampled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("can_be_sampled")
        return withUnsafePointer(to: &AudioStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns if the current ``AudioStream`` can be used as a sample. Only static streams can be sampled.
    public final func canBeSampled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStream.method_can_be_sampled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_generate_sample: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("generate_sample")
        return withUnsafePointer(to: &AudioStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2646048999)!
            }
            
        }
        
    }()
    
    /// Generates an ``AudioSample`` based on the current stream.
    public final func generateSample() -> AudioSample? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(AudioStream.method_generate_sample, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_is_meta_stream: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_meta_stream")
        return withUnsafePointer(to: &AudioStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the stream is a collection of other streams, `false` otherwise.
    public final func isMetaStream() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStream.method_is_meta_stream, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_bar_beats":
                return _AudioStream_proxy_get_bar_beats
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
            case "_has_loop":
                return _AudioStream_proxy_has_loop
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
func _AudioStream_proxy_get_bar_beats (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AudioStream else { return }
    let ret = swiftObject._getBarBeats ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _AudioStream_proxy_get_beat_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AudioStream else { return }
    let ret = swiftObject._getBeatCount ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _AudioStream_proxy_get_bpm (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AudioStream else { return }
    let ret = swiftObject._getBpm ()
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _AudioStream_proxy_get_length (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AudioStream else { return }
    let ret = swiftObject._getLength ()
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _AudioStream_proxy_get_parameter_list (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AudioStream else { return }
    let ret = swiftObject._getParameterList ()
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Dictionary
}

func _AudioStream_proxy_get_stream_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AudioStream else { return }
    let ret = GString (swiftObject._getStreamName ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _AudioStream_proxy_has_loop (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AudioStream else { return }
    let ret = swiftObject._hasLoop ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _AudioStream_proxy_instantiate_playback (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AudioStream else { return }
    let ret = swiftObject._instantiatePlayback ()
    retPtr!.storeBytes (of: ret?.handle, as: UnsafeRawPointer?.self) // AudioStreamPlayback
}

func _AudioStream_proxy_is_monophonic (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AudioStream else { return }
    let ret = swiftObject._isMonophonic ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

