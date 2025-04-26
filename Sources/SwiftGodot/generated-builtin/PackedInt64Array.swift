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


/// A packed array of 64-bit integers.
/// 
/// An array specifically designed to hold 64-bit integer values. Packs data tightly, so it saves memory for large array sizes.
/// 
/// > Note: This type stores signed 64-bit integers, which means it can take values in the interval `[-2^63, 2^63 - 1]`, i.e. `[-9223372036854775808, 9223372036854775807]`. Exceeding those bounds will wrap around. If you only need to pack 32-bit integers tightly, see ``PackedInt32Array`` for a more memory-friendly alternative.
/// 
/// **Differences between packed arrays, typed arrays, and untyped arrays:** Packed arrays are generally faster to iterate on and modify compared to a typed array of the same type (e.g. ``PackedInt64Array`` versus `Arrayinteger`). Also, packed arrays consume less memory. As a downside, packed arrays are less flexible as they don't offer as many convenience methods such as ``VariantArray/map()``. Typed arrays are in turn faster to iterate on and modify than untyped arrays.
/// 
/// > Note: Packed arrays are always passed by reference. To get a copy of an array that can be modified independently of the original array, use ``duplicate()``. This is _not_ the case for built-in properties and methods. The returned packed array of these are a copies, and changing it will _not_ affect the original value. To update a built-in property you need to modify the returned array, and then assign it to the property again.
/// 
public final class PackedInt64Array: _GodotBridgeableBuiltin, Equatable, Collection, RandomAccessCollection {
    deinit {
        if content != PackedInt64Array.zero {
            GodotInterfaceForPackedInt64Array.destructor(&content)
        }
        
    }
    
    /// The number of elements in the array
    public var count: Int { Int (size()) }
    // Contains a binary blob where this type information is stored
    public var content: ContentType = PackedInt64Array.zero
    
    // Used to initialize empty types
    public static var zero: ContentType { (0, 0) }
    // Convenience type that matches the build configuration storage needs
    public typealias ContentType = (Int64, Int64)
    // Used to construct objects on virtual proxies
    public required init(content proxyContent: ContentType) {
        withUnsafePointer(to: proxyContent) { pContent in
            withUnsafePointer(to: pContent) { pArgs in
                GodotInterfaceForPackedInt64Array.constructor1(&content, pArgs)
            }
        }
    }
    /// Initialize with existing `ContentType` assuming this ``PackedInt64Array`` owns it since now.
    init(takingOver content: ContentType) {
        self.content = content
    }
    
    /// Constructs an empty ``PackedInt64Array``.
    public required init() {
        GodotInterfaceForPackedInt64Array.constructor0(&content, nil)
    }
    
    /// Constructs a ``PackedInt64Array`` as a copy of the given ``PackedInt64Array``.
    public init(from: PackedInt64Array) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedInt64Array.constructor1(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs a new ``PackedInt64Array``. Optionally, you can pass in a generic ``VariantArray`` that will be converted.
    public init(from: VariantArray) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedInt64Array.constructor2(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    
    /* Methods */
    
    /// Returns the 64-bit integer at the given `index` in the array. This is the same as using the `[]` operator (`array[index]`).
    public final func get(index: Int64) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedInt64Array.method_get(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Changes the integer at the given index.
    public final func set(index: Int64, value: Int64) {
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedInt64Array.method_set(&content, pArgs, nil, 2)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Returns the number of elements in the array.
    public final func size() -> Int64 {
        var result: Int64 = Int64()
        GodotInterfaceForPackedInt64Array.method_size(&content, nil, &result, 0)
        return result
    }
    
    /// Returns `true` if the array is empty.
    public final func isEmpty() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForPackedInt64Array.method_is_empty(&content, nil, &result, 0)
        return result
    }
    
    /// Appends a value to the array.
    @discardableResult /* 1: push_back */ 
    public final func pushBack(value: Int64) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedInt64Array.method_push_back(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Appends an element at the end of the array (alias of ``pushBack(value:)``).
    @discardableResult /* 1: append */ 
    public final func append(_ value: Int64) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedInt64Array.method_append(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Appends a ``PackedInt64Array`` at the end of this array.
    public final func appendArray(_ array: PackedInt64Array) {
        withUnsafePointer(to: array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedInt64Array.method_append_array(&content, pArgs, nil, 1)
                }
                
            }
            
        }
        
    }
    
    /// Removes an element from the array by index.
    public final func removeAt(index: Int64) {
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedInt64Array.method_remove_at(&content, pArgs, nil, 1)
                }
                
            }
            
        }
        
    }
    
    /// Inserts a new integer at a given position in the array. The position must be valid, or at the end of the array (`idx == size()`).
    public final func insert(atIndex: Int64, value: Int64) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: atIndex) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedInt64Array.method_insert(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Assigns the given value to all elements in the array. This can typically be used together with ``resize(newSize:)`` to create an array with a given size and initialized elements.
    public final func fill(value: Int64) {
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedInt64Array.method_fill(&content, pArgs, nil, 1)
                }
                
            }
            
        }
        
    }
    
    /// Sets the size of the array. If the array is grown, reserves elements at the end of the array. If the array is shrunk, truncates the array to the new size. Calling ``resize(newSize:)`` once and assigning the new values is faster than adding new elements one by one.
    @discardableResult /* 1: resize */ 
    public final func resize(newSize: Int64) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: newSize) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedInt64Array.method_resize(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Clears the array. This is equivalent to using ``resize(newSize:)`` with a size of `0`.
    public final func clear() {
        GodotInterfaceForPackedInt64Array.method_clear(&content, nil, nil, 0)
    }
    
    /// Returns `true` if the array contains `value`.
    public final func has(value: Int64) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedInt64Array.method_has(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Reverses the order of the elements in the array.
    public final func reverse() {
        GodotInterfaceForPackedInt64Array.method_reverse(&content, nil, nil, 0)
    }
    
    /// Returns the slice of the ``PackedInt64Array``, from `begin` (inclusive) to `end` (exclusive), as a new ``PackedInt64Array``.
    /// 
    /// The absolute value of `begin` and `end` will be clamped to the array size, so the default value for `end` makes it slice to the size of the array by default (i.e. `arr.slice(1)` is a shorthand for `arr.slice(1, arr.size())`).
    /// 
    /// If either `begin` or `end` are negative, they will be relative to the end of the array (i.e. `arr.slice(0, -2)` is a shorthand for `arr.slice(0, arr.size() - 2)`).
    /// 
    public final func slice(begin: Int64, end: Int64 = 2147483647) -> PackedInt64Array {
        let result: PackedInt64Array = PackedInt64Array()
        withUnsafePointer(to: begin) { pArg0 in
            withUnsafePointer(to: end) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedInt64Array.method_slice(&content, pArgs, &result.content, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of the data converted to a ``PackedByteArray``, where each element has been encoded as 8 bytes.
    /// 
    /// The size of the new array will be `int64_array.size() * 8`.
    /// 
    public final func toByteArray() -> PackedByteArray {
        let result: PackedByteArray = PackedByteArray()
        GodotInterfaceForPackedInt64Array.method_to_byte_array(&content, nil, &result.content, 0)
        return result
    }
    
    /// Sorts the elements of the array in ascending order.
    public final func sort() {
        GodotInterfaceForPackedInt64Array.method_sort(&content, nil, nil, 0)
    }
    
    /// Finds the index of an existing value (or the insertion index that maintains sorting order, if the value is not yet present in the array) using binary search. Optionally, a `before` specifier can be passed. If `false`, the returned index comes after all existing entries of the value in the array.
    /// 
    /// > Note: Calling ``bsearch(value:before:)`` on an unsorted array results in unexpected behavior.
    /// 
    public final func bsearch(value: Int64, before: Bool = true) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: before) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedInt64Array.method_bsearch(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Creates a copy of the array, and returns it.
    public final func duplicate() -> PackedInt64Array {
        let result: PackedInt64Array = PackedInt64Array()
        GodotInterfaceForPackedInt64Array.method_duplicate(&content, nil, &result.content, 0)
        return result
    }
    
    /// Searches the array for a value and returns its index or `-1` if not found. Optionally, the initial search index can be passed.
    public final func find(value: Int64, from: Int64 = 0) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: from) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedInt64Array.method_find(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Searches the array in reverse order. Optionally, a start search index can be passed. If negative, the start index is considered relative to the end of the array.
    public final func rfind(value: Int64, from: Int64 = -1) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: from) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedInt64Array.method_rfind(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the number of times an element is in the array.
    public final func count(value: Int64) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedInt64Array.method_count(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if contents of both arrays are the same, i.e. they have all equal ints at the corresponding indices.
    public static func ==(lhs: PackedInt64Array, rhs: PackedInt64Array) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForPackedInt64Array.operator_5(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if contents of the arrays differ.
    public static func !=(lhs: PackedInt64Array, rhs: PackedInt64Array) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForPackedInt64Array.operator_6(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns a new ``PackedInt64Array`` with contents of `right` added at the end of this array. For better performance, consider using ``appendArray(array:)`` instead.
    public static func +(lhs: PackedInt64Array, rhs: PackedInt64Array) -> PackedInt64Array  {
        let result: PackedInt64Array = PackedInt64Array()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForPackedInt64Array.operator_7(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    /// Wrap ``PackedInt64Array`` into a ``Variant``
    @inline(__always)
    @inlinable
    public func toVariant() -> Variant {
        Variant(self)
    }
    
    /// Wrap ``PackedInt64Array`` into a ``Variant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toVariant() -> Variant? {
        Variant(self)
    }
    
    /// Wrap ``PackedInt64Array`` into a ``FastVariant``
    @inline(__always)
    @inlinable
    public func toFastVariant() -> FastVariant {
        FastVariant(self)
    }
    
    /// Wrap ``PackedInt64Array`` into a ``FastVariant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toFastVariant() -> FastVariant? {
        FastVariant(self)
    }
    
    /// Extract ``PackedInt64Array`` from a ``Variant``. Throws `VariantConversionError` if it's not possible.
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
    
    /// Initialze ``PackedInt64Array`` from ``Variant``. Fails if `variant` doesn't contain ``PackedInt64Array``
    @inline(__always)                                
    public convenience init?(_ variant: Variant) {
        guard Self._variantType == variant.gtype else { return nil }
        var content = PackedInt64Array.zero
        withUnsafeMutablePointer(to: &content) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForPackedInt64Array.selfFromVariant)                        
        }
        self.init(takingOver: content)
    }
    
    /// Initialze ``PackedInt64Array`` from ``Variant``. Fails if `variant` doesn't contain ``PackedInt64Array`` or is `nil`
    @inline(__always)
    @inlinable
    public convenience init?(_ variant: Variant?) {
        guard let variant else { return nil }
        self.init(variant)
    }
    
    /// Initialze ``PackedInt64Array`` from ``FastVariant``. Fails if `variant` doesn't contain ``PackedInt64Array``
    @inline(__always)                                
    public convenience init?(_ variant: borrowing FastVariant) {
        guard Self._variantType == variant.gtype else { return nil }
        var content = PackedInt64Array.zero
        withUnsafeMutablePointer(to: &content) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForPackedInt64Array.selfFromVariant)                        
        }
        self.init(takingOver: content)
    }
    
    /// Initialze ``PackedInt64Array`` from ``FastVariant``. Fails if `variant` doesn't contain ``PackedInt64Array`` or is `nil`
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
    /// Internal API. For indicating that Godot `Array` of ``PackedInt64Array`` has type `Array[PackedInt64Array]`
    @inline(__always)
    @inlinable
    public static var _variantType: Variant.GType {
        .packedInt64Array 
    }
    public var startIndex: Int {
        0
    }
    
    public var endIndex: Int {
        Int (size ())
    }
    
    public func index(after i: Int) -> Int {
        i+1
    }
    
    public func index(before i: Int) -> Int {
        return i-1
    }
    
}

public extension Variant {
    /// Initialize ``Variant`` by wrapping ``PackedInt64Array?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    convenience init?(_ from: PackedInt64Array?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``Variant`` by wrapping ``PackedInt64Array``
    @inline(__always)
    convenience init(_ from: PackedInt64Array) {
        self.init(payload: from.content, constructor: GodotInterfaceForPackedInt64Array.variantFromSelf)
    }
    
}

public extension FastVariant {
    /// Initialize ``FastVariant`` by wrapping ``PackedInt64Array?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    init?(_ from: PackedInt64Array?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``FastVariant`` by wrapping ``PackedInt64Array``
    @inline(__always)
    init(_ from: PackedInt64Array) {
        self.init(payload: from.content, constructor: GodotInterfaceForPackedInt64Array.variantFromSelf)
    }
    
}

/// Static storage for keeping pointers to Godot implementation wrapped by PackedInt64Array
enum GodotInterfaceForPackedInt64Array {
    // MARK: - Destructor
    static let destructor: GDExtensionPtrDestructor = {
        return gi.variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY)!
    }()
    
    // MARK: - Constructors
    static let constructor0: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, 0)!
    }()
    
    static let constructor1: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, 1)!
    }()
    
    static let constructor2: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, 2)!
    }()
    
    // MARK: - Methods
    static let method_get: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 4103005248)!
    }()
    
    static let method_set: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("set")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 3638975848)!
    }()
    
    static let method_size: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("size")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 3173160232)!
    }()
    
    static let method_is_empty: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_empty")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 3918633141)!
    }()
    
    static let method_push_back: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("push_back")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 694024632)!
    }()
    
    static let method_append: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("append")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 694024632)!
    }()
    
    static let method_append_array: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("append_array")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 2090311302)!
    }()
    
    static let method_remove_at: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("remove_at")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 2823966027)!
    }()
    
    static let method_insert: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("insert")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 1487112728)!
    }()
    
    static let method_fill: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("fill")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 2823966027)!
    }()
    
    static let method_resize: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("resize")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 848867239)!
    }()
    
    static let method_clear: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("clear")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 3218959716)!
    }()
    
    static let method_has: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("has")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 931488181)!
    }()
    
    static let method_reverse: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("reverse")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 3218959716)!
    }()
    
    static let method_slice: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("slice")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 1726550804)!
    }()
    
    static let method_to_byte_array: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("to_byte_array")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 247621236)!
    }()
    
    static let method_sort: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("sort")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 3218959716)!
    }()
    
    static let method_bsearch: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("bsearch")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 3380005890)!
    }()
    
    static let method_duplicate: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("duplicate")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 2376370016)!
    }()
    
    static let method_find: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("find")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 2984303840)!
    }()
    
    static let method_rfind: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("rfind")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 2984303840)!
    }()
    
    static let method_count: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("count")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 4103005248)!
    }()
    
    // MARK: - Operators
    static let operator_5: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY)!
    }()
    
    static let operator_6: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY)!
    }()
    
    static let operator_7: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY)!
    }()
    
    // MARK: - Variant conversion
    static let variantFromSelf: GDExtensionVariantFromTypeConstructorFunc = {
        gi.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY)!
    }()
    
    static let selfFromVariant: GDExtensionTypeFromVariantConstructorFunc = {
        gi.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY)!
    }()
    
    
}

