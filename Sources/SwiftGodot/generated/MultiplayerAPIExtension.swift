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


/// Base class used for extending the ``MultiplayerAPI``.
/// 
/// This class can be used to extend or replace the default ``MultiplayerAPI`` implementation via script or extensions.
/// 
/// The following example extend the default implementation (``SceneMultiplayer``) by logging every RPC being made, and every object being configured for replication.
/// 
/// Then in your main scene or in an autoload call ``SceneTree/setMultiplayer(_:rootPath:)`` to start using your custom ``MultiplayerAPI``:
/// 
/// Native extensions can alternatively use the ``MultiplayerAPI/setDefaultInterface(interfaceName:)`` method during initialization to configure themselves as the default implementation.
/// 
open class MultiplayerAPIExtension: MultiplayerAPI {
    private static var className = StringName("MultiplayerAPIExtension")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__poll: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_poll")
        return withUnsafePointer(to: &MultiplayerAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166280745)!
            }
            
        }
        
    }()
    
    /// Callback for ``MultiplayerAPI/poll()``.
    @_documentation(visibility: public)
    open func _poll() -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(MultiplayerAPIExtension.method__poll, handle, nil, &_result)
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__set_multiplayer_peer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_multiplayer_peer")
        return withUnsafePointer(to: &MultiplayerAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3694835298)!
            }
            
        }
        
    }()
    
    /// Called when the ``MultiplayerAPI/multiplayerPeer`` is set.
    @_documentation(visibility: public)
    open func _setMultiplayerPeer(_ multiplayerPeer: MultiplayerPeer?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: multiplayerPeer?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MultiplayerAPIExtension.method__set_multiplayer_peer, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_multiplayer_peer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_multiplayer_peer")
        return withUnsafePointer(to: &MultiplayerAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3223692825)!
            }
            
        }
        
    }()
    
    /// Called when the ``MultiplayerAPI/multiplayerPeer`` is retrieved.
    @_documentation(visibility: public)
    open func _getMultiplayerPeer() -> MultiplayerPeer? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(MultiplayerAPIExtension.method__get_multiplayer_peer, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__get_unique_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_unique_id")
        return withUnsafePointer(to: &MultiplayerAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Callback for ``MultiplayerAPI/getUniqueId()``.
    @_documentation(visibility: public)
    open func _getUniqueId() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(MultiplayerAPIExtension.method__get_unique_id, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_peer_ids: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_peer_ids")
        return withUnsafePointer(to: &MultiplayerAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1930428628)!
            }
            
        }
        
    }()
    
    /// Callback for ``MultiplayerAPI/getPeers()``.
    @_documentation(visibility: public)
    open func _getPeerIds() -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall(MultiplayerAPIExtension.method__get_peer_ids, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__rpc: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_rpc")
        return withUnsafePointer(to: &MultiplayerAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3673574758)!
            }
            
        }
        
    }()
    
    /// Callback for ``MultiplayerAPI/rpc(peer:object:method:arguments:)``.
    @_documentation(visibility: public)
    open func _rpc(peer: Int32, object: Object?, method: StringName, args: VariantArray) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: peer) { pArg0 in
            withUnsafePointer(to: object?.handle) { pArg1 in
                withUnsafePointer(to: method.content) { pArg2 in
                    withUnsafePointer(to: args.content) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(MultiplayerAPIExtension.method__rpc, handle, pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__get_remote_sender_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_remote_sender_id")
        return withUnsafePointer(to: &MultiplayerAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Callback for ``MultiplayerAPI/getRemoteSenderId()``.
    @_documentation(visibility: public)
    open func _getRemoteSenderId() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(MultiplayerAPIExtension.method__get_remote_sender_id, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__object_configuration_add: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_object_configuration_add")
        return withUnsafePointer(to: &MultiplayerAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1171879464)!
            }
            
        }
        
    }()
    
    /// Callback for ``MultiplayerAPI/objectConfigurationAdd(object:configuration:)``.
    @_documentation(visibility: public)
    open func _objectConfigurationAdd(object: Object?, configuration: Variant?) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: object?.handle) { pArg0 in
            withUnsafePointer(to: configuration.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MultiplayerAPIExtension.method__object_configuration_add, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__object_configuration_remove: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_object_configuration_remove")
        return withUnsafePointer(to: &MultiplayerAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1171879464)!
            }
            
        }
        
    }()
    
    /// Callback for ``MultiplayerAPI/objectConfigurationRemove(object:configuration:)``.
    @_documentation(visibility: public)
    open func _objectConfigurationRemove(object: Object?, configuration: Variant?) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: object?.handle) { pArg0 in
            withUnsafePointer(to: configuration.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MultiplayerAPIExtension.method__object_configuration_remove, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_multiplayer_peer":
                return _MultiplayerAPIExtension_proxy_get_multiplayer_peer
            case "_get_peer_ids":
                return _MultiplayerAPIExtension_proxy_get_peer_ids
            case "_get_remote_sender_id":
                return _MultiplayerAPIExtension_proxy_get_remote_sender_id
            case "_get_unique_id":
                return _MultiplayerAPIExtension_proxy_get_unique_id
            case "_object_configuration_add":
                return _MultiplayerAPIExtension_proxy_object_configuration_add
            case "_object_configuration_remove":
                return _MultiplayerAPIExtension_proxy_object_configuration_remove
            case "_poll":
                return _MultiplayerAPIExtension_proxy_poll
            case "_rpc":
                return _MultiplayerAPIExtension_proxy_rpc
            case "_set_multiplayer_peer":
                return _MultiplayerAPIExtension_proxy_set_multiplayer_peer
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _MultiplayerAPIExtension_proxy_get_multiplayer_peer (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerAPIExtension else { return }
    let ret = swiftObject._getMultiplayerPeer ()
    retPtr!.storeBytes (of: ret?.handle, as:  GodotNativeObjectPointer?.self) // MultiplayerPeer
}

func _MultiplayerAPIExtension_proxy_get_peer_ids (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerAPIExtension else { return }
    let ret = swiftObject._getPeerIds ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedInt32Array
    ret.content = PackedInt32Array.zero
}

func _MultiplayerAPIExtension_proxy_get_remote_sender_id (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerAPIExtension else { return }
    let ret = swiftObject._getRemoteSenderId ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _MultiplayerAPIExtension_proxy_get_unique_id (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerAPIExtension else { return }
    let ret = swiftObject._getUniqueId ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _MultiplayerAPIExtension_proxy_object_configuration_add (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerAPIExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._objectConfigurationAdd (object: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Object, configuration: args [1]!.assumingMemoryBound (to: Variant.self).pointee)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _MultiplayerAPIExtension_proxy_object_configuration_remove (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerAPIExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._objectConfigurationRemove (object: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Object, configuration: args [1]!.assumingMemoryBound (to: Variant.self).pointee)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _MultiplayerAPIExtension_proxy_poll (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerAPIExtension else { return }
    let ret = swiftObject._poll ()
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _MultiplayerAPIExtension_proxy_rpc (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerAPIExtension else { return }
    let resolved_1 = args [1]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._rpc (peer: args [0]!.assumingMemoryBound (to: Int32.self).pointee, object: resolved_1 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_1!, ownsRef: false) as? Object, method: StringName (content: args [2]!.assumingMemoryBound (to: Int64.self).pointee), args: VariantArray (content: args [3]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _MultiplayerAPIExtension_proxy_set_multiplayer_peer (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MultiplayerAPIExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    swiftObject._setMultiplayerPeer (resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? MultiplayerPeer)
}

