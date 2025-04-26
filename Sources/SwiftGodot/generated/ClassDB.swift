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


/// A class information repository.
/// 
/// Provides access to metadata stored for every available class.
open class ClassDB: Object {
    /// The shared instance of this class
    public static var shared: ClassDB {
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { ptr in
            lookupObject(nativeHandle: gi.global_get_singleton(ptr)!, ownsRef: false)!
        }
        
    }
    
    private static var className = StringName("ClassDB")
    override open class var godotClassName: StringName { className }
    public enum APIType: Int64, CaseIterable {
        /// Native Core class type.
        case core = 0 // API_CORE
        /// Native Editor class type.
        case editor = 1 // API_EDITOR
        /// GDExtension class type.
        case `extension` = 2 // API_EXTENSION
        /// GDExtension Editor class type.
        case editorExtension = 3 // API_EDITOR_EXTENSION
        /// Unknown class type.
        case none = 4 // API_NONE
    }
    
    /* Methods */
    fileprivate static let method_get_class_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_class_list")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns the names of all the classes available.
    public static func getClassList() -> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(method_get_class_list, UnsafeMutableRawPointer(mutating: shared.handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_inheriters_from_class: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_inheriters_from_class")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1761182771)!
            }
            
        }
        
    }()
    
    /// Returns the names of all the classes that directly or indirectly inherit from `class`.
    public static func getInheritersFromClass(_ `class`: StringName) -> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_inheriters_from_class, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_parent_class: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_parent_class")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1965194235)!
            }
            
        }
        
    }()
    
    /// Returns the parent class of `class`.
    public static func getParentClass(_ `class`: StringName) -> StringName {
        let _result: StringName = StringName ()
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_parent_class, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_class_exists: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("class_exists")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2619796661)!
            }
            
        }
        
    }()
    
    /// Returns whether the specified `class` is available or not.
    public static func classExists(`class`: StringName) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_class_exists, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_parent_class: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_parent_class")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 471820014)!
            }
            
        }
        
    }()
    
    /// Returns whether `inherits` is an ancestor of `class` or not.
    public static func isParentClass(_ `class`: StringName, inherits: StringName) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: inherits.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_is_parent_class, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_can_instantiate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("can_instantiate")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2619796661)!
            }
            
        }
        
    }()
    
    /// Returns `true` if objects can be instantiated from the specified `class`, otherwise returns `false`.
    public static func canInstantiate(`class`: StringName) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_can_instantiate, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_instantiate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("instantiate")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2760726917)!
            }
            
        }
        
    }()
    
    /// Creates an instance of `class`.
    public static func instantiate(`class`: StringName) -> Variant? {
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_instantiate, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_class_get_api_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("class_get_api_type")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2475317043)!
            }
            
        }
        
    }()
    
    /// Returns the API type of `class`. See ``ClassDB/APIType``.
    public static func classGetApiType(`class`: StringName) -> ClassDB.APIType {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_class_get_api_type, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return ClassDB.APIType (rawValue: _result)!
    }
    
    fileprivate static let method_class_has_signal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("class_has_signal")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 471820014)!
            }
            
        }
        
    }()
    
    /// Returns whether `class` or its ancestry has a signal called `signal` or not.
    public static func classHasSignal(`class`: StringName, signal: StringName) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: signal.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_class_has_signal, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_class_get_signal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("class_get_signal")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3061114238)!
            }
            
        }
        
    }()
    
    /// Returns the `signal` data of `class` or its ancestry. The returned value is a ``VariantDictionary`` with the following keys: `args`, `default_args`, `flags`, `id`, `name`, `return: (class_name, hint, hint_string, name, type, usage)`.
    public static func classGetSignal(`class`: StringName, signal: StringName) -> VariantDictionary {
        let _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: signal.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_class_get_signal, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_class_get_signal_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("class_get_signal_list")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3504980660)!
            }
            
        }
        
    }()
    
    /// Returns an array with all the signals of `class` or its ancestry if `noInheritance` is `false`. Every element of the array is a ``VariantDictionary`` as described in ``classGetSignal(`class`:signal:)``.
    public static func classGetSignalList(`class`: StringName, noInheritance: Bool = false) -> TypedArray<VariantDictionary> {
        var _result: Int64 = 0
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: noInheritance) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_class_get_signal_list, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method_class_get_property_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("class_get_property_list")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3504980660)!
            }
            
        }
        
    }()
    
    /// Returns an array with all the properties of `class` or its ancestry if `noInheritance` is `false`.
    public static func classGetPropertyList(`class`: StringName, noInheritance: Bool = false) -> TypedArray<VariantDictionary> {
        var _result: Int64 = 0
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: noInheritance) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_class_get_property_list, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method_class_get_property_getter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("class_get_property_getter")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3770832642)!
            }
            
        }
        
    }()
    
    /// Returns the getter method name of `property` of `class`.
    public static func classGetPropertyGetter(`class`: StringName, property: StringName) -> StringName {
        let _result: StringName = StringName ()
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: property.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_class_get_property_getter, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_class_get_property_setter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("class_get_property_setter")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3770832642)!
            }
            
        }
        
    }()
    
    /// Returns the setter method name of `property` of `class`.
    public static func classGetPropertySetter(`class`: StringName, property: StringName) -> StringName {
        let _result: StringName = StringName ()
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: property.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_class_get_property_setter, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_class_get_property: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("class_get_property")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2498641674)!
            }
            
        }
        
    }()
    
    /// Returns the value of `property` of `object` or its ancestry.
    public static func classGetProperty(object: Object?, property: StringName) -> Variant? {
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: object?.handle) { pArg0 in
            withUnsafePointer(to: property.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_class_get_property, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_class_set_property: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("class_set_property")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1690314931)!
            }
            
        }
        
    }()
    
    /// Sets `property` value of `object` to `value`.
    public static func classSetProperty(object: Object?, property: StringName, value: Variant?) -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: object?.handle) { pArg0 in
            withUnsafePointer(to: property.content) { pArg1 in
                withUnsafePointer(to: value.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(method_class_set_property, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_class_get_property_default_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("class_get_property_default_value")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2718203076)!
            }
            
        }
        
    }()
    
    /// Returns the default value of `property` of `class` or its ancestor classes.
    public static func classGetPropertyDefaultValue(`class`: StringName, property: StringName) -> Variant? {
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: property.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_class_get_property_default_value, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_class_has_method: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("class_has_method")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3860701026)!
            }
            
        }
        
    }()
    
    /// Returns whether `class` (or its ancestry if `noInheritance` is `false`) has a method called `method` or not.
    public static func classHasMethod(`class`: StringName, method: StringName, noInheritance: Bool = false) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: method.content) { pArg1 in
                withUnsafePointer(to: noInheritance) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(method_class_has_method, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_class_get_method_argument_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("class_get_method_argument_count")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3885694822)!
            }
            
        }
        
    }()
    
    /// Returns the number of arguments of the method `method` of `class` or its ancestry if `noInheritance` is `false`.
    public static func classGetMethodArgumentCount(`class`: StringName, method: StringName, noInheritance: Bool = false) -> Int32 {
        var _result: Int32 = 0
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: method.content) { pArg1 in
                withUnsafePointer(to: noInheritance) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(method_class_get_method_argument_count, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_class_get_method_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("class_get_method_list")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3504980660)!
            }
            
        }
        
    }()
    
    /// Returns an array with all the methods of `class` or its ancestry if `noInheritance` is `false`. Every element of the array is a ``VariantDictionary`` with the following keys: `args`, `default_args`, `flags`, `id`, `name`, `return: (class_name, hint, hint_string, name, type, usage)`.
    /// 
    /// > Note: In exported release builds the debug info is not available, so the returned dictionaries will contain only method names.
    /// 
    public static func classGetMethodList(`class`: StringName, noInheritance: Bool = false) -> TypedArray<VariantDictionary> {
        var _result: Int64 = 0
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: noInheritance) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_class_get_method_list, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method_class_call_static: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("class_call_static")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3344196419)!
            }
            
        }
        
    }()
    
    /// Calls a static method on a class.
    public static func classCallStatic(`class`: StringName, method: StringName, _ arguments: Variant?...) -> Variant? {
        var _result: Variant.ContentType = Variant.zero
        let `class` = `class`.toVariant()
        withUnsafePointer(to: `class`.content) { pArg0 in
            let method = method.toVariant()
            withUnsafePointer(to: method.content) { pArg1 in
                if arguments.isEmpty {
                    withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                            gi.object_method_bind_call(method_class_call_static, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, 2, &_result, nil)
                        }
                        
                    }
                    
                } else {
                    // A temporary allocation containing pointers to `Variant.ContentType` of marshaled arguments
                    withUnsafeTemporaryAllocation(of: UnsafeRawPointer?.self, capacity: 2 + arguments.count) { pArgsBuffer in
                        defer { pArgsBuffer.deinitialize() }
                        guard let pArgs = pArgsBuffer.baseAddress else {
                            fatalError("pArgsBuffer.baseAddress is nil")
                        }
                        pArgsBuffer.initializeElement(at: 0, to: pArg0)
                        pArgsBuffer.initializeElement(at: 1, to: pArg1)
                        // A temporary allocation containing `Variant.ContentType` of marshaled arguments
                        withUnsafeTemporaryAllocation(of: Variant.ContentType.self, capacity: arguments.count) { contentsBuffer in
                            defer { contentsBuffer.deinitialize() }
                            guard let contentsPtr = contentsBuffer.baseAddress else {
                                fatalError("contentsBuffer.baseAddress is nil")
                            }
                            
                            for i in 0..<arguments.count {
                                // Copy `content`s of the variadic `Variant`s into `contentBuffer`
                                contentsBuffer.initializeElement(at: i, to: arguments[i].content)
                                // Initialize `pArgs` elements following mandatory arguments to point at respective contents of `contentsBuffer`                                        
                                pArgsBuffer.initializeElement(at: 2 + i, to: contentsPtr + i)
                            }
                        
                            gi.object_method_bind_call(method_class_call_static, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, Int64(2 + arguments.count), &_result, nil)
                        }                           
                    }
                    
                }
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_class_get_integer_constant_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("class_get_integer_constant_list")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3031669221)!
            }
            
        }
        
    }()
    
    /// Returns an array with the names all the integer constants of `class` or its ancestry.
    public static func classGetIntegerConstantList(`class`: StringName, noInheritance: Bool = false) -> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: noInheritance) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_class_get_integer_constant_list, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_class_has_integer_constant: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("class_has_integer_constant")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 471820014)!
            }
            
        }
        
    }()
    
    /// Returns whether `class` or its ancestry has an integer constant called `name` or not.
    public static func classHasIntegerConstant(`class`: StringName, name: StringName) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_class_has_integer_constant, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_class_get_integer_constant: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("class_get_integer_constant")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2419549490)!
            }
            
        }
        
    }()
    
    /// Returns the value of the integer constant `name` of `class` or its ancestry. Always returns 0 when the constant could not be found.
    public static func classGetIntegerConstant(`class`: StringName, name: StringName) -> Int {
        var _result: Int = 0
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_class_get_integer_constant, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_class_has_enum: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("class_has_enum")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3860701026)!
            }
            
        }
        
    }()
    
    /// Returns whether `class` or its ancestry has an enum called `name` or not.
    public static func classHasEnum(`class`: StringName, name: StringName, noInheritance: Bool = false) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: noInheritance) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(method_class_has_enum, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_class_get_enum_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("class_get_enum_list")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3031669221)!
            }
            
        }
        
    }()
    
    /// Returns an array with all the enums of `class` or its ancestry.
    public static func classGetEnumList(`class`: StringName, noInheritance: Bool = false) -> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: noInheritance) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_class_get_enum_list, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_class_get_enum_constants: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("class_get_enum_constants")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 661528303)!
            }
            
        }
        
    }()
    
    /// Returns an array with all the keys in `enum` of `class` or its ancestry.
    public static func classGetEnumConstants(`class`: StringName, `enum`: StringName, noInheritance: Bool = false) -> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: `enum`.content) { pArg1 in
                withUnsafePointer(to: noInheritance) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(method_class_get_enum_constants, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_class_get_integer_constant_enum: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("class_get_integer_constant_enum")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2457504236)!
            }
            
        }
        
    }()
    
    /// Returns which enum the integer constant `name` of `class` or its ancestry belongs to.
    public static func classGetIntegerConstantEnum(`class`: StringName, name: StringName, noInheritance: Bool = false) -> StringName {
        let _result: StringName = StringName ()
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: noInheritance) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(method_class_get_integer_constant_enum, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_class_enum_bitfield: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_class_enum_bitfield")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3860701026)!
            }
            
        }
        
    }()
    
    /// Returns whether `class` (or its ancestor classes if `noInheritance` is `false`) has an enum called `enum` that is a bitfield.
    public static func isClassEnumBitfield(`class`: StringName, `enum`: StringName, noInheritance: Bool = false) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: `enum`.content) { pArg1 in
                withUnsafePointer(to: noInheritance) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(method_is_class_enum_bitfield, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_class_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_class_enabled")
        return withUnsafePointer(to: &ClassDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2619796661)!
            }
            
        }
        
    }()
    
    /// Returns whether this `class` is enabled or not.
    public static func isClassEnabled(`class`: StringName) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: `class`.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_is_class_enabled, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
}

