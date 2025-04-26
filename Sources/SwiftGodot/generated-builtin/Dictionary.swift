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


/// A built-in data structure that holds key-value pairs.
/// 
/// Dictionaries are associative containers that contain values referenced by unique keys. Dictionaries will preserve the insertion order when adding new entries. In other programming languages, this data structure is often referred to as a hash map or an associative array.
/// 
/// You can define a dictionary by placing a comma-separated list of `key: value` pairs inside curly braces `{}`.
/// 
/// Creating a dictionary:
/// 
/// You can access a dictionary's value by referencing its corresponding key. In the above example, `points_dict["White"]` will return `50`. You can also write `points_dict.White`, which is equivalent. However, you'll have to use the bracket syntax if the key you're accessing the dictionary with isn't a fixed string (such as a number or variable).
/// 
/// In the above code, `points` will be assigned the value that is paired with the appropriate color selected in `my_color`.
/// 
/// Dictionaries can contain more complex data:
/// 
/// To add a key to an existing dictionary, access it like an existing key and assign to it:
/// 
/// Finally, dictionaries can contain different types of keys and values in the same dictionary:
/// 
/// The keys of a dictionary can be iterated with the `for` keyword:
/// 
/// > Note: Dictionaries are always passed by reference. To get a copy of a dictionary which can be modified independently of the original dictionary, use ``duplicate(deep:)``.
/// 
/// > Note: Erasing elements while iterating over dictionaries is **not** supported and will result in unpredictable behavior.
/// 
public final class VariantDictionary: _GodotBridgeableBuiltin, Equatable, Hashable {
    deinit {
        if content != VariantDictionary.zero {
            GodotInterfaceForDictionary.destructor(&content)
        }
        
    }
    
    // Contains a binary blob where this type information is stored
    public var content: ContentType = VariantDictionary.zero
    
    // Used to initialize empty types
    public static var zero: ContentType { 0 }
    // Convenience type that matches the build configuration storage needs
    public typealias ContentType = Int64
    // Used to construct objects on virtual proxies
    public required init(content proxyContent: ContentType) {
        withUnsafePointer(to: proxyContent) { pContent in
            withUnsafePointer(to: pContent) { pArgs in
                GodotInterfaceForDictionary.constructor1(&content, pArgs)
            }
        }
    }
    /// Initialize with existing `ContentType` assuming this ``VariantDictionary`` owns it since now.
    init(takingOver content: ContentType) {
        self.content = content
    }
    
    /// Constructs an empty ``VariantDictionary``.
    public required init() {
        GodotInterfaceForDictionary.constructor0(&content, nil)
    }
    
    /// Returns the same dictionary as `from`. If you need a copy of the dictionary, use ``duplicate(deep:)``.
    public init(from: VariantDictionary) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForDictionary.constructor1(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Creates a typed dictionary from the `base` dictionary. A typed dictionary can only contain keys and values of the given types, or that inherit from the given classes, as described by this constructor's parameters.
    public init(base: VariantDictionary, keyType: Int32, keyClassName: StringName, keyScript: Variant?, valueType: Int32, valueClassName: StringName, valueScript: Variant?) {
        withUnsafePointer(to: base.content) { pArg0 in
            withUnsafePointer(to: keyType) { pArg1 in
                withUnsafePointer(to: keyClassName.content) { pArg2 in
                    withUnsafePointer(to: keyScript.content) { pArg3 in
                        withUnsafePointer(to: valueType) { pArg4 in
                            withUnsafePointer(to: valueClassName.content) { pArg5 in
                                withUnsafePointer(to: valueScript.content) { pArg6 in
                                    withUnsafePointer(to: UnsafeRawPointersN7(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6)) { pArgs in
                                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 7) { pArgs in
                                            GodotInterfaceForDictionary.constructor2(&content, pArgs)
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
    /* Methods */
    
    /// Returns the number of entries in the dictionary. Empty dictionaries (`{ }`) always return `0`. See also ``isEmpty()``.
    public final func size() -> Int64 {
        var result: Int64 = Int64()
        GodotInterfaceForDictionary.method_size(&content, nil, &result, 0)
        return result
    }
    
    /// Returns `true` if the dictionary is empty (its size is `0`). See also ``size()``.
    public final func isEmpty() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForDictionary.method_is_empty(&content, nil, &result, 0)
        return result
    }
    
    /// Clears the dictionary, removing all entries from it.
    public final func clear() {
        GodotInterfaceForDictionary.method_clear(&content, nil, nil, 0)
    }
    
    /// Assigns elements of another `dictionary` into the dictionary. Resizes the dictionary to match `dictionary`. Performs type conversions if the dictionary is typed.
    public final func assign(dictionary: VariantDictionary) {
        withUnsafePointer(to: dictionary.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForDictionary.method_assign(&content, pArgs, nil, 1)
                }
                
            }
            
        }
        
    }
    
    /// Sorts the dictionary in-place by key. This can be used to ensure dictionaries with the same contents produce equivalent results when getting the ``keys()``, getting the ``values()``, and converting to a string. This is also useful when wanting a JSON representation consistent with what is in memory, and useful for storing on a database that requires dictionaries to be sorted.
    public final func sort() {
        GodotInterfaceForDictionary.method_sort(&content, nil, nil, 0)
    }
    
    /// Adds entries from `dictionary` to this dictionary. By default, duplicate keys are not copied over, unless `overwrite` is `true`.
    /// 
    /// > Note: ``merge(dictionary:overwrite:)`` is _not_ recursive. Nested dictionaries are considered as keys that can be overwritten or not depending on the value of `overwrite`, but they will never be merged together.
    /// 
    public final func merge(dictionary: VariantDictionary, overwrite: Bool = false) {
        withUnsafePointer(to: dictionary.content) { pArg0 in
            withUnsafePointer(to: overwrite) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForDictionary.method_merge(&content, pArgs, nil, 2)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Returns a copy of this dictionary merged with the other `dictionary`. By default, duplicate keys are not copied over, unless `overwrite` is `true`. See also ``merge(dictionary:overwrite:)``.
    /// 
    /// This method is useful for quickly making dictionaries with default values:
    /// 
    public final func merged(dictionary: VariantDictionary, overwrite: Bool = false) -> VariantDictionary {
        let result: VariantDictionary = VariantDictionary()
        withUnsafePointer(to: dictionary.content) { pArg0 in
            withUnsafePointer(to: overwrite) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForDictionary.method_merged(&content, pArgs, &result.content, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the dictionary contains an entry with the given `key`.
    /// 
    /// In GDScript, this is equivalent to the `in` operator:
    /// 
    /// > Note: This method returns `true` as long as the `key` exists, even if its corresponding value is `null`.
    /// 
    public final func has(key: Variant?) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: key.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForDictionary.method_has(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the dictionary contains all keys in the given `keys` array.
    /// 
    public final func hasAll(keys: VariantArray) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: keys.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForDictionary.method_has_all(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Finds and returns the first key whose associated value is equal to `value`, or `null` if it is not found.
    /// 
    /// > Note: `null` is also a valid key. If inside the dictionary, ``findKey(value:)`` may give misleading results.
    /// 
    public final func findKey(value: Variant?) -> Variant? {
        var result = Variant.zero
        withUnsafePointer(to: value.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForDictionary.method_find_key(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return Variant(takingOver: result)
    }
    
    /// Removes the dictionary entry by key, if it exists. Returns `true` if the given `key` existed in the dictionary, otherwise `false`.
    /// 
    /// > Note: Do not erase entries while iterating over the dictionary. You can iterate over the ``keys()`` array instead.
    /// 
    public final func erase(key: Variant?) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: key.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForDictionary.method_erase(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a hashed 32-bit integer value representing the dictionary contents.
    /// 
    /// > Note: Dictionaries with the same entries but in a different order will not have the same hash.
    /// 
    /// > Note: Dictionaries with equal hash values are _not_ guaranteed to be the same, because of hash collisions. On the contrary, dictionaries with different hash values are guaranteed to be different.
    /// 
    public final func hash() -> Int64 {
        var result: Int64 = Int64()
        GodotInterfaceForDictionary.method_hash(&content, nil, &result, 0)
        return result
    }
    
    /// Returns the list of keys in the dictionary.
    public final func keys() -> VariantArray {
        let result: VariantArray = VariantArray()
        GodotInterfaceForDictionary.method_keys(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns the list of values in this dictionary.
    public final func values() -> VariantArray {
        let result: VariantArray = VariantArray()
        GodotInterfaceForDictionary.method_values(&content, nil, &result.content, 0)
        return result
    }
    
    /// Creates and returns a new copy of the dictionary. If `deep` is `true`, inner ``VariantDictionary`` and ``VariantArray`` keys and values are also copied, recursively.
    public final func duplicate(deep: Bool = false) -> VariantDictionary {
        let result: VariantDictionary = VariantDictionary()
        withUnsafePointer(to: deep) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForDictionary.method_duplicate(&content, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the corresponding value for the given `key` in the dictionary. If the `key` does not exist, returns `default`, or `null` if the parameter is omitted.
    public final func get(key: Variant?, `default`: Variant?) -> Variant? {
        var result = Variant.zero
        withUnsafePointer(to: key.content) { pArg0 in
            withUnsafePointer(to: `default`.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForDictionary.method_get(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: result)
    }
    
    /// Gets a value and ensures the key is set. If the `key` exists in the dictionary, this behaves like ``get(key:`default`:)``. Otherwise, the `default` value is inserted into the dictionary and returned.
    public final func getOrAdd(key: Variant?, `default`: Variant?) -> Variant? {
        var result = Variant.zero
        withUnsafePointer(to: key.content) { pArg0 in
            withUnsafePointer(to: `default`.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForDictionary.method_get_or_add(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: result)
    }
    
    /// Sets the value of the element at the given `key` to the given `value`. This is the same as using the `[]` operator (`array[index] = value`).
    public final func set(key: Variant?, value: Variant?) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: key.content) { pArg0 in
            withUnsafePointer(to: value.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForDictionary.method_set(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the dictionary is typed. Typed dictionaries can only store keys/values of their associated type and provide type safety for the `[]` operator. Methods of typed dictionary still return ``Variant``.
    public final func isTyped() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForDictionary.method_is_typed(&content, nil, &result, 0)
        return result
    }
    
    /// Returns `true` if the dictionary's keys are typed.
    public final func isTypedKey() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForDictionary.method_is_typed_key(&content, nil, &result, 0)
        return result
    }
    
    /// Returns `true` if the dictionary's values are typed.
    public final func isTypedValue() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForDictionary.method_is_typed_value(&content, nil, &result, 0)
        return result
    }
    
    /// Returns `true` if the dictionary is typed the same as `dictionary`.
    public final func isSameTyped(dictionary: VariantDictionary) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: dictionary.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForDictionary.method_is_same_typed(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the dictionary's keys are typed the same as `dictionary`'s keys.
    public final func isSameTypedKey(dictionary: VariantDictionary) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: dictionary.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForDictionary.method_is_same_typed_key(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the dictionary's values are typed the same as `dictionary`'s values.
    public final func isSameTypedValue(dictionary: VariantDictionary) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: dictionary.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForDictionary.method_is_same_typed_value(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the built-in ``Variant`` type of the typed dictionary's keys as a ``Variant.GType`` constant. If the keys are not typed, returns ``Variant.GType/`nil```. See also ``isTypedKey()``.
    public final func getTypedKeyBuiltin() -> Int64 {
        var result: Int64 = Int64()
        GodotInterfaceForDictionary.method_get_typed_key_builtin(&content, nil, &result, 0)
        return result
    }
    
    /// Returns the built-in ``Variant`` type of the typed dictionary's values as a ``Variant.GType`` constant. If the values are not typed, returns ``Variant.GType/`nil```. See also ``isTypedValue()``.
    public final func getTypedValueBuiltin() -> Int64 {
        var result: Int64 = Int64()
        GodotInterfaceForDictionary.method_get_typed_value_builtin(&content, nil, &result, 0)
        return result
    }
    
    /// Returns the **built-in** class name of the typed dictionary's keys, if the built-in ``Variant`` type is ``Variant.GType/object``. Otherwise, returns an empty ``StringName``. See also ``isTypedKey()`` and ``Object/getClass()``.
    public final func getTypedKeyClassName() -> StringName {
        let result: StringName = StringName()
        GodotInterfaceForDictionary.method_get_typed_key_class_name(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns the **built-in** class name of the typed dictionary's values, if the built-in ``Variant`` type is ``Variant.GType/object``. Otherwise, returns an empty ``StringName``. See also ``isTypedValue()`` and ``Object/getClass()``.
    public final func getTypedValueClassName() -> StringName {
        let result: StringName = StringName()
        GodotInterfaceForDictionary.method_get_typed_value_class_name(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns the ``Script`` instance associated with this typed dictionary's keys, or `null` if it does not exist. See also ``isTypedKey()``.
    public final func getTypedKeyScript() -> Variant? {
        var result = Variant.zero
        GodotInterfaceForDictionary.method_get_typed_key_script(&content, nil, &result, 0)
        return Variant(takingOver: result)
    }
    
    /// Returns the ``Script`` instance associated with this typed dictionary's values, or `null` if it does not exist. See also ``isTypedValue()``.
    public final func getTypedValueScript() -> Variant? {
        var result = Variant.zero
        GodotInterfaceForDictionary.method_get_typed_value_script(&content, nil, &result, 0)
        return Variant(takingOver: result)
    }
    
    /// Makes the dictionary read-only, i.e. disables modification of the dictionary's contents. Does not apply to nested content, e.g. content of nested dictionaries.
    public final func makeReadOnly() {
        GodotInterfaceForDictionary.method_make_read_only(&content, nil, nil, 0)
    }
    
    /// Returns `true` if the dictionary is read-only. See ``makeReadOnly()``. Dictionaries are automatically read-only if declared with `const` keyword.
    public final func isReadOnly() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForDictionary.method_is_read_only(&content, nil, &result, 0)
        return result
    }
    
    /// Returns `true` if the two dictionaries contain the same keys and values, inner ``VariantDictionary`` and ``VariantArray`` keys and values are compared recursively.
    public final func recursiveEqual(dictionary: VariantDictionary, recursionCount: Int64) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: dictionary.content) { pArg0 in
            withUnsafePointer(to: recursionCount) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForDictionary.method_recursive_equal(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    public subscript(key: Variant?) -> Variant? {
        get {                            
            withUnsafePointer(to: key.content) { pKeyContent in
                if GodotInterfaceForDictionary.keyed_checker(&content, pKeyContent) != 0 {
                    var result = Variant.zero
                    GodotInterfaceForDictionary.keyed_getter(&content, pKeyContent, &result)
                    // Returns unowned handle
                    return Variant(takingOver: result)
                } else {
                    return nil
                }
            }                
        }
    
        set {
            withUnsafePointer(to: key.content) { pKeyContent in
                if let newValue {
                    GodotInterfaceForDictionary.keyed_setter(&content, pKeyContent, &newValue.content)
                } else {                    
                    var nilContent = Variant.zero
                    GodotInterfaceForDictionary.keyed_setter(&content, pKeyContent, &nilContent)
                }
            }                                
        }
    }
    /// Returns `true` if the two dictionaries contain the same keys and values. The order of the entries does not matter.
    /// 
    /// > Note: In C#, by convention, this operator compares by **reference**. If you need to compare by value, iterate over both dictionaries.
    /// 
    public static func ==(lhs: VariantDictionary, rhs: VariantDictionary) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForDictionary.operator_3(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the two dictionaries do not contain the same keys and values.
    public static func !=(lhs: VariantDictionary, rhs: VariantDictionary) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForDictionary.operator_4(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(hash())
    }
    /// Wrap ``VariantDictionary`` into a ``Variant``
    @inline(__always)
    @inlinable
    public func toVariant() -> Variant {
        Variant(self)
    }
    
    /// Wrap ``VariantDictionary`` into a ``Variant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toVariant() -> Variant? {
        Variant(self)
    }
    
    /// Wrap ``VariantDictionary`` into a ``FastVariant``
    @inline(__always)
    @inlinable
    public func toFastVariant() -> FastVariant {
        FastVariant(self)
    }
    
    /// Wrap ``VariantDictionary`` into a ``FastVariant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toFastVariant() -> FastVariant? {
        FastVariant(self)
    }
    
    /// Extract ``VariantDictionary`` from a ``Variant``. Throws `VariantConversionError` if it's not possible.
    @inline(__always)
    @inlinable
    public static func fromVariantOrThrow(_ variant: Variant) throws(VariantConversionError) -> Self {                
        guard let value = Self(variant) else {
            throw .unexpectedContent(parsing: self, from: variant)
        }
        return value                
    }
    
    @inline(__always)
    @inlinable
    public static func fromFastVariantOrThrow(_ variant: borrowing FastVariant) throws(VariantConversionError) -> Self {                
        guard let value = Self(variant) else {
            throw .unexpectedContent(parsing: self, from: variant)
        }
        return value                
    }
    
    /// Initialze ``VariantDictionary`` from ``Variant``. Fails if `variant` doesn't contain ``VariantDictionary``
    @inline(__always)                                
    public convenience init?(_ variant: Variant) {
        guard Self._variantType == variant.gtype else { return nil }
        var content = VariantDictionary.zero
        withUnsafeMutablePointer(to: &content) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForDictionary.selfFromVariant)                        
        }
        self.init(takingOver: content)
    }
    
    /// Initialze ``VariantDictionary`` from ``Variant``. Fails if `variant` doesn't contain ``VariantDictionary`` or is `nil`
    @inline(__always)
    @inlinable
    public convenience init?(_ variant: Variant?) {
        guard let variant else { return nil }
        self.init(variant)
    }
    
    /// Initialze ``VariantDictionary`` from ``FastVariant``. Fails if `variant` doesn't contain ``VariantDictionary``
    @inline(__always)                                
    public convenience init?(_ variant: borrowing FastVariant) {
        guard Self._variantType == variant.gtype else { return nil }
        var content = VariantDictionary.zero
        withUnsafeMutablePointer(to: &content) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForDictionary.selfFromVariant)                        
        }
        self.init(takingOver: content)
    }
    
    /// Initialze ``VariantDictionary`` from ``FastVariant``. Fails if `variant` doesn't contain ``VariantDictionary`` or is `nil`
    @inline(__always)
    @inlinable
    public convenience init?(_ variant: borrowing FastVariant?) {                    
        switch variant {
        case .some(let variant):
            self.init(variant)
        case .none:
            return nil
        }
    }
    /// Internal API. For indicating that Godot `Array` of ``VariantDictionary`` has type `Array[Dictionary]`
    @inline(__always)
    @inlinable
    public static var _variantType: Variant.GType {
        .dictionary 
    }
}

public extension Variant {
    /// Initialize ``Variant`` by wrapping ``VariantDictionary?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    convenience init?(_ from: VariantDictionary?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``Variant`` by wrapping ``VariantDictionary``
    @inline(__always)
    convenience init(_ from: VariantDictionary) {
        self.init(payload: from.content, constructor: GodotInterfaceForDictionary.variantFromSelf)
    }
    
}

public extension FastVariant {
    /// Initialize ``FastVariant`` by wrapping ``VariantDictionary?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    init?(_ from: VariantDictionary?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``FastVariant`` by wrapping ``VariantDictionary``
    @inline(__always)
    init(_ from: VariantDictionary) {
        self.init(payload: from.content, constructor: GodotInterfaceForDictionary.variantFromSelf)
    }
    
}

/// Static storage for keeping pointers to Godot implementation wrapped by VariantDictionary
enum GodotInterfaceForDictionary {
    // MARK: - Destructor
    static let destructor: GDExtensionPtrDestructor = {
        return gi.variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    
    // MARK: - Constructors
    static let constructor0: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_DICTIONARY, 0)!
    }()
    
    static let constructor1: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_DICTIONARY, 1)!
    }()
    
    static let constructor2: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_DICTIONARY, 2)!
    }()
    
    // MARK: - Methods
    static let method_size: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("size")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 3173160232)!
    }()
    
    static let method_is_empty: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_empty")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 3918633141)!
    }()
    
    static let method_clear: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("clear")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 3218959716)!
    }()
    
    static let method_assign: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("assign")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 3642266950)!
    }()
    
    static let method_sort: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("sort")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 3218959716)!
    }()
    
    static let method_merge: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("merge")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 2079548978)!
    }()
    
    static let method_merged: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("merged")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 2271165639)!
    }()
    
    static let method_has: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("has")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 3680194679)!
    }()
    
    static let method_has_all: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("has_all")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 2988181878)!
    }()
    
    static let method_find_key: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("find_key")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 1988825835)!
    }()
    
    static let method_erase: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("erase")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 1776646889)!
    }()
    
    static let method_hash: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("hash")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 3173160232)!
    }()
    
    static let method_keys: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("keys")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 4144163970)!
    }()
    
    static let method_values: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("values")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 4144163970)!
    }()
    
    static let method_duplicate: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("duplicate")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 830099069)!
    }()
    
    static let method_get: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 2205440559)!
    }()
    
    static let method_get_or_add: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_or_add")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 1052551076)!
    }()
    
    static let method_set: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("set")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 2175348267)!
    }()
    
    static let method_is_typed: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_typed")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 3918633141)!
    }()
    
    static let method_is_typed_key: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_typed_key")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 3918633141)!
    }()
    
    static let method_is_typed_value: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_typed_value")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 3918633141)!
    }()
    
    static let method_is_same_typed: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_same_typed")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 3471775634)!
    }()
    
    static let method_is_same_typed_key: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_same_typed_key")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 3471775634)!
    }()
    
    static let method_is_same_typed_value: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_same_typed_value")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 3471775634)!
    }()
    
    static let method_get_typed_key_builtin: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_typed_key_builtin")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 3173160232)!
    }()
    
    static let method_get_typed_value_builtin: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_typed_value_builtin")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 3173160232)!
    }()
    
    static let method_get_typed_key_class_name: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_typed_key_class_name")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 1825232092)!
    }()
    
    static let method_get_typed_value_class_name: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_typed_value_class_name")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 1825232092)!
    }()
    
    static let method_get_typed_key_script: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_typed_key_script")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 1460142086)!
    }()
    
    static let method_get_typed_value_script: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_typed_value_script")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 1460142086)!
    }()
    
    static let method_make_read_only: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("make_read_only")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 3218959716)!
    }()
    
    static let method_is_read_only: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_read_only")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 3918633141)!
    }()
    
    static let method_recursive_equal: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("recursive_equal")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, &name.content, 1404404751)!
    }()
    
    static let keyed_getter: GDExtensionPtrKeyedGetter = {
        return gi.variant_get_ptr_keyed_getter (GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    
    static let keyed_setter: GDExtensionPtrKeyedSetter = {
        return gi.variant_get_ptr_keyed_setter (GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    
    static let keyed_checker: GDExtensionPtrKeyedChecker = {
        return gi.variant_get_ptr_keyed_checker (GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    
    // MARK: - Operators
    static let operator_3: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_DICTIONARY, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    
    static let operator_4: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_DICTIONARY, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    
    // MARK: - Variant conversion
    static let variantFromSelf: GDExtensionVariantFromTypeConstructorFunc = {
        gi.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    
    static let selfFromVariant: GDExtensionTypeFromVariantConstructorFunc = {
        gi.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    
    
}

