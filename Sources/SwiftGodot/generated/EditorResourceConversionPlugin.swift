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


/// Plugin for adding custom converters from one resource format to another in the editor resource picker context menu; for example, converting a ``StandardMaterial3D`` to a ``ShaderMaterial``.
/// 
/// ``EditorResourceConversionPlugin`` is invoked when the context menu is brought up for a resource in the editor inspector. Relevant conversion plugins will appear as menu options to convert the given resource to a target type.
/// 
/// Below shows an example of a basic plugin that will convert an ``ImageTexture`` to a ``PortableCompressedTexture2D``.
/// 
/// To use an ``EditorResourceConversionPlugin``, register it using the ``EditorPlugin/addResourceConversionPlugin(_:)`` method first.
/// 
open class EditorResourceConversionPlugin: RefCounted {
    private static var className = StringName("EditorResourceConversionPlugin")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__converts_to: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_converts_to")
        return withUnsafePointer(to: &EditorResourceConversionPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the class name of the target type of ``Resource`` that this plugin converts source resources to.
    @_documentation(visibility: public)
    open func _convertsTo() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorResourceConversionPlugin.method__converts_to, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__handles: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_handles")
        return withUnsafePointer(to: &EditorResourceConversionPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3190994482)!
            }
            
        }
        
    }()
    
    /// Called to determine whether a particular ``Resource`` can be converted to the target resource type by this plugin.
    @_documentation(visibility: public)
    open func _handles(resource: Resource?) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: resource?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorResourceConversionPlugin.method__handles, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__convert: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_convert")
        return withUnsafePointer(to: &EditorResourceConversionPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 325183270)!
            }
            
        }
        
    }()
    
    /// Takes an input ``Resource`` and converts it to the type given in ``_convertsTo()``. The returned ``Resource`` is the result of the conversion, and the input ``Resource`` remains unchanged.
    @_documentation(visibility: public)
    open func _convert(resource: Resource?) -> Resource? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: resource?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorResourceConversionPlugin.method__convert, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_convert":
                return _EditorResourceConversionPlugin_proxy_convert
            case "_converts_to":
                return _EditorResourceConversionPlugin_proxy_converts_to
            case "_handles":
                return _EditorResourceConversionPlugin_proxy_handles
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _EditorResourceConversionPlugin_proxy_convert (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorResourceConversionPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = swiftObject._convert (resource: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? Resource)
    retPtr!.storeBytes (of: ret?.handle, as: UnsafeRawPointer?.self) // Resource
}

func _EditorResourceConversionPlugin_proxy_converts_to (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorResourceConversionPlugin else { return }
    let ret = GString (swiftObject._convertsTo ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorResourceConversionPlugin_proxy_handles (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorResourceConversionPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = swiftObject._handles (resource: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? Resource)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

