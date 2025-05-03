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


/// A dialog used for confirmation of actions.
/// 
/// A dialog used for confirmation of actions. This window is similar to ``AcceptDialog``, but pressing its Cancel button can have a different outcome from pressing the OK button. The order of the two buttons varies depending on the host OS.
/// 
/// To get cancel action, you can use:
/// 
open class ConfirmationDialog: AcceptDialog {
    private static var className = StringName("ConfirmationDialog")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The text displayed by the cancel button (see ``getCancelButton()``).
    final public var cancelButtonText: String {
        get {
            return get_cancel_button_text ()
        }
        
        set {
            set_cancel_button_text (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_get_cancel_button: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_cancel_button")
        return withUnsafePointer(to: &ConfirmationDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1856205918)!
            }
            
        }
        
    }()
    
    /// Returns the cancel button.
    /// 
    /// > Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their ``CanvasItem/visible`` property.
    /// 
    public final func getCancelButton() -> Button? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(ConfirmationDialog.method_get_cancel_button, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_cancel_button_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_cancel_button_text")
        return withUnsafePointer(to: &ConfirmationDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_cancel_button_text(_ text: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let text = GString(text)
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ConfirmationDialog.method_set_cancel_button_text, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_cancel_button_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_cancel_button_text")
        return withUnsafePointer(to: &ConfirmationDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_cancel_button_text() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(ConfirmationDialog.method_get_cancel_button_text, handle, nil, &_result.content)
        return _result.description
    }
    
}

