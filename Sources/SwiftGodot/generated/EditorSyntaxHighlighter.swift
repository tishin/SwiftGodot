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


/// Base class for ``SyntaxHighlighter`` used by the ``ScriptEditor``.
/// 
/// Base class that all ``SyntaxHighlighter``s used by the ``ScriptEditor`` extend from.
/// 
/// Add a syntax highlighter to an individual script by calling ``ScriptEditorBase/addSyntaxHighlighter(_:)``. To apply to all scripts on open, call ``ScriptEditor/registerSyntaxHighlighter(_:)``.
/// 
open class EditorSyntaxHighlighter: SyntaxHighlighter {
    private static var className = StringName("EditorSyntaxHighlighter")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__get_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_name")
        return withUnsafePointer(to: &EditorSyntaxHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Virtual method which can be overridden to return the syntax highlighter name.
    @_documentation(visibility: public)
    open func _getName() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorSyntaxHighlighter.method__get_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__get_supported_languages: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_supported_languages")
        return withUnsafePointer(to: &EditorSyntaxHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Virtual method which can be overridden to return the supported language names.
    @_documentation(visibility: public)
    open func _getSupportedLanguages() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(EditorSyntaxHighlighter.method__get_supported_languages, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_name":
                return _EditorSyntaxHighlighter_proxy_get_name
            case "_get_supported_languages":
                return _EditorSyntaxHighlighter_proxy_get_supported_languages
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _EditorSyntaxHighlighter_proxy_get_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorSyntaxHighlighter else { return }
    let ret = GString (swiftObject._getName ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorSyntaxHighlighter_proxy_get_supported_languages (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorSyntaxHighlighter else { return }
    let ret = swiftObject._getSupportedLanguages ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

