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


open class WebRTCDataChannelExtension: WebRTCDataChannel {
    private static var className = StringName("WebRTCDataChannelExtension")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__get_available_packet_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_available_packet_count")
        return withUnsafePointer(to: &WebRTCDataChannelExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getAvailablePacketCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(WebRTCDataChannelExtension.method__get_available_packet_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_max_packet_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_max_packet_size")
        return withUnsafePointer(to: &WebRTCDataChannelExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getMaxPacketSize() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(WebRTCDataChannelExtension.method__get_max_packet_size, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__poll: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_poll")
        return withUnsafePointer(to: &WebRTCDataChannelExtension.godotClassName.content) { classPtr in
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
        gi.object_method_bind_ptrcall(WebRTCDataChannelExtension.method__poll, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__close: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_close")
        return withUnsafePointer(to: &WebRTCDataChannelExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _close() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(WebRTCDataChannelExtension.method__close, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__set_write_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_write_mode")
        return withUnsafePointer(to: &WebRTCDataChannelExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1999768052)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _setWriteMode(pWriteMode: WebRTCDataChannel.WriteMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pWriteMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(WebRTCDataChannelExtension.method__set_write_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_write_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_write_mode")
        return withUnsafePointer(to: &WebRTCDataChannelExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2848495172)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getWriteMode() -> WebRTCDataChannel.WriteMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(WebRTCDataChannelExtension.method__get_write_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return WebRTCDataChannel.WriteMode (rawValue: _result)!
    }
    
    fileprivate static let method__was_string_packet: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_was_string_packet")
        return withUnsafePointer(to: &WebRTCDataChannelExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _wasStringPacket() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(WebRTCDataChannelExtension.method__was_string_packet, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_ready_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_ready_state")
        return withUnsafePointer(to: &WebRTCDataChannelExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3501143017)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getReadyState() -> WebRTCDataChannel.ChannelState {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(WebRTCDataChannelExtension.method__get_ready_state, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return WebRTCDataChannel.ChannelState (rawValue: _result)!
    }
    
    fileprivate static let method__get_label: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_label")
        return withUnsafePointer(to: &WebRTCDataChannelExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getLabel() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(WebRTCDataChannelExtension.method__get_label, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__is_ordered: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_ordered")
        return withUnsafePointer(to: &WebRTCDataChannelExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _isOrdered() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(WebRTCDataChannelExtension.method__is_ordered, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_id")
        return withUnsafePointer(to: &WebRTCDataChannelExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getId() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(WebRTCDataChannelExtension.method__get_id, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_max_packet_life_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_max_packet_life_time")
        return withUnsafePointer(to: &WebRTCDataChannelExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getMaxPacketLifeTime() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(WebRTCDataChannelExtension.method__get_max_packet_life_time, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_max_retransmits: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_max_retransmits")
        return withUnsafePointer(to: &WebRTCDataChannelExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getMaxRetransmits() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(WebRTCDataChannelExtension.method__get_max_retransmits, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_protocol: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_protocol")
        return withUnsafePointer(to: &WebRTCDataChannelExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getProtocol() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(WebRTCDataChannelExtension.method__get_protocol, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__is_negotiated: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_negotiated")
        return withUnsafePointer(to: &WebRTCDataChannelExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _isNegotiated() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(WebRTCDataChannelExtension.method__is_negotiated, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_buffered_amount: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_buffered_amount")
        return withUnsafePointer(to: &WebRTCDataChannelExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getBufferedAmount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(WebRTCDataChannelExtension.method__get_buffered_amount, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_close":
                return _WebRTCDataChannelExtension_proxy_close
            case "_get_available_packet_count":
                return _WebRTCDataChannelExtension_proxy_get_available_packet_count
            case "_get_buffered_amount":
                return _WebRTCDataChannelExtension_proxy_get_buffered_amount
            case "_get_id":
                return _WebRTCDataChannelExtension_proxy_get_id
            case "_get_label":
                return _WebRTCDataChannelExtension_proxy_get_label
            case "_get_max_packet_life_time":
                return _WebRTCDataChannelExtension_proxy_get_max_packet_life_time
            case "_get_max_packet_size":
                return _WebRTCDataChannelExtension_proxy_get_max_packet_size
            case "_get_max_retransmits":
                return _WebRTCDataChannelExtension_proxy_get_max_retransmits
            case "_get_protocol":
                return _WebRTCDataChannelExtension_proxy_get_protocol
            case "_get_ready_state":
                return _WebRTCDataChannelExtension_proxy_get_ready_state
            case "_get_write_mode":
                return _WebRTCDataChannelExtension_proxy_get_write_mode
            case "_is_negotiated":
                return _WebRTCDataChannelExtension_proxy_is_negotiated
            case "_is_ordered":
                return _WebRTCDataChannelExtension_proxy_is_ordered
            case "_poll":
                return _WebRTCDataChannelExtension_proxy_poll
            case "_set_write_mode":
                return _WebRTCDataChannelExtension_proxy_set_write_mode
            case "_was_string_packet":
                return _WebRTCDataChannelExtension_proxy_was_string_packet
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _WebRTCDataChannelExtension_proxy_close (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCDataChannelExtension else { return }
    swiftObject._close ()
}

func _WebRTCDataChannelExtension_proxy_get_available_packet_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCDataChannelExtension else { return }
    let ret = swiftObject._getAvailablePacketCount ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _WebRTCDataChannelExtension_proxy_get_buffered_amount (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCDataChannelExtension else { return }
    let ret = swiftObject._getBufferedAmount ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _WebRTCDataChannelExtension_proxy_get_id (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCDataChannelExtension else { return }
    let ret = swiftObject._getId ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _WebRTCDataChannelExtension_proxy_get_label (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCDataChannelExtension else { return }
    let ret = GString (swiftObject._getLabel ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _WebRTCDataChannelExtension_proxy_get_max_packet_life_time (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCDataChannelExtension else { return }
    let ret = swiftObject._getMaxPacketLifeTime ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _WebRTCDataChannelExtension_proxy_get_max_packet_size (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCDataChannelExtension else { return }
    let ret = swiftObject._getMaxPacketSize ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _WebRTCDataChannelExtension_proxy_get_max_retransmits (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCDataChannelExtension else { return }
    let ret = swiftObject._getMaxRetransmits ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _WebRTCDataChannelExtension_proxy_get_protocol (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCDataChannelExtension else { return }
    let ret = GString (swiftObject._getProtocol ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _WebRTCDataChannelExtension_proxy_get_ready_state (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCDataChannelExtension else { return }
    let ret = swiftObject._getReadyState ()
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _WebRTCDataChannelExtension_proxy_get_write_mode (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCDataChannelExtension else { return }
    let ret = swiftObject._getWriteMode ()
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _WebRTCDataChannelExtension_proxy_is_negotiated (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCDataChannelExtension else { return }
    let ret = swiftObject._isNegotiated ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _WebRTCDataChannelExtension_proxy_is_ordered (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCDataChannelExtension else { return }
    let ret = swiftObject._isOrdered ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _WebRTCDataChannelExtension_proxy_poll (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCDataChannelExtension else { return }
    let ret = swiftObject._poll ()
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _WebRTCDataChannelExtension_proxy_set_write_mode (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCDataChannelExtension else { return }
    swiftObject._setWriteMode (pWriteMode: args [0]!.assumingMemoryBound (to: WebRTCDataChannel.WriteMode.self).pointee)
}

func _WebRTCDataChannelExtension_proxy_was_string_packet (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? WebRTCDataChannelExtension else { return }
    let ret = swiftObject._wasStringPacket ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

