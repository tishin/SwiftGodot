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


/// MP3 audio stream driver.
/// 
/// MP3 audio stream driver. See ``data`` if you want to load an MP3 file at run-time.
/// 
/// > Note: This class can optionally support legacy MP1 and MP2 formats, provided that the engine is compiled with the `minimp3_extra_formats=yes` SCons option. These extra formats are not enabled by default.
/// 
open class AudioStreamMP3: AudioStream {
    private static var className = StringName("AudioStreamMP3")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Contains the audio data in bytes.
    /// 
    /// You can load a file without having to import it beforehand using the code snippet below. Keep in mind that this snippet loads the whole file into memory and may not be ideal for huge files (hundreds of megabytes or more).
    /// 
    final public var data: PackedByteArray {
        get {
            return get_data ()
        }
        
        set {
            set_data (newValue)
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
    
    /// If `true`, the stream will automatically loop when it reaches the end.
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
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1674970313)!
            }
            
        }
        
    }()
    
    /// Creates a new ``AudioStreamMP3`` instance from the given buffer. The buffer must contain MP3 data.
    public static func loadFromBuffer(streamData: PackedByteArray) -> AudioStreamMP3? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: streamData.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_load_from_buffer, nil, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_load_from_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("load_from_file")
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4238362998)!
            }
            
        }
        
    }()
    
    /// Creates a new ``AudioStreamMP3`` instance from the given file path. The file must be in MP3 format.
    public static func loadFromFile(path: String) -> AudioStreamMP3? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_load_from_file, nil, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_data")
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2971499966)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_data(_ data: PackedByteArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: data.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamMP3.method_set_data, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_data")
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2362200018)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_data() -> PackedByteArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedByteArray = PackedByteArray ()
        gi.object_method_bind_ptrcall(AudioStreamMP3.method_get_data, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_loop: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_loop")
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamMP3.method_set_loop, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_has_loop: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_loop")
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func has_loop() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStreamMP3.method_has_loop, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_loop_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_loop_offset")
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamMP3.method_set_loop_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_loop_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_loop_offset")
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_loop_offset() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamMP3.method_get_loop_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_bpm: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bpm")
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamMP3.method_set_bpm, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_bpm: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bpm")
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bpm() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamMP3.method_get_bpm, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_beat_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_beat_count")
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamMP3.method_set_beat_count, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_beat_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_beat_count")
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_beat_count() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AudioStreamMP3.method_get_beat_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_bar_beats: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bar_beats")
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamMP3.method_set_bar_beats, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_bar_beats: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bar_beats")
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bar_beats() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AudioStreamMP3.method_get_bar_beats, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

