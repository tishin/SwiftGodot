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


/// A built-in type for strings.
/// 
/// This is the built-in string Variant type (and the one used by GDScript). Strings may contain any number of Unicode characters, and expose methods useful for manipulating and generating strings. Strings are reference-counted and use a copy-on-write approach (every modification to a string returns a new ``String``), so passing them around is cheap in resources.
/// 
/// Some string methods have corresponding variations. Variations suffixed with `n` (``countn(what:from:to:)``, ``findn(what:from:)``, ``replacen(what:forwhat:)``, etc.) are **case-insensitive** (they make no distinction between uppercase and lowercase letters). Method variations prefixed with `r` (``rfind(what:from:)``, ``rsplit(delimiter:allowEmpty:maxsplit:)``, etc.) are reversed, and start from the end of the string, instead of the beginning.
/// 
/// To convert any ``Variant`` to or from a string, see ``@GlobalScope.str``, ``@GlobalScope.str_to_var``, and ``@GlobalScope.var_to_str``.
/// 
/// > Note: In a boolean context, a string will evaluate to `false` if it is empty (`""`). Otherwise, a string will always evaluate to `true`.
/// 
public final class GString: _GodotBridgeableBuiltin, Equatable, Hashable, ExpressibleByStringLiteral, ExpressibleByStringInterpolation, LosslessStringConvertible {
    public required init(_ string: String) {
        gi.string_new_with_utf8_chars(&content, string)
    }
    // ExpressibleByStringLiteral conformance
    public required init(stringLiteral value: String) {
        gi.string_new_with_utf8_chars(&content, value)
    }
    deinit {
        if content != GString.zero {
            GodotInterfaceForString.destructor(&content)
        }
        
    }
    
    // Contains a binary blob where this type information is stored
    public var content: ContentType = GString.zero
    
    // Used to initialize empty types
    public static var zero: ContentType { 0 }
    // Convenience type that matches the build configuration storage needs
    public typealias ContentType = Int64
    // Used to construct objects on virtual proxies
    public required init(content proxyContent: ContentType) {
        withUnsafePointer(to: proxyContent) { pContent in
            withUnsafePointer(to: pContent) { pArgs in
                GodotInterfaceForString.constructor1(&content, pArgs)
            }
        }
    }
    /// Initialize with existing `ContentType` assuming this ``GString`` owns it since now.
    init(takingOver content: ContentType) {
        self.content = content
    }
    
    /// Constructs an empty ``String`` (`""`).
    public required init() {
        GodotInterfaceForString.constructor0(&content, nil)
    }
    
    /// Constructs a ``String`` as a copy of the given ``String``.
    public init(from: GString) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.constructor1(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs a new ``String`` from the given ``StringName``.
    public init(from: StringName) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.constructor2(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs a new ``String`` from the given ``NodePath``.
    public init(from: NodePath) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.constructor3(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    
    /* Methods */
    
    /// Performs a case-sensitive comparison to another string. Returns `-1` if less than, `1` if greater than, or `0` if equal. "Less than" and "greater than" are determined by the <a href="https://en.wikipedia.org/wiki/List_of_Unicode_characters">Unicode code points</a> of each string, which roughly matches the alphabetical order.
    /// 
    /// With different string lengths, returns `1` if this string is longer than the `to` string, or `-1` if shorter. Note that the length of empty strings is _always_ `0`.
    /// 
    /// To get a [bool] result from a string comparison, use the `==` operator instead. See also ``nocasecmpTo(to:)``, ``filecasecmpTo(to:)``, and ``naturalcasecmpTo(to:)``.
    /// 
    public final func casecmpTo(_ to: GString) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: to.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_casecmp_to(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Performs a **case-insensitive** comparison to another string. Returns `-1` if less than, `1` if greater than, or `0` if equal. "Less than" or "greater than" are determined by the <a href="https://en.wikipedia.org/wiki/List_of_Unicode_characters">Unicode code points</a> of each string, which roughly matches the alphabetical order. Internally, lowercase characters are converted to uppercase for the comparison.
    /// 
    /// With different string lengths, returns `1` if this string is longer than the `to` string, or `-1` if shorter. Note that the length of empty strings is _always_ `0`.
    /// 
    /// To get a [bool] result from a string comparison, use the `==` operator instead. See also ``casecmpTo(to:)``, ``filenocasecmpTo(to:)``, and ``naturalnocasecmpTo(to:)``.
    /// 
    public final func nocasecmpTo(_ to: GString) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: to.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_nocasecmp_to(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Performs a **case-sensitive**, _natural order_ comparison to another string. Returns `-1` if less than, `1` if greater than, or `0` if equal. "Less than" or "greater than" are determined by the <a href="https://en.wikipedia.org/wiki/List_of_Unicode_characters">Unicode code points</a> of each string, which roughly matches the alphabetical order.
    /// 
    /// When used for sorting, natural order comparison orders sequences of numbers by the combined value of each digit as is often expected, instead of the single digit's value. A sorted sequence of numbered strings will be `["1", "2", "3", ...]`, not `["1", "10", "2", "3", ...]`.
    /// 
    /// With different string lengths, returns `1` if this string is longer than the `to` string, or `-1` if shorter. Note that the length of empty strings is _always_ `0`.
    /// 
    /// To get a [bool] result from a string comparison, use the `==` operator instead. See also ``naturalnocasecmpTo(to:)``, ``filecasecmpTo(to:)``, and ``nocasecmpTo(to:)``.
    /// 
    public final func naturalcasecmpTo(_ to: GString) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: to.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_naturalcasecmp_to(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Performs a **case-insensitive**, _natural order_ comparison to another string. Returns `-1` if less than, `1` if greater than, or `0` if equal. "Less than" or "greater than" are determined by the <a href="https://en.wikipedia.org/wiki/List_of_Unicode_characters">Unicode code points</a> of each string, which roughly matches the alphabetical order. Internally, lowercase characters are converted to uppercase for the comparison.
    /// 
    /// When used for sorting, natural order comparison orders sequences of numbers by the combined value of each digit as is often expected, instead of the single digit's value. A sorted sequence of numbered strings will be `["1", "2", "3", ...]`, not `["1", "10", "2", "3", ...]`.
    /// 
    /// With different string lengths, returns `1` if this string is longer than the `to` string, or `-1` if shorter. Note that the length of empty strings is _always_ `0`.
    /// 
    /// To get a [bool] result from a string comparison, use the `==` operator instead. See also ``naturalcasecmpTo(to:)``, ``filenocasecmpTo(to:)``, and ``casecmpTo(to:)``.
    /// 
    public final func naturalnocasecmpTo(_ to: GString) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: to.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_naturalnocasecmp_to(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Like ``naturalcasecmpTo(to:)`` but prioritizes strings that begin with periods (`.`) and underscores (`_`) before any other character. Useful when sorting folders or file names.
    /// 
    /// To get a [bool] result from a string comparison, use the `==` operator instead. See also ``filenocasecmpTo(to:)``, ``naturalcasecmpTo(to:)``, and ``casecmpTo(to:)``.
    /// 
    public final func filecasecmpTo(_ to: GString) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: to.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_filecasecmp_to(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Like ``naturalnocasecmpTo(to:)`` but prioritizes strings that begin with periods (`.`) and underscores (`_`) before any other character. Useful when sorting folders or file names.
    /// 
    /// To get a [bool] result from a string comparison, use the `==` operator instead. See also ``filecasecmpTo(to:)``, ``naturalnocasecmpTo(to:)``, and ``nocasecmpTo(to:)``.
    /// 
    public final func filenocasecmpTo(_ to: GString) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: to.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_filenocasecmp_to(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the number of characters in the string. Empty strings (`""`) always return `0`. See also ``isEmpty()``.
    public final func length() -> Int64 {
        var result: Int64 = Int64()
        GodotInterfaceForString.method_length(&content, nil, &result, 0)
        return result
    }
    
    /// Returns part of the string from the position `from` with length `len`. If `len` is `-1` (as by default), returns the rest of the string starting from the given position.
    public final func substr(from: Int64, len: Int64 = -1) -> GString {
        let result: GString = GString()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: len) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForString.method_substr(&content, pArgs, &result.content, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Splits the string using a `delimiter` and returns the substring at index `slice`. Returns the original string if `delimiter` does not occur in the string. Returns an empty string if the `slice` does not exist.
    /// 
    /// This is faster than ``split(delimiter:allowEmpty:maxsplit:)``, if you only need one substring.
    /// 
    public final func getSlice(delimiter: GString, slice: Int64) -> GString {
        let result: GString = GString()
        withUnsafePointer(to: delimiter.content) { pArg0 in
            withUnsafePointer(to: slice) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForString.method_get_slice(&content, pArgs, &result.content, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Splits the string using a Unicode character with code `delimiter` and returns the substring at index `slice`. Returns an empty string if the `slice` does not exist.
    /// 
    /// This is faster than ``split(delimiter:allowEmpty:maxsplit:)``, if you only need one substring.
    /// 
    public final func getSlicec(delimiter: Int64, slice: Int64) -> GString {
        let result: GString = GString()
        withUnsafePointer(to: delimiter) { pArg0 in
            withUnsafePointer(to: slice) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForString.method_get_slicec(&content, pArgs, &result.content, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the total number of slices when the string is split with the given `delimiter` (see ``split(delimiter:allowEmpty:maxsplit:)``).
    public final func getSliceCount(delimiter: GString) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: delimiter.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_get_slice_count(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the index of the **first** occurrence of `what` in this string, or `-1` if there are none. The search's start can be specified with `from`, continuing to the end of the string.
    /// 
    /// > Note: If you just want to know whether the string contains `what`, use ``contains(what:)``. In GDScript, you may also use the `in` operator.
    /// 
    public final func find(what: GString, from: Int64 = 0) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: what.content) { pArg0 in
            withUnsafePointer(to: from) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForString.method_find(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the index of the **first** **case-insensitive** occurrence of `what` in this string, or `-1` if there are none. The starting search index can be specified with `from`, continuing to the end of the string.
    public final func findn(what: GString, from: Int64 = 0) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: what.content) { pArg0 in
            withUnsafePointer(to: from) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForString.method_findn(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the number of occurrences of the substring `what` between `from` and `to` positions. If `to` is 0, the search continues until the end of the string.
    public final func count(what: GString, from: Int64 = 0, to: Int64 = 0) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: what.content) { pArg0 in
            withUnsafePointer(to: from) { pArg1 in
                withUnsafePointer(to: to) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            GodotInterfaceForString.method_count(&content, pArgs, &result, 3)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the number of occurrences of the substring `what` between `from` and `to` positions, **ignoring case**. If `to` is 0, the search continues until the end of the string.
    public final func countn(what: GString, from: Int64 = 0, to: Int64 = 0) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: what.content) { pArg0 in
            withUnsafePointer(to: from) { pArg1 in
                withUnsafePointer(to: to) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            GodotInterfaceForString.method_countn(&content, pArgs, &result, 3)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the index of the **last** occurrence of `what` in this string, or `-1` if there are none. The search's start can be specified with `from`, continuing to the beginning of the string. This method is the reverse of ``find(what:from:)``.
    public final func rfind(what: GString, from: Int64 = -1) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: what.content) { pArg0 in
            withUnsafePointer(to: from) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForString.method_rfind(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the index of the **last** **case-insensitive** occurrence of `what` in this string, or `-1` if there are none. The starting search index can be specified with `from`, continuing to the beginning of the string. This method is the reverse of ``findn(what:from:)``.
    public final func rfindn(what: GString, from: Int64 = -1) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: what.content) { pArg0 in
            withUnsafePointer(to: from) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForString.method_rfindn(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Does a simple expression match (also called "glob" or "globbing"), where `*` matches zero or more arbitrary characters and `?` matches any single character except a period (`.`). An empty string or empty expression always evaluates to `false`.
    public final func match(expr: GString) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: expr.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_match(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Does a simple **case-insensitive** expression match, where `*` matches zero or more arbitrary characters and `?` matches any single character except a period (`.`). An empty string or empty expression always evaluates to `false`.
    public final func matchn(expr: GString) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: expr.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_matchn(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the string begins with the given `text`. See also ``endsWith(text:)``.
    public final func beginsWith(text: GString) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_begins_with(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the string ends with the given `text`. See also ``beginsWith(text:)``.
    public final func endsWith(text: GString) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_ends_with(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if all characters of this string can be found in `text` in their original order.
    /// 
    public final func isSubsequenceOf(text: GString) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_is_subsequence_of(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if all characters of this string can be found in `text` in their original order, **ignoring case**.
    public final func isSubsequenceOfn(text: GString) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_is_subsequence_ofn(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns an array containing the bigrams (pairs of consecutive characters) of this string.
    /// 
    public final func bigrams() -> PackedStringArray {
        let result: PackedStringArray = PackedStringArray()
        GodotInterfaceForString.method_bigrams(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns the similarity index (<a href="https://en.wikipedia.org/wiki/S%C3%B8rensen%E2%80%93Dice_coefficient">Sørensen-Dice coefficient</a>) of this string compared to another. A result of `1.0` means totally similar, while `0.0` means totally dissimilar.
    /// 
    public final func similarity(text: GString) -> Double {
        var result: Double = Double()
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_similarity(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Formats the string by replacing all occurrences of `placeholder` with the elements of `values`.
    /// 
    /// `values` can be a ``VariantDictionary``, an ``VariantArray``, or an ``Object``. Any underscores in `placeholder` will be replaced with the corresponding keys in advance. Array elements use their index as keys.
    /// 
    /// Some additional handling is performed when `values` is an ``VariantArray``. If `placeholder` does not contain an underscore, the elements of the `values` array will be used to replace one occurrence of the placeholder in order; If an element of `values` is another 2-element array, it'll be interpreted as a key-value pair.
    /// 
    /// When passing an ``Object``, the property names from ``Object/getPropertyList()`` are used as keys.
    /// 
    /// See also the <a href="https://docs.godotengine.org/en//tutorials/scripting/gdscript/gdscript_format_string.html">GDScript format string</a> tutorial.
    /// 
    /// > Note: Each replacement is done sequentially for each element of `values`, **not** all at once. This means that if any element is inserted and it contains another placeholder, it may be changed by the next replacement. While this can be very useful, it often causes unexpected results. If not necessary, make sure `values`'s elements do not contain placeholders.
    /// 
    /// > Note: In C#, it's recommended to <a href="https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/tokens/interpolated">interpolate strings with "$"</a>, instead.
    /// 
    public final func format(values: Variant?, placeholder: GString = "{_}") -> GString {
        let result: GString = GString()
        withUnsafePointer(to: values.content) { pArg0 in
            withUnsafePointer(to: placeholder.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForString.method_format(&content, pArgs, &result.content, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Replaces all occurrences of `what` inside the string with the given `forwhat`.
    public final func replace(what: GString, forwhat: GString) -> GString {
        let result: GString = GString()
        withUnsafePointer(to: what.content) { pArg0 in
            withUnsafePointer(to: forwhat.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForString.method_replace(&content, pArgs, &result.content, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Replaces all **case-insensitive** occurrences of `what` inside the string with the given `forwhat`.
    public final func replacen(what: GString, forwhat: GString) -> GString {
        let result: GString = GString()
        withUnsafePointer(to: what.content) { pArg0 in
            withUnsafePointer(to: forwhat.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForString.method_replacen(&content, pArgs, &result.content, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the copy of this string in reverse order. This operation works on unicode codepoints, rather than sequences of codepoints, and may break things like compound letters or emojis.
    public final func reverse() -> GString {
        let result: GString = GString()
        GodotInterfaceForString.method_reverse(&content, nil, &result.content, 0)
        return result
    }
    
    /// Inserts `what` at the given `position` in the string.
    public final func insert(position: Int64, what: GString) -> GString {
        let result: GString = GString()
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: what.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForString.method_insert(&content, pArgs, &result.content, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a string with `chars` characters erased starting from `position`. If `chars` goes beyond the string's length given the specified `position`, fewer characters will be erased from the returned string. Returns an empty string if either `position` or `chars` is negative. Returns the original string unmodified if `chars` is `0`.
    public final func erase(position: Int64, chars: Int64 = 1) -> GString {
        let result: GString = GString()
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: chars) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForString.method_erase(&content, pArgs, &result.content, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Changes the appearance of the string: replaces underscores (`_`) with spaces, adds spaces before uppercase letters in the middle of a word, converts all letters to lowercase, then converts the first one and each one following a space to uppercase.
    /// 
    public final func capitalize() -> GString {
        let result: GString = GString()
        GodotInterfaceForString.method_capitalize(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns the string converted to `camelCase`.
    public final func toCamelCase() -> GString {
        let result: GString = GString()
        GodotInterfaceForString.method_to_camel_case(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns the string converted to `PascalCase`.
    public final func toPascalCase() -> GString {
        let result: GString = GString()
        GodotInterfaceForString.method_to_pascal_case(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns the string converted to `snake_case`.
    /// 
    /// > Note: Numbers followed by a _single_ letter are not separated in the conversion to keep some words (such as "2D") together.
    /// 
    public final func toSnakeCase() -> GString {
        let result: GString = GString()
        GodotInterfaceForString.method_to_snake_case(&content, nil, &result.content, 0)
        return result
    }
    
    /// Splits the string using a `delimiter` and returns an array of the substrings. If `delimiter` is an empty string, each substring will be a single character. This method is the opposite of ``join(parts:)``.
    /// 
    /// If `allowEmpty` is `false`, empty strings between adjacent delimiters are excluded from the array.
    /// 
    /// If `maxsplit` is greater than `0`, the number of splits may not exceed `maxsplit`. By default, the entire string is split.
    /// 
    /// > Note: If you only need one substring from the array, consider using ``getSlice(delimiter:slice:)`` which is faster. If you need to split strings with more complex rules, use the ``RegEx`` class instead.
    /// 
    public final func split(delimiter: GString = "", allowEmpty: Bool = true, maxsplit: Int64 = 0) -> PackedStringArray {
        let result: PackedStringArray = PackedStringArray()
        withUnsafePointer(to: delimiter.content) { pArg0 in
            withUnsafePointer(to: allowEmpty) { pArg1 in
                withUnsafePointer(to: maxsplit) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            GodotInterfaceForString.method_split(&content, pArgs, &result.content, 3)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Splits the string using a `delimiter` and returns an array of the substrings, starting from the end of the string. The splits in the returned array appear in the same order as the original string. If `delimiter` is an empty string, each substring will be a single character.
    /// 
    /// If `allowEmpty` is `false`, empty strings between adjacent delimiters are excluded from the array.
    /// 
    /// If `maxsplit` is greater than `0`, the number of splits may not exceed `maxsplit`. By default, the entire string is split, which is mostly identical to ``split(delimiter:allowEmpty:maxsplit:)``.
    /// 
    public final func rsplit(delimiter: GString = "", allowEmpty: Bool = true, maxsplit: Int64 = 0) -> PackedStringArray {
        let result: PackedStringArray = PackedStringArray()
        withUnsafePointer(to: delimiter.content) { pArg0 in
            withUnsafePointer(to: allowEmpty) { pArg1 in
                withUnsafePointer(to: maxsplit) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            GodotInterfaceForString.method_rsplit(&content, pArgs, &result.content, 3)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Splits the string into floats by using a `delimiter` and returns a ``PackedFloat64Array``.
    /// 
    /// If `allowEmpty` is `false`, empty or invalid float conversions between adjacent delimiters are excluded.
    /// 
    public final func splitFloats(delimiter: GString, allowEmpty: Bool = true) -> PackedFloat64Array {
        let result: PackedFloat64Array = PackedFloat64Array()
        withUnsafePointer(to: delimiter.content) { pArg0 in
            withUnsafePointer(to: allowEmpty) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForString.method_split_floats(&content, pArgs, &result.content, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the concatenation of `parts`' elements, with each element separated by the string calling this method. This method is the opposite of ``split(delimiter:allowEmpty:maxsplit:)``.
    /// 
    public final func join(parts: PackedStringArray) -> GString {
        let result: GString = GString()
        withUnsafePointer(to: parts.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_join(&content, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the string converted to `UPPERCASE`.
    public final func toUpper() -> GString {
        let result: GString = GString()
        GodotInterfaceForString.method_to_upper(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns the string converted to `lowercase`.
    public final func toLower() -> GString {
        let result: GString = GString()
        GodotInterfaceForString.method_to_lower(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns the first `length` characters from the beginning of the string. If `length` is negative, strips the last `length` characters from the string's end.
    /// 
    public final func left(length: Int64) -> GString {
        let result: GString = GString()
        withUnsafePointer(to: length) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_left(&content, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the last `length` characters from the end of the string. If `length` is negative, strips the first `length` characters from the string's beginning.
    /// 
    public final func right(length: Int64) -> GString {
        let result: GString = GString()
        withUnsafePointer(to: length) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_right(&content, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Strips all non-printable characters from the beginning and the end of the string. These include spaces, tabulations (`\t`), and newlines (`\n` `\r`).
    /// 
    /// If `left` is `false`, ignores the string's beginning. Likewise, if `right` is `false`, ignores the string's end.
    /// 
    public final func stripEdges(left: Bool = true, right: Bool = true) -> GString {
        let result: GString = GString()
        withUnsafePointer(to: left) { pArg0 in
            withUnsafePointer(to: right) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForString.method_strip_edges(&content, pArgs, &result.content, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Strips all escape characters from the string. These include all non-printable control characters of the first page of the ASCII table (values from 0 to 31), such as tabulation (`\t`) and newline (`\n`, `\r`) characters, but _not_ spaces.
    public final func stripEscapes() -> GString {
        let result: GString = GString()
        GodotInterfaceForString.method_strip_escapes(&content, nil, &result.content, 0)
        return result
    }
    
    /// Removes a set of characters defined in `chars` from the string's beginning. See also ``rstrip(chars:)``.
    /// 
    /// > Note: `chars` is not a prefix. Use ``trimPrefix(prefix:)`` to remove a single prefix, rather than a set of characters.
    /// 
    public final func lstrip(chars: GString) -> GString {
        let result: GString = GString()
        withUnsafePointer(to: chars.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_lstrip(&content, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Removes a set of characters defined in `chars` from the string's end. See also ``lstrip(chars:)``.
    /// 
    /// > Note: `chars` is not a suffix. Use ``trimSuffix(suffix:)`` to remove a single suffix, rather than a set of characters.
    /// 
    public final func rstrip(chars: GString) -> GString {
        let result: GString = GString()
        withUnsafePointer(to: chars.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_rstrip(&content, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// If the string is a valid file name or path, returns the file extension without the leading period (`.`). Otherwise, returns an empty string.
    /// 
    public final func getExtension() -> GString {
        let result: GString = GString()
        GodotInterfaceForString.method_get_extension(&content, nil, &result.content, 0)
        return result
    }
    
    /// If the string is a valid file path, returns the full file path, without the extension.
    /// 
    public final func getBasename() -> GString {
        let result: GString = GString()
        GodotInterfaceForString.method_get_basename(&content, nil, &result.content, 0)
        return result
    }
    
    /// Concatenates `file` at the end of the string as a subpath, adding `/` if necessary.
    /// 
    /// **Example:** `"this/is".path_join("path") == "this/is/path"`.
    /// 
    public final func pathJoin(file: GString) -> GString {
        let result: GString = GString()
        withUnsafePointer(to: file.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_path_join(&content, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the character code at position `at`.
    public final func unicodeAt(_ at: Int64) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: at) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_unicode_at(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Indents every line of the string with the given `prefix`. Empty lines are not indented. See also ``dedent()`` to remove indentation.
    /// 
    /// For example, the string can be indented with two tabulations using `"\t\t"`, or four spaces using `"    "`.
    /// 
    public final func indent(prefix: GString) -> GString {
        let result: GString = GString()
        withUnsafePointer(to: prefix.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_indent(&content, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of the string with indentation (leading tabs and spaces) removed. See also ``indent(prefix:)`` to add indentation.
    public final func dedent() -> GString {
        let result: GString = GString()
        GodotInterfaceForString.method_dedent(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns the 32-bit hash value representing the string's contents.
    /// 
    /// > Note: Strings with equal hash values are _not_ guaranteed to be the same, as a result of hash collisions. On the contrary, strings with different hash values are guaranteed to be different.
    /// 
    public final func hash() -> Int64 {
        var result: Int64 = Int64()
        GodotInterfaceForString.method_hash(&content, nil, &result, 0)
        return result
    }
    
    /// Returns the <a href="https://en.wikipedia.org/wiki/MD5">MD5 hash</a> of the string as another ``String``.
    public final func md5Text() -> GString {
        let result: GString = GString()
        GodotInterfaceForString.method_md5_text(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns the <a href="https://en.wikipedia.org/wiki/SHA-1">SHA-1</a> hash of the string as another ``String``.
    public final func sha1Text() -> GString {
        let result: GString = GString()
        GodotInterfaceForString.method_sha1_text(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns the <a href="https://en.wikipedia.org/wiki/SHA-2">SHA-256</a> hash of the string as another ``String``.
    public final func sha256Text() -> GString {
        let result: GString = GString()
        GodotInterfaceForString.method_sha256_text(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns the <a href="https://en.wikipedia.org/wiki/MD5">MD5 hash</a> of the string as a ``PackedByteArray``.
    public final func md5Buffer() -> PackedByteArray {
        let result: PackedByteArray = PackedByteArray()
        GodotInterfaceForString.method_md5_buffer(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns the <a href="https://en.wikipedia.org/wiki/SHA-1">SHA-1</a> hash of the string as a ``PackedByteArray``.
    public final func sha1Buffer() -> PackedByteArray {
        let result: PackedByteArray = PackedByteArray()
        GodotInterfaceForString.method_sha1_buffer(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns the <a href="https://en.wikipedia.org/wiki/SHA-2">SHA-256</a> hash of the string as a ``PackedByteArray``.
    public final func sha256Buffer() -> PackedByteArray {
        let result: PackedByteArray = PackedByteArray()
        GodotInterfaceForString.method_sha256_buffer(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns `true` if the string's length is `0` (`""`). See also ``length()``.
    public final func isEmpty() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForString.method_is_empty(&content, nil, &result, 0)
        return result
    }
    
    /// Returns `true` if the string contains `what`. In GDScript, this corresponds to the `in` operator.
    /// 
    /// If you need to know where `what` is within the string, use ``find(what:from:)``. See also ``containsn(what:)``.
    /// 
    public final func contains(what: GString) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: what.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_contains(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the string contains `what`, **ignoring case**.
    /// 
    /// If you need to know where `what` is within the string, use ``findn(what:from:)``. See also ``contains(what:)``.
    /// 
    public final func containsn(what: GString) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: what.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_containsn(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the string is a path to a file or directory, and its starting point is explicitly defined. This method is the opposite of ``isRelativePath()``.
    /// 
    /// This includes all paths starting with `"res://"`, `"user://"`, `"C:\"`, `"/"`, etc.
    /// 
    public final func isAbsolutePath() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForString.method_is_absolute_path(&content, nil, &result, 0)
        return result
    }
    
    /// Returns `true` if the string is a path, and its starting point is dependent on context. The path could begin from the current directory, or the current ``Node`` (if the string is derived from a ``NodePath``), and may sometimes be prefixed with `"./"`. This method is the opposite of ``isAbsolutePath()``.
    public final func isRelativePath() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForString.method_is_relative_path(&content, nil, &result, 0)
        return result
    }
    
    /// If the string is a valid file path, converts the string into a canonical path. This is the shortest possible path, without `"./"`, and all the unnecessary `".."` and `"/"`.
    /// 
    public final func simplifyPath() -> GString {
        let result: GString = GString()
        GodotInterfaceForString.method_simplify_path(&content, nil, &result.content, 0)
        return result
    }
    
    /// If the string is a valid file path, returns the base directory name.
    /// 
    public final func getBaseDir() -> GString {
        let result: GString = GString()
        GodotInterfaceForString.method_get_base_dir(&content, nil, &result.content, 0)
        return result
    }
    
    /// If the string is a valid file path, returns the file name, including the extension.
    /// 
    public final func getFile() -> GString {
        let result: GString = GString()
        GodotInterfaceForString.method_get_file(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns a copy of the string with special characters escaped using the XML standard. If `escapeQuotes` is `true`, the single quote (`'`) and double quote (`"`) characters are also escaped.
    public final func xmlEscape(escapeQuotes: Bool = false) -> GString {
        let result: GString = GString()
        withUnsafePointer(to: escapeQuotes) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_xml_escape(&content, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of the string with escaped characters replaced by their meanings according to the XML standard.
    public final func xmlUnescape() -> GString {
        let result: GString = GString()
        GodotInterfaceForString.method_xml_unescape(&content, nil, &result.content, 0)
        return result
    }
    
    /// Encodes the string to URL-friendly format. This method is meant to properly encode the parameters in a URL when sending an HTTP request. See also ``uriDecode()``.
    /// 
    public final func uriEncode() -> GString {
        let result: GString = GString()
        GodotInterfaceForString.method_uri_encode(&content, nil, &result.content, 0)
        return result
    }
    
    /// Decodes the string from its URL-encoded format. This method is meant to properly decode the parameters in a URL when receiving an HTTP request. See also ``uriEncode()``.
    /// 
    public final func uriDecode() -> GString {
        let result: GString = GString()
        GodotInterfaceForString.method_uri_decode(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns a copy of the string with special characters escaped using the C language standard.
    public final func cEscape() -> GString {
        let result: GString = GString()
        GodotInterfaceForString.method_c_escape(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns a copy of the string with escaped characters replaced by their meanings. Supported escape sequences are `\'`, `\"`, `\\`, `\a`, `\b`, `\f`, `\n`, `\r`, `\t`, `\v`.
    /// 
    /// > Note: Unlike the GDScript parser, this method doesn't support the `\uXXXX` escape sequence.
    /// 
    public final func cUnescape() -> GString {
        let result: GString = GString()
        GodotInterfaceForString.method_c_unescape(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns a copy of the string with special characters escaped using the JSON standard. Because it closely matches the C standard, it is possible to use ``cUnescape()`` to unescape the string, if necessary.
    public final func jsonEscape() -> GString {
        let result: GString = GString()
        GodotInterfaceForString.method_json_escape(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns a copy of the string with all characters that are not allowed in ``Node/name`` (`.` `:` `@` `/` `"` `%`) replaced with underscores.
    public final func validateNodeName() -> GString {
        let result: GString = GString()
        GodotInterfaceForString.method_validate_node_name(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns a copy of the string with all characters that are not allowed in ``isValidFilename()`` replaced with underscores.
    public final func validateFilename() -> GString {
        let result: GString = GString()
        GodotInterfaceForString.method_validate_filename(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns `true` if this string is a valid ASCII identifier. A valid ASCII identifier may contain only letters, digits, and underscores (`_`), and the first character may not be a digit.
    /// 
    /// See also ``isValidUnicodeIdentifier()``.
    /// 
    public final func isValidAsciiIdentifier() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForString.method_is_valid_ascii_identifier(&content, nil, &result, 0)
        return result
    }
    
    /// Returns `true` if this string is a valid Unicode identifier.
    /// 
    /// A valid Unicode identifier must begin with a Unicode character of class `XID_Start` or `"_"`, and may contain Unicode characters of class `XID_Continue` in the other positions.
    /// 
    /// See also ``isValidAsciiIdentifier()``.
    /// 
    /// > Note: This method checks identifiers the same way as GDScript. See ``TextServer/isValidIdentifier(string:)`` for more advanced checks.
    /// 
    public final func isValidUnicodeIdentifier() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForString.method_is_valid_unicode_identifier(&content, nil, &result, 0)
        return result
    }
    
    /// Returns `true` if this string is a valid identifier. A valid identifier may contain only letters, digits and underscores (`_`), and the first character may not be a digit.
    /// 
    public final func isValidIdentifier() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForString.method_is_valid_identifier(&content, nil, &result, 0)
        return result
    }
    
    /// Returns `true` if this string represents a valid integer. A valid integer only contains digits, and may be prefixed with a positive (`+`) or negative (`-`) sign. See also ``toInt()``.
    /// 
    public final func isValidInt() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForString.method_is_valid_int(&content, nil, &result, 0)
        return result
    }
    
    /// Returns `true` if this string represents a valid floating-point number. A valid float may contain only digits, one decimal point (`.`), and the exponent letter (`e`). It may also be prefixed with a positive (`+`) or negative (`-`) sign. Any valid integer is also a valid float (see ``isValidInt()``). See also ``toFloat()``.
    /// 
    public final func isValidFloat() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForString.method_is_valid_float(&content, nil, &result, 0)
        return result
    }
    
    /// Returns `true` if this string is a valid hexadecimal number. A valid hexadecimal number only contains digits or letters `A` to `F` (either uppercase or lowercase), and may be prefixed with a positive (`+`) or negative (`-`) sign.
    /// 
    /// If `withPrefix` is `true`, the hexadecimal number needs to prefixed by `"0x"` to be considered valid.
    /// 
    public final func isValidHexNumber(withPrefix: Bool = false) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: withPrefix) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_is_valid_hex_number(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if this string is a valid color in hexadecimal HTML notation. The string must be a hexadecimal value (see ``isValidHexNumber(withPrefix:)``) of either 3, 4, 6 or 8 digits, and may be prefixed by a hash sign (`#`). Other HTML notations for colors, such as names or `hsl()`, are not considered valid. See also ``Color/html(rgba:)``.
    public final func isValidHtmlColor() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForString.method_is_valid_html_color(&content, nil, &result, 0)
        return result
    }
    
    /// Returns `true` if this string represents a well-formatted IPv4 or IPv6 address. This method considers <a href="https://en.wikipedia.org/wiki/Reserved_IP_addresses">reserved IP addresses</a> such as `"0.0.0.0"` and `"ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff"` as valid.
    public final func isValidIpAddress() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForString.method_is_valid_ip_address(&content, nil, &result, 0)
        return result
    }
    
    /// Returns `true` if this string does not contain characters that are not allowed in file names (`:` `/` `\` `?` `*` `"` `|` `%` `<` `>`).
    public final func isValidFilename() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForString.method_is_valid_filename(&content, nil, &result, 0)
        return result
    }
    
    /// Converts the string representing an integer number into an integer. This method removes any non-number character and stops at the first decimal point (`.`). See also ``isValidInt()``.
    /// 
    public final func toInt() -> Int64 {
        var result: Int64 = Int64()
        GodotInterfaceForString.method_to_int(&content, nil, &result, 0)
        return result
    }
    
    /// Converts the string representing a decimal number into a float. This method stops on the first non-number character, except the first decimal point (`.`) and the exponent letter (`e`). See also ``isValidFloat()``.
    /// 
    public final func toFloat() -> Double {
        var result: Double = Double()
        GodotInterfaceForString.method_to_float(&content, nil, &result, 0)
        return result
    }
    
    /// Converts the string representing a hexadecimal number into an integer. The string may be optionally prefixed with `"0x"`, and an additional `-` prefix for negative numbers.
    /// 
    public final func hexToInt() -> Int64 {
        var result: Int64 = Int64()
        GodotInterfaceForString.method_hex_to_int(&content, nil, &result, 0)
        return result
    }
    
    /// Converts the string representing a binary number into an integer. The string may optionally be prefixed with `"0b"`, and an additional `-` prefix for negative numbers.
    /// 
    public final func binToInt() -> Int64 {
        var result: Int64 = Int64()
        GodotInterfaceForString.method_bin_to_int(&content, nil, &result, 0)
        return result
    }
    
    /// Formats the string to be at least `minLength` long by adding `character`s to the left of the string, if necessary. See also ``rpad(minLength:character:)``.
    public final func lpad(minLength: Int64, character: GString = " ") -> GString {
        let result: GString = GString()
        withUnsafePointer(to: minLength) { pArg0 in
            withUnsafePointer(to: character.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForString.method_lpad(&content, pArgs, &result.content, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Formats the string to be at least `minLength` long, by adding `character`s to the right of the string, if necessary. See also ``lpad(minLength:character:)``.
    public final func rpad(minLength: Int64, character: GString = " ") -> GString {
        let result: GString = GString()
        withUnsafePointer(to: minLength) { pArg0 in
            withUnsafePointer(to: character.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForString.method_rpad(&content, pArgs, &result.content, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Formats the string representing a number to have an exact number of `digits` _after_ the decimal point.
    public final func padDecimals(digits: Int64) -> GString {
        let result: GString = GString()
        withUnsafePointer(to: digits) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_pad_decimals(&content, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Formats the string representing a number to have an exact number of `digits` _before_ the decimal point.
    public final func padZeros(digits: Int64) -> GString {
        let result: GString = GString()
        withUnsafePointer(to: digits) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_pad_zeros(&content, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Removes the given `prefix` from the start of the string, or returns the string unchanged.
    public final func trimPrefix(_ prefix: GString) -> GString {
        let result: GString = GString()
        withUnsafePointer(to: prefix.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_trim_prefix(&content, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Removes the given `suffix` from the end of the string, or returns the string unchanged.
    public final func trimSuffix(_ suffix: GString) -> GString {
        let result: GString = GString()
        withUnsafePointer(to: suffix.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_trim_suffix(&content, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Converts the string to an <a href="https://en.wikipedia.org/wiki/ASCII">ASCII</a>/Latin-1 encoded ``PackedByteArray``. This method is slightly faster than ``toUtf8Buffer()``, but replaces all unsupported characters with spaces. This is the inverse of ``PackedByteArray/getStringFromAscii()``.
    public final func toAsciiBuffer() -> PackedByteArray {
        let result: PackedByteArray = PackedByteArray()
        GodotInterfaceForString.method_to_ascii_buffer(&content, nil, &result.content, 0)
        return result
    }
    
    /// Converts the string to a <a href="https://en.wikipedia.org/wiki/UTF-8">UTF-8</a> encoded ``PackedByteArray``. This method is slightly slower than ``toAsciiBuffer()``, but supports all UTF-8 characters. For most cases, prefer using this method. This is the inverse of ``PackedByteArray/getStringFromUtf8()``.
    public final func toUtf8Buffer() -> PackedByteArray {
        let result: PackedByteArray = PackedByteArray()
        GodotInterfaceForString.method_to_utf8_buffer(&content, nil, &result.content, 0)
        return result
    }
    
    /// Converts the string to a <a href="https://en.wikipedia.org/wiki/UTF-16">UTF-16</a> encoded ``PackedByteArray``. This is the inverse of ``PackedByteArray/getStringFromUtf16()``.
    public final func toUtf16Buffer() -> PackedByteArray {
        let result: PackedByteArray = PackedByteArray()
        GodotInterfaceForString.method_to_utf16_buffer(&content, nil, &result.content, 0)
        return result
    }
    
    /// Converts the string to a <a href="https://en.wikipedia.org/wiki/UTF-32">UTF-32</a> encoded ``PackedByteArray``. This is the inverse of ``PackedByteArray/getStringFromUtf32()``.
    public final func toUtf32Buffer() -> PackedByteArray {
        let result: PackedByteArray = PackedByteArray()
        GodotInterfaceForString.method_to_utf32_buffer(&content, nil, &result.content, 0)
        return result
    }
    
    /// Decodes a hexadecimal string as a ``PackedByteArray``.
    /// 
    public final func hexDecode() -> PackedByteArray {
        let result: PackedByteArray = PackedByteArray()
        GodotInterfaceForString.method_hex_decode(&content, nil, &result.content, 0)
        return result
    }
    
    /// Converts the string to a <a href="https://en.wikipedia.org/wiki/Wide_character">wide character</a> (`wchar_t`, UTF-16 on Windows, UTF-32 on other platforms) encoded ``PackedByteArray``. This is the inverse of ``PackedByteArray/getStringFromWchar()``.
    public final func toWcharBuffer() -> PackedByteArray {
        let result: PackedByteArray = PackedByteArray()
        GodotInterfaceForString.method_to_wchar_buffer(&content, nil, &result.content, 0)
        return result
    }
    
    /// Converts the given `number` to a string representation, in scientific notation.
    /// 
    /// > Note: In C#, this method is not implemented. To achieve similar results, see C#'s <a href="https://learn.microsoft.com/en-us/dotnet/standard/base-types/standard-numeric-format-strings">Standard numeric format strings</a>
    /// 
    public static func numScientific(number: Double) -> GString {
        let result: GString = GString()
        let number = Double(number)
        withUnsafePointer(to: number) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_num_scientific(nil, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Converts a float to a string representation of a decimal number, with the number of decimal places specified in `decimals`.
    /// 
    /// If `decimals` is `-1` as by default, the string representation may only have up to 14 significant digits, with digits before the decimal point having priority over digits after.
    /// 
    /// Trailing zeros are not included in the string. The last digit is rounded, not truncated.
    /// 
    public static func num(number: Double, decimals: Int64 = -1) -> GString {
        let result: GString = GString()
        let number = Double(number)
        withUnsafePointer(to: number) { pArg0 in
            withUnsafePointer(to: decimals) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForString.method_num(nil, pArgs, &result.content, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Converts the given `number` to a string representation, with the given `base`.
    /// 
    /// By default, `base` is set to decimal (`10`). Other common bases in programming include binary (`2`), <a href="https://en.wikipedia.org/wiki/Octal">octal</a> (`8`), hexadecimal (`16`).
    /// 
    /// If `capitalizeHex` is `true`, digits higher than 9 are represented in uppercase.
    /// 
    public static func numInt64(number: Int64, base: Int64 = 10, capitalizeHex: Bool = false) -> GString {
        let result: GString = GString()
        withUnsafePointer(to: number) { pArg0 in
            withUnsafePointer(to: base) { pArg1 in
                withUnsafePointer(to: capitalizeHex) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            GodotInterfaceForString.method_num_int64(nil, pArgs, &result.content, 3)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Converts the given unsigned integer to a string representation, with the given `base`.
    /// 
    /// By default, `base` is set to decimal (`10`). Other common bases in programming include binary (`2`), <a href="https://en.wikipedia.org/wiki/Octal">octal</a> (`8`), hexadecimal (`16`).
    /// 
    /// If `capitalizeHex` is `true`, digits higher than 9 are represented in uppercase.
    /// 
    public static func numUint64(number: Int64, base: Int64 = 10, capitalizeHex: Bool = false) -> GString {
        let result: GString = GString()
        withUnsafePointer(to: number) { pArg0 in
            withUnsafePointer(to: base) { pArg1 in
                withUnsafePointer(to: capitalizeHex) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            GodotInterfaceForString.method_num_uint64(nil, pArgs, &result.content, 3)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a single Unicode character from the decimal `char`. You may use <a href="https://unicodelookup.com/">unicodelookup.com</a> or <a href="https://www.unicode.org/charts/">unicode.org</a> as points of reference.
    /// 
    public static func chr(char: Int64) -> GString {
        let result: GString = GString()
        withUnsafePointer(to: char) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_chr(nil, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Converts `size` which represents a number of bytes into a human-readable form.
    /// 
    /// The result is in <a href="https://en.wikipedia.org/wiki/Binary_prefix#IEC_prefixes">IEC prefix format</a>, which may end in either `"B"`, `"KiB"`, `"MiB"`, `"GiB"`, `"TiB"`, `"PiB"`, or `"EiB"`.
    /// 
    public static func humanizeSize(_ size: Int64) -> GString {
        let result: GString = GString()
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForString.method_humanize_size(nil, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: Bool) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForString.operator_4(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: Int64) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForString.operator_5(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: Double) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            let rhs = Double(rhs)
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForString.operator_6(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if both strings contain the same sequence of characters.
    public static func ==(lhs: GString, rhs: GString) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_7(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if both strings do not contain the same sequence of characters.
    public static func !=(lhs: GString, rhs: GString) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_8(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the left ``String`` comes before `right` in <a href="https://en.wikipedia.org/wiki/List_of_Unicode_characters">Unicode order</a>, which roughly matches the alphabetical order. Useful for sorting.
    public static func <(lhs: GString, rhs: GString) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_9(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the left ``String`` comes before `right` in <a href="https://en.wikipedia.org/wiki/List_of_Unicode_characters">Unicode order</a>, which roughly matches the alphabetical order, or if both are equal.
    public static func <=(lhs: GString, rhs: GString) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_10(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the left ``String`` comes after `right` in <a href="https://en.wikipedia.org/wiki/List_of_Unicode_characters">Unicode order</a>, which roughly matches the alphabetical order. Useful for sorting.
    public static func >(lhs: GString, rhs: GString) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_11(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the left ``String`` comes after `right` in <a href="https://en.wikipedia.org/wiki/List_of_Unicode_characters">Unicode order</a>, which roughly matches the alphabetical order, or if both are equal.
    public static func >=(lhs: GString, rhs: GString) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_12(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Appends `right` at the end of this ``String``, also known as a string concatenation.
    public static func +(lhs: GString, rhs: GString) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_13(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: GString) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_14(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: Vector2) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForString.operator_16(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: Vector2i) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForString.operator_17(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: Rect2) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForString.operator_18(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: Rect2i) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForString.operator_19(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: Vector3) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForString.operator_20(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: Vector3i) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForString.operator_21(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: Transform2D) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForString.operator_22(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: Vector4) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForString.operator_23(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: Vector4i) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForString.operator_24(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: Plane) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForString.operator_25(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: Quaternion) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForString.operator_26(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: AABB) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForString.operator_27(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: Basis) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForString.operator_28(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: Transform3D) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForString.operator_29(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: Projection) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForString.operator_30(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: Color) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForString.operator_31(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if this ``String`` is equivalent to the given ``StringName``.
    public static func ==(lhs: GString, rhs: StringName) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_32(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if this ``String`` is not equivalent to the given ``StringName``.
    public static func !=(lhs: GString, rhs: StringName) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_33(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Appends `right` at the end of this ``String``, returning a ``String``. This is also known as a string concatenation.
    public static func +(lhs: GString, rhs: StringName) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_34(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: StringName) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_35(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: NodePath) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_37(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: Object) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.handle) { pArg1 in
                GodotInterfaceForString.operator_38(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: Callable) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_40(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: Signal) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_41(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: VariantDictionary) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_42(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: VariantArray) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_44(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: PackedByteArray) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_46(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: PackedInt32Array) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_47(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: PackedInt64Array) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_48(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: PackedFloat32Array) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_49(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: PackedFloat64Array) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_50(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: PackedStringArray) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_51(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: PackedVector2Array) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_53(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: PackedVector3Array) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_54(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: PackedColorArray) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_55(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public static func %(lhs: GString, rhs: PackedVector4Array) -> GString  {
        let result: GString = GString()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForString.operator_56(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(hash())
    }
    /// Wrap ``GString`` into a ``Variant``
    @inline(__always)
    @inlinable
    public func toVariant() -> Variant {
        Variant(self)
    }
    
    /// Wrap ``GString`` into a ``Variant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toVariant() -> Variant? {
        Variant(self)
    }
    
    /// Wrap ``GString`` into a ``FastVariant``
    @inline(__always)
    @inlinable
    public func toFastVariant() -> FastVariant {
        FastVariant(self)
    }
    
    /// Wrap ``GString`` into a ``FastVariant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toFastVariant() -> FastVariant? {
        FastVariant(self)
    }
    
    /// Extract ``GString`` from a ``Variant``. Throws `VariantConversionError` if it's not possible.
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
    
    /// Initialze ``GString`` from ``Variant``. Fails if `variant` doesn't contain ``GString``
    @inline(__always)                                
    public convenience init?(_ variant: Variant) {
        guard Self._variantType == variant.gtype else { return nil }
        var content = GString.zero
        withUnsafeMutablePointer(to: &content) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForString.selfFromVariant)                        
        }
        self.init(takingOver: content)
    }
    
    /// Initialze ``GString`` from ``Variant``. Fails if `variant` doesn't contain ``GString`` or is `nil`
    @inline(__always)
    @inlinable
    public convenience init?(_ variant: Variant?) {
        guard let variant else { return nil }
        self.init(variant)
    }
    
    /// Initialze ``GString`` from ``FastVariant``. Fails if `variant` doesn't contain ``GString``
    @inline(__always)                                
    public convenience init?(_ variant: borrowing FastVariant) {
        guard Self._variantType == variant.gtype else { return nil }
        var content = GString.zero
        withUnsafeMutablePointer(to: &content) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForString.selfFromVariant)                        
        }
        self.init(takingOver: content)
    }
    
    /// Initialze ``GString`` from ``FastVariant``. Fails if `variant` doesn't contain ``GString`` or is `nil`
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
    /// Internal API. For indicating that Godot `Array` of ``GString`` has type `Array[String]`
    @inline(__always)
    @inlinable
    public static var _variantType: Variant.GType {
        .string 
    }
}

public extension Variant {
    /// Initialize ``Variant`` by wrapping ``GString?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    convenience init?(_ from: GString?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``Variant`` by wrapping ``GString``
    @inline(__always)
    convenience init(_ from: GString) {
        self.init(payload: from.content, constructor: GodotInterfaceForString.variantFromSelf)
    }
    
}

public extension FastVariant {
    /// Initialize ``FastVariant`` by wrapping ``GString?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    init?(_ from: GString?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``FastVariant`` by wrapping ``GString``
    @inline(__always)
    init(_ from: GString) {
        self.init(payload: from.content, constructor: GodotInterfaceForString.variantFromSelf)
    }
    
}

/// Static storage for keeping pointers to Godot implementation wrapped by GString
enum GodotInterfaceForString {
    // MARK: - Destructor
    static let destructor: GDExtensionPtrDestructor = {
        return gi.variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_STRING)!
    }()
    
    // MARK: - Constructors
    static let constructor0: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_STRING, 0)!
    }()
    
    static let constructor1: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_STRING, 1)!
    }()
    
    static let constructor2: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_STRING, 2)!
    }()
    
    static let constructor3: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_STRING, 3)!
    }()
    
    // MARK: - Methods
    static let method_casecmp_to: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("casecmp_to")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2920860731)!
    }()
    
    static let method_nocasecmp_to: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("nocasecmp_to")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2920860731)!
    }()
    
    static let method_naturalcasecmp_to: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("naturalcasecmp_to")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2920860731)!
    }()
    
    static let method_naturalnocasecmp_to: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("naturalnocasecmp_to")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2920860731)!
    }()
    
    static let method_filecasecmp_to: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("filecasecmp_to")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2920860731)!
    }()
    
    static let method_filenocasecmp_to: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("filenocasecmp_to")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2920860731)!
    }()
    
    static let method_length: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("length")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3173160232)!
    }()
    
    static let method_substr: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("substr")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 787537301)!
    }()
    
    static let method_get_slice: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_slice")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3535100402)!
    }()
    
    static let method_get_slicec: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_slicec")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 787537301)!
    }()
    
    static let method_get_slice_count: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_slice_count")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2920860731)!
    }()
    
    static let method_find: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("find")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 1760645412)!
    }()
    
    static let method_findn: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("findn")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 1760645412)!
    }()
    
    static let method_count: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("count")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2343087891)!
    }()
    
    static let method_countn: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("countn")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2343087891)!
    }()
    
    static let method_rfind: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("rfind")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 1760645412)!
    }()
    
    static let method_rfindn: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("rfindn")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 1760645412)!
    }()
    
    static let method_match: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("match")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2566493496)!
    }()
    
    static let method_matchn: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("matchn")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2566493496)!
    }()
    
    static let method_begins_with: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("begins_with")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2566493496)!
    }()
    
    static let method_ends_with: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("ends_with")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2566493496)!
    }()
    
    static let method_is_subsequence_of: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_subsequence_of")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2566493496)!
    }()
    
    static let method_is_subsequence_ofn: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_subsequence_ofn")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2566493496)!
    }()
    
    static let method_bigrams: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("bigrams")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 747180633)!
    }()
    
    static let method_similarity: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("similarity")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2697460964)!
    }()
    
    static let method_format: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("format")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3212199029)!
    }()
    
    static let method_replace: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("replace")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 1340436205)!
    }()
    
    static let method_replacen: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("replacen")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 1340436205)!
    }()
    
    static let method_reverse: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("reverse")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3942272618)!
    }()
    
    static let method_insert: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("insert")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 248737229)!
    }()
    
    static let method_erase: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("erase")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 787537301)!
    }()
    
    static let method_capitalize: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("capitalize")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3942272618)!
    }()
    
    static let method_to_camel_case: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("to_camel_case")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3942272618)!
    }()
    
    static let method_to_pascal_case: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("to_pascal_case")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3942272618)!
    }()
    
    static let method_to_snake_case: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("to_snake_case")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3942272618)!
    }()
    
    static let method_split: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("split")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 1252735785)!
    }()
    
    static let method_rsplit: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("rsplit")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 1252735785)!
    }()
    
    static let method_split_floats: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("split_floats")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2092079095)!
    }()
    
    static let method_join: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("join")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3595973238)!
    }()
    
    static let method_to_upper: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("to_upper")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3942272618)!
    }()
    
    static let method_to_lower: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("to_lower")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3942272618)!
    }()
    
    static let method_left: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("left")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2162347432)!
    }()
    
    static let method_right: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("right")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2162347432)!
    }()
    
    static let method_strip_edges: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("strip_edges")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 907855311)!
    }()
    
    static let method_strip_escapes: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("strip_escapes")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3942272618)!
    }()
    
    static let method_lstrip: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("lstrip")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3134094431)!
    }()
    
    static let method_rstrip: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("rstrip")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3134094431)!
    }()
    
    static let method_get_extension: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_extension")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3942272618)!
    }()
    
    static let method_get_basename: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_basename")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3942272618)!
    }()
    
    static let method_path_join: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("path_join")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3134094431)!
    }()
    
    static let method_unicode_at: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("unicode_at")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 4103005248)!
    }()
    
    static let method_indent: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("indent")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3134094431)!
    }()
    
    static let method_dedent: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("dedent")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3942272618)!
    }()
    
    static let method_hash: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("hash")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3173160232)!
    }()
    
    static let method_md5_text: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("md5_text")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3942272618)!
    }()
    
    static let method_sha1_text: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("sha1_text")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3942272618)!
    }()
    
    static let method_sha256_text: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("sha256_text")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3942272618)!
    }()
    
    static let method_md5_buffer: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("md5_buffer")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 247621236)!
    }()
    
    static let method_sha1_buffer: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("sha1_buffer")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 247621236)!
    }()
    
    static let method_sha256_buffer: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("sha256_buffer")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 247621236)!
    }()
    
    static let method_is_empty: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_empty")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3918633141)!
    }()
    
    static let method_contains: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("contains")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2566493496)!
    }()
    
    static let method_containsn: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("containsn")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2566493496)!
    }()
    
    static let method_is_absolute_path: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_absolute_path")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3918633141)!
    }()
    
    static let method_is_relative_path: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_relative_path")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3918633141)!
    }()
    
    static let method_simplify_path: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("simplify_path")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3942272618)!
    }()
    
    static let method_get_base_dir: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_base_dir")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3942272618)!
    }()
    
    static let method_get_file: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_file")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3942272618)!
    }()
    
    static let method_xml_escape: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("xml_escape")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3429816538)!
    }()
    
    static let method_xml_unescape: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("xml_unescape")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3942272618)!
    }()
    
    static let method_uri_encode: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("uri_encode")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3942272618)!
    }()
    
    static let method_uri_decode: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("uri_decode")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3942272618)!
    }()
    
    static let method_c_escape: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("c_escape")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3942272618)!
    }()
    
    static let method_c_unescape: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("c_unescape")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3942272618)!
    }()
    
    static let method_json_escape: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("json_escape")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3942272618)!
    }()
    
    static let method_validate_node_name: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("validate_node_name")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3942272618)!
    }()
    
    static let method_validate_filename: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("validate_filename")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3942272618)!
    }()
    
    static let method_is_valid_ascii_identifier: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_valid_ascii_identifier")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3918633141)!
    }()
    
    static let method_is_valid_unicode_identifier: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_valid_unicode_identifier")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3918633141)!
    }()
    
    static let method_is_valid_identifier: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_valid_identifier")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3918633141)!
    }()
    
    static let method_is_valid_int: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_valid_int")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3918633141)!
    }()
    
    static let method_is_valid_float: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_valid_float")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3918633141)!
    }()
    
    static let method_is_valid_hex_number: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_valid_hex_number")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 593672999)!
    }()
    
    static let method_is_valid_html_color: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_valid_html_color")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3918633141)!
    }()
    
    static let method_is_valid_ip_address: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_valid_ip_address")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3918633141)!
    }()
    
    static let method_is_valid_filename: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_valid_filename")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3918633141)!
    }()
    
    static let method_to_int: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("to_int")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3173160232)!
    }()
    
    static let method_to_float: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("to_float")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 466405837)!
    }()
    
    static let method_hex_to_int: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("hex_to_int")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3173160232)!
    }()
    
    static let method_bin_to_int: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("bin_to_int")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3173160232)!
    }()
    
    static let method_lpad: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("lpad")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 248737229)!
    }()
    
    static let method_rpad: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("rpad")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 248737229)!
    }()
    
    static let method_pad_decimals: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("pad_decimals")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2162347432)!
    }()
    
    static let method_pad_zeros: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("pad_zeros")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2162347432)!
    }()
    
    static let method_trim_prefix: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("trim_prefix")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3134094431)!
    }()
    
    static let method_trim_suffix: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("trim_suffix")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 3134094431)!
    }()
    
    static let method_to_ascii_buffer: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("to_ascii_buffer")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 247621236)!
    }()
    
    static let method_to_utf8_buffer: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("to_utf8_buffer")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 247621236)!
    }()
    
    static let method_to_utf16_buffer: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("to_utf16_buffer")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 247621236)!
    }()
    
    static let method_to_utf32_buffer: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("to_utf32_buffer")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 247621236)!
    }()
    
    static let method_hex_decode: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("hex_decode")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 247621236)!
    }()
    
    static let method_to_wchar_buffer: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("to_wchar_buffer")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 247621236)!
    }()
    
    static let method_num_scientific: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("num_scientific")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2710373411)!
    }()
    
    static let method_num: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("num")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 1555901022)!
    }()
    
    static let method_num_int64: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("num_int64")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2111271071)!
    }()
    
    static let method_num_uint64: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("num_uint64")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 2111271071)!
    }()
    
    static let method_chr: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("chr")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 897497541)!
    }()
    
    static let method_humanize_size: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("humanize_size")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING, &name.content, 897497541)!
    }()
    
    // MARK: - Operators
    static let operator_4: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_BOOL)!
    }()
    
    static let operator_5: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    static let operator_6: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    
    static let operator_7: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING)!
    }()
    
    static let operator_8: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING)!
    }()
    
    static let operator_9: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING)!
    }()
    
    static let operator_10: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS_EQUAL, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING)!
    }()
    
    static let operator_11: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING)!
    }()
    
    static let operator_12: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER_EQUAL, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING)!
    }()
    
    static let operator_13: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING)!
    }()
    
    static let operator_14: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING)!
    }()
    
    static let operator_16: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_VECTOR2)!
    }()
    
    static let operator_17: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    
    static let operator_18: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_RECT2)!
    }()
    
    static let operator_19: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_RECT2I)!
    }()
    
    static let operator_20: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    
    static let operator_21: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_VECTOR3I)!
    }()
    
    static let operator_22: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)!
    }()
    
    static let operator_23: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_VECTOR4)!
    }()
    
    static let operator_24: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    
    static let operator_25: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_PLANE)!
    }()
    
    static let operator_26: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_QUATERNION)!
    }()
    
    static let operator_27: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_AABB)!
    }()
    
    static let operator_28: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_BASIS)!
    }()
    
    static let operator_29: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)!
    }()
    
    static let operator_30: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_PROJECTION)!
    }()
    
    static let operator_31: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_COLOR)!
    }()
    
    static let operator_32: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING_NAME)!
    }()
    
    static let operator_33: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING_NAME)!
    }()
    
    static let operator_34: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING_NAME)!
    }()
    
    static let operator_35: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING_NAME)!
    }()
    
    static let operator_37: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_NODE_PATH)!
    }()
    
    static let operator_38: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_OBJECT)!
    }()
    
    static let operator_40: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_CALLABLE)!
    }()
    
    static let operator_41: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_SIGNAL)!
    }()
    
    static let operator_42: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    
    static let operator_44: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    
    static let operator_46: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
    }()
    
    static let operator_47: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY)!
    }()
    
    static let operator_48: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY)!
    }()
    
    static let operator_49: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY)!
    }()
    
    static let operator_50: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY)!
    }()
    
    static let operator_51: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)!
    }()
    
    static let operator_53: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY)!
    }()
    
    static let operator_54: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)!
    }()
    
    static let operator_55: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY)!
    }()
    
    static let operator_56: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR4_ARRAY)!
    }()
    
    // MARK: - Variant conversion
    static let variantFromSelf: GDExtensionVariantFromTypeConstructorFunc = {
        gi.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_STRING)!
    }()
    
    static let selfFromVariant: GDExtensionTypeFromVariantConstructorFunc = {
        gi.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_STRING)!
    }()
    
    
}

