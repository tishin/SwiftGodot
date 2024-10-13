// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// High-level multiplayer API interface.
/// 
/// Base class for high-level multiplayer API implementations. See also ``MultiplayerPeer``.
/// 
/// By default, ``SceneTree`` has a reference to an implementation of this class and uses it to provide multiplayer capabilities (i.e. RPCs) across the whole scene.
/// 
/// It is possible to override the MultiplayerAPI instance used by specific tree branches by calling the ``SceneTree/setMultiplayer(_:rootPath:)`` method, effectively allowing to run both client and server in the same scene.
/// 
/// It is also possible to extend or replace the default implementation via scripting or native extensions. See ``MultiplayerAPIExtension`` for details about extensions, ``SceneMultiplayer`` for the details about the default implementation.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``peerConnected``
/// - ``peerDisconnected``
/// - ``connectedToServer``
/// - ``connectionFailed``
/// - ``serverDisconnected``
open class MultiplayerAPI: RefCounted {
    override open class var godotClassName: StringName { "MultiplayerAPI" }
    public enum RPCMode: Int64, CaseIterable, CustomDebugStringConvertible {
        /// Used with ``Node/rpcConfig(method:config:)`` to disable a method or property for all RPC calls, making it unavailable. Default for all methods.
        case disabled = 0 // RPC_MODE_DISABLED
        /// Used with ``Node/rpcConfig(method:config:)`` to set a method to be callable remotely by any peer. Analogous to the `@rpc("any_peer")` annotation. Calls are accepted from all remote peers, no matter if they are node's authority or not.
        case anyPeer = 1 // RPC_MODE_ANY_PEER
        /// Used with ``Node/rpcConfig(method:config:)`` to set a method to be callable remotely only by the current multiplayer authority (which is the server by default). Analogous to the `@rpc("authority")` annotation. See ``Node/setMultiplayerAuthority(id:recursive:)``.
        case authority = 2 // RPC_MODE_AUTHORITY
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .disabled: return ".disabled"
                case .anyPeer: return ".anyPeer"
                case .authority: return ".authority"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// The peer object to handle the RPC system (effectively enabling networking when set). Depending on the peer itself, the MultiplayerAPI will become a network server (check with ``isServer()``) and will set root node's network mode to authority, or it will become a regular client peer. All child nodes are set to inherit the network mode by default. Handling of networking-related events (connection, disconnection, new clients) is done by connecting to MultiplayerAPI's signals.
    final public var multiplayerPeer: MultiplayerPeer? {
        get {
            return get_multiplayer_peer ()
        }
        
        set {
            set_multiplayer_peer (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_has_multiplayer_peer: GDExtensionMethodBindPtr = {
        let methodName = StringName("has_multiplayer_peer")
        return withUnsafePointer(to: &MultiplayerAPI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Returns `true` if there is a ``multiplayerPeer`` set.
    public final func hasMultiplayerPeer() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(MultiplayerAPI.method_has_multiplayer_peer, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_multiplayer_peer: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_multiplayer_peer")
        return withUnsafePointer(to: &MultiplayerAPI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3223692825)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_multiplayer_peer() -> MultiplayerPeer? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(MultiplayerAPI.method_get_multiplayer_peer, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_multiplayer_peer: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_multiplayer_peer")
        return withUnsafePointer(to: &MultiplayerAPI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3694835298)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_multiplayer_peer(_ peer: MultiplayerPeer?) {
        withUnsafePointer(to: peer?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerAPI.method_set_multiplayer_peer, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_unique_id: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_unique_id")
        return withUnsafePointer(to: &MultiplayerAPI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Returns the unique peer ID of this MultiplayerAPI's ``multiplayerPeer``.
    public final func getUniqueId() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(MultiplayerAPI.method_get_unique_id, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_is_server: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_server")
        return withUnsafePointer(to: &MultiplayerAPI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this MultiplayerAPI's ``multiplayerPeer`` is valid and in server mode (listening for connections).
    public final func isServer() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(MultiplayerAPI.method_is_server, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_remote_sender_id: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_remote_sender_id")
        return withUnsafePointer(to: &MultiplayerAPI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Returns the sender's peer ID for the RPC currently being executed.
    /// 
    /// > Note: This method returns `0` when called outside of an RPC. As such, the original peer ID may be lost when code execution is delayed (such as with GDScript's `await` keyword).
    /// 
    public final func getRemoteSenderId() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(MultiplayerAPI.method_get_remote_sender_id, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_poll: GDExtensionMethodBindPtr = {
        let methodName = StringName("poll")
        return withUnsafePointer(to: &MultiplayerAPI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166280745)!
            }
            
        }
        
    }()
    
    /// Method used for polling the MultiplayerAPI. You only need to worry about this if you set ``SceneTree/multiplayerPoll`` to `false`. By default, ``SceneTree`` will poll its MultiplayerAPI(s) for you.
    /// 
    /// > Note: This method results in RPCs being called, so they will be executed in the same context of this function (e.g. `_process`, `physics`, ``Thread``).
    /// 
    public final func poll() -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(MultiplayerAPI.method_poll, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static var method_rpc: GDExtensionMethodBindPtr = {
        let methodName = StringName("rpc")
        return withUnsafePointer(to: &MultiplayerAPI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2077486355)!
            }
            
        }
        
    }()
    
    /// Sends an RPC to the target `peer`. The given `method` will be called on the remote `object` with the provided `arguments`. The RPC may also be called locally depending on the implementation and RPC configuration. See ``Node/rpc(method:)`` and ``Node/rpcConfig(method:config:)``.
    /// 
    /// > Note: Prefer using ``Node/rpc(method:)``, ``Node/rpcId(peerId:method:)``, or `my_method.rpc(peer, arg1, arg2, ...)` (in GDScript), since they are faster. This method is mostly useful in conjunction with ``MultiplayerAPIExtension`` when augmenting or replacing the multiplayer capabilities.
    /// 
    public final func rpc(peer: Int32, object: Object?, method: StringName, arguments: GArray = GArray ()) -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: peer) { pArg0 in
            withUnsafePointer(to: object?.handle) { pArg1 in
                withUnsafePointer(to: method.content) { pArg2 in
                    withUnsafePointer(to: arguments.content) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(MultiplayerAPI.method_rpc, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static var method_object_configuration_add: GDExtensionMethodBindPtr = {
        let methodName = StringName("object_configuration_add")
        return withUnsafePointer(to: &MultiplayerAPI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1171879464)!
            }
            
        }
        
    }()
    
    /// Notifies the MultiplayerAPI of a new `configuration` for the given `object`. This method is used internally by ``SceneTree`` to configure the root path for this MultiplayerAPI (passing `null` and a valid ``NodePath`` as `configuration`). This method can be further used by MultiplayerAPI implementations to provide additional features, refer to specific implementation (e.g. ``SceneMultiplayer``) for details on how they use it.
    /// 
    /// > Note: This method is mostly relevant when extending or overriding the MultiplayerAPI behavior via ``MultiplayerAPIExtension``.
    /// 
    public final func objectConfigurationAdd(object: Object?, configuration: Variant) -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: object?.handle) { pArg0 in
            withUnsafePointer(to: configuration.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MultiplayerAPI.method_object_configuration_add, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static var method_object_configuration_remove: GDExtensionMethodBindPtr = {
        let methodName = StringName("object_configuration_remove")
        return withUnsafePointer(to: &MultiplayerAPI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1171879464)!
            }
            
        }
        
    }()
    
    /// Notifies the MultiplayerAPI to remove a `configuration` for the given `object`. This method is used internally by ``SceneTree`` to configure the root path for this MultiplayerAPI (passing `null` and an empty ``NodePath`` as `configuration`). This method can be further used by MultiplayerAPI implementations to provide additional features, refer to specific implementation (e.g. ``SceneMultiplayer``) for details on how they use it.
    /// 
    /// > Note: This method is mostly relevant when extending or overriding the MultiplayerAPI behavior via ``MultiplayerAPIExtension``.
    /// 
    public final func objectConfigurationRemove(object: Object?, configuration: Variant) -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: object?.handle) { pArg0 in
            withUnsafePointer(to: configuration.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MultiplayerAPI.method_object_configuration_remove, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static var method_get_peers: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_peers")
        return withUnsafePointer(to: &MultiplayerAPI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 969006518)!
            }
            
        }
        
    }()
    
    /// Returns the peer IDs of all connected peers of this MultiplayerAPI's ``multiplayerPeer``.
    public final func getPeers() -> PackedInt32Array {
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall(MultiplayerAPI.method_get_peers, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_default_interface: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_default_interface")
        return withUnsafePointer(to: &MultiplayerAPI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    /// Sets the default MultiplayerAPI implementation class. This method can be used by modules and extensions to configure which implementation will be used by ``SceneTree`` when the engine starts.
    public static func setDefaultInterface(interfaceName: StringName) {
        withUnsafePointer(to: interfaceName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_set_default_interface, nil, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_default_interface: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_default_interface")
        return withUnsafePointer(to: &MultiplayerAPI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2737447660)!
            }
            
        }
        
    }()
    
    /// Returns the default MultiplayerAPI implementation class name. This is usually `"SceneMultiplayer"` when ``SceneMultiplayer`` is available. See ``setDefaultInterface(interfaceName:)``.
    public static func getDefaultInterface() -> StringName {
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(method_get_default_interface, nil, nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_create_default_interface: GDExtensionMethodBindPtr = {
        let methodName = StringName("create_default_interface")
        return withUnsafePointer(to: &MultiplayerAPI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3294156723)!
            }
            
        }
        
    }()
    
    /// Returns a new instance of the default MultiplayerAPI.
    public static func createDefaultInterface() -> MultiplayerAPI? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(method_create_default_interface, nil, nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    // Signals 
    /// Signal support.
    /// 
    /// 
    /// 
    /// Use the ``Signal1/connect(flags:_:)`` method to connect to the signal on the container object, and ``Signal1/disconnect(_:)`` to drop the connection.
    /// 
    /// You can also await the ``Signal1/emitted`` property for waiting for a single emission of the signal.
    /// 
    public class Signal1 {
        var target: Object
        var signalName: StringName
        init (target: Object, signalName: StringName) {
            self.target = target
            self.signalName = signalName
        }
        
        /// Connects the signal to the specified callback
        /// 
        /// 
        /// 
        /// To disconnect, call the disconnect method, with the returned token on success
        /// 
        /// - Parameters:
        /// 
        /// - callback: the method to invoke when this signal is raised
        /// 
        /// - flags: Optional, can be also added to configure the connection's behavior (see ``Object/ConnectFlags`` constants).
        /// 
        /// - Returns: an object token that can be used to disconnect the object from the target on success, or the error produced by Godot.
        /// 
        @discardableResult /* Signal1 */
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ id: Int64) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                let arg_0 = Int64 (args [0])!
                
                callback (arg_0)
            }
            
            let callable = Callable(object: signalProxy, method: SignalProxy.proxyName)
            let r = target.connect(signal: signalName, callable: callable, flags: UInt32 (flags.rawValue))
            if r != .ok { print ("Warning, error connecting to signal, code: \(r)") }
            return signalProxy
        }
        
        /// Disconnects a signal that was previously connected, the return value from calling ``connect(flags:_:)``
        public func disconnect (_ token: Object) {
            target.disconnect(signal: signalName, callable: Callable (object: token, method: SignalProxy.proxyName))
        }
        
        /// You can await this property to wait for the signal to be emitted once
        public var emitted: Void  {
            get async {
                await withCheckedContinuation {
                    c in
                    connect (flags: .oneShot) { _ in c.resume () }
                }
                
            }
            
        }
        
    }
    
    /// Emitted when this MultiplayerAPI's ``multiplayerPeer`` connects with a new peer. ID is the peer ID of the new peer. Clients get notified when other clients connect to the same server. Upon connecting to a server, a client also receives this signal for the server (with ID being 1).
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.peerConnected.connect { id in
    ///    print ("caught signal")
    /// }
    /// ```
    public var peerConnected: Signal1 { Signal1 (target: self, signalName: "peer_connected") }
    
    /// Signal support.
    /// 
    /// 
    /// 
    /// Use the ``Signal2/connect(flags:_:)`` method to connect to the signal on the container object, and ``Signal2/disconnect(_:)`` to drop the connection.
    /// 
    /// You can also await the ``Signal2/emitted`` property for waiting for a single emission of the signal.
    /// 
    public class Signal2 {
        var target: Object
        var signalName: StringName
        init (target: Object, signalName: StringName) {
            self.target = target
            self.signalName = signalName
        }
        
        /// Connects the signal to the specified callback
        /// 
        /// 
        /// 
        /// To disconnect, call the disconnect method, with the returned token on success
        /// 
        /// - Parameters:
        /// 
        /// - callback: the method to invoke when this signal is raised
        /// 
        /// - flags: Optional, can be also added to configure the connection's behavior (see ``Object/ConnectFlags`` constants).
        /// 
        /// - Returns: an object token that can be used to disconnect the object from the target on success, or the error produced by Godot.
        /// 
        @discardableResult /* Signal2 */
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ id: Int64) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                let arg_0 = Int64 (args [0])!
                
                callback (arg_0)
            }
            
            let callable = Callable(object: signalProxy, method: SignalProxy.proxyName)
            let r = target.connect(signal: signalName, callable: callable, flags: UInt32 (flags.rawValue))
            if r != .ok { print ("Warning, error connecting to signal, code: \(r)") }
            return signalProxy
        }
        
        /// Disconnects a signal that was previously connected, the return value from calling ``connect(flags:_:)``
        public func disconnect (_ token: Object) {
            target.disconnect(signal: signalName, callable: Callable (object: token, method: SignalProxy.proxyName))
        }
        
        /// You can await this property to wait for the signal to be emitted once
        public var emitted: Void  {
            get async {
                await withCheckedContinuation {
                    c in
                    connect (flags: .oneShot) { _ in c.resume () }
                }
                
            }
            
        }
        
    }
    
    /// Emitted when this MultiplayerAPI's ``multiplayerPeer`` disconnects from a peer. Clients get notified when other clients disconnect from the same server.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.peerDisconnected.connect { id in
    ///    print ("caught signal")
    /// }
    /// ```
    public var peerDisconnected: Signal2 { Signal2 (target: self, signalName: "peer_disconnected") }
    
    /// Emitted when this MultiplayerAPI's ``multiplayerPeer`` successfully connected to a server. Only emitted on clients.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.connectedToServer.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var connectedToServer: SimpleSignal { SimpleSignal (target: self, signalName: "connected_to_server") }
    
    /// Emitted when this MultiplayerAPI's ``multiplayerPeer`` fails to establish a connection to a server. Only emitted on clients.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.connectionFailed.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var connectionFailed: SimpleSignal { SimpleSignal (target: self, signalName: "connection_failed") }
    
    /// Emitted when this MultiplayerAPI's ``multiplayerPeer`` disconnects from server. Only emitted on clients.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.serverDisconnected.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var serverDisconnected: SimpleSignal { SimpleSignal (target: self, signalName: "server_disconnected") }
    
}

