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


/// Class that can be inherited to implement custom multiplayer API networking layers via GDExtension.
/// 
/// This class is designed to be inherited from a GDExtension plugin to implement custom networking layers for the multiplayer API (such as WebRTC). All the methods below **must** be implemented to have a working custom multiplayer implementation. See also ``MultiplayerAPI``.
open class MultiplayerPeerExtension: MultiplayerPeer {
    private static var className = StringName("MultiplayerPeerExtension")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__get_available_packet_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_available_packet_count")
        return withUnsafePointer(to: &MultiplayerPeerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Called when the available packet count is internally requested by the ``MultiplayerAPI``.
    @_documentation(visibility: public)
    open func _getAvailablePacketCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(MultiplayerPeerExtension.method__get_available_packet_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_max_packet_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_max_packet_size")
        return withUnsafePointer(to: &MultiplayerPeerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Called when the maximum allowed packet size (in bytes) is requested by the ``MultiplayerAPI``.
    @_documentation(visibility: public)
    open func _getMaxPacketSize() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(MultiplayerPeerExtension.method__get_max_packet_size, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_packet_script: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_packet_script")
        return withUnsafePointer(to: &MultiplayerPeerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2115431945)!
            }
            
        }
        
    }()
    
    /// Called when a packet needs to be received by the ``MultiplayerAPI``, if ``_getPacket(rBuffer:rBufferSize:)`` isn't implemented. Use this when extending this class via GDScript.
    @_documentation(visibility: public)
    open func _getPacketScript() -> PackedByteArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedByteArray = PackedByteArray ()
        gi.object_method_bind_ptrcall(MultiplayerPeerExtension.method__get_packet_script, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__put_packet_script: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_put_packet_script")
        return withUnsafePointer(to: &MultiplayerPeerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 680677267)!
            }
            
        }
        
    }()
    
    /// Called when a packet needs to be sent by the ``MultiplayerAPI``, if ``_putPacket(pBuffer:pBufferSize:)`` isn't implemented. Use this when extending this class via GDScript.
    @_documentation(visibility: public)
    open func _putPacketScript(pBuffer: PackedByteArray) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: pBuffer.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerPeerExtension.method__put_packet_script, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__get_packet_channel: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_packet_channel")
        return withUnsafePointer(to: &MultiplayerPeerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Called to get the channel over which the next available packet was received. See ``MultiplayerPeer/getPacketChannel()``.
    @_documentation(visibility: public)
    open func _getPacketChannel() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(MultiplayerPeerExtension.method__get_packet_channel, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_packet_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_packet_mode")
        return withUnsafePointer(to: &MultiplayerPeerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3369852622)!
            }
            
        }
        
    }()
    
    /// Called to get the transfer mode the remote peer used to send the next available packet. See ``MultiplayerPeer/getPacketMode()``.
    @_documentation(visibility: public)
    open func _getPacketMode() -> MultiplayerPeer.TransferMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(MultiplayerPeerExtension.method__get_packet_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return MultiplayerPeer.TransferMode (rawValue: _result)!
    }
    
    fileprivate static let method__set_transfer_channel: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_transfer_channel")
        return withUnsafePointer(to: &MultiplayerPeerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Called when the channel to use is set for this ``MultiplayerPeer`` (see ``MultiplayerPeer/transferChannel``).
    @_documentation(visibility: public)
    open func _setTransferChannel(pChannel: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pChannel) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerPeerExtension.method__set_transfer_channel, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_transfer_channel: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_transfer_channel")
        return withUnsafePointer(to: &MultiplayerPeerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Called when the transfer channel to use is read on this ``MultiplayerPeer`` (see ``MultiplayerPeer/transferChannel``).
    @_documentation(visibility: public)
    open func _getTransferChannel() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(MultiplayerPeerExtension.method__get_transfer_channel, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__set_transfer_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_transfer_mode")
        return withUnsafePointer(to: &MultiplayerPeerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 950411049)!
            }
            
        }
        
    }()
    
    /// Called when the transfer mode is set on this ``MultiplayerPeer`` (see ``MultiplayerPeer/transferMode``).
    @_documentation(visibility: public)
    open func _setTransferMode(pMode: MultiplayerPeer.TransferMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerPeerExtension.method__set_transfer_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_transfer_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_transfer_mode")
        return withUnsafePointer(to: &MultiplayerPeerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3369852622)!
            }
            
        }
        
    }()
    
    /// Called when the transfer mode to use is read on this ``MultiplayerPeer`` (see ``MultiplayerPeer/transferMode``).
    @_documentation(visibility: public)
    open func _getTransferMode() -> MultiplayerPeer.TransferMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(MultiplayerPeerExtension.method__get_transfer_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return MultiplayerPeer.TransferMode (rawValue: _result)!
    }
    
    fileprivate static let method__set_target_peer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_target_peer")
        return withUnsafePointer(to: &MultiplayerPeerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Called when the target peer to use is set for this ``MultiplayerPeer`` (see ``MultiplayerPeer/setTargetPeer(id:)``).
    @_documentation(visibility: public)
    open func _setTargetPeer(pPeer: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pPeer) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerPeerExtension.method__set_target_peer, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_packet_peer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_packet_peer")
        return withUnsafePointer(to: &MultiplayerPeerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Called when the ID of the ``MultiplayerPeer`` who sent the most recent packet is requested (see ``MultiplayerPeer/getPacketPeer()``).
    @_documentation(visibility: public)
    open func _getPacketPeer() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(MultiplayerPeerExtension.method__get_packet_peer, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__is_server: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_server")
        return withUnsafePointer(to: &MultiplayerPeerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Called when the "is server" status is requested on the ``MultiplayerAPI``. See ``MultiplayerAPI/isServer()``.
    @_documentation(visibility: public)
    open func _isServer() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(MultiplayerPeerExtension.method__is_server, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__poll: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_poll")
        return withUnsafePointer(to: &MultiplayerPeerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called when the ``MultiplayerAPI`` is polled. See ``MultiplayerAPI/poll()``.
    @_documentation(visibility: public)
    open func _poll() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(MultiplayerPeerExtension.method__poll, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__close: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_close")
        return withUnsafePointer(to: &MultiplayerPeerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called when the multiplayer peer should be immediately closed (see ``MultiplayerPeer/close()``).
    @_documentation(visibility: public)
    open func _close() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(MultiplayerPeerExtension.method__close, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__disconnect_peer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_disconnect_peer")
        return withUnsafePointer(to: &MultiplayerPeerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Called when the connected `pPeer` should be forcibly disconnected (see ``MultiplayerPeer/disconnectPeer(_:force:)``).
    @_documentation(visibility: public)
    open func _disconnectPeer(pPeer: Int32, pForce: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pPeer) { pArg0 in
            withUnsafePointer(to: pForce) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MultiplayerPeerExtension.method__disconnect_peer, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_unique_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_unique_id")
        return withUnsafePointer(to: &MultiplayerPeerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Called when the unique ID of this ``MultiplayerPeer`` is requested (see ``MultiplayerPeer/getUniqueId()``). The value must be between `1` and `2147483647`.
    @_documentation(visibility: public)
    open func _getUniqueId() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(MultiplayerPeerExtension.method__get_unique_id, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__set_refuse_new_connections: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_refuse_new_connections")
        return withUnsafePointer(to: &MultiplayerPeerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Called when the "refuse new connections" status is set on this ``MultiplayerPeer`` (see ``MultiplayerPeer/refuseNewConnections``).
    @_documentation(visibility: public)
    open func _setRefuseNewConnections(pEnable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pEnable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerPeerExtension.method__set_refuse_new_connections, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__is_refusing_new_connections: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_refusing_new_connections")
        return withUnsafePointer(to: &MultiplayerPeerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Called when the "refuse new connections" status is requested on this ``MultiplayerPeer`` (see ``MultiplayerPeer/refuseNewConnections``).
    @_documentation(visibility: public)
    open func _isRefusingNewConnections() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(MultiplayerPeerExtension.method__is_refusing_new_connections, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__is_server_relay_supported: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_server_relay_supported")
        return withUnsafePointer(to: &MultiplayerPeerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Called to check if the server can act as a relay in the current configuration. See ``MultiplayerPeer/isServerRelaySupported()``.
    @_documentation(visibility: public)
    open func _isServerRelaySupported() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(MultiplayerPeerExtension.method__is_server_relay_supported, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_connection_status: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_connection_status")
        return withUnsafePointer(to: &MultiplayerPeerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2147374275)!
            }
            
        }
        
    }()
    
    /// Called when the connection status is requested on the ``MultiplayerPeer`` (see ``MultiplayerPeer/getConnectionStatus()``).
    @_documentation(visibility: public)
    open func _getConnectionStatus() -> MultiplayerPeer.ConnectionStatus {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(MultiplayerPeerExtension.method__get_connection_status, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return MultiplayerPeer.ConnectionStatus (rawValue: _result)!
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_close":
                return _MultiplayerPeerExtension_proxy_close
            case "_disconnect_peer":
                return _MultiplayerPeerExtension_proxy_disconnect_peer
            case "_get_available_packet_count":
                return _MultiplayerPeerExtension_proxy_get_available_packet_count
            case "_get_connection_status":
                return _MultiplayerPeerExtension_proxy_get_connection_status
            case "_get_max_packet_size":
                return _MultiplayerPeerExtension_proxy_get_max_packet_size
            case "_get_packet_channel":
                return _MultiplayerPeerExtension_proxy_get_packet_channel
            case "_get_packet_mode":
                return _MultiplayerPeerExtension_proxy_get_packet_mode
            case "_get_packet_peer":
                return _MultiplayerPeerExtension_proxy_get_packet_peer
            case "_get_packet_script":
                return _MultiplayerPeerExtension_proxy_get_packet_script
            case "_get_transfer_channel":
                return _MultiplayerPeerExtension_proxy_get_transfer_channel
            case "_get_transfer_mode":
                return _MultiplayerPeerExtension_proxy_get_transfer_mode
            case "_get_unique_id":
                return _MultiplayerPeerExtension_proxy_get_unique_id
            case "_is_refusing_new_connections":
                return _MultiplayerPeerExtension_proxy_is_refusing_new_connections
            case "_is_server":
                return _MultiplayerPeerExtension_proxy_is_server
            case "_is_server_relay_supported":
                return _MultiplayerPeerExtension_proxy_is_server_relay_supported
            case "_poll":
                return _MultiplayerPeerExtension_proxy_poll
            case "_put_packet_script":
                return _MultiplayerPeerExtension_proxy_put_packet_script
            case "_set_refuse_new_connections":
                return _MultiplayerPeerExtension_proxy_set_refuse_new_connections
            case "_set_target_peer":
                return _MultiplayerPeerExtension_proxy_set_target_peer
            case "_set_transfer_channel":
                return _MultiplayerPeerExtension_proxy_set_transfer_channel
            case "_set_transfer_mode":
                return _MultiplayerPeerExtension_proxy_set_transfer_mode
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _MultiplayerPeerExtension_proxy_close (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerPeerExtension else { return }
    swiftObject._close ()
}

func _MultiplayerPeerExtension_proxy_disconnect_peer (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerPeerExtension else { return }
    swiftObject._disconnectPeer (pPeer: args [0]!.assumingMemoryBound (to: Int32.self).pointee, pForce: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _MultiplayerPeerExtension_proxy_get_available_packet_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerPeerExtension else { return }
    let ret = swiftObject._getAvailablePacketCount ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _MultiplayerPeerExtension_proxy_get_connection_status (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerPeerExtension else { return }
    let ret = swiftObject._getConnectionStatus ()
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _MultiplayerPeerExtension_proxy_get_max_packet_size (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerPeerExtension else { return }
    let ret = swiftObject._getMaxPacketSize ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _MultiplayerPeerExtension_proxy_get_packet_channel (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerPeerExtension else { return }
    let ret = swiftObject._getPacketChannel ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _MultiplayerPeerExtension_proxy_get_packet_mode (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerPeerExtension else { return }
    let ret = swiftObject._getPacketMode ()
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _MultiplayerPeerExtension_proxy_get_packet_peer (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerPeerExtension else { return }
    let ret = swiftObject._getPacketPeer ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _MultiplayerPeerExtension_proxy_get_packet_script (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerPeerExtension else { return }
    let ret = swiftObject._getPacketScript ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedByteArray
    ret.content = PackedByteArray.zero
}

func _MultiplayerPeerExtension_proxy_get_transfer_channel (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerPeerExtension else { return }
    let ret = swiftObject._getTransferChannel ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _MultiplayerPeerExtension_proxy_get_transfer_mode (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerPeerExtension else { return }
    let ret = swiftObject._getTransferMode ()
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _MultiplayerPeerExtension_proxy_get_unique_id (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerPeerExtension else { return }
    let ret = swiftObject._getUniqueId ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _MultiplayerPeerExtension_proxy_is_refusing_new_connections (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerPeerExtension else { return }
    let ret = swiftObject._isRefusingNewConnections ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _MultiplayerPeerExtension_proxy_is_server (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerPeerExtension else { return }
    let ret = swiftObject._isServer ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _MultiplayerPeerExtension_proxy_is_server_relay_supported (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerPeerExtension else { return }
    let ret = swiftObject._isServerRelaySupported ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _MultiplayerPeerExtension_proxy_poll (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerPeerExtension else { return }
    swiftObject._poll ()
}

func _MultiplayerPeerExtension_proxy_put_packet_script (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerPeerExtension else { return }
    let ret = swiftObject._putPacketScript (pBuffer: PackedByteArray (content: args [0]!.assumingMemoryBound (to: (Int64, Int64).self).pointee))
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _MultiplayerPeerExtension_proxy_set_refuse_new_connections (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerPeerExtension else { return }
    swiftObject._setRefuseNewConnections (pEnable: args [0]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _MultiplayerPeerExtension_proxy_set_target_peer (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerPeerExtension else { return }
    swiftObject._setTargetPeer (pPeer: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
}

func _MultiplayerPeerExtension_proxy_set_transfer_channel (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerPeerExtension else { return }
    swiftObject._setTransferChannel (pChannel: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
}

func _MultiplayerPeerExtension_proxy_set_transfer_mode (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerPeerExtension else { return }
    swiftObject._setTransferMode (pMode: args [0]!.assumingMemoryBound (to: MultiplayerPeer.TransferMode.self).pointee)
}

