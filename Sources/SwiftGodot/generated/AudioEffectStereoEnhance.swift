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


/// An audio effect that can be used to adjust the intensity of stereo panning.
/// 
/// An audio effect that can be used to adjust the intensity of stereo panning.
open class AudioEffectStereoEnhance: AudioEffect {
    private static var className = StringName("AudioEffectStereoEnhance")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Amplifies the difference between stereo channels, increasing or decreasing existing panning. A value of 0.0 will downmix stereo to mono. Does not affect a mono signal.
    final public var panPullout: Double {
        get {
            return get_pan_pullout ()
        }
        
        set {
            set_pan_pullout (newValue)
        }
        
    }
    
    /// Widens sound stage through phase shifting in conjunction with ``surround``. Just delays the right channel if ``surround`` is 0.
    final public var timePulloutMs: Double {
        get {
            return get_time_pullout ()
        }
        
        set {
            set_time_pullout (newValue)
        }
        
    }
    
    /// Widens sound stage through phase shifting in conjunction with ``timePulloutMs``. Just pans sound to the left channel if ``timePulloutMs`` is 0.
    final public var surround: Double {
        get {
            return get_surround ()
        }
        
        set {
            set_surround (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_pan_pullout: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_pan_pullout")
        return withUnsafePointer(to: &AudioEffectStereoEnhance.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pan_pullout(_ amount: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectStereoEnhance.method_set_pan_pullout, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_pan_pullout: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_pan_pullout")
        return withUnsafePointer(to: &AudioEffectStereoEnhance.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pan_pullout() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectStereoEnhance.method_get_pan_pullout, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_time_pullout: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_time_pullout")
        return withUnsafePointer(to: &AudioEffectStereoEnhance.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_time_pullout(_ amount: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectStereoEnhance.method_set_time_pullout, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_time_pullout: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_time_pullout")
        return withUnsafePointer(to: &AudioEffectStereoEnhance.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_time_pullout() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectStereoEnhance.method_get_time_pullout, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_surround: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_surround")
        return withUnsafePointer(to: &AudioEffectStereoEnhance.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_surround(_ amount: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectStereoEnhance.method_set_surround, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_surround: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_surround")
        return withUnsafePointer(to: &AudioEffectStereoEnhance.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_surround() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectStereoEnhance.method_get_surround, handle, nil, &_result)
        return _result
    }
    
}

