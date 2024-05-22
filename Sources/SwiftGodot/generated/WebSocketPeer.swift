// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

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
    override open class var godotClassName: StringName { "WebSocketPeer" }
    public enum WriteMode: Int64, CaseIterable, CustomDebugStringConvertible {
        /// Specifies that WebSockets messages should be transferred as text payload (only valid UTF-8 is allowed).
        case text = 0 // WRITE_MODE_TEXT
        /// Specifies that WebSockets messages should be transferred as binary payload (any byte combination is allowed).
        case binary = 1 // WRITE_MODE_BINARY
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .text: return ".text"
                case .binary: return ".binary"
            }
            
        }
        
    }
    
    public enum State: Int64, CaseIterable, CustomDebugStringConvertible {
        /// Socket has been created. The connection is not yet open.
        case connecting = 0 // STATE_CONNECTING
        /// The connection is open and ready to communicate.
        case open = 1 // STATE_OPEN
        /// The connection is in the process of closing. This means a close request has been sent to the remote peer but confirmation has not been received.
        case closing = 2 // STATE_CLOSING
        /// The connection is closed or couldn't be opened.
        case closed = 3 // STATE_CLOSED
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .connecting: return ".connecting"
                case .open: return ".open"
                case .closing: return ".closing"
                case .closed: return ".closed"
            }
            
        }
        
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
    
    /* Methods */
    fileprivate static var method_connect_to_url: GDExtensionMethodBindPtr = {
        let methodName = StringName ("connect_to_url")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1966198364)!
            }
            
        }
        
    }()
    
    /// Connects to the given URL. TLS certificates will be verified against the hostname when connecting using the `wss://` protocol. You can pass the optional `tlsClientOptions` parameter to customize the trusted certification authorities, or disable the common name verification. See ``TLSOptions/client(trustedChain:commonNameOverride:)`` and ``TLSOptions/clientUnsafe(trustedChain:)``.
    /// 
    /// > Note: To avoid mixed content warnings or errors in Web, you may have to use a `url` that starts with `wss://` (secure) instead of `ws://`. When doing so, make sure to use the fully qualified domain name that matches the one defined in the server's TLS certificate. Do not connect directly via the IP address for `wss://` connections, as it won't match with the TLS certificate.
    /// 
    public final func connectToUrl (_ url: String, tlsClientOptions: TLSOptions? = nil)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        let gstr_url = GString (url)
        var copy_tls_client_options_handle = tlsClientOptions?.handle
        
        gi.object_method_bind_ptrcall_v (WebSocketPeer.method_connect_to_url, UnsafeMutableRawPointer (mutating: handle), &_result, &gstr_url.content, &copy_tls_client_options_handle)
        return GodotError (rawValue: _result)!
        #else
        
        let gstr_url = GString (url)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_url.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: tlsClientOptions?.handle) { p1 in
            _args.append (tlsClientOptions == nil ? nil : p1)
        
                gi.object_method_bind_ptrcall (WebSocketPeer.method_connect_to_url, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return GodotError (rawValue: _result)!
            }
        }
        
        #endif
    }
    
    fileprivate static var method_accept_stream: GDExtensionMethodBindPtr = {
        let methodName = StringName ("accept_stream")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 255125695)!
            }
            
        }
        
    }()
    
    /// Accepts a peer connection performing the HTTP handshake as a WebSocket server. The `stream` must be a valid TCP stream retrieved via ``TCPServer/takeConnection()``, or a TLS stream accepted via ``StreamPeerTLS/acceptStream(_:serverOptions:)``.
    /// 
    /// > Note: Not supported in Web exports due to browsers' restrictions.
    /// 
    public final func acceptStream (_ stream: StreamPeer?)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        var copy_stream_handle = stream?.handle
        
        gi.object_method_bind_ptrcall_v (WebSocketPeer.method_accept_stream, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_stream_handle)
        return GodotError (rawValue: _result)!
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: stream?.handle) { p0 in
        _args.append (stream == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (WebSocketPeer.method_accept_stream, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return GodotError (rawValue: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_send: GDExtensionMethodBindPtr = {
        let methodName = StringName ("send")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2780360567)!
            }
            
        }
        
    }()
    
    /// Sends the given `message` using the desired `writeMode`. When sending a ``String``, prefer using ``sendText(message:)``.
    public final func send (message: PackedByteArray, writeMode: WebSocketPeer.WriteMode = .binary)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        var copy_write_mode = Int64 (writeMode.rawValue)
        
        gi.object_method_bind_ptrcall_v (WebSocketPeer.method_send, UnsafeMutableRawPointer (mutating: handle), &_result, &message.content, &copy_write_mode)
        return GodotError (rawValue: _result)!
        #else
        
        var copy_write_mode = Int64 (writeMode.rawValue)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &message.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_write_mode) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (WebSocketPeer.method_send, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return GodotError (rawValue: _result)!
            }
        }
        
        #endif
    }
    
    fileprivate static var method_send_text: GDExtensionMethodBindPtr = {
        let methodName = StringName ("send_text")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Sends the given `message` using WebSocket text mode. Prefer this method over ``PacketPeer/putPacket(buffer:)`` when interacting with third-party text-based API (e.g. when using ``JSON`` formatted messages).
    public final func sendText (message: String)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        let gstr_message = GString (message)
        
        gi.object_method_bind_ptrcall_v (WebSocketPeer.method_send_text, UnsafeMutableRawPointer (mutating: handle), &_result, &gstr_message.content)
        return GodotError (rawValue: _result)!
        #else
        
        let gstr_message = GString (message)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_message.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (WebSocketPeer.method_send_text, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return GodotError (rawValue: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_was_string_packet: GDExtensionMethodBindPtr = {
        let methodName = StringName ("was_string_packet")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the last received packet was sent as a text payload. See ``WebSocketPeer/WriteMode``.
    public final func wasStringPacket ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (WebSocketPeer.method_was_string_packet, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_poll: GDExtensionMethodBindPtr = {
        let methodName = StringName ("poll")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Updates the connection state and receive incoming packets. Call this function regularly to keep it in a clean state.
    public final func poll () {
        gi.object_method_bind_ptrcall (WebSocketPeer.method_poll, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_close: GDExtensionMethodBindPtr = {
        let methodName = StringName ("close")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1047156615)!
            }
            
        }
        
    }()
    
    /// Closes this WebSocket connection. `code` is the status code for the closure (see RFC 6455 section 7.4 for a list of valid status codes). `reason` is the human readable reason for closing the connection (can be any UTF-8 string that's smaller than 123 bytes). If `code` is negative, the connection will be closed immediately without notifying the remote peer.
    /// 
    /// > Note: To achieve a clean close, you will need to keep polling until .closed is reached.
    /// 
    /// > Note: The Web export might not support all status codes. Please refer to browser-specific documentation for more details.
    /// 
    public final func close (code: Int32 = 1000, reason: String = "") {
        #if true
        
        var copy_code: Int = Int (code)
        let gstr_reason = GString (reason)
        
        gi.object_method_bind_ptrcall_v (WebSocketPeer.method_close, UnsafeMutableRawPointer (mutating: handle), nil, &copy_code, &gstr_reason.content)
        
        #else
        
        var copy_code: Int = Int (code)
        let gstr_reason = GString (reason)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_code) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &gstr_reason.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (WebSocketPeer.method_close, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_connected_host: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_connected_host")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the IP address of the connected peer.
    /// 
    /// > Note: Not available in the Web export.
    /// 
    public final func getConnectedHost ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (WebSocketPeer.method_get_connected_host, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_get_connected_port: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_connected_port")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the remote port of the connected peer.
    /// 
    /// > Note: Not available in the Web export.
    /// 
    public final func getConnectedPort ()-> UInt16 {
        var _result: UInt16 = 0
        gi.object_method_bind_ptrcall (WebSocketPeer.method_get_connected_port, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_selected_protocol: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_selected_protocol")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the selected WebSocket sub-protocol for this connection or an empty string if the sub-protocol has not been selected yet.
    public final func getSelectedProtocol ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (WebSocketPeer.method_get_selected_protocol, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_get_requested_url: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_requested_url")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the URL requested by this peer. The URL is derived from the `url` passed to ``connectToUrl(_:tlsClientOptions:)`` or from the HTTP headers when acting as server (i.e. when using ``acceptStream(_:)``).
    public final func getRequestedUrl ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (WebSocketPeer.method_get_requested_url, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_set_no_delay: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_no_delay")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Disable Nagle's algorithm on the underling TCP socket (default). See ``StreamPeerTCP/setNoDelay(enabled:)`` for more information.
    /// 
    /// > Note: Not available in the Web export.
    /// 
    public final func setNoDelay (enabled: Bool) {
        #if true
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (WebSocketPeer.method_set_no_delay, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (WebSocketPeer.method_set_no_delay, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_current_outbound_buffered_amount: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_current_outbound_buffered_amount")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the current amount of data in the outbound websocket buffer. > Note: Web exports use WebSocket.bufferedAmount, while other platforms use an internal buffer.
    public final func getCurrentOutboundBufferedAmount ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (WebSocketPeer.method_get_current_outbound_buffered_amount, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_ready_state: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_ready_state")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 346482985)!
            }
            
        }
        
    }()
    
    /// Returns the ready state of the connection. See ``WebSocketPeer/State``.
    public final func getReadyState ()-> WebSocketPeer.State {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (WebSocketPeer.method_get_ready_state, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return WebSocketPeer.State (rawValue: _result)!
    }
    
    fileprivate static var method_get_close_code: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_close_code")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the received WebSocket close frame status code, or `-1` when the connection was not cleanly closed. Only call this method when ``getReadyState()`` returns .closed.
    public final func getCloseCode ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (WebSocketPeer.method_get_close_code, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_close_reason: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_close_reason")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the received WebSocket close frame status reason string. Only call this method when ``getReadyState()`` returns .closed.
    public final func getCloseReason ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (WebSocketPeer.method_get_close_reason, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_get_supported_protocols: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_supported_protocols")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_supported_protocols ()-> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall (WebSocketPeer.method_get_supported_protocols, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_supported_protocols: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_supported_protocols")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4015028928)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_supported_protocols (_ protocols: PackedStringArray) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (WebSocketPeer.method_set_supported_protocols, UnsafeMutableRawPointer (mutating: handle), nil, &protocols.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &protocols.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (WebSocketPeer.method_set_supported_protocols, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_handshake_headers: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_handshake_headers")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_handshake_headers ()-> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall (WebSocketPeer.method_get_handshake_headers, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_handshake_headers: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_handshake_headers")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4015028928)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_handshake_headers (_ protocols: PackedStringArray) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (WebSocketPeer.method_set_handshake_headers, UnsafeMutableRawPointer (mutating: handle), nil, &protocols.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &protocols.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (WebSocketPeer.method_set_handshake_headers, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_inbound_buffer_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_inbound_buffer_size")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_inbound_buffer_size ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (WebSocketPeer.method_get_inbound_buffer_size, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_inbound_buffer_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_inbound_buffer_size")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_inbound_buffer_size (_ bufferSize: Int32) {
        #if true
        
        var copy_buffer_size: Int = Int (bufferSize)
        
        gi.object_method_bind_ptrcall_v (WebSocketPeer.method_set_inbound_buffer_size, UnsafeMutableRawPointer (mutating: handle), nil, &copy_buffer_size)
        
        #else
        
        var copy_buffer_size: Int = Int (bufferSize)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_buffer_size) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (WebSocketPeer.method_set_inbound_buffer_size, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_outbound_buffer_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_outbound_buffer_size")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_outbound_buffer_size ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (WebSocketPeer.method_get_outbound_buffer_size, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_outbound_buffer_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_outbound_buffer_size")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_outbound_buffer_size (_ bufferSize: Int32) {
        #if true
        
        var copy_buffer_size: Int = Int (bufferSize)
        
        gi.object_method_bind_ptrcall_v (WebSocketPeer.method_set_outbound_buffer_size, UnsafeMutableRawPointer (mutating: handle), nil, &copy_buffer_size)
        
        #else
        
        var copy_buffer_size: Int = Int (bufferSize)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_buffer_size) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (WebSocketPeer.method_set_outbound_buffer_size, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_max_queued_packets: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_max_queued_packets")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_queued_packets (_ bufferSize: Int32) {
        #if true
        
        var copy_buffer_size: Int = Int (bufferSize)
        
        gi.object_method_bind_ptrcall_v (WebSocketPeer.method_set_max_queued_packets, UnsafeMutableRawPointer (mutating: handle), nil, &copy_buffer_size)
        
        #else
        
        var copy_buffer_size: Int = Int (bufferSize)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_buffer_size) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (WebSocketPeer.method_set_max_queued_packets, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_max_queued_packets: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_max_queued_packets")
        return withUnsafePointer (to: &WebSocketPeer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_queued_packets ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (WebSocketPeer.method_get_max_queued_packets, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

