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


/// Provides access to a scene file's information.
/// 
/// Maintains a list of resources, nodes, exported and overridden properties, and built-in scripts associated with a scene. They cannot be modified from a ``SceneState``, only accessed. Useful for peeking into what a ``PackedScene`` contains without instantiating it.
/// 
/// This class cannot be instantiated directly, it is retrieved for a given scene as the result of ``PackedScene/getState()``.
/// 
open class SceneState: RefCounted {
    private static var className = StringName("SceneState")
    override open class var godotClassName: StringName { className }
    public enum GenEditState: Int64, CaseIterable {
        /// If passed to ``PackedScene/instantiate(editState:)``, blocks edits to the scene state.
        case disabled = 0 // GEN_EDIT_STATE_DISABLED
        /// If passed to ``PackedScene/instantiate(editState:)``, provides inherited scene resources to the local scene.
        /// 
        /// > Note: Only available in editor builds.
        /// 
        case instance = 1 // GEN_EDIT_STATE_INSTANCE
        /// If passed to ``PackedScene/instantiate(editState:)``, provides local scene resources to the local scene. Only the main scene should receive the main edit state.
        /// 
        /// > Note: Only available in editor builds.
        /// 
        case main = 2 // GEN_EDIT_STATE_MAIN
        /// If passed to ``PackedScene/instantiate(editState:)``, it's similar to ``GenEditState/main``, but for the case where the scene is being instantiated to be the base of another one.
        /// 
        /// > Note: Only available in editor builds.
        /// 
        case mainInherited = 3 // GEN_EDIT_STATE_MAIN_INHERITED
    }
    
    /* Methods */
    fileprivate static let method_get_node_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_node_count")
        return withUnsafePointer(to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of nodes in the scene.
    /// 
    /// The `idx` argument used to query node data in other `get_node_*` methods in the interval `[0, get_node_count() - 1]`.
    /// 
    public final func getNodeCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(SceneState.method_get_node_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_node_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_node_type")
        return withUnsafePointer(to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 659327637)!
            }
            
        }
        
    }()
    
    /// Returns the type of the node at `idx`.
    public final func getNodeType(idx: Int32) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SceneState.method_get_node_type, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_node_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_node_name")
        return withUnsafePointer(to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 659327637)!
            }
            
        }
        
    }()
    
    /// Returns the name of the node at `idx`.
    public final func getNodeName(idx: Int32) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SceneState.method_get_node_name, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_node_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_node_path")
        return withUnsafePointer(to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2272487792)!
            }
            
        }
        
    }()
    
    /// Returns the path to the node at `idx`.
    /// 
    /// If `forParent` is `true`, returns the path of the `idx` node's parent instead.
    /// 
    public final func getNodePath(idx: Int32, forParent: Bool = false) -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: forParent) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SceneState.method_get_node_path, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_node_owner_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_node_owner_path")
        return withUnsafePointer(to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 408788394)!
            }
            
        }
        
    }()
    
    /// Returns the path to the owner of the node at `idx`, relative to the root node.
    public final func getNodeOwnerPath(idx: Int32) -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SceneState.method_get_node_owner_path, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_node_instance_placeholder: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_node_instance_placeholder")
        return withUnsafePointer(to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the node at `idx` is an ``InstancePlaceholder``.
    public final func isNodeInstancePlaceholder(idx: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SceneState.method_is_node_instance_placeholder, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_node_instance_placeholder: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_node_instance_placeholder")
        return withUnsafePointer(to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the path to the represented scene file if the node at `idx` is an ``InstancePlaceholder``.
    public final func getNodeInstancePlaceholder(idx: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SceneState.method_get_node_instance_placeholder, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_node_instance: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_node_instance")
        return withUnsafePointer(to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 511017218)!
            }
            
        }
        
    }()
    
    /// Returns a ``PackedScene`` for the node at `idx` (i.e. the whole branch starting at this node, with its child nodes and resources), or `null` if the node is not an instance.
    public final func getNodeInstance(idx: Int32) -> PackedScene? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SceneState.method_get_node_instance, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_node_groups: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_node_groups")
        return withUnsafePointer(to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 647634434)!
            }
            
        }
        
    }()
    
    /// Returns the list of group names associated with the node at `idx`.
    public final func getNodeGroups(idx: Int32) -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedStringArray = PackedStringArray ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SceneState.method_get_node_groups, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_node_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_node_index")
        return withUnsafePointer(to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the node's index, which is its position relative to its siblings. This is only relevant and saved in scenes for cases where new nodes are added to an instantiated or inherited scene among siblings from the base scene. Despite the name, this index is not related to the `idx` argument used here and in other methods.
    public final func getNodeIndex(idx: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SceneState.method_get_node_index, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_node_property_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_node_property_count")
        return withUnsafePointer(to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the number of exported or overridden properties for the node at `idx`.
    /// 
    /// The `prop_idx` argument used to query node property data in other `get_node_property_*` methods in the interval `[0, get_node_property_count() - 1]`.
    /// 
    public final func getNodePropertyCount(idx: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SceneState.method_get_node_property_count, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_node_property_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_node_property_name")
        return withUnsafePointer(to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 351665558)!
            }
            
        }
        
    }()
    
    /// Returns the name of the property at `propIdx` for the node at `idx`.
    public final func getNodePropertyName(idx: Int32, propIdx: Int32) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: propIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SceneState.method_get_node_property_name, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_node_property_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_node_property_value")
        return withUnsafePointer(to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 678354945)!
            }
            
        }
        
    }()
    
    /// Returns the value of the property at `propIdx` for the node at `idx`.
    public final func getNodePropertyValue(idx: Int32, propIdx: Int32) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: propIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SceneState.method_get_node_property_value, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_get_connection_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_connection_count")
        return withUnsafePointer(to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of signal connections in the scene.
    /// 
    /// The `idx` argument used to query connection metadata in other `get_connection_*` methods in the interval `[0, get_connection_count() - 1]`.
    /// 
    public final func getConnectionCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(SceneState.method_get_connection_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_connection_source: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_connection_source")
        return withUnsafePointer(to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 408788394)!
            }
            
        }
        
    }()
    
    /// Returns the path to the node that owns the signal at `idx`, relative to the root node.
    public final func getConnectionSource(idx: Int32) -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SceneState.method_get_connection_source, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_connection_signal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_connection_signal")
        return withUnsafePointer(to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 659327637)!
            }
            
        }
        
    }()
    
    /// Returns the name of the signal at `idx`.
    public final func getConnectionSignal(idx: Int32) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SceneState.method_get_connection_signal, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_connection_target: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_connection_target")
        return withUnsafePointer(to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 408788394)!
            }
            
        }
        
    }()
    
    /// Returns the path to the node that owns the method connected to the signal at `idx`, relative to the root node.
    public final func getConnectionTarget(idx: Int32) -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SceneState.method_get_connection_target, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_connection_method: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_connection_method")
        return withUnsafePointer(to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 659327637)!
            }
            
        }
        
    }()
    
    /// Returns the method connected to the signal at `idx`.
    public final func getConnectionMethod(idx: Int32) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SceneState.method_get_connection_method, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_connection_flags: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_connection_flags")
        return withUnsafePointer(to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the connection flags for the signal at `idx`. See ``Object.ConnectFlags`` constants.
    public final func getConnectionFlags(idx: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SceneState.method_get_connection_flags, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_connection_binds: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_connection_binds")
        return withUnsafePointer(to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 663333327)!
            }
            
        }
        
    }()
    
    /// Returns the list of bound parameters for the signal at `idx`.
    public final func getConnectionBinds(idx: Int32) -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SceneState.method_get_connection_binds, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_connection_unbinds: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_connection_unbinds")
        return withUnsafePointer(to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the number of unbound parameters for the signal at `idx`.
    public final func getConnectionUnbinds(idx: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SceneState.method_get_connection_unbinds, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
}

