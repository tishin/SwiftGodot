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


/// Binding modifier base class.
/// 
/// Binding modifier base class. Subclasses implement various modifiers that alter how an OpenXR runtime processes inputs.
open class OpenXRBindingModifier: Resource {
    private static var className = StringName("OpenXRBindingModifier")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__get_description: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_description")
        return withUnsafePointer(to: &OpenXRBindingModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Return the description of this class that is used for the title bar of the binding modifier editor.
    @_documentation(visibility: public)
    open func _getDescription() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(OpenXRBindingModifier.method__get_description, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__get_ip_modification: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_ip_modification")
        return withUnsafePointer(to: &OpenXRBindingModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2115431945)!
            }
            
        }
        
    }()
    
    /// Returns the data that is sent to OpenXR when submitting the suggested interacting bindings this modifier is a part of.
    /// 
    /// > Note: This must be data compatible with a `XrBindingModificationBaseHeaderKHR` structure.
    /// 
    @_documentation(visibility: public)
    open func _getIpModification() -> PackedByteArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedByteArray = PackedByteArray ()
        gi.object_method_bind_ptrcall(OpenXRBindingModifier.method__get_ip_modification, handle, nil, &_result.content)
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_description":
                return _OpenXRBindingModifier_proxy_get_description
            case "_get_ip_modification":
                return _OpenXRBindingModifier_proxy_get_ip_modification
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _OpenXRBindingModifier_proxy_get_description (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRBindingModifier else { return }
    let ret = GString (swiftObject._getDescription ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _OpenXRBindingModifier_proxy_get_ip_modification (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRBindingModifier else { return }
    let ret = swiftObject._getIpModification ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedByteArray
    ret.content = PackedByteArray.zero
}

