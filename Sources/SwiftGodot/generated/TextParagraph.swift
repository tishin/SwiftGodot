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


/// Holds a paragraph of text.
/// 
/// Abstraction over ``TextServer`` for handling a single paragraph of text.
open class TextParagraph: RefCounted {
    private static var className = StringName("TextParagraph")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Text writing direction.
    final public var direction: TextServer.Direction {
        get {
            return get_direction ()
        }
        
        set {
            set_direction (newValue)
        }
        
    }
    
    /// Custom punctuation character list, used for word breaking. If set to empty string, server defaults are used.
    final public var customPunctuation: String {
        get {
            return get_custom_punctuation ()
        }
        
        set {
            set_custom_punctuation (newValue)
        }
        
    }
    
    /// Text orientation.
    final public var orientation: TextServer.Orientation {
        get {
            return get_orientation ()
        }
        
        set {
            set_orientation (newValue)
        }
        
    }
    
    /// If set to `true` text will display invalid characters.
    final public var preserveInvalid: Bool {
        get {
            return get_preserve_invalid ()
        }
        
        set {
            set_preserve_invalid (newValue)
        }
        
    }
    
    /// If set to `true` text will display control characters.
    final public var preserveControl: Bool {
        get {
            return get_preserve_control ()
        }
        
        set {
            set_preserve_control (newValue)
        }
        
    }
    
    /// Paragraph horizontal alignment.
    final public var alignment: HorizontalAlignment {
        get {
            return get_alignment ()
        }
        
        set {
            set_alignment (newValue)
        }
        
    }
    
    /// Line breaking rules. For more info see ``TextServer``.
    final public var breakFlags: TextServer.LineBreakFlag {
        get {
            return get_break_flags ()
        }
        
        set {
            set_break_flags (newValue)
        }
        
    }
    
    /// Line fill alignment rules. See ``TextServer.JustificationFlag`` for more information.
    final public var justificationFlags: TextServer.JustificationFlag {
        get {
            return get_justification_flags ()
        }
        
        set {
            set_justification_flags (newValue)
        }
        
    }
    
    /// Sets the clipping behavior when the text exceeds the paragraph's set width. See ``TextServer.OverrunBehavior`` for a description of all modes.
    final public var textOverrunBehavior: TextServer.OverrunBehavior {
        get {
            return get_text_overrun_behavior ()
        }
        
        set {
            set_text_overrun_behavior (newValue)
        }
        
    }
    
    /// Ellipsis character used for text clipping.
    final public var ellipsisChar: String {
        get {
            return get_ellipsis_char ()
        }
        
        set {
            set_ellipsis_char (newValue)
        }
        
    }
    
    /// Paragraph width.
    final public var width: Double {
        get {
            return get_width ()
        }
        
        set {
            set_width (newValue)
        }
        
    }
    
    /// Limits the lines of text shown.
    final public var maxLinesVisible: Int32 {
        get {
            return get_max_lines_visible ()
        }
        
        set {
            set_max_lines_visible (newValue)
        }
        
    }
    
    /// Additional vertical spacing between lines (in pixels), spacing is added to line descent. This value can be negative.
    final public var lineSpacing: Double {
        get {
            return get_line_spacing ()
        }
        
        set {
            set_line_spacing (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_clear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears text paragraph (removes text and inline objects).
    public final func clear() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(TextParagraph.method_clear, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_direction")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1418190634)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_direction(_ direction: TextServer.Direction) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: direction.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextParagraph.method_set_direction, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_direction")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2516697328)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_direction() -> TextServer.Direction {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(TextParagraph.method_get_direction, handle, nil, &_result)
        return TextServer.Direction (rawValue: _result)!
    }
    
    fileprivate static let method_set_custom_punctuation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_custom_punctuation")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_custom_punctuation(_ customPunctuation: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let customPunctuation = GString(customPunctuation)
        withUnsafePointer(to: customPunctuation.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextParagraph.method_set_custom_punctuation, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_custom_punctuation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_custom_punctuation")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_custom_punctuation() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(TextParagraph.method_get_custom_punctuation, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_orientation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_orientation")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 42823726)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_orientation(_ orientation: TextServer.Orientation) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: orientation.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextParagraph.method_set_orientation, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_orientation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_orientation")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 175768116)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_orientation() -> TextServer.Orientation {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(TextParagraph.method_get_orientation, handle, nil, &_result)
        return TextServer.Orientation (rawValue: _result)!
    }
    
    fileprivate static let method_set_preserve_invalid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_preserve_invalid")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_preserve_invalid(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextParagraph.method_set_preserve_invalid, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_preserve_invalid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_preserve_invalid")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_preserve_invalid() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextParagraph.method_get_preserve_invalid, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_preserve_control: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_preserve_control")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_preserve_control(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextParagraph.method_set_preserve_control, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_preserve_control: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_preserve_control")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_preserve_control() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextParagraph.method_get_preserve_control, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_bidi_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bidi_override")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    /// Overrides BiDi for the structured text.
    /// 
    /// Override ranges should cover full source text without overlaps. BiDi algorithm will be used on each range separately.
    /// 
    public final func setBidiOverride(_ override: VariantArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: override.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextParagraph.method_set_bidi_override, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_dropcap: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_dropcap")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2498990330)!
            }
            
        }
        
    }()
    
    /// Sets drop cap, overrides previously set drop cap. Drop cap (dropped capital) is a decorative element at the beginning of a paragraph that is larger than the rest of the text.
    public final func setDropcap(text: String, font: Font?, fontSize: Int32, dropcapMargins: Rect2 = Rect2 (x: 0, y: 0, width: 0, height: 0), language: String = "") -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let text = GString(text)
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: font?.handle) { pArg1 in
                withUnsafePointer(to: fontSize) { pArg2 in
                    withUnsafePointer(to: dropcapMargins) { pArg3 in
                        let language = GString(language)
                        withUnsafePointer(to: language.content) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(TextParagraph.method_set_dropcap, handle, pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_clear_dropcap: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_dropcap")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes dropcap.
    public final func clearDropcap() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(TextParagraph.method_clear_dropcap, handle, nil, nil)
        
    }
    
    fileprivate static let method_add_string: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_string")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 621426851)!
            }
            
        }
        
    }()
    
    /// Adds text span and font to draw it.
    public final func addString(text: String, font: Font?, fontSize: Int32, language: String = "", meta: Variant?) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let text = GString(text)
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: font?.handle) { pArg1 in
                withUnsafePointer(to: fontSize) { pArg2 in
                    let language = GString(language)
                    withUnsafePointer(to: language.content) { pArg3 in
                        withUnsafePointer(to: meta.content) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(TextParagraph.method_add_string, handle, pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_add_object: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_object")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1316529304)!
            }
            
        }
        
    }()
    
    /// Adds inline object to the text buffer, `key` must be unique. In the text, object is represented as `length` object replacement characters.
    public final func addObject(key: Variant?, size: Vector2, inlineAlign: InlineAlignment = .center, length: Int32 = 1, baseline: Double = 0.0) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: key.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: inlineAlign.rawValue) { pArg2 in
                    withUnsafePointer(to: length) { pArg3 in
                        withUnsafePointer(to: baseline) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(TextParagraph.method_add_object, handle, pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_resize_object: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("resize_object")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2095776372)!
            }
            
        }
        
    }()
    
    /// Sets new size and alignment of embedded object.
    public final func resizeObject(key: Variant?, size: Vector2, inlineAlign: InlineAlignment = .center, baseline: Double = 0.0) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: key.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: inlineAlign.rawValue) { pArg2 in
                    withUnsafePointer(to: baseline) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(TextParagraph.method_resize_object, handle, pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_alignment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_alignment")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2312603777)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_alignment(_ alignment: HorizontalAlignment) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: alignment.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextParagraph.method_set_alignment, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_alignment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_alignment")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 341400642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_alignment() -> HorizontalAlignment {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(TextParagraph.method_get_alignment, handle, nil, &_result)
        return HorizontalAlignment (rawValue: _result)!
    }
    
    fileprivate static let method_tab_align: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("tab_align")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2899603908)!
            }
            
        }
        
    }()
    
    /// Aligns paragraph to the given tab-stops.
    public final func tabAlign(tabStops: PackedFloat32Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: tabStops.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextParagraph.method_tab_align, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_break_flags: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_break_flags")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2809697122)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_break_flags(_ flags: TextServer.LineBreakFlag) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: flags.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextParagraph.method_set_break_flags, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_break_flags: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_break_flags")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2340632602)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_break_flags() -> TextServer.LineBreakFlag {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: TextServer.LineBreakFlag = TextServer.LineBreakFlag ()
        gi.object_method_bind_ptrcall(TextParagraph.method_get_break_flags, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_justification_flags: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_justification_flags")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2877345813)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_justification_flags(_ flags: TextServer.JustificationFlag) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: flags.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextParagraph.method_set_justification_flags, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_justification_flags: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_justification_flags")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1583363614)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_justification_flags() -> TextServer.JustificationFlag {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: TextServer.JustificationFlag = TextServer.JustificationFlag ()
        gi.object_method_bind_ptrcall(TextParagraph.method_get_justification_flags, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_text_overrun_behavior: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_text_overrun_behavior")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1008890932)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_text_overrun_behavior(_ overrunBehavior: TextServer.OverrunBehavior) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: overrunBehavior.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextParagraph.method_set_text_overrun_behavior, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_text_overrun_behavior: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_text_overrun_behavior")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3779142101)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_text_overrun_behavior() -> TextServer.OverrunBehavior {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(TextParagraph.method_get_text_overrun_behavior, handle, nil, &_result)
        return TextServer.OverrunBehavior (rawValue: _result)!
    }
    
    fileprivate static let method_set_ellipsis_char: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_ellipsis_char")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_ellipsis_char(_ char: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let char = GString(char)
        withUnsafePointer(to: char.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextParagraph.method_set_ellipsis_char, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_ellipsis_char: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_ellipsis_char")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_ellipsis_char() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(TextParagraph.method_get_ellipsis_char, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_width")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_width(_ width: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: width) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextParagraph.method_set_width, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_width")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_width() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(TextParagraph.method_get_width, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_non_wrapped_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_non_wrapped_size")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    /// Returns the size of the bounding box of the paragraph, without line breaks.
    public final func getNonWrappedSize() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(TextParagraph.method_get_non_wrapped_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_size")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    /// Returns the size of the bounding box of the paragraph.
    public final func getSize() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(TextParagraph.method_get_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_rid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_rid")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Returns TextServer full string buffer RID.
    public final func getRid() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(TextParagraph.method_get_rid, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_line_rid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_rid")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 495598643)!
            }
            
        }
        
    }()
    
    /// Returns TextServer line buffer RID.
    public final func getLineRid(line: Int32) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextParagraph.method_get_line_rid, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_dropcap_rid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_dropcap_rid")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Returns drop cap text buffer RID.
    public final func getDropcapRid() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(TextParagraph.method_get_dropcap_rid, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_line_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_count")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns number of lines in the paragraph.
    public final func getLineCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TextParagraph.method_get_line_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_max_lines_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_max_lines_visible")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_lines_visible(_ maxLinesVisible: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: maxLinesVisible) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextParagraph.method_set_max_lines_visible, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_max_lines_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_max_lines_visible")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_lines_visible() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TextParagraph.method_get_max_lines_visible, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_line_spacing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_line_spacing")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_line_spacing(_ lineSpacing: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: lineSpacing) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextParagraph.method_set_line_spacing, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_line_spacing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_spacing")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_line_spacing() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(TextParagraph.method_get_line_spacing, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_line_objects: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_objects")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 663333327)!
            }
            
        }
        
    }()
    
    /// Returns array of inline objects in the line.
    public final func getLineObjects(line: Int32) -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextParagraph.method_get_line_objects, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_line_object_rect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_object_rect")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 204315017)!
            }
            
        }
        
    }()
    
    /// Returns bounding rectangle of the inline object.
    public final func getLineObjectRect(line: Int32, key: Variant?) -> Rect2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Rect2 = Rect2 ()
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: key.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextParagraph.method_get_line_object_rect, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_line_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_size")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2299179447)!
            }
            
        }
        
    }()
    
    /// Returns size of the bounding box of the line of text. Returned size is rounded up.
    public final func getLineSize(line: Int32) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextParagraph.method_get_line_size, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_line_range: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_range")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 880721226)!
            }
            
        }
        
    }()
    
    /// Returns character range of the line.
    public final func getLineRange(line: Int32) -> Vector2i {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2i = Vector2i ()
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextParagraph.method_get_line_range, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_line_ascent: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_ascent")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// Returns the text line ascent (number of pixels above the baseline for horizontal layout or to the left of baseline for vertical).
    public final func getLineAscent(line: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextParagraph.method_get_line_ascent, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_line_descent: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_descent")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// Returns the text line descent (number of pixels below the baseline for horizontal layout or to the right of baseline for vertical).
    public final func getLineDescent(line: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextParagraph.method_get_line_descent, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_line_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_width")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// Returns width (for horizontal layout) or height (for vertical) of the line of text.
    public final func getLineWidth(line: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextParagraph.method_get_line_width, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_line_underline_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_underline_position")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// Returns pixel offset of the underline below the baseline.
    public final func getLineUnderlinePosition(line: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextParagraph.method_get_line_underline_position, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_line_underline_thickness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_underline_thickness")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// Returns thickness of the underline.
    public final func getLineUnderlineThickness(line: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextParagraph.method_get_line_underline_thickness, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_dropcap_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_dropcap_size")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    /// Returns drop cap bounding box size.
    public final func getDropcapSize() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(TextParagraph.method_get_dropcap_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_dropcap_lines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_dropcap_lines")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns number of lines used by dropcap.
    public final func getDropcapLines() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TextParagraph.method_get_dropcap_lines, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_draw: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1567802413)!
            }
            
        }
        
    }()
    
    /// Draw all lines of the text and drop cap into a canvas item at a given position, with `color`. `pos` specifies the top left corner of the bounding box.
    public final func draw(canvas: RID, pos: Vector2, color: Color = Color (r: 1, g: 1, b: 1, a: 1), dcColor: Color = Color (r: 1, g: 1, b: 1, a: 1)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: canvas.content) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                withUnsafePointer(to: color) { pArg2 in
                    withUnsafePointer(to: dcColor) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(TextParagraph.method_draw, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_outline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_outline")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1893131224)!
            }
            
        }
        
    }()
    
    /// Draw outlines of all lines of the text and drop cap into a canvas item at a given position, with `color`. `pos` specifies the top left corner of the bounding box.
    public final func drawOutline(canvas: RID, pos: Vector2, outlineSize: Int32 = 1, color: Color = Color (r: 1, g: 1, b: 1, a: 1), dcColor: Color = Color (r: 1, g: 1, b: 1, a: 1)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: canvas.content) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                withUnsafePointer(to: outlineSize) { pArg2 in
                    withUnsafePointer(to: color) { pArg3 in
                        withUnsafePointer(to: dcColor) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(TextParagraph.method_draw_outline, handle, pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_line")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1242169894)!
            }
            
        }
        
    }()
    
    /// Draw single line of text into a canvas item at a given position, with `color`. `pos` specifies the top left corner of the bounding box.
    public final func drawLine(canvas: RID, pos: Vector2, line: Int32, color: Color = Color (r: 1, g: 1, b: 1, a: 1)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: canvas.content) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                withUnsafePointer(to: line) { pArg2 in
                    withUnsafePointer(to: color) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(TextParagraph.method_draw_line, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_line_outline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_line_outline")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2664926980)!
            }
            
        }
        
    }()
    
    /// Draw outline of the single line of text into a canvas item at a given position, with `color`. `pos` specifies the top left corner of the bounding box.
    public final func drawLineOutline(canvas: RID, pos: Vector2, line: Int32, outlineSize: Int32 = 1, color: Color = Color (r: 1, g: 1, b: 1, a: 1)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: canvas.content) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                withUnsafePointer(to: line) { pArg2 in
                    withUnsafePointer(to: outlineSize) { pArg3 in
                        withUnsafePointer(to: color) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(TextParagraph.method_draw_line_outline, handle, pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_dropcap: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_dropcap")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 856975658)!
            }
            
        }
        
    }()
    
    /// Draw drop cap into a canvas item at a given position, with `color`. `pos` specifies the top left corner of the bounding box.
    public final func drawDropcap(canvas: RID, pos: Vector2, color: Color = Color (r: 1, g: 1, b: 1, a: 1)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: canvas.content) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                withUnsafePointer(to: color) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextParagraph.method_draw_dropcap, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_dropcap_outline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_dropcap_outline")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1343401456)!
            }
            
        }
        
    }()
    
    /// Draw drop cap outline into a canvas item at a given position, with `color`. `pos` specifies the top left corner of the bounding box.
    public final func drawDropcapOutline(canvas: RID, pos: Vector2, outlineSize: Int32 = 1, color: Color = Color (r: 1, g: 1, b: 1, a: 1)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: canvas.content) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                withUnsafePointer(to: outlineSize) { pArg2 in
                    withUnsafePointer(to: color) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(TextParagraph.method_draw_dropcap_outline, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_hit_test: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("hit_test")
        return withUnsafePointer(to: &TextParagraph.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3820158470)!
            }
            
        }
        
    }()
    
    /// Returns caret character offset at the specified coordinates. This function always returns a valid position.
    public final func hitTest(coords: Vector2) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: coords) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextParagraph.method_hit_test, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
}

