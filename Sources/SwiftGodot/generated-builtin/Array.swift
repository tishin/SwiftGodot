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


/// A built-in data structure that holds a sequence of elements.
/// 
/// An array data structure that can contain a sequence of elements of any ``Variant`` type. Elements are accessed by a numerical index starting at `0`. Negative indices are used to count from the back (`-1` is the last element, `-2` is the second to last, etc.).
/// 
/// > Note: Arrays are always passed by **reference**. To get a copy of an array that can be modified independently of the original array, use ``duplicate(deep:)``.
/// 
/// > Note: Erasing elements while iterating over arrays is **not** supported and will result in unpredictable behavior.
/// 
/// **Differences between packed arrays, typed arrays, and untyped arrays:** Packed arrays are generally faster to iterate on and modify compared to a typed array of the same type (e.g. ``PackedInt64Array`` versus `Arrayinteger`). Also, packed arrays consume less memory. As a downside, packed arrays are less flexible as they don't offer as many convenience methods such as ``VariantArray/map()``. Typed arrays are in turn faster to iterate on and modify than untyped arrays.
/// 
public final class VariantArray: _GodotBridgeableBuiltin, Equatable, Hashable, Collection, RandomAccessCollection {
    deinit {
        if content != VariantArray.zero {
            GodotInterfaceForArray.destructor(&content)
        }
        
    }
    
    // Contains a binary blob where this type information is stored
    public var content: ContentType = VariantArray.zero
    
    // Used to initialize empty types
    public static var zero: ContentType { 0 }
    // Convenience type that matches the build configuration storage needs
    public typealias ContentType = Int64
    // Used to construct objects on virtual proxies
    public required init(content proxyContent: ContentType) {
        withUnsafePointer(to: proxyContent) { pContent in
            withUnsafePointer(to: pContent) { pArgs in
                GodotInterfaceForArray.constructor1(&content, pArgs)
            }
        }
    }
    /// Initialize with existing `ContentType` assuming this ``VariantArray`` owns it since now.
    init(takingOver content: ContentType) {
        self.content = content
    }
    
    /// Constructs an empty ``VariantArray``.
    public required init() {
        GodotInterfaceForArray.constructor0(&content, nil)
    }
    
    /// Returns the same array as `from`. If you need a copy of the array, use ``duplicate(deep:)``.
    public init(from: VariantArray) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.constructor1(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Creates a typed array from the `base` array. A typed array can only contain elements of the given type, or that inherit from the given class, as described by this constructor's parameters:
    /// 
    /// - `type` is the built-in ``Variant`` type, as one the ``Variant.GType`` constants.
    /// 
    /// - `className` is the built-in class name (see ``Object/getClass()``).
    /// 
    /// - `script` is the associated script. It must be a ``Script`` instance or `null`.
    /// 
    /// If `type` is not ``Variant.GType/object``, `className` must be an empty ``StringName`` and `script` must be `null`.
    /// 
    /// The `base` array's elements are converted when necessary. If this is not possible or `base` is already typed, this constructor fails and returns an empty ``VariantArray``.
    /// 
    /// In GDScript, this constructor is usually not necessary, as it is possible to create a typed array through static typing:
    /// 
    public init(base: VariantArray, type: Int32, className: StringName, script: Variant?) {
        withUnsafePointer(to: base.content) { pArg0 in
            withUnsafePointer(to: type) { pArg1 in
                withUnsafePointer(to: className.content) { pArg2 in
                    withUnsafePointer(to: script.content) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                GodotInterfaceForArray.constructor2(&content, pArgs)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Constructs an array from a ``PackedByteArray``.
    public init(from: PackedByteArray) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.constructor3(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs an array from a ``PackedInt32Array``.
    public init(from: PackedInt32Array) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.constructor4(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs an array from a ``PackedInt64Array``.
    public init(from: PackedInt64Array) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.constructor5(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs an array from a ``PackedFloat32Array``.
    public init(from: PackedFloat32Array) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.constructor6(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs an array from a ``PackedFloat64Array``.
    public init(from: PackedFloat64Array) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.constructor7(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs an array from a ``PackedStringArray``.
    public init(from: PackedStringArray) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.constructor8(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs an array from a ``PackedVector2Array``.
    public init(from: PackedVector2Array) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.constructor9(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs an array from a ``PackedVector3Array``.
    public init(from: PackedVector3Array) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.constructor10(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs an array from a ``PackedColorArray``.
    public init(from: PackedColorArray) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.constructor11(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs an array from a ``PackedVector4Array``.
    public init(from: PackedVector4Array) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.constructor12(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    
    /* Methods */
    
    /// Returns the number of elements in the array. Empty arrays (`[]`) always return `0`. See also ``isEmpty()``.
    public final func size() -> Int64 {
        var result: Int64 = Int64()
        GodotInterfaceForArray.method_size(&content, nil, &result, 0)
        return result
    }
    
    /// Returns `true` if the array is empty (`[]`). See also ``size()``.
    public final func isEmpty() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForArray.method_is_empty(&content, nil, &result, 0)
        return result
    }
    
    /// Removes all elements from the array. This is equivalent to using ``resize(size:)`` with a size of `0`.
    public final func clear() {
        GodotInterfaceForArray.method_clear(&content, nil, nil, 0)
    }
    
    /// Returns a hashed 32-bit integer value representing the array and its contents.
    /// 
    /// > Note: Arrays with equal hash values are _not_ guaranteed to be the same, as a result of hash collisions. On the countrary, arrays with different hash values are guaranteed to be different.
    /// 
    public final func hash() -> Int64 {
        var result: Int64 = Int64()
        GodotInterfaceForArray.method_hash(&content, nil, &result, 0)
        return result
    }
    
    /// Assigns elements of another `array` into the array. Resizes the array to match `array`. Performs type conversions if the array is typed.
    public final func assign(array: VariantArray) {
        withUnsafePointer(to: array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.method_assign(&content, pArgs, nil, 1)
                }
                
            }
            
        }
        
    }
    
    /// Returns the element at the given `index` in the array. This is the same as using the `[]` operator (`array[index]`).
    public final func get(index: Int64) -> Variant? {
        var result = Variant.zero
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.method_get(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return Variant(takingOver: result)
    }
    
    /// Sets the value of the element at the given `index` to the given `value`. This will not change the size of the array, it only changes the value at an index already in the array. This is the same as using the `[]` operator (`array[index] = value`).
    public final func set(index: Int64, value: Variant?) {
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: value.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForArray.method_set(&content, pArgs, nil, 2)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Appends an element at the end of the array. See also ``pushFront(value:)``.
    public final func pushBack(value: Variant?) {
        withUnsafePointer(to: value.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.method_push_back(&content, pArgs, nil, 1)
                }
                
            }
            
        }
        
    }
    
    /// Adds an element at the beginning of the array. See also ``pushBack(value:)``.
    /// 
    /// > Note: This method shifts every other element's index forward, which may have a noticeable performance cost, especially on larger arrays.
    /// 
    public final func pushFront(value: Variant?) {
        withUnsafePointer(to: value.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.method_push_front(&content, pArgs, nil, 1)
                }
                
            }
            
        }
        
    }
    
    /// Appends `value` at the end of the array (alias of ``pushBack(value:)``).
    public final func append(_ value: Variant?) {
        withUnsafePointer(to: value.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.method_append(&content, pArgs, nil, 1)
                }
                
            }
            
        }
        
    }
    
    /// Appends another `array` at the end of this array.
    /// 
    public final func appendArray(_ array: VariantArray) {
        withUnsafePointer(to: array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.method_append_array(&content, pArgs, nil, 1)
                }
                
            }
            
        }
        
    }
    
    /// Sets the array's number of elements to `size`. If `size` is smaller than the array's current size, the elements at the end are removed. If `size` is greater, new default elements (usually `null`) are added, depending on the array's type.
    /// 
    /// Returns ``GodotError/ok`` on success, or one of the other ``GodotError`` constants if this method fails.
    /// 
    /// > Note: Calling this method once and assigning the new values is faster than calling ``append(value:)`` for every new element.
    /// 
    @discardableResult /* 1: resize */ 
    public final func resize(size: Int64) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.method_resize(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Inserts a new element (`value`) at a given index (`position`) in the array. `position` should be between `0` and the array's ``size()``.
    /// 
    /// Returns ``GodotError/ok`` on success, or one of the other ``GodotError`` constants if this method fails.
    /// 
    /// > Note: Every element's index after `position` needs to be shifted forward, which may have a noticeable performance cost, especially on larger arrays.
    /// 
    public final func insert(position: Int64, value: Variant?) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: value.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForArray.method_insert(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Removes the element from the array at the given index (`position`). If the index is out of bounds, this method fails.
    /// 
    /// If you need to return the removed element, use ``popAt(position:)``. To remove an element by value, use ``erase(value:)`` instead.
    /// 
    /// > Note: This method shifts every element's index after `position` back, which may have a noticeable performance cost, especially on larger arrays.
    /// 
    /// > Note: The `position` cannot be negative. To remove an element relative to the end of the array, use `arr.remove_at(arr.size() - (i + 1))`. To remove the last element from the array, use `arr.resize(arr.size() - 1)`.
    /// 
    public final func removeAt(position: Int64) {
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.method_remove_at(&content, pArgs, nil, 1)
                }
                
            }
            
        }
        
    }
    
    /// Assigns the given `value` to all elements in the array.
    /// 
    /// This method can often be combined with ``resize(size:)`` to create an array with a given size and initialized elements:
    /// 
    /// > Note: If `value` is a ``Variant`` passed by reference (``Object``-derived, ``VariantArray``, ``VariantDictionary``, etc.), the array will be filled with references to the same `value`, which are not duplicates.
    /// 
    public final func fill(value: Variant?) {
        withUnsafePointer(to: value.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.method_fill(&content, pArgs, nil, 1)
                }
                
            }
            
        }
        
    }
    
    /// Finds and removes the first occurrence of `value` from the array. If `value` does not exist in the array, nothing happens. To remove an element by index, use ``removeAt(position:)`` instead.
    /// 
    /// > Note: This method shifts every element's index after the removed `value` back, which may have a noticeable performance cost, especially on larger arrays.
    /// 
    /// > Note: Erasing elements while iterating over arrays is **not** supported and will result in unpredictable behavior.
    /// 
    public final func erase(value: Variant?) {
        withUnsafePointer(to: value.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.method_erase(&content, pArgs, nil, 1)
                }
                
            }
            
        }
        
    }
    
    /// Returns the first element of the array. If the array is empty, fails and returns `null`. See also ``back()``.
    /// 
    /// > Note: Unlike with the `[]` operator (`array[0]`), an error is generated without stopping project execution.
    /// 
    public final func front() -> Variant? {
        var result = Variant.zero
        GodotInterfaceForArray.method_front(&content, nil, &result, 0)
        return Variant(takingOver: result)
    }
    
    /// Returns the last element of the array. If the array is empty, fails and returns `null`. See also ``front()``.
    /// 
    /// > Note: Unlike with the `[]` operator (`array[-1]`), an error is generated without stopping project execution.
    /// 
    public final func back() -> Variant? {
        var result = Variant.zero
        GodotInterfaceForArray.method_back(&content, nil, &result, 0)
        return Variant(takingOver: result)
    }
    
    /// Returns a random element from the array. Generates an error and returns `null` if the array is empty.
    /// 
    /// > Note: Like many similar functions in the engine (such as ``@GlobalScope.randi`` or ``shuffle()``), this method uses a common, global random seed. To get a predictable outcome from this method, see ``@GlobalScope.seed``.
    /// 
    public final func pickRandom() -> Variant? {
        var result = Variant.zero
        GodotInterfaceForArray.method_pick_random(&content, nil, &result, 0)
        return Variant(takingOver: result)
    }
    
    /// Returns the index of the **first** occurrence of `what` in this array, or `-1` if there are none. The search's start can be specified with `from`, continuing to the end of the array.
    /// 
    /// > Note: If you just want to know whether the array contains `what`, use ``has(value:)`` (`Contains` in C#). In GDScript, you may also use the `in` operator.
    /// 
    /// > Note: For performance reasons, the search is affected by `what`'s ``Variant.GType``. For example, `7` (integer) and `7.0` (float) are not considered equal for this method.
    /// 
    public final func find(what: Variant?, from: Int64 = 0) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: what.content) { pArg0 in
            withUnsafePointer(to: from) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForArray.method_find(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the index of the **first** element in the array that causes `method` to return `true`, or `-1` if there are none. The search's start can be specified with `from`, continuing to the end of the array.
    /// 
    /// `method` is a callable that takes an element of the array, and returns a [bool].
    /// 
    /// > Note: If you just want to know whether the array contains _anything_ that satisfies `method`, use ``any(method:)``.
    /// 
    public final func findCustom(method: Callable, from: Int64 = 0) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: method.content) { pArg0 in
            withUnsafePointer(to: from) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForArray.method_find_custom(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the index of the **last** occurrence of `what` in this array, or `-1` if there are none. The search's start can be specified with `from`, continuing to the beginning of the array. This method is the reverse of ``find(what:from:)``.
    public final func rfind(what: Variant?, from: Int64 = -1) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: what.content) { pArg0 in
            withUnsafePointer(to: from) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForArray.method_rfind(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the index of the **last** element of the array that causes `method` to return `true`, or `-1` if there are none. The search's start can be specified with `from`, continuing to the beginning of the array. This method is the reverse of ``findCustom(method:from:)``.
    public final func rfindCustom(method: Callable, from: Int64 = -1) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: method.content) { pArg0 in
            withUnsafePointer(to: from) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForArray.method_rfind_custom(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the number of times an element is in the array.
    /// 
    /// To count how many elements in an array satisfy a condition, see ``reduce(method:accum:)``.
    /// 
    public final func count(value: Variant?) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: value.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.method_count(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the array contains the given `value`.
    /// 
    /// In GDScript, this is equivalent to the `in` operator:
    /// 
    /// > Note: For performance reasons, the search is affected by the `value`'s ``Variant.GType``. For example, `7` (integer) and `7.0` (float) are not considered equal for this method.
    /// 
    public final func has(value: Variant?) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: value.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.method_has(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Removes and returns the last element of the array. Returns `null` if the array is empty, without generating an error. See also ``popFront()``.
    public final func popBack() -> Variant? {
        var result = Variant.zero
        GodotInterfaceForArray.method_pop_back(&content, nil, &result, 0)
        return Variant(takingOver: result)
    }
    
    /// Removes and returns the first element of the array. Returns `null` if the array is empty, without generating an error. See also ``popBack()``.
    /// 
    /// > Note: This method shifts every other element's index back, which may have a noticeable performance cost, especially on larger arrays.
    /// 
    public final func popFront() -> Variant? {
        var result = Variant.zero
        GodotInterfaceForArray.method_pop_front(&content, nil, &result, 0)
        return Variant(takingOver: result)
    }
    
    /// Removes and returns the element of the array at index `position`. If negative, `position` is considered relative to the end of the array. Returns `null` if the array is empty. If `position` is out of bounds, an error message is also generated.
    /// 
    /// > Note: This method shifts every element's index after `position` back, which may have a noticeable performance cost, especially on larger arrays.
    /// 
    public final func popAt(position: Int64) -> Variant? {
        var result = Variant.zero
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.method_pop_at(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return Variant(takingOver: result)
    }
    
    /// Sorts the array in ascending order. The final order is dependent on the "less than" (`<`) comparison between elements.
    /// 
    /// > Note: The sorting algorithm used is not <a href="https://en.wikipedia.org/wiki/Sorting_algorithm#Stability">stable</a>. This means that equivalent elements (such as `2` and `2.0`) may have their order changed when calling ``sort()``.
    /// 
    public final func sort() {
        GodotInterfaceForArray.method_sort(&content, nil, nil, 0)
    }
    
    /// Sorts the array using a custom ``Callable``.
    /// 
    /// `func` is called as many times as necessary, receiving two array elements as arguments. The function should return `true` if the first element should be moved _before_ the second one, otherwise it should return `false`.
    /// 
    /// It may also be necessary to use this method to sort strings by natural order, with ``GString/naturalnocasecmpTo()``, as in the following example:
    /// 
    /// > Note: In C#, this method is not supported.
    /// 
    /// > Note: The sorting algorithm used is not <a href="https://en.wikipedia.org/wiki/Sorting_algorithm#Stability">stable</a>. This means that values considered equal may have their order changed when calling this method.
    /// 
    /// > Note: You should not randomize the return value of `func`, as the heapsort algorithm expects a consistent result. Randomizing the return value will result in unexpected behavior.
    /// 
    public final func sortCustom(`func`: Callable) {
        withUnsafePointer(to: `func`.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.method_sort_custom(&content, pArgs, nil, 1)
                }
                
            }
            
        }
        
    }
    
    /// Shuffles all elements of the array in a random order.
    /// 
    /// > Note: Like many similar functions in the engine (such as ``@GlobalScope.randi`` or ``pickRandom()``), this method uses a common, global random seed. To get a predictable outcome from this method, see ``@GlobalScope.seed``.
    /// 
    public final func shuffle() {
        GodotInterfaceForArray.method_shuffle(&content, nil, nil, 0)
    }
    
    /// Returns the index of `value` in the sorted array. If it cannot be found, returns where `value` should be inserted to keep the array sorted. The algorithm used is <a href="https://en.wikipedia.org/wiki/Binary_search_algorithm">binary search</a>.
    /// 
    /// If `before` is `true` (as by default), the returned index comes before all existing elements equal to `value` in the array.
    /// 
    /// > Note: Calling ``bsearch(value:before:)`` on an _unsorted_ array will result in unexpected behavior. Use ``sort()`` before calling this method.
    /// 
    public final func bsearch(value: Variant?, before: Bool = true) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: value.content) { pArg0 in
            withUnsafePointer(to: before) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForArray.method_bsearch(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the index of `value` in the sorted array. If it cannot be found, returns where `value` should be inserted to keep the array sorted (using `func` for the comparisons). The algorithm used is <a href="https://en.wikipedia.org/wiki/Binary_search_algorithm">binary search</a>.
    /// 
    /// Similar to ``sortCustom(`func`:)``, `func` is called as many times as necessary, receiving one array element and `value` as arguments. The function should return `true` if the array element should be _behind_ `value`, otherwise it should return `false`.
    /// 
    /// If `before` is `true` (as by default), the returned index comes before all existing elements equal to `value` in the array.
    /// 
    /// > Note: Calling ``bsearchCustom(value:`func`:before:)`` on an _unsorted_ array will result in unexpected behavior. Use ``sortCustom(`func`:)`` with `func` before calling this method.
    /// 
    public final func bsearchCustom(value: Variant?, `func`: Callable, before: Bool = true) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: value.content) { pArg0 in
            withUnsafePointer(to: `func`.content) { pArg1 in
                withUnsafePointer(to: before) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            GodotInterfaceForArray.method_bsearch_custom(&content, pArgs, &result, 3)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Reverses the order of all elements in the array.
    public final func reverse() {
        GodotInterfaceForArray.method_reverse(&content, nil, nil, 0)
    }
    
    /// Returns a new copy of the array.
    /// 
    /// By default, a **shallow** copy is returned: all nested ``VariantArray`` and ``VariantDictionary`` elements are shared with the original array. Modifying them in one array will also affect them in the other.[br]If `deep` is `true`, a **deep** copy is returned: all nested arrays and dictionaries are also duplicated (recursively).
    /// 
    public final func duplicate(deep: Bool = false) -> VariantArray {
        let result: VariantArray = VariantArray()
        withUnsafePointer(to: deep) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.method_duplicate(&content, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a new ``VariantArray`` containing this array's elements, from index `begin` (inclusive) to `end` (exclusive), every `step` elements.
    /// 
    /// If either `begin` or `end` are negative, their value is relative to the end of the array.
    /// 
    /// If `step` is negative, this method iterates through the array in reverse, returning a slice ordered backwards. For this to work, `begin` must be greater than `end`.
    /// 
    /// If `deep` is `true`, all nested ``VariantArray`` and ``VariantDictionary`` elements in the slice are duplicated from the original, recursively. See also ``duplicate(deep:)``).
    /// 
    public final func slice(begin: Int64, end: Int64 = 2147483647, step: Int64 = 1, deep: Bool = false) -> VariantArray {
        let result: VariantArray = VariantArray()
        withUnsafePointer(to: begin) { pArg0 in
            withUnsafePointer(to: end) { pArg1 in
                withUnsafePointer(to: step) { pArg2 in
                    withUnsafePointer(to: deep) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                GodotInterfaceForArray.method_slice(&content, pArgs, &result.content, 4)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Calls the given ``Callable`` on each element in the array and returns a new, filtered ``VariantArray``.
    /// 
    /// The `method` receives one of the array elements as an argument, and should return `true` to add the element to the filtered array, or `false` to exclude it.
    /// 
    /// See also ``any(method:)``, ``all(method:)``, ``map(method:)`` and ``reduce(method:accum:)``.
    /// 
    public final func filter(method: Callable) -> VariantArray {
        let result: VariantArray = VariantArray()
        withUnsafePointer(to: method.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.method_filter(&content, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Calls the given ``Callable`` for each element in the array and returns a new array filled with values returned by the `method`.
    /// 
    /// The `method` should take one ``Variant`` parameter (the current array element) and can return any ``Variant``.
    /// 
    /// See also ``filter(method:)``, ``reduce(method:accum:)``, ``any(method:)`` and ``all(method:)``.
    /// 
    public final func map(method: Callable) -> VariantArray {
        let result: VariantArray = VariantArray()
        withUnsafePointer(to: method.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.method_map(&content, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Calls the given ``Callable`` for each element in array, accumulates the result in `accum`, then returns it.
    /// 
    /// The `method` takes two arguments: the current value of `accum` and the current array element. If `accum` is `null` (as by default), the iteration will start from the second element, with the first one used as initial value of `accum`.
    /// 
    /// If ``max()`` is not desirable, this method may also be used to implement a custom comparator:
    /// 
    /// This method can also be used to count how many elements in an array satisfy a certain condition, similar to ``count(value:)``:
    /// 
    /// See also ``map(method:)``, ``filter(method:)``, ``any(method:)``, and ``all(method:)``.
    /// 
    public final func reduce(method: Callable, accum: Variant?) -> Variant? {
        var result = Variant.zero
        withUnsafePointer(to: method.content) { pArg0 in
            withUnsafePointer(to: accum.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForArray.method_reduce(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: result)
    }
    
    /// Calls the given ``Callable`` on each element in the array and returns `true` if the ``Callable`` returns `true` for _one or more_ elements in the array. If the ``Callable`` returns `false` for all elements in the array, this method returns `false`.
    /// 
    /// The `method` should take one ``Variant`` parameter (the current array element) and return a [bool].
    /// 
    /// See also ``all(method:)``, ``filter(method:)``, ``map(method:)`` and ``reduce(method:accum:)``.
    /// 
    /// > Note: Unlike relying on the size of an array returned by ``filter(method:)``, this method will return as early as possible to improve performance (especially with large arrays).
    /// 
    /// > Note: For an empty array, this method always returns `false`.
    /// 
    public final func any(method: Callable) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: method.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.method_any(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Calls the given ``Callable`` on each element in the array and returns `true` if the ``Callable`` returns `true` for _all_ elements in the array. If the ``Callable`` returns `false` for one array element or more, this method returns `false`.
    /// 
    /// The `method` should take one ``Variant`` parameter (the current array element) and return a [bool].
    /// 
    /// See also ``any(method:)``, ``filter(method:)``, ``map(method:)`` and ``reduce(method:accum:)``.
    /// 
    /// > Note: Unlike relying on the size of an array returned by ``filter(method:)``, this method will return as early as possible to improve performance (especially with large arrays).
    /// 
    /// > Note: For an empty array, this method <a href="https://en.wikipedia.org/wiki/Vacuous_truth">always</a> returns `true`.
    /// 
    public final func all(method: Callable) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: method.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.method_all(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the maximum value contained in the array, if all elements can be compared. Otherwise, returns `null`. See also ``min()``.
    /// 
    /// To find the maximum value using a custom comparator, you can use ``reduce(method:accum:)``.
    /// 
    public final func max() -> Variant? {
        var result = Variant.zero
        GodotInterfaceForArray.method_max(&content, nil, &result, 0)
        return Variant(takingOver: result)
    }
    
    /// Returns the minimum value contained in the array, if all elements can be compared. Otherwise, returns `null`. See also ``max()``.
    public final func min() -> Variant? {
        var result = Variant.zero
        GodotInterfaceForArray.method_min(&content, nil, &result, 0)
        return Variant(takingOver: result)
    }
    
    /// Returns `true` if the array is typed. Typed arrays can only contain elements of a specific type, as defined by the typed array constructor. The methods of a typed array are still expected to return a generic ``Variant``.
    /// 
    /// In GDScript, it is possible to define a typed array with static typing:
    /// 
    public final func isTyped() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForArray.method_is_typed(&content, nil, &result, 0)
        return result
    }
    
    /// Returns `true` if this array is typed the same as the given `array`. See also ``isTyped()``.
    public final func isSameTyped(array: VariantArray) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForArray.method_is_same_typed(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the built-in ``Variant`` type of the typed array as a ``Variant.GType`` constant. If the array is not typed, returns ``Variant.GType/`nil```. See also ``isTyped()``.
    public final func getTypedBuiltin() -> Int64 {
        var result: Int64 = Int64()
        GodotInterfaceForArray.method_get_typed_builtin(&content, nil, &result, 0)
        return result
    }
    
    /// Returns the **built-in** class name of the typed array, if the built-in ``Variant`` type ``Variant.GType/object``. Otherwise, returns an empty ``StringName``. See also ``isTyped()`` and ``Object/getClass()``.
    public final func getTypedClassName() -> StringName {
        let result: StringName = StringName()
        GodotInterfaceForArray.method_get_typed_class_name(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns the ``Script`` instance associated with this typed array, or `null` if it does not exist. See also ``isTyped()``.
    public final func getTypedScript() -> Variant? {
        var result = Variant.zero
        GodotInterfaceForArray.method_get_typed_script(&content, nil, &result, 0)
        return Variant(takingOver: result)
    }
    
    /// Makes the array read-only. The array's elements cannot be overridden with different values, and their order cannot change. Does not apply to nested elements, such as dictionaries.
    /// 
    /// In GDScript, arrays are automatically read-only if declared with the `const` keyword.
    /// 
    public final func makeReadOnly() {
        GodotInterfaceForArray.method_make_read_only(&content, nil, nil, 0)
    }
    
    /// Returns `true` if the array is read-only. See ``makeReadOnly()``.
    /// 
    /// In GDScript, arrays are automatically read-only if declared with the `const` keyword.
    /// 
    public final func isReadOnly() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForArray.method_is_read_only(&content, nil, &result, 0)
        return result
    }
    
    /// Compares the left operand ``VariantArray`` against the `right` ``VariantArray``. Returns `true` if the sizes and contents of the arrays are equal, `false` otherwise.
    public static func ==(lhs: VariantArray, rhs: VariantArray) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForArray.operator_4(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the array's size or its elements are different than `right`'s.
    public static func !=(lhs: VariantArray, rhs: VariantArray) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForArray.operator_5(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Compares the elements of both arrays in order, starting from index `0` and ending on the last index in common between both arrays. For each pair of elements, returns `true` if this array's element is less than `right`'s, `false` if this element is greater. Otherwise, continues to the next pair.
    /// 
    /// If all searched elements are equal, returns `true` if this array's size is less than `right`'s, otherwise returns `false`.
    /// 
    public static func <(lhs: VariantArray, rhs: VariantArray) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForArray.operator_6(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Compares the elements of both arrays in order, starting from index `0` and ending on the last index in common between both arrays. For each pair of elements, returns `true` if this array's element is less than `right`'s, `false` if this element is greater. Otherwise, continues to the next pair.
    /// 
    /// If all searched elements are equal, returns `true` if this array's size is less or equal to `right`'s, otherwise returns `false`.
    /// 
    public static func <=(lhs: VariantArray, rhs: VariantArray) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForArray.operator_7(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Compares the elements of both arrays in order, starting from index `0` and ending on the last index in common between both arrays. For each pair of elements, returns `true` if this array's element is greater than `right`'s, `false` if this element is less. Otherwise, continues to the next pair.
    /// 
    /// If all searched elements are equal, returns `true` if this array's size is greater than `right`'s, otherwise returns `false`.
    /// 
    public static func >(lhs: VariantArray, rhs: VariantArray) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForArray.operator_8(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Compares the elements of both arrays in order, starting from index `0` and ending on the last index in common between both arrays. For each pair of elements, returns `true` if this array's element is greater than `right`'s, `false` if this element is less. Otherwise, continues to the next pair.
    /// 
    /// If all searched elements are equal, returns `true` if this array's size is greater or equal to `right`'s, otherwise returns `false`.
    /// 
    public static func >=(lhs: VariantArray, rhs: VariantArray) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForArray.operator_9(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Appends the `right` array to the left operand, creating a new ``VariantArray``. This is also known as an array concatenation.
    /// 
    /// > Note: For existing arrays, ``appendArray(array:)`` is much more efficient than concatenation and assignment with the `+=` operator.
    /// 
    public static func +(lhs: VariantArray, rhs: VariantArray) -> VariantArray  {
        let result: VariantArray = VariantArray()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForArray.operator_10(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(hash())
    }
    /// Wrap ``VariantArray`` into a ``Variant``
    @inline(__always)
    @inlinable
    public func toVariant() -> Variant {
        Variant(self)
    }
    
    /// Wrap ``VariantArray`` into a ``Variant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toVariant() -> Variant? {
        Variant(self)
    }
    
    /// Wrap ``VariantArray`` into a ``FastVariant``
    @inline(__always)
    @inlinable
    public func toFastVariant() -> FastVariant {
        FastVariant(self)
    }
    
    /// Wrap ``VariantArray`` into a ``FastVariant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toFastVariant() -> FastVariant? {
        FastVariant(self)
    }
    
    /// Extract ``VariantArray`` from a ``Variant``. Throws `VariantConversionError` if it's not possible.
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
    
    /// Initialze ``VariantArray`` from ``Variant``. Fails if `variant` doesn't contain ``VariantArray``
    @inline(__always)                                
    public convenience init?(_ variant: Variant) {
        guard Self._variantType == variant.gtype else { return nil }
        var content = VariantArray.zero
        withUnsafeMutablePointer(to: &content) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForArray.selfFromVariant)                        
        }
        self.init(takingOver: content)
    }
    
    /// Initialze ``VariantArray`` from ``Variant``. Fails if `variant` doesn't contain ``VariantArray`` or is `nil`
    @inline(__always)
    @inlinable
    public convenience init?(_ variant: Variant?) {
        guard let variant else { return nil }
        self.init(variant)
    }
    
    /// Initialze ``VariantArray`` from ``FastVariant``. Fails if `variant` doesn't contain ``VariantArray``
    @inline(__always)                                
    public convenience init?(_ variant: borrowing FastVariant) {
        guard Self._variantType == variant.gtype else { return nil }
        var content = VariantArray.zero
        withUnsafeMutablePointer(to: &content) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForArray.selfFromVariant)                        
        }
        self.init(takingOver: content)
    }
    
    /// Initialze ``VariantArray`` from ``FastVariant``. Fails if `variant` doesn't contain ``VariantArray`` or is `nil`
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
    /// Internal API. For indicating that Godot `Array` of ``VariantArray`` has type `Array[Array]`
    @inline(__always)
    @inlinable
    public static var _variantType: Variant.GType {
        .array 
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
    /// Initialize ``Variant`` by wrapping ``VariantArray?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    convenience init?(_ from: VariantArray?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``Variant`` by wrapping ``VariantArray``
    @inline(__always)
    convenience init(_ from: VariantArray) {
        self.init(payload: from.content, constructor: GodotInterfaceForArray.variantFromSelf)
    }
    
}

public extension FastVariant {
    /// Initialize ``FastVariant`` by wrapping ``VariantArray?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    init?(_ from: VariantArray?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``FastVariant`` by wrapping ``VariantArray``
    @inline(__always)
    init(_ from: VariantArray) {
        self.init(payload: from.content, constructor: GodotInterfaceForArray.variantFromSelf)
    }
    
}

/// Static storage for keeping pointers to Godot implementation wrapped by VariantArray
enum GodotInterfaceForArray {
    // MARK: - Destructor
    static let destructor: GDExtensionPtrDestructor = {
        return gi.variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    
    // MARK: - Constructors
    static let constructor0: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 0)!
    }()
    
    static let constructor1: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 1)!
    }()
    
    static let constructor2: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 2)!
    }()
    
    static let constructor3: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 3)!
    }()
    
    static let constructor4: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 4)!
    }()
    
    static let constructor5: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 5)!
    }()
    
    static let constructor6: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 6)!
    }()
    
    static let constructor7: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 7)!
    }()
    
    static let constructor8: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 8)!
    }()
    
    static let constructor9: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 9)!
    }()
    
    static let constructor10: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 10)!
    }()
    
    static let constructor11: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 11)!
    }()
    
    static let constructor12: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 12)!
    }()
    
    // MARK: - Methods
    static let method_size: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("size")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 3173160232)!
    }()
    
    static let method_is_empty: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_empty")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 3918633141)!
    }()
    
    static let method_clear: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("clear")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 3218959716)!
    }()
    
    static let method_hash: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("hash")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 3173160232)!
    }()
    
    static let method_assign: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("assign")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 2307260970)!
    }()
    
    static let method_get: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 708700221)!
    }()
    
    static let method_set: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("set")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 3798478031)!
    }()
    
    static let method_push_back: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("push_back")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 3316032543)!
    }()
    
    static let method_push_front: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("push_front")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 3316032543)!
    }()
    
    static let method_append: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("append")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 3316032543)!
    }()
    
    static let method_append_array: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("append_array")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 2307260970)!
    }()
    
    static let method_resize: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("resize")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 848867239)!
    }()
    
    static let method_insert: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("insert")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 3176316662)!
    }()
    
    static let method_remove_at: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("remove_at")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 2823966027)!
    }()
    
    static let method_fill: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("fill")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 3316032543)!
    }()
    
    static let method_erase: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("erase")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 3316032543)!
    }()
    
    static let method_front: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("front")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 1460142086)!
    }()
    
    static let method_back: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("back")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 1460142086)!
    }()
    
    static let method_pick_random: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("pick_random")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 1460142086)!
    }()
    
    static let method_find: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("find")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 2336346817)!
    }()
    
    static let method_find_custom: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("find_custom")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 2145562546)!
    }()
    
    static let method_rfind: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("rfind")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 2336346817)!
    }()
    
    static let method_rfind_custom: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("rfind_custom")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 2145562546)!
    }()
    
    static let method_count: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("count")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 1481661226)!
    }()
    
    static let method_has: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("has")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 3680194679)!
    }()
    
    static let method_pop_back: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("pop_back")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 1321915136)!
    }()
    
    static let method_pop_front: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("pop_front")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 1321915136)!
    }()
    
    static let method_pop_at: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("pop_at")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 3518259424)!
    }()
    
    static let method_sort: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("sort")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 3218959716)!
    }()
    
    static let method_sort_custom: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("sort_custom")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 3470848906)!
    }()
    
    static let method_shuffle: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("shuffle")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 3218959716)!
    }()
    
    static let method_bsearch: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("bsearch")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 3372222236)!
    }()
    
    static let method_bsearch_custom: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("bsearch_custom")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 161317131)!
    }()
    
    static let method_reverse: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("reverse")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 3218959716)!
    }()
    
    static let method_duplicate: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("duplicate")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 636440122)!
    }()
    
    static let method_slice: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("slice")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 1393718243)!
    }()
    
    static let method_filter: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("filter")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 4075186556)!
    }()
    
    static let method_map: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("map")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 4075186556)!
    }()
    
    static let method_reduce: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("reduce")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 4272450342)!
    }()
    
    static let method_any: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("any")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 4129521963)!
    }()
    
    static let method_all: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("all")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 4129521963)!
    }()
    
    static let method_max: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("max")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 1460142086)!
    }()
    
    static let method_min: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("min")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 1460142086)!
    }()
    
    static let method_is_typed: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_typed")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 3918633141)!
    }()
    
    static let method_is_same_typed: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_same_typed")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 2988181878)!
    }()
    
    static let method_get_typed_builtin: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_typed_builtin")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 3173160232)!
    }()
    
    static let method_get_typed_class_name: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_typed_class_name")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 1825232092)!
    }()
    
    static let method_get_typed_script: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_typed_script")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 1460142086)!
    }()
    
    static let method_make_read_only: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("make_read_only")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 3218959716)!
    }()
    
    static let method_is_read_only: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_read_only")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, &name.content, 3918633141)!
    }()
    
    // MARK: - Operators
    static let operator_4: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    
    static let operator_5: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    
    static let operator_6: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    
    static let operator_7: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS_EQUAL, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    
    static let operator_8: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    
    static let operator_9: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER_EQUAL, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    
    static let operator_10: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    
    // MARK: - Variant conversion
    static let variantFromSelf: GDExtensionVariantFromTypeConstructorFunc = {
        gi.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    
    static let selfFromVariant: GDExtensionTypeFromVariantConstructorFunc = {
        gi.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    
    
}

