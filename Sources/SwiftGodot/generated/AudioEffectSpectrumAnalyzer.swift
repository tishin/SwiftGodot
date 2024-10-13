// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Audio effect that can be used for real-time audio visualizations.
/// 
/// This audio effect does not affect sound output, but can be used for real-time audio visualizations.
/// 
/// This resource configures an ``AudioEffectSpectrumAnalyzerInstance``, which performs the actual analysis at runtime. An instance can be acquired with ``AudioServer/getBusEffectInstance(busIdx:effectIdx:channel:)``.
/// 
/// See also ``AudioStreamGenerator`` for procedurally generating sounds.
/// 
open class AudioEffectSpectrumAnalyzer: AudioEffect {
    override open class var godotClassName: StringName { "AudioEffectSpectrumAnalyzer" }
    public enum FFTSize: Int64, CaseIterable, CustomDebugStringConvertible {
        /// Use a buffer of 256 samples for the Fast Fourier transform. Lowest latency, but least stable over time.
        case fftSize256 = 0 // FFT_SIZE_256
        /// Use a buffer of 512 samples for the Fast Fourier transform. Low latency, but less stable over time.
        case fftSize512 = 1 // FFT_SIZE_512
        /// Use a buffer of 1024 samples for the Fast Fourier transform. This is a compromise between latency and stability over time.
        case fftSize1024 = 2 // FFT_SIZE_1024
        /// Use a buffer of 2048 samples for the Fast Fourier transform. High latency, but stable over time.
        case fftSize2048 = 3 // FFT_SIZE_2048
        /// Use a buffer of 4096 samples for the Fast Fourier transform. Highest latency, but most stable over time.
        case fftSize4096 = 4 // FFT_SIZE_4096
        /// Represents the size of the ``AudioEffectSpectrumAnalyzer/FFTSize`` enum.
        case max = 5 // FFT_SIZE_MAX
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .fftSize256: return ".fftSize256"
                case .fftSize512: return ".fftSize512"
                case .fftSize1024: return ".fftSize1024"
                case .fftSize2048: return ".fftSize2048"
                case .fftSize4096: return ".fftSize4096"
                case .max: return ".max"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// The length of the buffer to keep (in seconds). Higher values keep data around for longer, but require more memory.
    final public var bufferLength: Double {
        get {
            return get_buffer_length ()
        }
        
        set {
            set_buffer_length (newValue)
        }
        
    }
    
    final public var tapBackPos: Double {
        get {
            return get_tap_back_pos ()
        }
        
        set {
            set_tap_back_pos (newValue)
        }
        
    }
    
    /// The size of the <a href="https://en.wikipedia.org/wiki/Fast_Fourier_transform">Fast Fourier transform</a> buffer. Higher values smooth out the spectrum analysis over time, but have greater latency. The effects of this higher latency are especially noticeable with sudden amplitude changes.
    final public var fftSize: AudioEffectSpectrumAnalyzer.FFTSize {
        get {
            return get_fft_size ()
        }
        
        set {
            set_fft_size (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_buffer_length: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_buffer_length")
        return withUnsafePointer(to: &AudioEffectSpectrumAnalyzer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_buffer_length(_ seconds: Double) {
        withUnsafePointer(to: seconds) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectSpectrumAnalyzer.method_set_buffer_length, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_buffer_length: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_buffer_length")
        return withUnsafePointer(to: &AudioEffectSpectrumAnalyzer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_buffer_length() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectSpectrumAnalyzer.method_get_buffer_length, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_tap_back_pos: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_tap_back_pos")
        return withUnsafePointer(to: &AudioEffectSpectrumAnalyzer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tap_back_pos(_ seconds: Double) {
        withUnsafePointer(to: seconds) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectSpectrumAnalyzer.method_set_tap_back_pos, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_tap_back_pos: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_tap_back_pos")
        return withUnsafePointer(to: &AudioEffectSpectrumAnalyzer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tap_back_pos() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectSpectrumAnalyzer.method_get_tap_back_pos, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_fft_size: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_fft_size")
        return withUnsafePointer(to: &AudioEffectSpectrumAnalyzer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1202879215)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fft_size(_ size: AudioEffectSpectrumAnalyzer.FFTSize) {
        withUnsafePointer(to: size.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectSpectrumAnalyzer.method_set_fft_size, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_fft_size: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_fft_size")
        return withUnsafePointer(to: &AudioEffectSpectrumAnalyzer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3925405343)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fft_size() -> AudioEffectSpectrumAnalyzer.FFTSize {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AudioEffectSpectrumAnalyzer.method_get_fft_size, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return AudioEffectSpectrumAnalyzer.FFTSize (rawValue: _result)!
    }
    
}

