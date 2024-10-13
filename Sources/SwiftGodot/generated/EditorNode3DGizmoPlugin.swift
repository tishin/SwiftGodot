// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A class used by the editor to define Node3D gizmo types.
/// 
/// ``EditorNode3DGizmoPlugin`` allows you to define a new type of Gizmo. There are two main ways to do so: extending ``EditorNode3DGizmoPlugin`` for the simpler gizmos, or creating a new ``EditorNode3DGizmo`` type. See the tutorial in the documentation for more info.
/// 
/// To use ``EditorNode3DGizmoPlugin``, register it using the ``EditorPlugin/addNode3dGizmoPlugin(_:)`` method first.
/// 
open class EditorNode3DGizmoPlugin: Resource {
    override open class var godotClassName: StringName { "EditorNode3DGizmoPlugin" }
    /* Methods */
    /// Override this method to define which Node3D nodes have a gizmo from this plugin. Whenever a ``Node3D`` node is added to a scene this method is called, if it returns `true` the node gets a generic ``EditorNode3DGizmo`` assigned and is added to this plugin's list of active gizmos.
    @_documentation(visibility: public)
    open func _hasGizmo(forNode3d: Node3D?) -> Bool {
        return false
    }
    
    /// Override this method to return a custom ``EditorNode3DGizmo`` for the spatial nodes of your choice, return `null` for the rest of nodes. See also ``_hasGizmo(forNode3d:)``.
    @_documentation(visibility: public)
    open func _createGizmo(forNode3d: Node3D?) -> EditorNode3DGizmo? {
        return EditorNode3DGizmo ()
    }
    
    /// Override this method to provide the name that will appear in the gizmo visibility menu.
    @_documentation(visibility: public)
    open func _getGizmoName() -> String {
        return String ()
    }
    
    /// Override this method to set the gizmo's priority. Gizmos with higher priority will have precedence when processing inputs like handles or subgizmos selection.
    /// 
    /// All built-in editor gizmos return a priority of `-1`. If not overridden, this method will return `0`, which means custom gizmos will automatically get higher priority than built-in gizmos.
    /// 
    @_documentation(visibility: public)
    open func _getPriority() -> Int32 {
        return 0
    }
    
    /// Override this method to define whether the gizmos handled by this plugin can be hidden or not. Returns `true` if not overridden.
    @_documentation(visibility: public)
    open func _canBeHidden() -> Bool {
        return false
    }
    
    /// Override this method to define whether Node3D with this gizmo should be selectable even when the gizmo is hidden.
    @_documentation(visibility: public)
    open func _isSelectableWhenHidden() -> Bool {
        return false
    }
    
    /// Override this method to add all the gizmo elements whenever a gizmo update is requested. It's common to call ``EditorNode3DGizmo/clear()`` at the beginning of this method and then add visual elements depending on the node's properties.
    @_documentation(visibility: public)
    open func _redraw(gizmo: EditorNode3DGizmo?) {
    }
    
    /// Override this method to provide gizmo's handle names. The `secondary` argument is `true` when the requested handle is secondary (see ``EditorNode3DGizmo/addHandles(_:material:ids:billboard:secondary:)`` for more information). Called for this plugin's active gizmos.
    @_documentation(visibility: public)
    open func _getHandleName(gizmo: EditorNode3DGizmo?, handleId: Int32, secondary: Bool) -> String {
        return String ()
    }
    
    /// Override this method to return `true` whenever to given handle should be highlighted in the editor. The `secondary` argument is `true` when the requested handle is secondary (see ``EditorNode3DGizmo/addHandles(_:material:ids:billboard:secondary:)`` for more information). Called for this plugin's active gizmos.
    @_documentation(visibility: public)
    open func _isHandleHighlighted(gizmo: EditorNode3DGizmo?, handleId: Int32, secondary: Bool) -> Bool {
        return false
    }
    
    /// Override this method to return the current value of a handle. This value will be requested at the start of an edit and used as the `restore` argument in ``_commitHandle(gizmo:handleId:secondary:restore:cancel:)``.
    /// 
    /// The `secondary` argument is `true` when the requested handle is secondary (see ``EditorNode3DGizmo/addHandles(_:material:ids:billboard:secondary:)`` for more information).
    /// 
    /// Called for this plugin's active gizmos.
    /// 
    @_documentation(visibility: public)
    open func _getHandleValue(gizmo: EditorNode3DGizmo?, handleId: Int32, secondary: Bool) -> Variant {
        return Variant ()
    }
    
    /// 
    @_documentation(visibility: public)
    open func _beginHandleAction(gizmo: EditorNode3DGizmo?, handleId: Int32, secondary: Bool) {
    }
    
    /// Override this method to update the node's properties when the user drags a gizmo handle (previously added with ``EditorNode3DGizmo/addHandles(_:material:ids:billboard:secondary:)``). The provided `screenPos` is the mouse position in screen coordinates and the `camera` can be used to convert it to raycasts.
    /// 
    /// The `secondary` argument is `true` when the edited handle is secondary (see ``EditorNode3DGizmo/addHandles(_:material:ids:billboard:secondary:)`` for more information).
    /// 
    /// Called for this plugin's active gizmos.
    /// 
    @_documentation(visibility: public)
    open func _setHandle(gizmo: EditorNode3DGizmo?, handleId: Int32, secondary: Bool, camera: Camera3D?, screenPos: Vector2) {
    }
    
    /// Override this method to commit a handle being edited (handles must have been previously added by ``EditorNode3DGizmo/addHandles(_:material:ids:billboard:secondary:)`` during ``_redraw(gizmo:)``). This usually means creating an ``UndoRedo`` action for the change, using the current handle value as "do" and the `restore` argument as "undo".
    /// 
    /// If the `cancel` argument is `true`, the `restore` value should be directly set, without any ``UndoRedo`` action.
    /// 
    /// The `secondary` argument is `true` when the committed handle is secondary (see ``EditorNode3DGizmo/addHandles(_:material:ids:billboard:secondary:)`` for more information).
    /// 
    /// Called for this plugin's active gizmos.
    /// 
    @_documentation(visibility: public)
    open func _commitHandle(gizmo: EditorNode3DGizmo?, handleId: Int32, secondary: Bool, restore: Variant, cancel: Bool) {
    }
    
    /// Override this method to allow selecting subgizmos using mouse clicks. Given a `camera` and a `screenPos` in screen coordinates, this method should return which subgizmo should be selected. The returned value should be a unique subgizmo identifier, which can have any non-negative value and will be used in other virtual methods like ``_getSubgizmoTransform(gizmo:subgizmoId:)`` or ``_commitSubgizmos(gizmo:ids:restores:cancel:)``. Called for this plugin's active gizmos.
    @_documentation(visibility: public)
    open func _subgizmosIntersectRay(gizmo: EditorNode3DGizmo?, camera: Camera3D?, screenPos: Vector2) -> Int32 {
        return 0
    }
    
    /// Override this method to allow selecting subgizmos using mouse drag box selection. Given a `camera` and `frustumPlanes`, this method should return which subgizmos are contained within the frustums. The `frustumPlanes` argument consists of an array with all the ``Plane``s that make up the selection frustum. The returned value should contain a list of unique subgizmo identifiers, these identifiers can have any non-negative value and will be used in other virtual methods like ``_getSubgizmoTransform(gizmo:subgizmoId:)`` or ``_commitSubgizmos(gizmo:ids:restores:cancel:)``. Called for this plugin's active gizmos.
    @_documentation(visibility: public)
    open func _subgizmosIntersectFrustum(gizmo: EditorNode3DGizmo?, camera: Camera3D?, frustumPlanes: VariantCollection<Plane>) -> PackedInt32Array {
        return PackedInt32Array ()
    }
    
    /// Override this method to return the current transform of a subgizmo. As with all subgizmo methods, the transform should be in local space respect to the gizmo's Node3D. This transform will be requested at the start of an edit and used in the `restore` argument in ``_commitSubgizmos(gizmo:ids:restores:cancel:)``. Called for this plugin's active gizmos.
    @_documentation(visibility: public)
    open func _getSubgizmoTransform(gizmo: EditorNode3DGizmo?, subgizmoId: Int32) -> Transform3D {
        return Transform3D ()
    }
    
    /// Override this method to update the node properties during subgizmo editing (see ``_subgizmosIntersectRay(gizmo:camera:screenPos:)`` and ``_subgizmosIntersectFrustum(gizmo:camera:frustumPlanes:)``). The `transform` is given in the Node3D's local coordinate system. Called for this plugin's active gizmos.
    @_documentation(visibility: public)
    open func _setSubgizmoTransform(gizmo: EditorNode3DGizmo?, subgizmoId: Int32, transform: Transform3D) {
    }
    
    /// Override this method to commit a group of subgizmos being edited (see ``_subgizmosIntersectRay(gizmo:camera:screenPos:)`` and ``_subgizmosIntersectFrustum(gizmo:camera:frustumPlanes:)``). This usually means creating an ``UndoRedo`` action for the change, using the current transforms as "do" and the `restores` transforms as "undo".
    /// 
    /// If the `cancel` argument is `true`, the `restores` transforms should be directly set, without any ``UndoRedo`` action. As with all subgizmo methods, transforms are given in local space respect to the gizmo's Node3D. Called for this plugin's active gizmos.
    /// 
    @_documentation(visibility: public)
    open func _commitSubgizmos(gizmo: EditorNode3DGizmo?, ids: PackedInt32Array, restores: VariantCollection<Transform3D>, cancel: Bool) {
    }
    
    fileprivate static var method_create_material: GDExtensionMethodBindPtr = {
        let methodName = StringName("create_material")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3486012546)!
            }
            
        }
        
    }()
    
    /// Creates an unshaded material with its variants (selected and/or editable) and adds them to the internal material list. They can then be accessed with ``getMaterial(name:gizmo:)`` and used in ``EditorNode3DGizmo/addMesh(_:material:transform:skeleton:)`` and ``EditorNode3DGizmo/addLines(_:material:billboard:modulate:)``. Should not be overridden.
    public final func createMaterial(name: String, color: Color, billboard: Bool = false, onTop: Bool = false, useVertexColor: Bool = false) {
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: color) { pArg1 in
                withUnsafePointer(to: billboard) { pArg2 in
                    withUnsafePointer(to: onTop) { pArg3 in
                        withUnsafePointer(to: useVertexColor) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(EditorNode3DGizmoPlugin.method_create_material, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_create_icon_material: GDExtensionMethodBindPtr = {
        let methodName = StringName("create_icon_material")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3804976916)!
            }
            
        }
        
    }()
    
    /// Creates an icon material with its variants (selected and/or editable) and adds them to the internal material list. They can then be accessed with ``getMaterial(name:gizmo:)`` and used in ``EditorNode3DGizmo/addUnscaledBillboard(material:defaultScale:modulate:)``. Should not be overridden.
    public final func createIconMaterial(name: String, texture: Texture2D?, onTop: Bool = false, color: Color = Color (r: 1, g: 1, b: 1, a: 1)) {
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: texture?.handle) { pArg1 in
                withUnsafePointer(to: onTop) { pArg2 in
                    withUnsafePointer(to: color) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(EditorNode3DGizmoPlugin.method_create_icon_material, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_create_handle_material: GDExtensionMethodBindPtr = {
        let methodName = StringName("create_handle_material")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2486475223)!
            }
            
        }
        
    }()
    
    /// Creates a handle material with its variants (selected and/or editable) and adds them to the internal material list. They can then be accessed with ``getMaterial(name:gizmo:)`` and used in ``EditorNode3DGizmo/addHandles(_:material:ids:billboard:secondary:)``. Should not be overridden.
    /// 
    /// You can optionally provide a texture to use instead of the default icon.
    /// 
    public final func createHandleMaterial(name: String, billboard: Bool = false, texture: Texture2D? = nil) {
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: billboard) { pArg1 in
                withUnsafePointer(to: texture?.handle) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorNode3DGizmoPlugin.method_create_handle_material, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_add_material: GDExtensionMethodBindPtr = {
        let methodName = StringName("add_material")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1374068695)!
            }
            
        }
        
    }()
    
    /// Adds a new material to the internal material list for the plugin. It can then be accessed with ``getMaterial(name:gizmo:)``. Should not be overridden.
    public final func addMaterial(name: String, material: StandardMaterial3D?) {
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: material?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorNode3DGizmoPlugin.method_add_material, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_material: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_material")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 974464017)!
            }
            
        }
        
    }()
    
    /// Gets material from the internal list of materials. If an ``EditorNode3DGizmo`` is provided, it will try to get the corresponding variant (selected and/or editable).
    public final func getMaterial(name: String, gizmo: EditorNode3DGizmo? = nil) -> StandardMaterial3D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: gizmo?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorNode3DGizmoPlugin.method_get_material, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_begin_handle_action":
                return _EditorNode3DGizmoPlugin_proxy_begin_handle_action
            case "_can_be_hidden":
                return _EditorNode3DGizmoPlugin_proxy_can_be_hidden
            case "_commit_handle":
                return _EditorNode3DGizmoPlugin_proxy_commit_handle
            case "_commit_subgizmos":
                return _EditorNode3DGizmoPlugin_proxy_commit_subgizmos
            case "_create_gizmo":
                return _EditorNode3DGizmoPlugin_proxy_create_gizmo
            case "_get_gizmo_name":
                return _EditorNode3DGizmoPlugin_proxy_get_gizmo_name
            case "_get_handle_name":
                return _EditorNode3DGizmoPlugin_proxy_get_handle_name
            case "_get_handle_value":
                return _EditorNode3DGizmoPlugin_proxy_get_handle_value
            case "_get_priority":
                return _EditorNode3DGizmoPlugin_proxy_get_priority
            case "_get_subgizmo_transform":
                return _EditorNode3DGizmoPlugin_proxy_get_subgizmo_transform
            case "_has_gizmo":
                return _EditorNode3DGizmoPlugin_proxy_has_gizmo
            case "_is_handle_highlighted":
                return _EditorNode3DGizmoPlugin_proxy_is_handle_highlighted
            case "_is_selectable_when_hidden":
                return _EditorNode3DGizmoPlugin_proxy_is_selectable_when_hidden
            case "_redraw":
                return _EditorNode3DGizmoPlugin_proxy_redraw
            case "_set_handle":
                return _EditorNode3DGizmoPlugin_proxy_set_handle
            case "_set_subgizmo_transform":
                return _EditorNode3DGizmoPlugin_proxy_set_subgizmo_transform
            case "_subgizmos_intersect_frustum":
                return _EditorNode3DGizmoPlugin_proxy_subgizmos_intersect_frustum
            case "_subgizmos_intersect_ray":
                return _EditorNode3DGizmoPlugin_proxy_subgizmos_intersect_ray
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _EditorNode3DGizmoPlugin_proxy_begin_handle_action (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    
    swiftObject._beginHandleAction (gizmo: lookupLiveObject (handleAddress: resolved_0) as? EditorNode3DGizmo ?? EditorNode3DGizmo (nativeHandle: resolved_0), handleId: args [1]!.assumingMemoryBound (to: Int32.self).pointee, secondary: args [2]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _EditorNode3DGizmoPlugin_proxy_can_be_hidden (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._canBeHidden ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorNode3DGizmoPlugin_proxy_commit_handle (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    
    swiftObject._commitHandle (gizmo: lookupLiveObject (handleAddress: resolved_0) as? EditorNode3DGizmo ?? EditorNode3DGizmo (nativeHandle: resolved_0), handleId: args [1]!.assumingMemoryBound (to: Int32.self).pointee, secondary: args [2]!.assumingMemoryBound (to: Bool.self).pointee, restore: args [3]!.assumingMemoryBound (to: Variant.self).pointee, cancel: args [4]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _EditorNode3DGizmoPlugin_proxy_commit_subgizmos (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    
    swiftObject._commitSubgizmos (gizmo: lookupLiveObject (handleAddress: resolved_0) as? EditorNode3DGizmo ?? EditorNode3DGizmo (nativeHandle: resolved_0), ids: PackedInt32Array (content: args [1]!.assumingMemoryBound (to: (Int64, Int64).self).pointee), restores: args [2]!.assumingMemoryBound (to: VariantCollection<Transform3D>.self).pointee, cancel: args [3]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _EditorNode3DGizmoPlugin_proxy_create_gizmo (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    
    let ret = swiftObject._createGizmo (forNode3d: lookupLiveObject (handleAddress: resolved_0) as? Node3D ?? Node3D (nativeHandle: resolved_0))
    retPtr!.storeBytes (of: ret?.handle, as: UnsafeRawPointer?.self) // EditorNode3DGizmo
}

func _EditorNode3DGizmoPlugin_proxy_get_gizmo_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instance).takeUnretainedValue()
    let ret = GString (swiftObject._getGizmoName ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorNode3DGizmoPlugin_proxy_get_handle_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    
    let ret = GString (swiftObject._getHandleName (gizmo: lookupLiveObject (handleAddress: resolved_0) as? EditorNode3DGizmo ?? EditorNode3DGizmo (nativeHandle: resolved_0), handleId: args [1]!.assumingMemoryBound (to: Int32.self).pointee, secondary: args [2]!.assumingMemoryBound (to: Bool.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorNode3DGizmoPlugin_proxy_get_handle_value (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    
    let ret = swiftObject._getHandleValue (gizmo: lookupLiveObject (handleAddress: resolved_0) as? EditorNode3DGizmo ?? EditorNode3DGizmo (nativeHandle: resolved_0), handleId: args [1]!.assumingMemoryBound (to: Int32.self).pointee, secondary: args [2]!.assumingMemoryBound (to: Bool.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Variant
    ret.content = Variant.zero
}

func _EditorNode3DGizmoPlugin_proxy_get_priority (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getPriority ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _EditorNode3DGizmoPlugin_proxy_get_subgizmo_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    
    let ret = swiftObject._getSubgizmoTransform (gizmo: lookupLiveObject (handleAddress: resolved_0) as? EditorNode3DGizmo ?? EditorNode3DGizmo (nativeHandle: resolved_0), subgizmoId: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Transform3D.self)
}

func _EditorNode3DGizmoPlugin_proxy_has_gizmo (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    
    let ret = swiftObject._hasGizmo (forNode3d: lookupLiveObject (handleAddress: resolved_0) as? Node3D ?? Node3D (nativeHandle: resolved_0))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorNode3DGizmoPlugin_proxy_is_handle_highlighted (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    
    let ret = swiftObject._isHandleHighlighted (gizmo: lookupLiveObject (handleAddress: resolved_0) as? EditorNode3DGizmo ?? EditorNode3DGizmo (nativeHandle: resolved_0), handleId: args [1]!.assumingMemoryBound (to: Int32.self).pointee, secondary: args [2]!.assumingMemoryBound (to: Bool.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorNode3DGizmoPlugin_proxy_is_selectable_when_hidden (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._isSelectableWhenHidden ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorNode3DGizmoPlugin_proxy_redraw (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    
    swiftObject._redraw (gizmo: lookupLiveObject (handleAddress: resolved_0) as? EditorNode3DGizmo ?? EditorNode3DGizmo (nativeHandle: resolved_0))
}

func _EditorNode3DGizmoPlugin_proxy_set_handle (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    let resolved_3 = args [3]!.load (as: UnsafeRawPointer.self)
    
    swiftObject._setHandle (gizmo: lookupLiveObject (handleAddress: resolved_0) as? EditorNode3DGizmo ?? EditorNode3DGizmo (nativeHandle: resolved_0), handleId: args [1]!.assumingMemoryBound (to: Int32.self).pointee, secondary: args [2]!.assumingMemoryBound (to: Bool.self).pointee, camera: lookupLiveObject (handleAddress: resolved_3) as? Camera3D ?? Camera3D (nativeHandle: resolved_3), screenPos: args [4]!.assumingMemoryBound (to: Vector2.self).pointee)
}

func _EditorNode3DGizmoPlugin_proxy_set_subgizmo_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    
    swiftObject._setSubgizmoTransform (gizmo: lookupLiveObject (handleAddress: resolved_0) as? EditorNode3DGizmo ?? EditorNode3DGizmo (nativeHandle: resolved_0), subgizmoId: args [1]!.assumingMemoryBound (to: Int32.self).pointee, transform: args [2]!.assumingMemoryBound (to: Transform3D.self).pointee)
}

func _EditorNode3DGizmoPlugin_proxy_subgizmos_intersect_frustum (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    let resolved_1 = args [1]!.load (as: UnsafeRawPointer.self)
    
    let ret = swiftObject._subgizmosIntersectFrustum (gizmo: lookupLiveObject (handleAddress: resolved_0) as? EditorNode3DGizmo ?? EditorNode3DGizmo (nativeHandle: resolved_0), camera: lookupLiveObject (handleAddress: resolved_1) as? Camera3D ?? Camera3D (nativeHandle: resolved_1), frustumPlanes: args [2]!.assumingMemoryBound (to: VariantCollection<Plane>.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedInt32Array
    ret.content = PackedInt32Array.zero
}

func _EditorNode3DGizmoPlugin_proxy_subgizmos_intersect_ray (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    let resolved_1 = args [1]!.load (as: UnsafeRawPointer.self)
    
    let ret = swiftObject._subgizmosIntersectRay (gizmo: lookupLiveObject (handleAddress: resolved_0) as? EditorNode3DGizmo ?? EditorNode3DGizmo (nativeHandle: resolved_0), camera: lookupLiveObject (handleAddress: resolved_1) as? Camera3D ?? Camera3D (nativeHandle: resolved_1), screenPos: args [2]!.assumingMemoryBound (to: Vector2.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

