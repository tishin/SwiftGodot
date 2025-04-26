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
    private static var className = StringName("AudioStreamGenerator")
    override open class var godotClassName: StringName { className }
    public enum AudioStreamGeneratorMixRate: Int64, CaseIterable {
        /// Current ``AudioServer`` output mixing rate.
        case output = 0 // MIX_RATE_OUTPUT
        /// Current ``AudioServer`` input mixing rate.
        case input = 1 // MIX_RATE_INPUT
        /// Custom mixing rate, specified by ``mixRate``.
        case custom = 2 // MIX_RATE_CUSTOM
        /// Maximum value for the mixing rate mode enum.
        case max = 3 // MIX_RATE_MAX
    }
    
    
    /* Properties */
    
    /// Mixing rate mode. If set to ``AudioStreamGeneratorMixRate/custom``, ``mixRate`` is used, otherwise current ``AudioServer`` mixing rate is used.
    final public var mixRateMode: AudioStreamGenerator.AudioStreamGeneratorMixRate {
        get {
            return get_mix_rate_mode ()
        }
        
        set {
            set_mix_rate_mode (newValue)
        }
        
    }
    
    /// The sample rate to use (in Hz). Higher values are more demanding for the CPU to generate, but result in better quality.
    /// 
    /// In games, common sample rates in use are `11025`, `16000`, `22050`, `32000`, `44100`, and `48000`.
    /// 
    /// According to the <a href="https://en.wikipedia.org/wiki/Nyquist%E2%80%93Shannon_sampling_theorem">Nyquist-Shannon sampling theorem</a>, there is no quality difference to human hearing when going past 40,000 Hz (since most humans can only hear up to ~20,000 Hz, often less). If you are generating lower-pitched sounds such as voices, lower sample rates such as `32000` or `22050` may be usable with no loss in quality.
    /// 
    /// > Note: ``AudioStreamGenerator`` is not automatically resampling input data, to produce expected result ``mixRateMode`` should match the sampling rate of input data.
    /// 
    /// > Note: If you are using ``AudioEffectCapture`` as the source of your data, set ``mixRateMode`` to ``AudioStreamGeneratorMixRate/input`` or ``AudioStreamGeneratorMixRate/output`` to automatically match current ``AudioServer`` mixing rate.
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
    fileprivate static let method_set_mix_rate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_mix_rate")
        return withUnsafePointer(to: &AudioStreamGenerator.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mix_rate(_ hz: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: hz) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamGenerator.method_set_mix_rate, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_mix_rate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_mix_rate")
        return withUnsafePointer(to: &AudioStreamGenerator.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mix_rate() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamGenerator.method_get_mix_rate, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_mix_rate_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_mix_rate_mode")
        return withUnsafePointer(to: &AudioStreamGenerator.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3354885803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mix_rate_mode(_ mode: AudioStreamGenerator.AudioStreamGeneratorMixRate) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamGenerator.method_set_mix_rate_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_mix_rate_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_mix_rate_mode")
        return withUnsafePointer(to: &AudioStreamGenerator.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3537132591)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mix_rate_mode() -> AudioStreamGenerator.AudioStreamGeneratorMixRate {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AudioStreamGenerator.method_get_mix_rate_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return AudioStreamGenerator.AudioStreamGeneratorMixRate (rawValue: _result)!
    }
    
    fileprivate static let method_set_buffer_length: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_buffer_length")
        return withUnsafePointer(to: &AudioStreamGenerator.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_buffer_length(_ seconds: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: seconds) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamGenerator.method_set_buffer_length, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_buffer_length: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_buffer_length")
        return withUnsafePointer(to: &AudioStreamGenerator.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_buffer_length() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamGenerator.method_get_buffer_length, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

