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


/// Playback component of ``AudioStreamInteractive``.
/// 
/// Playback component of ``AudioStreamInteractive``. Contains functions to change the currently played clip.
open class AudioStreamPlaybackInteractive: AudioStreamPlayback {
    private static var className = StringName("AudioStreamPlaybackInteractive")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_switch_to_clip_by_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("switch_to_clip_by_name")
        return withUnsafePointer(to: &AudioStreamPlaybackInteractive.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    /// Switch to a clip (by name).
    public final func switchToClipByName(clipName: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: clipName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlaybackInteractive.method_switch_to_clip_by_name, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_switch_to_clip: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("switch_to_clip")
        return withUnsafePointer(to: &AudioStreamPlaybackInteractive.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Switch to a clip (by index).
    public final func switchToClip(clipIndex: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: clipIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamPlaybackInteractive.method_switch_to_clip, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_current_clip_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_current_clip_index")
        return withUnsafePointer(to: &AudioStreamPlaybackInteractive.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Return the index of the currently playing clip. You can use this to get the name of the currently playing clip with ``AudioStreamInteractive/getClipName(clipIndex:)``.
    /// 
    /// **Example:** Get the currently playing clip name from inside an ``AudioStreamPlayer`` node.
    /// 
    public final func getCurrentClipIndex() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AudioStreamPlaybackInteractive.method_get_current_clip_index, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

