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


open class WebRTCPeerConnectionExtension: WebRTCPeerConnection {
    private static var className = StringName("WebRTCPeerConnectionExtension")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__get_connection_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_connection_state")
        return withUnsafePointer(to: &WebRTCPeerConnectionExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2275710506)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getConnectionState() -> WebRTCPeerConnection.ConnectionState {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(WebRTCPeerConnectionExtension.method__get_connection_state, handle, nil, &_result)
        return WebRTCPeerConnection.ConnectionState (rawValue: _result)!
    }
    
    fileprivate static let method__get_gathering_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_gathering_state")
        return withUnsafePointer(to: &WebRTCPeerConnectionExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4262591401)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getGatheringState() -> WebRTCPeerConnection.GatheringState {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(WebRTCPeerConnectionExtension.method__get_gathering_state, handle, nil, &_result)
        return WebRTCPeerConnection.GatheringState (rawValue: _result)!
    }
    
    fileprivate static let method__get_signaling_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_signaling_state")
        return withUnsafePointer(to: &WebRTCPeerConnectionExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3342956226)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getSignalingState() -> WebRTCPeerConnection.SignalingState {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(WebRTCPeerConnectionExtension.method__get_signaling_state, handle, nil, &_result)
        return WebRTCPeerConnection.SignalingState (rawValue: _result)!
    }
    
    fileprivate static let method__initialize: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_initialize")
        return withUnsafePointer(to: &WebRTCPeerConnectionExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1494659981)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _initialize(pConfig: VariantDictionary) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: pConfig.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(WebRTCPeerConnectionExtension.method__initialize, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__create_data_channel: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_create_data_channel")
        return withUnsafePointer(to: &WebRTCPeerConnectionExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4111292546)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _createDataChannel(pLabel: String, pConfig: VariantDictionary) -> WebRTCDataChannel? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        let pLabel = GString(pLabel)
        withUnsafePointer(to: pLabel.content) { pArg0 in
            withUnsafePointer(to: pConfig.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(WebRTCPeerConnectionExtension.method__create_data_channel, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__create_offer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_create_offer")
        return withUnsafePointer(to: &WebRTCPeerConnectionExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166280745)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _createOffer() -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(WebRTCPeerConnectionExtension.method__create_offer, handle, nil, &_result)
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__set_remote_description: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_remote_description")
        return withUnsafePointer(to: &WebRTCPeerConnectionExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 852856452)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _setRemoteDescription(pType: String, pSdp: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let pType = GString(pType)
        withUnsafePointer(to: pType.content) { pArg0 in
            let pSdp = GString(pSdp)
            withUnsafePointer(to: pSdp.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(WebRTCPeerConnectionExtension.method__set_remote_description, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__set_local_description: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_local_description")
        return withUnsafePointer(to: &WebRTCPeerConnectionExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 852856452)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _setLocalDescription(pType: String, pSdp: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let pType = GString(pType)
        withUnsafePointer(to: pType.content) { pArg0 in
            let pSdp = GString(pSdp)
            withUnsafePointer(to: pSdp.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(WebRTCPeerConnectionExtension.method__set_local_description, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__add_ice_candidate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_add_ice_candidate")
        return withUnsafePointer(to: &WebRTCPeerConnectionExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3958950400)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _addIceCandidate(pSdpMidName: String, pSdpMlineIndex: Int32, pSdpName: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let pSdpMidName = GString(pSdpMidName)
        withUnsafePointer(to: pSdpMidName.content) { pArg0 in
            withUnsafePointer(to: pSdpMlineIndex) { pArg1 in
                let pSdpName = GString(pSdpName)
                withUnsafePointer(to: pSdpName.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(WebRTCPeerConnectionExtension.method__add_ice_candidate, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__poll: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_poll")
        return withUnsafePointer(to: &WebRTCPeerConnectionExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166280745)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _poll() -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(WebRTCPeerConnectionExtension.method__poll, handle, nil, &_result)
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__close: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_close")
        return withUnsafePointer(to: &WebRTCPeerConnectionExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _close() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(WebRTCPeerConnectionExtension.method__close, handle, nil, nil)
        
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_add_ice_candidate":
                return _WebRTCPeerConnectionExtension_proxy_add_ice_candidate
            case "_close":
                return _WebRTCPeerConnectionExtension_proxy_close
            case "_create_data_channel":
                return _WebRTCPeerConnectionExtension_proxy_create_data_channel
            case "_create_offer":
                return _WebRTCPeerConnectionExtension_proxy_create_offer
            case "_get_connection_state":
                return _WebRTCPeerConnectionExtension_proxy_get_connection_state
            case "_get_gathering_state":
                return _WebRTCPeerConnectionExtension_proxy_get_gathering_state
            case "_get_signaling_state":
                return _WebRTCPeerConnectionExtension_proxy_get_signaling_state
            case "_initialize":
                return _WebRTCPeerConnectionExtension_proxy_initialize
            case "_poll":
                return _WebRTCPeerConnectionExtension_proxy_poll
            case "_set_local_description":
                return _WebRTCPeerConnectionExtension_proxy_set_local_description
            case "_set_remote_description":
                return _WebRTCPeerConnectionExtension_proxy_set_remote_description
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _WebRTCPeerConnectionExtension_proxy_add_ice_candidate (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCPeerConnectionExtension else { return }
    let ret = swiftObject._addIceCandidate (pSdpMidName: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", pSdpMlineIndex: args [1]!.assumingMemoryBound (to: Int32.self).pointee, pSdpName: GString.stringFromGStringPtr (ptr: args [2]!) ?? "")
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _WebRTCPeerConnectionExtension_proxy_close (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCPeerConnectionExtension else { return }
    swiftObject._close ()
}

func _WebRTCPeerConnectionExtension_proxy_create_data_channel (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCPeerConnectionExtension else { return }
    let ret = swiftObject._createDataChannel (pLabel: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", pConfig: VariantDictionary (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret?.handle, as:  GodotNativeObjectPointer?.self) // WebRTCDataChannel
}

func _WebRTCPeerConnectionExtension_proxy_create_offer (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCPeerConnectionExtension else { return }
    let ret = swiftObject._createOffer ()
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _WebRTCPeerConnectionExtension_proxy_get_connection_state (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCPeerConnectionExtension else { return }
    let ret = swiftObject._getConnectionState ()
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _WebRTCPeerConnectionExtension_proxy_get_gathering_state (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCPeerConnectionExtension else { return }
    let ret = swiftObject._getGatheringState ()
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _WebRTCPeerConnectionExtension_proxy_get_signaling_state (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCPeerConnectionExtension else { return }
    let ret = swiftObject._getSignalingState ()
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _WebRTCPeerConnectionExtension_proxy_initialize (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCPeerConnectionExtension else { return }
    let ret = swiftObject._initialize (pConfig: VariantDictionary (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _WebRTCPeerConnectionExtension_proxy_poll (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCPeerConnectionExtension else { return }
    let ret = swiftObject._poll ()
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _WebRTCPeerConnectionExtension_proxy_set_local_description (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCPeerConnectionExtension else { return }
    let ret = swiftObject._setLocalDescription (pType: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", pSdp: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _WebRTCPeerConnectionExtension_proxy_set_remote_description (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCPeerConnectionExtension else { return }
    let ret = swiftObject._setRemoteDescription (pType: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", pSdp: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

