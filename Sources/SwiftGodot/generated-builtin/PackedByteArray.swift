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


/// A packed array of bytes.
/// 
/// An array specifically designed to hold bytes. Packs data tightly, so it saves memory for large array sizes.
/// 
/// ``PackedByteArray`` also provides methods to encode/decode various types to/from bytes. The way values are encoded is an implementation detail and shouldn't be relied upon when interacting with external apps.
/// 
/// > Note: Packed arrays are always passed by reference. To get a copy of an array that can be modified independently of the original array, use ``duplicate()``. This is _not_ the case for built-in properties and methods. The returned packed array of these are a copies, and changing it will _not_ affect the original value. To update a built-in property you need to modify the returned array, and then assign it to the property again.
/// 
public final class PackedByteArray: _GodotBridgeableBuiltin, Equatable, Collection, RandomAccessCollection {
    deinit {
        if content != PackedByteArray.zero {
            GodotInterfaceForPackedByteArray.destructor(&content)
        }
        
    }
    
    /// The number of elements in the array
    public var count: Int { Int (size()) }
    // Contains a binary blob where this type information is stored
    public var content: ContentType = PackedByteArray.zero
    
    // Used to initialize empty types
    public static var zero: ContentType { (0, 0) }
    // Convenience type that matches the build configuration storage needs
    public typealias ContentType = (Int64, Int64)
    // Used to construct objects on virtual proxies
    public required init(content proxyContent: ContentType) {
        withUnsafePointer(to: proxyContent) { pContent in
            withUnsafePointer(to: pContent) { pArgs in
                GodotInterfaceForPackedByteArray.constructor1(&content, pArgs)
            }
        }
    }
    /// Initialize with existing `ContentType` assuming this ``PackedByteArray`` owns it since now.
    init(takingOver content: ContentType) {
        self.content = content
    }
    
    /// Constructs an empty ``PackedByteArray``.
    public required init() {
        GodotInterfaceForPackedByteArray.constructor0(&content, nil)
    }
    
    /// Constructs a ``PackedByteArray`` as a copy of the given ``PackedByteArray``.
    public init(from: PackedByteArray) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedByteArray.constructor1(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs a new ``PackedByteArray``. Optionally, you can pass in a generic ``VariantArray`` that will be converted.
    public init(from: VariantArray) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedByteArray.constructor2(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    
    /* Methods */
    
    /// Returns the byte at the given `index` in the array. This is the same as using the `[]` operator (`array[index]`).
    public final func get(index: Int64) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedByteArray.method_get(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Changes the byte at the given index.
    public final func set(index: Int64, value: Int64) {
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedByteArray.method_set(&content, pArgs, nil, 2)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Returns the number of elements in the array.
    public final func size() -> Int64 {
        var result: Int64 = Int64()
        GodotInterfaceForPackedByteArray.method_size(&content, nil, &result, 0)
        return result
    }
    
    /// Returns `true` if the array is empty.
    public final func isEmpty() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForPackedByteArray.method_is_empty(&content, nil, &result, 0)
        return result
    }
    
    /// Appends an element at the end of the array.
    @discardableResult /* 1: push_back */ 
    public final func pushBack(value: Int64) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedByteArray.method_push_back(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Appends an element at the end of the array (alias of ``pushBack(value:)``).
    @discardableResult /* 1: append */ 
    public final func append(value: Int64) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedByteArray.method_append(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Appends a ``PackedByteArray`` at the end of this array.
    public final func appendArray(_ array: PackedByteArray) {
        withUnsafePointer(to: array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedByteArray.method_append_array(&content, pArgs, nil, 1)
                }
                
            }
            
        }
        
    }
    
    /// Removes an element from the array by index.
    public final func removeAt(index: Int64) {
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedByteArray.method_remove_at(&content, pArgs, nil, 1)
                }
                
            }
            
        }
        
    }
    
    /// Inserts a new element at a given position in the array. The position must be valid, or at the end of the array (`idx == size()`).
    public final func insert(atIndex: Int64, value: Int64) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: atIndex) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedByteArray.method_insert(&content, pArgs, &result, 2)
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
                    GodotInterfaceForPackedByteArray.method_fill(&content, pArgs, nil, 1)
                }
                
            }
            
        }
        
    }
    
    /// Sets the size of the array. If the array is grown, reserves elements at the end of the array. If the array is shrunk, truncates the array to the new size. Calling ``resize(newSize:)`` once and assigning the new values is faster than adding new elements one by one.
    public final func resize(newSize: Int64) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: newSize) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedByteArray.method_resize(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Clears the array. This is equivalent to using ``resize(newSize:)`` with a size of `0`.
    public final func clear() {
        GodotInterfaceForPackedByteArray.method_clear(&content, nil, nil, 0)
    }
    
    /// Returns `true` if the array contains `value`.
    public final func has(value: Int64) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedByteArray.method_has(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Reverses the order of the elements in the array.
    public final func reverse() {
        GodotInterfaceForPackedByteArray.method_reverse(&content, nil, nil, 0)
    }
    
    /// Returns the slice of the ``PackedByteArray``, from `begin` (inclusive) to `end` (exclusive), as a new ``PackedByteArray``.
    /// 
    /// The absolute value of `begin` and `end` will be clamped to the array size, so the default value for `end` makes it slice to the size of the array by default (i.e. `arr.slice(1)` is a shorthand for `arr.slice(1, arr.size())`).
    /// 
    /// If either `begin` or `end` are negative, they will be relative to the end of the array (i.e. `arr.slice(0, -2)` is a shorthand for `arr.slice(0, arr.size() - 2)`).
    /// 
    public final func slice(begin: Int64, end: Int64 = 2147483647) -> PackedByteArray {
        let result: PackedByteArray = PackedByteArray()
        withUnsafePointer(to: begin) { pArg0 in
            withUnsafePointer(to: end) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedByteArray.method_slice(&content, pArgs, &result.content, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Sorts the elements of the array in ascending order.
    public final func sort() {
        GodotInterfaceForPackedByteArray.method_sort(&content, nil, nil, 0)
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
                        GodotInterfaceForPackedByteArray.method_bsearch(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Creates a copy of the array, and returns it.
    public final func duplicate() -> PackedByteArray {
        let result: PackedByteArray = PackedByteArray()
        GodotInterfaceForPackedByteArray.method_duplicate(&content, nil, &result.content, 0)
        return result
    }
    
    /// Searches the array for a value and returns its index or `-1` if not found. Optionally, the initial search index can be passed.
    public final func find(value: Int64, from: Int64 = 0) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: from) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedByteArray.method_find(&content, pArgs, &result, 2)
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
                        GodotInterfaceForPackedByteArray.method_rfind(&content, pArgs, &result, 2)
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
                    GodotInterfaceForPackedByteArray.method_count(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Converts ASCII/Latin-1 encoded array to ``String``. Fast alternative to ``getStringFromUtf8()`` if the content is ASCII/Latin-1 only. Unlike the UTF-8 function this function maps every byte to a character in the array. Multibyte sequences will not be interpreted correctly. For parsing user input always use ``getStringFromUtf8()``. This is the inverse of ``GString/toAsciiBuffer()``.
    public final func getStringFromAscii() -> String {
        let result = GString ()
        GodotInterfaceForPackedByteArray.method_get_string_from_ascii(&content, nil, &result.content, 0)
        return result.description
    }
    
    /// Converts UTF-8 encoded array to ``String``. Slower than ``getStringFromAscii()`` but supports UTF-8 encoded data. Use this function if you are unsure about the source of the data. For user input this function should always be preferred. Returns empty string if source array is not valid UTF-8 string. This is the inverse of ``GString/toUtf8Buffer()``.
    public final func getStringFromUtf8() -> String {
        let result = GString ()
        GodotInterfaceForPackedByteArray.method_get_string_from_utf8(&content, nil, &result.content, 0)
        return result.description
    }
    
    /// Converts UTF-16 encoded array to ``String``. If the BOM is missing, system endianness is assumed. Returns empty string if source array is not valid UTF-16 string. This is the inverse of ``GString/toUtf16Buffer()``.
    public final func getStringFromUtf16() -> String {
        let result = GString ()
        GodotInterfaceForPackedByteArray.method_get_string_from_utf16(&content, nil, &result.content, 0)
        return result.description
    }
    
    /// Converts UTF-32 encoded array to ``String``. System endianness is assumed. Returns empty string if source array is not valid UTF-32 string. This is the inverse of ``GString/toUtf32Buffer()``.
    public final func getStringFromUtf32() -> String {
        let result = GString ()
        GodotInterfaceForPackedByteArray.method_get_string_from_utf32(&content, nil, &result.content, 0)
        return result.description
    }
    
    /// Converts wide character (`wchar_t`, UTF-16 on Windows, UTF-32 on other platforms) encoded array to ``String``. Returns empty string if source array is not valid wide string. This is the inverse of ``GString/toWcharBuffer()``.
    public final func getStringFromWchar() -> String {
        let result = GString ()
        GodotInterfaceForPackedByteArray.method_get_string_from_wchar(&content, nil, &result.content, 0)
        return result.description
    }
    
    /// Returns a hexadecimal representation of this array as a ``String``.
    /// 
    public final func hexEncode() -> String {
        let result = GString ()
        GodotInterfaceForPackedByteArray.method_hex_encode(&content, nil, &result.content, 0)
        return result.description
    }
    
    /// Returns a new ``PackedByteArray`` with the data compressed. Set the compression mode using one of ``FileAccess.CompressionMode``'s constants.
    public final func compress(compressionMode: Int64 = 0) -> PackedByteArray {
        let result: PackedByteArray = PackedByteArray()
        withUnsafePointer(to: compressionMode) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedByteArray.method_compress(&content, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a new ``PackedByteArray`` with the data decompressed. Set `bufferSize` to the size of the uncompressed data. Set the compression mode using one of ``FileAccess.CompressionMode``'s constants.
    /// 
    /// > Note: Decompression is not guaranteed to work with data not compressed by Godot, for example if data compressed with the deflate compression mode lacks a checksum or header.
    /// 
    public final func decompress(bufferSize: Int64, compressionMode: Int64 = 0) -> PackedByteArray {
        let result: PackedByteArray = PackedByteArray()
        withUnsafePointer(to: bufferSize) { pArg0 in
            withUnsafePointer(to: compressionMode) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedByteArray.method_decompress(&content, pArgs, &result.content, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a new ``PackedByteArray`` with the data decompressed. Set the compression mode using one of ``FileAccess.CompressionMode``'s constants. **This method only accepts brotli, gzip, and deflate compression modes.**
    /// 
    /// This method is potentially slower than ``decompress(bufferSize:compressionMode:)``, as it may have to re-allocate its output buffer multiple times while decompressing, whereas ``decompress(bufferSize:compressionMode:)`` knows it's output buffer size from the beginning.
    /// 
    /// GZIP has a maximal compression ratio of 1032:1, meaning it's very possible for a small compressed payload to decompress to a potentially very large output. To guard against this, you may provide a maximum size this function is allowed to allocate in bytes via `maxOutputSize`. Passing -1 will allow for unbounded output. If any positive value is passed, and the decompression exceeds that amount in bytes, then an error will be returned.
    /// 
    /// > Note: Decompression is not guaranteed to work with data not compressed by Godot, for example if data compressed with the deflate compression mode lacks a checksum or header.
    /// 
    public final func decompressDynamic(maxOutputSize: Int64, compressionMode: Int64 = 0) -> PackedByteArray {
        let result: PackedByteArray = PackedByteArray()
        withUnsafePointer(to: maxOutputSize) { pArg0 in
            withUnsafePointer(to: compressionMode) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedByteArray.method_decompress_dynamic(&content, pArgs, &result.content, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Decodes a 8-bit unsigned integer number from the bytes starting at `byteOffset`. Fails if the byte count is insufficient. Returns `0` if a valid number can't be decoded.
    public final func decodeU8(byteOffset: Int64) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: byteOffset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedByteArray.method_decode_u8(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Decodes a 8-bit signed integer number from the bytes starting at `byteOffset`. Fails if the byte count is insufficient. Returns `0` if a valid number can't be decoded.
    public final func decodeS8(byteOffset: Int64) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: byteOffset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedByteArray.method_decode_s8(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Decodes a 16-bit unsigned integer number from the bytes starting at `byteOffset`. Fails if the byte count is insufficient. Returns `0` if a valid number can't be decoded.
    public final func decodeU16(byteOffset: Int64) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: byteOffset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedByteArray.method_decode_u16(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Decodes a 16-bit signed integer number from the bytes starting at `byteOffset`. Fails if the byte count is insufficient. Returns `0` if a valid number can't be decoded.
    public final func decodeS16(byteOffset: Int64) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: byteOffset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedByteArray.method_decode_s16(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Decodes a 32-bit unsigned integer number from the bytes starting at `byteOffset`. Fails if the byte count is insufficient. Returns `0` if a valid number can't be decoded.
    public final func decodeU32(byteOffset: Int64) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: byteOffset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedByteArray.method_decode_u32(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Decodes a 32-bit signed integer number from the bytes starting at `byteOffset`. Fails if the byte count is insufficient. Returns `0` if a valid number can't be decoded.
    public final func decodeS32(byteOffset: Int64) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: byteOffset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedByteArray.method_decode_s32(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Decodes a 64-bit unsigned integer number from the bytes starting at `byteOffset`. Fails if the byte count is insufficient. Returns `0` if a valid number can't be decoded.
    public final func decodeU64(byteOffset: Int64) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: byteOffset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedByteArray.method_decode_u64(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Decodes a 64-bit signed integer number from the bytes starting at `byteOffset`. Fails if the byte count is insufficient. Returns `0` if a valid number can't be decoded.
    public final func decodeS64(byteOffset: Int64) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: byteOffset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedByteArray.method_decode_s64(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Decodes a 16-bit floating-point number from the bytes starting at `byteOffset`. Fails if the byte count is insufficient. Returns `0.0` if a valid number can't be decoded.
    public final func decodeHalf(byteOffset: Int64) -> Double {
        var result: Double = Double()
        withUnsafePointer(to: byteOffset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedByteArray.method_decode_half(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Decodes a 32-bit floating-point number from the bytes starting at `byteOffset`. Fails if the byte count is insufficient. Returns `0.0` if a valid number can't be decoded.
    public final func decodeFloat(byteOffset: Int64) -> Double {
        var result: Double = Double()
        withUnsafePointer(to: byteOffset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedByteArray.method_decode_float(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Decodes a 64-bit floating-point number from the bytes starting at `byteOffset`. Fails if the byte count is insufficient. Returns `0.0` if a valid number can't be decoded.
    public final func decodeDouble(byteOffset: Int64) -> Double {
        var result: Double = Double()
        withUnsafePointer(to: byteOffset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPackedByteArray.method_decode_double(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if a valid ``Variant`` value can be decoded at the `byteOffset`. Returns `false` otherwise or when the value is ``Object``-derived and `allowObjects` is `false`.
    public final func hasEncodedVar(byteOffset: Int64, allowObjects: Bool = false) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: byteOffset) { pArg0 in
            withUnsafePointer(to: allowObjects) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedByteArray.method_has_encoded_var(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Decodes a ``Variant`` from the bytes starting at `byteOffset`. Returns `null` if a valid variant can't be decoded or the value is ``Object``-derived and `allowObjects` is `false`.
    public final func decodeVar(byteOffset: Int64, allowObjects: Bool = false) -> Variant? {
        var result = Variant.zero
        withUnsafePointer(to: byteOffset) { pArg0 in
            withUnsafePointer(to: allowObjects) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedByteArray.method_decode_var(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: result)
    }
    
    /// Decodes a size of a ``Variant`` from the bytes starting at `byteOffset`. Requires at least 4 bytes of data starting at the offset, otherwise fails.
    public final func decodeVarSize(byteOffset: Int64, allowObjects: Bool = false) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: byteOffset) { pArg0 in
            withUnsafePointer(to: allowObjects) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedByteArray.method_decode_var_size(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of the data converted to a ``PackedInt32Array``, where each block of 4 bytes has been converted to a signed 32-bit integer (C++ `int32_t`).
    /// 
    /// The size of the input array must be a multiple of 4 (size of 32-bit integer). The size of the new array will be `byte_array.size() / 4`.
    /// 
    /// If the original data can't be converted to signed 32-bit integers, the resulting data is undefined.
    /// 
    public final func toInt32Array() -> PackedInt32Array {
        let result: PackedInt32Array = PackedInt32Array()
        GodotInterfaceForPackedByteArray.method_to_int32_array(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns a copy of the data converted to a ``PackedInt64Array``, where each block of 8 bytes has been converted to a signed 64-bit integer (C++ `int64_t`, Godot integer).
    /// 
    /// The size of the input array must be a multiple of 8 (size of 64-bit integer). The size of the new array will be `byte_array.size() / 8`.
    /// 
    /// If the original data can't be converted to signed 64-bit integers, the resulting data is undefined.
    /// 
    public final func toInt64Array() -> PackedInt64Array {
        let result: PackedInt64Array = PackedInt64Array()
        GodotInterfaceForPackedByteArray.method_to_int64_array(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns a copy of the data converted to a ``PackedFloat32Array``, where each block of 4 bytes has been converted to a 32-bit float (C++ [code skip-lint]float`).
    /// 
    /// The size of the input array must be a multiple of 4 (size of 32-bit float). The size of the new array will be `byte_array.size() / 4`.
    /// 
    /// If the original data can't be converted to 32-bit floats, the resulting data is undefined.
    /// 
    public final func toFloat32Array() -> PackedFloat32Array {
        let result: PackedFloat32Array = PackedFloat32Array()
        GodotInterfaceForPackedByteArray.method_to_float32_array(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns a copy of the data converted to a ``PackedFloat64Array``, where each block of 8 bytes has been converted to a 64-bit float (C++ `double`, Godot float).
    /// 
    /// The size of the input array must be a multiple of 8 (size of 64-bit double). The size of the new array will be `byte_array.size() / 8`.
    /// 
    /// If the original data can't be converted to 64-bit floats, the resulting data is undefined.
    /// 
    public final func toFloat64Array() -> PackedFloat64Array {
        let result: PackedFloat64Array = PackedFloat64Array()
        GodotInterfaceForPackedByteArray.method_to_float64_array(&content, nil, &result.content, 0)
        return result
    }
    
    /// Encodes a 8-bit unsigned integer number (byte) at the index of `byteOffset` bytes. The array must have at least 1 byte of space, starting at the offset.
    public final func encodeU8(byteOffset: Int64, value: Int64) {
        withUnsafePointer(to: byteOffset) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedByteArray.method_encode_u8(&content, pArgs, nil, 2)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Encodes a 8-bit signed integer number (signed byte) at the index of `byteOffset` bytes. The array must have at least 1 byte of space, starting at the offset.
    public final func encodeS8(byteOffset: Int64, value: Int64) {
        withUnsafePointer(to: byteOffset) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedByteArray.method_encode_s8(&content, pArgs, nil, 2)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Encodes a 16-bit unsigned integer number as bytes at the index of `byteOffset` bytes. The array must have at least 2 bytes of space, starting at the offset.
    public final func encodeU16(byteOffset: Int64, value: Int64) {
        withUnsafePointer(to: byteOffset) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedByteArray.method_encode_u16(&content, pArgs, nil, 2)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Encodes a 16-bit signed integer number as bytes at the index of `byteOffset` bytes. The array must have at least 2 bytes of space, starting at the offset.
    public final func encodeS16(byteOffset: Int64, value: Int64) {
        withUnsafePointer(to: byteOffset) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedByteArray.method_encode_s16(&content, pArgs, nil, 2)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Encodes a 32-bit unsigned integer number as bytes at the index of `byteOffset` bytes. The array must have at least 4 bytes of space, starting at the offset.
    public final func encodeU32(byteOffset: Int64, value: Int64) {
        withUnsafePointer(to: byteOffset) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedByteArray.method_encode_u32(&content, pArgs, nil, 2)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Encodes a 32-bit signed integer number as bytes at the index of `byteOffset` bytes. The array must have at least 4 bytes of space, starting at the offset.
    public final func encodeS32(byteOffset: Int64, value: Int64) {
        withUnsafePointer(to: byteOffset) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedByteArray.method_encode_s32(&content, pArgs, nil, 2)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Encodes a 64-bit unsigned integer number as bytes at the index of `byteOffset` bytes. The array must have at least 8 bytes of space, starting at the offset.
    public final func encodeU64(byteOffset: Int64, value: Int64) {
        withUnsafePointer(to: byteOffset) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedByteArray.method_encode_u64(&content, pArgs, nil, 2)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Encodes a 64-bit signed integer number as bytes at the index of `byteOffset` bytes. The array must have at least 8 bytes of space, starting at the offset.
    public final func encodeS64(byteOffset: Int64, value: Int64) {
        withUnsafePointer(to: byteOffset) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedByteArray.method_encode_s64(&content, pArgs, nil, 2)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Encodes a 16-bit floating-point number as bytes at the index of `byteOffset` bytes. The array must have at least 2 bytes of space, starting at the offset.
    public final func encodeHalf(byteOffset: Int64, value: Double) {
        withUnsafePointer(to: byteOffset) { pArg0 in
            let value = Double(value)
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedByteArray.method_encode_half(&content, pArgs, nil, 2)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Encodes a 32-bit floating-point number as bytes at the index of `byteOffset` bytes. The array must have at least 4 bytes of space, starting at the offset.
    public final func encodeFloat(byteOffset: Int64, value: Double) {
        withUnsafePointer(to: byteOffset) { pArg0 in
            let value = Double(value)
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedByteArray.method_encode_float(&content, pArgs, nil, 2)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Encodes a 64-bit floating-point number as bytes at the index of `byteOffset` bytes. The array must have at least 8 bytes of allocated space, starting at the offset.
    public final func encodeDouble(byteOffset: Int64, value: Double) {
        withUnsafePointer(to: byteOffset) { pArg0 in
            let value = Double(value)
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPackedByteArray.method_encode_double(&content, pArgs, nil, 2)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Encodes a ``Variant`` at the index of `byteOffset` bytes. A sufficient space must be allocated, depending on the encoded variant's size. If `allowObjects` is `false`, ``Object``-derived values are not permitted and will instead be serialized as ID-only.
    public final func encodeVar(byteOffset: Int64, value: Variant?, allowObjects: Bool = false) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: byteOffset) { pArg0 in
            withUnsafePointer(to: value.content) { pArg1 in
                withUnsafePointer(to: allowObjects) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            GodotInterfaceForPackedByteArray.method_encode_var(&content, pArgs, &result, 3)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if contents of both arrays are the same, i.e. they have all equal bytes at the corresponding indices.
    public static func ==(lhs: PackedByteArray, rhs: PackedByteArray) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForPackedByteArray.operator_5(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if contents of the arrays differ.
    public static func !=(lhs: PackedByteArray, rhs: PackedByteArray) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForPackedByteArray.operator_6(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns a new ``PackedByteArray`` with contents of `right` added at the end of this array. For better performance, consider using ``appendArray(array:)`` instead.
    public static func +(lhs: PackedByteArray, rhs: PackedByteArray) -> PackedByteArray  {
        let result: PackedByteArray = PackedByteArray()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForPackedByteArray.operator_7(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    /// Wrap ``PackedByteArray`` into a ``Variant``
    @inline(__always)
    @inlinable
    public func toVariant() -> Variant {
        Variant(self)
    }
    
    /// Wrap ``PackedByteArray`` into a ``Variant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toVariant() -> Variant? {
        Variant(self)
    }
    
    /// Wrap ``PackedByteArray`` into a ``FastVariant``
    @inline(__always)
    @inlinable
    public func toFastVariant() -> FastVariant {
        FastVariant(self)
    }
    
    /// Wrap ``PackedByteArray`` into a ``FastVariant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toFastVariant() -> FastVariant? {
        FastVariant(self)
    }
    
    /// Extract ``PackedByteArray`` from a ``Variant``. Throws `VariantConversionError` if it's not possible.
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
    
    /// Initialze ``PackedByteArray`` from ``Variant``. Fails if `variant` doesn't contain ``PackedByteArray``
    @inline(__always)                                
    public convenience init?(_ variant: Variant) {
        guard Self._variantType == variant.gtype else { return nil }
        var content = PackedByteArray.zero
        withUnsafeMutablePointer(to: &content) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForPackedByteArray.selfFromVariant)                        
        }
        self.init(takingOver: content)
    }
    
    /// Initialze ``PackedByteArray`` from ``Variant``. Fails if `variant` doesn't contain ``PackedByteArray`` or is `nil`
    @inline(__always)
    @inlinable
    public convenience init?(_ variant: Variant?) {
        guard let variant else { return nil }
        self.init(variant)
    }
    
    /// Initialze ``PackedByteArray`` from ``FastVariant``. Fails if `variant` doesn't contain ``PackedByteArray``
    @inline(__always)                                
    public convenience init?(_ variant: borrowing FastVariant) {
        guard Self._variantType == variant.gtype else { return nil }
        var content = PackedByteArray.zero
        withUnsafeMutablePointer(to: &content) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForPackedByteArray.selfFromVariant)                        
        }
        self.init(takingOver: content)
    }
    
    /// Initialze ``PackedByteArray`` from ``FastVariant``. Fails if `variant` doesn't contain ``PackedByteArray`` or is `nil`
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
    /// Internal API. For indicating that Godot `Array` of ``PackedByteArray`` has type `Array[PackedByteArray]`
    @inline(__always)
    @inlinable
    public static var _variantType: Variant.GType {
        .packedByteArray 
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
    /// Initialize ``Variant`` by wrapping ``PackedByteArray?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    convenience init?(_ from: PackedByteArray?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``Variant`` by wrapping ``PackedByteArray``
    @inline(__always)
    convenience init(_ from: PackedByteArray) {
        self.init(payload: from.content, constructor: GodotInterfaceForPackedByteArray.variantFromSelf)
    }
    
}

public extension FastVariant {
    /// Initialize ``FastVariant`` by wrapping ``PackedByteArray?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    init?(_ from: PackedByteArray?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``FastVariant`` by wrapping ``PackedByteArray``
    @inline(__always)
    init(_ from: PackedByteArray) {
        self.init(payload: from.content, constructor: GodotInterfaceForPackedByteArray.variantFromSelf)
    }
    
}

/// Static storage for keeping pointers to Godot implementation wrapped by PackedByteArray
enum GodotInterfaceForPackedByteArray {
    // MARK: - Destructor
    static let destructor: GDExtensionPtrDestructor = {
        return gi.variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
    }()
    
    // MARK: - Constructors
    static let constructor0: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, 0)!
    }()
    
    static let constructor1: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, 1)!
    }()
    
    static let constructor2: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, 2)!
    }()
    
    // MARK: - Methods
    static let method_get: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 4103005248)!
    }()
    
    static let method_set: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("set")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 3638975848)!
    }()
    
    static let method_size: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("size")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 3173160232)!
    }()
    
    static let method_is_empty: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_empty")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 3918633141)!
    }()
    
    static let method_push_back: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("push_back")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 694024632)!
    }()
    
    static let method_append: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("append")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 694024632)!
    }()
    
    static let method_append_array: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("append_array")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 791097111)!
    }()
    
    static let method_remove_at: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("remove_at")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 2823966027)!
    }()
    
    static let method_insert: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("insert")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 1487112728)!
    }()
    
    static let method_fill: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("fill")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 2823966027)!
    }()
    
    static let method_resize: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("resize")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 848867239)!
    }()
    
    static let method_clear: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("clear")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 3218959716)!
    }()
    
    static let method_has: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("has")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 931488181)!
    }()
    
    static let method_reverse: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("reverse")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 3218959716)!
    }()
    
    static let method_slice: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("slice")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 2278869132)!
    }()
    
    static let method_sort: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("sort")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 3218959716)!
    }()
    
    static let method_bsearch: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("bsearch")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 3380005890)!
    }()
    
    static let method_duplicate: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("duplicate")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 851781288)!
    }()
    
    static let method_find: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("find")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 2984303840)!
    }()
    
    static let method_rfind: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("rfind")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 2984303840)!
    }()
    
    static let method_count: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("count")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 4103005248)!
    }()
    
    static let method_get_string_from_ascii: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_string_from_ascii")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 3942272618)!
    }()
    
    static let method_get_string_from_utf8: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_string_from_utf8")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 3942272618)!
    }()
    
    static let method_get_string_from_utf16: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_string_from_utf16")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 3942272618)!
    }()
    
    static let method_get_string_from_utf32: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_string_from_utf32")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 3942272618)!
    }()
    
    static let method_get_string_from_wchar: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_string_from_wchar")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 3942272618)!
    }()
    
    static let method_hex_encode: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("hex_encode")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 3942272618)!
    }()
    
    static let method_compress: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("compress")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 1845905913)!
    }()
    
    static let method_decompress: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("decompress")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 2278869132)!
    }()
    
    static let method_decompress_dynamic: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("decompress_dynamic")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 2278869132)!
    }()
    
    static let method_decode_u8: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("decode_u8")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 4103005248)!
    }()
    
    static let method_decode_s8: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("decode_s8")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 4103005248)!
    }()
    
    static let method_decode_u16: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("decode_u16")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 4103005248)!
    }()
    
    static let method_decode_s16: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("decode_s16")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 4103005248)!
    }()
    
    static let method_decode_u32: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("decode_u32")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 4103005248)!
    }()
    
    static let method_decode_s32: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("decode_s32")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 4103005248)!
    }()
    
    static let method_decode_u64: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("decode_u64")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 4103005248)!
    }()
    
    static let method_decode_s64: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("decode_s64")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 4103005248)!
    }()
    
    static let method_decode_half: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("decode_half")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 1401583798)!
    }()
    
    static let method_decode_float: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("decode_float")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 1401583798)!
    }()
    
    static let method_decode_double: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("decode_double")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 1401583798)!
    }()
    
    static let method_has_encoded_var: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("has_encoded_var")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 2914632957)!
    }()
    
    static let method_decode_var: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("decode_var")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 1740420038)!
    }()
    
    static let method_decode_var_size: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("decode_var_size")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 954237325)!
    }()
    
    static let method_to_int32_array: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("to_int32_array")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 3158844420)!
    }()
    
    static let method_to_int64_array: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("to_int64_array")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 1961294120)!
    }()
    
    static let method_to_float32_array: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("to_float32_array")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 3575107827)!
    }()
    
    static let method_to_float64_array: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("to_float64_array")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 1627308337)!
    }()
    
    static let method_encode_u8: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("encode_u8")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 3638975848)!
    }()
    
    static let method_encode_s8: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("encode_s8")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 3638975848)!
    }()
    
    static let method_encode_u16: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("encode_u16")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 3638975848)!
    }()
    
    static let method_encode_s16: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("encode_s16")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 3638975848)!
    }()
    
    static let method_encode_u32: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("encode_u32")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 3638975848)!
    }()
    
    static let method_encode_s32: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("encode_s32")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 3638975848)!
    }()
    
    static let method_encode_u64: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("encode_u64")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 3638975848)!
    }()
    
    static let method_encode_s64: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("encode_s64")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 3638975848)!
    }()
    
    static let method_encode_half: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("encode_half")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 1113000516)!
    }()
    
    static let method_encode_float: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("encode_float")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 1113000516)!
    }()
    
    static let method_encode_double: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("encode_double")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 1113000516)!
    }()
    
    static let method_encode_var: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("encode_var")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, &name.content, 2604460497)!
    }()
    
    // MARK: - Operators
    static let operator_5: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
    }()
    
    static let operator_6: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
    }()
    
    static let operator_7: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
    }()
    
    // MARK: - Variant conversion
    static let variantFromSelf: GDExtensionVariantFromTypeConstructorFunc = {
        gi.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
    }()
    
    static let selfFromVariant: GDExtensionTypeFromVariantConstructorFunc = {
        gi.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
    }()
    
    
}

