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


/// Adds an amplifying audio effect to an audio bus.
/// 
/// Increases or decreases the volume being routed through the audio bus.
open class AudioEffectAmplify: AudioEffect {
    private static var className = StringName("AudioEffectAmplify")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Amount of amplification in decibels. Positive values make the sound louder, negative values make it quieter. Value can range from -80 to 24.
    final public var volumeDb: Double {
        get {
            return get_volume_db ()
        }
        
        set {
            set_volume_db (newValue)
        }
        
    }
    
    /// Amount of amplification as a linear value.
    /// 
    /// > Note: This member modifies ``volumeDb`` for convenience. The returned value is equivalent to the result of ``@GlobalScope.db_to_linear`` on ``volumeDb``. Setting this member is equivalent to setting ``volumeDb`` to the result of ``@GlobalScope.linear_to_db`` on a value.
    /// 
    final public var volumeLinear: Double {
        get {
            return get_volume_linear ()
        }
        
        set {
            set_volume_linear (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_volume_db: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_volume_db")
        return withUnsafePointer(to: &AudioEffectAmplify.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_volume_db(_ volume: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: volume) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectAmplify.method_set_volume_db, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_volume_db: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_volume_db")
        return withUnsafePointer(to: &AudioEffectAmplify.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_volume_db() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectAmplify.method_get_volume_db, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_volume_linear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_volume_linear")
        return withUnsafePointer(to: &AudioEffectAmplify.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_volume_linear(_ volume: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: volume) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectAmplify.method_set_volume_linear, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_volume_linear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_volume_linear")
        return withUnsafePointer(to: &AudioEffectAmplify.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_volume_linear() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectAmplify.method_get_volume_linear, handle, nil, &_result)
        return _result
    }
    
}

