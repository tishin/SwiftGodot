// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// An OpenXR action.
/// 
/// This resource defines an OpenXR action. Actions can be used both for inputs (buttons/joystick/trigger/etc) and outputs (haptics).
/// 
/// OpenXR performs automatic conversion between action type and input type whenever possible. An analog trigger bound to a boolean action will thus return `false` if the trigger is depressed and `true` if pressed fully.
/// 
/// Actions are not directly bound to specific devices, instead OpenXR recognizes a limited number of top level paths that identify devices by usage. We can restrict which devices an action can be bound to by these top level paths. For instance an action that should only be used for hand held controllers can have the top level paths "/user/hand/left" and "/user/hand/right" associated with them. See the [url=https://www.khronos.org/registry/OpenXR/specs/1.0/html/xrspec.html#semantic-path-reserved]reserved path section in the OpenXR specification[/url] for more info on the top level paths.
/// 
/// Note that the name of the resource is used to register the action with.
/// 
open class OpenXRAction: Resource {
    override open class var godotClassName: StringName { "OpenXRAction" }
    public enum ActionType: Int64, CustomDebugStringConvertible {
        /// This action provides a boolean value.
        case bool = 0 // OPENXR_ACTION_BOOL
        /// This action provides a float value between `0.0` and `1.0` for any analog input such as triggers.
        case float = 1 // OPENXR_ACTION_FLOAT
        /// This action provides a ``Vector2`` value and can be bound to embedded trackpads and joysticks.
        case vector2 = 2 // OPENXR_ACTION_VECTOR2
        /// 
        case pose = 3 // OPENXR_ACTION_POSE
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .bool: return ".bool"
                case .float: return ".float"
                case .vector2: return ".vector2"
                case .pose: return ".pose"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// The localized description of this action.
    final public var localizedName: String {
        get {
            return get_localized_name ()
        }
        
        set {
            set_localized_name (newValue)
        }
        
    }
    
    /// The type of action.
    final public var actionType: OpenXRAction.ActionType {
        get {
            return get_action_type ()
        }
        
        set {
            set_action_type (newValue)
        }
        
    }
    
    /// A collections of toplevel paths to which this action can be bound.
    final public var toplevelPaths: PackedStringArray {
        get {
            return get_toplevel_paths ()
        }
        
        set {
            set_toplevel_paths (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_localized_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_localized_name")
        return withUnsafePointer (to: &OpenXRAction.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_localized_name (_ localizedName: String) {
        #if true
        
        let gstr_localized_name = GString (localizedName)
        
        gi.object_method_bind_ptrcall_v (OpenXRAction.method_set_localized_name, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_localized_name.content)
        
        #else
        
        let gstr_localized_name = GString (localizedName)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_localized_name.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (OpenXRAction.method_set_localized_name, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_localized_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_localized_name")
        return withUnsafePointer (to: &OpenXRAction.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_localized_name ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (OpenXRAction.method_get_localized_name, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_set_action_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_action_type")
        return withUnsafePointer (to: &OpenXRAction.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1675238366)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_action_type (_ actionType: OpenXRAction.ActionType) {
        #if true
        
        var copy_action_type = Int64 (actionType.rawValue)
        
        gi.object_method_bind_ptrcall_v (OpenXRAction.method_set_action_type, UnsafeMutableRawPointer (mutating: handle), nil, &copy_action_type)
        
        #else
        
        var copy_action_type = Int64 (actionType.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_action_type) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (OpenXRAction.method_set_action_type, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_action_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_action_type")
        return withUnsafePointer (to: &OpenXRAction.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3536542431)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_action_type ()-> OpenXRAction.ActionType {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (OpenXRAction.method_get_action_type, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return OpenXRAction.ActionType (rawValue: _result)!
    }
    
    fileprivate static var method_set_toplevel_paths: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_toplevel_paths")
        return withUnsafePointer (to: &OpenXRAction.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4015028928)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_toplevel_paths (_ toplevelPaths: PackedStringArray) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (OpenXRAction.method_set_toplevel_paths, UnsafeMutableRawPointer (mutating: handle), nil, &toplevelPaths.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &toplevelPaths.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (OpenXRAction.method_set_toplevel_paths, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_toplevel_paths: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_toplevel_paths")
        return withUnsafePointer (to: &OpenXRAction.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_toplevel_paths ()-> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall (OpenXRAction.method_get_toplevel_paths, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
}

