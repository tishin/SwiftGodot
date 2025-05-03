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


/// Library of meshes.
/// 
/// A library of meshes. Contains a list of ``Mesh`` resources, each with a name and ID. Each item can also include collision and navigation shapes. This resource is used in ``GridMap``.
open class MeshLibrary: Resource {
    private static var className = StringName("MeshLibrary")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_create_item: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_item")
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
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshLibrary.method_create_item, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_item_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_name")
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
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            let name = GString(name)
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MeshLibrary.method_set_item_name, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_item_mesh: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_mesh")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 969122797)!
            }
            
        }
        
    }()
    
    /// Sets the item's mesh.
    public final func setItemMesh(id: Int32, mesh: Mesh?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: mesh?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MeshLibrary.method_set_item_mesh, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_item_mesh_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_mesh_transform")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3616898986)!
            }
            
        }
        
    }()
    
    /// Sets the transform to apply to the item's mesh.
    public final func setItemMeshTransform(id: Int32, meshTransform: Transform3D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: meshTransform) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MeshLibrary.method_set_item_mesh_transform, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_item_mesh_cast_shadow: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_mesh_cast_shadow")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3923400443)!
            }
            
        }
        
    }()
    
    /// Sets the item's shadow casting mode. See ``RenderingServer.ShadowCastingSetting`` for possible values.
    public final func setItemMeshCastShadow(id: Int32, shadowCastingSetting: RenderingServer.ShadowCastingSetting) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: shadowCastingSetting.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MeshLibrary.method_set_item_mesh_cast_shadow, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_item_navigation_mesh: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_navigation_mesh")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3483353960)!
            }
            
        }
        
    }()
    
    /// Sets the item's navigation mesh.
    public final func setItemNavigationMesh(id: Int32, navigationMesh: NavigationMesh?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: navigationMesh?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MeshLibrary.method_set_item_navigation_mesh, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_item_navigation_mesh_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_navigation_mesh_transform")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3616898986)!
            }
            
        }
        
    }()
    
    /// Sets the transform to apply to the item's navigation mesh.
    public final func setItemNavigationMeshTransform(id: Int32, navigationMesh: Transform3D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: navigationMesh) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MeshLibrary.method_set_item_navigation_mesh_transform, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_item_navigation_layers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_navigation_layers")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Sets the item's navigation layers bitmask.
    public final func setItemNavigationLayers(id: Int32, navigationLayers: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: navigationLayers) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MeshLibrary.method_set_item_navigation_layers, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_item_shapes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_shapes")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 537221740)!
            }
            
        }
        
    }()
    
    /// Sets an item's collision shapes.
    /// 
    /// The array should consist of ``Shape3D`` objects, each followed by a ``Transform3D`` that will be applied to it. For shapes that should not have a transform, use ``Transform3D/identity``.
    /// 
    public final func setItemShapes(id: Int32, shapes: VariantArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: shapes.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MeshLibrary.method_set_item_shapes, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_item_preview: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_preview")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 666127730)!
            }
            
        }
        
    }()
    
    /// Sets a texture to use as the item's preview icon in the editor.
    public final func setItemPreview(id: Int32, texture: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: texture?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MeshLibrary.method_set_item_preview, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_item_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_item_name")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the item's name.
    public final func getItemName(id: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshLibrary.method_get_item_name, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_item_mesh: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_item_mesh")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1576363275)!
            }
            
        }
        
    }()
    
    /// Returns the item's mesh.
    public final func getItemMesh(id: Int32) -> Mesh? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshLibrary.method_get_item_mesh, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_item_mesh_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_item_mesh_transform")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1965739696)!
            }
            
        }
        
    }()
    
    /// Returns the transform applied to the item's mesh.
    public final func getItemMeshTransform(id: Int32) -> Transform3D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform3D = Transform3D ()
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshLibrary.method_get_item_mesh_transform, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_item_mesh_cast_shadow: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_item_mesh_cast_shadow")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1841766007)!
            }
            
        }
        
    }()
    
    /// Returns the item's shadow casting mode. See ``RenderingServer.ShadowCastingSetting`` for possible values.
    public final func getItemMeshCastShadow(id: Int32) -> RenderingServer.ShadowCastingSetting {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshLibrary.method_get_item_mesh_cast_shadow, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return RenderingServer.ShadowCastingSetting (rawValue: _result)!
    }
    
    fileprivate static let method_get_item_navigation_mesh: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_item_navigation_mesh")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2729647406)!
            }
            
        }
        
    }()
    
    /// Returns the item's navigation mesh.
    public final func getItemNavigationMesh(id: Int32) -> NavigationMesh? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshLibrary.method_get_item_navigation_mesh, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_item_navigation_mesh_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_item_navigation_mesh_transform")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1965739696)!
            }
            
        }
        
    }()
    
    /// Returns the transform applied to the item's navigation mesh.
    public final func getItemNavigationMeshTransform(id: Int32) -> Transform3D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform3D = Transform3D ()
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshLibrary.method_get_item_navigation_mesh_transform, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_item_navigation_layers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_item_navigation_layers")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the item's navigation layers bitmask.
    public final func getItemNavigationLayers(id: Int32) -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshLibrary.method_get_item_navigation_layers, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_item_shapes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_item_shapes")
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
    public final func getItemShapes(id: Int32) -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshLibrary.method_get_item_shapes, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_item_preview: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_item_preview")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3536238170)!
            }
            
        }
        
    }()
    
    /// When running in the editor, returns a generated item preview (a 3D rendering in isometric perspective). When used in a running project, returns the manually-defined item preview which can be set using ``setItemPreview(id:texture:)``. Returns an empty ``Texture2D`` if no preview was manually set in a running project.
    public final func getItemPreview(id: Int32) -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshLibrary.method_get_item_preview, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_remove_item: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_item")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes the item.
    public final func removeItem(id: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshLibrary.method_remove_item, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_find_item_by_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("find_item_by_name")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1321353865)!
            }
            
        }
        
    }()
    
    /// Returns the first item with the given name, or `-1` if no item is found.
    public final func findItemByName(_ name: String) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshLibrary.method_find_item_by_name, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_clear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears the library.
    public final func clear() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(MeshLibrary.method_clear, handle, nil, nil)
        
    }
    
    fileprivate static let method_get_item_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_item_list")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1930428628)!
            }
            
        }
        
    }()
    
    /// Returns the list of item IDs in use.
    public final func getItemList() -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall(MeshLibrary.method_get_item_list, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_last_unused_item_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_last_unused_item_id")
        return withUnsafePointer(to: &MeshLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Gets an unused ID for a new item.
    public final func getLastUnusedItemId() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(MeshLibrary.method_get_last_unused_item_id, handle, nil, &_result)
        return _result
    }
    
}

