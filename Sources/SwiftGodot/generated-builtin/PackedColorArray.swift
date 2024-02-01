// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

/// A packed array of ``Color``s.
/// 
/// An array specifically designed to hold ``Color``. Packs data tightly, so it saves memory for large array sizes.
public class PackedColorArray: Equatable, Collection {
    static var destructor: GDExtensionPtrDestructor = {
        return gi.variant_get_ptr_destructor (GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY)!
    }()
    
    deinit {
        if content != PackedColorArray.zero {
            PackedColorArray.destructor (&content)
        }
        
    }
    
    /// The number of elements in the array
    public var count: Int { Int (size()) }
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
            PackedColorArray.constructor1 (&self.content, &args)
        }
        
    }
    
    static var constructor0: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, 0)!
    
    /// Constructs an empty ``PackedColorArray``.
    public required init () {
        PackedColorArray.constructor0 (&content, nil)
    }
    
    static var constructor1: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, 1)!
    
    /// Constructs a ``PackedColorArray`` as a copy of the given ``PackedColorArray``.
    public init (from: PackedColorArray) {
        var args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &from.content) { p0 in
            args.append (p0)
        
            PackedColorArray.constructor1 (&content, &args)
        }
    }
    
    static var constructor2: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, 2)!
    
    /// Constructs a new ``PackedColorArray``. Optionally, you can pass in a generic ``GArray`` that will be converted.
    /// 
    /// > Note: When initializing a ``PackedColorArray`` with elements, it must be initialized with an ``GArray`` of ``Color`` values:
    /// 
    public init (from: GArray) {
        var args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &from.content) { p0 in
            args.append (p0)
        
            PackedColorArray.constructor2 (&content, &args)
        }
    }
    
    
    /* Methods */
    
    static var method_size: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("size")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, &name.content, 3173160232)!
    }()
    
    /// Returns the number of elements in the array.
    public final func size ()-> Int64 {
        var result: Int64 = Int64()
        PackedColorArray.method_size (&content, nil, &result, 0)
        return result
    }
    
    static var method_is_empty: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("is_empty")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, &name.content, 3918633141)!
    }()
    
    /// Returns `true` if the array is empty.
    public final func isEmpty ()-> Bool {
        var result: Bool = Bool()
        PackedColorArray.method_is_empty (&content, nil, &result, 0)
        return result
    }
    
    static var method_set: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("set")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, &name.content, 1444096570)!
    }()
    
    /// Changes the ``Color`` at the given index.
    public final func set (index: Int64, value: Color) {
        var copy_index = index
        var copy_value = value
        var args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_index) { p0 in
            args.append (p0)
            withUnsafePointer (to: &copy_value) { p1 in
                args.append (p1)
        
                PackedColorArray.method_set (&content, &args, nil, 2)
            }
        }
    }
    
    static var method_push_back: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("push_back")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, &name.content, 1007858200)!
    }()
    
    /// Appends a value to the array.
    @discardableResult /* 1: push_back */ 
    public final func pushBack (value: Color)-> Bool {
        var result: Bool = Bool()
        var copy_value = value
        var args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_value) { p0 in
            args.append (p0)
        
            PackedColorArray.method_push_back (&content, &args, &result, 1)
            return result
        }
    }
    
    static var method_append: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("append")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, &name.content, 1007858200)!
    }()
    
    /// Appends an element at the end of the array (alias of ``pushBack(value:)``).
    @discardableResult /* 1: append */ 
    public final func append (value: Color)-> Bool {
        var result: Bool = Bool()
        var copy_value = value
        var args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_value) { p0 in
            args.append (p0)
        
            PackedColorArray.method_append (&content, &args, &result, 1)
            return result
        }
    }
    
    static var method_append_array: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("append_array")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, &name.content, 798822497)!
    }()
    
    /// Appends a ``PackedColorArray`` at the end of this array.
    public final func appendArray (_ array: PackedColorArray) {
        var args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &array.content) { p0 in
            args.append (p0)
        
            PackedColorArray.method_append_array (&content, &args, nil, 1)
        }
    }
    
    static var method_remove_at: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("remove_at")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, &name.content, 2823966027)!
    }()
    
    /// Removes an element from the array by index.
    public final func removeAt (index: Int64) {
        var copy_index = index
        var args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_index) { p0 in
            args.append (p0)
        
            PackedColorArray.method_remove_at (&content, &args, nil, 1)
        }
    }
    
    static var method_insert: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("insert")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, &name.content, 785289703)!
    }()
    
    /// Inserts a new element at a given position in the array. The position must be valid, or at the end of the array (`idx == size()`).
    public final func insert (atIndex: Int64, value: Color)-> Int64 {
        var result: Int64 = Int64()
        var copy_at_index = atIndex
        var copy_value = value
        var args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_at_index) { p0 in
            args.append (p0)
            return withUnsafePointer (to: &copy_value) { p1 in
                args.append (p1)
        
                PackedColorArray.method_insert (&content, &args, &result, 2)
                return result
            }
        }
    }
    
    static var method_fill: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("fill")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, &name.content, 3730314301)!
    }()
    
    /// Assigns the given value to all elements in the array. This can typically be used together with ``resize(newSize:)`` to create an array with a given size and initialized elements.
    public final func fill (value: Color) {
        var copy_value = value
        var args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_value) { p0 in
            args.append (p0)
        
            PackedColorArray.method_fill (&content, &args, nil, 1)
        }
    }
    
    static var method_resize: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("resize")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, &name.content, 848867239)!
    }()
    
    /// Sets the size of the array. If the array is grown, reserves elements at the end of the array. If the array is shrunk, truncates the array to the new size.
    public final func resize (newSize: Int64)-> Int64 {
        var result: Int64 = Int64()
        var copy_new_size = newSize
        var args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_new_size) { p0 in
            args.append (p0)
        
            PackedColorArray.method_resize (&content, &args, &result, 1)
            return result
        }
    }
    
    static var method_clear: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("clear")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, &name.content, 3218959716)!
    }()
    
    /// Clears the array. This is equivalent to using ``resize(newSize:)`` with a size of `0`.
    public final func clear () {
        PackedColorArray.method_clear (&content, nil, nil, 0)
    }
    
    static var method_has: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("has")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, &name.content, 3167426256)!
    }()
    
    /// Returns `true` if the array contains `value`.
    public final func has (value: Color)-> Bool {
        var result: Bool = Bool()
        var copy_value = value
        var args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_value) { p0 in
            args.append (p0)
        
            PackedColorArray.method_has (&content, &args, &result, 1)
            return result
        }
    }
    
    static var method_reverse: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("reverse")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, &name.content, 3218959716)!
    }()
    
    /// Reverses the order of the elements in the array.
    public final func reverse () {
        PackedColorArray.method_reverse (&content, nil, nil, 0)
    }
    
    static var method_slice: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("slice")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, &name.content, 2451797139)!
    }()
    
    /// Returns the slice of the ``PackedColorArray``, from `begin` (inclusive) to `end` (exclusive), as a new ``PackedColorArray``.
    /// 
    /// The absolute value of `begin` and `end` will be clamped to the array size, so the default value for `end` makes it slice to the size of the array by default (i.e. `arr.slice(1)` is a shorthand for `arr.slice(1, arr.size())`).
    /// 
    /// If either `begin` or `end` are negative, they will be relative to the end of the array (i.e. `arr.slice(0, -2)` is a shorthand for `arr.slice(0, arr.size() - 2)`).
    /// 
    public final func slice (begin: Int64, end: Int64 = 2147483647)-> PackedColorArray {
        let result: PackedColorArray = PackedColorArray()
        var copy_begin = begin
        var copy_end = end
        var args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_begin) { p0 in
            args.append (p0)
            return withUnsafePointer (to: &copy_end) { p1 in
                args.append (p1)
        
                PackedColorArray.method_slice (&content, &args, &result.content, 2)
                return result
            }
        }
    }
    
    static var method_to_byte_array: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("to_byte_array")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, &name.content, 247621236)!
    }()
    
    /// Returns a ``PackedByteArray`` with each color encoded as bytes.
    public final func toByteArray ()-> PackedByteArray {
        let result: PackedByteArray = PackedByteArray()
        PackedColorArray.method_to_byte_array (&content, nil, &result.content, 0)
        return result
    }
    
    static var method_sort: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("sort")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, &name.content, 3218959716)!
    }()
    
    /// Sorts the elements of the array in ascending order.
    public final func sort () {
        PackedColorArray.method_sort (&content, nil, nil, 0)
    }
    
    static var method_bsearch: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("bsearch")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, &name.content, 314143821)!
    }()
    
    /// Finds the index of an existing value (or the insertion index that maintains sorting order, if the value is not yet present in the array) using binary search. Optionally, a `before` specifier can be passed. If `false`, the returned index comes after all existing entries of the value in the array.
    /// 
    /// > Note: Calling ``bsearch(value:before:)`` on an unsorted array results in unexpected behavior.
    /// 
    public final func bsearch (value: Color, before: Bool = true)-> Int64 {
        var result: Int64 = Int64()
        var copy_value = value
        var copy_before = before
        var args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_value) { p0 in
            args.append (p0)
            return withUnsafePointer (to: &copy_before) { p1 in
                args.append (p1)
        
                PackedColorArray.method_bsearch (&content, &args, &result, 2)
                return result
            }
        }
    }
    
    static var method_duplicate: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("duplicate")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, &name.content, 1011903421)!
    }()
    
    /// Creates a copy of the array, and returns it.
    public final func duplicate ()-> PackedColorArray {
        let result: PackedColorArray = PackedColorArray()
        PackedColorArray.method_duplicate (&content, nil, &result.content, 0)
        return result
    }
    
    static var method_find: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("find")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, &name.content, 3156095363)!
    }()
    
    /// Searches the array for a value and returns its index or `-1` if not found. Optionally, the initial search index can be passed.
    public final func find (value: Color, from: Int64 = 0)-> Int64 {
        var result: Int64 = Int64()
        var copy_value = value
        var copy_from = from
        var args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_value) { p0 in
            args.append (p0)
            return withUnsafePointer (to: &copy_from) { p1 in
                args.append (p1)
        
                PackedColorArray.method_find (&content, &args, &result, 2)
                return result
            }
        }
    }
    
    static var method_rfind: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("rfind")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, &name.content, 3156095363)!
    }()
    
    /// Searches the array in reverse order. Optionally, a start search index can be passed. If negative, the start index is considered relative to the end of the array.
    public final func rfind (value: Color, from: Int64 = -1)-> Int64 {
        var result: Int64 = Int64()
        var copy_value = value
        var copy_from = from
        var args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_value) { p0 in
            args.append (p0)
            return withUnsafePointer (to: &copy_from) { p1 in
                args.append (p1)
        
                PackedColorArray.method_rfind (&content, &args, &result, 2)
                return result
            }
        }
    }
    
    static var method_count: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("count")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, &name.content, 1682108616)!
    }()
    
    /// Returns the number of times an element is in the array.
    public final func count (value: Color)-> Int64 {
        var result: Int64 = Int64()
        var copy_value = value
        var args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_value) { p0 in
            args.append (p0)
        
            PackedColorArray.method_count (&content, &args, &result, 1)
            return result
        }
    }
    
    static var operator_5: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY)!
    }()
    
    /// Returns `true` if contents of both arrays are the same, i.e. they have all equal ``Color``s at the corresponding indices.
    public static func == (lhs: PackedColorArray, rhs: PackedColorArray) -> Bool  {
        var result: Bool = Bool()
        
        PackedColorArray.operator_5 (&lhs.content, &rhs.content, &result)
        return result
    }
    
    static var operator_6: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY)!
    }()
    
    /// Returns `true` if contents of the arrays differ.
    public static func != (lhs: PackedColorArray, rhs: PackedColorArray) -> Bool  {
        var result: Bool = Bool()
        
        PackedColorArray.operator_6 (&lhs.content, &rhs.content, &result)
        return result
    }
    
    static var operator_7: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY)!
    }()
    
    /// Returns a new ``PackedColorArray`` with contents of `right` added at the end of this array. For better performance, consider using ``appendArray(array:)`` instead.
    public static func + (lhs: PackedColorArray, rhs: PackedColorArray) -> PackedColorArray  {
        let result: PackedColorArray = PackedColorArray()
        
        PackedColorArray.operator_7 (&lhs.content, &rhs.content, &result.content)
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

