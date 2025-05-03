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


open class WebRTCDataChannel: PacketPeer {
    private static var className = StringName("WebRTCDataChannel")
    override open class var godotClassName: StringName { className }
    public enum WriteMode: Int64, CaseIterable {
        /// Tells the channel to send data over this channel as text. An external peer (non-Godot) would receive this as a string.
        case text = 0 // WRITE_MODE_TEXT
        /// Tells the channel to send data over this channel as binary. An external peer (non-Godot) would receive this as array buffer or blob.
        case binary = 1 // WRITE_MODE_BINARY
    }
    
    public enum ChannelState: Int64, CaseIterable {
        /// The channel was created, but it's still trying to connect.
        case connecting = 0 // STATE_CONNECTING
        /// The channel is currently open, and data can flow over it.
        case open = 1 // STATE_OPEN
        /// The channel is being closed, no new messages will be accepted, but those already in queue will be flushed.
        case closing = 2 // STATE_CLOSING
        /// The channel was closed, or connection failed.
        case closed = 3 // STATE_CLOSED
    }
    
    
    /* Properties */
    
    /// The transfer mode to use when sending outgoing packet. Either text or binary.
    final public var writeMode: WebRTCDataChannel.WriteMode {
        get {
            return get_write_mode ()
        }
        
        set {
            set_write_mode (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_poll: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("poll")
        return withUnsafePointer(to: &WebRTCDataChannel.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166280745)!
            }
            
        }
        
    }()
    
    /// Reserved, but not used for now.
    public final func poll() -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(WebRTCDataChannel.method_poll, handle, nil, &_result)
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_close: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("close")
        return withUnsafePointer(to: &WebRTCDataChannel.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Closes this data channel, notifying the other peer.
    public final func close() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(WebRTCDataChannel.method_close, handle, nil, nil)
        
    }
    
    fileprivate static let method_was_string_packet: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("was_string_packet")
        return withUnsafePointer(to: &WebRTCDataChannel.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the last received packet was transferred as text. See ``writeMode``.
    public final func wasStringPacket() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(WebRTCDataChannel.method_was_string_packet, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_write_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_write_mode")
        return withUnsafePointer(to: &WebRTCDataChannel.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1999768052)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_write_mode(_ writeMode: WebRTCDataChannel.WriteMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: writeMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(WebRTCDataChannel.method_set_write_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_write_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_write_mode")
        return withUnsafePointer(to: &WebRTCDataChannel.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2848495172)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_write_mode() -> WebRTCDataChannel.WriteMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(WebRTCDataChannel.method_get_write_mode, handle, nil, &_result)
        return WebRTCDataChannel.WriteMode (rawValue: _result)!
    }
    
    fileprivate static let method_get_ready_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_ready_state")
        return withUnsafePointer(to: &WebRTCDataChannel.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3501143017)!
            }
            
        }
        
    }()
    
    /// Returns the current state of this channel, see ``WebRTCDataChannel/ChannelState``.
    public final func getReadyState() -> WebRTCDataChannel.ChannelState {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(WebRTCDataChannel.method_get_ready_state, handle, nil, &_result)
        return WebRTCDataChannel.ChannelState (rawValue: _result)!
    }
    
    fileprivate static let method_get_label: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_label")
        return withUnsafePointer(to: &WebRTCDataChannel.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the label assigned to this channel during creation.
    public final func getLabel() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(WebRTCDataChannel.method_get_label, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_is_ordered: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_ordered")
        return withUnsafePointer(to: &WebRTCDataChannel.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this channel was created with ordering enabled (default).
    public final func isOrdered() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(WebRTCDataChannel.method_is_ordered, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_id")
        return withUnsafePointer(to: &WebRTCDataChannel.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the ID assigned to this channel during creation (or auto-assigned during negotiation).
    /// 
    /// If the channel is not negotiated out-of-band the ID will only be available after the connection is established (will return `65535` until then).
    /// 
    public final func getId() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(WebRTCDataChannel.method_get_id, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_max_packet_life_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_max_packet_life_time")
        return withUnsafePointer(to: &WebRTCDataChannel.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the `maxPacketLifeTime` value assigned to this channel during creation.
    /// 
    /// Will be `65535` if not specified.
    /// 
    public final func getMaxPacketLifeTime() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(WebRTCDataChannel.method_get_max_packet_life_time, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_max_retransmits: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_max_retransmits")
        return withUnsafePointer(to: &WebRTCDataChannel.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the `maxRetransmits` value assigned to this channel during creation.
    /// 
    /// Will be `65535` if not specified.
    /// 
    public final func getMaxRetransmits() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(WebRTCDataChannel.method_get_max_retransmits, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_protocol: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_protocol")
        return withUnsafePointer(to: &WebRTCDataChannel.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the sub-protocol assigned to this channel during creation. An empty string if not specified.
    public final func getProtocol() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(WebRTCDataChannel.method_get_protocol, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_is_negotiated: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_negotiated")
        return withUnsafePointer(to: &WebRTCDataChannel.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this channel was created with out-of-band configuration.
    public final func isNegotiated() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(WebRTCDataChannel.method_is_negotiated, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_buffered_amount: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_buffered_amount")
        return withUnsafePointer(to: &WebRTCDataChannel.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of bytes currently queued to be sent over this channel.
    public final func getBufferedAmount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(WebRTCDataChannel.method_get_buffered_amount, handle, nil, &_result)
        return _result
    }
    
}

