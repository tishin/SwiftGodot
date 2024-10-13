// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Placeholder for the root ``Node`` of a ``PackedScene``.
/// 
/// Turning on the option **Load As Placeholder** for an instantiated scene in the editor causes it to be replaced by an ``InstancePlaceholder`` when running the game, this will not replace the node in the editor. This makes it possible to delay actually loading the scene until calling ``createInstance(replace:customScene:)``. This is useful to avoid loading large scenes all at once by loading parts of it selectively.
/// 
/// The ``InstancePlaceholder`` does not have a transform. This causes any child nodes to be positioned relatively to the ``Viewport`` from point (0,0), rather than their parent as displayed in the editor. Replacing the placeholder with a scene with a transform will transform children relatively to their parent again.
/// 
open class InstancePlaceholder: Node {
    override open class var godotClassName: StringName { "InstancePlaceholder" }
    /* Methods */
    fileprivate static var method_get_stored_values: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_stored_values")
        return withUnsafePointer(to: &InstancePlaceholder.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2230153369)!
            }
            
        }
        
    }()
    
    /// Returns the list of properties that will be applied to the node when ``createInstance(replace:customScene:)`` is called.
    /// 
    /// If `withOrder` is `true`, a key named `.order` (note the leading period) is added to the dictionary. This `.order` key is an ``GArray`` of ``String`` property names specifying the order in which properties will be applied (with index 0 being the first).
    /// 
    public final func getStoredValues(withOrder: Bool = false) -> GDictionary {
        let _result: GDictionary = GDictionary ()
        withUnsafePointer(to: withOrder) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InstancePlaceholder.method_get_stored_values, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_create_instance: GDExtensionMethodBindPtr = {
        let methodName = StringName("create_instance")
        return withUnsafePointer(to: &InstancePlaceholder.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3794612210)!
            }
            
        }
        
    }()
    
    /// Call this method to actually load in the node. The created node will be placed as a sibling _above_ the ``InstancePlaceholder`` in the scene tree. The ``Node``'s reference is also returned for convenience.
    /// 
    /// > Note: ``createInstance(replace:customScene:)`` is not thread-safe. Use ``Object/callDeferred(method:)`` if calling from a thread.
    /// 
    public final func createInstance(replace: Bool = false, customScene: PackedScene? = nil) -> Node? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: replace) { pArg0 in
            withUnsafePointer(to: customScene?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(InstancePlaceholder.method_create_instance, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_get_instance_path: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_instance_path")
        return withUnsafePointer(to: &InstancePlaceholder.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Gets the path to the ``PackedScene`` resource file that is loaded by default when calling ``createInstance(replace:customScene:)``. Not thread-safe. Use ``Object/callDeferred(method:)`` if calling from a thread.
    public final func getInstancePath() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(InstancePlaceholder.method_get_instance_path, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
}

