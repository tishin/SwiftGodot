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


/// A class representing an Ogg Vorbis audio stream.
/// 
/// The AudioStreamOggVorbis class is a specialized ``AudioStream`` for handling Ogg Vorbis file formats. It offers functionality for loading and playing back Ogg Vorbis files, as well as managing looping and other playback properties. This class is part of the audio stream system, which also supports WAV files through the ``AudioStreamWAV`` class.
open class AudioStreamOggVorbis: AudioStream {
    private static var className = StringName("AudioStreamOggVorbis")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Contains the raw Ogg data for this stream.
    final public var packetSequence: OggPacketSequence? {
        get {
            return get_packet_sequence ()
        }
        
        set {
            set_packet_sequence (newValue)
        }
        
    }
    
    final public var bpm: Double {
        get {
            return get_bpm ()
        }
        
        set {
            set_bpm (newValue)
        }
        
    }
    
    final public var beatCount: Int32 {
        get {
            return get_beat_count ()
        }
        
        set {
            set_beat_count (newValue)
        }
        
    }
    
    final public var barBeats: Int32 {
        get {
            return get_bar_beats ()
        }
        
        set {
            set_bar_beats (newValue)
        }
        
    }
    
    /// If `true`, the audio will play again from the specified ``loopOffset`` once it is done playing. Useful for ambient sounds and background music.
    final public var loop: Bool {
        get {
            return has_loop ()
        }
        
        set {
            set_loop (newValue)
        }
        
    }
    
    /// Time in seconds at which the stream starts after being looped.
    final public var loopOffset: Double {
        get {
            return get_loop_offset ()
        }
        
        set {
            set_loop_offset (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_load_from_buffer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("load_from_buffer")
        return withUnsafePointer(to: &AudioStreamOggVorbis.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 354904730)!
            }
            
        }
        
    }()
    
    /// Creates a new ``AudioStreamOggVorbis`` instance from the given buffer. The buffer must contain Ogg Vorbis data.
    public static func loadFromBuffer(streamData: PackedByteArray) -> AudioStreamOggVorbis? {
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: streamData.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_load_from_buffer, nil, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_load_from_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("load_from_file")
        return withUnsafePointer(to: &AudioStreamOggVorbis.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 797568536)!
            }
            
        }
        
    }()
    
    /// Creates a new ``AudioStreamOggVorbis`` instance from the given file path. The file must be in Ogg Vorbis format.
    public static func loadFromFile(path: String) -> AudioStreamOggVorbis? {
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_load_from_file, nil, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_packet_sequence: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_packet_sequence")
        return withUnsafePointer(to: &AudioStreamOggVorbis.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 438882457)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_packet_sequence(_ packetSequence: OggPacketSequence?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: packetSequence?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamOggVorbis.method_set_packet_sequence, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_packet_sequence: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_packet_sequence")
        return withUnsafePointer(to: &AudioStreamOggVorbis.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2801636033)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_packet_sequence() -> OggPacketSequence? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(AudioStreamOggVorbis.method_get_packet_sequence, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_loop: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_loop")
        return withUnsafePointer(to: &AudioStreamOggVorbis.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_loop(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamOggVorbis.method_set_loop, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_has_loop: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_loop")
        return withUnsafePointer(to: &AudioStreamOggVorbis.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func has_loop() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStreamOggVorbis.method_has_loop, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_loop_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_loop_offset")
        return withUnsafePointer(to: &AudioStreamOggVorbis.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_loop_offset(_ seconds: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: seconds) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamOggVorbis.method_set_loop_offset, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_loop_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_loop_offset")
        return withUnsafePointer(to: &AudioStreamOggVorbis.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_loop_offset() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamOggVorbis.method_get_loop_offset, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_bpm: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bpm")
        return withUnsafePointer(to: &AudioStreamOggVorbis.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bpm(_ bpm: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: bpm) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamOggVorbis.method_set_bpm, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_bpm: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bpm")
        return withUnsafePointer(to: &AudioStreamOggVorbis.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bpm() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamOggVorbis.method_get_bpm, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_beat_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_beat_count")
        return withUnsafePointer(to: &AudioStreamOggVorbis.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_beat_count(_ count: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: count) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamOggVorbis.method_set_beat_count, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_beat_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_beat_count")
        return withUnsafePointer(to: &AudioStreamOggVorbis.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_beat_count() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AudioStreamOggVorbis.method_get_beat_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_bar_beats: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bar_beats")
        return withUnsafePointer(to: &AudioStreamOggVorbis.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bar_beats(_ count: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: count) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamOggVorbis.method_set_bar_beats, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_bar_beats: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bar_beats")
        return withUnsafePointer(to: &AudioStreamOggVorbis.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bar_beats() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AudioStreamOggVorbis.method_get_bar_beats, handle, nil, &_result)
        return _result
    }
    
}

