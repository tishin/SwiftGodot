// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A stream peer that handles TCP connections.
/// 
/// A stream peer that handles TCP connections. This object can be used to connect to TCP servers, or also is returned by a TCP server.
/// 
/// > Note: When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.
/// 
open class StreamPeerTCP: StreamPeer {
    override open class var godotClassName: StringName { "StreamPeerTCP" }
    public enum Status: Int64, CustomDebugStringConvertible {
        /// The initial status of the ``StreamPeerTCP``. This is also the status after disconnecting.
        case none = 0 // STATUS_NONE
        /// A status representing a ``StreamPeerTCP`` that is connecting to a host.
        case connecting = 1 // STATUS_CONNECTING
        /// A status representing a ``StreamPeerTCP`` that is connected to a host.
        case connected = 2 // STATUS_CONNECTED
        /// A status representing a ``StreamPeerTCP`` in error state.
        case error = 3 // STATUS_ERROR
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .none: return ".none"
                case .connecting: return ".connecting"
                case .connected: return ".connected"
                case .error: return ".error"
            }
            
        }
        
    }
    
    /* Methods */
    fileprivate static var method_bind: GDExtensionMethodBindPtr = {
        let methodName = StringName ("bind")
        return withUnsafePointer (to: &StreamPeerTCP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3167955072)!
            }
            
        }
        
    }()
    
    /// Opens the TCP socket, and binds it to the specified local address.
    /// 
    /// This method is generally not needed, and only used to force the subsequent call to ``connectToHost(_:port:)`` to use the specified `host` and `port` as source address. This can be desired in some NAT punchthrough techniques, or when forcing the source network interface.
    /// 
    public final func bind (port: Int32, host: String = "*")-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        var copy_port: Int = Int (port)
        let gstr_host = GString (host)
        
        gi.object_method_bind_ptrcall_v (StreamPeerTCP.method_bind, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_port, &gstr_host.content)
        return GodotError (rawValue: _result)!
        #else
        
        var copy_port: Int = Int (port)
        let gstr_host = GString (host)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_port) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &gstr_host.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (StreamPeerTCP.method_bind, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return GodotError (rawValue: _result)!
            }
        }
        
        #endif
    }
    
    fileprivate static var method_connect_to_host: GDExtensionMethodBindPtr = {
        let methodName = StringName ("connect_to_host")
        return withUnsafePointer (to: &StreamPeerTCP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 993915709)!
            }
            
        }
        
    }()
    
    /// Connects to the specified `host:port` pair. A hostname will be resolved if valid. Returns ``GodotError/ok`` on success.
    public final func connectToHost (_ host: String, port: Int32)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        let gstr_host = GString (host)
        var copy_port: Int = Int (port)
        
        gi.object_method_bind_ptrcall_v (StreamPeerTCP.method_connect_to_host, UnsafeMutableRawPointer (mutating: handle), &_result, &gstr_host.content, &copy_port)
        return GodotError (rawValue: _result)!
        #else
        
        let gstr_host = GString (host)
        var copy_port: Int = Int (port)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_host.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_port) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (StreamPeerTCP.method_connect_to_host, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return GodotError (rawValue: _result)!
            }
        }
        
        #endif
    }
    
    fileprivate static var method_poll: GDExtensionMethodBindPtr = {
        let methodName = StringName ("poll")
        return withUnsafePointer (to: &StreamPeerTCP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 166280745)!
            }
            
        }
        
    }()
    
    /// Poll the socket, updating its state. See ``getStatus()``.
    public final func poll ()-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (StreamPeerTCP.method_poll, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static var method_get_status: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_status")
        return withUnsafePointer (to: &StreamPeerTCP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 859471121)!
            }
            
        }
        
    }()
    
    /// Returns the status of the connection, see ``StreamPeerTCP/Status``.
    public final func getStatus ()-> StreamPeerTCP.Status {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (StreamPeerTCP.method_get_status, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return StreamPeerTCP.Status (rawValue: _result)!
    }
    
    fileprivate static var method_get_connected_host: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_connected_host")
        return withUnsafePointer (to: &StreamPeerTCP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the IP of this peer.
    public final func getConnectedHost ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (StreamPeerTCP.method_get_connected_host, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_get_connected_port: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_connected_port")
        return withUnsafePointer (to: &StreamPeerTCP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the port of this peer.
    public final func getConnectedPort ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (StreamPeerTCP.method_get_connected_port, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_local_port: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_local_port")
        return withUnsafePointer (to: &StreamPeerTCP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the local port to which this peer is bound.
    public final func getLocalPort ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (StreamPeerTCP.method_get_local_port, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_disconnect_from_host: GDExtensionMethodBindPtr = {
        let methodName = StringName ("disconnect_from_host")
        return withUnsafePointer (to: &StreamPeerTCP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Disconnects from host.
    public final func disconnectFromHost () {
        gi.object_method_bind_ptrcall (StreamPeerTCP.method_disconnect_from_host, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_set_no_delay: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_no_delay")
        return withUnsafePointer (to: &StreamPeerTCP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// If `enabled` is `true`, packets will be sent immediately. If `enabled` is `false` (the default), packet transfers will be delayed and combined using [url=https://en.wikipedia.org/wiki/Nagle%27s_algorithm]Nagle's algorithm</a>.
    /// 
    /// > Note: It's recommended to leave this disabled for applications that send large packets or need to transfer a lot of data, as enabling this can decrease the total available bandwidth.
    /// 
    public final func setNoDelay (enabled: Bool) {
        #if true
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (StreamPeerTCP.method_set_no_delay, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (StreamPeerTCP.method_set_no_delay, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
}

