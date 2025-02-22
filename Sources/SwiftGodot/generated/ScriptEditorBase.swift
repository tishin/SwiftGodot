// This file is auto-generated, do not edit.
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
#if canImport(Darwin)
import Darwin
#elseif os(Windows)
import ucrt
import WinSDK
#elseif canImport(Glibc)
import Glibc
#elseif canImport(Musl)
import Musl
#else
#error("Unable to identify your C library.")
#endif
#endif


/// Base editor for editing scripts in the ``ScriptEditor``.
/// 
/// Base editor for editing scripts in the ``ScriptEditor``. This does not include documentation items.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``nameChanged``
/// - ``editedScriptChanged``
/// - ``requestHelp``
/// - ``requestOpenScriptAtLine``
/// - ``requestSaveHistory``
/// - ``requestSavePreviousState``
/// - ``goToHelp``
/// - ``searchInFilesRequested``
/// - ``replaceInFilesRequested``
/// - ``goToMethod``
open class ScriptEditorBase: VBoxContainer {
    override open class var godotClassName: StringName { "ScriptEditorBase" }
    /* Methods */
    fileprivate static var method_get_base_editor: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_base_editor")
        return withUnsafePointer(to: &ScriptEditorBase.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2783021301)!
            }
            
        }
        
    }()
    
    /// Returns the underlying ``Control`` used for editing scripts. For text scripts, this is a ``CodeEdit``.
    public final func getBaseEditor() -> Control? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(ScriptEditorBase.method_get_base_editor, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_add_syntax_highlighter: GDExtensionMethodBindPtr = {
        let methodName = StringName("add_syntax_highlighter")
        return withUnsafePointer(to: &ScriptEditorBase.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1092774468)!
            }
            
        }
        
    }()
    
    /// Adds a ``EditorSyntaxHighlighter`` to the open script.
    public final func addSyntaxHighlighter(_ highlighter: EditorSyntaxHighlighter?) {
        withUnsafePointer(to: highlighter?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptEditorBase.method_add_syntax_highlighter, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    // Signals 
    /// Emitted after script validation or when the edited resource has changed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.nameChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var nameChanged: SimpleSignal { SimpleSignal (target: self, signalName: "name_changed") }
    
    /// Emitted after script validation.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.editedScriptChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var editedScriptChanged: SimpleSignal { SimpleSignal (target: self, signalName: "edited_script_changed") }
    
    /// Emitted when the user requests contextual help.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.requestHelp.connect { topic in
    ///    print ("caught signal")
    /// }
    /// ```
    public var requestHelp: SignalWithArguments<String> { SignalWithArguments<String> (target: self, signalName: "request_help") }
    
    /// Emitted when the user requests to view a specific line of a script, similar to [signal go_to_method].
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.requestOpenScriptAtLine.connect { script, line in
    ///    print ("caught signal")
    /// }
    /// ```
    public var requestOpenScriptAtLine: SignalWithArguments<Object?, Int64> { SignalWithArguments<Object?, Int64> (target: self, signalName: "request_open_script_at_line") }
    
    /// Emitted when the user contextual goto and the item is in the same script.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.requestSaveHistory.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var requestSaveHistory: SimpleSignal { SimpleSignal (target: self, signalName: "request_save_history") }
    
    /// Emitted when the user changes current script or moves caret by 10 or more columns within the same script.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.requestSavePreviousState.connect { line in
    ///    print ("caught signal")
    /// }
    /// ```
    public var requestSavePreviousState: SignalWithArguments<Int64> { SignalWithArguments<Int64> (target: self, signalName: "request_save_previous_state") }
    
    /// Emitted when the user requests a specific documentation page.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.goToHelp.connect { what in
    ///    print ("caught signal")
    /// }
    /// ```
    public var goToHelp: SignalWithArguments<String> { SignalWithArguments<String> (target: self, signalName: "go_to_help") }
    
    /// Emitted when the user request to search text in the file system.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.searchInFilesRequested.connect { text in
    ///    print ("caught signal")
    /// }
    /// ```
    public var searchInFilesRequested: SignalWithArguments<String> { SignalWithArguments<String> (target: self, signalName: "search_in_files_requested") }
    
    /// Emitted when the user request to find and replace text in the file system.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.replaceInFilesRequested.connect { text in
    ///    print ("caught signal")
    /// }
    /// ```
    public var replaceInFilesRequested: SignalWithArguments<String> { SignalWithArguments<String> (target: self, signalName: "replace_in_files_requested") }
    
    /// Emitted when the user requests to view a specific method of a script, similar to [signal request_open_script_at_line].
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.goToMethod.connect { script, method in
    ///    print ("caught signal")
    /// }
    /// ```
    public var goToMethod: SignalWithArguments<Object?, String> { SignalWithArguments<Object?, String> (target: self, signalName: "go_to_method") }
    
}

