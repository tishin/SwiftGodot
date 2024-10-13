// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Synchronizes properties from the multiplayer authority to the remote peers.
/// 
/// By default, ``MultiplayerSynchronizer`` synchronizes configured properties to all peers.
/// 
/// Visibility can be handled directly with ``setVisibilityFor(peer:visible:)`` or as-needed with ``addVisibilityFilter(_:)`` and ``updateVisibility(forPeer:)``.
/// 
/// ``MultiplayerSpawner``s will handle nodes according to visibility of synchronizers as long as the node at ``rootPath`` was spawned by one.
/// 
/// Internally, ``MultiplayerSynchronizer`` uses ``MultiplayerAPI/objectConfigurationAdd(object:configuration:)`` to notify synchronization start passing the ``Node`` at ``rootPath`` as the `object` and itself as the `configuration`, and uses ``MultiplayerAPI/objectConfigurationRemove(object:configuration:)`` to notify synchronization end in a similar way.
/// 
/// > Note: Synchronization is not supported for ``Object`` type properties, like ``Resource``. Properties that are unique to each peer, like the instance IDs of ``Object``s (see ``Object/getInstanceId()``) or ``RID``s, will also not work in synchronization.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``synchronized``
/// - ``deltaSynchronized``
/// - ``visibilityChanged``
open class MultiplayerSynchronizer: Node {
    override open class var godotClassName: StringName { "MultiplayerSynchronizer" }
    public enum VisibilityUpdateMode: Int64, CaseIterable, CustomDebugStringConvertible {
        /// Visibility filters are updated during process frames (see ``Node/``notificationInternalProcess````).
        case idle = 0 // VISIBILITY_PROCESS_IDLE
        /// Visibility filters are updated during physics frames (see ``Node/``notificationInternalPhysicsProcess````).
        case physics = 1 // VISIBILITY_PROCESS_PHYSICS
        /// Visibility filters are not updated automatically, and must be updated manually by calling ``updateVisibility(forPeer:)``.
        case none = 2 // VISIBILITY_PROCESS_NONE
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .idle: return ".idle"
                case .physics: return ".physics"
                case .none: return ".none"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// Node path that replicated properties are relative to.
    /// 
    /// If ``rootPath`` was spawned by a ``MultiplayerSpawner``, the node will be also be spawned and despawned based on this synchronizer visibility options.
    /// 
    final public var rootPath: NodePath {
        get {
            return get_root_path ()
        }
        
        set {
            set_root_path (newValue)
        }
        
    }
    
    /// Time interval between synchronizations. When set to `0.0` (the default), synchronizations happen every network process frame.
    final public var replicationInterval: Double {
        get {
            return get_replication_interval ()
        }
        
        set {
            set_replication_interval (newValue)
        }
        
    }
    
    /// Time interval between delta synchronizations. When set to `0.0` (the default), delta synchronizations happen every network process frame.
    final public var deltaInterval: Double {
        get {
            return get_delta_interval ()
        }
        
        set {
            set_delta_interval (newValue)
        }
        
    }
    
    /// Resource containing which properties to synchronize.
    final public var replicationConfig: SceneReplicationConfig? {
        get {
            return get_replication_config ()
        }
        
        set {
            set_replication_config (newValue)
        }
        
    }
    
    /// Specifies when visibility filters are updated (see ``MultiplayerSynchronizer/VisibilityUpdateMode`` for options).
    final public var visibilityUpdateMode: MultiplayerSynchronizer.VisibilityUpdateMode {
        get {
            return get_visibility_update_mode ()
        }
        
        set {
            set_visibility_update_mode (newValue)
        }
        
    }
    
    /// Whether synchronization should be visible to all peers by default. See ``setVisibilityFor(peer:visible:)`` and ``addVisibilityFilter(_:)`` for ways of configuring fine-grained visibility options.
    final public var publicVisibility: Bool {
        get {
            return is_visibility_public ()
        }
        
        set {
            set_visibility_public (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_root_path: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_root_path")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_root_path(_ path: NodePath) {
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_set_root_path, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_root_path: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_root_path")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_root_path() -> NodePath {
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_get_root_path, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_replication_interval: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_replication_interval")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_replication_interval(_ milliseconds: Double) {
        withUnsafePointer(to: milliseconds) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_set_replication_interval, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_replication_interval: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_replication_interval")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_replication_interval() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_get_replication_interval, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_delta_interval: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_delta_interval")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_delta_interval(_ milliseconds: Double) {
        withUnsafePointer(to: milliseconds) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_set_delta_interval, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_delta_interval: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_delta_interval")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_delta_interval() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_get_delta_interval, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_replication_config: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_replication_config")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3889206742)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_replication_config(_ config: SceneReplicationConfig?) {
        withUnsafePointer(to: config?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_set_replication_config, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_replication_config: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_replication_config")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3200254614)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_replication_config() -> SceneReplicationConfig? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_get_replication_config, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_visibility_update_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_visibility_update_mode")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3494860300)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visibility_update_mode(_ mode: MultiplayerSynchronizer.VisibilityUpdateMode) {
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_set_visibility_update_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_visibility_update_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_visibility_update_mode")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3352241418)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_visibility_update_mode() -> MultiplayerSynchronizer.VisibilityUpdateMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_get_visibility_update_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return MultiplayerSynchronizer.VisibilityUpdateMode (rawValue: _result)!
    }
    
    fileprivate static var method_update_visibility: GDExtensionMethodBindPtr = {
        let methodName = StringName("update_visibility")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1995695955)!
            }
            
        }
        
    }()
    
    /// Updates the visibility of `forPeer` according to visibility filters. If `forPeer` is `0` (the default), all peers' visibilties are updated.
    public final func updateVisibility(forPeer: Int32 = 0) {
        withUnsafePointer(to: forPeer) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_update_visibility, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_visibility_public: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_visibility_public")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visibility_public(_ visible: Bool) {
        withUnsafePointer(to: visible) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_set_visibility_public, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_visibility_public: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_visibility_public")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_visibility_public() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_is_visibility_public, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_add_visibility_filter: GDExtensionMethodBindPtr = {
        let methodName = StringName("add_visibility_filter")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1611583062)!
            }
            
        }
        
    }()
    
    /// Adds a peer visibility filter for this synchronizer.
    /// 
    /// `filter` should take a peer ID integer and return a [bool].
    /// 
    public final func addVisibilityFilter(_ filter: Callable) {
        withUnsafePointer(to: filter.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_add_visibility_filter, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_remove_visibility_filter: GDExtensionMethodBindPtr = {
        let methodName = StringName("remove_visibility_filter")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1611583062)!
            }
            
        }
        
    }()
    
    /// Removes a peer visibility filter from this synchronizer.
    public final func removeVisibilityFilter(_ filter: Callable) {
        withUnsafePointer(to: filter.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_remove_visibility_filter, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_visibility_for: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_visibility_for")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Sets the visibility of `peer` to `visible`. If `peer` is `0`, the value of ``publicVisibility`` will be updated instead.
    public final func setVisibilityFor(peer: Int32, visible: Bool) {
        withUnsafePointer(to: peer) { pArg0 in
            withUnsafePointer(to: visible) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_set_visibility_for, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_visibility_for: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_visibility_for")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Queries the current visibility for peer `peer`.
    public final func getVisibilityFor(peer: Int32) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: peer) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_get_visibility_for, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    // Signals 
    /// Emitted when a new synchronization state is received by this synchronizer after the properties have been updated.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.synchronized.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var synchronized: SimpleSignal { SimpleSignal (target: self, signalName: "synchronized") }
    
    /// Emitted when a new delta synchronization state is received by this synchronizer after the properties have been updated.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.deltaSynchronized.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var deltaSynchronized: SimpleSignal { SimpleSignal (target: self, signalName: "delta_synchronized") }
    
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
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ forPeer: Int64) -> ()) -> Object {
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
    
    /// Emitted when visibility of `forPeer` is updated. See ``updateVisibility(forPeer:)``.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.visibilityChanged.connect { forPeer in
    ///    print ("caught signal")
    /// }
    /// ```
    public var visibilityChanged: Signal1 { Signal1 (target: self, signalName: "visibility_changed") }
    
}

