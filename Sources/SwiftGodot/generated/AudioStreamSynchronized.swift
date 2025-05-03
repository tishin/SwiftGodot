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


/// Stream that can be fitted with sub-streams, which will be played in-sync.
/// 
/// This is a stream that can be fitted with sub-streams, which will be played in-sync. The streams begin at exactly the same time when play is pressed, and will end when the last of them ends. If one of the sub-streams loops, then playback will continue.
open class AudioStreamSynchronized: AudioStream {
    private static var className = StringName("AudioStreamSynchronized")
    override open class var godotClassName: StringName { className }
    /* Constants */
    /// Maximum amount of streams that can be synchronized.
    public static let maxStreams = 32
    
    /* Properties */
    
    /// Set the total amount of streams that will be played back synchronized.
    final public var streamCount: Int32 {
        get {
            return get_stream_count ()
        }
        
        set {
            set_stream_count (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_stream_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_stream_count")
        return withUnsafePointer(to: &AudioStreamSynchronized.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_stream_count(_ streamCount: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: streamCount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamSynchronized.method_set_stream_count, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_stream_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_stream_count")
        return withUnsafePointer(to: &AudioStreamSynchronized.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_stream_count() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AudioStreamSynchronized.method_get_stream_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_sync_stream: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sync_stream")
        return withUnsafePointer(to: &AudioStreamSynchronized.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 111075094)!
            }
            
        }
        
    }()
    
    /// Set one of the synchronized streams, by index.
    public final func setSyncStream(streamIndex: Int32, audioStream: AudioStream?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: streamIndex) { pArg0 in
            withUnsafePointer(to: audioStream?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AudioStreamSynchronized.method_set_sync_stream, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sync_stream: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sync_stream")
        return withUnsafePointer(to: &AudioStreamSynchronized.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2739380747)!
            }
            
        }
        
    }()
    
    /// Get one of the synchronized streams, by index.
    public final func getSyncStream(streamIndex: Int32) -> AudioStream? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: streamIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamSynchronized.method_get_sync_stream, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_sync_stream_volume: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sync_stream_volume")
        return withUnsafePointer(to: &AudioStreamSynchronized.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Set the volume of one of the synchronized streams, by index.
    public final func setSyncStreamVolume(streamIndex: Int32, volumeDb: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: streamIndex) { pArg0 in
            withUnsafePointer(to: volumeDb) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AudioStreamSynchronized.method_set_sync_stream_volume, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sync_stream_volume: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sync_stream_volume")
        return withUnsafePointer(to: &AudioStreamSynchronized.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// Get the volume of one of the synchronized streams, by index.
    public final func getSyncStreamVolume(streamIndex: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: streamIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamSynchronized.method_get_sync_stream_volume, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
}

