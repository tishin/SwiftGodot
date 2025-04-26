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


/// Adds a reverberation audio effect to an Audio bus.
/// 
/// Simulates the sound of acoustic environments such as rooms, concert halls, caverns, or an open spaces.
open class AudioEffectReverb: AudioEffect {
    private static var className = StringName("AudioEffectReverb")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Time between the original signal and the early reflections of the reverb signal, in milliseconds.
    final public var predelayMsec: Double {
        get {
            return get_predelay_msec ()
        }
        
        set {
            set_predelay_msec (newValue)
        }
        
    }
    
    /// Output percent of predelay. Value can range from 0 to 1.
    final public var predelayFeedback: Double {
        get {
            return get_predelay_feedback ()
        }
        
        set {
            set_predelay_feedback (newValue)
        }
        
    }
    
    /// Dimensions of simulated room. Bigger means more echoes. Value can range from 0 to 1.
    final public var roomSize: Double {
        get {
            return get_room_size ()
        }
        
        set {
            set_room_size (newValue)
        }
        
    }
    
    /// Defines how reflective the imaginary room's walls are. Value can range from 0 to 1.
    final public var damping: Double {
        get {
            return get_damping ()
        }
        
        set {
            set_damping (newValue)
        }
        
    }
    
    /// Widens or narrows the stereo image of the reverb tail. 1 means fully widens. Value can range from 0 to 1.
    final public var spread: Double {
        get {
            return get_spread ()
        }
        
        set {
            set_spread (newValue)
        }
        
    }
    
    /// High-pass filter passes signals with a frequency higher than a certain cutoff frequency and attenuates signals with frequencies lower than the cutoff frequency. Value can range from 0 to 1.
    final public var hipass: Double {
        get {
            return get_hpf ()
        }
        
        set {
            set_hpf (newValue)
        }
        
    }
    
    /// Output percent of original sound. At 0, only modified sound is outputted. Value can range from 0 to 1.
    final public var dry: Double {
        get {
            return get_dry ()
        }
        
        set {
            set_dry (newValue)
        }
        
    }
    
    /// Output percent of modified sound. At 0, only original sound is outputted. Value can range from 0 to 1.
    final public var wet: Double {
        get {
            return get_wet ()
        }
        
        set {
            set_wet (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_predelay_msec: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_predelay_msec")
        return withUnsafePointer(to: &AudioEffectReverb.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_predelay_msec(_ msec: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: msec) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectReverb.method_set_predelay_msec, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_predelay_msec: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_predelay_msec")
        return withUnsafePointer(to: &AudioEffectReverb.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_predelay_msec() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectReverb.method_get_predelay_msec, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_predelay_feedback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_predelay_feedback")
        return withUnsafePointer(to: &AudioEffectReverb.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_predelay_feedback(_ feedback: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: feedback) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectReverb.method_set_predelay_feedback, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_predelay_feedback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_predelay_feedback")
        return withUnsafePointer(to: &AudioEffectReverb.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_predelay_feedback() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectReverb.method_get_predelay_feedback, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_room_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_room_size")
        return withUnsafePointer(to: &AudioEffectReverb.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_room_size(_ size: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectReverb.method_set_room_size, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_room_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_room_size")
        return withUnsafePointer(to: &AudioEffectReverb.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_room_size() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectReverb.method_get_room_size, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_damping: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_damping")
        return withUnsafePointer(to: &AudioEffectReverb.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_damping(_ amount: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectReverb.method_set_damping, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_damping: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_damping")
        return withUnsafePointer(to: &AudioEffectReverb.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_damping() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectReverb.method_get_damping, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_spread: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_spread")
        return withUnsafePointer(to: &AudioEffectReverb.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_spread(_ amount: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectReverb.method_set_spread, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_spread: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_spread")
        return withUnsafePointer(to: &AudioEffectReverb.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_spread() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectReverb.method_get_spread, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_dry: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_dry")
        return withUnsafePointer(to: &AudioEffectReverb.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioEffectReverb.method_set_dry, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_dry: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_dry")
        return withUnsafePointer(to: &AudioEffectReverb.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_dry() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectReverb.method_get_dry, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_wet: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_wet")
        return withUnsafePointer(to: &AudioEffectReverb.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioEffectReverb.method_set_wet, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_wet: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_wet")
        return withUnsafePointer(to: &AudioEffectReverb.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_wet() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectReverb.method_get_wet, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_hpf: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_hpf")
        return withUnsafePointer(to: &AudioEffectReverb.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_hpf(_ amount: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectReverb.method_set_hpf, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_hpf: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_hpf")
        return withUnsafePointer(to: &AudioEffectReverb.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_hpf() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectReverb.method_get_hpf, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

