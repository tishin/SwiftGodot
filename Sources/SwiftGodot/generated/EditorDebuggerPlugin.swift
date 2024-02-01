// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

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
open class EditorDebuggerPlugin: RefCounted {
    override open class var godotClassName: StringName { "EditorDebuggerPlugin" }
    /* Methods */
    /// Override this method to be notified whenever a new ``EditorDebuggerSession`` is created (the session may be inactive during this stage).
    @_documentation(visibility: public)
    open func _setupSession (sessionId: Int32) {
    }
    
    /// Override this method to enable receiving messages from the debugger. If `capture` is "my_message" then messages starting with "my_message:" will be passes to the ``_capture(message:data:sessionId:)`` method.
    @_documentation(visibility: public)
    open func _hasCapture (_ capture: String)-> Bool {
        return false
    }
    
    /// Override this method to process incoming messages. The `sessionId` is the ID of the ``EditorDebuggerSession`` that received the message (which you can retrieve via ``getSession(id:)``).
    @_documentation(visibility: public)
    open func _capture (message: String, data: GArray, sessionId: Int32)-> Bool {
        return false
    }
    
    fileprivate static var method_get_session: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_session")
        return withUnsafePointer (to: &EditorDebuggerPlugin.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3061968499)!
            }
            
        }
        
    }()
    
    /// Returns the ``EditorDebuggerSession`` with the given `id`.
    public final func getSession (id: Int32)-> EditorDebuggerSession? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if true
        
        var copy_id: Int = Int (id)
        
        gi.object_method_bind_ptrcall_v (EditorDebuggerPlugin.method_get_session, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_id)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        var copy_id: Int = Int (id)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_id) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (EditorDebuggerPlugin.method_get_session, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_get_sessions: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_sessions")
        return withUnsafePointer (to: &EditorDebuggerPlugin.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Returns an array of ``EditorDebuggerSession`` currently available to this debugger plugin.
    /// 
    /// > Note: Sessions in the array may be inactive, check their state via ``EditorDebuggerSession/isActive()``.
    /// 
    public final func getSessions ()-> GArray {
        let _result: GArray = GArray ()
        gi.object_method_bind_ptrcall (EditorDebuggerPlugin.method_get_sessions, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_capture":
                return _EditorDebuggerPlugin_proxy_capture
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
func _EditorDebuggerPlugin_proxy_capture (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorDebuggerPlugin>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._capture (message: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", data: GArray (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee), sessionId: args [2]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorDebuggerPlugin_proxy_has_capture (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorDebuggerPlugin>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._hasCapture (GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorDebuggerPlugin_proxy_setup_session (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorDebuggerPlugin>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._setupSession (sessionId: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
}
