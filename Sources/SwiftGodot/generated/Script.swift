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


/// A class stored as a resource.
/// 
/// A class stored as a resource. A script extends the functionality of all objects that instantiate it.
/// 
/// This is the base class for all scripts and should not be used directly. Trying to create a new script with this class will result in an error.
/// 
/// The `new` method of a script subclass creates a new instance. ``Object/setScript(_:)`` extends an existing object, if that object's class matches one of the script's base classes.
/// 
open class Script: Resource {
    private static var className = StringName("Script")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The script source code or an empty string if source code is not available. When set, does not reload the class implementation automatically.
    final public var sourceCode: String {
        get {
            return get_source_code ()
        }
        
        set {
            set_source_code (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_can_instantiate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("can_instantiate")
        return withUnsafePointer(to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the script can be instantiated.
    public final func canInstantiate() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Script.method_can_instantiate, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_instance_has: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("instance_has")
        return withUnsafePointer(to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 397768994)!
            }
            
        }
        
    }()
    
    /// Returns `true` if `baseObject` is an instance of this script.
    public final func instanceHas(baseObject: Object?) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: baseObject?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Script.method_instance_has, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_has_source_code: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_source_code")
        return withUnsafePointer(to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the script contains non-empty source code.
    /// 
    /// > Note: If a script does not have source code, this does not mean that it is invalid or unusable. For example, a ``GDScript`` that was exported with binary tokenization has no source code, but still behaves as expected and could be instantiated. This can be checked with ``canInstantiate()``.
    /// 
    public final func hasSourceCode() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Script.method_has_source_code, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_source_code: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_source_code")
        return withUnsafePointer(to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_source_code() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(Script.method_get_source_code, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_source_code: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_source_code")
        return withUnsafePointer(to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_source_code(_ source: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let source = GString(source)
        withUnsafePointer(to: source.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Script.method_set_source_code, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_reload: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("reload")
        return withUnsafePointer(to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1633102583)!
            }
            
        }
        
    }()
    
    /// Reloads the script's class implementation. Returns an error code.
    public final func reload(keepState: Bool = false) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: keepState) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Script.method_reload, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_get_base_script: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_base_script")
        return withUnsafePointer(to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 278624046)!
            }
            
        }
        
    }()
    
    /// Returns the script directly inherited by this script.
    public final func getBaseScript() -> Script? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(Script.method_get_base_script, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_instance_base_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_instance_base_type")
        return withUnsafePointer(to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    /// Returns the script's base type.
    public final func getInstanceBaseType() -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(Script.method_get_instance_base_type, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_global_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_global_name")
        return withUnsafePointer(to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    /// Returns the class name associated with the script, if there is one. Returns an empty string otherwise.
    /// 
    /// To give the script a global name, you can use the `class_name` keyword in GDScript and the ```GlobalClass``` attribute in C#.
    /// 
    public final func getGlobalName() -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(Script.method_get_global_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_has_script_signal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_script_signal")
        return withUnsafePointer(to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2619796661)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the script, or a base class, defines a signal with the given name.
    public final func hasScriptSignal(signalName: StringName) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: signalName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Script.method_has_script_signal, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_script_property_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_script_property_list")
        return withUnsafePointer(to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Returns the list of properties in this ``Script``.
    public final func getScriptPropertyList() -> TypedArray<VariantDictionary> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(Script.method_get_script_property_list, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method_get_script_method_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_script_method_list")
        return withUnsafePointer(to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Returns the list of methods in this ``Script``.
    public final func getScriptMethodList() -> TypedArray<VariantDictionary> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(Script.method_get_script_method_list, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method_get_script_signal_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_script_signal_list")
        return withUnsafePointer(to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Returns the list of user signals defined in this ``Script``.
    public final func getScriptSignalList() -> TypedArray<VariantDictionary> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(Script.method_get_script_signal_list, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method_get_script_constant_map: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_script_constant_map")
        return withUnsafePointer(to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2382534195)!
            }
            
        }
        
    }()
    
    /// Returns a dictionary containing constant names and their values.
    public final func getScriptConstantMap() -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        gi.object_method_bind_ptrcall(Script.method_get_script_constant_map, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_property_default_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_property_default_value")
        return withUnsafePointer(to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2138907829)!
            }
            
        }
        
    }()
    
    /// Returns the default value of the specified property.
    public final func getPropertyDefaultValue(property: StringName) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: property.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Script.method_get_property_default_value, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_is_tool: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_tool")
        return withUnsafePointer(to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the script is a tool script. A tool script can run in the editor.
    public final func isTool() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Script.method_is_tool, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_abstract: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_abstract")
        return withUnsafePointer(to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the script is an abstract script. An abstract script does not have a constructor and cannot be instantiated.
    public final func isAbstract() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Script.method_is_abstract, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_rpc_config: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_rpc_config")
        return withUnsafePointer(to: &Script.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1214101251)!
            }
            
        }
        
    }()
    
    /// Returns a ``VariantDictionary`` mapping method names to their RPC configuration defined by this script.
    public final func getRpcConfig() -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        gi.object_method_bind_ptrcall(Script.method_get_rpc_config, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return Variant(takingOver: _result)
    }
    
}

