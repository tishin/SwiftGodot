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


/// Provides common settings to customize the text in a ``Label``.
/// 
/// ``LabelSettings`` is a resource that provides common settings to customize the text in a ``Label``. It will take priority over the properties defined in ``Control/theme``. The resource can be shared between multiple labels and changed on the fly, so it's convenient and flexible way to setup text style.
open class LabelSettings: Resource {
    private static var className = StringName("LabelSettings")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Additional vertical spacing between lines (in pixels), spacing is added to line descent. This value can be negative.
    final public var lineSpacing: Double {
        get {
            return get_line_spacing ()
        }
        
        set {
            set_line_spacing (newValue)
        }
        
    }
    
    /// Vertical space between paragraphs. Added on top of ``lineSpacing``.
    final public var paragraphSpacing: Double {
        get {
            return get_paragraph_spacing ()
        }
        
        set {
            set_paragraph_spacing (newValue)
        }
        
    }
    
    /// ``Font`` used for the text.
    final public var font: Font? {
        get {
            return get_font ()
        }
        
        set {
            set_font (newValue)
        }
        
    }
    
    /// Size of the text.
    final public var fontSize: Int32 {
        get {
            return get_font_size ()
        }
        
        set {
            set_font_size (newValue)
        }
        
    }
    
    /// Color of the text.
    final public var fontColor: Color {
        get {
            return get_font_color ()
        }
        
        set {
            set_font_color (newValue)
        }
        
    }
    
    /// Text outline size.
    final public var outlineSize: Int32 {
        get {
            return get_outline_size ()
        }
        
        set {
            set_outline_size (newValue)
        }
        
    }
    
    /// The color of the outline.
    final public var outlineColor: Color {
        get {
            return get_outline_color ()
        }
        
        set {
            set_outline_color (newValue)
        }
        
    }
    
    /// Size of the shadow effect.
    final public var shadowSize: Int32 {
        get {
            return get_shadow_size ()
        }
        
        set {
            set_shadow_size (newValue)
        }
        
    }
    
    /// Color of the shadow effect. If alpha is `0`, no shadow will be drawn.
    final public var shadowColor: Color {
        get {
            return get_shadow_color ()
        }
        
        set {
            set_shadow_color (newValue)
        }
        
    }
    
    /// Offset of the shadow effect, in pixels.
    final public var shadowOffset: Vector2 {
        get {
            return get_shadow_offset ()
        }
        
        set {
            set_shadow_offset (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_line_spacing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_line_spacing")
        return withUnsafePointer(to: &LabelSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_line_spacing(_ spacing: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: spacing) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LabelSettings.method_set_line_spacing, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_line_spacing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_spacing")
        return withUnsafePointer(to: &LabelSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_line_spacing() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(LabelSettings.method_get_line_spacing, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_paragraph_spacing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_paragraph_spacing")
        return withUnsafePointer(to: &LabelSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_paragraph_spacing(_ spacing: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: spacing) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LabelSettings.method_set_paragraph_spacing, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_paragraph_spacing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_paragraph_spacing")
        return withUnsafePointer(to: &LabelSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_paragraph_spacing() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(LabelSettings.method_get_paragraph_spacing, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_font: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_font")
        return withUnsafePointer(to: &LabelSettings.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(LabelSettings.method_set_font, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_font: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_font")
        return withUnsafePointer(to: &LabelSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3229501585)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_font() -> Font? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(LabelSettings.method_get_font, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_font_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_font_size")
        return withUnsafePointer(to: &LabelSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_font_size(_ size: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LabelSettings.method_set_font_size, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_font_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_font_size")
        return withUnsafePointer(to: &LabelSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_font_size() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(LabelSettings.method_get_font_size, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_font_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_font_color")
        return withUnsafePointer(to: &LabelSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_font_color(_ color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LabelSettings.method_set_font_color, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_font_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_font_color")
        return withUnsafePointer(to: &LabelSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_font_color() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(LabelSettings.method_get_font_color, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_outline_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_outline_size")
        return withUnsafePointer(to: &LabelSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_outline_size(_ size: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LabelSettings.method_set_outline_size, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_outline_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_outline_size")
        return withUnsafePointer(to: &LabelSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_outline_size() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(LabelSettings.method_get_outline_size, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_outline_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_outline_color")
        return withUnsafePointer(to: &LabelSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_outline_color(_ color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LabelSettings.method_set_outline_color, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_outline_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_outline_color")
        return withUnsafePointer(to: &LabelSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_outline_color() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(LabelSettings.method_get_outline_color, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_shadow_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_shadow_size")
        return withUnsafePointer(to: &LabelSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shadow_size(_ size: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LabelSettings.method_set_shadow_size, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_shadow_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_shadow_size")
        return withUnsafePointer(to: &LabelSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_shadow_size() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(LabelSettings.method_get_shadow_size, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_shadow_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_shadow_color")
        return withUnsafePointer(to: &LabelSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shadow_color(_ color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LabelSettings.method_set_shadow_color, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_shadow_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_shadow_color")
        return withUnsafePointer(to: &LabelSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_shadow_color() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(LabelSettings.method_get_shadow_color, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_shadow_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_shadow_offset")
        return withUnsafePointer(to: &LabelSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shadow_offset(_ offset: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LabelSettings.method_set_shadow_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_shadow_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_shadow_offset")
        return withUnsafePointer(to: &LabelSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_shadow_offset() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(LabelSettings.method_get_shadow_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

