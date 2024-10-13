// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Library of meshes.
/// 
/// A library of meshes. Contains a list of ``Mesh`` resources, each with a name and ID. Each item can also include collision and navigation shapes. This resource is used in ``GridMap``.
open class MeshLibrary: Resource {
    override open class var godotClassName: StringName { "MeshLibrary" }
    /* Methods */
    fileprivate static var method_create_item: GDExtensionMethodBindPtr = {
        let methodName = StringName("create_item")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Creates a new item in the library with the given ID.
    /// 
    /// You can get an unused ID from ``getLastUnusedItemId()``.
    /// 
    public final func createItem(id: Int32) {
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshLibrary.method_create_item, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_item_name: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_item_name")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Sets the item's name.
    /// 
    /// This name is shown in the editor. It can also be used to look up the item later using ``findItemByName(_:)``.
    /// 
    public final func setItemName(id: Int32, name: String) {
        withUnsafePointer(to: id) { pArg0 in
            let name = GString(name)
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MeshLibrary.method_set_item_name, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_item_mesh: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_item_mesh")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 969122797)!
            }
            
        }
        
    }()
    
    /// Sets the item's mesh.
    public final func setItemMesh(id: Int32, mesh: Mesh?) {
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: mesh?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MeshLibrary.method_set_item_mesh, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_item_mesh_transform: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_item_mesh_transform")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3616898986)!
            }
            
        }
        
    }()
    
    /// Sets the transform to apply to the item's mesh.
    public final func setItemMeshTransform(id: Int32, meshTransform: Transform3D) {
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: meshTransform) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MeshLibrary.method_set_item_mesh_transform, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_item_navigation_mesh: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_item_navigation_mesh")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3483353960)!
            }
            
        }
        
    }()
    
    /// Sets the item's navigation mesh.
    public final func setItemNavigationMesh(id: Int32, navigationMesh: NavigationMesh?) {
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: navigationMesh?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MeshLibrary.method_set_item_navigation_mesh, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_item_navigation_mesh_transform: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_item_navigation_mesh_transform")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3616898986)!
            }
            
        }
        
    }()
    
    /// Sets the transform to apply to the item's navigation mesh.
    public final func setItemNavigationMeshTransform(id: Int32, navigationMesh: Transform3D) {
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: navigationMesh) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MeshLibrary.method_set_item_navigation_mesh_transform, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_item_navigation_layers: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_item_navigation_layers")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Sets the item's navigation layers bitmask.
    public final func setItemNavigationLayers(id: Int32, navigationLayers: UInt32) {
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: navigationLayers) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MeshLibrary.method_set_item_navigation_layers, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_item_shapes: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_item_shapes")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 537221740)!
            }
            
        }
        
    }()
    
    /// Sets an item's collision shapes.
    /// 
    /// The array should consist of ``Shape3D`` objects, each followed by a ``Transform3D`` that will be applied to it. For shapes that should not have a transform, use ``Transform3D.IDENTITY``.
    /// 
    public final func setItemShapes(id: Int32, shapes: GArray) {
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: shapes.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MeshLibrary.method_set_item_shapes, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_item_preview: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_item_preview")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 666127730)!
            }
            
        }
        
    }()
    
    /// Sets a texture to use as the item's preview icon in the editor.
    public final func setItemPreview(id: Int32, texture: Texture2D?) {
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: texture?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MeshLibrary.method_set_item_preview, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_item_name: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_item_name")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the item's name.
    public final func getItemName(id: Int32) -> String {
        let _result = GString ()
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshLibrary.method_get_item_name, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static var method_get_item_mesh: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_item_mesh")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1576363275)!
            }
            
        }
        
    }()
    
    /// Returns the item's mesh.
    public final func getItemMesh(id: Int32) -> Mesh? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshLibrary.method_get_item_mesh, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_get_item_mesh_transform: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_item_mesh_transform")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1965739696)!
            }
            
        }
        
    }()
    
    /// Returns the transform applied to the item's mesh.
    public final func getItemMeshTransform(id: Int32) -> Transform3D {
        var _result: Transform3D = Transform3D ()
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshLibrary.method_get_item_mesh_transform, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_item_navigation_mesh: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_item_navigation_mesh")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2729647406)!
            }
            
        }
        
    }()
    
    /// Returns the item's navigation mesh.
    public final func getItemNavigationMesh(id: Int32) -> NavigationMesh? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshLibrary.method_get_item_navigation_mesh, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_get_item_navigation_mesh_transform: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_item_navigation_mesh_transform")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1965739696)!
            }
            
        }
        
    }()
    
    /// Returns the transform applied to the item's navigation mesh.
    public final func getItemNavigationMeshTransform(id: Int32) -> Transform3D {
        var _result: Transform3D = Transform3D ()
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshLibrary.method_get_item_navigation_mesh_transform, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_item_navigation_layers: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_item_navigation_layers")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the item's navigation layers bitmask.
    public final func getItemNavigationLayers(id: Int32) -> UInt32 {
        var _result: UInt32 = 0
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshLibrary.method_get_item_navigation_layers, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_item_shapes: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_item_shapes")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 663333327)!
            }
            
        }
        
    }()
    
    /// Returns an item's collision shapes.
    /// 
    /// The array consists of each ``Shape3D`` followed by its ``Transform3D``.
    /// 
    public final func getItemShapes(id: Int32) -> GArray {
        let _result: GArray = GArray ()
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshLibrary.method_get_item_shapes, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_item_preview: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_item_preview")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3536238170)!
            }
            
        }
        
    }()
    
    /// When running in the editor, returns a generated item preview (a 3D rendering in isometric perspective). When used in a running project, returns the manually-defined item preview which can be set using ``setItemPreview(id:texture:)``. Returns an empty ``Texture2D`` if no preview was manually set in a running project.
    public final func getItemPreview(id: Int32) -> Texture2D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshLibrary.method_get_item_preview, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_remove_item: GDExtensionMethodBindPtr = {
        let methodName = StringName("remove_item")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes the item.
    public final func removeItem(id: Int32) {
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshLibrary.method_remove_item, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_find_item_by_name: GDExtensionMethodBindPtr = {
        let methodName = StringName("find_item_by_name")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1321353865)!
            }
            
        }
        
    }()
    
    /// Returns the first item with the given name, or `-1` if no item is found.
    public final func findItemByName(_ name: String) -> Int32 {
        var _result: Int32 = 0
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshLibrary.method_find_item_by_name, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_clear: GDExtensionMethodBindPtr = {
        let methodName = StringName("clear")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears the library.
    public final func clear() {
        gi.object_method_bind_ptrcall(MeshLibrary.method_clear, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static var method_get_item_list: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_item_list")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1930428628)!
            }
            
        }
        
    }()
    
    /// Returns the list of item IDs in use.
    public final func getItemList() -> PackedInt32Array {
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall(MeshLibrary.method_get_item_list, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_last_unused_item_id: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_last_unused_item_id")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Gets an unused ID for a new item.
    public final func getLastUnusedItemId() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(MeshLibrary.method_get_last_unused_item_id, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

