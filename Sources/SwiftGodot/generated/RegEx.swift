// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Class for searching text for patterns using regular expressions.
/// 
/// A regular expression (or regex) is a compact language that can be used to recognize strings that follow a specific pattern, such as URLs, email addresses, complete sentences, etc. For example, a regex of `ab[0-9]` would find any string that is `ab` followed by any number from `0` to `9`. For a more in-depth look, you can easily find various tutorials and detailed explanations on the Internet.
/// 
/// To begin, the RegEx object needs to be compiled with the search pattern using ``compile(pattern:)`` before it can be used.
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
/// **Example of splitting a string using a RegEx:**
/// 
/// > Note: Godot's regex implementation is based on the [url=https://www.pcre.org/]PCRE2[/url] library. You can view the full pattern reference [url=https://www.pcre.org/current/doc/html/pcre2pattern.html]here[/url].
/// 
/// **Tip:** You can use [url=https://regexr.com/]Regexr[/url] to test regular expressions online.
/// 
open class RegEx: RefCounted {
    override open class var godotClassName: StringName { "RegEx" }
    /* Methods */
    fileprivate static var method_create_from_string: GDExtensionMethodBindPtr = {
        let methodName = StringName ("create_from_string")
        return withUnsafePointer (to: &RegEx.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2150300909)!
            }
            
        }
        
    }()
    
    /// Creates and compiles a new ``RegEx`` object.
    public static func createFromString (pattern: String)-> RegEx? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if true
        
        let gstr_pattern = GString (pattern)
        
        gi.object_method_bind_ptrcall_v (RegEx.method_create_from_string, nil, &_result, &gstr_pattern.content)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        let gstr_pattern = GString (pattern)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_pattern.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RegEx.method_create_from_string, nil, &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_clear: GDExtensionMethodBindPtr = {
        let methodName = StringName ("clear")
        return withUnsafePointer (to: &RegEx.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// This method resets the state of the object, as if it was freshly created. Namely, it unassigns the regular expression of this object.
    public final func clear () {
        gi.object_method_bind_ptrcall (RegEx.method_clear, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_compile: GDExtensionMethodBindPtr = {
        let methodName = StringName ("compile")
        return withUnsafePointer (to: &RegEx.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Compiles and assign the search pattern to use. Returns ``GodotError/ok`` if the compilation is successful. If an error is encountered, details are printed to standard output and an error is returned.
    public final func compile (pattern: String)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        let gstr_pattern = GString (pattern)
        
        gi.object_method_bind_ptrcall_v (RegEx.method_compile, UnsafeMutableRawPointer (mutating: handle), &_result, &gstr_pattern.content)
        return GodotError (rawValue: _result)!
        #else
        
        let gstr_pattern = GString (pattern)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_pattern.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RegEx.method_compile, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return GodotError (rawValue: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_search: GDExtensionMethodBindPtr = {
        let methodName = StringName ("search")
        return withUnsafePointer (to: &RegEx.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3365977994)!
            }
            
        }
        
    }()
    
    /// Searches the text for the compiled pattern. Returns a ``RegExMatch`` container of the first matching result if found, otherwise `null`.
    /// 
    /// The region to search within can be specified with `offset` and `end`. This is useful when searching for another match in the same `subject` by calling this method again after a previous success. Note that setting these parameters differs from passing over a shortened string. For example, the start anchor `^` is not affected by `offset`, and the character before `offset` will be checked for the word boundary `\b`.
    /// 
    public final func search (subject: String, offset: Int32 = 0, end: Int32 = -1)-> RegExMatch? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if true
        
        let gstr_subject = GString (subject)
        var copy_offset: Int = Int (offset)
        var copy_end: Int = Int (end)
        
        gi.object_method_bind_ptrcall_v (RegEx.method_search, UnsafeMutableRawPointer (mutating: handle), &_result, &gstr_subject.content, &copy_offset, &copy_end)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        let gstr_subject = GString (subject)
        var copy_offset: Int = Int (offset)
        var copy_end: Int = Int (end)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_subject.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_offset) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &copy_end) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (RegEx.method_search, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                    guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_search_all: GDExtensionMethodBindPtr = {
        let methodName = StringName ("search_all")
        return withUnsafePointer (to: &RegEx.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 849021363)!
            }
            
        }
        
    }()
    
    /// Searches the text for the compiled pattern. Returns an array of ``RegExMatch`` containers for each non-overlapping result. If no results were found, an empty array is returned instead.
    /// 
    /// The region to search within can be specified with `offset` and `end`. This is useful when searching for another match in the same `subject` by calling this method again after a previous success. Note that setting these parameters differs from passing over a shortened string. For example, the start anchor `^` is not affected by `offset`, and the character before `offset` will be checked for the word boundary `\b`.
    /// 
    public final func searchAll (subject: String, offset: Int32 = 0, end: Int32 = -1)-> ObjectCollection<RegExMatch> {
        var _result: Int64 = 0
        #if true
        
        let gstr_subject = GString (subject)
        var copy_offset: Int = Int (offset)
        var copy_end: Int = Int (end)
        
        gi.object_method_bind_ptrcall_v (RegEx.method_search_all, UnsafeMutableRawPointer (mutating: handle), &_result, &gstr_subject.content, &copy_offset, &copy_end)
        return ObjectCollection<RegExMatch>(content: _result)
        #else
        
        let gstr_subject = GString (subject)
        var copy_offset: Int = Int (offset)
        var copy_end: Int = Int (end)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_subject.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_offset) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &copy_end) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (RegEx.method_search_all, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                    return ObjectCollection<RegExMatch>(content: _result)
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_sub: GDExtensionMethodBindPtr = {
        let methodName = StringName ("sub")
        return withUnsafePointer (to: &RegEx.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 54019702)!
            }
            
        }
        
    }()
    
    /// Searches the text for the compiled pattern and replaces it with the specified string. Escapes and backreferences such as `$1` and `$name` are expanded and resolved. By default, only the first instance is replaced, but it can be changed for all instances (global replacement).
    /// 
    /// The region to search within can be specified with `offset` and `end`. This is useful when searching for another match in the same `subject` by calling this method again after a previous success. Note that setting these parameters differs from passing over a shortened string. For example, the start anchor `^` is not affected by `offset`, and the character before `offset` will be checked for the word boundary `\b`.
    /// 
    public final func sub (subject: String, replacement: String, all: Bool = false, offset: Int32 = 0, end: Int32 = -1)-> String {
        let _result = GString ()
        #if true
        
        let gstr_subject = GString (subject)
        let gstr_replacement = GString (replacement)
        var copy_all = all
        var copy_offset: Int = Int (offset)
        var copy_end: Int = Int (end)
        
        gi.object_method_bind_ptrcall_v (RegEx.method_sub, UnsafeMutableRawPointer (mutating: handle), &_result.content, &gstr_subject.content, &gstr_replacement.content, &copy_all, &copy_offset, &copy_end)
        return _result.description
        #else
        
        let gstr_subject = GString (subject)
        let gstr_replacement = GString (replacement)
        var copy_all = all
        var copy_offset: Int = Int (offset)
        var copy_end: Int = Int (end)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_subject.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &gstr_replacement.content) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &copy_all) { p2 in
                    _args.append (p2)
                    return withUnsafePointer (to: &copy_offset) { p3 in
                        _args.append (p3)
                        return withUnsafePointer (to: &copy_end) { p4 in
                            _args.append (p4)
        
                            gi.object_method_bind_ptrcall (RegEx.method_sub, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
                            return _result.description
                        }
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_is_valid: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_valid")
        return withUnsafePointer (to: &RegEx.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns whether this object has a valid search pattern assigned.
    public final func isValid ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (RegEx.method_is_valid, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_pattern: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_pattern")
        return withUnsafePointer (to: &RegEx.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the original search pattern that was compiled.
    public final func getPattern ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (RegEx.method_get_pattern, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_get_group_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_group_count")
        return withUnsafePointer (to: &RegEx.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of capturing groups in compiled pattern.
    public final func getGroupCount ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (RegEx.method_get_group_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_names: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_names")
        return withUnsafePointer (to: &RegEx.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns an array of names of named capturing groups in the compiled pattern. They are ordered by appearance.
    public final func getNames ()-> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall (RegEx.method_get_names, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
}

