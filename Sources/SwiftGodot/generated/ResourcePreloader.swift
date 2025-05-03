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


/// A node used to preload sub-resources inside a scene.
/// 
/// This node is used to preload sub-resources inside a scene, so when the scene is loaded, all the resources are ready to use and can be retrieved from the preloader. You can add the resources using the ResourcePreloader tab when the node is selected.
/// 
/// GDScript has a simplified ``@GDScript.preload`` built-in method which can be used in most situations, leaving the use of ``ResourcePreloader`` for more advanced scenarios.
/// 
open class ResourcePreloader: Node {
    private static var className = StringName("ResourcePreloader")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /* Methods */
    fileprivate static let method_add_resource: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_resource")
        return withUnsafePointer(to: &ResourcePreloader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1168801743)!
            }
            
        }
        
    }()
    
    /// Adds a resource to the preloader with the given `name`. If a resource with the given `name` already exists, the new resource will be renamed to "`name` N" where N is an incrementing number starting from 2.
    public final func addResource(name: StringName, resource: Resource?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: resource?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ResourcePreloader.method_add_resource, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_resource: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_resource")
        return withUnsafePointer(to: &ResourcePreloader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    /// Removes the resource associated to `name` from the preloader.
    public final func removeResource(name: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ResourcePreloader.method_remove_resource, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_rename_resource: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("rename_resource")
        return withUnsafePointer(to: &ResourcePreloader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3740211285)!
            }
            
        }
        
    }()
    
    /// Renames a resource inside the preloader from `name` to `newname`.
    public final func renameResource(name: StringName, newname: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: newname.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ResourcePreloader.method_rename_resource, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_has_resource: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_resource")
        return withUnsafePointer(to: &ResourcePreloader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2619796661)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the preloader contains a resource associated to `name`.
    public final func hasResource(name: StringName) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ResourcePreloader.method_has_resource, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_resource: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_resource")
        return withUnsafePointer(to: &ResourcePreloader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3742749261)!
            }
            
        }
        
    }()
    
    /// Returns the resource associated to `name`.
    public final func getResource(name: StringName) -> Resource? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ResourcePreloader.method_get_resource, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_resource_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_resource_list")
        return withUnsafePointer(to: &ResourcePreloader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns the list of resources inside the preloader.
    public final func getResourceList() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(ResourcePreloader.method_get_resource_list, handle, nil, &_result.content)
        return _result
    }
    
}

