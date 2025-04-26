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


/// Base class for syntax highlighters. Provides syntax highlighting data to a ``TextEdit``.
/// 
/// Base class for syntax highlighters. Provides syntax highlighting data to a ``TextEdit``. The associated ``TextEdit`` will call into the ``SyntaxHighlighter`` on an as-needed basis.
/// 
/// > Note: A ``SyntaxHighlighter`` instance should not be used across multiple ``TextEdit`` nodes.
/// 
open class SyntaxHighlighter: Resource {
    private static var className = StringName("SyntaxHighlighter")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__get_line_syntax_highlighting: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_line_syntax_highlighting")
        return withUnsafePointer(to: &SyntaxHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3485342025)!
            }
            
        }
        
    }()
    
    /// Virtual method which can be overridden to return syntax highlighting data.
    /// 
    /// See ``getLineSyntaxHighlighting(line:)`` for more details.
    /// 
    @_documentation(visibility: public)
    open func _getLineSyntaxHighlighting(line: Int32) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SyntaxHighlighter.method__get_line_syntax_highlighting, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__clear_highlighting_cache: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_clear_highlighting_cache")
        return withUnsafePointer(to: &SyntaxHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Virtual method which can be overridden to clear any local caches.
    @_documentation(visibility: public)
    open func _clearHighlightingCache() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(SyntaxHighlighter.method__clear_highlighting_cache, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__update_cache: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_update_cache")
        return withUnsafePointer(to: &SyntaxHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Virtual method which can be overridden to update any local caches.
    @_documentation(visibility: public)
    open func _updateCache() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(SyntaxHighlighter.method__update_cache, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_get_line_syntax_highlighting: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_syntax_highlighting")
        return withUnsafePointer(to: &SyntaxHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3554694381)!
            }
            
        }
        
    }()
    
    /// Returns the syntax highlighting data for the line at index `line`. If the line is not cached, calls ``_getLineSyntaxHighlighting(line:)`` first to calculate the data.
    /// 
    /// Each entry is a column number containing a nested ``VariantDictionary``. The column number denotes the start of a region, the region will end if another region is found, or at the end of the line. The nested ``VariantDictionary`` contains the data for that region. Currently only the key `"color"` is supported.
    /// 
    /// **Example:** Possible return value. This means columns `0` to `4` should be red, and columns `5` to the end of the line should be green:
    /// 
    public final func getLineSyntaxHighlighting(line: Int32) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SyntaxHighlighter.method_get_line_syntax_highlighting, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_update_cache: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("update_cache")
        return withUnsafePointer(to: &SyntaxHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears then updates the ``SyntaxHighlighter`` caches. Override ``_updateCache()`` for a callback.
    /// 
    /// > Note: This is called automatically when the associated ``TextEdit`` node, updates its own cache.
    /// 
    public final func updateCache() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(SyntaxHighlighter.method_update_cache, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_clear_highlighting_cache: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_highlighting_cache")
        return withUnsafePointer(to: &SyntaxHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears all cached syntax highlighting data.
    /// 
    /// Then calls overridable method ``_clearHighlightingCache()``.
    /// 
    public final func clearHighlightingCache() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(SyntaxHighlighter.method_clear_highlighting_cache, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_get_text_edit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_text_edit")
        return withUnsafePointer(to: &SyntaxHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1893027089)!
            }
            
        }
        
    }()
    
    /// Returns the associated ``TextEdit`` node.
    public final func getTextEdit() -> TextEdit? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(SyntaxHighlighter.method_get_text_edit, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_clear_highlighting_cache":
                return _SyntaxHighlighter_proxy_clear_highlighting_cache
            case "_get_line_syntax_highlighting":
                return _SyntaxHighlighter_proxy_get_line_syntax_highlighting
            case "_update_cache":
                return _SyntaxHighlighter_proxy_update_cache
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _SyntaxHighlighter_proxy_clear_highlighting_cache (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? SyntaxHighlighter else { return }
    swiftObject._clearHighlightingCache ()
}

func _SyntaxHighlighter_proxy_get_line_syntax_highlighting (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? SyntaxHighlighter else { return }
    let ret = swiftObject._getLineSyntaxHighlighting (line: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Dictionary
    ret.content = VariantDictionary.zero
}

func _SyntaxHighlighter_proxy_update_cache (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? SyntaxHighlighter else { return }
    swiftObject._updateCache ()
}

