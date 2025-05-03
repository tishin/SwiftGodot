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


/// Stores audio data loaded from WAV files.
/// 
/// AudioStreamWAV stores sound samples loaded from WAV files. To play the stored sound, use an ``AudioStreamPlayer`` (for non-positional audio) or ``AudioStreamPlayer2D``/``AudioStreamPlayer3D`` (for positional audio). The sound can be looped.
/// 
/// This class can also be used to store dynamically-generated PCM audio data. See also ``AudioStreamGenerator`` for procedural audio generation.
/// 
open class AudioStreamWAV: AudioStream {
    private static var className = StringName("AudioStreamWAV")
    override open class var godotClassName: StringName { className }
    public enum Format: Int64, CaseIterable {
        /// 8-bit PCM audio codec.
        case format8Bits = 0 // FORMAT_8_BITS
        /// 16-bit PCM audio codec.
        case format16Bits = 1 // FORMAT_16_BITS
        /// Audio is lossily compressed as IMA ADPCM.
        case imaAdpcm = 2 // FORMAT_IMA_ADPCM
        /// Audio is lossily compressed as <a href="https://qoaformat.org/">Quite OK Audio</a>.
        case qoa = 3 // FORMAT_QOA
    }
    
    public enum LoopMode: Int64, CaseIterable {
        /// Audio does not loop.
        case disabled = 0 // LOOP_DISABLED
        /// Audio loops the data between ``loopBegin`` and ``loopEnd``, playing forward only.
        case forward = 1 // LOOP_FORWARD
        /// Audio loops the data between ``loopBegin`` and ``loopEnd``, playing back and forth.
        case pingpong = 2 // LOOP_PINGPONG
        /// Audio loops the data between ``loopBegin`` and ``loopEnd``, playing backward only.
        case backward = 3 // LOOP_BACKWARD
    }
    
    
    /* Properties */
    
    /// Contains the audio data in bytes.
    /// 
    /// > Note: If ``format`` is set to ``Format/format8Bits``, this property expects signed 8-bit PCM data. To convert from unsigned 8-bit PCM, subtract 128 from each byte.
    /// 
    /// > Note: If ``format`` is set to ``Format/qoa``, this property expects data from a full QOA file.
    /// 
    final public var data: PackedByteArray {
        get {
            return get_data ()
        }
        
        set {
            set_data (newValue)
        }
        
    }
    
    /// Audio format. See ``AudioStreamWAV/Format`` constants for values.
    final public var format: AudioStreamWAV.Format {
        get {
            return get_format ()
        }
        
        set {
            set_format (newValue)
        }
        
    }
    
    /// The loop mode. See ``AudioStreamWAV/LoopMode`` constants for values.
    final public var loopMode: AudioStreamWAV.LoopMode {
        get {
            return get_loop_mode ()
        }
        
        set {
            set_loop_mode (newValue)
        }
        
    }
    
    /// The loop start point (in number of samples, relative to the beginning of the stream).
    final public var loopBegin: Int32 {
        get {
            return get_loop_begin ()
        }
        
        set {
            set_loop_begin (newValue)
        }
        
    }
    
    /// The loop end point (in number of samples, relative to the beginning of the stream).
    final public var loopEnd: Int32 {
        get {
            return get_loop_end ()
        }
        
        set {
            set_loop_end (newValue)
        }
        
    }
    
    /// The sample rate for mixing this audio. Higher values require more storage space, but result in better quality.
    /// 
    /// In games, common sample rates in use are `11025`, `16000`, `22050`, `32000`, `44100`, and `48000`.
    /// 
    /// According to the <a href="https://en.wikipedia.org/wiki/Nyquist%E2%80%93Shannon_sampling_theorem">Nyquist-Shannon sampling theorem</a>, there is no quality difference to human hearing when going past 40,000 Hz (since most humans can only hear up to ~20,000 Hz, often less). If you are using lower-pitched sounds such as voices, lower sample rates such as `32000` or `22050` may be usable with no loss in quality.
    /// 
    final public var mixRate: Int32 {
        get {
            return get_mix_rate ()
        }
        
        set {
            set_mix_rate (newValue)
        }
        
    }
    
    /// If `true`, audio is stereo.
    final public var stereo: Bool {
        get {
            return is_stereo ()
        }
        
        set {
            set_stereo (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_load_from_buffer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("load_from_buffer")
        return withUnsafePointer(to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4266838938)!
            }
            
        }
        
    }()
    
    /// Creates a new ``AudioStreamWAV`` instance from the given buffer. The buffer must contain WAV data.
    /// 
    /// The keys and values of `options` match the properties of ``ResourceImporterWAV``. The usage of `options` is identical to ``AudioStreamWAV/loadFromFile(path:options:)``.
    /// 
    public static func loadFromBuffer(streamData: PackedByteArray, options: VariantDictionary = VariantDictionary ()) -> AudioStreamWAV? {
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: streamData.content) { pArg0 in
            withUnsafePointer(to: options.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_load_from_buffer, nil, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_load_from_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("load_from_file")
        return withUnsafePointer(to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4015802384)!
            }
            
        }
        
    }()
    
    /// Creates a new ``AudioStreamWAV`` instance from the given file path. The file must be in WAV format.
    /// 
    /// The keys and values of `options` match the properties of ``ResourceImporterWAV``.
    /// 
    /// **Example:** Load the first file dropped as a WAV and play it:
    /// 
    public static func loadFromFile(path: String, options: VariantDictionary = VariantDictionary ()) -> AudioStreamWAV? {
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: options.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_load_from_file, nil, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_data")
        return withUnsafePointer(to: &AudioStreamWAV.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AudioStreamWAV.method_set_data, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_data")
        return withUnsafePointer(to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2362200018)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_data() -> PackedByteArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedByteArray = PackedByteArray ()
        gi.object_method_bind_ptrcall(AudioStreamWAV.method_get_data, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_format: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_format")
        return withUnsafePointer(to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 60648488)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_format(_ format: AudioStreamWAV.Format) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: format.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamWAV.method_set_format, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_format: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_format")
        return withUnsafePointer(to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3151724922)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_format() -> AudioStreamWAV.Format {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AudioStreamWAV.method_get_format, handle, nil, &_result)
        return AudioStreamWAV.Format (rawValue: _result)!
    }
    
    fileprivate static let method_set_loop_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_loop_mode")
        return withUnsafePointer(to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2444882972)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_loop_mode(_ loopMode: AudioStreamWAV.LoopMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: loopMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamWAV.method_set_loop_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_loop_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_loop_mode")
        return withUnsafePointer(to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 393560655)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_loop_mode() -> AudioStreamWAV.LoopMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AudioStreamWAV.method_get_loop_mode, handle, nil, &_result)
        return AudioStreamWAV.LoopMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_loop_begin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_loop_begin")
        return withUnsafePointer(to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_loop_begin(_ loopBegin: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: loopBegin) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamWAV.method_set_loop_begin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_loop_begin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_loop_begin")
        return withUnsafePointer(to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_loop_begin() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AudioStreamWAV.method_get_loop_begin, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_loop_end: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_loop_end")
        return withUnsafePointer(to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_loop_end(_ loopEnd: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: loopEnd) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamWAV.method_set_loop_end, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_loop_end: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_loop_end")
        return withUnsafePointer(to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_loop_end() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AudioStreamWAV.method_get_loop_end, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_mix_rate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_mix_rate")
        return withUnsafePointer(to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mix_rate(_ mixRate: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mixRate) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamWAV.method_set_mix_rate, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_mix_rate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_mix_rate")
        return withUnsafePointer(to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mix_rate() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AudioStreamWAV.method_get_mix_rate, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_stereo: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_stereo")
        return withUnsafePointer(to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_stereo(_ stereo: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: stereo) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamWAV.method_set_stereo, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_stereo: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_stereo")
        return withUnsafePointer(to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_stereo() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioStreamWAV.method_is_stereo, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_save_to_wav: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("save_to_wav")
        return withUnsafePointer(to: &AudioStreamWAV.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Saves the AudioStreamWAV as a WAV file to `path`. Samples with IMA ADPCM or Quite OK Audio formats can't be saved.
    /// 
    /// > Note: A `.wav` extension is automatically appended to `path` if it is missing.
    /// 
    public final func saveToWav(path: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AudioStreamWAV.method_save_to_wav, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
}

