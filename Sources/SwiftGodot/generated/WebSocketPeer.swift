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


/// A WebSocket connection.
/// 
/// This class represents WebSocket connection, and can be used as a WebSocket client (RFC 6455-compliant) or as a remote peer of a WebSocket server.
/// 
/// You can send WebSocket binary frames using ``PacketPeer/putPacket(buffer:)``, and WebSocket text frames using ``send(message:writeMode:)`` (prefer text frames when interacting with text-based API). You can check the frame type of the last packet via ``wasStringPacket()``.
/// 
/// To start a WebSocket client, first call ``connectToUrl(_:tlsClientOptions:)``, then regularly call ``poll()`` (e.g. during ``Node`` process). You can query the socket state via ``getReadyState()``, get the number of pending packets using ``PacketPeer/getAvailablePacketCount()``, and retrieve them via ``PacketPeer/getPacket()``.
/// 
/// To use the peer as part of a WebSocket server refer to ``acceptStream(_:)`` and the online tutorial.
/// 
open class WebSocketPeer: PacketPeer {
    private static var className = StringName("WebSocketPeer")
    override open class var godotClassName: StringName { className }
    public enum WriteMode: Int64, CaseIterable {
        /// Specifies that WebSockets messages should be transferred as text payload (only valid UTF-8 is allowed).
        case text = 0 // WRITE_MODE_TEXT
        /// Specifies that WebSockets messages should be transferred as binary payload (any byte combination is allowed).
        case binary = 1 // WRITE_MODE_BINARY
    }
    
    public enum State: Int64, CaseIterable {
        /// Socket has been created. The connection is not yet open.
        case connecting = 0 // STATE_CONNECTING
        /// The connection is open and ready to communicate.
        case open = 1 // STATE_OPEN
        /// The connection is in the process of closing. This means a close request has been sent to the remote peer but confirmation has not been received.
        case closing = 2 // STATE_CLOSING
        /// The connection is closed or couldn't be opened.
        case closed = 3 // STATE_CLOSED
    }
    
    
    /* Properties */
    
    /// The WebSocket sub-protocols allowed during the WebSocket handshake.
    final public var supportedProtocols: PackedStringArray {
        get {
            return get_supported_protocols ()
        }
        
        set {
            set_supported_protocols (newValue)
        }
        
    }
    
    /// The extra HTTP headers to be sent during the WebSocket handshake.
    /// 
    /// > Note: Not supported in Web exports due to browsers' restrictions.
    /// 
    final public var handshakeHeaders: PackedStringArray {
        get {
            return get_handshake_headers ()
        }
        
        set {
            set_handshake_headers (newValue)
        }
        
    }
    
    /// The size of the input buffer in bytes (roughly the maximum amount of memory that will be allocated for the inbound packets).
    final public var inboundBufferSize: Int32 {
        get {
            return get_inbound_buffer_size ()
        }
        
        set {
            set_inbound_buffer_size (newValue)
        }
        
    }
    
    /// The size of the input buffer in bytes (roughly the maximum amount of memory that will be allocated for the outbound packets).
    final public var outboundBufferSize: Int32 {
        get {
            return get_outbound_buffer_size ()
        }
        
        set {
            set_outbound_buffer_size (newValue)
        }
        
    }
    
    /// The maximum amount of packets that will be allowed in the queues (both inbound and outbound).
    final public var maxQueuedPackets: Int32 {
        get {
            return get_max_queued_packets ()
        }
        
        set {
            set_max_queued_packets (newValue)
        }
        
    }
    
    /// The interval (in seconds) at which the peer will automatically send WebSocket "ping" control frames. When set to `0`, no "ping" control frames will be sent.
    /// 
    /// > Note: Has no effect in Web exports due to browser restrictions.
    /// 
    final public var heartbeatInterval: Double {
        get {
            return get_heartbeat_interval ()
        }
        
        set {
            set_heartbeat_interval (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_connect_to_url: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("connect_to_url")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1966198364)!
            }
            
        }
        
    }()
    
    /// Connects to the given URL. TLS certificates will be verified against the hostname when connecting using the `wss://` protocol. You can pass the optional `tlsClientOptions` parameter to customize the trusted certification authorities, or disable the common name verification. See ``TLSOptions/client(trustedChain:commonNameOverride:)`` and ``TLSOptions/clientUnsafe(trustedChain:)``.
    /// 
    /// > Note: This method is non-blocking, and will return ``GodotError/ok`` before the connection is established as long as the provided parameters are valid and the peer is not in an invalid state (e.g. already connected). Regularly call ``poll()`` (e.g. during ``Node`` process) and check the result of ``getReadyState()`` to know whether the connection succeeds or fails.
    /// 
    /// > Note: To avoid mixed content warnings or errors in Web, you may have to use a `url` that starts with `wss://` (secure) instead of `ws://`. When doing so, make sure to use the fully qualified domain name that matches the one defined in the server's TLS certificate. Do not connect directly via the IP address for `wss://` connections, as it won't match with the TLS certificate.
    /// 
    public final func connectToUrl(_ url: String, tlsClientOptions: TLSOptions? = nil) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let url = GString(url)
        withUnsafePointer(to: url.content) { pArg0 in
            withUnsafePointer(to: tlsClientOptions?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(WebSocketPeer.method_connect_to_url, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_accept_stream: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("accept_stream")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 255125695)!
            }
            
        }
        
    }()
    
    /// Accepts a peer connection performing the HTTP handshake as a WebSocket server. The `stream` must be a valid TCP stream retrieved via ``TCPServer/takeConnection()``, or a TLS stream accepted via ``StreamPeerTLS/acceptStream(_:serverOptions:)``.
    /// 
    /// > Note: Not supported in Web exports due to browsers' restrictions.
    /// 
    public final func acceptStream(_ stream: StreamPeer?) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: stream?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(WebSocketPeer.method_accept_stream, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_send: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("send")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2780360567)!
            }
            
        }
        
    }()
    
    /// Sends the given `message` using the desired `writeMode`. When sending a ``String``, prefer using ``sendText(message:)``.
    public final func send(message: PackedByteArray, writeMode: WebSocketPeer.WriteMode = .binary) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: message.content) { pArg0 in
            withUnsafePointer(to: writeMode.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(WebSocketPeer.method_send, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_send_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("send_text")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Sends the given `message` using WebSocket text mode. Prefer this method over ``PacketPeer/putPacket(buffer:)`` when interacting with third-party text-based API (e.g. when using ``JSON`` formatted messages).
    public final func sendText(message: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let message = GString(message)
        withUnsafePointer(to: message.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(WebSocketPeer.method_send_text, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_was_string_packet: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("was_string_packet")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the last received packet was sent as a text payload. See ``WebSocketPeer/WriteMode``.
    public final func wasStringPacket() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(WebSocketPeer.method_was_string_packet, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_poll: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("poll")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Updates the connection state and receive incoming packets. Call this function regularly to keep it in a clean state.
    public final func poll() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(WebSocketPeer.method_poll, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_close: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("close")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1047156615)!
            }
            
        }
        
    }()
    
    /// Closes this WebSocket connection. `code` is the status code for the closure (see RFC 6455 section 7.4 for a list of valid status codes). `reason` is the human readable reason for closing the connection (can be any UTF-8 string that's smaller than 123 bytes). If `code` is negative, the connection will be closed immediately without notifying the remote peer.
    /// 
    /// > Note: To achieve a clean close, you will need to keep polling until ``State/closed`` is reached.
    /// 
    /// > Note: The Web export might not support all status codes. Please refer to browser-specific documentation for more details.
    /// 
    public final func close(code: Int32 = 1000, reason: String = "") {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: code) { pArg0 in
            let reason = GString(reason)
            withUnsafePointer(to: reason.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(WebSocketPeer.method_close, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_connected_host: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_connected_host")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the IP address of the connected peer.
    /// 
    /// > Note: Not available in the Web export.
    /// 
    public final func getConnectedHost() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(WebSocketPeer.method_get_connected_host, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_connected_port: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_connected_port")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the remote port of the connected peer.
    /// 
    /// > Note: Not available in the Web export.
    /// 
    public final func getConnectedPort() -> UInt16 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt16 = 0
        gi.object_method_bind_ptrcall(WebSocketPeer.method_get_connected_port, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_selected_protocol: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_selected_protocol")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the selected WebSocket sub-protocol for this connection or an empty string if the sub-protocol has not been selected yet.
    public final func getSelectedProtocol() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(WebSocketPeer.method_get_selected_protocol, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_requested_url: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_requested_url")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the URL requested by this peer. The URL is derived from the `url` passed to ``connectToUrl(_:tlsClientOptions:)`` or from the HTTP headers when acting as server (i.e. when using ``acceptStream(_:)``).
    public final func getRequestedUrl() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(WebSocketPeer.method_get_requested_url, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_no_delay: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_no_delay")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Disable Nagle's algorithm on the underlying TCP socket (default). See ``StreamPeerTCP/setNoDelay(enabled:)`` for more information.
    /// 
    /// > Note: Not available in the Web export.
    /// 
    public final func setNoDelay(enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(WebSocketPeer.method_set_no_delay, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_current_outbound_buffered_amount: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_current_outbound_buffered_amount")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the current amount of data in the outbound websocket buffer. > Note: Web exports use WebSocket.bufferedAmount, while other platforms use an internal buffer.
    public final func getCurrentOutboundBufferedAmount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(WebSocketPeer.method_get_current_outbound_buffered_amount, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_ready_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_ready_state")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 346482985)!
            }
            
        }
        
    }()
    
    /// Returns the ready state of the connection. See ``WebSocketPeer/State``.
    public final func getReadyState() -> WebSocketPeer.State {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(WebSocketPeer.method_get_ready_state, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return WebSocketPeer.State (rawValue: _result)!
    }
    
    fileprivate static let method_get_close_code: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_close_code")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the received WebSocket close frame status code, or `-1` when the connection was not cleanly closed. Only call this method when ``getReadyState()`` returns ``State/closed``.
    public final func getCloseCode() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(WebSocketPeer.method_get_close_code, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_close_reason: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_close_reason")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the received WebSocket close frame status reason string. Only call this method when ``getReadyState()`` returns ``State/closed``.
    public final func getCloseReason() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(WebSocketPeer.method_get_close_reason, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_supported_protocols: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_supported_protocols")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_supported_protocols() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(WebSocketPeer.method_get_supported_protocols, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_supported_protocols: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_supported_protocols")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4015028928)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_supported_protocols(_ protocols: PackedStringArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: protocols.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(WebSocketPeer.method_set_supported_protocols, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_handshake_headers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_handshake_headers")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_handshake_headers() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(WebSocketPeer.method_get_handshake_headers, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_handshake_headers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_handshake_headers")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4015028928)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_handshake_headers(_ protocols: PackedStringArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: protocols.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(WebSocketPeer.method_set_handshake_headers, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_inbound_buffer_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_inbound_buffer_size")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_inbound_buffer_size() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(WebSocketPeer.method_get_inbound_buffer_size, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_inbound_buffer_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_inbound_buffer_size")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_inbound_buffer_size(_ bufferSize: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: bufferSize) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(WebSocketPeer.method_set_inbound_buffer_size, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_outbound_buffer_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_outbound_buffer_size")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_outbound_buffer_size() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(WebSocketPeer.method_get_outbound_buffer_size, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_outbound_buffer_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_outbound_buffer_size")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_outbound_buffer_size(_ bufferSize: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: bufferSize) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(WebSocketPeer.method_set_outbound_buffer_size, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_max_queued_packets: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_max_queued_packets")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_queued_packets(_ bufferSize: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: bufferSize) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(WebSocketPeer.method_set_max_queued_packets, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_max_queued_packets: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_max_queued_packets")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_queued_packets() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(WebSocketPeer.method_get_max_queued_packets, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_heartbeat_interval: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_heartbeat_interval")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_heartbeat_interval(_ interval: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: interval) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(WebSocketPeer.method_set_heartbeat_interval, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_heartbeat_interval: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_heartbeat_interval")
        return withUnsafePointer(to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_heartbeat_interval() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(WebSocketPeer.method_get_heartbeat_interval, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

