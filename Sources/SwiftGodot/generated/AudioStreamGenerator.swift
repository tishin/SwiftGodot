// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// An audio stream with utilities for procedural sound generation.
/// 
/// ``AudioStreamGenerator`` is a type of audio stream that does not play back sounds on its own; instead, it expects a script to generate audio data for it. See also ``AudioStreamGeneratorPlayback``.
/// 
/// Here's a sample on how to use it to generate a sine wave:
/// 
/// In the example above, the "AudioStreamPlayer" node must use an ``AudioStreamGenerator`` as its stream. The `fill_buffer` function provides audio data for approximating a sine wave.
/// 
/// See also ``AudioEffectSpectrumAnalyzer`` for performing real-time audio spectrum analysis.
/// 
/// > Note: Due to performance constraints, this class is best used from C# or from a compiled language via GDExtension. If you still want to use this class from GDScript, consider using a lower ``mixRate`` such as 11,025 Hz or 22,050 Hz.
/// 
open class AudioStreamGenerator: AudioStream {
    override open class var godotClassName: StringName { "AudioStreamGenerator" }
    
    /* Properties */
    
    /// The sample rate to use (in Hz). Higher values are more demanding for the CPU to generate, but result in better quality.
    /// 
    /// In games, common sample rates in use are `11025`, `16000`, `22050`, `32000`, `44100`, and `48000`.
    /// 
    /// According to the <a href="https://en.wikipedia.org/wiki/Nyquist%E2%80%93Shannon_sampling_theorem">Nyquist-Shannon sampling theorem</a>, there is no quality difference to human hearing when going past 40,000 Hz (since most humans can only hear up to ~20,000 Hz, often less). If you are generating lower-pitched sounds such as voices, lower sample rates such as `32000` or `22050` may be usable with no loss in quality.
    /// 
    final public var mixRate: Double {
        get {
            return get_mix_rate ()
        }
        
        set {
            set_mix_rate (newValue)
        }
        
    }
    
    /// The length of the buffer to generate (in seconds). Lower values result in less latency, but require the script to generate audio data faster, resulting in increased CPU usage and more risk for audio cracking if the CPU can't keep up.
    final public var bufferLength: Double {
        get {
            return get_buffer_length ()
        }
        
        set {
            set_buffer_length (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_mix_rate: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_mix_rate")
        return withUnsafePointer (to: &AudioStreamGenerator.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mix_rate (_ hz: Double) {
        #if true
        
        var copy_hz = hz
        
        gi.object_method_bind_ptrcall_v (AudioStreamGenerator.method_set_mix_rate, UnsafeMutableRawPointer (mutating: handle), nil, &copy_hz)
        
        #else
        
        var copy_hz = hz
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_hz) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamGenerator.method_set_mix_rate, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_mix_rate: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_mix_rate")
        return withUnsafePointer (to: &AudioStreamGenerator.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mix_rate ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (AudioStreamGenerator.method_get_mix_rate, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_buffer_length: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_buffer_length")
        return withUnsafePointer (to: &AudioStreamGenerator.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_buffer_length (_ seconds: Double) {
        #if true
        
        var copy_seconds = seconds
        
        gi.object_method_bind_ptrcall_v (AudioStreamGenerator.method_set_buffer_length, UnsafeMutableRawPointer (mutating: handle), nil, &copy_seconds)
        
        #else
        
        var copy_seconds = seconds
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_seconds) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (AudioStreamGenerator.method_set_buffer_length, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_buffer_length: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_buffer_length")
        return withUnsafePointer (to: &AudioStreamGenerator.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_buffer_length ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (AudioStreamGenerator.method_get_buffer_length, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

