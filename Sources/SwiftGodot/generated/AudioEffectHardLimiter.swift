// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Adds a hard limiter audio effect to an Audio bus.
/// 
/// A limiter is an effect designed to disallow sound from going over a given dB threshold. Hard limiters predict volume peaks, and will smoothly apply gain reduction when a peak crosses the ceiling threshold to prevent clipping and distortion. It preserves the waveform and prevents it from crossing the ceiling threshold. Adding one in the Master bus is recommended as a safety measure to prevent sudden volume peaks from occurring, and to prevent distortion caused by clipping.
open class AudioEffectHardLimiter: AudioEffect {
    override open class var godotClassName: StringName { "AudioEffectHardLimiter" }
    
    /* Properties */
    
    /// Gain to apply before limiting, in decibels.
    final public var preGainDb: Double {
        get {
            return get_pre_gain_db ()
        }
        
        set {
            set_pre_gain_db (newValue)
        }
        
    }
    
    /// The waveform's maximum allowed value, in decibels. This value can range from `-24.0` to `0.0`.
    /// 
    /// The default value of `-0.3` prevents potential inter-sample peaks (ISP) from crossing over 0 dB, which can cause slight distortion on some older hardware.
    /// 
    final public var ceilingDb: Double {
        get {
            return get_ceiling_db ()
        }
        
        set {
            set_ceiling_db (newValue)
        }
        
    }
    
    /// Time it takes in seconds for the gain reduction to fully release.
    final public var release: Double {
        get {
            return get_release ()
        }
        
        set {
            set_release (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_ceiling_db: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_ceiling_db")
        return withUnsafePointer(to: &AudioEffectHardLimiter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_ceiling_db(_ ceiling: Double) {
        withUnsafePointer(to: ceiling) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectHardLimiter.method_set_ceiling_db, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_ceiling_db: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_ceiling_db")
        return withUnsafePointer(to: &AudioEffectHardLimiter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_ceiling_db() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectHardLimiter.method_get_ceiling_db, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_pre_gain_db: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_pre_gain_db")
        return withUnsafePointer(to: &AudioEffectHardLimiter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pre_gain_db(_ pPreGain: Double) {
        withUnsafePointer(to: pPreGain) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectHardLimiter.method_set_pre_gain_db, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_pre_gain_db: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_pre_gain_db")
        return withUnsafePointer(to: &AudioEffectHardLimiter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pre_gain_db() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectHardLimiter.method_get_pre_gain_db, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_release: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_release")
        return withUnsafePointer(to: &AudioEffectHardLimiter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_release(_ pRelease: Double) {
        withUnsafePointer(to: pRelease) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectHardLimiter.method_set_release, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_release: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_release")
        return withUnsafePointer(to: &AudioEffectHardLimiter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_release() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectHardLimiter.method_get_release, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

