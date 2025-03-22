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


open class StreamPeerExtension: StreamPeer {
    fileprivate static var className = StringName("StreamPeerExtension")
    override open class var godotClassName: StringName { className }
    /* Methods */
    /// 
    @_documentation(visibility: public)
    open func _getAvailableBytes() -> Int32 {
        return 0
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_available_bytes":
                return _StreamPeerExtension_proxy_get_available_bytes
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _StreamPeerExtension_proxy_get_available_bytes (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<StreamPeerExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getAvailableBytes ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

