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


/// Plugin to control and modifying the process of importing a scene.
/// 
/// This plugin type exists to modify the process of importing scenes, allowing to change the content as well as add importer options at every stage of the process.
open class EditorScenePostImportPlugin: RefCounted {
    private static var className = StringName("EditorScenePostImportPlugin")
    override open class var godotClassName: StringName { className }
    public enum InternalImportCategory: Int64, CaseIterable {
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
    }
    
    /* Methods */
    fileprivate static let method__get_internal_import_options: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_internal_import_options")
        return withUnsafePointer(to: &EditorScenePostImportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Override to add internal import options. These will appear in the 3D scene import dialog. Add options via ``addImportOption(name:value:)`` and ``addImportOptionAdvanced(type:name:defaultValue:hint:hintString:usageFlags:)``.
    @_documentation(visibility: public)
    open func _getInternalImportOptions(category: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: category) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorScenePostImportPlugin.method__get_internal_import_options, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_internal_option_visibility: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_internal_option_visibility")
        return withUnsafePointer(to: &EditorScenePostImportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3811255416)!
            }
            
        }
        
    }()
    
    /// Should return `true` to show the given option, `false` to hide the given option, or `null` to ignore.
    @_documentation(visibility: public)
    open func _getInternalOptionVisibility(category: Int32, forAnimation: Bool, option: String) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: category) { pArg0 in
            withUnsafePointer(to: forAnimation) { pArg1 in
                let option = GString(option)
                withUnsafePointer(to: option.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorScenePostImportPlugin.method__get_internal_option_visibility, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method__get_internal_option_update_view_required: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_internal_option_update_view_required")
        return withUnsafePointer(to: &EditorScenePostImportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3957349696)!
            }
            
        }
        
    }()
    
    /// Should return `true` if the 3D view of the import dialog needs to update when changing the given option.
    @_documentation(visibility: public)
    open func _getInternalOptionUpdateViewRequired(category: Int32, option: String) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: category) { pArg0 in
            let option = GString(option)
            withUnsafePointer(to: option.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorScenePostImportPlugin.method__get_internal_option_update_view_required, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method__internal_process: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_internal_process")
        return withUnsafePointer(to: &EditorScenePostImportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3641982463)!
            }
            
        }
        
    }()
    
    /// Process a specific node or resource for a given category.
    @_documentation(visibility: public)
    open func _internalProcess(category: Int32, baseNode: Node?, node: Node?, resource: Resource?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: category) { pArg0 in
            withUnsafePointer(to: baseNode?.handle) { pArg1 in
                withUnsafePointer(to: node?.handle) { pArg2 in
                    withUnsafePointer(to: resource?.handle) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(EditorScenePostImportPlugin.method__internal_process, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_import_options: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_import_options")
        return withUnsafePointer(to: &EditorScenePostImportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Override to add general import options. These will appear in the main import dock on the editor. Add options via ``addImportOption(name:value:)`` and ``addImportOptionAdvanced(type:name:defaultValue:hint:hintString:usageFlags:)``.
    @_documentation(visibility: public)
    open func _getImportOptions(path: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorScenePostImportPlugin.method__get_import_options, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_option_visibility: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_option_visibility")
        return withUnsafePointer(to: &EditorScenePostImportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 298836892)!
            }
            
        }
        
    }()
    
    /// Should return `true` to show the given option, `false` to hide the given option, or `null` to ignore.
    @_documentation(visibility: public)
    open func _getOptionVisibility(path: String, forAnimation: Bool, option: String) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: forAnimation) { pArg1 in
                let option = GString(option)
                withUnsafePointer(to: option.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorScenePostImportPlugin.method__get_option_visibility, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method__pre_process: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_pre_process")
        return withUnsafePointer(to: &EditorScenePostImportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1078189570)!
            }
            
        }
        
    }()
    
    /// Pre Process the scene. This function is called right after the scene format loader loaded the scene and no changes have been made.
    /// 
    /// Pre process may be used to adjust internal import options in the `"nodes"`, `"meshes"`, `"animations"` or `"materials"` keys inside `get_option_value("_subresources")`.
    /// 
    @_documentation(visibility: public)
    open func _preProcess(scene: Node?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: scene?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorScenePostImportPlugin.method__pre_process, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__post_process: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_post_process")
        return withUnsafePointer(to: &EditorScenePostImportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1078189570)!
            }
            
        }
        
    }()
    
    /// Post process the scene. This function is called after the final scene has been configured.
    @_documentation(visibility: public)
    open func _postProcess(scene: Node?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: scene?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorScenePostImportPlugin.method__post_process, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_option_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_option_value")
        return withUnsafePointer(to: &EditorScenePostImportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2760726917)!
            }
            
        }
        
    }()
    
    /// Query the value of an option. This function can only be called from those querying visibility, or processing.
    public final func getOptionValue(name: StringName) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorScenePostImportPlugin.method_get_option_value, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_add_import_option: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_import_option")
        return withUnsafePointer(to: &EditorScenePostImportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 402577236)!
            }
            
        }
        
    }()
    
    /// Add a specific import option (name and default value only). This function can only be called from ``_getImportOptions(path:)`` and ``_getInternalImportOptions(category:)``.
    public final func addImportOption(name: String, value: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: value.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorScenePostImportPlugin.method_add_import_option, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_import_option_advanced: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_import_option_advanced")
        return withUnsafePointer(to: &EditorScenePostImportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3674075649)!
            }
            
        }
        
    }()
    
    /// Add a specific import option. This function can only be called from ``_getImportOptions(path:)`` and ``_getInternalImportOptions(category:)``.
    public final func addImportOptionAdvanced(type: Variant.GType, name: String, defaultValue: Variant?, hint: PropertyHint = .none, hintString: String = "", usageFlags: Int32 = 6) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: type.rawValue) { pArg0 in
            let name = GString(name)
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: defaultValue.content) { pArg2 in
                    withUnsafePointer(to: hint.rawValue) { pArg3 in
                        let hintString = GString(hintString)
                        withUnsafePointer(to: hintString.content) { pArg4 in
                            withUnsafePointer(to: usageFlags) { pArg5 in
                                withUnsafePointer(to: UnsafeRawPointersN6(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5)) { pArgs in
                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 6) { pArgs in
                                        gi.object_method_bind_ptrcall(EditorScenePostImportPlugin.method_add_import_option_advanced, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
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
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorScenePostImportPlugin else { return }
    swiftObject._getImportOptions (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
}

func _EditorScenePostImportPlugin_proxy_get_internal_import_options (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorScenePostImportPlugin else { return }
    swiftObject._getInternalImportOptions (category: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
}

func _EditorScenePostImportPlugin_proxy_get_internal_option_update_view_required (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorScenePostImportPlugin else { return }
    let ret = swiftObject._getInternalOptionUpdateViewRequired (category: args [0]!.assumingMemoryBound (to: Int32.self).pointee, option: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
    retPtr!.storeBytes(of: ret.content, as: Variant.ContentType.self)
    ret?.content = Variant.zero
}

func _EditorScenePostImportPlugin_proxy_get_internal_option_visibility (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorScenePostImportPlugin else { return }
    let ret = swiftObject._getInternalOptionVisibility (category: args [0]!.assumingMemoryBound (to: Int32.self).pointee, forAnimation: args [1]!.assumingMemoryBound (to: Bool.self).pointee, option: GString.stringFromGStringPtr (ptr: args [2]!) ?? "")
    retPtr!.storeBytes(of: ret.content, as: Variant.ContentType.self)
    ret?.content = Variant.zero
}

func _EditorScenePostImportPlugin_proxy_get_option_visibility (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorScenePostImportPlugin else { return }
    let ret = swiftObject._getOptionVisibility (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", forAnimation: args [1]!.assumingMemoryBound (to: Bool.self).pointee, option: GString.stringFromGStringPtr (ptr: args [2]!) ?? "")
    retPtr!.storeBytes(of: ret.content, as: Variant.ContentType.self)
    ret?.content = Variant.zero
}

func _EditorScenePostImportPlugin_proxy_internal_process (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorScenePostImportPlugin else { return }
    let resolved_1 = args [1]!.load (as: UnsafeRawPointer?.self)
    let resolved_2 = args [2]!.load (as: UnsafeRawPointer?.self)
    let resolved_3 = args [3]!.load (as: UnsafeRawPointer?.self)
    
    swiftObject._internalProcess (category: args [0]!.assumingMemoryBound (to: Int32.self).pointee, baseNode: resolved_1 == nil ? nil : lookupObject (nativeHandle: resolved_1!, ownsRef: false) as? Node, node: resolved_2 == nil ? nil : lookupObject (nativeHandle: resolved_2!, ownsRef: false) as? Node, resource: resolved_3 == nil ? nil : lookupObject (nativeHandle: resolved_3!, ownsRef: false) as? Resource)
}

func _EditorScenePostImportPlugin_proxy_post_process (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorScenePostImportPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    swiftObject._postProcess (scene: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? Node)
}

func _EditorScenePostImportPlugin_proxy_pre_process (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorScenePostImportPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    swiftObject._preProcess (scene: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? Node)
}

