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


/// Adds a filter to the audio bus.
/// 
/// Allows frequencies other than the ``cutoffHz`` to pass.
open class AudioEffectFilter: AudioEffect {
    private static var className = StringName("AudioEffectFilter")
    override open class var godotClassName: StringName { className }
    public enum FilterDB: Int64, CaseIterable {
        /// Cutting off at 6dB per octave.
        case filter6db = 0 // FILTER_6DB
        /// Cutting off at 12dB per octave.
        case filter12db = 1 // FILTER_12DB
        /// Cutting off at 18dB per octave.
        case filter18db = 2 // FILTER_18DB
        /// Cutting off at 24dB per octave.
        case filter24db = 3 // FILTER_24DB
    }
    
    
    /* Properties */
    
    /// Threshold frequency for the filter, in Hz.
    final public var cutoffHz: Double {
        get {
            return get_cutoff ()
        }
        
        set {
            set_cutoff (newValue)
        }
        
    }
    
    /// Amount of boost in the frequency range near the cutoff frequency.
    final public var resonance: Double {
        get {
            return get_resonance ()
        }
        
        set {
            set_resonance (newValue)
        }
        
    }
    
    /// Gain amount of the frequencies after the filter.
    final public var gain: Double {
        get {
            return get_gain ()
        }
        
        set {
            set_gain (newValue)
        }
        
    }
    
    /// Steepness of the cutoff curve in dB per octave, also known as the order of the filter. Higher orders have a more aggressive cutoff.
    final public var db: AudioEffectFilter.FilterDB {
        get {
            return get_db ()
        }
        
        set {
            set_db (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_cutoff: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_cutoff")
        return withUnsafePointer(to: &AudioEffectFilter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_cutoff(_ freq: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: freq) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectFilter.method_set_cutoff, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_cutoff: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_cutoff")
        return withUnsafePointer(to: &AudioEffectFilter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_cutoff() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectFilter.method_get_cutoff, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_resonance: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_resonance")
        return withUnsafePointer(to: &AudioEffectFilter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_resonance(_ amount: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectFilter.method_set_resonance, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_resonance: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_resonance")
        return withUnsafePointer(to: &AudioEffectFilter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_resonance() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectFilter.method_get_resonance, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_gain: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_gain")
        return withUnsafePointer(to: &AudioEffectFilter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_gain(_ amount: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectFilter.method_set_gain, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_gain: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_gain")
        return withUnsafePointer(to: &AudioEffectFilter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_gain() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioEffectFilter.method_get_gain, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_db: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_db")
        return withUnsafePointer(to: &AudioEffectFilter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 771740901)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_db(_ amount: AudioEffectFilter.FilterDB) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: amount.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectFilter.method_set_db, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_db: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_db")
        return withUnsafePointer(to: &AudioEffectFilter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3981721890)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_db() -> AudioEffectFilter.FilterDB {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AudioEffectFilter.method_get_db, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return AudioEffectFilter.FilterDB (rawValue: _result)!
    }
    
}

