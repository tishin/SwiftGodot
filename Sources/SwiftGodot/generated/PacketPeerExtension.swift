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


open class PacketPeerExtension: PacketPeer {
    private static var className = StringName("PacketPeerExtension")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__get_available_packet_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_available_packet_count")
        return withUnsafePointer(to: &PacketPeerExtension.godotClassName.content) { classPtr in
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
        gi.object_method_bind_ptrcall(PacketPeerExtension.method__get_available_packet_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_max_packet_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_max_packet_size")
        return withUnsafePointer(to: &PacketPeerExtension.godotClassName.content) { classPtr in
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
        gi.object_method_bind_ptrcall(PacketPeerExtension.method__get_max_packet_size, handle, nil, &_result)
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_available_packet_count":
                return _PacketPeerExtension_proxy_get_available_packet_count
            case "_get_max_packet_size":
                return _PacketPeerExtension_proxy_get_max_packet_size
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _PacketPeerExtension_proxy_get_available_packet_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PacketPeerExtension else { return }
    let ret = swiftObject._getAvailablePacketCount ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _PacketPeerExtension_proxy_get_max_packet_size (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PacketPeerExtension else { return }
    let ret = swiftObject._getMaxPacketSize ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

