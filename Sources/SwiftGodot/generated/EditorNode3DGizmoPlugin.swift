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


/// A class used by the editor to define Node3D gizmo types.
/// 
/// ``EditorNode3DGizmoPlugin`` allows you to define a new type of Gizmo. There are two main ways to do so: extending ``EditorNode3DGizmoPlugin`` for the simpler gizmos, or creating a new ``EditorNode3DGizmo`` type. See the tutorial in the documentation for more info.
/// 
/// To use ``EditorNode3DGizmoPlugin``, register it using the ``EditorPlugin/addNode3dGizmoPlugin(_:)`` method first.
/// 
open class EditorNode3DGizmoPlugin: Resource {
    private static var className = StringName("EditorNode3DGizmoPlugin")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__has_gizmo: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_has_gizmo")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1905827158)!
            }
            
        }
        
    }()
    
    /// Override this method to define which Node3D nodes have a gizmo from this plugin. Whenever a ``Node3D`` node is added to a scene this method is called, if it returns `true` the node gets a generic ``EditorNode3DGizmo`` assigned and is added to this plugin's list of active gizmos.
    @_documentation(visibility: public)
    open func _hasGizmo(forNode3d: Node3D?) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: forNode3d?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorNode3DGizmoPlugin.method__has_gizmo, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__create_gizmo: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_create_gizmo")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1418965287)!
            }
            
        }
        
    }()
    
    /// Override this method to return a custom ``EditorNode3DGizmo`` for the 3D nodes of your choice, return `null` for the rest of nodes. See also ``_hasGizmo(forNode3d:)``.
    @_documentation(visibility: public)
    open func _createGizmo(forNode3d: Node3D?) -> EditorNode3DGizmo? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: forNode3d?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorNode3DGizmoPlugin.method__create_gizmo, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__get_gizmo_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_gizmo_name")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Override this method to provide the name that will appear in the gizmo visibility menu.
    @_documentation(visibility: public)
    open func _getGizmoName() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorNode3DGizmoPlugin.method__get_gizmo_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__get_priority: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_priority")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Override this method to set the gizmo's priority. Gizmos with higher priority will have precedence when processing inputs like handles or subgizmos selection.
    /// 
    /// All built-in editor gizmos return a priority of `-1`. If not overridden, this method will return `0`, which means custom gizmos will automatically get higher priority than built-in gizmos.
    /// 
    @_documentation(visibility: public)
    open func _getPriority() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(EditorNode3DGizmoPlugin.method__get_priority, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__can_be_hidden: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_can_be_hidden")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Override this method to define whether the gizmos handled by this plugin can be hidden or not. Returns `true` if not overridden.
    @_documentation(visibility: public)
    open func _canBeHidden() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorNode3DGizmoPlugin.method__can_be_hidden, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__is_selectable_when_hidden: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_selectable_when_hidden")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Override this method to define whether Node3D with this gizmo should be selectable even when the gizmo is hidden.
    @_documentation(visibility: public)
    open func _isSelectableWhenHidden() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorNode3DGizmoPlugin.method__is_selectable_when_hidden, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__redraw: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_redraw")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 173330131)!
            }
            
        }
        
    }()
    
    /// Override this method to add all the gizmo elements whenever a gizmo update is requested. It's common to call ``EditorNode3DGizmo/clear()`` at the beginning of this method and then add visual elements depending on the node's properties.
    @_documentation(visibility: public)
    open func _redraw(gizmo: EditorNode3DGizmo?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: gizmo?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorNode3DGizmoPlugin.method__redraw, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_handle_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_handle_name")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3888674840)!
            }
            
        }
        
    }()
    
    /// Override this method to provide gizmo's handle names. The `secondary` argument is `true` when the requested handle is secondary (see ``EditorNode3DGizmo/addHandles(_:material:ids:billboard:secondary:)`` for more information). Called for this plugin's active gizmos.
    @_documentation(visibility: public)
    open func _getHandleName(gizmo: EditorNode3DGizmo?, handleId: Int32, secondary: Bool) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: gizmo?.handle) { pArg0 in
            withUnsafePointer(to: handleId) { pArg1 in
                withUnsafePointer(to: secondary) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorNode3DGizmoPlugin.method__get_handle_name, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__is_handle_highlighted: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_handle_highlighted")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2665780718)!
            }
            
        }
        
    }()
    
    /// Override this method to return `true` whenever to given handle should be highlighted in the editor. The `secondary` argument is `true` when the requested handle is secondary (see ``EditorNode3DGizmo/addHandles(_:material:ids:billboard:secondary:)`` for more information). Called for this plugin's active gizmos.
    @_documentation(visibility: public)
    open func _isHandleHighlighted(gizmo: EditorNode3DGizmo?, handleId: Int32, secondary: Bool) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: gizmo?.handle) { pArg0 in
            withUnsafePointer(to: handleId) { pArg1 in
                withUnsafePointer(to: secondary) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorNode3DGizmoPlugin.method__is_handle_highlighted, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_handle_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_handle_value")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2887724832)!
            }
            
        }
        
    }()
    
    /// Override this method to return the current value of a handle. This value will be requested at the start of an edit and used as the `restore` argument in ``_commitHandle(gizmo:handleId:secondary:restore:cancel:)``.
    /// 
    /// The `secondary` argument is `true` when the requested handle is secondary (see ``EditorNode3DGizmo/addHandles(_:material:ids:billboard:secondary:)`` for more information).
    /// 
    /// Called for this plugin's active gizmos.
    /// 
    @_documentation(visibility: public)
    open func _getHandleValue(gizmo: EditorNode3DGizmo?, handleId: Int32, secondary: Bool) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: gizmo?.handle) { pArg0 in
            withUnsafePointer(to: handleId) { pArg1 in
                withUnsafePointer(to: secondary) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorNode3DGizmoPlugin.method__get_handle_value, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method__begin_handle_action: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_begin_handle_action")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3363704593)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _beginHandleAction(gizmo: EditorNode3DGizmo?, handleId: Int32, secondary: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: gizmo?.handle) { pArg0 in
            withUnsafePointer(to: handleId) { pArg1 in
                withUnsafePointer(to: secondary) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorNode3DGizmoPlugin.method__begin_handle_action, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__set_handle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_handle")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1249646868)!
            }
            
        }
        
    }()
    
    /// Override this method to update the node's properties when the user drags a gizmo handle (previously added with ``EditorNode3DGizmo/addHandles(_:material:ids:billboard:secondary:)``). The provided `screenPos` is the mouse position in screen coordinates and the `camera` can be used to convert it to raycasts.
    /// 
    /// The `secondary` argument is `true` when the edited handle is secondary (see ``EditorNode3DGizmo/addHandles(_:material:ids:billboard:secondary:)`` for more information).
    /// 
    /// Called for this plugin's active gizmos.
    /// 
    @_documentation(visibility: public)
    open func _setHandle(gizmo: EditorNode3DGizmo?, handleId: Int32, secondary: Bool, camera: Camera3D?, screenPos: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: gizmo?.handle) { pArg0 in
            withUnsafePointer(to: handleId) { pArg1 in
                withUnsafePointer(to: secondary) { pArg2 in
                    withUnsafePointer(to: camera?.handle) { pArg3 in
                        withUnsafePointer(to: screenPos) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(EditorNode3DGizmoPlugin.method__set_handle, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__commit_handle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_commit_handle")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1939863962)!
            }
            
        }
        
    }()
    
    /// Override this method to commit a handle being edited (handles must have been previously added by ``EditorNode3DGizmo/addHandles(_:material:ids:billboard:secondary:)`` during ``_redraw(gizmo:)``). This usually means creating an ``UndoRedo`` action for the change, using the current handle value as "do" and the `restore` argument as "undo".
    /// 
    /// If the `cancel` argument is `true`, the `restore` value should be directly set, without any ``UndoRedo`` action.
    /// 
    /// The `secondary` argument is `true` when the committed handle is secondary (see ``EditorNode3DGizmo/addHandles(_:material:ids:billboard:secondary:)`` for more information).
    /// 
    /// Called for this plugin's active gizmos.
    /// 
    @_documentation(visibility: public)
    open func _commitHandle(gizmo: EditorNode3DGizmo?, handleId: Int32, secondary: Bool, restore: Variant?, cancel: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: gizmo?.handle) { pArg0 in
            withUnsafePointer(to: handleId) { pArg1 in
                withUnsafePointer(to: secondary) { pArg2 in
                    withUnsafePointer(to: restore.content) { pArg3 in
                        withUnsafePointer(to: cancel) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(EditorNode3DGizmoPlugin.method__commit_handle, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__subgizmos_intersect_ray: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_subgizmos_intersect_ray")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1781916302)!
            }
            
        }
        
    }()
    
    /// Override this method to allow selecting subgizmos using mouse clicks. Given a `camera` and a `screenPos` in screen coordinates, this method should return which subgizmo should be selected. The returned value should be a unique subgizmo identifier, which can have any non-negative value and will be used in other virtual methods like ``_getSubgizmoTransform(gizmo:subgizmoId:)`` or ``_commitSubgizmos(gizmo:ids:restores:cancel:)``. Called for this plugin's active gizmos.
    @_documentation(visibility: public)
    open func _subgizmosIntersectRay(gizmo: EditorNode3DGizmo?, camera: Camera3D?, screenPos: Vector2) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: gizmo?.handle) { pArg0 in
            withUnsafePointer(to: camera?.handle) { pArg1 in
                withUnsafePointer(to: screenPos) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorNode3DGizmoPlugin.method__subgizmos_intersect_ray, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__subgizmos_intersect_frustum: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_subgizmos_intersect_frustum")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3514748524)!
            }
            
        }
        
    }()
    
    /// Override this method to allow selecting subgizmos using mouse drag box selection. Given a `camera` and `frustumPlanes`, this method should return which subgizmos are contained within the frustums. The `frustumPlanes` argument consists of an array with all the ``Plane``s that make up the selection frustum. The returned value should contain a list of unique subgizmo identifiers, these identifiers can have any non-negative value and will be used in other virtual methods like ``_getSubgizmoTransform(gizmo:subgizmoId:)`` or ``_commitSubgizmos(gizmo:ids:restores:cancel:)``. Called for this plugin's active gizmos.
    @_documentation(visibility: public)
    open func _subgizmosIntersectFrustum(gizmo: EditorNode3DGizmo?, camera: Camera3D?, frustumPlanes: TypedArray<Plane>) -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedInt32Array = PackedInt32Array ()
        withUnsafePointer(to: gizmo?.handle) { pArg0 in
            withUnsafePointer(to: camera?.handle) { pArg1 in
                withUnsafePointer(to: frustumPlanes.array.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorNode3DGizmoPlugin.method__subgizmos_intersect_frustum, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_subgizmo_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_subgizmo_transform")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3700343508)!
            }
            
        }
        
    }()
    
    /// Override this method to return the current transform of a subgizmo. As with all subgizmo methods, the transform should be in local space respect to the gizmo's Node3D. This transform will be requested at the start of an edit and used in the `restore` argument in ``_commitSubgizmos(gizmo:ids:restores:cancel:)``. Called for this plugin's active gizmos.
    @_documentation(visibility: public)
    open func _getSubgizmoTransform(gizmo: EditorNode3DGizmo?, subgizmoId: Int32) -> Transform3D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform3D = Transform3D ()
        withUnsafePointer(to: gizmo?.handle) { pArg0 in
            withUnsafePointer(to: subgizmoId) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorNode3DGizmoPlugin.method__get_subgizmo_transform, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__set_subgizmo_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_subgizmo_transform")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2435388792)!
            }
            
        }
        
    }()
    
    /// Override this method to update the node properties during subgizmo editing (see ``_subgizmosIntersectRay(gizmo:camera:screenPos:)`` and ``_subgizmosIntersectFrustum(gizmo:camera:frustumPlanes:)``). The `transform` is given in the Node3D's local coordinate system. Called for this plugin's active gizmos.
    @_documentation(visibility: public)
    open func _setSubgizmoTransform(gizmo: EditorNode3DGizmo?, subgizmoId: Int32, transform: Transform3D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: gizmo?.handle) { pArg0 in
            withUnsafePointer(to: subgizmoId) { pArg1 in
                withUnsafePointer(to: transform) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorNode3DGizmoPlugin.method__set_subgizmo_transform, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__commit_subgizmos: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_commit_subgizmos")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2282018236)!
            }
            
        }
        
    }()
    
    /// Override this method to commit a group of subgizmos being edited (see ``_subgizmosIntersectRay(gizmo:camera:screenPos:)`` and ``_subgizmosIntersectFrustum(gizmo:camera:frustumPlanes:)``). This usually means creating an ``UndoRedo`` action for the change, using the current transforms as "do" and the `restores` transforms as "undo".
    /// 
    /// If the `cancel` argument is `true`, the `restores` transforms should be directly set, without any ``UndoRedo`` action. As with all subgizmo methods, transforms are given in local space respect to the gizmo's Node3D. Called for this plugin's active gizmos.
    /// 
    @_documentation(visibility: public)
    open func _commitSubgizmos(gizmo: EditorNode3DGizmo?, ids: PackedInt32Array, restores: TypedArray<Transform3D>, cancel: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: gizmo?.handle) { pArg0 in
            withUnsafePointer(to: ids.content) { pArg1 in
                withUnsafePointer(to: restores.array.content) { pArg2 in
                    withUnsafePointer(to: cancel) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(EditorNode3DGizmoPlugin.method__commit_subgizmos, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_create_material: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_material")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3486012546)!
            }
            
        }
        
    }()
    
    /// Creates an unshaded material with its variants (selected and/or editable) and adds them to the internal material list. They can then be accessed with ``getMaterial(name:gizmo:)`` and used in ``EditorNode3DGizmo/addMesh(_:material:transform:skeleton:)`` and ``EditorNode3DGizmo/addLines(_:material:billboard:modulate:)``. Should not be overridden.
    public final func createMaterial(name: String, color: Color, billboard: Bool = false, onTop: Bool = false, useVertexColor: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
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
    
    fileprivate static let method_create_icon_material: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_icon_material")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3804976916)!
            }
            
        }
        
    }()
    
    /// Creates an icon material with its variants (selected and/or editable) and adds them to the internal material list. They can then be accessed with ``getMaterial(name:gizmo:)`` and used in ``EditorNode3DGizmo/addUnscaledBillboard(material:defaultScale:modulate:)``. Should not be overridden.
    public final func createIconMaterial(name: String, texture: Texture2D?, onTop: Bool = false, color: Color = Color (r: 1, g: 1, b: 1, a: 1)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
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
    
    fileprivate static let method_create_handle_material: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_handle_material")
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
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
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
    
    fileprivate static let method_add_material: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_material")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1374068695)!
            }
            
        }
        
    }()
    
    /// Adds a new material to the internal material list for the plugin. It can then be accessed with ``getMaterial(name:gizmo:)``. Should not be overridden.
    public final func addMaterial(name: String, material: StandardMaterial3D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
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
    
    fileprivate static let method_get_material: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_material")
        return withUnsafePointer(to: &EditorNode3DGizmoPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 974464017)!
            }
            
        }
        
    }()
    
    /// Gets material from the internal list of materials. If an ``EditorNode3DGizmo`` is provided, it will try to get the corresponding variant (selected and/or editable).
    public final func getMaterial(name: String, gizmo: EditorNode3DGizmo? = nil) -> StandardMaterial3D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
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
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
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
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorNode3DGizmoPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    swiftObject._beginHandleAction (gizmo: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorNode3DGizmo, handleId: args [1]!.assumingMemoryBound (to: Int32.self).pointee, secondary: args [2]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _EditorNode3DGizmoPlugin_proxy_can_be_hidden (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorNode3DGizmoPlugin else { return }
    let ret = swiftObject._canBeHidden ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorNode3DGizmoPlugin_proxy_commit_handle (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorNode3DGizmoPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    swiftObject._commitHandle (gizmo: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorNode3DGizmo, handleId: args [1]!.assumingMemoryBound (to: Int32.self).pointee, secondary: args [2]!.assumingMemoryBound (to: Bool.self).pointee, restore: args [3]!.assumingMemoryBound (to: Variant.self).pointee, cancel: args [4]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _EditorNode3DGizmoPlugin_proxy_commit_subgizmos (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorNode3DGizmoPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    swiftObject._commitSubgizmos (gizmo: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorNode3DGizmo, ids: PackedInt32Array (content: args [1]!.assumingMemoryBound (to: (Int64, Int64).self).pointee), restores: args [2]!.assumingMemoryBound (to: TypedArray<Transform3D>.self).pointee, cancel: args [3]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _EditorNode3DGizmoPlugin_proxy_create_gizmo (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorNode3DGizmoPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = swiftObject._createGizmo (forNode3d: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? Node3D)
    retPtr!.storeBytes (of: ret?.handle, as: UnsafeRawPointer?.self) // EditorNode3DGizmo
}

func _EditorNode3DGizmoPlugin_proxy_get_gizmo_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorNode3DGizmoPlugin else { return }
    let ret = GString (swiftObject._getGizmoName ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorNode3DGizmoPlugin_proxy_get_handle_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorNode3DGizmoPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = GString (swiftObject._getHandleName (gizmo: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorNode3DGizmo, handleId: args [1]!.assumingMemoryBound (to: Int32.self).pointee, secondary: args [2]!.assumingMemoryBound (to: Bool.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorNode3DGizmoPlugin_proxy_get_handle_value (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorNode3DGizmoPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = swiftObject._getHandleValue (gizmo: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorNode3DGizmo, handleId: args [1]!.assumingMemoryBound (to: Int32.self).pointee, secondary: args [2]!.assumingMemoryBound (to: Bool.self).pointee)
    retPtr!.storeBytes(of: ret.content, as: Variant.ContentType.self)
    ret?.content = Variant.zero
}

func _EditorNode3DGizmoPlugin_proxy_get_priority (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorNode3DGizmoPlugin else { return }
    let ret = swiftObject._getPriority ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _EditorNode3DGizmoPlugin_proxy_get_subgizmo_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorNode3DGizmoPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = swiftObject._getSubgizmoTransform (gizmo: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorNode3DGizmo, subgizmoId: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Transform3D.self)
}

func _EditorNode3DGizmoPlugin_proxy_has_gizmo (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorNode3DGizmoPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = swiftObject._hasGizmo (forNode3d: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? Node3D)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorNode3DGizmoPlugin_proxy_is_handle_highlighted (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorNode3DGizmoPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = swiftObject._isHandleHighlighted (gizmo: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorNode3DGizmo, handleId: args [1]!.assumingMemoryBound (to: Int32.self).pointee, secondary: args [2]!.assumingMemoryBound (to: Bool.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorNode3DGizmoPlugin_proxy_is_selectable_when_hidden (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorNode3DGizmoPlugin else { return }
    let ret = swiftObject._isSelectableWhenHidden ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorNode3DGizmoPlugin_proxy_redraw (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorNode3DGizmoPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    swiftObject._redraw (gizmo: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorNode3DGizmo)
}

func _EditorNode3DGizmoPlugin_proxy_set_handle (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorNode3DGizmoPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    let resolved_3 = args [3]!.load (as: UnsafeRawPointer?.self)
    
    swiftObject._setHandle (gizmo: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorNode3DGizmo, handleId: args [1]!.assumingMemoryBound (to: Int32.self).pointee, secondary: args [2]!.assumingMemoryBound (to: Bool.self).pointee, camera: resolved_3 == nil ? nil : lookupObject (nativeHandle: resolved_3!, ownsRef: false) as? Camera3D, screenPos: args [4]!.assumingMemoryBound (to: Vector2.self).pointee)
}

func _EditorNode3DGizmoPlugin_proxy_set_subgizmo_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorNode3DGizmoPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    swiftObject._setSubgizmoTransform (gizmo: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorNode3DGizmo, subgizmoId: args [1]!.assumingMemoryBound (to: Int32.self).pointee, transform: args [2]!.assumingMemoryBound (to: Transform3D.self).pointee)
}

func _EditorNode3DGizmoPlugin_proxy_subgizmos_intersect_frustum (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorNode3DGizmoPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    let resolved_1 = args [1]!.load (as: UnsafeRawPointer?.self)
    
    let ret = swiftObject._subgizmosIntersectFrustum (gizmo: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorNode3DGizmo, camera: resolved_1 == nil ? nil : lookupObject (nativeHandle: resolved_1!, ownsRef: false) as? Camera3D, frustumPlanes: args [2]!.assumingMemoryBound (to: TypedArray<Plane>.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedInt32Array
    ret.content = PackedInt32Array.zero
}

func _EditorNode3DGizmoPlugin_proxy_subgizmos_intersect_ray (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorNode3DGizmoPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    let resolved_1 = args [1]!.load (as: UnsafeRawPointer?.self)
    
    let ret = swiftObject._subgizmosIntersectRay (gizmo: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorNode3DGizmo, camera: resolved_1 == nil ? nil : lookupObject (nativeHandle: resolved_1!, ownsRef: false) as? Camera3D, screenPos: args [2]!.assumingMemoryBound (to: Vector2.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

