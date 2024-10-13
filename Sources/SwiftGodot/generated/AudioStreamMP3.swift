// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// MP3 audio stream driver.
/// 
/// MP3 audio stream driver. See ``data`` if you want to load an MP3 file at run-time.
open class AudioStreamMP3: AudioStream {
    override open class var godotClassName: StringName { "AudioStreamMP3" }
    
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
    fileprivate static var method_set_data: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_data")
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2971499966)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_data(_ data: PackedByteArray) {
        withUnsafePointer(to: data.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamMP3.method_set_data, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_data: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_data")
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2362200018)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_data() -> PackedByteArray {
        let _result: PackedByteArray = PackedByteArray ()
        gi.object_method_bind_ptrcall(AudioStreamMP3.method_get_data, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_loop: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_loop")
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_loop(_ enable: Bool) {
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamMP3.method_set_loop, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_has_loop: GDExtensionMethodBindPtr = {
        let methodName = StringName("has_loop")
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func has_loop() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStreamMP3.method_has_loop, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_loop_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_loop_offset")
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_loop_offset(_ seconds: Double) {
        withUnsafePointer(to: seconds) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamMP3.method_set_loop_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_loop_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_loop_offset")
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_loop_offset() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamMP3.method_get_loop_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_bpm: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_bpm")
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bpm(_ bpm: Double) {
        withUnsafePointer(to: bpm) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamMP3.method_set_bpm, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_bpm: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_bpm")
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bpm() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamMP3.method_get_bpm, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_beat_count: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_beat_count")
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_beat_count(_ count: Int32) {
        withUnsafePointer(to: count) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamMP3.method_set_beat_count, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_beat_count: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_beat_count")
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_beat_count() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AudioStreamMP3.method_get_beat_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_bar_beats: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_bar_beats")
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bar_beats(_ count: Int32) {
        withUnsafePointer(to: count) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamMP3.method_set_bar_beats, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_bar_beats: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_bar_beats")
        return withUnsafePointer(to: &AudioStreamMP3.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bar_beats() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AudioStreamMP3.method_get_bar_beats, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}
