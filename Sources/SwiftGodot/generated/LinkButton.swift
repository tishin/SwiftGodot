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


/// A button that represents a link.
/// 
/// A button that represents a link. This type of button is primarily used for interactions that cause a context change (like linking to a web page).
/// 
/// See also ``BaseButton`` which contains common properties and methods associated with this node.
/// 
open class LinkButton: BaseButton {
    private static var className = StringName("LinkButton")
    override open class var godotClassName: StringName { className }
    public enum UnderlineMode: Int64, CaseIterable {
        /// The LinkButton will always show an underline at the bottom of its text.
        case always = 0 // UNDERLINE_MODE_ALWAYS
        /// The LinkButton will show an underline at the bottom of its text when the mouse cursor is over it.
        case onHover = 1 // UNDERLINE_MODE_ON_HOVER
        /// The LinkButton will never show an underline at the bottom of its text.
        case never = 2 // UNDERLINE_MODE_NEVER
    }
    
    
    /* Properties */
    
    /// The button's text that will be displayed inside the button's area.
    final public var text: String {
        get {
            return get_text ()
        }
        
        set {
            set_text (newValue)
        }
        
    }
    
    /// The underline mode to use for the text. See ``LinkButton.UnderlineMode`` for the available modes.
    final public var underline: LinkButton.UnderlineMode {
        get {
            return get_underline_mode ()
        }
        
        set {
            set_underline_mode (newValue)
        }
        
    }
    
    /// The <a href="https://en.wikipedia.org/wiki/Uniform_Resource_Identifier">URI</a> for this ``LinkButton``. If set to a valid URI, pressing the button opens the URI using the operating system's default program for the protocol (via ``OS/shellOpen(uri:)``). HTTP and HTTPS URLs open the default web browser.
    /// 
    final public var uri: String {
        get {
            return get_uri ()
        }
        
        set {
            set_uri (newValue)
        }
        
    }
    
    /// Base text writing direction.
    final public var textDirection: Control.TextDirection {
        get {
            return get_text_direction ()
        }
        
        set {
            set_text_direction (newValue)
        }
        
    }
    
    /// Language code used for line-breaking and text shaping algorithms, if left empty current locale is used instead.
    final public var language: String {
        get {
            return get_language ()
        }
        
        set {
            set_language (newValue)
        }
        
    }
    
    /// Set BiDi algorithm override for the structured text.
    final public var structuredTextBidiOverride: TextServer.StructuredTextParser {
        get {
            return get_structured_text_bidi_override ()
        }
        
        set {
            set_structured_text_bidi_override (newValue)
        }
        
    }
    
    /// Set additional options for BiDi override.
    final public var structuredTextBidiOverrideOptions: VariantArray {
        get {
            return get_structured_text_bidi_override_options ()
        }
        
        set {
            set_structured_text_bidi_override_options (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_text")
        return withUnsafePointer(to: &LinkButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_text(_ text: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let text = GString(text)
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LinkButton.method_set_text, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_text")
        return withUnsafePointer(to: &LinkButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_text() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(LinkButton.method_get_text, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_text_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_text_direction")
        return withUnsafePointer(to: &LinkButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 119160795)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_text_direction(_ direction: Control.TextDirection) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: direction.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LinkButton.method_set_text_direction, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_text_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_text_direction")
        return withUnsafePointer(to: &LinkButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 797257663)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_text_direction() -> Control.TextDirection {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(LinkButton.method_get_text_direction, handle, nil, &_result)
        return Control.TextDirection (rawValue: _result)!
    }
    
    fileprivate static let method_set_language: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_language")
        return withUnsafePointer(to: &LinkButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_language(_ language: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let language = GString(language)
        withUnsafePointer(to: language.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LinkButton.method_set_language, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_language: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_language")
        return withUnsafePointer(to: &LinkButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_language() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(LinkButton.method_get_language, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_uri: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_uri")
        return withUnsafePointer(to: &LinkButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_uri(_ uri: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let uri = GString(uri)
        withUnsafePointer(to: uri.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LinkButton.method_set_uri, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_uri: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_uri")
        return withUnsafePointer(to: &LinkButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_uri() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(LinkButton.method_get_uri, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_underline_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_underline_mode")
        return withUnsafePointer(to: &LinkButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4032947085)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_underline_mode(_ underlineMode: LinkButton.UnderlineMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: underlineMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LinkButton.method_set_underline_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_underline_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_underline_mode")
        return withUnsafePointer(to: &LinkButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 568343738)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_underline_mode() -> LinkButton.UnderlineMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(LinkButton.method_get_underline_mode, handle, nil, &_result)
        return LinkButton.UnderlineMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_structured_text_bidi_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_structured_text_bidi_override")
        return withUnsafePointer(to: &LinkButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 55961453)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_structured_text_bidi_override(_ parser: TextServer.StructuredTextParser) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: parser.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LinkButton.method_set_structured_text_bidi_override, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_structured_text_bidi_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_structured_text_bidi_override")
        return withUnsafePointer(to: &LinkButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3385126229)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_structured_text_bidi_override() -> TextServer.StructuredTextParser {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(LinkButton.method_get_structured_text_bidi_override, handle, nil, &_result)
        return TextServer.StructuredTextParser (rawValue: _result)!
    }
    
    fileprivate static let method_set_structured_text_bidi_override_options: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_structured_text_bidi_override_options")
        return withUnsafePointer(to: &LinkButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_structured_text_bidi_override_options(_ args: VariantArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: args.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LinkButton.method_set_structured_text_bidi_override_options, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_structured_text_bidi_override_options: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_structured_text_bidi_override_options")
        return withUnsafePointer(to: &LinkButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_structured_text_bidi_override_options() -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        gi.object_method_bind_ptrcall(LinkButton.method_get_structured_text_bidi_override_options, handle, nil, &_result.content)
        return _result
    }
    
}

