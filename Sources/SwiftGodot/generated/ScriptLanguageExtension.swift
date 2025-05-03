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


open class ScriptLanguageExtension: ScriptLanguage {
    private static var className = StringName("ScriptLanguageExtension")
    override open class var godotClassName: StringName { className }
    public enum LookupResultType: Int64, CaseIterable {
        /// 
        case scriptLocation = 0 // LOOKUP_RESULT_SCRIPT_LOCATION
        /// 
        case `class` = 1 // LOOKUP_RESULT_CLASS
        /// 
        case classConstant = 2 // LOOKUP_RESULT_CLASS_CONSTANT
        /// 
        case classProperty = 3 // LOOKUP_RESULT_CLASS_PROPERTY
        /// 
        case classMethod = 4 // LOOKUP_RESULT_CLASS_METHOD
        /// 
        case classSignal = 5 // LOOKUP_RESULT_CLASS_SIGNAL
        /// 
        case classEnum = 6 // LOOKUP_RESULT_CLASS_ENUM
        /// 
        case classTbdGlobalscope = 7 // LOOKUP_RESULT_CLASS_TBD_GLOBALSCOPE
        /// 
        case classAnnotation = 8 // LOOKUP_RESULT_CLASS_ANNOTATION
        /// 
        case localConstant = 9 // LOOKUP_RESULT_LOCAL_CONSTANT
        /// 
        case localVariable = 10 // LOOKUP_RESULT_LOCAL_VARIABLE
        /// 
        case max = 11 // LOOKUP_RESULT_MAX
    }
    
    public enum CodeCompletionLocation: Int64, CaseIterable {
        /// The option is local to the location of the code completion query - e.g. a local variable. Subsequent value of location represent options from the outer class, the exact value represent how far they are (in terms of inner classes).
        case local = 0 // LOCATION_LOCAL
        /// The option is from the containing class or a parent class, relative to the location of the code completion query. Perform a bitwise OR with the class depth (e.g. `0` for the local class, `1` for the parent, `2` for the grandparent, etc.) to store the depth of an option in the class or a parent class.
        case parentMask = 256 // LOCATION_PARENT_MASK
        /// The option is from user code which is not local and not in a derived class (e.g. Autoload Singletons).
        case otherUserCode = 512 // LOCATION_OTHER_USER_CODE
        /// The option is from other engine code, not covered by the other enum constants - e.g. built-in classes.
        case other = 1024 // LOCATION_OTHER
    }
    
    public enum CodeCompletionKind: Int64, CaseIterable {
        /// 
        case `class` = 0 // CODE_COMPLETION_KIND_CLASS
        /// 
        case function = 1 // CODE_COMPLETION_KIND_FUNCTION
        /// 
        case signal = 2 // CODE_COMPLETION_KIND_SIGNAL
        /// 
        case variable = 3 // CODE_COMPLETION_KIND_VARIABLE
        /// 
        case member = 4 // CODE_COMPLETION_KIND_MEMBER
        /// 
        case `enum` = 5 // CODE_COMPLETION_KIND_ENUM
        /// 
        case constant = 6 // CODE_COMPLETION_KIND_CONSTANT
        /// 
        case nodePath = 7 // CODE_COMPLETION_KIND_NODE_PATH
        /// 
        case filePath = 8 // CODE_COMPLETION_KIND_FILE_PATH
        /// 
        case plainText = 9 // CODE_COMPLETION_KIND_PLAIN_TEXT
        /// 
        case max = 10 // CODE_COMPLETION_KIND_MAX
    }
    
    /* Methods */
    fileprivate static let method__get_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_name")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getName() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__get_name, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__init: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_init")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _init() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__init, handle, nil, nil)
        
    }
    
    fileprivate static let method__get_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_type")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getType() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__get_type, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__get_extension: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_extension")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getExtension() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__get_extension, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__finish: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_finish")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _finish() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__finish, handle, nil, nil)
        
    }
    
    fileprivate static let method__get_reserved_words: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_reserved_words")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getReservedWords() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__get_reserved_words, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__is_control_flow_keyword: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_control_flow_keyword")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _isControlFlowKeyword(_ keyword: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let keyword = GString(keyword)
        withUnsafePointer(to: keyword.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__is_control_flow_keyword, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_comment_delimiters: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_comment_delimiters")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getCommentDelimiters() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__get_comment_delimiters, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__get_doc_comment_delimiters: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_doc_comment_delimiters")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getDocCommentDelimiters() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__get_doc_comment_delimiters, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__get_string_delimiters: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_string_delimiters")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getStringDelimiters() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__get_string_delimiters, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__make_template: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_make_template")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3583744548)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _makeTemplate(_ template: String, className: String, baseClassName: String) -> Script? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        let template = GString(template)
        withUnsafePointer(to: template.content) { pArg0 in
            let className = GString(className)
            withUnsafePointer(to: className.content) { pArg1 in
                let baseClassName = GString(baseClassName)
                withUnsafePointer(to: baseClassName.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__make_template, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__get_built_in_templates: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_built_in_templates")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3147814860)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getBuiltInTemplates(object: StringName) -> TypedArray<VariantDictionary> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        withUnsafePointer(to: object.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__get_built_in_templates, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method__is_using_templates: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_using_templates")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _isUsingTemplates() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__is_using_templates, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__validate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_validate")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1697887509)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _validate(script: String, path: String, validateFunctions: Bool, validateErrors: Bool, validateWarnings: Bool, validateSafeLines: Bool) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: VariantDictionary = VariantDictionary ()
        let script = GString(script)
        withUnsafePointer(to: script.content) { pArg0 in
            let path = GString(path)
            withUnsafePointer(to: path.content) { pArg1 in
                withUnsafePointer(to: validateFunctions) { pArg2 in
                    withUnsafePointer(to: validateErrors) { pArg3 in
                        withUnsafePointer(to: validateWarnings) { pArg4 in
                            withUnsafePointer(to: validateSafeLines) { pArg5 in
                                withUnsafePointer(to: UnsafeRawPointersN6(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5)) { pArgs in
                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 6) { pArgs in
                                        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__validate, handle, pArgs, &_result.content)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__validate_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_validate_path")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3135753539)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _validatePath(_ path: String) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__validate_path, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__create_script: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_create_script")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1981248198)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _createScript() -> Object? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__create_script, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__has_named_classes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_has_named_classes")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _hasNamedClasses() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__has_named_classes, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__supports_builtin_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_supports_builtin_mode")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _supportsBuiltinMode() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__supports_builtin_mode, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__supports_documentation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_supports_documentation")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _supportsDocumentation() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__supports_documentation, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__can_inherit_from_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_can_inherit_from_file")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _canInheritFromFile() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__can_inherit_from_file, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__find_function: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_find_function")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2878152881)!
            }
            
        }
        
    }()
    
    /// Returns the line where the function is defined in the code, or `-1` if the function is not present.
    @_documentation(visibility: public)
    open func _findFunction(_ function: String, code: String) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        let function = GString(function)
        withUnsafePointer(to: function.content) { pArg0 in
            let code = GString(code)
            withUnsafePointer(to: code.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__find_function, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__make_function: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_make_function")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1243061914)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _makeFunction(className: String, functionName: String, functionArgs: PackedStringArray) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        let className = GString(className)
        withUnsafePointer(to: className.content) { pArg0 in
            let functionName = GString(functionName)
            withUnsafePointer(to: functionName.content) { pArg1 in
                withUnsafePointer(to: functionArgs.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__make_function, handle, pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__can_make_function: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_can_make_function")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _canMakeFunction() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__can_make_function, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__open_in_external_editor: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_open_in_external_editor")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 552845695)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _openInExternalEditor(script: Script?, line: Int32, column: Int32) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: script?.handle) { pArg0 in
            withUnsafePointer(to: line) { pArg1 in
                withUnsafePointer(to: column) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__open_in_external_editor, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__overrides_external_editor: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_overrides_external_editor")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _overridesExternalEditor() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__overrides_external_editor, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__preferred_file_name_casing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_preferred_file_name_casing")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2969522789)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _preferredFileNameCasing() -> ScriptLanguage.ScriptNameCasing {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__preferred_file_name_casing, handle, nil, &_result)
        return ScriptLanguage.ScriptNameCasing (rawValue: _result)!
    }
    
    fileprivate static let method__complete_code: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_complete_code")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 950756616)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _completeCode(_ code: String, path: String, owner: Object?) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: VariantDictionary = VariantDictionary ()
        let code = GString(code)
        withUnsafePointer(to: code.content) { pArg0 in
            let path = GString(path)
            withUnsafePointer(to: path.content) { pArg1 in
                withUnsafePointer(to: owner?.handle) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__complete_code, handle, pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__lookup_code: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_lookup_code")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3143837309)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _lookupCode(_ code: String, symbol: String, path: String, owner: Object?) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: VariantDictionary = VariantDictionary ()
        let code = GString(code)
        withUnsafePointer(to: code.content) { pArg0 in
            let symbol = GString(symbol)
            withUnsafePointer(to: symbol.content) { pArg1 in
                let path = GString(path)
                withUnsafePointer(to: path.content) { pArg2 in
                    withUnsafePointer(to: owner?.handle) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__lookup_code, handle, pArgs, &_result.content)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__auto_indent_code: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_auto_indent_code")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2531480354)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _autoIndentCode(_ code: String, fromLine: Int32, toLine: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        let code = GString(code)
        withUnsafePointer(to: code.content) { pArg0 in
            withUnsafePointer(to: fromLine) { pArg1 in
                withUnsafePointer(to: toLine) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__auto_indent_code, handle, pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__add_global_constant: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_add_global_constant")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3776071444)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _addGlobalConstant(name: StringName, value: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: value.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__add_global_constant, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__add_named_global_constant: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_add_named_global_constant")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3776071444)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _addNamedGlobalConstant(name: StringName, value: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: value.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__add_named_global_constant, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__remove_named_global_constant: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_remove_named_global_constant")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _removeNamedGlobalConstant(name: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__remove_named_global_constant, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__thread_enter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_thread_enter")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _threadEnter() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__thread_enter, handle, nil, nil)
        
    }
    
    fileprivate static let method__thread_exit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_thread_exit")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _threadExit() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__thread_exit, handle, nil, nil)
        
    }
    
    fileprivate static let method__debug_get_error: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_debug_get_error")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _debugGetError() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__debug_get_error, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__debug_get_stack_level_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_debug_get_stack_level_count")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _debugGetStackLevelCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__debug_get_stack_level_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__debug_get_stack_level_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_debug_get_stack_level_line")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _debugGetStackLevelLine(level: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: level) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__debug_get_stack_level_line, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__debug_get_stack_level_function: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_debug_get_stack_level_function")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _debugGetStackLevelFunction(level: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: level) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__debug_get_stack_level_function, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__debug_get_stack_level_source: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_debug_get_stack_level_source")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the source associated with a given debug stack position.
    @_documentation(visibility: public)
    open func _debugGetStackLevelSource(level: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: level) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__debug_get_stack_level_source, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__debug_get_stack_level_locals: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_debug_get_stack_level_locals")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 335235777)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _debugGetStackLevelLocals(level: Int32, maxSubitems: Int32, maxDepth: Int32) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: level) { pArg0 in
            withUnsafePointer(to: maxSubitems) { pArg1 in
                withUnsafePointer(to: maxDepth) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__debug_get_stack_level_locals, handle, pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__debug_get_stack_level_members: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_debug_get_stack_level_members")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 335235777)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _debugGetStackLevelMembers(level: Int32, maxSubitems: Int32, maxDepth: Int32) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: level) { pArg0 in
            withUnsafePointer(to: maxSubitems) { pArg1 in
                withUnsafePointer(to: maxDepth) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__debug_get_stack_level_members, handle, pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__debug_get_stack_level_instance: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_debug_get_stack_level_instance")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3744713108)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _debugGetStackLevelInstance(level: Int32) -> OpaquePointer? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: OpaquePointer? = nil
        withUnsafePointer(to: level) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__debug_get_stack_level_instance, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__debug_get_globals: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_debug_get_globals")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4123630098)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _debugGetGlobals(maxSubitems: Int32, maxDepth: Int32) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: maxSubitems) { pArg0 in
            withUnsafePointer(to: maxDepth) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__debug_get_globals, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__debug_parse_stack_level_expression: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_debug_parse_stack_level_expression")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1135811067)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _debugParseStackLevelExpression(level: Int32, expression: String, maxSubitems: Int32, maxDepth: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: level) { pArg0 in
            let expression = GString(expression)
            withUnsafePointer(to: expression.content) { pArg1 in
                withUnsafePointer(to: maxSubitems) { pArg2 in
                    withUnsafePointer(to: maxDepth) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__debug_parse_stack_level_expression, handle, pArgs, &_result.content)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__debug_get_current_stack_info: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_debug_get_current_stack_info")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _debugGetCurrentStackInfo() -> TypedArray<VariantDictionary> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__debug_get_current_stack_info, handle, nil, &_result)
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method__reload_all_scripts: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_reload_all_scripts")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _reloadAllScripts() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__reload_all_scripts, handle, nil, nil)
        
    }
    
    fileprivate static let method__reload_scripts: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_reload_scripts")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3156113851)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _reloadScripts(_ scripts: VariantArray, softReload: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: scripts.content) { pArg0 in
            withUnsafePointer(to: softReload) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__reload_scripts, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__reload_tool_script: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_reload_tool_script")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1957307671)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _reloadToolScript(_ script: Script?, softReload: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: script?.handle) { pArg0 in
            withUnsafePointer(to: softReload) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__reload_tool_script, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_recognized_extensions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_recognized_extensions")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getRecognizedExtensions() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__get_recognized_extensions, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__get_public_functions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_public_functions")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getPublicFunctions() -> TypedArray<VariantDictionary> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__get_public_functions, handle, nil, &_result)
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method__get_public_constants: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_public_constants")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3102165223)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getPublicConstants() -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: VariantDictionary = VariantDictionary ()
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__get_public_constants, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__get_public_annotations: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_public_annotations")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getPublicAnnotations() -> TypedArray<VariantDictionary> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__get_public_annotations, handle, nil, &_result)
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method__profiling_start: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_profiling_start")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _profilingStart() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__profiling_start, handle, nil, nil)
        
    }
    
    fileprivate static let method__profiling_stop: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_profiling_stop")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _profilingStop() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__profiling_stop, handle, nil, nil)
        
    }
    
    fileprivate static let method__profiling_set_save_native_calls: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_profiling_set_save_native_calls")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _profilingSetSaveNativeCalls(enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__profiling_set_save_native_calls, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__frame: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_frame")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _frame() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__frame, handle, nil, nil)
        
    }
    
    fileprivate static let method__handles_global_class_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_handles_global_class_type")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _handlesGlobalClassType(_ type: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let type = GString(type)
        withUnsafePointer(to: type.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__handles_global_class_type, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_global_class_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_global_class_name")
        return withUnsafePointer(to: &ScriptLanguageExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2248993622)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getGlobalClassName(path: String) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: VariantDictionary = VariantDictionary ()
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScriptLanguageExtension.method__get_global_class_name, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_add_global_constant":
                return _ScriptLanguageExtension_proxy_add_global_constant
            case "_add_named_global_constant":
                return _ScriptLanguageExtension_proxy_add_named_global_constant
            case "_auto_indent_code":
                return _ScriptLanguageExtension_proxy_auto_indent_code
            case "_can_inherit_from_file":
                return _ScriptLanguageExtension_proxy_can_inherit_from_file
            case "_can_make_function":
                return _ScriptLanguageExtension_proxy_can_make_function
            case "_complete_code":
                return _ScriptLanguageExtension_proxy_complete_code
            case "_create_script":
                return _ScriptLanguageExtension_proxy_create_script
            case "_debug_get_current_stack_info":
                return _ScriptLanguageExtension_proxy_debug_get_current_stack_info
            case "_debug_get_error":
                return _ScriptLanguageExtension_proxy_debug_get_error
            case "_debug_get_globals":
                return _ScriptLanguageExtension_proxy_debug_get_globals
            case "_debug_get_stack_level_count":
                return _ScriptLanguageExtension_proxy_debug_get_stack_level_count
            case "_debug_get_stack_level_function":
                return _ScriptLanguageExtension_proxy_debug_get_stack_level_function
            case "_debug_get_stack_level_instance":
                return _ScriptLanguageExtension_proxy_debug_get_stack_level_instance
            case "_debug_get_stack_level_line":
                return _ScriptLanguageExtension_proxy_debug_get_stack_level_line
            case "_debug_get_stack_level_locals":
                return _ScriptLanguageExtension_proxy_debug_get_stack_level_locals
            case "_debug_get_stack_level_members":
                return _ScriptLanguageExtension_proxy_debug_get_stack_level_members
            case "_debug_get_stack_level_source":
                return _ScriptLanguageExtension_proxy_debug_get_stack_level_source
            case "_debug_parse_stack_level_expression":
                return _ScriptLanguageExtension_proxy_debug_parse_stack_level_expression
            case "_find_function":
                return _ScriptLanguageExtension_proxy_find_function
            case "_finish":
                return _ScriptLanguageExtension_proxy_finish
            case "_frame":
                return _ScriptLanguageExtension_proxy_frame
            case "_get_built_in_templates":
                return _ScriptLanguageExtension_proxy_get_built_in_templates
            case "_get_comment_delimiters":
                return _ScriptLanguageExtension_proxy_get_comment_delimiters
            case "_get_doc_comment_delimiters":
                return _ScriptLanguageExtension_proxy_get_doc_comment_delimiters
            case "_get_extension":
                return _ScriptLanguageExtension_proxy_get_extension
            case "_get_global_class_name":
                return _ScriptLanguageExtension_proxy_get_global_class_name
            case "_get_name":
                return _ScriptLanguageExtension_proxy_get_name
            case "_get_public_annotations":
                return _ScriptLanguageExtension_proxy_get_public_annotations
            case "_get_public_constants":
                return _ScriptLanguageExtension_proxy_get_public_constants
            case "_get_public_functions":
                return _ScriptLanguageExtension_proxy_get_public_functions
            case "_get_recognized_extensions":
                return _ScriptLanguageExtension_proxy_get_recognized_extensions
            case "_get_reserved_words":
                return _ScriptLanguageExtension_proxy_get_reserved_words
            case "_get_string_delimiters":
                return _ScriptLanguageExtension_proxy_get_string_delimiters
            case "_get_type":
                return _ScriptLanguageExtension_proxy_get_type
            case "_handles_global_class_type":
                return _ScriptLanguageExtension_proxy_handles_global_class_type
            case "_has_named_classes":
                return _ScriptLanguageExtension_proxy_has_named_classes
            case "_init":
                return _ScriptLanguageExtension_proxy_init
            case "_is_control_flow_keyword":
                return _ScriptLanguageExtension_proxy_is_control_flow_keyword
            case "_is_using_templates":
                return _ScriptLanguageExtension_proxy_is_using_templates
            case "_lookup_code":
                return _ScriptLanguageExtension_proxy_lookup_code
            case "_make_function":
                return _ScriptLanguageExtension_proxy_make_function
            case "_make_template":
                return _ScriptLanguageExtension_proxy_make_template
            case "_open_in_external_editor":
                return _ScriptLanguageExtension_proxy_open_in_external_editor
            case "_overrides_external_editor":
                return _ScriptLanguageExtension_proxy_overrides_external_editor
            case "_preferred_file_name_casing":
                return _ScriptLanguageExtension_proxy_preferred_file_name_casing
            case "_profiling_set_save_native_calls":
                return _ScriptLanguageExtension_proxy_profiling_set_save_native_calls
            case "_profiling_start":
                return _ScriptLanguageExtension_proxy_profiling_start
            case "_profiling_stop":
                return _ScriptLanguageExtension_proxy_profiling_stop
            case "_reload_all_scripts":
                return _ScriptLanguageExtension_proxy_reload_all_scripts
            case "_reload_scripts":
                return _ScriptLanguageExtension_proxy_reload_scripts
            case "_reload_tool_script":
                return _ScriptLanguageExtension_proxy_reload_tool_script
            case "_remove_named_global_constant":
                return _ScriptLanguageExtension_proxy_remove_named_global_constant
            case "_supports_builtin_mode":
                return _ScriptLanguageExtension_proxy_supports_builtin_mode
            case "_supports_documentation":
                return _ScriptLanguageExtension_proxy_supports_documentation
            case "_thread_enter":
                return _ScriptLanguageExtension_proxy_thread_enter
            case "_thread_exit":
                return _ScriptLanguageExtension_proxy_thread_exit
            case "_validate":
                return _ScriptLanguageExtension_proxy_validate
            case "_validate_path":
                return _ScriptLanguageExtension_proxy_validate_path
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _ScriptLanguageExtension_proxy_add_global_constant (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    swiftObject._addGlobalConstant (name: StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), value: args [1]!.assumingMemoryBound (to: Variant.self).pointee)
}

func _ScriptLanguageExtension_proxy_add_named_global_constant (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    swiftObject._addNamedGlobalConstant (name: StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), value: args [1]!.assumingMemoryBound (to: Variant.self).pointee)
}

func _ScriptLanguageExtension_proxy_auto_indent_code (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = GString (swiftObject._autoIndentCode (GString.stringFromGStringPtr (ptr: args [0]!) ?? "", fromLine: args [1]!.assumingMemoryBound (to: Int32.self).pointee, toLine: args [2]!.assumingMemoryBound (to: Int32.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _ScriptLanguageExtension_proxy_can_inherit_from_file (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._canInheritFromFile ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ScriptLanguageExtension_proxy_can_make_function (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._canMakeFunction ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ScriptLanguageExtension_proxy_complete_code (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let resolved_2 = args [2]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._completeCode (GString.stringFromGStringPtr (ptr: args [0]!) ?? "", path: GString.stringFromGStringPtr (ptr: args [1]!) ?? "", owner: resolved_2 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_2!, ownsRef: false) as? Object)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Dictionary
    ret.content = VariantDictionary.zero
}

func _ScriptLanguageExtension_proxy_create_script (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._createScript ()
    retPtr!.storeBytes (of: ret?.handle, as:  GodotNativeObjectPointer?.self) // Object
}

func _ScriptLanguageExtension_proxy_debug_get_current_stack_info (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._debugGetCurrentStackInfo ()
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Dictionary
}

func _ScriptLanguageExtension_proxy_debug_get_error (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = GString (swiftObject._debugGetError ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _ScriptLanguageExtension_proxy_debug_get_globals (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._debugGetGlobals (maxSubitems: args [0]!.assumingMemoryBound (to: Int32.self).pointee, maxDepth: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Dictionary
    ret.content = VariantDictionary.zero
}

func _ScriptLanguageExtension_proxy_debug_get_stack_level_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._debugGetStackLevelCount ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _ScriptLanguageExtension_proxy_debug_get_stack_level_function (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = GString (swiftObject._debugGetStackLevelFunction (level: args [0]!.assumingMemoryBound (to: Int32.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _ScriptLanguageExtension_proxy_debug_get_stack_level_instance (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._debugGetStackLevelInstance (level: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: OpaquePointer?.self)
}

func _ScriptLanguageExtension_proxy_debug_get_stack_level_line (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._debugGetStackLevelLine (level: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _ScriptLanguageExtension_proxy_debug_get_stack_level_locals (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._debugGetStackLevelLocals (level: args [0]!.assumingMemoryBound (to: Int32.self).pointee, maxSubitems: args [1]!.assumingMemoryBound (to: Int32.self).pointee, maxDepth: args [2]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Dictionary
    ret.content = VariantDictionary.zero
}

func _ScriptLanguageExtension_proxy_debug_get_stack_level_members (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._debugGetStackLevelMembers (level: args [0]!.assumingMemoryBound (to: Int32.self).pointee, maxSubitems: args [1]!.assumingMemoryBound (to: Int32.self).pointee, maxDepth: args [2]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Dictionary
    ret.content = VariantDictionary.zero
}

func _ScriptLanguageExtension_proxy_debug_get_stack_level_source (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = GString (swiftObject._debugGetStackLevelSource (level: args [0]!.assumingMemoryBound (to: Int32.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _ScriptLanguageExtension_proxy_debug_parse_stack_level_expression (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = GString (swiftObject._debugParseStackLevelExpression (level: args [0]!.assumingMemoryBound (to: Int32.self).pointee, expression: GString.stringFromGStringPtr (ptr: args [1]!) ?? "", maxSubitems: args [2]!.assumingMemoryBound (to: Int32.self).pointee, maxDepth: args [3]!.assumingMemoryBound (to: Int32.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _ScriptLanguageExtension_proxy_find_function (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._findFunction (GString.stringFromGStringPtr (ptr: args [0]!) ?? "", code: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _ScriptLanguageExtension_proxy_finish (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    swiftObject._finish ()
}

func _ScriptLanguageExtension_proxy_frame (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    swiftObject._frame ()
}

func _ScriptLanguageExtension_proxy_get_built_in_templates (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._getBuiltInTemplates (object: StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Dictionary
}

func _ScriptLanguageExtension_proxy_get_comment_delimiters (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._getCommentDelimiters ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _ScriptLanguageExtension_proxy_get_doc_comment_delimiters (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._getDocCommentDelimiters ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _ScriptLanguageExtension_proxy_get_extension (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = GString (swiftObject._getExtension ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _ScriptLanguageExtension_proxy_get_global_class_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._getGlobalClassName (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Dictionary
    ret.content = VariantDictionary.zero
}

func _ScriptLanguageExtension_proxy_get_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = GString (swiftObject._getName ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _ScriptLanguageExtension_proxy_get_public_annotations (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._getPublicAnnotations ()
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Dictionary
}

func _ScriptLanguageExtension_proxy_get_public_constants (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._getPublicConstants ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Dictionary
    ret.content = VariantDictionary.zero
}

func _ScriptLanguageExtension_proxy_get_public_functions (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._getPublicFunctions ()
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Dictionary
}

func _ScriptLanguageExtension_proxy_get_recognized_extensions (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._getRecognizedExtensions ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _ScriptLanguageExtension_proxy_get_reserved_words (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._getReservedWords ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _ScriptLanguageExtension_proxy_get_string_delimiters (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._getStringDelimiters ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _ScriptLanguageExtension_proxy_get_type (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = GString (swiftObject._getType ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _ScriptLanguageExtension_proxy_handles_global_class_type (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._handlesGlobalClassType (GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ScriptLanguageExtension_proxy_has_named_classes (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._hasNamedClasses ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ScriptLanguageExtension_proxy_init (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    swiftObject._init ()
}

func _ScriptLanguageExtension_proxy_is_control_flow_keyword (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._isControlFlowKeyword (GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ScriptLanguageExtension_proxy_is_using_templates (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._isUsingTemplates ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ScriptLanguageExtension_proxy_lookup_code (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let resolved_3 = args [3]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._lookupCode (GString.stringFromGStringPtr (ptr: args [0]!) ?? "", symbol: GString.stringFromGStringPtr (ptr: args [1]!) ?? "", path: GString.stringFromGStringPtr (ptr: args [2]!) ?? "", owner: resolved_3 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_3!, ownsRef: false) as? Object)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Dictionary
    ret.content = VariantDictionary.zero
}

func _ScriptLanguageExtension_proxy_make_function (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = GString (swiftObject._makeFunction (className: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", functionName: GString.stringFromGStringPtr (ptr: args [1]!) ?? "", functionArgs: PackedStringArray (content: args [2]!.assumingMemoryBound (to: (Int64, Int64).self).pointee)))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _ScriptLanguageExtension_proxy_make_template (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._makeTemplate (GString.stringFromGStringPtr (ptr: args [0]!) ?? "", className: GString.stringFromGStringPtr (ptr: args [1]!) ?? "", baseClassName: GString.stringFromGStringPtr (ptr: args [2]!) ?? "")
    retPtr!.storeBytes (of: ret?.handle, as:  GodotNativeObjectPointer?.self) // Script
}

func _ScriptLanguageExtension_proxy_open_in_external_editor (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._openInExternalEditor (script: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Script, line: args [1]!.assumingMemoryBound (to: Int32.self).pointee, column: args [2]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _ScriptLanguageExtension_proxy_overrides_external_editor (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._overridesExternalEditor ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ScriptLanguageExtension_proxy_preferred_file_name_casing (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._preferredFileNameCasing ()
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _ScriptLanguageExtension_proxy_profiling_set_save_native_calls (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    swiftObject._profilingSetSaveNativeCalls (enable: args [0]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _ScriptLanguageExtension_proxy_profiling_start (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    swiftObject._profilingStart ()
}

func _ScriptLanguageExtension_proxy_profiling_stop (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    swiftObject._profilingStop ()
}

func _ScriptLanguageExtension_proxy_reload_all_scripts (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    swiftObject._reloadAllScripts ()
}

func _ScriptLanguageExtension_proxy_reload_scripts (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    swiftObject._reloadScripts (VariantArray (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), softReload: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _ScriptLanguageExtension_proxy_reload_tool_script (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    swiftObject._reloadToolScript (resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Script, softReload: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _ScriptLanguageExtension_proxy_remove_named_global_constant (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    swiftObject._removeNamedGlobalConstant (name: StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _ScriptLanguageExtension_proxy_supports_builtin_mode (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._supportsBuiltinMode ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ScriptLanguageExtension_proxy_supports_documentation (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._supportsDocumentation ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ScriptLanguageExtension_proxy_thread_enter (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    swiftObject._threadEnter ()
}

func _ScriptLanguageExtension_proxy_thread_exit (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    swiftObject._threadExit ()
}

func _ScriptLanguageExtension_proxy_validate (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = swiftObject._validate (script: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", path: GString.stringFromGStringPtr (ptr: args [1]!) ?? "", validateFunctions: args [2]!.assumingMemoryBound (to: Bool.self).pointee, validateErrors: args [3]!.assumingMemoryBound (to: Bool.self).pointee, validateWarnings: args [4]!.assumingMemoryBound (to: Bool.self).pointee, validateSafeLines: args [5]!.assumingMemoryBound (to: Bool.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Dictionary
    ret.content = VariantDictionary.zero
}

func _ScriptLanguageExtension_proxy_validate_path (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ScriptLanguageExtension else { return }
    let ret = GString (swiftObject._validatePath (GString.stringFromGStringPtr (ptr: args [0]!) ?? ""))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

