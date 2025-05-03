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


/// Adds a chorus audio effect.
/// 
/// Adds a chorus audio effect. The effect applies a filter with voices to duplicate the audio source and manipulate it through the filter.
open class AudioEffectChorus: AudioEffect {
    private static var className = StringName("AudioEffectChorus")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The number of voices in the effect.
    final public var voiceCount: Int32 {
        get {
            return get_voice_count ()
        }
        
        set {
            set_voice_count (newValue)
        }
        
    }
    
    /// The effect's raw signal.
    final public var dry: Double {
        get {
            return get_dry ()
        }
        
        set {
            set_dry (newValue)
        }
        
    }
    
    /// The effect's processed signal.
    final public var wet: Double {
        get {
            return get_wet ()
        }
        
        set {
            set_wet (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_voice_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_voice_count")
        return withUnsafePointer(to: &AudioEffectChorus.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_voice_count(_ voices: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: voices) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectChorus.method_set_voice_count, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_voice_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_voice_count")
        return withUnsafePointer(to: &AudioEffectChorus.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_voice_count() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AudioEffectChorus.method_get_voice_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_voice_delay_ms: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_voice_delay_ms")
        return withUnsafePointer(to: &AudioEffectChorus.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// 
    public final func setVoiceDelayMs(voiceIdx: Int32, delayMs: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: voiceIdx) { pArg0 in
            withUnsafePointer(to: delayMs) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AudioEffectChorus.method_set_voice_delay_ms, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_voice_delay_ms: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_voice_delay_ms")
        return withUnsafePointer(to: &AudioEffectChorus.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// 
    public final func getVoiceDelayMs(voiceIdx: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: voiceIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectChorus.method_get_voice_delay_ms, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_voice_rate_hz: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_voice_rate_hz")
        return withUnsafePointer(to: &AudioEffectChorus.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// 
    public final func setVoiceRateHz(voiceIdx: Int32, rateHz: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: voiceIdx) { pArg0 in
            withUnsafePointer(to: rateHz) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AudioEffectChorus.method_set_voice_rate_hz, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_voice_rate_hz: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_voice_rate_hz")
        return withUnsafePointer(to: &AudioEffectChorus.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// 
    public final func getVoiceRateHz(voiceIdx: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: voiceIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectChorus.method_get_voice_rate_hz, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_voice_depth_ms: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_voice_depth_ms")
        return withUnsafePointer(to: &AudioEffectChorus.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// 
    public final func setVoiceDepthMs(voiceIdx: Int32, depthMs: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: voiceIdx) { pArg0 in
            withUnsafePointer(to: depthMs) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AudioEffectChorus.method_set_voice_depth_ms, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_voice_depth_ms: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_voice_depth_ms")
        return withUnsafePointer(to: &AudioEffectChorus.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// 
    public final func getVoiceDepthMs(voiceIdx: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: voiceIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectChorus.method_get_voice_depth_ms, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_voice_level_db: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_voice_level_db")
        return withUnsafePointer(to: &AudioEffectChorus.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// 
    public final func setVoiceLevelDb(voiceIdx: Int32, levelDb: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: voiceIdx) { pArg0 in
            withUnsafePointer(to: levelDb) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AudioEffectChorus.method_set_voice_level_db, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_voice_level_db: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_voice_level_db")
        return withUnsafePointer(to: &AudioEffectChorus.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// 
    public final func getVoiceLevelDb(voiceIdx: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: voiceIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectChorus.method_get_voice_level_db, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_voice_cutoff_hz: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_voice_cutoff_hz")
        return withUnsafePointer(to: &AudioEffectChorus.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// 
    public final func setVoiceCutoffHz(voiceIdx: Int32, cutoffHz: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: voiceIdx) { pArg0 in
            withUnsafePointer(to: cutoffHz) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AudioEffectChorus.method_set_voice_cutoff_hz, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_voice_cutoff_hz: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_voice_cutoff_hz")
        return withUnsafePointer(to: &AudioEffectChorus.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// 
    public final func getVoiceCutoffHz(voiceIdx: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: voiceIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectChorus.method_get_voice_cutoff_hz, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_voice_pan: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_voice_pan")
        return withUnsafePointer(to: &AudioEffectChorus.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// 
    public final func setVoicePan(voiceIdx: Int32, pan: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: voiceIdx) { pArg0 in
            withUnsafePointer(to: pan) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AudioEffectChorus.method_set_voice_pan, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_voice_pan: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_voice_pan")
        return withUnsafePointer(to: &AudioEffectChorus.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// 
    public final func getVoicePan(voiceIdx: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: voiceIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectChorus.method_get_voice_pan, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_wet: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_wet")
        return withUnsafePointer(to: &AudioEffectChorus.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_wet(_ amount: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectChorus.method_set_wet, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_wet: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_wet")
        return withUnsafePointer(to: &AudioEffectChorus.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_wet() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectChorus.method_get_wet, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_dry: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_dry")
        return withUnsafePointer(to: &AudioEffectChorus.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_dry(_ amount: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectChorus.method_set_dry, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_dry: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_dry")
        return withUnsafePointer(to: &AudioEffectChorus.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_dry() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectChorus.method_get_dry, handle, nil, &_result)
        return _result
    }
    
}

