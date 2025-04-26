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


/// Post-processes scenes after import.
/// 
/// Imported scenes can be automatically modified right after import by setting their **Custom Script** Import property to a `tool` script that inherits from this class.
/// 
/// The ``_postImport(scene:)`` callback receives the imported scene's root node and returns the modified version of the scene:
/// 
open class EditorScenePostImport: RefCounted {
    private static var className = StringName("EditorScenePostImport")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__post_import: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_post_import")
        return withUnsafePointer(to: &EditorScenePostImport.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 134930648)!
            }
            
        }
        
    }()
    
    /// Called after the scene was imported. This method must return the modified version of the scene.
    @_documentation(visibility: public)
    open func _postImport(scene: Node?) -> Object? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: scene?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorScenePostImport.method__post_import, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_source_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_source_file")
        return withUnsafePointer(to: &EditorScenePostImport.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the source file path which got imported (e.g. `res://scene.dae`).
    public final func getSourceFile() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorScenePostImport.method_get_source_file, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
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
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorScenePostImport else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = swiftObject._postImport (scene: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? Node)
    retPtr!.storeBytes (of: ret?.handle, as: UnsafeRawPointer?.self) // Object
}

