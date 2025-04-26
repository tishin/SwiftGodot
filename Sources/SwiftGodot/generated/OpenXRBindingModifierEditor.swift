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


/// Binding modifier editor.
/// 
/// This is the default binding modifier editor used in the OpenXR action map.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``bindingModifierRemoved``
open class OpenXRBindingModifierEditor: PanelContainer {
    private static var className = StringName("OpenXRBindingModifierEditor")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_get_binding_modifier: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_binding_modifier")
        return withUnsafePointer(to: &OpenXRBindingModifierEditor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2930765082)!
            }
            
        }
        
    }()
    
    /// Returns the ``OpenXRBindingModifier`` currently being edited.
    public final func getBindingModifier() -> OpenXRBindingModifier? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(OpenXRBindingModifierEditor.method_get_binding_modifier, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_setup: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("setup")
        return withUnsafePointer(to: &OpenXRBindingModifierEditor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1284787389)!
            }
            
        }
        
    }()
    
    /// Setup this editor for the provided `actionMap` and `bindingModifier`.
    public final func setup(actionMap: OpenXRActionMap?, bindingModifier: OpenXRBindingModifier?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: actionMap?.handle) { pArg0 in
            withUnsafePointer(to: bindingModifier?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(OpenXRBindingModifierEditor.method_setup, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    // Signals 
    /// Signal emitted when the user presses the delete binding modifier button for this modifier.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.bindingModifierRemoved.connect { bindingModifierEditor in
    ///    print ("caught signal")
    /// }
    /// ```
    public var bindingModifierRemoved: SignalWithArguments<Object?> { SignalWithArguments<Object?> (target: self, signalName: "binding_modifier_removed") }
    
}

