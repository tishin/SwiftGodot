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


/// Controls how an individual character will be displayed in a ``RichTextEffect``.
/// 
/// By setting various properties on this object, you can control how individual characters will be displayed in a ``RichTextEffect``.
open class CharFXTransform: RefCounted {
    private static var className = StringName("CharFXTransform")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The current transform of the current glyph. It can be overridden (for example, by driving the position and rotation from a curve). You can also alter the existing value to apply transforms on top of other effects.
    final public var transform: Transform2D {
        get {
            return get_transform ()
        }
        
        set {
            set_transform (newValue)
        }
        
    }
    
    /// Absolute character range in the string, corresponding to the glyph.
    /// 
    /// > Note: Read-only. Setting this property won't affect drawing.
    /// 
    final public var range: Vector2i {
        get {
            return get_range ()
        }
        
        set {
            set_range (newValue)
        }
        
    }
    
    /// The time elapsed since the ``RichTextLabel`` was added to the scene tree (in seconds). Time stops when the ``RichTextLabel`` is paused (see ``Node/processMode``). Resets when the text in the ``RichTextLabel`` is changed.
    /// 
    /// > Note: Time still passes while the ``RichTextLabel`` is hidden.
    /// 
    final public var elapsedTime: Double {
        get {
            return get_elapsed_time ()
        }
        
        set {
            set_elapsed_time (newValue)
        }
        
    }
    
    /// If `true`, the character will be drawn. If `false`, the character will be hidden. Characters around hidden characters will reflow to take the space of hidden characters. If this is not desired, set their ``color`` to `Color(1, 1, 1, 0)` instead.
    final public var visible: Bool {
        get {
            return is_visible ()
        }
        
        set {
            set_visibility (newValue)
        }
        
    }
    
    /// If `true`, FX transform is called for outline drawing.
    /// 
    /// > Note: Read-only. Setting this property won't affect drawing.
    /// 
    final public var outline: Bool {
        get {
            return is_outline ()
        }
        
        set {
            set_outline (newValue)
        }
        
    }
    
    /// The position offset the character will be drawn with (in pixels).
    final public var offset: Vector2 {
        get {
            return get_offset ()
        }
        
        set {
            set_offset (newValue)
        }
        
    }
    
    /// The color the character will be drawn with.
    final public var color: Color {
        get {
            return get_color ()
        }
        
        set {
            set_color (newValue)
        }
        
    }
    
    /// Contains the arguments passed in the opening BBCode tag. By default, arguments are strings; if their contents match a type such as [bool], integer or float, they will be converted automatically. Color codes in the form `#rrggbb` or `#rgb` will be converted to an opaque ``Color``. String arguments may not contain spaces, even if they're quoted. If present, quotes will also be present in the final string.
    /// 
    /// For example, the opening BBCode tag `[example foo=hello bar=true baz=42 color=#ffffff]` will map to the following ``VariantDictionary``:
    /// 
    final public var env: VariantDictionary {
        get {
            return get_environment ()
        }
        
        set {
            set_environment (newValue)
        }
        
    }
    
    /// Glyph index specific to the ``font``. If you want to replace this glyph, use ``TextServer/fontGetGlyphIndex(fontRid:size:char:variationSelector:)`` with ``font`` to get a new glyph index for a single character.
    final public var glyphIndex: UInt32 {
        get {
            return get_glyph_index ()
        }
        
        set {
            set_glyph_index (newValue)
        }
        
    }
    
    /// Number of glyphs in the grapheme cluster. This value is set in the first glyph of a cluster.
    /// 
    /// > Note: Read-only. Setting this property won't affect drawing.
    /// 
    final public var glyphCount: UInt8 {
        get {
            return get_glyph_count ()
        }
        
        set {
            set_glyph_count (newValue)
        }
        
    }
    
    /// Glyph flags. See ``TextServer.GraphemeFlag`` for more info.
    /// 
    /// > Note: Read-only. Setting this property won't affect drawing.
    /// 
    final public var glyphFlags: UInt16 {
        get {
            return get_glyph_flags ()
        }
        
        set {
            set_glyph_flags (newValue)
        }
        
    }
    
    /// The character offset of the glyph, relative to the current ``RichTextEffect`` custom block.
    /// 
    /// > Note: Read-only. Setting this property won't affect drawing.
    /// 
    final public var relativeIndex: Int32 {
        get {
            return get_relative_index ()
        }
        
        set {
            set_relative_index (newValue)
        }
        
    }
    
    /// ``TextServer`` RID of the font used to render glyph, this value can be used with `TextServer.font_*` methods to retrieve font information.
    /// 
    /// > Note: Read-only. Setting this property won't affect drawing.
    /// 
    final public var font: RID {
        get {
            return get_font ()
        }
        
        set {
            set_font (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_get_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_transform")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3761352769)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_transform() -> Transform2D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform2D = Transform2D ()
        gi.object_method_bind_ptrcall(CharFXTransform.method_get_transform, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_transform")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2761652528)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_transform(_ transform: Transform2D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: transform) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CharFXTransform.method_set_transform, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_range: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_range")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2741790807)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_range() -> Vector2i {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2i = Vector2i ()
        gi.object_method_bind_ptrcall(CharFXTransform.method_get_range, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_range: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_range")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1130785943)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_range(_ range: Vector2i) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: range) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CharFXTransform.method_set_range, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_elapsed_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_elapsed_time")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 191475506)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_elapsed_time() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CharFXTransform.method_get_elapsed_time, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_elapsed_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_elapsed_time")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_elapsed_time(_ time: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: time) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CharFXTransform.method_set_elapsed_time, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_visible")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_visible() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CharFXTransform.method_is_visible, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_visibility: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_visibility")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visibility(_ visibility: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: visibility) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CharFXTransform.method_set_visibility, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_outline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_outline")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_outline() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CharFXTransform.method_is_outline, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_outline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_outline")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_outline(_ outline: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: outline) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CharFXTransform.method_set_outline, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_offset")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1497962370)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_offset() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(CharFXTransform.method_get_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_offset")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(CharFXTransform.method_set_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_color")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3200896285)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_color() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(CharFXTransform.method_get_color, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_color")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_color(_ color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CharFXTransform.method_set_color, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_environment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_environment")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2382534195)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_environment() -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        gi.object_method_bind_ptrcall(CharFXTransform.method_get_environment, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_environment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_environment")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155329257)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_environment(_ environment: VariantDictionary) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: environment.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CharFXTransform.method_set_environment, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_glyph_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_glyph_index")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_glyph_index() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(CharFXTransform.method_get_glyph_index, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_glyph_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_glyph_index")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_glyph_index(_ glyphIndex: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: glyphIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CharFXTransform.method_set_glyph_index, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_relative_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_relative_index")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_relative_index() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(CharFXTransform.method_get_relative_index, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_relative_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_relative_index")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_relative_index(_ relativeIndex: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: relativeIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CharFXTransform.method_set_relative_index, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_glyph_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_glyph_count")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_glyph_count() -> UInt8 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt8 = 0
        gi.object_method_bind_ptrcall(CharFXTransform.method_get_glyph_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_glyph_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_glyph_count")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_glyph_count(_ glyphCount: UInt8) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: glyphCount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CharFXTransform.method_set_glyph_count, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_glyph_flags: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_glyph_flags")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_glyph_flags() -> UInt16 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt16 = 0
        gi.object_method_bind_ptrcall(CharFXTransform.method_get_glyph_flags, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_glyph_flags: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_glyph_flags")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_glyph_flags(_ glyphFlags: UInt16) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: glyphFlags) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CharFXTransform.method_set_glyph_flags, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_font: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_font")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_font() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(CharFXTransform.method_get_font, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_font: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_font")
        return withUnsafePointer(to: &CharFXTransform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_font(_ font: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: font.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CharFXTransform.method_set_font, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}

