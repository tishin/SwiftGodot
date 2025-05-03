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


/// A stream peer that handles TCP connections.
/// 
/// A stream peer that handles TCP connections. This object can be used to connect to TCP servers, or also is returned by a TCP server.
/// 
/// > Note: When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.
/// 
open class StreamPeerTCP: StreamPeer {
    private static var className = StringName("StreamPeerTCP")
    override open class var godotClassName: StringName { className }
    public enum Status: Int64, CaseIterable {
        /// The initial status of the ``StreamPeerTCP``. This is also the status after disconnecting.
        case none = 0 // STATUS_NONE
        /// A status representing a ``StreamPeerTCP`` that is connecting to a host.
        case connecting = 1 // STATUS_CONNECTING
        /// A status representing a ``StreamPeerTCP`` that is connected to a host.
        case connected = 2 // STATUS_CONNECTED
        /// A status representing a ``StreamPeerTCP`` in error state.
        case error = 3 // STATUS_ERROR
    }
    
    /* Methods */
    fileprivate static let method_bind: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("bind")
        return withUnsafePointer(to: &StreamPeerTCP.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3167955072)!
            }
            
        }
        
    }()
    
    /// Opens the TCP socket, and binds it to the specified local address.
    /// 
    /// This method is generally not needed, and only used to force the subsequent call to ``connectToHost(_:port:)`` to use the specified `host` and `port` as source address. This can be desired in some NAT punchthrough techniques, or when forcing the source network interface.
    /// 
    public final func bind(port: Int32, host: String = "*") -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: port) { pArg0 in
            let host = GString(host)
            withUnsafePointer(to: host.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(StreamPeerTCP.method_bind, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_connect_to_host: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("connect_to_host")
        return withUnsafePointer(to: &StreamPeerTCP.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 993915709)!
            }
            
        }
        
    }()
    
    /// Connects to the specified `host:port` pair. A hostname will be resolved if valid. Returns ``GodotError/ok`` on success.
    public final func connectToHost(_ host: String, port: Int32) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let host = GString(host)
        withUnsafePointer(to: host.content) { pArg0 in
            withUnsafePointer(to: port) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(StreamPeerTCP.method_connect_to_host, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_poll: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("poll")
        return withUnsafePointer(to: &StreamPeerTCP.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166280745)!
            }
            
        }
        
    }()
    
    /// Poll the socket, updating its state. See ``getStatus()``.
    public final func poll() -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(StreamPeerTCP.method_poll, handle, nil, &_result)
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_get_status: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_status")
        return withUnsafePointer(to: &StreamPeerTCP.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 859471121)!
            }
            
        }
        
    }()
    
    /// Returns the status of the connection, see ``StreamPeerTCP/Status``.
    public final func getStatus() -> StreamPeerTCP.Status {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(StreamPeerTCP.method_get_status, handle, nil, &_result)
        return StreamPeerTCP.Status (rawValue: _result)!
    }
    
    fileprivate static let method_get_connected_host: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_connected_host")
        return withUnsafePointer(to: &StreamPeerTCP.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the IP of this peer.
    public final func getConnectedHost() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(StreamPeerTCP.method_get_connected_host, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_connected_port: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_connected_port")
        return withUnsafePointer(to: &StreamPeerTCP.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the port of this peer.
    public final func getConnectedPort() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(StreamPeerTCP.method_get_connected_port, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_local_port: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_local_port")
        return withUnsafePointer(to: &StreamPeerTCP.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the local port to which this peer is bound.
    public final func getLocalPort() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(StreamPeerTCP.method_get_local_port, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_disconnect_from_host: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("disconnect_from_host")
        return withUnsafePointer(to: &StreamPeerTCP.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Disconnects from host.
    public final func disconnectFromHost() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(StreamPeerTCP.method_disconnect_from_host, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_no_delay: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_no_delay")
        return withUnsafePointer(to: &StreamPeerTCP.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// If `enabled` is `true`, packets will be sent immediately. If `enabled` is `false` (the default), packet transfers will be delayed and combined using <a href="https://en.wikipedia.org/wiki/Nagle%27s_algorithm">Nagle's algorithm</a>.
    /// 
    /// > Note: It's recommended to leave this disabled for applications that send large packets or need to transfer a lot of data, as enabling this can decrease the total available bandwidth.
    /// 
    public final func setNoDelay(enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StreamPeerTCP.method_set_no_delay, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}

