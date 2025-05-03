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


/// UDP packet peer.
/// 
/// UDP packet peer. Can be used to send and receive raw UDP packets as well as ``Variant``s.
/// 
/// **Example:** Send a packet:
/// 
/// **Example:** Listen for packets:
/// 
/// > Note: When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.
/// 
open class PacketPeerUDP: PacketPeer {
    private static var className = StringName("PacketPeerUDP")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_bind: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("bind")
        return withUnsafePointer(to: &PacketPeerUDP.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4051239242)!
            }
            
        }
        
    }()
    
    /// Binds this ``PacketPeerUDP`` to the specified `port` and `bindAddress` with a buffer size `recvBufSize`, allowing it to receive incoming packets.
    /// 
    /// If `bindAddress` is set to `"*"` (default), the peer will be bound on all available addresses (both IPv4 and IPv6).
    /// 
    /// If `bindAddress` is set to `"0.0.0.0"` (for IPv4) or `"::"` (for IPv6), the peer will be bound to all available addresses matching that IP type.
    /// 
    /// If `bindAddress` is set to any valid address (e.g. `"192.168.1.101"`, `"::1"`, etc.), the peer will only be bound to the interface with that address (or fail if no interface with the given address exists).
    /// 
    public final func bind(port: Int32, bindAddress: String = "*", recvBufSize: Int32 = 65536) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: port) { pArg0 in
            let bindAddress = GString(bindAddress)
            withUnsafePointer(to: bindAddress.content) { pArg1 in
                withUnsafePointer(to: recvBufSize) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PacketPeerUDP.method_bind, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_close: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("close")
        return withUnsafePointer(to: &PacketPeerUDP.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Closes the ``PacketPeerUDP``'s underlying UDP socket.
    public final func close() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(PacketPeerUDP.method_close, handle, nil, nil)
        
    }
    
    fileprivate static let method_wait: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("wait")
        return withUnsafePointer(to: &PacketPeerUDP.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166280745)!
            }
            
        }
        
    }()
    
    /// Waits for a packet to arrive on the bound address. See ``bind(port:bindAddress:recvBufSize:)``.
    /// 
    /// > Note: ``wait()`` can't be interrupted once it has been called. This can be worked around by allowing the other party to send a specific "death pill" packet like this:
    /// 
    public final func wait() -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(PacketPeerUDP.method_wait, handle, nil, &_result)
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_is_bound: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_bound")
        return withUnsafePointer(to: &PacketPeerUDP.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns whether this ``PacketPeerUDP`` is bound to an address and can receive packets.
    public final func isBound() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PacketPeerUDP.method_is_bound, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_connect_to_host: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("connect_to_host")
        return withUnsafePointer(to: &PacketPeerUDP.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 993915709)!
            }
            
        }
        
    }()
    
    /// Calling this method connects this UDP peer to the given `host`/`port` pair. UDP is in reality connectionless, so this option only means that incoming packets from different addresses are automatically discarded, and that outgoing packets are always sent to the connected address (future calls to ``setDestAddress(host:port:)`` are not allowed). This method does not send any data to the remote peer, to do that, use ``PacketPeer/putVar(_:fullObjects:)`` or ``PacketPeer/putPacket(buffer:)`` as usual. See also ``UDPServer``.
    /// 
    /// > Note: Connecting to the remote peer does not help to protect from malicious attacks like IP spoofing, etc. Think about using an encryption technique like TLS or DTLS if you feel like your application is transferring sensitive information.
    /// 
    public final func connectToHost(_ host: String, port: Int32) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let host = GString(host)
        withUnsafePointer(to: host.content) { pArg0 in
            withUnsafePointer(to: port) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PacketPeerUDP.method_connect_to_host, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_is_socket_connected: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_socket_connected")
        return withUnsafePointer(to: &PacketPeerUDP.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the UDP socket is open and has been connected to a remote address. See ``connectToHost(_:port:)``.
    public final func isSocketConnected() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PacketPeerUDP.method_is_socket_connected, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_packet_ip: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_packet_ip")
        return withUnsafePointer(to: &PacketPeerUDP.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the IP of the remote peer that sent the last packet(that was received with ``PacketPeer/getPacket()`` or ``PacketPeer/getVar(allowObjects:)``).
    public final func getPacketIp() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(PacketPeerUDP.method_get_packet_ip, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_packet_port: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_packet_port")
        return withUnsafePointer(to: &PacketPeerUDP.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the port of the remote peer that sent the last packet(that was received with ``PacketPeer/getPacket()`` or ``PacketPeer/getVar(allowObjects:)``).
    public final func getPacketPort() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(PacketPeerUDP.method_get_packet_port, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_local_port: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_local_port")
        return withUnsafePointer(to: &PacketPeerUDP.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the local port to which this peer is bound.
    public final func getLocalPort() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(PacketPeerUDP.method_get_local_port, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_dest_address: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_dest_address")
        return withUnsafePointer(to: &PacketPeerUDP.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 993915709)!
            }
            
        }
        
    }()
    
    /// Sets the destination address and port for sending packets and variables. A hostname will be resolved using DNS if needed.
    /// 
    /// > Note: ``setBroadcastEnabled(_:)`` must be enabled before sending packets to a broadcast address (e.g. `255.255.255.255`).
    /// 
    public final func setDestAddress(host: String, port: Int32) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let host = GString(host)
        withUnsafePointer(to: host.content) { pArg0 in
            withUnsafePointer(to: port) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PacketPeerUDP.method_set_dest_address, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_set_broadcast_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_broadcast_enabled")
        return withUnsafePointer(to: &PacketPeerUDP.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Enable or disable sending of broadcast packets (e.g. `set_dest_address("255.255.255.255", 4343)`. This option is disabled by default.
    /// 
    /// > Note: Some Android devices might require the `CHANGE_WIFI_MULTICAST_STATE` permission and this option to be enabled to receive broadcast packets too.
    /// 
    public final func setBroadcastEnabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PacketPeerUDP.method_set_broadcast_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_join_multicast_group: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("join_multicast_group")
        return withUnsafePointer(to: &PacketPeerUDP.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 852856452)!
            }
            
        }
        
    }()
    
    /// Joins the multicast group specified by `multicastAddress` using the interface identified by `interfaceName`.
    /// 
    /// You can join the same multicast group with multiple interfaces. Use ``IP/getLocalInterfaces()`` to know which are available.
    /// 
    /// > Note: Some Android devices might require the `CHANGE_WIFI_MULTICAST_STATE` permission for multicast to work.
    /// 
    public final func joinMulticastGroup(multicastAddress: String, interfaceName: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let multicastAddress = GString(multicastAddress)
        withUnsafePointer(to: multicastAddress.content) { pArg0 in
            let interfaceName = GString(interfaceName)
            withUnsafePointer(to: interfaceName.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PacketPeerUDP.method_join_multicast_group, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_leave_multicast_group: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("leave_multicast_group")
        return withUnsafePointer(to: &PacketPeerUDP.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 852856452)!
            }
            
        }
        
    }()
    
    /// Removes the interface identified by `interfaceName` from the multicast group specified by `multicastAddress`.
    public final func leaveMulticastGroup(multicastAddress: String, interfaceName: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let multicastAddress = GString(multicastAddress)
        withUnsafePointer(to: multicastAddress.content) { pArg0 in
            let interfaceName = GString(interfaceName)
            withUnsafePointer(to: interfaceName.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PacketPeerUDP.method_leave_multicast_group, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
}

