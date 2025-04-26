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


/// A wrapper class for an <a href="http://enet.bespin.org/group__host.html">ENetHost</a>.
/// 
/// ENet's purpose is to provide a relatively thin, simple and robust network communication layer on top of UDP (User Datagram Protocol).
open class ENetConnection: RefCounted {
    private static var className = StringName("ENetConnection")
    override open class var godotClassName: StringName { className }
    public enum CompressionMode: Int64, CaseIterable {
        /// No compression. This uses the most bandwidth, but has the upside of requiring the fewest CPU resources. This option may also be used to make network debugging using tools like Wireshark easier.
        case none = 0 // COMPRESS_NONE
        /// ENet's built-in range encoding. Works well on small packets, but is not the most efficient algorithm on packets larger than 4 KB.
        case rangeCoder = 1 // COMPRESS_RANGE_CODER
        /// <a href="https://fastlz.org/">FastLZ</a> compression. This option uses less CPU resources compared to ``CompressionMode/zlib``, at the expense of using more bandwidth.
        case fastlz = 2 // COMPRESS_FASTLZ
        /// <a href="https://www.zlib.net/">Zlib</a> compression. This option uses less bandwidth compared to ``CompressionMode/fastlz``, at the expense of using more CPU resources.
        case zlib = 3 // COMPRESS_ZLIB
        /// <a href="https://facebook.github.io/zstd/">Zstandard</a> compression. Note that this algorithm is not very efficient on packets smaller than 4 KB. Therefore, it's recommended to use other compression algorithms in most cases.
        case zstd = 4 // COMPRESS_ZSTD
    }
    
    public enum EventType: Int64, CaseIterable {
        /// An error occurred during ``service(timeout:)``. You will likely need to ``destroy()`` the host and recreate it.
        case error = -1 // EVENT_ERROR
        /// No event occurred within the specified time limit.
        case none = 0 // EVENT_NONE
        /// A connection request initiated by enet_host_connect has completed. The array will contain the peer which successfully connected.
        case connect = 1 // EVENT_CONNECT
        /// A peer has disconnected. This event is generated on a successful completion of a disconnect initiated by ``ENetPacketPeer/peerDisconnect(data:)``, if a peer has timed out, or if a connection request initialized by ``connectToHost(address:port:channels:data:)`` has timed out. The array will contain the peer which disconnected. The data field contains user supplied data describing the disconnection, or 0, if none is available.
        case disconnect = 2 // EVENT_DISCONNECT
        /// A packet has been received from a peer. The array will contain the peer which sent the packet and the channel number upon which the packet was received. The received packet will be queued to the associated ``ENetPacketPeer``.
        case receive = 3 // EVENT_RECEIVE
    }
    
    public enum HostStatistic: Int64, CaseIterable {
        /// Total data sent.
        case sentData = 0 // HOST_TOTAL_SENT_DATA
        /// Total UDP packets sent.
        case sentPackets = 1 // HOST_TOTAL_SENT_PACKETS
        /// Total data received.
        case receivedData = 2 // HOST_TOTAL_RECEIVED_DATA
        /// Total UDP packets received.
        case receivedPackets = 3 // HOST_TOTAL_RECEIVED_PACKETS
    }
    
    /* Methods */
    fileprivate static let method_create_host_bound: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_host_bound")
        return withUnsafePointer(to: &ENetConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1515002313)!
            }
            
        }
        
    }()
    
    /// Creates an ENetHost bound to the given `bindAddress` and `bindPort` that allows up to `maxPeers` connected peers, each allocating up to `maxChannels` channels, optionally limiting bandwidth to `inBandwidth` and `outBandwidth` (if greater than zero).
    /// 
    /// > Note: It is necessary to create a host in both client and server in order to establish a connection.
    /// 
    public final func createHostBound(bindAddress: String, bindPort: Int32, maxPeers: Int32 = 32, maxChannels: Int32 = 0, inBandwidth: Int32 = 0, outBandwidth: Int32 = 0) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let bindAddress = GString(bindAddress)
        withUnsafePointer(to: bindAddress.content) { pArg0 in
            withUnsafePointer(to: bindPort) { pArg1 in
                withUnsafePointer(to: maxPeers) { pArg2 in
                    withUnsafePointer(to: maxChannels) { pArg3 in
                        withUnsafePointer(to: inBandwidth) { pArg4 in
                            withUnsafePointer(to: outBandwidth) { pArg5 in
                                withUnsafePointer(to: UnsafeRawPointersN6(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5)) { pArgs in
                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 6) { pArgs in
                                        gi.object_method_bind_ptrcall(ENetConnection.method_create_host_bound, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_create_host: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_host")
        return withUnsafePointer(to: &ENetConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 117198950)!
            }
            
        }
        
    }()
    
    /// Creates an ENetHost that allows up to `maxPeers` connected peers, each allocating up to `maxChannels` channels, optionally limiting bandwidth to `inBandwidth` and `outBandwidth` (if greater than zero).
    /// 
    /// This method binds a random available dynamic UDP port on the host machine at the _unspecified_ address. Use ``createHostBound(bindAddress:bindPort:maxPeers:maxChannels:inBandwidth:outBandwidth:)`` to specify the address and port.
    /// 
    /// > Note: It is necessary to create a host in both client and server in order to establish a connection.
    /// 
    public final func createHost(maxPeers: Int32 = 32, maxChannels: Int32 = 0, inBandwidth: Int32 = 0, outBandwidth: Int32 = 0) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: maxPeers) { pArg0 in
            withUnsafePointer(to: maxChannels) { pArg1 in
                withUnsafePointer(to: inBandwidth) { pArg2 in
                    withUnsafePointer(to: outBandwidth) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(ENetConnection.method_create_host, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_destroy: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("destroy")
        return withUnsafePointer(to: &ENetConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Destroys the host and all resources associated with it.
    public final func destroy() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ENetConnection.method_destroy, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_connect_to_host: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("connect_to_host")
        return withUnsafePointer(to: &ENetConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2171300490)!
            }
            
        }
        
    }()
    
    /// Initiates a connection to a foreign `address` using the specified `port` and allocating the requested `channels`. Optional `data` can be passed during connection in the form of a 32 bit integer.
    /// 
    /// > Note: You must call either ``createHost(maxPeers:maxChannels:inBandwidth:outBandwidth:)`` or ``createHostBound(bindAddress:bindPort:maxPeers:maxChannels:inBandwidth:outBandwidth:)`` on both ends before calling this method.
    /// 
    public final func connectToHost(address: String, port: Int32, channels: Int32 = 0, data: Int32 = 0) -> ENetPacketPeer? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        let address = GString(address)
        withUnsafePointer(to: address.content) { pArg0 in
            withUnsafePointer(to: port) { pArg1 in
                withUnsafePointer(to: channels) { pArg2 in
                    withUnsafePointer(to: data) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(ENetConnection.method_connect_to_host, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_service: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("service")
        return withUnsafePointer(to: &ENetConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2402345344)!
            }
            
        }
        
    }()
    
    /// Waits for events on this connection and shuttles packets between the host and its peers, with the given `timeout` (in milliseconds). The returned ``VariantArray`` will have 4 elements. An ``ENetConnection/EventType``, the ``ENetPacketPeer`` which generated the event, the event associated data (if any), the event associated channel (if any). If the generated event is ``EventType/receive``, the received packet will be queued to the associated ``ENetPacketPeer``.
    /// 
    /// Call this function regularly to handle connections, disconnections, and to receive new packets.
    /// 
    /// > Note: This method must be called on both ends involved in the event (sending and receiving hosts).
    /// 
    public final func service(timeout: Int32 = 0) -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        withUnsafePointer(to: timeout) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ENetConnection.method_service, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_flush: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("flush")
        return withUnsafePointer(to: &ENetConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Sends any queued packets on the host specified to its designated peers.
    public final func flush() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ENetConnection.method_flush, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_bandwidth_limit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("bandwidth_limit")
        return withUnsafePointer(to: &ENetConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2302169788)!
            }
            
        }
        
    }()
    
    /// Adjusts the bandwidth limits of a host.
    public final func bandwidthLimit(inBandwidth: Int32 = 0, outBandwidth: Int32 = 0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: inBandwidth) { pArg0 in
            withUnsafePointer(to: outBandwidth) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ENetConnection.method_bandwidth_limit, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_channel_limit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("channel_limit")
        return withUnsafePointer(to: &ENetConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Limits the maximum allowed channels of future incoming connections.
    public final func channelLimit(_ limit: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: limit) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ENetConnection.method_channel_limit, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_broadcast: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("broadcast")
        return withUnsafePointer(to: &ENetConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2772371345)!
            }
            
        }
        
    }()
    
    /// Queues a `packet` to be sent to all peers associated with the host over the specified `channel`. See ``ENetPacketPeer`` `FLAG_*` constants for available packet flags.
    public final func broadcast(channel: Int32, packet: PackedByteArray, flags: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: channel) { pArg0 in
            withUnsafePointer(to: packet.content) { pArg1 in
                withUnsafePointer(to: flags) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(ENetConnection.method_broadcast, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_compress: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("compress")
        return withUnsafePointer(to: &ENetConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2660215187)!
            }
            
        }
        
    }()
    
    /// Sets the compression method used for network packets. These have different tradeoffs of compression speed versus bandwidth, you may need to test which one works best for your use case if you use compression at all.
    /// 
    /// > Note: Most games' network design involve sending many small packets frequently (smaller than 4 KB each). If in doubt, it is recommended to keep the default compression algorithm as it works best on these small packets.
    /// 
    /// > Note: The compression mode must be set to the same value on both the server and all its clients. Clients will fail to connect if the compression mode set on the client differs from the one set on the server.
    /// 
    public final func compress(mode: ENetConnection.CompressionMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ENetConnection.method_compress, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_dtls_server_setup: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("dtls_server_setup")
        return withUnsafePointer(to: &ENetConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1262296096)!
            }
            
        }
        
    }()
    
    /// Configure this ENetHost to use the custom Godot extension allowing DTLS encryption for ENet servers. Call this right after ``createHostBound(bindAddress:bindPort:maxPeers:maxChannels:inBandwidth:outBandwidth:)`` to have ENet expect peers to connect using DTLS. See ``TLSOptions/server(key:certificate:)``.
    public final func dtlsServerSetup(serverOptions: TLSOptions?) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: serverOptions?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ENetConnection.method_dtls_server_setup, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_dtls_client_setup: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("dtls_client_setup")
        return withUnsafePointer(to: &ENetConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1966198364)!
            }
            
        }
        
    }()
    
    /// Configure this ENetHost to use the custom Godot extension allowing DTLS encryption for ENet clients. Call this before ``connectToHost(address:port:channels:data:)`` to have ENet connect using DTLS validating the server certificate against `hostname`. You can pass the optional `clientOptions` parameter to customize the trusted certification authorities, or disable the common name verification. See ``TLSOptions/client(trustedChain:commonNameOverride:)`` and ``TLSOptions/clientUnsafe(trustedChain:)``.
    public final func dtlsClientSetup(hostname: String, clientOptions: TLSOptions? = nil) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let hostname = GString(hostname)
        withUnsafePointer(to: hostname.content) { pArg0 in
            withUnsafePointer(to: clientOptions?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ENetConnection.method_dtls_client_setup, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_refuse_new_connections: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("refuse_new_connections")
        return withUnsafePointer(to: &ENetConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Configures the DTLS server to automatically drop new connections.
    /// 
    /// > Note: This method is only relevant after calling ``dtlsServerSetup(serverOptions:)``.
    /// 
    public final func refuseNewConnections(refuse: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: refuse) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ENetConnection.method_refuse_new_connections, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_pop_statistic: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("pop_statistic")
        return withUnsafePointer(to: &ENetConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2166904170)!
            }
            
        }
        
    }()
    
    /// Returns and resets host statistics. See ``ENetConnection/HostStatistic`` for more info.
    public final func popStatistic(_ statistic: ENetConnection.HostStatistic) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: statistic.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ENetConnection.method_pop_statistic, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_max_channels: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_max_channels")
        return withUnsafePointer(to: &ENetConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the maximum number of channels allowed for connected peers.
    public final func getMaxChannels() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(ENetConnection.method_get_max_channels, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_local_port: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_local_port")
        return withUnsafePointer(to: &ENetConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the local port to which this peer is bound.
    public final func getLocalPort() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(ENetConnection.method_get_local_port, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_peers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_peers")
        return withUnsafePointer(to: &ENetConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Returns the list of peers associated with this host.
    /// 
    /// > Note: This list might include some peers that are not fully connected or are still being disconnected.
    /// 
    public final func getPeers() -> TypedArray<ENetPacketPeer?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(ENetConnection.method_get_peers, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<ENetPacketPeer?>(takingOver: _result)
    }
    
    fileprivate static let method_socket_send: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("socket_send")
        return withUnsafePointer(to: &ENetConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1100646812)!
            }
            
        }
        
    }()
    
    /// Sends a `packet` toward a destination from the address and port currently bound by this ENetConnection instance.
    /// 
    /// This is useful as it serves to establish entries in NAT routing tables on all devices between this bound instance and the public facing internet, allowing a prospective client's connection packets to be routed backward through the NAT device(s) between the public internet and this host.
    /// 
    /// This requires forward knowledge of a prospective client's address and communication port as seen by the public internet - after any NAT devices have handled their connection request. This information can be obtained by a <a href="https://en.wikipedia.org/wiki/STUN">STUN</a> service, and must be handed off to your host by an entity that is not the prospective client. This will never work for a client behind a Symmetric NAT due to the nature of the Symmetric NAT routing algorithm, as their IP and Port cannot be known beforehand.
    /// 
    public final func socketSend(destinationAddress: String, destinationPort: Int32, packet: PackedByteArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let destinationAddress = GString(destinationAddress)
        withUnsafePointer(to: destinationAddress.content) { pArg0 in
            withUnsafePointer(to: destinationPort) { pArg1 in
                withUnsafePointer(to: packet.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(ENetConnection.method_socket_send, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
}

