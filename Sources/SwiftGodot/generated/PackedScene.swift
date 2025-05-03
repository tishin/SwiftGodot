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


/// An abstraction of a serialized scene.
/// 
/// A simplified interface to a scene file. Provides access to operations and checks that can be performed on the scene resource itself.
/// 
/// Can be used to save a node to a file. When saving, the node as well as all the nodes it owns get saved (see ``Node/owner`` property).
/// 
/// > Note: The node doesn't need to own itself.
/// 
/// **Example:** Load a saved scene:
/// 
/// **Example:** Save a node with different owners. The following example creates 3 objects: ``Node2D`` (`node`), ``RigidBody2D`` (`body`) and ``CollisionObject2D`` (`collision`). `collision` is a child of `body` which is a child of `node`. Only `body` is owned by `node` and ``pack(path:)`` will therefore only save those two nodes, but not `collision`.
/// 
open class PackedScene: Resource {
    private static var className = StringName("PackedScene")
    override open class var godotClassName: StringName { className }
    public enum GenEditState: Int64, CaseIterable {
        /// If passed to ``instantiate(editState:)``, blocks edits to the scene state.
        case disabled = 0 // GEN_EDIT_STATE_DISABLED
        /// If passed to ``instantiate(editState:)``, provides local scene resources to the local scene.
        /// 
        /// > Note: Only available in editor builds.
        /// 
        case instance = 1 // GEN_EDIT_STATE_INSTANCE
        /// If passed to ``instantiate(editState:)``, provides local scene resources to the local scene. Only the main scene should receive the main edit state.
        /// 
        /// > Note: Only available in editor builds.
        /// 
        case main = 2 // GEN_EDIT_STATE_MAIN
        /// It's similar to ``GenEditState/main``, but for the case where the scene is being instantiated to be the base of another one.
        /// 
        /// > Note: Only available in editor builds.
        /// 
        case mainInherited = 3 // GEN_EDIT_STATE_MAIN_INHERITED
    }
    
    /* Methods */
    fileprivate static let method_pack: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("pack")
        return withUnsafePointer(to: &PackedScene.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2584678054)!
            }
            
        }
        
    }()
    
    /// Packs the `path` node, and all owned sub-nodes, into this ``PackedScene``. Any existing data will be cleared. See ``Node/owner``.
    public final func pack(path: Node?) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: path?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PackedScene.method_pack, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_instantiate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("instantiate")
        return withUnsafePointer(to: &PackedScene.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2628778455)!
            }
            
        }
        
    }()
    
    /// Instantiates the scene's node hierarchy. Triggers child scene instantiation(s). Triggers a ``Node/notificationSceneInstantiated`` notification on the root node.
    public final func instantiate(editState: PackedScene.GenEditState = .disabled) -> Node? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: editState.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PackedScene.method_instantiate, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_can_instantiate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("can_instantiate")
        return withUnsafePointer(to: &PackedScene.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the scene file has nodes.
    public final func canInstantiate() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PackedScene.method_can_instantiate, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_state")
        return withUnsafePointer(to: &PackedScene.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3479783971)!
            }
            
        }
        
    }()
    
    /// Returns the ``SceneState`` representing the scene file contents.
    public final func getState() -> SceneState? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(PackedScene.method_get_state, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
}

