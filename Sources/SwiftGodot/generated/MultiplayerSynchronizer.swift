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
    private static var className = StringName("MultiplayerSynchronizer")
    override open class var godotClassName: StringName { className }
    public enum VisibilityUpdateMode: Int64, CaseIterable {
        /// Visibility filters are updated during process frames (see ``Node/notificationInternalProcess``).
        case idle = 0 // VISIBILITY_PROCESS_IDLE
        /// Visibility filters are updated during physics frames (see ``Node/notificationInternalPhysicsProcess``).
        case physics = 1 // VISIBILITY_PROCESS_PHYSICS
        /// Visibility filters are not updated automatically, and must be updated manually by calling ``updateVisibility(forPeer:)``.
        case none = 2 // VISIBILITY_PROCESS_NONE
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
    
    /// Time interval between synchronizations. Used when the replication is set to ``SceneReplicationConfig/ReplicationMode/always``. If set to `0.0` (the default), synchronizations happen every network process frame.
    final public var replicationInterval: Double {
        get {
            return get_replication_interval ()
        }
        
        set {
            set_replication_interval (newValue)
        }
        
    }
    
    /// Time interval between delta synchronizations. Used when the replication is set to ``SceneReplicationConfig/ReplicationMode/onChange``. If set to `0.0` (the default), delta synchronizations happen every network process frame.
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
    fileprivate static let method_set_root_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_root_path")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_root_path(_ path: NodePath) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_set_root_path, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_root_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_root_path")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_root_path() -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_get_root_path, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_replication_interval: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_replication_interval")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_replication_interval(_ milliseconds: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: milliseconds) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_set_replication_interval, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_replication_interval: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_replication_interval")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_replication_interval() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_get_replication_interval, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_delta_interval: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_delta_interval")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_delta_interval(_ milliseconds: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: milliseconds) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_set_delta_interval, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_delta_interval: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_delta_interval")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_delta_interval() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_get_delta_interval, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_replication_config: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_replication_config")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3889206742)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_replication_config(_ config: SceneReplicationConfig?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: config?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_set_replication_config, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_replication_config: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_replication_config")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3200254614)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_replication_config() -> SceneReplicationConfig? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_get_replication_config, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_visibility_update_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_visibility_update_mode")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3494860300)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visibility_update_mode(_ mode: MultiplayerSynchronizer.VisibilityUpdateMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_set_visibility_update_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_visibility_update_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_visibility_update_mode")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3352241418)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_visibility_update_mode() -> MultiplayerSynchronizer.VisibilityUpdateMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_get_visibility_update_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return MultiplayerSynchronizer.VisibilityUpdateMode (rawValue: _result)!
    }
    
    fileprivate static let method_update_visibility: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("update_visibility")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1995695955)!
            }
            
        }
        
    }()
    
    /// Updates the visibility of `forPeer` according to visibility filters. If `forPeer` is `0` (the default), all peers' visibilties are updated.
    public final func updateVisibility(forPeer: Int32 = 0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: forPeer) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_update_visibility, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_visibility_public: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_visibility_public")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visibility_public(_ visible: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: visible) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_set_visibility_public, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_visibility_public: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_visibility_public")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_visibility_public() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_is_visibility_public, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_add_visibility_filter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_visibility_filter")
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
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: filter.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_add_visibility_filter, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_visibility_filter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_visibility_filter")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1611583062)!
            }
            
        }
        
    }()
    
    /// Removes a peer visibility filter from this synchronizer.
    public final func removeVisibilityFilter(_ filter: Callable) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: filter.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerSynchronizer.method_remove_visibility_filter, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_visibility_for: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_visibility_for")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Sets the visibility of `peer` to `visible`. If `peer` is `0`, the value of ``publicVisibility`` will be updated instead.
    public final func setVisibilityFor(peer: Int32, visible: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
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
    
    fileprivate static let method_get_visibility_for: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_visibility_for")
        return withUnsafePointer(to: &MultiplayerSynchronizer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Queries the current visibility for peer `peer`.
    public final func getVisibilityFor(peer: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
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
    public var visibilityChanged: SignalWithArguments<Int64> { SignalWithArguments<Int64> (target: self, signalName: "visibility_changed") }
    
}

