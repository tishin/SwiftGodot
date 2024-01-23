// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Post-processes scenes after import.
/// 
/// Imported scenes can be automatically modified right after import by setting their **Custom Script** Import property to a `tool` script that inherits from this class.
/// 
/// The ``_postImport(scene:)`` callback receives the imported scene's root node and returns the modified version of the scene. Usage example:
/// 
open class EditorScenePostImport: RefCounted {
    override open class var godotClassName: StringName { "EditorScenePostImport" }
    /* Methods */
    /// Called after the scene was imported. This method must return the modified version of the scene.
    @_documentation(visibility: public)
    open func _postImport (scene: Node?)-> Object? {
        return Object ()
    }
    
    fileprivate static var method_get_source_file: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_source_file")
        return withUnsafePointer (to: &EditorScenePostImport.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the source file path which got imported (e.g. `res://scene.dae`).
    public final func getSourceFile ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (EditorScenePostImport.method_get_source_file, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_post_import":
                return _EditorScenePostImport_proxy_post_import
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _EditorScenePostImport_proxy_post_import (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorScenePostImport>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    
    let ret = swiftObject._postImport (scene: lookupLiveObject (handleAddress: resolved_0) as? Node ?? Node (nativeHandle: resolved_0))
    retPtr!.storeBytes (of: ret?.handle, as: UnsafeRawPointer?.self) // Object
}

