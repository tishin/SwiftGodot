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


/// Universal Plug and Play (UPnP) device.
/// 
/// Universal Plug and Play (UPnP) device. See ``UPNP`` for UPnP discovery and utility functions. Provides low-level access to UPNP control commands. Allows to manage port mappings (port forwarding) and to query network information of the device (like local and external IP address and status). Note that methods on this class are synchronous and block the calling thread.
open class UPNPDevice: RefCounted {
    private static var className = StringName("UPNPDevice")
    override open class var godotClassName: StringName { className }
    public enum IGDStatus: Int64, CaseIterable {
        /// OK.
        case ok = 0 // IGD_STATUS_OK
        /// HTTP error.
        case httpError = 1 // IGD_STATUS_HTTP_ERROR
        /// Empty HTTP response.
        case httpEmpty = 2 // IGD_STATUS_HTTP_EMPTY
        /// Returned response contained no URLs.
        case noUrls = 3 // IGD_STATUS_NO_URLS
        /// Not a valid IGD.
        case noIgd = 4 // IGD_STATUS_NO_IGD
        /// Disconnected.
        case disconnected = 5 // IGD_STATUS_DISCONNECTED
        /// Unknown device.
        case unknownDevice = 6 // IGD_STATUS_UNKNOWN_DEVICE
        /// Invalid control.
        case invalidControl = 7 // IGD_STATUS_INVALID_CONTROL
        /// Memory allocation error.
        case mallocError = 8 // IGD_STATUS_MALLOC_ERROR
        /// Unknown error.
        case unknownError = 9 // IGD_STATUS_UNKNOWN_ERROR
    }
    
    
    /* Properties */
    
    /// URL to the device description.
    final public var descriptionUrl: String {
        get {
            return get_description_url ()
        }
        
        set {
            set_description_url (newValue)
        }
        
    }
    
    /// Service type.
    final public var serviceType: String {
        get {
            return get_service_type ()
        }
        
        set {
            set_service_type (newValue)
        }
        
    }
    
    /// IDG control URL.
    final public var igdControlUrl: String {
        get {
            return get_igd_control_url ()
        }
        
        set {
            set_igd_control_url (newValue)
        }
        
    }
    
    /// IGD service type.
    final public var igdServiceType: String {
        get {
            return get_igd_service_type ()
        }
        
        set {
            set_igd_service_type (newValue)
        }
        
    }
    
    /// Address of the local machine in the network connecting it to this ``UPNPDevice``.
    final public var igdOurAddr: String {
        get {
            return get_igd_our_addr ()
        }
        
        set {
            set_igd_our_addr (newValue)
        }
        
    }
    
    /// IGD status. See ``UPNPDevice/IGDStatus``.
    final public var igdStatus: UPNPDevice.IGDStatus {
        get {
            return get_igd_status ()
        }
        
        set {
            set_igd_status (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_is_valid_gateway: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_valid_gateway")
        return withUnsafePointer(to: &UPNPDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this is a valid IGD (InternetGatewayDevice) which potentially supports port forwarding.
    public final func isValidGateway() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(UPNPDevice.method_is_valid_gateway, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_query_external_address: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("query_external_address")
        return withUnsafePointer(to: &UPNPDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the external IP address of this ``UPNPDevice`` or an empty string.
    public final func queryExternalAddress() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(UPNPDevice.method_query_external_address, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_add_port_mapping: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_port_mapping")
        return withUnsafePointer(to: &UPNPDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 818314583)!
            }
            
        }
        
    }()
    
    /// Adds a port mapping to forward the given external port on this ``UPNPDevice`` for the given protocol to the local machine. See ``UPNP/addPortMapping(port:portInternal:desc:proto:duration:)``.
    public final func addPortMapping(port: Int32, portInternal: Int32 = 0, desc: String = "", proto: String = "UDP", duration: Int32 = 0) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: port) { pArg0 in
            withUnsafePointer(to: portInternal) { pArg1 in
                let desc = GString(desc)
                withUnsafePointer(to: desc.content) { pArg2 in
                    let proto = GString(proto)
                    withUnsafePointer(to: proto.content) { pArg3 in
                        withUnsafePointer(to: duration) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(UPNPDevice.method_add_port_mapping, handle, pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_delete_port_mapping: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("delete_port_mapping")
        return withUnsafePointer(to: &UPNPDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444187325)!
            }
            
        }
        
    }()
    
    /// Deletes the port mapping identified by the given port and protocol combination on this device. See ``UPNP/deletePortMapping(port:proto:)``.
    public final func deletePortMapping(port: Int32, proto: String = "UDP") -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: port) { pArg0 in
            let proto = GString(proto)
            withUnsafePointer(to: proto.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(UPNPDevice.method_delete_port_mapping, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_description_url: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_description_url")
        return withUnsafePointer(to: &UPNPDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_description_url(_ url: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let url = GString(url)
        withUnsafePointer(to: url.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(UPNPDevice.method_set_description_url, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_description_url: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_description_url")
        return withUnsafePointer(to: &UPNPDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_description_url() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(UPNPDevice.method_get_description_url, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_service_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_service_type")
        return withUnsafePointer(to: &UPNPDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_service_type(_ type: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let type = GString(type)
        withUnsafePointer(to: type.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(UPNPDevice.method_set_service_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_service_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_service_type")
        return withUnsafePointer(to: &UPNPDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_service_type() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(UPNPDevice.method_get_service_type, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_igd_control_url: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_igd_control_url")
        return withUnsafePointer(to: &UPNPDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_igd_control_url(_ url: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let url = GString(url)
        withUnsafePointer(to: url.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(UPNPDevice.method_set_igd_control_url, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_igd_control_url: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_igd_control_url")
        return withUnsafePointer(to: &UPNPDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_igd_control_url() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(UPNPDevice.method_get_igd_control_url, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_igd_service_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_igd_service_type")
        return withUnsafePointer(to: &UPNPDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_igd_service_type(_ type: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let type = GString(type)
        withUnsafePointer(to: type.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(UPNPDevice.method_set_igd_service_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_igd_service_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_igd_service_type")
        return withUnsafePointer(to: &UPNPDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_igd_service_type() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(UPNPDevice.method_get_igd_service_type, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_igd_our_addr: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_igd_our_addr")
        return withUnsafePointer(to: &UPNPDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_igd_our_addr(_ addr: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let addr = GString(addr)
        withUnsafePointer(to: addr.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(UPNPDevice.method_set_igd_our_addr, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_igd_our_addr: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_igd_our_addr")
        return withUnsafePointer(to: &UPNPDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_igd_our_addr() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(UPNPDevice.method_get_igd_our_addr, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_igd_status: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_igd_status")
        return withUnsafePointer(to: &UPNPDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 519504122)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_igd_status(_ status: UPNPDevice.IGDStatus) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: status.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(UPNPDevice.method_set_igd_status, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_igd_status: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_igd_status")
        return withUnsafePointer(to: &UPNPDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 180887011)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_igd_status() -> UPNPDevice.IGDStatus {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(UPNPDevice.method_get_igd_status, handle, nil, &_result)
        return UPNPDevice.IGDStatus (rawValue: _result)!
    }
    
}

