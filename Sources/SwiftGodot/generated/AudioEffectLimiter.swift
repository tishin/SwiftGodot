// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Adds a soft-clip limiter audio effect to an Audio bus.
/// 
/// A limiter is similar to a compressor, but it's less flexible and designed to disallow sound going over a given dB threshold. Adding one in the Master bus is always recommended to reduce the effects of clipping.
/// 
/// Soft clipping starts to reduce the peaks a little below the threshold level and progressively increases its effect as the input level increases such that the threshold is never exceeded.
/// 
open class AudioEffectLimiter: AudioEffect {
    override open class var godotClassName: StringName { "AudioEffectLimiter" }
    
    /* Properties */
    
    /// The waveform's maximum allowed value, in decibels. Value can range from -20 to -0.1.
    final public var ceilingDb: Double {
        get {
            return get_ceiling_db ()
        }
        
        set {
            set_ceiling_db (newValue)
        }
        
    }
    
    /// Threshold from which the limiter begins to be active, in decibels. Value can range from -30 to 0.
    final public var thresholdDb: Double {
        get {
            return get_threshold_db ()
        }
        
        set {
            set_threshold_db (newValue)
        }
        
    }
    
    /// Applies a gain to the limited waves, in decibels. Value can range from 0 to 6.
    final public var softClipDb: Double {
        get {
            return get_soft_clip_db ()
        }
        
        set {
            set_soft_clip_db (newValue)
        }
        
    }
    
    final public var softClipRatio: Double {
        get {
            return get_soft_clip_ratio ()
        }
        
        set {
            set_soft_clip_ratio (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_ceiling_db: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_ceiling_db")
        return withUnsafePointer(to: &AudioEffectLimiter.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioEffectLimiter.method_set_ceiling_db, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_ceiling_db: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_ceiling_db")
        return withUnsafePointer(to: &AudioEffectLimiter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_ceiling_db() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectLimiter.method_get_ceiling_db, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_threshold_db: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_threshold_db")
        return withUnsafePointer(to: &AudioEffectLimiter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_threshold_db(_ threshold: Double) {
        withUnsafePointer(to: threshold) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectLimiter.method_set_threshold_db, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_threshold_db: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_threshold_db")
        return withUnsafePointer(to: &AudioEffectLimiter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_threshold_db() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectLimiter.method_get_threshold_db, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_soft_clip_db: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_soft_clip_db")
        return withUnsafePointer(to: &AudioEffectLimiter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_soft_clip_db(_ softClip: Double) {
        withUnsafePointer(to: softClip) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectLimiter.method_set_soft_clip_db, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_soft_clip_db: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_soft_clip_db")
        return withUnsafePointer(to: &AudioEffectLimiter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_soft_clip_db() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectLimiter.method_get_soft_clip_db, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_soft_clip_ratio: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_soft_clip_ratio")
        return withUnsafePointer(to: &AudioEffectLimiter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_soft_clip_ratio(_ softClip: Double) {
        withUnsafePointer(to: softClip) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectLimiter.method_set_soft_clip_ratio, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_soft_clip_ratio: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_soft_clip_ratio")
        return withUnsafePointer(to: &AudioEffectLimiter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_soft_clip_ratio() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectLimiter.method_get_soft_clip_ratio, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}
