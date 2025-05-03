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


/// Base class for audio equalizers. Gives you control over frequencies.
/// 
/// Use it to create a custom equalizer if ``AudioEffectEQ6``, ``AudioEffectEQ10`` or ``AudioEffectEQ21`` don't fit your needs.
/// 
/// 
/// AudioEffectEQ gives you control over frequencies. Use it to compensate for existing deficiencies in audio. AudioEffectEQs are useful on the Master bus to completely master a mix and give it more character. They are also useful when a game is run on a mobile device, to adjust the mix to that kind of speakers (it can be added but disabled when headphones are plugged).
open class AudioEffectEQ: AudioEffect {
    private static var className = StringName("AudioEffectEQ")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_set_band_gain_db: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_band_gain_db")
        return withUnsafePointer(to: &AudioEffectEQ.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Sets band's gain at the specified index, in dB.
    public final func setBandGainDb(bandIdx: Int32, volumeDb: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: bandIdx) { pArg0 in
            withUnsafePointer(to: volumeDb) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AudioEffectEQ.method_set_band_gain_db, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_band_gain_db: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_band_gain_db")
        return withUnsafePointer(to: &AudioEffectEQ.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// Returns the band's gain at the specified index, in dB.
    public final func getBandGainDb(bandIdx: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: bandIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioEffectEQ.method_get_band_gain_db, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_band_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_band_count")
        return withUnsafePointer(to: &AudioEffectEQ.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of bands of the equalizer.
    public final func getBandCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AudioEffectEQ.method_get_band_count, handle, nil, &_result)
        return _result
    }
    
}

