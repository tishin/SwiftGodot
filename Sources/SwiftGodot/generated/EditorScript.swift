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


/// Base script that can be used to add extension functions to the editor.
/// 
/// Scripts extending this class and implementing its ``_run()`` method can be executed from the Script Editor's **File > Run** menu option (or by pressing [kbd]Ctrl + Shift + X[/kbd]) while the editor is running. This is useful for adding custom in-editor functionality to Godot. For more complex additions, consider using ``EditorPlugin``s instead.
/// 
/// > Note: Extending scripts need to have `tool` mode enabled.
/// 
/// **Example:** Running the following script prints "Hello from the Godot Editor!":
/// 
/// > Note: The script is run in the Editor context, which means the output is visible in the console window started with the Editor (stdout) instead of the usual Godot **Output** dock.
/// 
/// > Note: EditorScript is ``RefCounted``, meaning it is destroyed when nothing references it. This can cause errors during asynchronous operations if there are no references to the script.
/// 
open class EditorScript: RefCounted {
    private static var className = StringName("EditorScript")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__run: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_run")
        return withUnsafePointer(to: &EditorScript.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// This method is executed by the Editor when **File > Run** is used.
    @_documentation(visibility: public)
    open func _run() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(EditorScript.method__run, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_add_root_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_root_node")
        return withUnsafePointer(to: &EditorScript.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1078189570)!
            }
            
        }
        
    }()
    
    /// Makes `node` root of the currently opened scene. Only works if the scene is empty. If the `node` is a scene instance, an inheriting scene will be created.
    public final func addRootNode(_ node: Node?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: node?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorScript.method_add_root_node, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_scene: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_scene")
        return withUnsafePointer(to: &EditorScript.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3160264692)!
            }
            
        }
        
    }()
    
    /// Returns the edited (current) scene's root ``Node``. Equivalent of ``EditorInterface/getEditedSceneRoot()``.
    public final func getScene() -> Node? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(EditorScript.method_get_scene, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_editor_interface: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_editor_interface")
        return withUnsafePointer(to: &EditorScript.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1976662476)!
            }
            
        }
        
    }()
    
    /// Returns the ``EditorInterface`` singleton instance.
    public final func getEditorInterface() -> EditorInterface? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(EditorScript.method_get_editor_interface, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_run":
                return _EditorScript_proxy_run
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _EditorScript_proxy_run (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorScript else { return }
    swiftObject._run ()
}

