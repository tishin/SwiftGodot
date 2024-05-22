// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Provides access to a scene file's information.
/// 
/// Maintains a list of resources, nodes, exported and overridden properties, and built-in scripts associated with a scene. They cannot be modified from a ``SceneState``, only accessed. Useful for peeking into what a ``PackedScene`` contains without instantiating it.
/// 
/// This class cannot be instantiated directly, it is retrieved for a given scene as the result of ``PackedScene/getState()``.
/// 
open class SceneState: RefCounted {
    override open class var godotClassName: StringName { "SceneState" }
    public enum GenEditState: Int64, CaseIterable, CustomDebugStringConvertible {
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
        /// If passed to ``PackedScene/instantiate(editState:)``, it's similar to .main, but for the case where the scene is being instantiated to be the base of another one.
        /// 
        /// > Note: Only available in editor builds.
        /// 
        case mainInherited = 3 // GEN_EDIT_STATE_MAIN_INHERITED
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .disabled: return ".disabled"
                case .instance: return ".instance"
                case .main: return ".main"
                case .mainInherited: return ".mainInherited"
            }
            
        }
        
    }
    
    /* Methods */
    fileprivate static var method_get_node_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_node_count")
        return withUnsafePointer (to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of nodes in the scene.
    /// 
    /// The `idx` argument used to query node data in other `get_node_*` methods in the interval `[0, get_node_count() - 1]`.
    /// 
    public final func getNodeCount ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (SceneState.method_get_node_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_node_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_node_type")
        return withUnsafePointer (to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 659327637)!
            }
            
        }
        
    }()
    
    /// Returns the type of the node at `idx`.
    public final func getNodeType (idx: Int32)-> StringName {
        let _result: StringName = StringName ()
        #if true
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (SceneState.method_get_node_type, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_idx)
        return _result
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneState.method_get_node_type, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_node_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_node_name")
        return withUnsafePointer (to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 659327637)!
            }
            
        }
        
    }()
    
    /// Returns the name of the node at `idx`.
    public final func getNodeName (idx: Int32)-> StringName {
        let _result: StringName = StringName ()
        #if true
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (SceneState.method_get_node_name, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_idx)
        return _result
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneState.method_get_node_name, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_node_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_node_path")
        return withUnsafePointer (to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2272487792)!
            }
            
        }
        
    }()
    
    /// Returns the path to the node at `idx`.
    /// 
    /// If `forParent` is `true`, returns the path of the `idx` node's parent instead.
    /// 
    public final func getNodePath (idx: Int32, forParent: Bool = false)-> NodePath {
        let _result: NodePath = NodePath ()
        #if true
        
        var copy_idx: Int = Int (idx)
        var copy_for_parent = forParent
        
        gi.object_method_bind_ptrcall_v (SceneState.method_get_node_path, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_idx, &copy_for_parent)
        return _result
        #else
        
        var copy_idx: Int = Int (idx)
        var copy_for_parent = forParent
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_for_parent) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (SceneState.method_get_node_path, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_node_owner_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_node_owner_path")
        return withUnsafePointer (to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 408788394)!
            }
            
        }
        
    }()
    
    /// Returns the path to the owner of the node at `idx`, relative to the root node.
    public final func getNodeOwnerPath (idx: Int32)-> NodePath {
        let _result: NodePath = NodePath ()
        #if true
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (SceneState.method_get_node_owner_path, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_idx)
        return _result
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneState.method_get_node_owner_path, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_is_node_instance_placeholder: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_node_instance_placeholder")
        return withUnsafePointer (to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the node at `idx` is an ``InstancePlaceholder``.
    public final func isNodeInstancePlaceholder (idx: Int32)-> Bool {
        var _result: Bool = false
        #if true
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (SceneState.method_is_node_instance_placeholder, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_idx)
        return _result
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneState.method_is_node_instance_placeholder, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_node_instance_placeholder: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_node_instance_placeholder")
        return withUnsafePointer (to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the path to the represented scene file if the node at `idx` is an ``InstancePlaceholder``.
    public final func getNodeInstancePlaceholder (idx: Int32)-> String {
        let _result = GString ()
        #if true
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (SceneState.method_get_node_instance_placeholder, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_idx)
        return _result.description
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneState.method_get_node_instance_placeholder, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_get_node_instance: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_node_instance")
        return withUnsafePointer (to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 511017218)!
            }
            
        }
        
    }()
    
    /// Returns a ``PackedScene`` for the node at `idx` (i.e. the whole branch starting at this node, with its child nodes and resources), or `null` if the node is not an instance.
    public final func getNodeInstance (idx: Int32)-> PackedScene? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if true
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (SceneState.method_get_node_instance, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_idx)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneState.method_get_node_instance, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_get_node_groups: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_node_groups")
        return withUnsafePointer (to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 647634434)!
            }
            
        }
        
    }()
    
    /// Returns the list of group names associated with the node at `idx`.
    public final func getNodeGroups (idx: Int32)-> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        #if true
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (SceneState.method_get_node_groups, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_idx)
        return _result
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneState.method_get_node_groups, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_node_index: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_node_index")
        return withUnsafePointer (to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the node's index, which is its position relative to its siblings. This is only relevant and saved in scenes for cases where new nodes are added to an instantiated or inherited scene among siblings from the base scene. Despite the name, this index is not related to the `idx` argument used here and in other methods.
    public final func getNodeIndex (idx: Int32)-> Int32 {
        var _result: Int32 = 0
        #if true
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (SceneState.method_get_node_index, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_idx)
        return _result
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneState.method_get_node_index, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_node_property_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_node_property_count")
        return withUnsafePointer (to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the number of exported or overridden properties for the node at `idx`.
    /// 
    /// The `prop_idx` argument used to query node property data in other `get_node_property_*` methods in the interval `[0, get_node_property_count() - 1]`.
    /// 
    public final func getNodePropertyCount (idx: Int32)-> Int32 {
        var _result: Int32 = 0
        #if true
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (SceneState.method_get_node_property_count, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_idx)
        return _result
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneState.method_get_node_property_count, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_node_property_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_node_property_name")
        return withUnsafePointer (to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 351665558)!
            }
            
        }
        
    }()
    
    /// Returns the name of the property at `propIdx` for the node at `idx`.
    public final func getNodePropertyName (idx: Int32, propIdx: Int32)-> StringName {
        let _result: StringName = StringName ()
        #if true
        
        var copy_idx: Int = Int (idx)
        var copy_prop_idx: Int = Int (propIdx)
        
        gi.object_method_bind_ptrcall_v (SceneState.method_get_node_property_name, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_idx, &copy_prop_idx)
        return _result
        #else
        
        var copy_idx: Int = Int (idx)
        var copy_prop_idx: Int = Int (propIdx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_prop_idx) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (SceneState.method_get_node_property_name, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_node_property_value: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_node_property_value")
        return withUnsafePointer (to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 678354945)!
            }
            
        }
        
    }()
    
    /// Returns the value of the property at `propIdx` for the node at `idx`.
    public final func getNodePropertyValue (idx: Int32, propIdx: Int32)-> Variant {
        let _result: Variant = Variant ()
        #if true
        
        var copy_idx: Int = Int (idx)
        var copy_prop_idx: Int = Int (propIdx)
        
        gi.object_method_bind_ptrcall_v (SceneState.method_get_node_property_value, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_idx, &copy_prop_idx)
        return _result
        #else
        
        var copy_idx: Int = Int (idx)
        var copy_prop_idx: Int = Int (propIdx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_prop_idx) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (SceneState.method_get_node_property_value, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_connection_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_connection_count")
        return withUnsafePointer (to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of signal connections in the scene.
    /// 
    /// The `idx` argument used to query connection metadata in other `get_connection_*` methods in the interval `[0, get_connection_count() - 1]`.
    /// 
    public final func getConnectionCount ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (SceneState.method_get_connection_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_connection_source: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_connection_source")
        return withUnsafePointer (to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 408788394)!
            }
            
        }
        
    }()
    
    /// Returns the path to the node that owns the signal at `idx`, relative to the root node.
    public final func getConnectionSource (idx: Int32)-> NodePath {
        let _result: NodePath = NodePath ()
        #if true
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (SceneState.method_get_connection_source, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_idx)
        return _result
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneState.method_get_connection_source, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_connection_signal: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_connection_signal")
        return withUnsafePointer (to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 659327637)!
            }
            
        }
        
    }()
    
    /// Returns the name of the signal at `idx`.
    public final func getConnectionSignal (idx: Int32)-> StringName {
        let _result: StringName = StringName ()
        #if true
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (SceneState.method_get_connection_signal, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_idx)
        return _result
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneState.method_get_connection_signal, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_connection_target: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_connection_target")
        return withUnsafePointer (to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 408788394)!
            }
            
        }
        
    }()
    
    /// Returns the path to the node that owns the method connected to the signal at `idx`, relative to the root node.
    public final func getConnectionTarget (idx: Int32)-> NodePath {
        let _result: NodePath = NodePath ()
        #if true
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (SceneState.method_get_connection_target, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_idx)
        return _result
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneState.method_get_connection_target, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_connection_method: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_connection_method")
        return withUnsafePointer (to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 659327637)!
            }
            
        }
        
    }()
    
    /// Returns the method connected to the signal at `idx`.
    public final func getConnectionMethod (idx: Int32)-> StringName {
        let _result: StringName = StringName ()
        #if true
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (SceneState.method_get_connection_method, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_idx)
        return _result
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneState.method_get_connection_method, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_connection_flags: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_connection_flags")
        return withUnsafePointer (to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the connection flags for the signal at `idx`. See ``Object.ConnectFlags`` constants.
    public final func getConnectionFlags (idx: Int32)-> Int32 {
        var _result: Int32 = 0
        #if true
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (SceneState.method_get_connection_flags, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_idx)
        return _result
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneState.method_get_connection_flags, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_connection_binds: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_connection_binds")
        return withUnsafePointer (to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 663333327)!
            }
            
        }
        
    }()
    
    /// Returns the list of bound parameters for the signal at `idx`.
    public final func getConnectionBinds (idx: Int32)-> GArray {
        let _result: GArray = GArray ()
        #if true
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (SceneState.method_get_connection_binds, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_idx)
        return _result
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneState.method_get_connection_binds, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_connection_unbinds: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_connection_unbinds")
        return withUnsafePointer (to: &SceneState.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the number of unbound parameters for the signal at `idx`.
    public final func getConnectionUnbinds (idx: Int32)-> Int32 {
        var _result: Int32 = 0
        #if true
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (SceneState.method_get_connection_unbinds, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_idx)
        return _result
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (SceneState.method_get_connection_unbinds, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
}

