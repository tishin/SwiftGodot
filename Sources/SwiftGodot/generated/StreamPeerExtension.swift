// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

open class StreamPeerExtension: StreamPeer {
    override open class var godotClassName: StringName { "StreamPeerExtension" }
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
