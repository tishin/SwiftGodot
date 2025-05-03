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


/// Adds a compressor audio effect to an audio bus.
/// 
/// Reduces sounds that exceed a certain threshold level, smooths out the dynamics and increases the overall volume.
/// 
/// 
/// Dynamic range compressor reduces the level of the sound when the amplitude goes over a certain threshold in Decibels. One of the main uses of a compressor is to increase the dynamic range by clipping as little as possible (when sound goes over 0dB).
/// 
/// Compressor has many uses in the mix:
/// 
/// - In the Master bus to compress the whole output (although an ``AudioEffectLimiter`` is probably better).
/// 
/// - In voice channels to ensure they sound as balanced as possible.
/// 
/// - Sidechained. This can reduce the sound level sidechained with another audio bus for threshold detection. This technique is common in video game mixing to the level of music and SFX while voices are being heard.
/// 
/// - Accentuates transients by using a wider attack, making effects sound more punchy.
/// 
open class AudioEffectCompressor: AudioEffect {
    private static var className = StringName("AudioEffectCompressor")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The level above which compression is applied to the audio. Value can range from -60 to 0.
    final public var threshold: Double {
        get {
            return get_threshold ()
        }
        
        set {
            set_threshold (newValue)
        }
        
    }
    
    /// Amount of compression applied to the audio once it passes the threshold level. The higher the ratio, the more the loud parts of the audio will be compressed. Value can range from 1 to 48.
    final public var ratio: Double {
        get {
            return get_ratio ()
        }
        
        set {
            set_ratio (newValue)
        }
        
    }
    
    /// Gain applied to the output signal.
    final public var gain: Double {
        get {
            return get_gain ()
        }
        
        set {
            set_gain (newValue)
        }
        
    }
    
    /// Compressor's reaction time when the signal exceeds the threshold, in microseconds. Value can range from 20 to 2000.
    final public var attackUs: Double {
        get {
            return get_attack_us ()
        }
        
        set {
            set_attack_us (newValue)
        }
        
    }
    
    /// Compressor's delay time to stop reducing the signal after the signal level falls below the threshold, in milliseconds. Value can range from 20 to 2000.
    final public var releaseMs: Double {
        get {
            return get_release_ms ()
        }
        
        set {
            set_release_ms (newValue)
        }
        
    }
    
    /// Balance between original signal and effect signal. Value can range from 0 (totally dry) to 1 (totally wet).
    final public var mix: Double {
        get {
            return get_mix ()
        }
        
        set {
            set_mix (newValue)
        }
        
    }
    
    /// Reduce the sound level using another audio bus for threshold detection.
    final public var sidechain: StringName {
        get {
            return get_sidechain ()
        }
        
        set {
            set_sidechain (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_threshold: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_threshold")
        return withUnsafePointer(to: &AudioEffectCompressor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_threshold(_ threshold: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: threshold) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectCompressor.method_set_threshold, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_threshold: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_threshold")
        return withUnsafePointer(to: &AudioEffectCompressor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_threshold() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectCompressor.method_get_threshold, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_ratio: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_ratio")
        return withUnsafePointer(to: &AudioEffectCompressor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_ratio(_ ratio: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: ratio) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectCompressor.method_set_ratio, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_ratio: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_ratio")
        return withUnsafePointer(to: &AudioEffectCompressor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_ratio() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectCompressor.method_get_ratio, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_gain: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_gain")
        return withUnsafePointer(to: &AudioEffectCompressor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_gain(_ gain: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: gain) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectCompressor.method_set_gain, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_gain: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_gain")
        return withUnsafePointer(to: &AudioEffectCompressor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_gain() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectCompressor.method_get_gain, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_attack_us: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_attack_us")
        return withUnsafePointer(to: &AudioEffectCompressor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_attack_us(_ attackUs: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: attackUs) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectCompressor.method_set_attack_us, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_attack_us: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_attack_us")
        return withUnsafePointer(to: &AudioEffectCompressor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_attack_us() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectCompressor.method_get_attack_us, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_release_ms: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_release_ms")
        return withUnsafePointer(to: &AudioEffectCompressor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_release_ms(_ releaseMs: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: releaseMs) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectCompressor.method_set_release_ms, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_release_ms: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_release_ms")
        return withUnsafePointer(to: &AudioEffectCompressor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_release_ms() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectCompressor.method_get_release_ms, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_mix: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_mix")
        return withUnsafePointer(to: &AudioEffectCompressor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mix(_ mix: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mix) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectCompressor.method_set_mix, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_mix: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_mix")
        return withUnsafePointer(to: &AudioEffectCompressor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mix() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectCompressor.method_get_mix, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_sidechain: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sidechain")
        return withUnsafePointer(to: &AudioEffectCompressor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sidechain(_ sidechain: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: sidechain.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectCompressor.method_set_sidechain, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sidechain: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sidechain")
        return withUnsafePointer(to: &AudioEffectCompressor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sidechain() -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(AudioEffectCompressor.method_get_sidechain, handle, nil, &_result.content)
        return _result
    }
    
}

