// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

/// A packed array of 64-bit integers.
/// 
/// An array specifically designed to hold 64-bit integer values. Packs data tightly, so it saves memory for large array sizes.
/// 
/// > Note: This type stores signed 64-bit integers, which means it can take values in the interval `[-2^63, 2^63 - 1]`, i.e. `[-9223372036854775808, 9223372036854775807]`. Exceeding those bounds will wrap around. If you only need to pack 32-bit integers tightly, see ``PackedInt32Array`` for a more memory-friendly alternative.
/// 
public class PackedInt64Array: Equatable, Collection {
    static var destructor: GDExtensionPtrDestructor = {
        return gi.variant_get_ptr_destructor (GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY)!
    }()
    
    deinit {
        if content != PackedInt64Array.zero {
            PackedInt64Array.destructor (&content)
        }
        
    }
    
    // Contains a binary blob where this type information is stored
    public var content: ContentType = (0, 0)
    // Used to initialize empty types
    public static let zero: ContentType  = (0, 0)
    // Convenience type that matches the build configuration storage needs
    public typealias ContentType = (Int64, Int64)
    // Used to construct objects on virtual proxies
    public required init (content: ContentType) {
        var copy = content
        var args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy) { ptr in
            args.append (ptr)
            PackedInt64Array.constructor1 (&self.content, &args)
        }
        
    }
    
    static var constructor0: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, 0)!
    
    /// Constructs an empty ``PackedInt64Array``.
    public required init () {
        PackedInt64Array.constructor0 (&content, nil)
    }
    
    static var constructor1: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, 1)!
    
    /// Constructs a ``PackedInt64Array`` as a copy of the given ``PackedInt64Array``.
    public init (from: PackedInt64Array) {
        var args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &from.content) { p0 in
            args.append (p0)
        
            PackedInt64Array.constructor1 (&content, &args)
        }
    }
    
    static var constructor2: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, 2)!
    
    /// Constructs a new ``PackedInt64Array``. Optionally, you can pass in a generic ``GArray`` that will be converted.
    public init (from: GArray) {
        var args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &from.content) { p0 in
            args.append (p0)
        
            PackedInt64Array.constructor2 (&content, &args)
        }
    }
    
    
    /* Methods */
    
    static var method_size: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("size")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 3173160232)!
    }()
    
    /// Returns the number of elements in the array.
    public final func size ()-> Int64 {
        var result: Int64 = Int64()
        PackedInt64Array.method_size (&content, nil, &result, 0)
        return result
    }
    
    static var method_is_empty: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("is_empty")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 3918633141)!
    }()
    
    /// Returns `true` if the array is empty.
    public final func isEmpty ()-> Bool {
        var result: Bool = Bool()
        PackedInt64Array.method_is_empty (&content, nil, &result, 0)
        return result
    }
    
    static var method_set: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("set")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 3638975848)!
    }()
    
    /// Changes the integer at the given index.
    public final func set (index: Int64, value: Int64) {
        var copy_index = index
        var copy_value = value
        var args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_index) { p0 in
            args.append (p0)
            withUnsafePointer (to: &copy_value) { p1 in
                args.append (p1)
        
                PackedInt64Array.method_set (&content, &args, nil, 2)
            }
        }
    }
    
    static var method_push_back: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("push_back")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 694024632)!
    }()
    
    /// Appends a value to the array.
    public final func pushBack (value: Int64)-> Bool {
        var result: Bool = Bool()
        var copy_value = value
        var args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_value) { p0 in
            args.append (p0)
        
            PackedInt64Array.method_push_back (&content, &args, &result, 1)
            return result
        }
    }
    
    static var method_append: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("append")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 694024632)!
    }()
    
    /// Appends an element at the end of the array (alias of ``pushBack(value:)``).
    @discardableResult /* 1: append */ 
    public final func append (value: Int64)-> Bool {
        var result: Bool = Bool()
        var copy_value = value
        var args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_value) { p0 in
            args.append (p0)
        
            PackedInt64Array.method_append (&content, &args, &result, 1)
            return result
        }
    }
    
    static var method_append_array: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("append_array")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 2090311302)!
    }()
    
    /// Appends a ``PackedInt64Array`` at the end of this array.
    public final func appendArray (_ array: PackedInt64Array) {
        var args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &array.content) { p0 in
            args.append (p0)
        
            PackedInt64Array.method_append_array (&content, &args, nil, 1)
        }
    }
    
    static var method_remove_at: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("remove_at")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 2823966027)!
    }()
    
    /// Removes an element from the array by index.
    public final func removeAt (index: Int64) {
        var copy_index = index
        var args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_index) { p0 in
            args.append (p0)
        
            PackedInt64Array.method_remove_at (&content, &args, nil, 1)
        }
    }
    
    static var method_insert: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("insert")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 1487112728)!
    }()
    
    /// Inserts a new integer at a given position in the array. The position must be valid, or at the end of the array (`idx == size()`).
    public final func insert (atIndex: Int64, value: Int64)-> Int64 {
        var result: Int64 = Int64()
        var copy_at_index = atIndex
        var copy_value = value
        var args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_at_index) { p0 in
            args.append (p0)
            return withUnsafePointer (to: &copy_value) { p1 in
                args.append (p1)
        
                PackedInt64Array.method_insert (&content, &args, &result, 2)
                return result
            }
        }
    }
    
    static var method_fill: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("fill")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 2823966027)!
    }()
    
    /// Assigns the given value to all elements in the array. This can typically be used together with ``resize(newSize:)`` to create an array with a given size and initialized elements.
    public final func fill (value: Int64) {
        var copy_value = value
        var args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_value) { p0 in
            args.append (p0)
        
            PackedInt64Array.method_fill (&content, &args, nil, 1)
        }
    }
    
    static var method_resize: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("resize")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 848867239)!
    }()
    
    /// Sets the size of the array. If the array is grown, reserves elements at the end of the array. If the array is shrunk, truncates the array to the new size.
    public final func resize (newSize: Int64)-> Int64 {
        var result: Int64 = Int64()
        var copy_new_size = newSize
        var args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_new_size) { p0 in
            args.append (p0)
        
            PackedInt64Array.method_resize (&content, &args, &result, 1)
            return result
        }
    }
    
    static var method_clear: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("clear")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 3218959716)!
    }()
    
    /// Clears the array. This is equivalent to using ``resize(newSize:)`` with a size of `0`.
    public final func clear () {
        PackedInt64Array.method_clear (&content, nil, nil, 0)
    }
    
    static var method_has: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("has")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 931488181)!
    }()
    
    /// Returns `true` if the array contains `value`.
    public final func has (value: Int64)-> Bool {
        var result: Bool = Bool()
        var copy_value = value
        var args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_value) { p0 in
            args.append (p0)
        
            PackedInt64Array.method_has (&content, &args, &result, 1)
            return result
        }
    }
    
    static var method_reverse: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("reverse")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 3218959716)!
    }()
    
    /// Reverses the order of the elements in the array.
    public final func reverse () {
        PackedInt64Array.method_reverse (&content, nil, nil, 0)
    }
    
    static var method_slice: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("slice")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 1726550804)!
    }()
    
    /// Returns the slice of the ``PackedInt64Array``, from `begin` (inclusive) to `end` (exclusive), as a new ``PackedInt64Array``.
    /// 
    /// The absolute value of `begin` and `end` will be clamped to the array size, so the default value for `end` makes it slice to the size of the array by default (i.e. `arr.slice(1)` is a shorthand for `arr.slice(1, arr.size())`).
    /// 
    /// If either `begin` or `end` are negative, they will be relative to the end of the array (i.e. `arr.slice(0, -2)` is a shorthand for `arr.slice(0, arr.size() - 2)`).
    /// 
    public final func slice (begin: Int64, end: Int64 = 2147483647)-> PackedInt64Array {
        let result: PackedInt64Array = PackedInt64Array()
        var copy_begin = begin
        var copy_end = end
        var args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_begin) { p0 in
            args.append (p0)
            return withUnsafePointer (to: &copy_end) { p1 in
                args.append (p1)
        
                PackedInt64Array.method_slice (&content, &args, &result.content, 2)
                return result
            }
        }
    }
    
    static var method_to_byte_array: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("to_byte_array")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 247621236)!
    }()
    
    /// Returns a copy of the data converted to a ``PackedByteArray``, where each element have been encoded as 8 bytes.
    /// 
    /// The size of the new array will be `int64_array.size() * 8`.
    /// 
    public final func toByteArray ()-> PackedByteArray {
        let result: PackedByteArray = PackedByteArray()
        PackedInt64Array.method_to_byte_array (&content, nil, &result.content, 0)
        return result
    }
    
    static var method_sort: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("sort")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 3218959716)!
    }()
    
    /// Sorts the elements of the array in ascending order.
    public final func sort () {
        PackedInt64Array.method_sort (&content, nil, nil, 0)
    }
    
    static var method_bsearch: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("bsearch")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 3380005890)!
    }()
    
    /// Finds the index of an existing value (or the insertion index that maintains sorting order, if the value is not yet present in the array) using binary search. Optionally, a `before` specifier can be passed. If `false`, the returned index comes after all existing entries of the value in the array.
    /// 
    /// > Note: Calling ``bsearch(value:before:)`` on an unsorted array results in unexpected behavior.
    /// 
    public final func bsearch (value: Int64, before: Bool = true)-> Int64 {
        var result: Int64 = Int64()
        var copy_value = value
        var copy_before = before
        var args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_value) { p0 in
            args.append (p0)
            return withUnsafePointer (to: &copy_before) { p1 in
                args.append (p1)
        
                PackedInt64Array.method_bsearch (&content, &args, &result, 2)
                return result
            }
        }
    }
    
    static var method_duplicate: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("duplicate")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 2376370016)!
    }()
    
    /// Creates a copy of the array, and returns it.
    public final func duplicate ()-> PackedInt64Array {
        let result: PackedInt64Array = PackedInt64Array()
        PackedInt64Array.method_duplicate (&content, nil, &result.content, 0)
        return result
    }
    
    static var method_find: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("find")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 2984303840)!
    }()
    
    /// Searches the array for a value and returns its index or `-1` if not found. Optionally, the initial search index can be passed.
    public final func find (value: Int64, from: Int64 = 0)-> Int64 {
        var result: Int64 = Int64()
        var copy_value = value
        var copy_from = from
        var args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_value) { p0 in
            args.append (p0)
            return withUnsafePointer (to: &copy_from) { p1 in
                args.append (p1)
        
                PackedInt64Array.method_find (&content, &args, &result, 2)
                return result
            }
        }
    }
    
    static var method_rfind: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("rfind")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 2984303840)!
    }()
    
    /// Searches the array in reverse order. Optionally, a start search index can be passed. If negative, the start index is considered relative to the end of the array.
    public final func rfind (value: Int64, from: Int64 = -1)-> Int64 {
        var result: Int64 = Int64()
        var copy_value = value
        var copy_from = from
        var args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_value) { p0 in
            args.append (p0)
            return withUnsafePointer (to: &copy_from) { p1 in
                args.append (p1)
        
                PackedInt64Array.method_rfind (&content, &args, &result, 2)
                return result
            }
        }
    }
    
    static var method_count: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("count")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, &name.content, 4103005248)!
    }()
    
    /// Returns the number of times an element is in the array.
    public final func count (value: Int64)-> Int64 {
        var result: Int64 = Int64()
        var copy_value = value
        var args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_value) { p0 in
            args.append (p0)
        
            PackedInt64Array.method_count (&content, &args, &result, 1)
            return result
        }
    }
    
    static var operator_5: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY)!
    }()
    
    /// Returns `true` if contents of both arrays are the same, i.e. they have all equal ints at the corresponding indices.
    public static func == (lhs: PackedInt64Array, rhs: PackedInt64Array) -> Bool  {
        var result: Bool = Bool()
        
        PackedInt64Array.operator_5 (&lhs.content, &rhs.content, &result)
        return result
    }
    
    static var operator_6: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY)!
    }()
    
    /// Returns `true` if contents of the arrays differ.
    public static func != (lhs: PackedInt64Array, rhs: PackedInt64Array) -> Bool  {
        var result: Bool = Bool()
        
        PackedInt64Array.operator_6 (&lhs.content, &rhs.content, &result)
        return result
    }
    
    static var operator_7: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY)!
    }()
    
    /// Returns a new ``PackedInt64Array`` with contents of `right` added at the end of this array. For better performance, consider using ``appendArray(array:)`` instead.
    public static func + (lhs: PackedInt64Array, rhs: PackedInt64Array) -> PackedInt64Array  {
        let result: PackedInt64Array = PackedInt64Array()
        
        PackedInt64Array.operator_7 (&lhs.content, &rhs.content, &result.content)
        return result
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
    
}

