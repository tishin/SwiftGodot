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


open class ScriptExtension: Script {
    private static var className = StringName("ScriptExtension")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__editor_can_reload_from_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_editor_can_reload_from_file")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _editorCanReloadFromFile() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ScriptExtension.method__editor_can_reload_from_file, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__can_instantiate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_can_instantiate")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _canInstantiate() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ScriptExtension.method__can_instantiate, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_base_script: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_base_script")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 278624046)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getBaseScript() -> Script? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(ScriptExtension.method__get_base_script, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__get_global_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_global_name")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getGlobalName() -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(ScriptExtension.method__get_global_name, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__inherits_script: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_inherits_script")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3669307804)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _inheritsScript(_ script: Script?) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: script?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptExtension.method__inherits_script, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_instance_base_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_instance_base_type")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getInstanceBaseType() -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(ScriptExtension.method__get_instance_base_type, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__instance_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_instance_create")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1107568780)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _instanceCreate(forObject: Object?) -> OpaquePointer? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: OpaquePointer? = nil
        withUnsafePointer(to: forObject?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptExtension.method__instance_create, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__placeholder_instance_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_placeholder_instance_create")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1107568780)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _placeholderInstanceCreate(forObject: Object?) -> OpaquePointer? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: OpaquePointer? = nil
        withUnsafePointer(to: forObject?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptExtension.method__placeholder_instance_create, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__instance_has: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_instance_has")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 397768994)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _instanceHas(object: Object?) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: object?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptExtension.method__instance_has, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__has_source_code: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_has_source_code")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _hasSourceCode() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ScriptExtension.method__has_source_code, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_source_code: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_source_code")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getSourceCode() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(ScriptExtension.method__get_source_code, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__set_source_code: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_source_code")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _setSourceCode(_ code: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let code = GString(code)
        withUnsafePointer(to: code.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptExtension.method__set_source_code, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__reload: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_reload")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1413768114)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _reload(keepState: Bool) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: keepState) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptExtension.method__reload, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__get_doc_class_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_doc_class_name")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getDocClassName() -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(ScriptExtension.method__get_doc_class_name, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__get_documentation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_documentation")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getDocumentation() -> TypedArray<VariantDictionary> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(ScriptExtension.method__get_documentation, handle, nil, &_result)
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method__get_class_icon_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_class_icon_path")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getClassIconPath() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(ScriptExtension.method__get_class_icon_path, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__has_method: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_has_method")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2619796661)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _hasMethod(_ method: StringName) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: method.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptExtension.method__has_method, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__has_static_method: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_has_static_method")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2619796661)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _hasStaticMethod(_ method: StringName) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: method.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptExtension.method__has_static_method, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_script_method_argument_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_script_method_argument_count")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2760726917)!
            }
            
        }
        
    }()
    
    /// Return the expected argument count for the given `method`, or `null` if it can't be determined (which will then fall back to the default behavior).
    @_documentation(visibility: public)
    open func _getScriptMethodArgumentCount(method: StringName) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: method.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptExtension.method__get_script_method_argument_count, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method__get_method_info: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_method_info")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4028089122)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getMethodInfo(method: StringName) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: method.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptExtension.method__get_method_info, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__is_tool: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_tool")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _isTool() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ScriptExtension.method__is_tool, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__is_valid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_valid")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _isValid() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ScriptExtension.method__is_valid, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__is_abstract: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_abstract")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the script is an abstract script. An abstract script does not have a constructor and cannot be instantiated.
    @_documentation(visibility: public)
    open func _isAbstract() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ScriptExtension.method__is_abstract, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_language: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_language")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3096237657)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getLanguage() -> ScriptLanguage? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(ScriptExtension.method__get_language, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__has_script_signal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_has_script_signal")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2619796661)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _hasScriptSignal(_ signal: StringName) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: signal.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptExtension.method__has_script_signal, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_script_signal_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_script_signal_list")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getScriptSignalList() -> TypedArray<VariantDictionary> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(ScriptExtension.method__get_script_signal_list, handle, nil, &_result)
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method__has_property_default_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_has_property_default_value")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2619796661)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _hasPropertyDefaultValue(property: StringName) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: property.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptExtension.method__has_property_default_value, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_property_default_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_property_default_value")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2760726917)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getPropertyDefaultValue(property: StringName) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: property.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptExtension.method__get_property_default_value, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method__update_exports: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_update_exports")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _updateExports() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ScriptExtension.method__update_exports, handle, nil, nil)
        
    }
    
    fileprivate static let method__get_script_method_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_script_method_list")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getScriptMethodList() -> TypedArray<VariantDictionary> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(ScriptExtension.method__get_script_method_list, handle, nil, &_result)
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method__get_script_property_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_script_property_list")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getScriptPropertyList() -> TypedArray<VariantDictionary> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(ScriptExtension.method__get_script_property_list, handle, nil, &_result)
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method__get_member_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_member_line")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2458036349)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getMemberLine(member: StringName) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: member.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptExtension.method__get_member_line, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_constants: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_constants")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3102165223)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getConstants() -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: VariantDictionary = VariantDictionary ()
        gi.object_method_bind_ptrcall(ScriptExtension.method__get_constants, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__get_members: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_members")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getMembers() -> TypedArray<StringName> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(ScriptExtension.method__get_members, handle, nil, &_result)
        return TypedArray<StringName>(takingOver: _result)
    }
    
    fileprivate static let method__is_placeholder_fallback_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_placeholder_fallback_enabled")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _isPlaceholderFallbackEnabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ScriptExtension.method__is_placeholder_fallback_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_rpc_config: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_rpc_config")
        return withUnsafePointer(to: &ScriptExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1214101251)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getRpcConfig() -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        gi.object_method_bind_ptrcall(ScriptExtension.method__get_rpc_config, handle, nil, &_result)
        return Variant(takingOver: _result)
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_can_instantiate":
                return _ScriptExtension_proxy_can_instantiate
            case "_editor_can_reload_from_file":
                return _ScriptExtension_proxy_editor_can_reload_from_file
            case "_get_base_script":
                return _ScriptExtension_proxy_get_base_script
            case "_get_class_icon_path":
                return _ScriptExtension_proxy_get_class_icon_path
            case "_get_constants":
                return _ScriptExtension_proxy_get_constants
            case "_get_doc_class_name":
                return _ScriptExtension_proxy_get_doc_class_name
            case "_get_documentation":
                return _ScriptExtension_proxy_get_documentation
            case "_get_global_name":
                return _ScriptExtension_proxy_get_global_name
            case "_get_instance_base_type":
                return _ScriptExtension_proxy_get_instance_base_type
            case "_get_language":
                return _ScriptExtension_proxy_get_language
            case "_get_member_line":
                return _ScriptExtension_proxy_get_member_line
            case "_get_members":
                return _ScriptExtension_proxy_get_members
            case "_get_method_info":
                return _ScriptExtension_proxy_get_method_info
            case "_get_property_default_value":
                return _ScriptExtension_proxy_get_property_default_value
            case "_get_rpc_config":
                return _ScriptExtension_proxy_get_rpc_config
            case "_get_script_method_argument_count":
                return _ScriptExtension_proxy_get_script_method_argument_count
            case "_get_script_method_list":
                return _ScriptExtension_proxy_get_script_method_list
            case "_get_script_property_list":
                return _ScriptExtension_proxy_get_script_property_list
            case "_get_script_signal_list":
                return _ScriptExtension_proxy_get_script_signal_list
            case "_get_source_code":
                return _ScriptExtension_proxy_get_source_code
            case "_has_method":
                return _ScriptExtension_proxy_has_method
            case "_has_property_default_value":
                return _ScriptExtension_proxy_has_property_default_value
            case "_has_script_signal":
                return _ScriptExtension_proxy_has_script_signal
            case "_has_source_code":
                return _ScriptExtension_proxy_has_source_code
            case "_has_static_method":
                return _ScriptExtension_proxy_has_static_method
            case "_inherits_script":
                return _ScriptExtension_proxy_inherits_script
            case "_instance_create":
                return _ScriptExtension_proxy_instance_create
            case "_instance_has":
                return _ScriptExtension_proxy_instance_has
            case "_is_abstract":
                return _ScriptExtension_proxy_is_abstract
            case "_is_placeholder_fallback_enabled":
                return _ScriptExtension_proxy_is_placeholder_fallback_enabled
            case "_is_tool":
                return _ScriptExtension_proxy_is_tool
            case "_is_valid":
                return _ScriptExtension_proxy_is_valid
            case "_placeholder_instance_create":
                return _ScriptExtension_proxy_placeholder_instance_create
            case "_reload":
                return _ScriptExtension_proxy_reload
            case "_set_source_code":
                return _ScriptExtension_proxy_set_source_code
            case "_update_exports":
                return _ScriptExtension_proxy_update_exports
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _ScriptExtension_proxy_can_instantiate (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._canInstantiate ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ScriptExtension_proxy_editor_can_reload_from_file (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._editorCanReloadFromFile ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ScriptExtension_proxy_get_base_script (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._getBaseScript ()
    retPtr!.storeBytes (of: ret?.handle, as:  GodotNativeObjectPointer?.self) // Script
}

func _ScriptExtension_proxy_get_class_icon_path (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = GString (swiftObject._getClassIconPath ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _ScriptExtension_proxy_get_constants (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._getConstants ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Dictionary
    ret.content = VariantDictionary.zero
}

func _ScriptExtension_proxy_get_doc_class_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._getDocClassName ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // StringName
    ret.content = StringName.zero
}

func _ScriptExtension_proxy_get_documentation (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._getDocumentation ()
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Dictionary
}

func _ScriptExtension_proxy_get_global_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._getGlobalName ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // StringName
    ret.content = StringName.zero
}

func _ScriptExtension_proxy_get_instance_base_type (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._getInstanceBaseType ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // StringName
    ret.content = StringName.zero
}

func _ScriptExtension_proxy_get_language (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._getLanguage ()
    retPtr!.storeBytes (of: ret?.handle, as:  GodotNativeObjectPointer?.self) // ScriptLanguage
}

func _ScriptExtension_proxy_get_member_line (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._getMemberLine (member: StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _ScriptExtension_proxy_get_members (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._getMembers ()
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::StringName
}

func _ScriptExtension_proxy_get_method_info (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._getMethodInfo (method: StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Dictionary
    ret.content = VariantDictionary.zero
}

func _ScriptExtension_proxy_get_property_default_value (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._getPropertyDefaultValue (property: StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes(of: ret.content, as: Variant.ContentType.self)
    ret?.content = Variant.zero
}

func _ScriptExtension_proxy_get_rpc_config (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._getRpcConfig ()
    retPtr!.storeBytes(of: ret.content, as: Variant.ContentType.self)
    ret?.content = Variant.zero
}

func _ScriptExtension_proxy_get_script_method_argument_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._getScriptMethodArgumentCount (method: StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes(of: ret.content, as: Variant.ContentType.self)
    ret?.content = Variant.zero
}

func _ScriptExtension_proxy_get_script_method_list (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._getScriptMethodList ()
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Dictionary
}

func _ScriptExtension_proxy_get_script_property_list (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._getScriptPropertyList ()
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Dictionary
}

func _ScriptExtension_proxy_get_script_signal_list (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._getScriptSignalList ()
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Dictionary
}

func _ScriptExtension_proxy_get_source_code (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = GString (swiftObject._getSourceCode ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _ScriptExtension_proxy_has_method (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._hasMethod (StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ScriptExtension_proxy_has_property_default_value (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._hasPropertyDefaultValue (property: StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ScriptExtension_proxy_has_script_signal (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._hasScriptSignal (StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ScriptExtension_proxy_has_source_code (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._hasSourceCode ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ScriptExtension_proxy_has_static_method (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._hasStaticMethod (StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ScriptExtension_proxy_inherits_script (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._inheritsScript (resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Script)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ScriptExtension_proxy_instance_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._instanceCreate (forObject: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Object)
    retPtr!.storeBytes (of: ret, as: OpaquePointer?.self)
}

func _ScriptExtension_proxy_instance_has (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._instanceHas (object: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Object)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ScriptExtension_proxy_is_abstract (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._isAbstract ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ScriptExtension_proxy_is_placeholder_fallback_enabled (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._isPlaceholderFallbackEnabled ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ScriptExtension_proxy_is_tool (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._isTool ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ScriptExtension_proxy_is_valid (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._isValid ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ScriptExtension_proxy_placeholder_instance_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._placeholderInstanceCreate (forObject: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Object)
    retPtr!.storeBytes (of: ret, as: OpaquePointer?.self)
}

func _ScriptExtension_proxy_reload (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    let ret = swiftObject._reload (keepState: args [0]!.assumingMemoryBound (to: Bool.self).pointee)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _ScriptExtension_proxy_set_source_code (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    swiftObject._setSourceCode (GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
}

func _ScriptExtension_proxy_update_exports (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptExtension else { return }
    swiftObject._updateExports ()
}

