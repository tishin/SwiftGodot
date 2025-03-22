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


/// Godot editor's script editor.
/// 
/// Godot editor's script editor.
/// 
/// > Note: This class shouldn't be instantiated directly. Instead, access the singleton using ``EditorInterface/getScriptEditor()``.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``editorScriptChanged``
/// - ``scriptClose``
open class ScriptEditor: PanelContainer {
    fileprivate static var className = StringName("ScriptEditor")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static var method_get_current_editor: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_current_editor")
        return withUnsafePointer(to: &ScriptEditor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1906266726)!
            }
            
        }
        
    }()
    
    /// Returns the ``ScriptEditorBase`` object that the user is currently editing.
    public final func getCurrentEditor() -> ScriptEditorBase? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(ScriptEditor.method_get_current_editor, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_get_open_script_editors: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_open_script_editors")
        return withUnsafePointer(to: &ScriptEditor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns an array with all ``ScriptEditorBase`` objects which are currently open in editor.
    public final func getOpenScriptEditors() -> ObjectCollection<ScriptEditorBase> {
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(ScriptEditor.method_get_open_script_editors, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return ObjectCollection<ScriptEditorBase>(content: _result)
    }
    
    fileprivate static var method_register_syntax_highlighter: GDExtensionMethodBindPtr = {
        let methodName = StringName("register_syntax_highlighter")
        return withUnsafePointer(to: &ScriptEditor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1092774468)!
            }
            
        }
        
    }()
    
    /// Registers the ``EditorSyntaxHighlighter`` to the editor, the ``EditorSyntaxHighlighter`` will be available on all open scripts.
    /// 
    /// > Note: Does not apply to scripts that are already opened.
    /// 
    public final func registerSyntaxHighlighter(_ syntaxHighlighter: EditorSyntaxHighlighter?) {
        withUnsafePointer(to: syntaxHighlighter?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptEditor.method_register_syntax_highlighter, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_unregister_syntax_highlighter: GDExtensionMethodBindPtr = {
        let methodName = StringName("unregister_syntax_highlighter")
        return withUnsafePointer(to: &ScriptEditor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1092774468)!
            }
            
        }
        
    }()
    
    /// Unregisters the ``EditorSyntaxHighlighter`` from the editor.
    /// 
    /// > Note: The ``EditorSyntaxHighlighter`` will still be applied to scripts that are already opened.
    /// 
    public final func unregisterSyntaxHighlighter(_ syntaxHighlighter: EditorSyntaxHighlighter?) {
        withUnsafePointer(to: syntaxHighlighter?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptEditor.method_unregister_syntax_highlighter, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_goto_line: GDExtensionMethodBindPtr = {
        let methodName = StringName("goto_line")
        return withUnsafePointer(to: &ScriptEditor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Goes to the specified line in the current script.
    public final func gotoLine(lineNumber: Int32) {
        withUnsafePointer(to: lineNumber) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptEditor.method_goto_line, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_current_script: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_current_script")
        return withUnsafePointer(to: &ScriptEditor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2146468882)!
            }
            
        }
        
    }()
    
    /// Returns a ``Script`` that is currently active in editor.
    public final func getCurrentScript() -> Script? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(ScriptEditor.method_get_current_script, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_get_open_scripts: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_open_scripts")
        return withUnsafePointer(to: &ScriptEditor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns an array with all ``Script`` objects which are currently open in editor.
    public final func getOpenScripts() -> ObjectCollection<Script> {
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(ScriptEditor.method_get_open_scripts, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return ObjectCollection<Script>(content: _result)
    }
    
    fileprivate static var method_open_script_create_dialog: GDExtensionMethodBindPtr = {
        let methodName = StringName("open_script_create_dialog")
        return withUnsafePointer(to: &ScriptEditor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3186203200)!
            }
            
        }
        
    }()
    
    /// Opens the script create dialog. The script will extend `baseName`. The file extension can be omitted from `basePath`. It will be added based on the selected scripting language.
    public final func openScriptCreateDialog(baseName: String, basePath: String) {
        let baseName = GString(baseName)
        withUnsafePointer(to: baseName.content) { pArg0 in
            let basePath = GString(basePath)
            withUnsafePointer(to: basePath.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ScriptEditor.method_open_script_create_dialog, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_goto_help: GDExtensionMethodBindPtr = {
        let methodName = StringName("goto_help")
        return withUnsafePointer(to: &ScriptEditor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Opens help for the given topic. The `topic` is an encoded string that controls which class, method, constant, signal, annotation, property, or theme item should be focused.
    /// 
    /// The supported `topic` formats include `class_name:class`, `class_method:class:method`, `class_constant:class:constant`, `class_signal:class:signal`, `class_annotation:class:@annotation`, `class_property:class:property`, and `class_theme_item:class:item`, where `class` is the class name, `method` is the method name, `constant` is the constant name, `signal` is the signal name, `annotation` is the annotation name, `property` is the property name, and `item` is the theme item.
    /// 
    /// **Examples:**
    /// 
    public final func gotoHelp(topic: String) {
        let topic = GString(topic)
        withUnsafePointer(to: topic.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptEditor.method_goto_help, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    // Signals 
    /// Emitted when user changed active script. Argument is a freshly activated ``Script``.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.editorScriptChanged.connect { script in
    ///    print ("caught signal")
    /// }
    /// ```
    public var editorScriptChanged: SignalWithArguments<Script?> { SignalWithArguments<Script?> (target: self, signalName: "editor_script_changed") }
    
    /// Emitted when editor is about to close the active script. Argument is a ``Script`` that is going to be closed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.scriptClose.connect { script in
    ///    print ("caught signal")
    /// }
    /// ```
    public var scriptClose: SignalWithArguments<Script?> { SignalWithArguments<Script?> (target: self, signalName: "script_close") }
    
}

