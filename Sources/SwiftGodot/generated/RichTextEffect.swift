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


/// A custom effect for a ``RichTextLabel``.
/// 
/// A custom effect for a ``RichTextLabel``, which can be loaded in the ``RichTextLabel`` inspector or using ``RichTextLabel/installEffect(_:)``.
/// 
/// > Note: For a ``RichTextEffect`` to be usable, a BBCode tag must be defined as a member variable called `bbcode` in the script.
/// 
/// > Note: As soon as a ``RichTextLabel`` contains at least one ``RichTextEffect``, it will continuously process the effect unless the project is paused. This may impact battery life negatively.
/// 
open class RichTextEffect: Resource {
    private static var className = StringName("RichTextEffect")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__process_custom_fx: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_process_custom_fx")
        return withUnsafePointer(to: &RichTextEffect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 31984339)!
            }
            
        }
        
    }()
    
    /// Override this method to modify properties in `charFx`. The method must return `true` if the character could be transformed successfully. If the method returns `false`, it will skip transformation to avoid displaying broken text.
    @_documentation(visibility: public)
    open func _processCustomFx(charFx: CharFXTransform?) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: charFx?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RichTextEffect.method__process_custom_fx, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_process_custom_fx":
                return _RichTextEffect_proxy_process_custom_fx
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _RichTextEffect_proxy_process_custom_fx (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? RichTextEffect else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = swiftObject._processCustomFx (charFx: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? CharFXTransform)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

