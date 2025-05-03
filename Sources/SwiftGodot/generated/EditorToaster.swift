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


/// Manages toast notifications within the editor.
/// 
/// This object manages the functionality and display of toast notifications within the editor, ensuring timely and informative alerts are presented to users.
/// 
/// > Note: This class shouldn't be instantiated directly. Instead, access the singleton using ``EditorInterface/getEditorToaster()``.
/// 
open class EditorToaster: HBoxContainer {
    private static var className = StringName("EditorToaster")
    override open class var godotClassName: StringName { className }
    public enum Severity: Int64, CaseIterable {
        /// Toast will display with an INFO severity.
        case info = 0 // SEVERITY_INFO
        /// Toast will display with a WARNING severity and have a corresponding color.
        case warning = 1 // SEVERITY_WARNING
        /// Toast will display with an ERROR severity and have a corresponding color.
        case error = 2 // SEVERITY_ERROR
    }
    
    /* Methods */
    fileprivate static let method_push_toast: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("push_toast")
        return withUnsafePointer(to: &EditorToaster.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1813923476)!
            }
            
        }
        
    }()
    
    /// Pushes a toast notification to the editor for display.
    public final func pushToast(message: String, severity: EditorToaster.Severity = .info, tooltip: String = "") {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let message = GString(message)
        withUnsafePointer(to: message.content) { pArg0 in
            withUnsafePointer(to: severity.rawValue) { pArg1 in
                let tooltip = GString(tooltip)
                withUnsafePointer(to: tooltip.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorToaster.method_push_toast, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
}

