// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Universal Plug and Play (UPnP) functions for network device discovery, querying and port forwarding.
/// 
/// This class can be used to discover compatible ``UPNPDevice``s on the local network and execute commands on them, like managing port mappings (for port forwarding/NAT traversal) and querying the local and remote network IP address. Note that methods on this class are synchronous and block the calling thread.
/// 
/// To forward a specific port (here `7777`, note both ``discover(timeout:ttl:deviceFilter:)`` and ``addPortMapping(port:portInternal:desc:proto:duration:)`` can return errors that should be checked):
/// 
/// To close a specific port (e.g. after you have finished using it):
/// 
/// > Note: UPnP discovery blocks the current thread. To perform discovery without blocking the main thread, use ``Thread``s like this:
/// 
/// **Terminology:** In the context of UPnP networking, "gateway" (or "internet gateway device", short IGD) refers to network devices that allow computers in the local network to access the internet ("wide area network", WAN). These gateways are often also called "routers".
/// 
/// **Pitfalls:**
/// 
/// - As explained above, these calls are blocking and shouldn't be run on the main thread, especially as they can block for multiple seconds at a time. Use threading!
/// 
/// - Networking is physical and messy. Packets get lost in transit or get filtered, addresses, free ports and assigned mappings change, and devices may leave or join the network at any time. Be mindful of this, be diligent when checking and handling errors, and handle these gracefully if you can: add clear error UI, timeouts and re-try handling.
/// 
/// - Port mappings may change (and be removed) at any time, and the remote/external IP address of the gateway can change likewise. You should consider re-querying the external IP and try to update/refresh the port mapping periodically (for example, every 5 minutes and on networking failures).
/// 
/// - Not all devices support UPnP, and some users disable UPnP support. You need to handle this (e.g. documenting and requiring the user to manually forward ports, or adding alternative methods of NAT traversal, like a relay/mirror server, or NAT hole punching, STUN/TURN, etc.).
/// 
/// - Consider what happens on mapping conflicts. Maybe multiple users on the same network would like to play your game at the same time, or maybe another application uses the same port. Make the port configurable, and optimally choose a port automatically (re-trying with a different port on failure).
/// 
/// **Further reading:** If you want to know more about UPnP (and the Internet Gateway Device (IGD) and Port Control Protocol (PCP) specifically), <a href="https://en.wikipedia.org/wiki/Universal_Plug_and_Play">Wikipedia</a> is a good first stop, the specification can be found at the <a href="https://openconnectivity.org/developer/specifications/upnp-resources/upnp/">Open Connectivity Foundation</a> and Godot's implementation is based on the <a href="https://github.com/miniupnp/miniupnp">MiniUPnP client</a>.
/// 
open class UPNP: RefCounted {
    override open class var godotClassName: StringName { "UPNP" }
    public enum UPNPResult: Int64, CaseIterable, CustomDebugStringConvertible {
        /// UPNP command or discovery was successful.
        case success = 0 // UPNP_RESULT_SUCCESS
        /// Not authorized to use the command on the ``UPNPDevice``. May be returned when the user disabled UPNP on their router.
        case notAuthorized = 1 // UPNP_RESULT_NOT_AUTHORIZED
        /// No port mapping was found for the given port, protocol combination on the given ``UPNPDevice``.
        case portMappingNotFound = 2 // UPNP_RESULT_PORT_MAPPING_NOT_FOUND
        /// Inconsistent parameters.
        case inconsistentParameters = 3 // UPNP_RESULT_INCONSISTENT_PARAMETERS
        /// No such entry in array. May be returned if a given port, protocol combination is not found on an ``UPNPDevice``.
        case noSuchEntryInArray = 4 // UPNP_RESULT_NO_SUCH_ENTRY_IN_ARRAY
        /// The action failed.
        case actionFailed = 5 // UPNP_RESULT_ACTION_FAILED
        /// The ``UPNPDevice`` does not allow wildcard values for the source IP address.
        case srcIpWildcardNotPermitted = 6 // UPNP_RESULT_SRC_IP_WILDCARD_NOT_PERMITTED
        /// The ``UPNPDevice`` does not allow wildcard values for the external port.
        case extPortWildcardNotPermitted = 7 // UPNP_RESULT_EXT_PORT_WILDCARD_NOT_PERMITTED
        /// The ``UPNPDevice`` does not allow wildcard values for the internal port.
        case intPortWildcardNotPermitted = 8 // UPNP_RESULT_INT_PORT_WILDCARD_NOT_PERMITTED
        /// The remote host value must be a wildcard.
        case remoteHostMustBeWildcard = 9 // UPNP_RESULT_REMOTE_HOST_MUST_BE_WILDCARD
        /// The external port value must be a wildcard.
        case extPortMustBeWildcard = 10 // UPNP_RESULT_EXT_PORT_MUST_BE_WILDCARD
        /// No port maps are available. May also be returned if port mapping functionality is not available.
        case noPortMapsAvailable = 11 // UPNP_RESULT_NO_PORT_MAPS_AVAILABLE
        /// Conflict with other mechanism. May be returned instead of .conflictWithOtherMapping if a port mapping conflicts with an existing one.
        case conflictWithOtherMechanism = 12 // UPNP_RESULT_CONFLICT_WITH_OTHER_MECHANISM
        /// Conflict with an existing port mapping.
        case conflictWithOtherMapping = 13 // UPNP_RESULT_CONFLICT_WITH_OTHER_MAPPING
        /// External and internal port values must be the same.
        case samePortValuesRequired = 14 // UPNP_RESULT_SAME_PORT_VALUES_REQUIRED
        /// Only permanent leases are supported. Do not use the `duration` parameter when adding port mappings.
        case onlyPermanentLeaseSupported = 15 // UPNP_RESULT_ONLY_PERMANENT_LEASE_SUPPORTED
        /// Invalid gateway.
        case invalidGateway = 16 // UPNP_RESULT_INVALID_GATEWAY
        /// Invalid port.
        case invalidPort = 17 // UPNP_RESULT_INVALID_PORT
        /// Invalid protocol.
        case invalidProtocol = 18 // UPNP_RESULT_INVALID_PROTOCOL
        /// Invalid duration.
        case invalidDuration = 19 // UPNP_RESULT_INVALID_DURATION
        /// Invalid arguments.
        case invalidArgs = 20 // UPNP_RESULT_INVALID_ARGS
        /// Invalid response.
        case invalidResponse = 21 // UPNP_RESULT_INVALID_RESPONSE
        /// Invalid parameter.
        case invalidParam = 22 // UPNP_RESULT_INVALID_PARAM
        /// HTTP error.
        case httpError = 23 // UPNP_RESULT_HTTP_ERROR
        /// Socket error.
        case socketError = 24 // UPNP_RESULT_SOCKET_ERROR
        /// Error allocating memory.
        case memAllocError = 25 // UPNP_RESULT_MEM_ALLOC_ERROR
        /// No gateway available. You may need to call ``discover(timeout:ttl:deviceFilter:)`` first, or discovery didn't detect any valid IGDs (InternetGatewayDevices).
        case noGateway = 26 // UPNP_RESULT_NO_GATEWAY
        /// No devices available. You may need to call ``discover(timeout:ttl:deviceFilter:)`` first, or discovery didn't detect any valid ``UPNPDevice``s.
        case noDevices = 27 // UPNP_RESULT_NO_DEVICES
        /// Unknown error.
        case unknownError = 28 // UPNP_RESULT_UNKNOWN_ERROR
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .success: return ".success"
                case .notAuthorized: return ".notAuthorized"
                case .portMappingNotFound: return ".portMappingNotFound"
                case .inconsistentParameters: return ".inconsistentParameters"
                case .noSuchEntryInArray: return ".noSuchEntryInArray"
                case .actionFailed: return ".actionFailed"
                case .srcIpWildcardNotPermitted: return ".srcIpWildcardNotPermitted"
                case .extPortWildcardNotPermitted: return ".extPortWildcardNotPermitted"
                case .intPortWildcardNotPermitted: return ".intPortWildcardNotPermitted"
                case .remoteHostMustBeWildcard: return ".remoteHostMustBeWildcard"
                case .extPortMustBeWildcard: return ".extPortMustBeWildcard"
                case .noPortMapsAvailable: return ".noPortMapsAvailable"
                case .conflictWithOtherMechanism: return ".conflictWithOtherMechanism"
                case .conflictWithOtherMapping: return ".conflictWithOtherMapping"
                case .samePortValuesRequired: return ".samePortValuesRequired"
                case .onlyPermanentLeaseSupported: return ".onlyPermanentLeaseSupported"
                case .invalidGateway: return ".invalidGateway"
                case .invalidPort: return ".invalidPort"
                case .invalidProtocol: return ".invalidProtocol"
                case .invalidDuration: return ".invalidDuration"
                case .invalidArgs: return ".invalidArgs"
                case .invalidResponse: return ".invalidResponse"
                case .invalidParam: return ".invalidParam"
                case .httpError: return ".httpError"
                case .socketError: return ".socketError"
                case .memAllocError: return ".memAllocError"
                case .noGateway: return ".noGateway"
                case .noDevices: return ".noDevices"
                case .unknownError: return ".unknownError"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// Multicast interface to use for discovery. Uses the default multicast interface if empty.
    final public var discoverMulticastIf: String {
        get {
            return get_discover_multicast_if ()
        }
        
        set {
            set_discover_multicast_if (newValue)
        }
        
    }
    
    /// If `0`, the local port to use for discovery is chosen automatically by the system. If `1`, discovery will be done from the source port 1900 (same as destination port). Otherwise, the value will be used as the port.
    final public var discoverLocalPort: Int32 {
        get {
            return get_discover_local_port ()
        }
        
        set {
            set_discover_local_port (newValue)
        }
        
    }
    
    /// If `true`, IPv6 is used for ``UPNPDevice`` discovery.
    final public var discoverIpv6: Bool {
        get {
            return is_discover_ipv6 ()
        }
        
        set {
            set_discover_ipv6 (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_get_device_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_device_count")
        return withUnsafePointer (to: &UPNP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of discovered ``UPNPDevice``s.
    public final func getDeviceCount ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (UPNP.method_get_device_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_device: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_device")
        return withUnsafePointer (to: &UPNP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2193290270)!
            }
            
        }
        
    }()
    
    /// Returns the ``UPNPDevice`` at the given `index`.
    public final func getDevice (index: Int32)-> UPNPDevice? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if true
        
        var copy_index: Int = Int (index)
        
        gi.object_method_bind_ptrcall_v (UPNP.method_get_device, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_index)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        var copy_index: Int = Int (index)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (UPNP.method_get_device, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_add_device: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_device")
        return withUnsafePointer (to: &UPNP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 986715920)!
            }
            
        }
        
    }()
    
    /// Adds the given ``UPNPDevice`` to the list of discovered devices.
    public final func addDevice (_ device: UPNPDevice?) {
        #if true
        
        var copy_device_handle = device?.handle
        
        gi.object_method_bind_ptrcall_v (UPNP.method_add_device, UnsafeMutableRawPointer (mutating: handle), nil, &copy_device_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: device?.handle) { p0 in
        _args.append (device == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (UPNP.method_add_device, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_device: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_device")
        return withUnsafePointer (to: &UPNP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3015133723)!
            }
            
        }
        
    }()
    
    /// Sets the device at `index` from the list of discovered devices to `device`.
    public final func setDevice (index: Int32, device: UPNPDevice?) {
        #if true
        
        var copy_index: Int = Int (index)
        var copy_device_handle = device?.handle
        
        gi.object_method_bind_ptrcall_v (UPNP.method_set_device, UnsafeMutableRawPointer (mutating: handle), nil, &copy_index, &copy_device_handle)
        
        #else
        
        var copy_index: Int = Int (index)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
            withUnsafePointer (to: device?.handle) { p1 in
            _args.append (device == nil ? nil : p1)
        
                gi.object_method_bind_ptrcall (UPNP.method_set_device, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_remove_device: GDExtensionMethodBindPtr = {
        let methodName = StringName ("remove_device")
        return withUnsafePointer (to: &UPNP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes the device at `index` from the list of discovered devices.
    public final func removeDevice (index: Int32) {
        #if true
        
        var copy_index: Int = Int (index)
        
        gi.object_method_bind_ptrcall_v (UPNP.method_remove_device, UnsafeMutableRawPointer (mutating: handle), nil, &copy_index)
        
        #else
        
        var copy_index: Int = Int (index)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (UPNP.method_remove_device, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_clear_devices: GDExtensionMethodBindPtr = {
        let methodName = StringName ("clear_devices")
        return withUnsafePointer (to: &UPNP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears the list of discovered devices.
    public final func clearDevices () {
        gi.object_method_bind_ptrcall (UPNP.method_clear_devices, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_get_gateway: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_gateway")
        return withUnsafePointer (to: &UPNP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2276800779)!
            }
            
        }
        
    }()
    
    /// Returns the default gateway. That is the first discovered ``UPNPDevice`` that is also a valid IGD (InternetGatewayDevice).
    public final func getGateway ()-> UPNPDevice? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (UPNP.method_get_gateway, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_discover: GDExtensionMethodBindPtr = {
        let methodName = StringName ("discover")
        return withUnsafePointer (to: &UPNP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1575334765)!
            }
            
        }
        
    }()
    
    /// Discovers local ``UPNPDevice``s. Clears the list of previously discovered devices.
    /// 
    /// Filters for IGD (InternetGatewayDevice) type devices by default, as those manage port forwarding. `timeout` is the time to wait for responses in milliseconds. `ttl` is the time-to-live; only touch this if you know what you're doing.
    /// 
    /// See ``UPNP/UPNPResult`` for possible return values.
    /// 
    public final func discover (timeout: Int32 = 2000, ttl: Int32 = 2, deviceFilter: String = "InternetGatewayDevice")-> Int32 {
        var _result: Int32 = 0
        #if true
        
        var copy_timeout: Int = Int (timeout)
        var copy_ttl: Int = Int (ttl)
        let gstr_device_filter = GString (deviceFilter)
        
        gi.object_method_bind_ptrcall_v (UPNP.method_discover, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_timeout, &copy_ttl, &gstr_device_filter.content)
        return _result
        #else
        
        var copy_timeout: Int = Int (timeout)
        var copy_ttl: Int = Int (ttl)
        let gstr_device_filter = GString (deviceFilter)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_timeout) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_ttl) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &gstr_device_filter.content) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (UPNP.method_discover, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                    return _result
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_query_external_address: GDExtensionMethodBindPtr = {
        let methodName = StringName ("query_external_address")
        return withUnsafePointer (to: &UPNP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the external ``IP`` address of the default gateway (see ``getGateway()``) as string. Returns an empty string on error.
    public final func queryExternalAddress ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (UPNP.method_query_external_address, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_add_port_mapping: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_port_mapping")
        return withUnsafePointer (to: &UPNP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 818314583)!
            }
            
        }
        
    }()
    
    /// Adds a mapping to forward the external `port` (between 1 and 65535, although recommended to use port 1024 or above) on the default gateway (see ``getGateway()``) to the `portInternal` on the local machine for the given protocol `proto` (either `"TCP"` or `"UDP"`, with UDP being the default). If a port mapping for the given port and protocol combination already exists on that gateway device, this method tries to overwrite it. If that is not desired, you can retrieve the gateway manually with ``getGateway()`` and call ``addPortMapping(port:portInternal:desc:proto:duration:)`` on it, if any. Note that forwarding a well-known port (below 1024) with UPnP may fail depending on the device.
    /// 
    /// Depending on the gateway device, if a mapping for that port already exists, it will either be updated or it will refuse this command due to that conflict, especially if the existing mapping for that port wasn't created via UPnP or points to a different network address (or device) than this one.
    /// 
    /// If `portInternal` is `0` (the default), the same port number is used for both the external and the internal port (the `port` value).
    /// 
    /// The description (`desc`) is shown in some routers management UIs and can be used to point out which application added the mapping.
    /// 
    /// The mapping's lease `duration` can be limited by specifying a duration in seconds. The default of `0` means no duration, i.e. a permanent lease and notably some devices only support these permanent leases. Note that whether permanent or not, this is only a request and the gateway may still decide at any point to remove the mapping (which usually happens on a reboot of the gateway, when its external IP address changes, or on some models when it detects a port mapping has become inactive, i.e. had no traffic for multiple minutes). If not `0` (permanent), the allowed range according to spec is between `120` (2 minutes) and `86400` seconds (24 hours).
    /// 
    /// See ``UPNP/UPNPResult`` for possible return values.
    /// 
    public final func addPortMapping (port: Int32, portInternal: Int32 = 0, desc: String = "", proto: String = "UDP", duration: Int32 = 0)-> Int32 {
        var _result: Int32 = 0
        #if true
        
        var copy_port: Int = Int (port)
        var copy_port_internal: Int = Int (portInternal)
        let gstr_desc = GString (desc)
        let gstr_proto = GString (proto)
        var copy_duration: Int = Int (duration)
        
        gi.object_method_bind_ptrcall_v (UPNP.method_add_port_mapping, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_port, &copy_port_internal, &gstr_desc.content, &gstr_proto.content, &copy_duration)
        return _result
        #else
        
        var copy_port: Int = Int (port)
        var copy_port_internal: Int = Int (portInternal)
        let gstr_desc = GString (desc)
        let gstr_proto = GString (proto)
        var copy_duration: Int = Int (duration)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_port) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_port_internal) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &gstr_desc.content) { p2 in
                    _args.append (p2)
                    return withUnsafePointer (to: &gstr_proto.content) { p3 in
                        _args.append (p3)
                        return withUnsafePointer (to: &copy_duration) { p4 in
                            _args.append (p4)
        
                            gi.object_method_bind_ptrcall (UPNP.method_add_port_mapping, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                            return _result
                        }
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_delete_port_mapping: GDExtensionMethodBindPtr = {
        let methodName = StringName ("delete_port_mapping")
        return withUnsafePointer (to: &UPNP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3444187325)!
            }
            
        }
        
    }()
    
    /// Deletes the port mapping for the given port and protocol combination on the default gateway (see ``getGateway()``) if one exists. `port` must be a valid port between 1 and 65535, `proto` can be either `"TCP"` or `"UDP"`. May be refused for mappings pointing to addresses other than this one, for well-known ports (below 1024), or for mappings not added via UPnP. See ``UPNP/UPNPResult`` for possible return values.
    public final func deletePortMapping (port: Int32, proto: String = "UDP")-> Int32 {
        var _result: Int32 = 0
        #if true
        
        var copy_port: Int = Int (port)
        let gstr_proto = GString (proto)
        
        gi.object_method_bind_ptrcall_v (UPNP.method_delete_port_mapping, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_port, &gstr_proto.content)
        return _result
        #else
        
        var copy_port: Int = Int (port)
        let gstr_proto = GString (proto)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_port) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &gstr_proto.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (UPNP.method_delete_port_mapping, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_set_discover_multicast_if: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_discover_multicast_if")
        return withUnsafePointer (to: &UPNP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_discover_multicast_if (_ mIf: String) {
        #if true
        
        let gstr_m_if = GString (mIf)
        
        gi.object_method_bind_ptrcall_v (UPNP.method_set_discover_multicast_if, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_m_if.content)
        
        #else
        
        let gstr_m_if = GString (mIf)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_m_if.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (UPNP.method_set_discover_multicast_if, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_discover_multicast_if: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_discover_multicast_if")
        return withUnsafePointer (to: &UPNP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_discover_multicast_if ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (UPNP.method_get_discover_multicast_if, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_set_discover_local_port: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_discover_local_port")
        return withUnsafePointer (to: &UPNP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_discover_local_port (_ port: Int32) {
        #if true
        
        var copy_port: Int = Int (port)
        
        gi.object_method_bind_ptrcall_v (UPNP.method_set_discover_local_port, UnsafeMutableRawPointer (mutating: handle), nil, &copy_port)
        
        #else
        
        var copy_port: Int = Int (port)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_port) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (UPNP.method_set_discover_local_port, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_discover_local_port: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_discover_local_port")
        return withUnsafePointer (to: &UPNP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_discover_local_port ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (UPNP.method_get_discover_local_port, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_discover_ipv6: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_discover_ipv6")
        return withUnsafePointer (to: &UPNP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_discover_ipv6 (_ ipv6: Bool) {
        #if true
        
        var copy_ipv6 = ipv6
        
        gi.object_method_bind_ptrcall_v (UPNP.method_set_discover_ipv6, UnsafeMutableRawPointer (mutating: handle), nil, &copy_ipv6)
        
        #else
        
        var copy_ipv6 = ipv6
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_ipv6) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (UPNP.method_set_discover_ipv6, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_discover_ipv6: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_discover_ipv6")
        return withUnsafePointer (to: &UPNP.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_discover_ipv6 ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (UPNP.method_is_discover_ipv6, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

