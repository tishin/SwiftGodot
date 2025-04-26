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


/// Helper class for creating and parsing JSON data.
/// 
/// The ``JSON`` class enables all data types to be converted to and from a JSON string. This is useful for serializing data, e.g. to save to a file or send over the network.
/// 
/// ``stringify(data:indent:sortKeys:fullPrecision:)`` is used to convert any data type into a JSON string.
/// 
/// ``parse(jsonText:keepText:)`` is used to convert any existing JSON data into a ``Variant`` that can be used within Godot. If successfully parsed, use ``data`` to retrieve the ``Variant``, and use ``@GlobalScope.typeof`` to check if the Variant's type is what you expect. JSON Objects are converted into a ``VariantDictionary``, but JSON data can be used to store ``VariantArray``s, numbers, ``String``s and even just a boolean.
/// 
/// Alternatively, you can parse strings using the static ``parseString(jsonString:)`` method, but it doesn't handle errors.
/// 
/// > Note: Both parse methods do not fully comply with the JSON specification:
/// 
/// - Trailing commas in arrays or objects are ignored, instead of causing a parser error.
/// 
/// - New line and tab characters are accepted in string literals, and are treated like their corresponding escape sequences `\n` and `\t`.
/// 
/// - Numbers are parsed using ``GString/toFloat()`` which is generally more lax than the JSON specification.
/// 
/// - Certain errors, such as invalid Unicode sequences, do not cause a parser error. Instead, the string is cleaned up and an error is logged to the console.
/// 
open class JSON: Resource {
    private static var className = StringName("JSON")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Contains the parsed JSON data in ``Variant`` form.
    final public var data: Variant? {
        get {
            return get_data ()
        }
        
        set {
            set_data (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_stringify: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("stringify")
        return withUnsafePointer(to: &JSON.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 462733549)!
            }
            
        }
        
    }()
    
    /// Converts a ``Variant`` var to JSON text and returns the result. Useful for serializing data to store or send over the network.
    /// 
    /// > Note: The JSON specification does not define integer or float types, but only a _number_ type. Therefore, converting a Variant to JSON text will convert all numerical values to float types.
    /// 
    /// > Note: If `fullPrecision` is `true`, when stringifying floats, the unreliable digits are stringified in addition to the reliable digits to guarantee exact decoding.
    /// 
    /// The `indent` parameter controls if and how something is indented; its contents will be used where there should be an indent in the output. Even spaces like `"   "` will work. `\t` and `\n` can also be used for a tab indent, or to make a newline for each indent respectively.
    /// 
    /// **Example output:**
    /// 
    public static func stringify(data: Variant?, indent: String = "", sortKeys: Bool = true, fullPrecision: Bool = false) -> String {
        let _result = GString ()
        withUnsafePointer(to: data.content) { pArg0 in
            let indent = GString(indent)
            withUnsafePointer(to: indent.content) { pArg1 in
                withUnsafePointer(to: sortKeys) { pArg2 in
                    withUnsafePointer(to: fullPrecision) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(method_stringify, nil, pArgs, &_result.content)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_parse_string: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("parse_string")
        return withUnsafePointer(to: &JSON.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 309047738)!
            }
            
        }
        
    }()
    
    /// Attempts to parse the `jsonString` provided and returns the parsed data. Returns `null` if parse failed.
    public static func parseString(jsonString: String) -> Variant? {
        var _result: Variant.ContentType = Variant.zero
        let jsonString = GString(jsonString)
        withUnsafePointer(to: jsonString.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_parse_string, nil, pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_parse: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("parse")
        return withUnsafePointer(to: &JSON.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 885841341)!
            }
            
        }
        
    }()
    
    /// Attempts to parse the `jsonText` provided.
    /// 
    /// Returns an ``GodotError``. If the parse was successful, it returns ``GodotError/ok`` and the result can be retrieved using ``data``. If unsuccessful, use ``getErrorLine()`` and ``getErrorMessage()`` to identify the source of the failure.
    /// 
    /// Non-static variant of ``parseString(jsonString:)``, if you want custom error handling.
    /// 
    /// The optional `keepText` argument instructs the parser to keep a copy of the original text. This text can be obtained later by using the ``getParsedText()`` function and is used when saving the resource (instead of generating new text from ``data``).
    /// 
    public final func parse(jsonText: String, keepText: Bool = false) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let jsonText = GString(jsonText)
        withUnsafePointer(to: jsonText.content) { pArg0 in
            withUnsafePointer(to: keepText) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(JSON.method_parse, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_get_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_data")
        return withUnsafePointer(to: &JSON.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1214101251)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_data() -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        gi.object_method_bind_ptrcall(JSON.method_get_data, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_set_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_data")
        return withUnsafePointer(to: &JSON.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1114965689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_data(_ data: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: data.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(JSON.method_set_data, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_parsed_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_parsed_text")
        return withUnsafePointer(to: &JSON.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Return the text parsed by ``parse(jsonText:keepText:)`` (requires passing `keep_text` to ``parse(jsonText:keepText:)``).
    public final func getParsedText() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(JSON.method_get_parsed_text, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_error_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_error_line")
        return withUnsafePointer(to: &JSON.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns `0` if the last call to ``parse(jsonText:keepText:)`` was successful, or the line number where the parse failed.
    public final func getErrorLine() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(JSON.method_get_error_line, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_error_message: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_error_message")
        return withUnsafePointer(to: &JSON.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns an empty string if the last call to ``parse(jsonText:keepText:)`` was successful, or the error message if it failed.
    public final func getErrorMessage() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(JSON.method_get_error_message, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_from_native: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("from_native")
        return withUnsafePointer(to: &JSON.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2963479484)!
            }
            
        }
        
    }()
    
    /// Converts a native engine type to a JSON-compliant value.
    /// 
    /// By default, objects are ignored for security reasons, unless `fullObjects` is `true`.
    /// 
    /// You can convert a native value to a JSON string like this:
    /// 
    public static func fromNative(variant: Variant?, fullObjects: Bool = false) -> Variant? {
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: variant.content) { pArg0 in
            withUnsafePointer(to: fullObjects) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_from_native, nil, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_to_native: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("to_native")
        return withUnsafePointer(to: &JSON.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2963479484)!
            }
            
        }
        
    }()
    
    /// Converts a JSON-compliant value that was created with ``fromNative(variant:fullObjects:)`` back to native engine types.
    /// 
    /// By default, objects are ignored for security reasons, unless `allowObjects` is `true`.
    /// 
    /// You can convert a JSON string back to a native value like this:
    /// 
    public static func toNative(json: Variant?, allowObjects: Bool = false) -> Variant? {
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: json.content) { pArg0 in
            withUnsafePointer(to: allowObjects) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_to_native, nil, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
}

