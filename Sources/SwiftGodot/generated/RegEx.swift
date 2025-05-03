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


/// Class for searching text for patterns using regular expressions.
/// 
/// A regular expression (or regex) is a compact language that can be used to recognize strings that follow a specific pattern, such as URLs, email addresses, complete sentences, etc. For example, a regex of `ab[0-9]` would find any string that is `ab` followed by any number from `0` to `9`. For a more in-depth look, you can easily find various tutorials and detailed explanations on the Internet.
/// 
/// To begin, the RegEx object needs to be compiled with the search pattern using ``compile(pattern:showError:)`` before it can be used.
/// 
/// The search pattern must be escaped first for GDScript before it is escaped for the expression. For example, `compile("\\d+")` would be read by RegEx as `\d+`. Similarly, `compile("\"(?:\\\\.|[^\"])*\"")` would be read as `"(?:\\.|[^"])*"`. In GDScript, you can also use raw string literals (r-strings). For example, `compile(r'"(?:\\.|[^"])*"')` would be read the same.
/// 
/// Using ``search(subject:offset:end:)``, you can find the pattern within the given text. If a pattern is found, ``RegExMatch`` is returned and you can retrieve details of the results using methods such as ``RegExMatch/getString(name:)`` and ``RegExMatch/getStart(name:)``.
/// 
/// The results of capturing groups `()` can be retrieved by passing the group number to the various methods in ``RegExMatch``. Group 0 is the default and will always refer to the entire pattern. In the above example, calling `result.get_string(1)` would give you `0123`.
/// 
/// This version of RegEx also supports named capturing groups, and the names can be used to retrieve the results. If two or more groups have the same name, the name would only refer to the first one with a match.
/// 
/// If you need to process multiple results, ``searchAll(subject:offset:end:)`` generates a list of all non-overlapping results. This can be combined with a `for` loop for convenience.
/// 
/// **Example:** Split a string using a RegEx:
/// 
/// > Note: Godot's regex implementation is based on the <a href="https://www.pcre.org/">PCRE2</a> library. You can view the full pattern reference <a href="https://www.pcre.org/current/doc/html/pcre2pattern.html">here</a>.
/// 
/// **Tip:** You can use <a href="https://regexr.com/">Regexr</a> to test regular expressions online.
/// 
open class RegEx: RefCounted {
    private static var className = StringName("RegEx")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_create_from_string: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_from_string")
        return withUnsafePointer(to: &RegEx.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4249111514)!
            }
            
        }
        
    }()
    
    /// Creates and compiles a new ``RegEx`` object. See also ``compile(pattern:showError:)``.
    public static func createFromString(pattern: String, showError: Bool = true) -> RegEx? {
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        let pattern = GString(pattern)
        withUnsafePointer(to: pattern.content) { pArg0 in
            withUnsafePointer(to: showError) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_create_from_string, nil, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_clear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear")
        return withUnsafePointer(to: &RegEx.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// This method resets the state of the object, as if it was freshly created. Namely, it unassigns the regular expression of this object.
    public final func clear() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(RegEx.method_clear, handle, nil, nil)
        
    }
    
    fileprivate static let method_compile: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("compile")
        return withUnsafePointer(to: &RegEx.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3565188097)!
            }
            
        }
        
    }()
    
    /// Compiles and assign the search pattern to use. Returns ``GodotError/ok`` if the compilation is successful. If compilation fails, returns ``GodotError/failed`` and when `showError` is `true`, details are printed to standard output.
    public final func compile(pattern: String, showError: Bool = true) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let pattern = GString(pattern)
        withUnsafePointer(to: pattern.content) { pArg0 in
            withUnsafePointer(to: showError) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RegEx.method_compile, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_search: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("search")
        return withUnsafePointer(to: &RegEx.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3365977994)!
            }
            
        }
        
    }()
    
    /// Searches the text for the compiled pattern. Returns a ``RegExMatch`` container of the first matching result if found, otherwise `null`.
    /// 
    /// The region to search within can be specified with `offset` and `end`. This is useful when searching for another match in the same `subject` by calling this method again after a previous success. Note that setting these parameters differs from passing over a shortened string. For example, the start anchor `^` is not affected by `offset`, and the character before `offset` will be checked for the word boundary `\b`.
    /// 
    public final func search(subject: String, offset: Int32 = 0, end: Int32 = -1) -> RegExMatch? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        let subject = GString(subject)
        withUnsafePointer(to: subject.content) { pArg0 in
            withUnsafePointer(to: offset) { pArg1 in
                withUnsafePointer(to: end) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(RegEx.method_search, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_search_all: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("search_all")
        return withUnsafePointer(to: &RegEx.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 849021363)!
            }
            
        }
        
    }()
    
    /// Searches the text for the compiled pattern. Returns an array of ``RegExMatch`` containers for each non-overlapping result. If no results were found, an empty array is returned instead.
    /// 
    /// The region to search within can be specified with `offset` and `end`. This is useful when searching for another match in the same `subject` by calling this method again after a previous success. Note that setting these parameters differs from passing over a shortened string. For example, the start anchor `^` is not affected by `offset`, and the character before `offset` will be checked for the word boundary `\b`.
    /// 
    public final func searchAll(subject: String, offset: Int32 = 0, end: Int32 = -1) -> TypedArray<RegExMatch?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        let subject = GString(subject)
        withUnsafePointer(to: subject.content) { pArg0 in
            withUnsafePointer(to: offset) { pArg1 in
                withUnsafePointer(to: end) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(RegEx.method_search_all, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return TypedArray<RegExMatch?>(takingOver: _result)
    }
    
    fileprivate static let method_sub: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("sub")
        return withUnsafePointer(to: &RegEx.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 54019702)!
            }
            
        }
        
    }()
    
    /// Searches the text for the compiled pattern and replaces it with the specified string. Escapes and backreferences such as `$1` and `$name` are expanded and resolved. By default, only the first instance is replaced, but it can be changed for all instances (global replacement).
    /// 
    /// The region to search within can be specified with `offset` and `end`. This is useful when searching for another match in the same `subject` by calling this method again after a previous success. Note that setting these parameters differs from passing over a shortened string. For example, the start anchor `^` is not affected by `offset`, and the character before `offset` will be checked for the word boundary `\b`.
    /// 
    public final func sub(subject: String, replacement: String, all: Bool = false, offset: Int32 = 0, end: Int32 = -1) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        let subject = GString(subject)
        withUnsafePointer(to: subject.content) { pArg0 in
            let replacement = GString(replacement)
            withUnsafePointer(to: replacement.content) { pArg1 in
                withUnsafePointer(to: all) { pArg2 in
                    withUnsafePointer(to: offset) { pArg3 in
                        withUnsafePointer(to: end) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(RegEx.method_sub, handle, pArgs, &_result.content)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_is_valid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_valid")
        return withUnsafePointer(to: &RegEx.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns whether this object has a valid search pattern assigned.
    public final func isValid() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RegEx.method_is_valid, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_pattern: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_pattern")
        return withUnsafePointer(to: &RegEx.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the original search pattern that was compiled.
    public final func getPattern() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(RegEx.method_get_pattern, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_group_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_group_count")
        return withUnsafePointer(to: &RegEx.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of capturing groups in compiled pattern.
    public final func getGroupCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(RegEx.method_get_group_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_names: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_names")
        return withUnsafePointer(to: &RegEx.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns an array of names of named capturing groups in the compiled pattern. They are ordered by appearance.
    public final func getNames() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(RegEx.method_get_names, handle, nil, &_result.content)
        return _result
    }
    
}

