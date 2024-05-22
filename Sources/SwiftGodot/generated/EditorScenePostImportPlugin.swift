// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Plugin to control and modifying the process of importing a scene.
/// 
/// This plugin type exists to modify the process of importing scenes, allowing to change the content as well as add importer options at every stage of the process.
open class EditorScenePostImportPlugin: RefCounted {
    override open class var godotClassName: StringName { "EditorScenePostImportPlugin" }
    public enum InternalImportCategory: Int64, CaseIterable, CustomDebugStringConvertible {
        /// 
        case node = 0 // INTERNAL_IMPORT_CATEGORY_NODE
        /// 
        case mesh3dNode = 1 // INTERNAL_IMPORT_CATEGORY_MESH_3D_NODE
        /// 
        case mesh = 2 // INTERNAL_IMPORT_CATEGORY_MESH
        /// 
        case material = 3 // INTERNAL_IMPORT_CATEGORY_MATERIAL
        /// 
        case animation = 4 // INTERNAL_IMPORT_CATEGORY_ANIMATION
        /// 
        case animationNode = 5 // INTERNAL_IMPORT_CATEGORY_ANIMATION_NODE
        /// 
        case skeleton3dNode = 6 // INTERNAL_IMPORT_CATEGORY_SKELETON_3D_NODE
        /// 
        case max = 7 // INTERNAL_IMPORT_CATEGORY_MAX
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .node: return ".node"
                case .mesh3dNode: return ".mesh3dNode"
                case .mesh: return ".mesh"
                case .material: return ".material"
                case .animation: return ".animation"
                case .animationNode: return ".animationNode"
                case .skeleton3dNode: return ".skeleton3dNode"
                case .max: return ".max"
            }
            
        }
        
    }
    
    /* Methods */
    /// Override to add internal import options. These will appear in the 3D scene import dialog. Add options via ``addImportOption(name:value:)`` and ``addImportOptionAdvanced(type:name:defaultValue:hint:hintString:usageFlags:)``.
    @_documentation(visibility: public)
    open func _getInternalImportOptions (category: Int32) {
    }
    
    /// Return true or false whether a given option should be visible. Return null to ignore.
    @_documentation(visibility: public)
    open func _getInternalOptionVisibility (category: Int32, forAnimation: Bool, option: String)-> Variant {
        return Variant ()
    }
    
    /// Return true whether updating the 3D view of the import dialog needs to be updated if an option has changed.
    @_documentation(visibility: public)
    open func _getInternalOptionUpdateViewRequired (category: Int32, option: String)-> Variant {
        return Variant ()
    }
    
    /// Process a specific node or resource for a given category.
    @_documentation(visibility: public)
    open func _internalProcess (category: Int32, baseNode: Node?, node: Node?, resource: Resource?) {
    }
    
    /// Override to add general import options. These will appear in the main import dock on the editor. Add options via ``addImportOption(name:value:)`` and ``addImportOptionAdvanced(type:name:defaultValue:hint:hintString:usageFlags:)``.
    @_documentation(visibility: public)
    open func _getImportOptions (path: String) {
    }
    
    /// Return true or false whether a given option should be visible. Return null to ignore.
    @_documentation(visibility: public)
    open func _getOptionVisibility (path: String, forAnimation: Bool, option: String)-> Variant {
        return Variant ()
    }
    
    /// Pre Process the scene. This function is called right after the scene format loader loaded the scene and no changes have been made.
    @_documentation(visibility: public)
    open func _preProcess (scene: Node?) {
    }
    
    /// Post process the scene. This function is called after the final scene has been configured.
    @_documentation(visibility: public)
    open func _postProcess (scene: Node?) {
    }
    
    fileprivate static var method_get_option_value: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_option_value")
        return withUnsafePointer (to: &EditorScenePostImportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2760726917)!
            }
            
        }
        
    }()
    
    /// Query the value of an option. This function can only be called from those querying visibility, or processing.
    public final func getOptionValue (name: StringName)-> Variant {
        let _result: Variant = Variant ()
        #if true
        
        
        gi.object_method_bind_ptrcall_v (EditorScenePostImportPlugin.method_get_option_value, UnsafeMutableRawPointer (mutating: handle), &_result.content, &name.content)
        return _result
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &name.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (EditorScenePostImportPlugin.method_get_option_value, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_add_import_option: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_import_option")
        return withUnsafePointer (to: &EditorScenePostImportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 402577236)!
            }
            
        }
        
    }()
    
    /// Add a specific import option (name and default value only). This function can only be called from ``_getImportOptions(path:)`` and ``_getInternalImportOptions(category:)``.
    public final func addImportOption (name: String, value: Variant) {
        #if true
        
        let gstr_name = GString (name)
        
        gi.object_method_bind_ptrcall_v (EditorScenePostImportPlugin.method_add_import_option, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_name.content, &value.content)
        
        #else
        
        let gstr_name = GString (name)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_name.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &value.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (EditorScenePostImportPlugin.method_add_import_option, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_add_import_option_advanced: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_import_option_advanced")
        return withUnsafePointer (to: &EditorScenePostImportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3674075649)!
            }
            
        }
        
    }()
    
    /// Add a specific import option. This function can only be called from ``_getImportOptions(path:)`` and ``_getInternalImportOptions(category:)``.
    public final func addImportOptionAdvanced (type: Variant.GType, name: String, defaultValue: Variant, hint: PropertyHint = .none, hintString: String = "", usageFlags: Int32 = 6) {
        #if true
        
        var copy_type = Int64 (type.rawValue)
        let gstr_name = GString (name)
        var copy_hint = Int64 (hint.rawValue)
        let gstr_hint_string = GString (hintString)
        var copy_usage_flags: Int = Int (usageFlags)
        
        gi.object_method_bind_ptrcall_v (EditorScenePostImportPlugin.method_add_import_option_advanced, UnsafeMutableRawPointer (mutating: handle), nil, &copy_type, &gstr_name.content, &defaultValue.content, &copy_hint, &gstr_hint_string.content, &copy_usage_flags)
        
        #else
        
        var copy_type = Int64 (type.rawValue)
        let gstr_name = GString (name)
        var copy_hint = Int64 (hint.rawValue)
        let gstr_hint_string = GString (hintString)
        var copy_usage_flags: Int = Int (usageFlags)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_type) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &gstr_name.content) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &defaultValue.content) { p2 in
                    _args.append (p2)
                    withUnsafePointer (to: &copy_hint) { p3 in
                        _args.append (p3)
                        withUnsafePointer (to: &gstr_hint_string.content) { p4 in
                            _args.append (p4)
                            withUnsafePointer (to: &copy_usage_flags) { p5 in
                                _args.append (p5)
        
                                gi.object_method_bind_ptrcall (EditorScenePostImportPlugin.method_add_import_option_advanced, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                            }
                        }
                    }
                }
            }
        }
        
        #endif
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_import_options":
                return _EditorScenePostImportPlugin_proxy_get_import_options
            case "_get_internal_import_options":
                return _EditorScenePostImportPlugin_proxy_get_internal_import_options
            case "_get_internal_option_update_view_required":
                return _EditorScenePostImportPlugin_proxy_get_internal_option_update_view_required
            case "_get_internal_option_visibility":
                return _EditorScenePostImportPlugin_proxy_get_internal_option_visibility
            case "_get_option_visibility":
                return _EditorScenePostImportPlugin_proxy_get_option_visibility
            case "_internal_process":
                return _EditorScenePostImportPlugin_proxy_internal_process
            case "_post_process":
                return _EditorScenePostImportPlugin_proxy_post_process
            case "_pre_process":
                return _EditorScenePostImportPlugin_proxy_pre_process
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _EditorScenePostImportPlugin_proxy_get_import_options (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorScenePostImportPlugin>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._getImportOptions (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
}

func _EditorScenePostImportPlugin_proxy_get_internal_import_options (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorScenePostImportPlugin>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._getInternalImportOptions (category: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
}

func _EditorScenePostImportPlugin_proxy_get_internal_option_update_view_required (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorScenePostImportPlugin>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getInternalOptionUpdateViewRequired (category: args [0]!.assumingMemoryBound (to: Int32.self).pointee, option: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Variant
    ret.content = Variant.zero
}

func _EditorScenePostImportPlugin_proxy_get_internal_option_visibility (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorScenePostImportPlugin>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getInternalOptionVisibility (category: args [0]!.assumingMemoryBound (to: Int32.self).pointee, forAnimation: args [1]!.assumingMemoryBound (to: Bool.self).pointee, option: GString.stringFromGStringPtr (ptr: args [2]!) ?? "")
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Variant
    ret.content = Variant.zero
}

func _EditorScenePostImportPlugin_proxy_get_option_visibility (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorScenePostImportPlugin>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getOptionVisibility (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", forAnimation: args [1]!.assumingMemoryBound (to: Bool.self).pointee, option: GString.stringFromGStringPtr (ptr: args [2]!) ?? "")
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Variant
    ret.content = Variant.zero
}

func _EditorScenePostImportPlugin_proxy_internal_process (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorScenePostImportPlugin>.fromOpaque(instance).takeUnretainedValue()
    let resolved_1 = args [1]!.load (as: UnsafeRawPointer.self)
    let resolved_2 = args [2]!.load (as: UnsafeRawPointer.self)
    let resolved_3 = args [3]!.load (as: UnsafeRawPointer.self)
    
    swiftObject._internalProcess (category: args [0]!.assumingMemoryBound (to: Int32.self).pointee, baseNode: lookupLiveObject (handleAddress: resolved_1) as? Node ?? Node (nativeHandle: resolved_1), node: lookupLiveObject (handleAddress: resolved_2) as? Node ?? Node (nativeHandle: resolved_2), resource: lookupLiveObject (handleAddress: resolved_3) as? Resource ?? Resource (nativeHandle: resolved_3))
}

func _EditorScenePostImportPlugin_proxy_post_process (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorScenePostImportPlugin>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    
    swiftObject._postProcess (scene: lookupLiveObject (handleAddress: resolved_0) as? Node ?? Node (nativeHandle: resolved_0))
}

func _EditorScenePostImportPlugin_proxy_pre_process (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorScenePostImportPlugin>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    
    swiftObject._preProcess (scene: lookupLiveObject (handleAddress: resolved_0) as? Node ?? Node (nativeHandle: resolved_0))
}

