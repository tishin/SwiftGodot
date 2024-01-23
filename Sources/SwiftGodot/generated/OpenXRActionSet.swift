// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Collection of ``OpenXRAction`` resources that make up an action set.
/// 
/// Action sets in OpenXR define a collection of actions that can be activated in unison. This allows games to easily change between different states that require different inputs or need to reinterpret inputs. For instance we could have an action set that is active when a menu is open, an action set that is active when the player is freely walking around and an action set that is active when the player is controlling a vehicle.
/// 
/// Action sets can contain the same action with the same name, if such action sets are active at the same time the action set with the highest priority defines which binding is active.
/// 
open class OpenXRActionSet: Resource {
    override open class var godotClassName: StringName { "OpenXRActionSet" }
    
    /* Properties */
    
    /// The localized name of this action set.
    final public var localizedName: String {
        get {
            return get_localized_name ()
        }
        
        set {
            set_localized_name (newValue)
        }
        
    }
    
    /// The priority for this action set.
    final public var priority: Int32 {
        get {
            return get_priority ()
        }
        
        set {
            set_priority (newValue)
        }
        
    }
    
    /// Collection of actions for this action set.
    final public var actions: GArray {
        get {
            return get_actions ()
        }
        
        set {
            set_actions (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_localized_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_localized_name")
        return withUnsafePointer (to: &OpenXRActionSet.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_localized_name (_ localizedName: String) {
        #if true
        
        let gstr_localized_name = GString (localizedName)
        
        gi.object_method_bind_ptrcall_v (OpenXRActionSet.method_set_localized_name, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_localized_name.content)
        
        #else
        
        let gstr_localized_name = GString (localizedName)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_localized_name.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (OpenXRActionSet.method_set_localized_name, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_localized_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_localized_name")
        return withUnsafePointer (to: &OpenXRActionSet.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_localized_name ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (OpenXRActionSet.method_get_localized_name, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_set_priority: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_priority")
        return withUnsafePointer (to: &OpenXRActionSet.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_priority (_ priority: Int32) {
        #if true
        
        var copy_priority: Int = Int (priority)
        
        gi.object_method_bind_ptrcall_v (OpenXRActionSet.method_set_priority, UnsafeMutableRawPointer (mutating: handle), nil, &copy_priority)
        
        #else
        
        var copy_priority: Int = Int (priority)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_priority) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (OpenXRActionSet.method_set_priority, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_priority: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_priority")
        return withUnsafePointer (to: &OpenXRActionSet.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_priority ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (OpenXRActionSet.method_get_priority, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_action_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_action_count")
        return withUnsafePointer (to: &OpenXRActionSet.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Retrieve the number of actions in our action set.
    public final func getActionCount ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (OpenXRActionSet.method_get_action_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_actions: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_actions")
        return withUnsafePointer (to: &OpenXRActionSet.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_actions (_ actions: GArray) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (OpenXRActionSet.method_set_actions, UnsafeMutableRawPointer (mutating: handle), nil, &actions.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &actions.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (OpenXRActionSet.method_set_actions, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_actions: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_actions")
        return withUnsafePointer (to: &OpenXRActionSet.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_actions ()-> GArray {
        let _result: GArray = GArray ()
        gi.object_method_bind_ptrcall (OpenXRActionSet.method_get_actions, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_add_action: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_action")
        return withUnsafePointer (to: &OpenXRActionSet.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 349361333)!
            }
            
        }
        
    }()
    
    /// Add an action to this action set.
    public final func addAction (_ action: OpenXRAction?) {
        #if true
        
        var copy_action_handle = action?.handle
        
        gi.object_method_bind_ptrcall_v (OpenXRActionSet.method_add_action, UnsafeMutableRawPointer (mutating: handle), nil, &copy_action_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: action?.handle) { p0 in
        _args.append (action == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (OpenXRActionSet.method_add_action, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_remove_action: GDExtensionMethodBindPtr = {
        let methodName = StringName ("remove_action")
        return withUnsafePointer (to: &OpenXRActionSet.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 349361333)!
            }
            
        }
        
    }()
    
    /// Remove an action from this action set.
    public final func removeAction (_ action: OpenXRAction?) {
        #if true
        
        var copy_action_handle = action?.handle
        
        gi.object_method_bind_ptrcall_v (OpenXRActionSet.method_remove_action, UnsafeMutableRawPointer (mutating: handle), nil, &copy_action_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: action?.handle) { p0 in
        _args.append (action == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (OpenXRActionSet.method_remove_action, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
}

