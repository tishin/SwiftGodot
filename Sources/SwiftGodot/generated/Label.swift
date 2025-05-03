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


/// A control for displaying plain text.
/// 
/// A control for displaying plain text. It gives you control over the horizontal and vertical alignment and can wrap the text inside the node's bounding rectangle. It doesn't support bold, italics, or other rich text formatting. For that, use ``RichTextLabel`` instead.
open class Label: Control {
    private static var className = StringName("Label")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The text to display on screen.
    final public var text: String {
        get {
            return get_text ()
        }
        
        set {
            set_text (newValue)
        }
        
    }
    
    /// A ``LabelSettings`` resource that can be shared between multiple ``Label`` nodes. Takes priority over theme properties.
    final public var labelSettings: LabelSettings? {
        get {
            return get_label_settings ()
        }
        
        set {
            set_label_settings (newValue)
        }
        
    }
    
    /// Controls the text's horizontal alignment. Supports left, center, right, and fill, or justify. Set it to one of the ``HorizontalAlignment`` constants.
    final public var horizontalAlignment: HorizontalAlignment {
        get {
            return get_horizontal_alignment ()
        }
        
        set {
            set_horizontal_alignment (newValue)
        }
        
    }
    
    /// Controls the text's vertical alignment. Supports top, center, bottom, and fill. Set it to one of the ``VerticalAlignment`` constants.
    final public var verticalAlignment: VerticalAlignment {
        get {
            return get_vertical_alignment ()
        }
        
        set {
            set_vertical_alignment (newValue)
        }
        
    }
    
    /// If set to something other than ``TextServer/AutowrapMode/off``, the text gets wrapped inside the node's bounding rectangle. If you resize the node, it will change its height automatically to show all the text. To see how each mode behaves, see ``TextServer.AutowrapMode``.
    final public var autowrapMode: TextServer.AutowrapMode {
        get {
            return get_autowrap_mode ()
        }
        
        set {
            set_autowrap_mode (newValue)
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
    
    /// String used as a paragraph separator. Each paragraph is processed independently, in its own BiDi context.
    final public var paragraphSeparator: String {
        get {
            return get_paragraph_separator ()
        }
        
        set {
            set_paragraph_separator (newValue)
        }
        
    }
    
    /// If `true`, the Label only shows the text that fits inside its bounding rectangle and will clip text horizontally.
    final public var clipText: Bool {
        get {
            return is_clipping_text ()
        }
        
        set {
            set_clip_text (newValue)
        }
        
    }
    
    /// Sets the clipping behavior when the text exceeds the node's bounding rectangle. See ``TextServer.OverrunBehavior`` for a description of all modes.
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
    
    /// If `true`, all the text displays as UPPERCASE.
    final public var uppercase: Bool {
        get {
            return is_uppercase ()
        }
        
        set {
            set_uppercase (newValue)
        }
        
    }
    
    /// Aligns text to the given tab-stops.
    final public var tabStops: PackedFloat32Array {
        get {
            return get_tab_stops ()
        }
        
        set {
            set_tab_stops (newValue)
        }
        
    }
    
    /// The number of the lines ignored and not displayed from the start of the ``text`` value.
    final public var linesSkipped: Int32 {
        get {
            return get_lines_skipped ()
        }
        
        set {
            set_lines_skipped (newValue)
        }
        
    }
    
    /// Limits the lines of text the node shows on screen.
    final public var maxLinesVisible: Int32 {
        get {
            return get_max_lines_visible ()
        }
        
        set {
            set_max_lines_visible (newValue)
        }
        
    }
    
    /// The number of characters to display. If set to `-1`, all characters are displayed. This can be useful when animating the text appearing in a dialog box.
    /// 
    /// > Note: Setting this property updates ``visibleRatio`` accordingly.
    /// 
    final public var visibleCharacters: Int32 {
        get {
            return get_visible_characters ()
        }
        
        set {
            set_visible_characters (newValue)
        }
        
    }
    
    /// Sets the clipping behavior when ``visibleCharacters`` or ``visibleRatio`` is set. See ``TextServer.VisibleCharactersBehavior`` for more info.
    final public var visibleCharactersBehavior: TextServer.VisibleCharactersBehavior {
        get {
            return get_visible_characters_behavior ()
        }
        
        set {
            set_visible_characters_behavior (newValue)
        }
        
    }
    
    /// The fraction of characters to display, relative to the total number of characters (see ``getTotalCharacterCount()``). If set to `1.0`, all characters are displayed. If set to `0.5`, only half of the characters will be displayed. This can be useful when animating the text appearing in a dialog box.
    /// 
    /// > Note: Setting this property updates ``visibleCharacters`` accordingly.
    /// 
    final public var visibleRatio: Double {
        get {
            return get_visible_ratio ()
        }
        
        set {
            set_visible_ratio (newValue)
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
    fileprivate static let method_set_horizontal_alignment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_horizontal_alignment")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2312603777)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_horizontal_alignment(_ alignment: HorizontalAlignment) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: alignment.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Label.method_set_horizontal_alignment, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_horizontal_alignment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_horizontal_alignment")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 341400642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_horizontal_alignment() -> HorizontalAlignment {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(Label.method_get_horizontal_alignment, handle, nil, &_result)
        return HorizontalAlignment (rawValue: _result)!
    }
    
    fileprivate static let method_set_vertical_alignment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_vertical_alignment")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1796458609)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_vertical_alignment(_ alignment: VerticalAlignment) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: alignment.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Label.method_set_vertical_alignment, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_vertical_alignment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_vertical_alignment")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3274884059)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_vertical_alignment() -> VerticalAlignment {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(Label.method_get_vertical_alignment, handle, nil, &_result)
        return VerticalAlignment (rawValue: _result)!
    }
    
    fileprivate static let method_set_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_text")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(Label.method_set_text, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_text")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_text() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(Label.method_get_text, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_label_settings: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_label_settings")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1030653839)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_label_settings(_ settings: LabelSettings?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: settings?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Label.method_set_label_settings, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_label_settings: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_label_settings")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 826676056)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_label_settings() -> LabelSettings? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(Label.method_get_label_settings, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_text_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_text_direction")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(Label.method_set_text_direction, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_text_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_text_direction")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 797257663)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_text_direction() -> Control.TextDirection {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(Label.method_get_text_direction, handle, nil, &_result)
        return Control.TextDirection (rawValue: _result)!
    }
    
    fileprivate static let method_set_language: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_language")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(Label.method_set_language, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_language: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_language")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_language() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(Label.method_get_language, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_paragraph_separator: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_paragraph_separator")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_paragraph_separator(_ paragraphSeparator: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let paragraphSeparator = GString(paragraphSeparator)
        withUnsafePointer(to: paragraphSeparator.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Label.method_set_paragraph_separator, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_paragraph_separator: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_paragraph_separator")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_paragraph_separator() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(Label.method_get_paragraph_separator, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_autowrap_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_autowrap_mode")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3289138044)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_autowrap_mode(_ autowrapMode: TextServer.AutowrapMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: autowrapMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Label.method_set_autowrap_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_autowrap_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_autowrap_mode")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1549071663)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_autowrap_mode() -> TextServer.AutowrapMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(Label.method_get_autowrap_mode, handle, nil, &_result)
        return TextServer.AutowrapMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_justification_flags: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_justification_flags")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2877345813)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_justification_flags(_ justificationFlags: TextServer.JustificationFlag) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: justificationFlags.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Label.method_set_justification_flags, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_justification_flags: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_justification_flags")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1583363614)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_justification_flags() -> TextServer.JustificationFlag {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: TextServer.JustificationFlag = TextServer.JustificationFlag ()
        gi.object_method_bind_ptrcall(Label.method_get_justification_flags, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_clip_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_clip_text")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_clip_text(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Label.method_set_clip_text, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_clipping_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_clipping_text")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_clipping_text() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Label.method_is_clipping_text, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_tab_stops: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tab_stops")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2899603908)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tab_stops(_ tabStops: PackedFloat32Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: tabStops.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Label.method_set_tab_stops, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tab_stops: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_stops")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 675695659)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tab_stops() -> PackedFloat32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedFloat32Array = PackedFloat32Array ()
        gi.object_method_bind_ptrcall(Label.method_get_tab_stops, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_text_overrun_behavior: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_text_overrun_behavior")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(Label.method_set_text_overrun_behavior, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_text_overrun_behavior: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_text_overrun_behavior")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3779142101)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_text_overrun_behavior() -> TextServer.OverrunBehavior {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(Label.method_get_text_overrun_behavior, handle, nil, &_result)
        return TextServer.OverrunBehavior (rawValue: _result)!
    }
    
    fileprivate static let method_set_ellipsis_char: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_ellipsis_char")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(Label.method_set_ellipsis_char, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_ellipsis_char: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_ellipsis_char")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_ellipsis_char() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(Label.method_get_ellipsis_char, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_uppercase: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_uppercase")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_uppercase(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Label.method_set_uppercase, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_uppercase: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_uppercase")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_uppercase() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Label.method_is_uppercase, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_line_height: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_height")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 181039630)!
            }
            
        }
        
    }()
    
    /// Returns the height of the line `line`.
    /// 
    /// If `line` is set to `-1`, returns the biggest line height.
    /// 
    /// If there are no lines, returns font size in pixels.
    /// 
    public final func getLineHeight(line: Int32 = -1) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Label.method_get_line_height, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_line_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_count")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of lines of text the Label has.
    public final func getLineCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Label.method_get_line_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_visible_line_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_visible_line_count")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of lines shown. Useful if the ``Label``'s height cannot currently display all lines.
    public final func getVisibleLineCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Label.method_get_visible_line_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_total_character_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_total_character_count")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the total number of printable characters in the text (excluding spaces and newlines).
    public final func getTotalCharacterCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Label.method_get_total_character_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_visible_characters: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_visible_characters")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visible_characters(_ amount: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Label.method_set_visible_characters, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_visible_characters: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_visible_characters")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_visible_characters() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Label.method_get_visible_characters, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_visible_characters_behavior: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_visible_characters_behavior")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 258789322)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_visible_characters_behavior() -> TextServer.VisibleCharactersBehavior {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(Label.method_get_visible_characters_behavior, handle, nil, &_result)
        return TextServer.VisibleCharactersBehavior (rawValue: _result)!
    }
    
    fileprivate static let method_set_visible_characters_behavior: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_visible_characters_behavior")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3383839701)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visible_characters_behavior(_ behavior: TextServer.VisibleCharactersBehavior) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: behavior.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Label.method_set_visible_characters_behavior, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_visible_ratio: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_visible_ratio")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visible_ratio(_ ratio: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: ratio) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Label.method_set_visible_ratio, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_visible_ratio: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_visible_ratio")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_visible_ratio() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Label.method_get_visible_ratio, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_lines_skipped: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_lines_skipped")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_lines_skipped(_ linesSkipped: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: linesSkipped) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Label.method_set_lines_skipped, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_lines_skipped: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_lines_skipped")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_lines_skipped() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Label.method_get_lines_skipped, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_max_lines_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_max_lines_visible")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_lines_visible(_ linesVisible: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: linesVisible) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Label.method_set_max_lines_visible, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_max_lines_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_max_lines_visible")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_lines_visible() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Label.method_get_max_lines_visible, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_structured_text_bidi_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_structured_text_bidi_override")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(Label.method_set_structured_text_bidi_override, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_structured_text_bidi_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_structured_text_bidi_override")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3385126229)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_structured_text_bidi_override() -> TextServer.StructuredTextParser {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(Label.method_get_structured_text_bidi_override, handle, nil, &_result)
        return TextServer.StructuredTextParser (rawValue: _result)!
    }
    
    fileprivate static let method_set_structured_text_bidi_override_options: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_structured_text_bidi_override_options")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(Label.method_set_structured_text_bidi_override_options, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_structured_text_bidi_override_options: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_structured_text_bidi_override_options")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_structured_text_bidi_override_options() -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        gi.object_method_bind_ptrcall(Label.method_get_structured_text_bidi_override_options, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_character_bounds: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_character_bounds")
        return withUnsafePointer(to: &Label.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3327874267)!
            }
            
        }
        
    }()
    
    /// Returns the bounding rectangle of the character at position `pos` in the label's local coordinate system. If the character is a non-visual character or `pos` is outside the valid range, an empty ``Rect2`` is returned. If the character is a part of a composite grapheme, the bounding rectangle of the whole grapheme is returned.
    public final func getCharacterBounds(pos: Int32) -> Rect2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Rect2 = Rect2 ()
        withUnsafePointer(to: pos) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Label.method_get_character_bounds, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
}

