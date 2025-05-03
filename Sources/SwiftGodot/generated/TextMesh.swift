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


/// Generate an ``PrimitiveMesh`` from the text.
/// 
/// Generate an ``PrimitiveMesh`` from the text.
/// 
/// TextMesh can be generated only when using dynamic fonts with vector glyph contours. Bitmap fonts (including bitmap data in the TrueType/OpenType containers, like color emoji fonts) are not supported.
/// 
/// The UV layout is arranged in 4 horizontal strips, top to bottom: 40% of the height for the front face, 40% for the back face, 10% for the outer edges and 10% for the inner edges.
/// 
open class TextMesh: PrimitiveMesh {
    private static var className = StringName("TextMesh")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The text to generate mesh from.
    /// 
    /// > Note: Due to being a ``Resource``, it doesn't follow the rules of ``Node/autoTranslateMode``. If disabling translation is desired, it should be done manually with ``Object/setMessageTranslation(enable:)``.
    /// 
    final public var text: String {
        get {
            return get_text ()
        }
        
        set {
            set_text (newValue)
        }
        
    }
    
    /// Font configuration used to display text.
    final public var font: Font? {
        get {
            return get_font ()
        }
        
        set {
            set_font (newValue)
        }
        
    }
    
    /// Font size of the ``TextMesh``'s text.
    final public var fontSize: Int32 {
        get {
            return get_font_size ()
        }
        
        set {
            set_font_size (newValue)
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
    
    /// Controls the text's vertical alignment. Supports top, center, bottom. Set it to one of the ``VerticalAlignment`` constants.
    final public var verticalAlignment: VerticalAlignment {
        get {
            return get_vertical_alignment ()
        }
        
        set {
            set_vertical_alignment (newValue)
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
    
    /// Additional vertical spacing between lines (in pixels), spacing is added to line descent. This value can be negative.
    final public var lineSpacing: Double {
        get {
            return get_line_spacing ()
        }
        
        set {
            set_line_spacing (newValue)
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
    
    /// The size of one pixel's width on the text to scale it in 3D.
    final public var pixelSize: Double {
        get {
            return get_pixel_size ()
        }
        
        set {
            set_pixel_size (newValue)
        }
        
    }
    
    /// Step (in pixels) used to approximate Bézier curves.
    final public var curveStep: Double {
        get {
            return get_curve_step ()
        }
        
        set {
            set_curve_step (newValue)
        }
        
    }
    
    /// Depths of the mesh, if set to `0.0` only front surface, is generated, and UV layout is changed to use full texture for the front face only.
    final public var depth: Double {
        get {
            return get_depth ()
        }
        
        set {
            set_depth (newValue)
        }
        
    }
    
    /// Text width (in pixels), used for fill alignment.
    final public var width: Double {
        get {
            return get_width ()
        }
        
        set {
            set_width (newValue)
        }
        
    }
    
    /// The text drawing offset (in pixels).
    final public var offset: Vector2 {
        get {
            return get_offset ()
        }
        
        set {
            set_offset (newValue)
        }
        
    }
    
    /// Base text writing direction.
    final public var textDirection: TextServer.Direction {
        get {
            return get_text_direction ()
        }
        
        set {
            set_text_direction (newValue)
        }
        
    }
    
    /// Language code used for text shaping algorithms, if left empty current locale is used instead.
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
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TextMesh.method_set_horizontal_alignment, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_horizontal_alignment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_horizontal_alignment")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 341400642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_horizontal_alignment() -> HorizontalAlignment {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(TextMesh.method_get_horizontal_alignment, handle, nil, &_result)
        return HorizontalAlignment (rawValue: _result)!
    }
    
    fileprivate static let method_set_vertical_alignment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_vertical_alignment")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TextMesh.method_set_vertical_alignment, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_vertical_alignment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_vertical_alignment")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3274884059)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_vertical_alignment() -> VerticalAlignment {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(TextMesh.method_get_vertical_alignment, handle, nil, &_result)
        return VerticalAlignment (rawValue: _result)!
    }
    
    fileprivate static let method_set_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_text")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TextMesh.method_set_text, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_text")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_text() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(TextMesh.method_get_text, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_font: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_font")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1262170328)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_font(_ font: Font?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: font?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextMesh.method_set_font, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_font: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_font")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3229501585)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_font() -> Font? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(TextMesh.method_get_font, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_font_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_font_size")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_font_size(_ fontSize: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontSize) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextMesh.method_set_font_size, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_font_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_font_size")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_font_size() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TextMesh.method_get_font_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_line_spacing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_line_spacing")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TextMesh.method_set_line_spacing, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_line_spacing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_spacing")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_line_spacing() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(TextMesh.method_get_line_spacing, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_autowrap_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_autowrap_mode")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TextMesh.method_set_autowrap_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_autowrap_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_autowrap_mode")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1549071663)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_autowrap_mode() -> TextServer.AutowrapMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(TextMesh.method_get_autowrap_mode, handle, nil, &_result)
        return TextServer.AutowrapMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_justification_flags: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_justification_flags")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TextMesh.method_set_justification_flags, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_justification_flags: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_justification_flags")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1583363614)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_justification_flags() -> TextServer.JustificationFlag {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: TextServer.JustificationFlag = TextServer.JustificationFlag ()
        gi.object_method_bind_ptrcall(TextMesh.method_get_justification_flags, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_depth: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_depth")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_depth(_ depth: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: depth) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextMesh.method_set_depth, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_depth: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_depth")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_depth() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(TextMesh.method_get_depth, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_width")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TextMesh.method_set_width, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_width")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_width() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(TextMesh.method_get_width, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_pixel_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_pixel_size")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pixel_size(_ pixelSize: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pixelSize) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextMesh.method_set_pixel_size, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_pixel_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_pixel_size")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pixel_size() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(TextMesh.method_get_pixel_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_offset")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_offset(_ offset: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextMesh.method_set_offset, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_offset")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_offset() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(TextMesh.method_get_offset, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_curve_step: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_curve_step")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_curve_step(_ curveStep: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: curveStep) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextMesh.method_set_curve_step, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_curve_step: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_curve_step")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_curve_step() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(TextMesh.method_get_curve_step, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_text_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_text_direction")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1418190634)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_text_direction(_ direction: TextServer.Direction) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: direction.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextMesh.method_set_text_direction, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_text_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_text_direction")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2516697328)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_text_direction() -> TextServer.Direction {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(TextMesh.method_get_text_direction, handle, nil, &_result)
        return TextServer.Direction (rawValue: _result)!
    }
    
    fileprivate static let method_set_language: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_language")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TextMesh.method_set_language, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_language: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_language")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_language() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(TextMesh.method_get_language, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_structured_text_bidi_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_structured_text_bidi_override")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TextMesh.method_set_structured_text_bidi_override, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_structured_text_bidi_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_structured_text_bidi_override")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3385126229)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_structured_text_bidi_override() -> TextServer.StructuredTextParser {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(TextMesh.method_get_structured_text_bidi_override, handle, nil, &_result)
        return TextServer.StructuredTextParser (rawValue: _result)!
    }
    
    fileprivate static let method_set_structured_text_bidi_override_options: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_structured_text_bidi_override_options")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TextMesh.method_set_structured_text_bidi_override_options, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_structured_text_bidi_override_options: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_structured_text_bidi_override_options")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_structured_text_bidi_override_options() -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        gi.object_method_bind_ptrcall(TextMesh.method_get_structured_text_bidi_override_options, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_uppercase: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_uppercase")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TextMesh.method_set_uppercase, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_uppercase: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_uppercase")
        return withUnsafePointer(to: &TextMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_uppercase() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextMesh.method_is_uppercase, handle, nil, &_result)
        return _result
    }
    
}

