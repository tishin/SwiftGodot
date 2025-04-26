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
    private static var className = StringName("StreamPeerExtension")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__get_available_bytes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_available_bytes")
        return withUnsafePointer(to: &StreamPeerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getAvailableBytes() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(StreamPeerExtension.method__get_available_bytes, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
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
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? StreamPeerExtension else { return }
    let ret = swiftObject._getAvailableBytes ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

