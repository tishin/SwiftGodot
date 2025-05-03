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


/// A sequence of Ogg packets.
/// 
/// A sequence of Ogg packets.
open class OggPacketSequence: Resource {
    private static var className = StringName("OggPacketSequence")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Contains the raw packets that make up this OggPacketSequence.
    final public var packetData: TypedArray<VariantArray> {
        get {
            return get_packet_data ()
        }
        
        set {
            set_packet_data (newValue)
        }
        
    }
    
    /// Contains the granule positions for each page in this packet sequence.
    final public var granulePositions: PackedInt64Array {
        get {
            return get_packet_granule_positions ()
        }
        
        set {
            set_packet_granule_positions (newValue)
        }
        
    }
    
    /// Holds sample rate information about this sequence. Must be set by another class that actually understands the codec.
    final public var samplingRate: Double {
        get {
            return get_sampling_rate ()
        }
        
        set {
            set_sampling_rate (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_packet_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_packet_data")
        return withUnsafePointer(to: &OggPacketSequence.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_packet_data(_ packetData: TypedArray<VariantArray>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: packetData.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OggPacketSequence.method_set_packet_data, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_packet_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_packet_data")
        return withUnsafePointer(to: &OggPacketSequence.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_packet_data() -> TypedArray<VariantArray> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(OggPacketSequence.method_get_packet_data, handle, nil, &_result)
        return TypedArray<VariantArray>(takingOver: _result)
    }
    
    fileprivate static let method_set_packet_granule_positions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_packet_granule_positions")
        return withUnsafePointer(to: &OggPacketSequence.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3709968205)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_packet_granule_positions(_ granulePositions: PackedInt64Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: granulePositions.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OggPacketSequence.method_set_packet_granule_positions, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_packet_granule_positions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_packet_granule_positions")
        return withUnsafePointer(to: &OggPacketSequence.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 235988956)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_packet_granule_positions() -> PackedInt64Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt64Array = PackedInt64Array ()
        gi.object_method_bind_ptrcall(OggPacketSequence.method_get_packet_granule_positions, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_sampling_rate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sampling_rate")
        return withUnsafePointer(to: &OggPacketSequence.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sampling_rate(_ samplingRate: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: samplingRate) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OggPacketSequence.method_set_sampling_rate, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sampling_rate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sampling_rate")
        return withUnsafePointer(to: &OggPacketSequence.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sampling_rate() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(OggPacketSequence.method_get_sampling_rate, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_length: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_length")
        return withUnsafePointer(to: &OggPacketSequence.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// The length of this stream, in seconds.
    public final func getLength() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(OggPacketSequence.method_get_length, handle, nil, &_result)
        return _result
    }
    
}

