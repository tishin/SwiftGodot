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


/// AudioStream that lets the user play custom streams at any time from code, simultaneously using a single player.
/// 
/// AudioStream that lets the user play custom streams at any time from code, simultaneously using a single player.
/// 
/// Playback control is done via the ``AudioStreamPlaybackPolyphonic`` instance set inside the player, which can be obtained via ``AudioStreamPlayer/getStreamPlayback()``, ``AudioStreamPlayer2D/getStreamPlayback()`` or ``AudioStreamPlayer3D/getStreamPlayback()`` methods. Obtaining the playback instance is only valid after the `stream` property is set as an ``AudioStreamPolyphonic`` in those players.
/// 
open class AudioStreamPolyphonic: AudioStream {
    private static var className = StringName("AudioStreamPolyphonic")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Maximum amount of simultaneous streams that can be played.
    final public var polyphony: Int32 {
        get {
            return get_polyphony ()
        }
        
        set {
            set_polyphony (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_polyphony: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_polyphony")
        return withUnsafePointer(to: &AudioStreamPolyphonic.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_polyphony(_ voices: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: voices) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPolyphonic.method_set_polyphony, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_polyphony: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_polyphony")
        return withUnsafePointer(to: &AudioStreamPolyphonic.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_polyphony() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AudioStreamPolyphonic.method_get_polyphony, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

