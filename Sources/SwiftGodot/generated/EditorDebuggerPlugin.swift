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


/// A base class to implement debugger plugins.
/// 
/// ``EditorDebuggerPlugin`` provides functions related to the editor side of the debugger.
/// 
/// To interact with the debugger, an instance of this class must be added to the editor via ``EditorPlugin/addDebuggerPlugin(script:)``.
/// 
/// Once added, the ``_setupSession(sessionId:)`` callback will be called for every ``EditorDebuggerSession`` available to the plugin, and when new ones are created (the sessions may be inactive during this stage).
/// 
/// You can retrieve the available ``EditorDebuggerSession``s via ``getSessions()`` or get a specific one via ``getSession(id:)``.
/// 
/// To connect on the running game side, use the ``EngineDebugger`` singleton:
/// 
/// > Note: While the game is running, ``@GlobalScope.print`` and similar functions _called in the editor_ do not print anything, the Output Log prints only game messages.
/// 
open class EditorDebuggerPlugin: RefCounted {
    private static var className = StringName("EditorDebuggerPlugin")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__setup_session: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_setup_session")
        return withUnsafePointer(to: &EditorDebuggerPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Override this method to be notified whenever a new ``EditorDebuggerSession`` is created. Note that the session may be inactive during this stage.
    @_documentation(visibility: public)
    open func _setupSession(sessionId: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: sessionId) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorDebuggerPlugin.method__setup_session, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__has_capture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_has_capture")
        return withUnsafePointer(to: &EditorDebuggerPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Override this method to enable receiving messages from the debugger. If `capture` is "my_message" then messages starting with "my_message:" will be passed to the ``_capture(message:data:sessionId:)`` method.
    @_documentation(visibility: public)
    open func _hasCapture(_ capture: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let capture = GString(capture)
        withUnsafePointer(to: capture.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorDebuggerPlugin.method__has_capture, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__capture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_capture")
        return withUnsafePointer(to: &EditorDebuggerPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2607901833)!
            }
            
        }
        
    }()
    
    /// Override this method to process incoming messages. The `sessionId` is the ID of the ``EditorDebuggerSession`` that received the `message`. Use ``getSession(id:)`` to retrieve the session. This method should return `true` if the message is recognized.
    @_documentation(visibility: public)
    open func _capture(message: String, data: VariantArray, sessionId: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let message = GString(message)
        withUnsafePointer(to: message.content) { pArg0 in
            withUnsafePointer(to: data.content) { pArg1 in
                withUnsafePointer(to: sessionId) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorDebuggerPlugin.method__capture, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__goto_script_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_goto_script_line")
        return withUnsafePointer(to: &EditorDebuggerPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1208513123)!
            }
            
        }
        
    }()
    
    /// Override this method to be notified when a breakpoint line has been clicked in the debugger breakpoint panel.
    @_documentation(visibility: public)
    open func _gotoScriptLine(script: Script?, line: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: script?.handle) { pArg0 in
            withUnsafePointer(to: line) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorDebuggerPlugin.method__goto_script_line, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__breakpoints_cleared_in_tree: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_breakpoints_cleared_in_tree")
        return withUnsafePointer(to: &EditorDebuggerPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Override this method to be notified when all breakpoints are cleared in the editor.
    @_documentation(visibility: public)
    open func _breakpointsClearedInTree() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(EditorDebuggerPlugin.method__breakpoints_cleared_in_tree, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__breakpoint_set_in_tree: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_breakpoint_set_in_tree")
        return withUnsafePointer(to: &EditorDebuggerPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2338735218)!
            }
            
        }
        
    }()
    
    /// Override this method to be notified when a breakpoint is set in the editor.
    @_documentation(visibility: public)
    open func _breakpointSetInTree(script: Script?, line: Int32, enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: script?.handle) { pArg0 in
            withUnsafePointer(to: line) { pArg1 in
                withUnsafePointer(to: enabled) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorDebuggerPlugin.method__breakpoint_set_in_tree, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_session: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_session")
        return withUnsafePointer(to: &EditorDebuggerPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3061968499)!
            }
            
        }
        
    }()
    
    /// Returns the ``EditorDebuggerSession`` with the given `id`.
    public final func getSession(id: Int32) -> EditorDebuggerSession? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorDebuggerPlugin.method_get_session, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_sessions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sessions")
        return withUnsafePointer(to: &EditorDebuggerPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Returns an array of ``EditorDebuggerSession`` currently available to this debugger plugin.
    /// 
    /// > Note: Sessions in the array may be inactive, check their state via ``EditorDebuggerSession/isActive()``.
    /// 
    public final func getSessions() -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        gi.object_method_bind_ptrcall(EditorDebuggerPlugin.method_get_sessions, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_breakpoint_set_in_tree":
                return _EditorDebuggerPlugin_proxy_breakpoint_set_in_tree
            case "_breakpoints_cleared_in_tree":
                return _EditorDebuggerPlugin_proxy_breakpoints_cleared_in_tree
            case "_capture":
                return _EditorDebuggerPlugin_proxy_capture
            case "_goto_script_line":
                return _EditorDebuggerPlugin_proxy_goto_script_line
            case "_has_capture":
                return _EditorDebuggerPlugin_proxy_has_capture
            case "_setup_session":
                return _EditorDebuggerPlugin_proxy_setup_session
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _EditorDebuggerPlugin_proxy_breakpoint_set_in_tree (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorDebuggerPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    swiftObject._breakpointSetInTree (script: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? Script, line: args [1]!.assumingMemoryBound (to: Int32.self).pointee, enabled: args [2]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _EditorDebuggerPlugin_proxy_breakpoints_cleared_in_tree (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorDebuggerPlugin else { return }
    swiftObject._breakpointsClearedInTree ()
}

func _EditorDebuggerPlugin_proxy_capture (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorDebuggerPlugin else { return }
    let ret = swiftObject._capture (message: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", data: VariantArray (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee), sessionId: args [2]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorDebuggerPlugin_proxy_goto_script_line (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorDebuggerPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    swiftObject._gotoScriptLine (script: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? Script, line: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
}

func _EditorDebuggerPlugin_proxy_has_capture (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorDebuggerPlugin else { return }
    let ret = swiftObject._hasCapture (GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorDebuggerPlugin_proxy_setup_session (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorDebuggerPlugin else { return }
    swiftObject._setupSession (sessionId: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
}

