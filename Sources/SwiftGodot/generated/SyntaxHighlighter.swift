// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Base class for syntax highlighters. Provides syntax highlighting data to a ``TextEdit``.
/// 
/// Base class for syntax highlighters. Provides syntax highlighting data to a ``TextEdit``. The associated ``TextEdit`` will call into the ``SyntaxHighlighter`` on an as-needed basis.
/// 
/// > Note: A ``SyntaxHighlighter`` instance should not be used across multiple ``TextEdit`` nodes.
/// 
open class SyntaxHighlighter: Resource {
    override open class var godotClassName: StringName { "SyntaxHighlighter" }
    /* Methods */
    /// Virtual method which can be overridden to return syntax highlighting data.
    /// 
    /// See ``getLineSyntaxHighlighting(line:)`` for more details.
    /// 
    @_documentation(visibility: public)
    open func _getLineSyntaxHighlighting(line: Int32) -> GDictionary {
        return GDictionary ()
    }
    
    /// Virtual method which can be overridden to clear any local caches.
    @_documentation(visibility: public)
    open func _clearHighlightingCache() {
    }
    
    /// Virtual method which can be overridden to update any local caches.
    @_documentation(visibility: public)
    open func _updateCache() {
    }
    
    fileprivate static var method_get_line_syntax_highlighting: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_line_syntax_highlighting")
        return withUnsafePointer(to: &SyntaxHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3554694381)!
            }
            
        }
        
    }()
    
    /// Returns syntax highlighting data for a single line. If the line is not cached, calls ``_getLineSyntaxHighlighting(line:)`` to calculate the data.
    /// 
    /// The return ``GDictionary`` is column number to ``GDictionary``. The column number notes the start of a region, the region will end if another region is found, or at the end of the line. The nested ``GDictionary`` contains the data for that region, currently only the key "color" is supported.
    /// 
    /// **Example return:**
    /// 
    /// This will color columns 0-4 red, and columns 5-eol in green.
    /// 
    public final func getLineSyntaxHighlighting(line: Int32) -> GDictionary {
        let _result: GDictionary = GDictionary ()
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SyntaxHighlighter.method_get_line_syntax_highlighting, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_update_cache: GDExtensionMethodBindPtr = {
        let methodName = StringName("update_cache")
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
        gi.object_method_bind_ptrcall(SyntaxHighlighter.method_update_cache, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static var method_clear_highlighting_cache: GDExtensionMethodBindPtr = {
        let methodName = StringName("clear_highlighting_cache")
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
        gi.object_method_bind_ptrcall(SyntaxHighlighter.method_clear_highlighting_cache, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static var method_get_text_edit: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_text_edit")
        return withUnsafePointer(to: &SyntaxHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1893027089)!
            }
            
        }
        
    }()
    
    /// Returns the associated ``TextEdit`` node.
    public final func getTextEdit() -> TextEdit? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(SyntaxHighlighter.method_get_text_edit, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
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
    let swiftObject = Unmanaged<SyntaxHighlighter>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._clearHighlightingCache ()
}

func _SyntaxHighlighter_proxy_get_line_syntax_highlighting (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<SyntaxHighlighter>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getLineSyntaxHighlighting (line: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Dictionary
    ret.content = GDictionary.zero
}

func _SyntaxHighlighter_proxy_update_cache (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<SyntaxHighlighter>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._updateCache ()
}

