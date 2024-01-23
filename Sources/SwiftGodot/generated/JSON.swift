// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Helper class for creating and parsing JSON data.
/// 
/// The ``JSON`` enables all data types to be converted to and from a JSON string. This useful for serializing data to save to a file or send over the network.
/// 
/// ``stringify(data:indent:sortKeys:fullPrecision:)`` is used to convert any data type into a JSON string.
/// 
/// ``parse(jsonText:keepText:)`` is used to convert any existing JSON data into a ``Variant`` that can be used within Godot. If successfully parsed, use ``data`` to retrieve the ``Variant``, and use `typeof` to check if the Variant's type is what you expect. JSON Objects are converted into a ``GDictionary``, but JSON data can be used to store ``GArray``s, numbers, ``String``s and even just a boolean.
/// 
/// **Example**
/// 
/// Alternatively, you can parse string using the static ``parseString(jsonString:)`` method, but it doesn't allow to handle errors.
/// 
/// > Note: Both parse methods do not fully comply with the JSON specification:
/// 
/// - Trailing commas in arrays or objects are ignored, instead of causing a parser error.
/// 
/// - New line and tab characters are accepted in string literals, and are treated like their corresponding escape sequences `\n` and `\t`.
/// 
/// - Numbers are parsed using ``String/toFloat()`` which is generally more lax than the JSON specification.
/// 
/// - Certain errors, such as invalid Unicode sequences, do not cause a parser error. Instead, the string is cleansed and an error is logged to the console.
/// 
open class JSON: Resource {
    override open class var godotClassName: StringName { "JSON" }
    
    /* Properties */
    
    /// Contains the parsed JSON data in ``Variant`` form.
    final public var data: Variant {
        get {
            return get_data ()
        }
        
        set {
            set_data (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_stringify: GDExtensionMethodBindPtr = {
        let methodName = StringName ("stringify")
        return withUnsafePointer (to: &JSON.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 462733549)!
            }
            
        }
        
    }()
    
    /// Converts a ``Variant`` var to JSON text and returns the result. Useful for serializing data to store or send over the network.
    /// 
    /// > Note: The JSON specification does not define integer or float types, but only a _number_ type. Therefore, converting a Variant to JSON text will convert all numerical values to float types.
    /// 
    /// > Note: If `fullPrecision` is `true`, when stringifying floats, the unreliable digits are stringified in addition to the reliable digits to guarantee exact decoding.
    /// 
    /// The `indent` parameter controls if and how something is indented, the string used for this parameter will be used where there should be an indent in the output, even spaces like `"   "` will work. `\t` and `\n` can also be used for a tab indent, or to make a newline for each indent respectively.
    /// 
    /// **Example output:**
    /// 
    public static func stringify (data: Variant, indent: String = "", sortKeys: Bool = true, fullPrecision: Bool = false)-> String {
        let _result = GString ()
        #if true
        
        let gstr_indent = GString (indent)
        var copy_sort_keys = sortKeys
        var copy_full_precision = fullPrecision
        
        gi.object_method_bind_ptrcall_v (JSON.method_stringify, nil, &_result.content, &data.content, &gstr_indent.content, &copy_sort_keys, &copy_full_precision)
        return _result.description
        #else
        
        let gstr_indent = GString (indent)
        var copy_sort_keys = sortKeys
        var copy_full_precision = fullPrecision
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &data.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &gstr_indent.content) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &copy_sort_keys) { p2 in
                    _args.append (p2)
                    return withUnsafePointer (to: &copy_full_precision) { p3 in
                        _args.append (p3)
        
                        gi.object_method_bind_ptrcall (JSON.method_stringify, nil, &_args, &_result.content)
                        return _result.description
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_parse_string: GDExtensionMethodBindPtr = {
        let methodName = StringName ("parse_string")
        return withUnsafePointer (to: &JSON.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 309047738)!
            }
            
        }
        
    }()
    
    /// Attempts to parse the `jsonString` provided and returns the parsed data. Returns `null` if parse failed.
    public static func parseString (jsonString: String)-> Variant {
        let _result: Variant = Variant ()
        #if true
        
        let gstr_json_string = GString (jsonString)
        
        gi.object_method_bind_ptrcall_v (JSON.method_parse_string, nil, &_result.content, &gstr_json_string.content)
        return _result
        #else
        
        let gstr_json_string = GString (jsonString)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_json_string.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (JSON.method_parse_string, nil, &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_parse: GDExtensionMethodBindPtr = {
        let methodName = StringName ("parse")
        return withUnsafePointer (to: &JSON.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 885841341)!
            }
            
        }
        
    }()
    
    /// Attempts to parse the `jsonText` provided.
    /// 
    /// Returns an ``GodotError``. If the parse was successful, it returns ``GodotError/ok`` and the result can be retrieved using ``data``. If unsuccessful, use ``getErrorLine()`` and ``getErrorMessage()`` for identifying the source of the failure.
    /// 
    /// Non-static variant of ``parseString(jsonString:)``, if you want custom error handling.
    /// 
    /// The optional `keepText` argument instructs the parser to keep a copy of the original text. This text can be obtained later by using the ``getParsedText()`` function and is used when saving the resource (instead of generating new text from ``data``).
    /// 
    public final func parse (jsonText: String, keepText: Bool = false)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        let gstr_json_text = GString (jsonText)
        var copy_keep_text = keepText
        
        gi.object_method_bind_ptrcall_v (JSON.method_parse, UnsafeMutableRawPointer (mutating: handle), &_result, &gstr_json_text.content, &copy_keep_text)
        return GodotError (rawValue: _result)!
        #else
        
        let gstr_json_text = GString (jsonText)
        var copy_keep_text = keepText
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_json_text.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_keep_text) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (JSON.method_parse, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return GodotError (rawValue: _result)!
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_data: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_data")
        return withUnsafePointer (to: &JSON.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1214101251)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_data ()-> Variant {
        let _result: Variant = Variant ()
        gi.object_method_bind_ptrcall (JSON.method_get_data, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_data: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_data")
        return withUnsafePointer (to: &JSON.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1114965689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_data (_ data: Variant) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (JSON.method_set_data, UnsafeMutableRawPointer (mutating: handle), nil, &data.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &data.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (JSON.method_set_data, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_parsed_text: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_parsed_text")
        return withUnsafePointer (to: &JSON.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Return the text parsed by ``parse(jsonText:keepText:)`` as long as the function is instructed to keep it.
    public final func getParsedText ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (JSON.method_get_parsed_text, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_get_error_line: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_error_line")
        return withUnsafePointer (to: &JSON.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns `0` if the last call to ``parse(jsonText:keepText:)`` was successful, or the line number where the parse failed.
    public final func getErrorLine ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (JSON.method_get_error_line, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_error_message: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_error_message")
        return withUnsafePointer (to: &JSON.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns an empty string if the last call to ``parse(jsonText:keepText:)`` was successful, or the error message if it failed.
    public final func getErrorMessage ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (JSON.method_get_error_message, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
}

