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


/// Plugin for adding custom parsers to extract strings that are to be translated from custom files (.csv, .json etc.).
/// 
/// ``EditorTranslationParserPlugin`` is invoked when a file is being parsed to extract strings that require translation. To define the parsing and string extraction logic, override the ``_parseFile(path:)`` method in script.
/// 
/// The return value should be an ``VariantArray`` of ``PackedStringArray``s, one for each extracted translatable string. Each entry should contain `[msgid, msgctxt, msgid_plural, comment]`, where all except `msgid` are optional. Empty strings will be ignored.
/// 
/// The extracted strings will be written into a POT file selected by user under "POT Generation" in "Localization" tab in "Project Settings" menu.
/// 
/// Below shows an example of a custom parser that extracts strings from a CSV file to write into a POT.
/// 
/// To add a translatable string associated with a context, plural, or comment:
/// 
/// > Note: If you override parsing logic for standard script types (GDScript, C#, etc.), it would be better to load the `path` argument using ``ResourceLoader/load(path:typeHint:cacheMode:)``. This is because built-in scripts are loaded as ``Resource`` type, not ``FileAccess`` type. For example:
/// 
/// To use ``EditorTranslationParserPlugin``, register it using the ``EditorPlugin/addTranslationParserPlugin(parser:)`` method first.
/// 
open class EditorTranslationParserPlugin: RefCounted {
    private static var className = StringName("EditorTranslationParserPlugin")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__parse_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_parse_file")
        return withUnsafePointer(to: &EditorTranslationParserPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1576865988)!
            }
            
        }
        
    }()
    
    /// Override this method to define a custom parsing logic to extract the translatable strings.
    @_documentation(visibility: public)
    open func _parseFile(path: String) -> TypedArray<PackedStringArray> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorTranslationParserPlugin.method__parse_file, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return TypedArray<PackedStringArray>(takingOver: _result)
    }
    
    fileprivate static let method__get_recognized_extensions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_recognized_extensions")
        return withUnsafePointer(to: &EditorTranslationParserPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Gets the list of file extensions to associate with this parser, e.g. `["csv"]`.
    @_documentation(visibility: public)
    open func _getRecognizedExtensions() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(EditorTranslationParserPlugin.method__get_recognized_extensions, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_recognized_extensions":
                return _EditorTranslationParserPlugin_proxy_get_recognized_extensions
            case "_parse_file":
                return _EditorTranslationParserPlugin_proxy_parse_file
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _EditorTranslationParserPlugin_proxy_get_recognized_extensions (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorTranslationParserPlugin else { return }
    let ret = swiftObject._getRecognizedExtensions ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _EditorTranslationParserPlugin_proxy_parse_file (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorTranslationParserPlugin else { return }
    let ret = swiftObject._parseFile (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::PackedStringArray
}

