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


/// Godot editor's popup dialog for creating new ``Script`` files.
/// 
/// The ``ScriptCreateDialog`` creates script files according to a given template for a given scripting language. The standard use is to configure its fields prior to calling one of the ``Window/popup(rect:)`` methods.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``scriptCreated``
open class ScriptCreateDialog: ConfirmationDialog {
    private static var className = StringName("ScriptCreateDialog")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_config: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("config")
        return withUnsafePointer(to: &ScriptCreateDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 869314288)!
            }
            
        }
        
    }()
    
    /// Prefills required fields to configure the ScriptCreateDialog for use.
    public final func config(inherits: String, path: String, builtInEnabled: Bool = true, loadEnabled: Bool = true) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let inherits = GString(inherits)
        withUnsafePointer(to: inherits.content) { pArg0 in
            let path = GString(path)
            withUnsafePointer(to: path.content) { pArg1 in
                withUnsafePointer(to: builtInEnabled) { pArg2 in
                    withUnsafePointer(to: loadEnabled) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(ScriptCreateDialog.method_config, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    // Signals 
    /// Emitted when the user clicks the OK button.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.scriptCreated.connect { script in
    ///    print ("caught signal")
    /// }
    /// ```
    public var scriptCreated: SignalWithArguments<Script?> { SignalWithArguments<Script?> (target: self, signalName: "script_created") }
    
}

