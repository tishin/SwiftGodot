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


/// Plays back audio generated using ``AudioStreamGenerator``.
/// 
/// This class is meant to be used with ``AudioStreamGenerator`` to play back the generated audio in real-time.
open class AudioStreamGeneratorPlayback: AudioStreamPlaybackResampled {
    private static var className = StringName("AudioStreamGeneratorPlayback")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_push_frame: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("push_frame")
        return withUnsafePointer(to: &AudioStreamGeneratorPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3975407249)!
            }
            
        }
        
    }()
    
    /// Pushes a single audio data frame to the buffer. This is usually less efficient than ``pushBuffer(frames:)`` in C# and compiled languages via GDExtension, but ``pushFrame(_:)`` may be _more_ efficient in GDScript.
    public final func pushFrame(_ frame: Vector2) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: frame) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamGeneratorPlayback.method_push_frame, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_can_push_buffer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("can_push_buffer")
        return withUnsafePointer(to: &AudioStreamGeneratorPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if a buffer of the size `amount` can be pushed to the audio sample data buffer without overflowing it, `false` otherwise.
    public final func canPushBuffer(amount: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamGeneratorPlayback.method_can_push_buffer, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_push_buffer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("push_buffer")
        return withUnsafePointer(to: &AudioStreamGeneratorPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1361156557)!
            }
            
        }
        
    }()
    
    /// Pushes several audio data frames to the buffer. This is usually more efficient than ``pushFrame(_:)`` in C# and compiled languages via GDExtension, but ``pushBuffer(frames:)`` may be _less_ efficient in GDScript.
    public final func pushBuffer(frames: PackedVector2Array) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: frames.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamGeneratorPlayback.method_push_buffer, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_frames_available: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_frames_available")
        return withUnsafePointer(to: &AudioStreamGeneratorPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of frames that can be pushed to the audio sample data buffer without overflowing it. If the result is `0`, the buffer is full.
    public final func getFramesAvailable() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AudioStreamGeneratorPlayback.method_get_frames_available, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_skips: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_skips")
        return withUnsafePointer(to: &AudioStreamGeneratorPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of times the playback skipped due to a buffer underrun in the audio sample data. This value is reset at the start of the playback.
    public final func getSkips() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AudioStreamGeneratorPlayback.method_get_skips, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_clear_buffer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_buffer")
        return withUnsafePointer(to: &AudioStreamGeneratorPlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears the audio sample data buffer.
    public final func clearBuffer() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(AudioStreamGeneratorPlayback.method_clear_buffer, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
}

