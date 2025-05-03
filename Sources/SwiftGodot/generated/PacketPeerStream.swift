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


/// Wrapper to use a PacketPeer over a StreamPeer.
/// 
/// PacketStreamPeer provides a wrapper for working using packets over a stream. This allows for using packet based code with StreamPeers. PacketPeerStream implements a custom protocol over the StreamPeer, so the user should not read or write to the wrapped StreamPeer directly.
/// 
/// > Note: When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.
/// 
open class PacketPeerStream: PacketPeer {
    private static var className = StringName("PacketPeerStream")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    final public var inputBufferMaxSize: Int32 {
        get {
            return get_input_buffer_max_size ()
        }
        
        set {
            set_input_buffer_max_size (newValue)
        }
        
    }
    
    final public var outputBufferMaxSize: Int32 {
        get {
            return get_output_buffer_max_size ()
        }
        
        set {
            set_output_buffer_max_size (newValue)
        }
        
    }
    
    /// The wrapped ``StreamPeer`` object.
    final public var streamPeer: StreamPeer? {
        get {
            return get_stream_peer ()
        }
        
        set {
            set_stream_peer (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_stream_peer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_stream_peer")
        return withUnsafePointer(to: &PacketPeerStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3281897016)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_stream_peer(_ peer: StreamPeer?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: peer?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PacketPeerStream.method_set_stream_peer, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_stream_peer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_stream_peer")
        return withUnsafePointer(to: &PacketPeerStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2741655269)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_stream_peer() -> StreamPeer? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(PacketPeerStream.method_get_stream_peer, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_input_buffer_max_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_input_buffer_max_size")
        return withUnsafePointer(to: &PacketPeerStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_input_buffer_max_size(_ maxSizeBytes: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: maxSizeBytes) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PacketPeerStream.method_set_input_buffer_max_size, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_output_buffer_max_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_output_buffer_max_size")
        return withUnsafePointer(to: &PacketPeerStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_output_buffer_max_size(_ maxSizeBytes: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: maxSizeBytes) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PacketPeerStream.method_set_output_buffer_max_size, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_input_buffer_max_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_input_buffer_max_size")
        return withUnsafePointer(to: &PacketPeerStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_input_buffer_max_size() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(PacketPeerStream.method_get_input_buffer_max_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_output_buffer_max_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_output_buffer_max_size")
        return withUnsafePointer(to: &PacketPeerStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_output_buffer_max_size() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(PacketPeerStream.method_get_output_buffer_max_size, handle, nil, &_result)
        return _result
    }
    
}

