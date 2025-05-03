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


/// A texture-based nine-patch ``StyleBox``.
/// 
/// A texture-based nine-patch ``StyleBox``, in a way similar to ``NinePatchRect``. This stylebox performs a 3×3 scaling of a texture, where only the center cell is fully stretched. This makes it possible to design bordered styles regardless of the stylebox's size.
open class StyleBoxTexture: StyleBox {
    private static var className = StringName("StyleBoxTexture")
    override open class var godotClassName: StringName { className }
    public enum AxisStretchMode: Int64, CaseIterable {
        /// Stretch the stylebox's texture. This results in visible distortion unless the texture size matches the stylebox's size perfectly.
        case stretch = 0 // AXIS_STRETCH_MODE_STRETCH
        /// Repeats the stylebox's texture to match the stylebox's size according to the nine-patch system.
        case tile = 1 // AXIS_STRETCH_MODE_TILE
        /// Repeats the stylebox's texture to match the stylebox's size according to the nine-patch system. Unlike ``AxisStretchMode/tile``, the texture may be slightly stretched to make the nine-patch texture tile seamlessly.
        case tileFit = 2 // AXIS_STRETCH_MODE_TILE_FIT
    }
    
    
    /* Properties */
    
    /// The texture to use when drawing this style box.
    final public var texture: Texture2D? {
        get {
            return get_texture ()
        }
        
        set {
            set_texture (newValue)
        }
        
    }
    
    /// Increases the left margin of the 3×3 texture box.
    /// 
    /// A higher value means more of the source texture is considered to be part of the left border of the 3×3 box.
    /// 
    /// This is also the value used as fallback for ``StyleBox/contentMarginLeft`` if it is negative.
    /// 
    final public var textureMarginLeft: Double {
        get {
            return get_texture_margin (Side (rawValue: 0)!)
        }
        
        set {
            set_texture_margin (Side (rawValue: 0)!, newValue)
        }
        
    }
    
    /// Increases the top margin of the 3×3 texture box.
    /// 
    /// A higher value means more of the source texture is considered to be part of the top border of the 3×3 box.
    /// 
    /// This is also the value used as fallback for ``StyleBox/contentMarginTop`` if it is negative.
    /// 
    final public var textureMarginTop: Double {
        get {
            return get_texture_margin (Side (rawValue: 1)!)
        }
        
        set {
            set_texture_margin (Side (rawValue: 1)!, newValue)
        }
        
    }
    
    /// Increases the right margin of the 3×3 texture box.
    /// 
    /// A higher value means more of the source texture is considered to be part of the right border of the 3×3 box.
    /// 
    /// This is also the value used as fallback for ``StyleBox/contentMarginRight`` if it is negative.
    /// 
    final public var textureMarginRight: Double {
        get {
            return get_texture_margin (Side (rawValue: 2)!)
        }
        
        set {
            set_texture_margin (Side (rawValue: 2)!, newValue)
        }
        
    }
    
    /// Increases the bottom margin of the 3×3 texture box.
    /// 
    /// A higher value means more of the source texture is considered to be part of the bottom border of the 3×3 box.
    /// 
    /// This is also the value used as fallback for ``StyleBox/contentMarginBottom`` if it is negative.
    /// 
    final public var textureMarginBottom: Double {
        get {
            return get_texture_margin (Side (rawValue: 3)!)
        }
        
        set {
            set_texture_margin (Side (rawValue: 3)!, newValue)
        }
        
    }
    
    /// Expands the left margin of this style box when drawing, causing it to be drawn larger than requested.
    final public var expandMarginLeft: Double {
        get {
            return get_expand_margin (Side (rawValue: 0)!)
        }
        
        set {
            set_expand_margin (Side (rawValue: 0)!, newValue)
        }
        
    }
    
    /// Expands the top margin of this style box when drawing, causing it to be drawn larger than requested.
    final public var expandMarginTop: Double {
        get {
            return get_expand_margin (Side (rawValue: 1)!)
        }
        
        set {
            set_expand_margin (Side (rawValue: 1)!, newValue)
        }
        
    }
    
    /// Expands the right margin of this style box when drawing, causing it to be drawn larger than requested.
    final public var expandMarginRight: Double {
        get {
            return get_expand_margin (Side (rawValue: 2)!)
        }
        
        set {
            set_expand_margin (Side (rawValue: 2)!, newValue)
        }
        
    }
    
    /// Expands the bottom margin of this style box when drawing, causing it to be drawn larger than requested.
    final public var expandMarginBottom: Double {
        get {
            return get_expand_margin (Side (rawValue: 3)!)
        }
        
        set {
            set_expand_margin (Side (rawValue: 3)!, newValue)
        }
        
    }
    
    /// Controls how the stylebox's texture will be stretched or tiled horizontally. See ``StyleBoxTexture/AxisStretchMode`` for possible values.
    final public var axisStretchHorizontal: StyleBoxTexture.AxisStretchMode {
        get {
            return get_h_axis_stretch_mode ()
        }
        
        set {
            set_h_axis_stretch_mode (newValue)
        }
        
    }
    
    /// Controls how the stylebox's texture will be stretched or tiled vertically. See ``StyleBoxTexture/AxisStretchMode`` for possible values.
    final public var axisStretchVertical: StyleBoxTexture.AxisStretchMode {
        get {
            return get_v_axis_stretch_mode ()
        }
        
        set {
            set_v_axis_stretch_mode (newValue)
        }
        
    }
    
    /// The region to use from the ``texture``.
    /// 
    /// This is equivalent to first wrapping the ``texture`` in an ``AtlasTexture`` with the same region.
    /// 
    /// If empty (`Rect2(0, 0, 0, 0)`), the whole ``texture`` is used.
    /// 
    final public var regionRect: Rect2 {
        get {
            return get_region_rect ()
        }
        
        set {
            set_region_rect (newValue)
        }
        
    }
    
    /// Modulates the color of the texture when this style box is drawn.
    final public var modulateColor: Color {
        get {
            return get_modulate ()
        }
        
        set {
            set_modulate (newValue)
        }
        
    }
    
    /// If `true`, the nine-patch texture's center tile will be drawn.
    final public var drawCenter: Bool {
        get {
            return is_draw_center_enabled ()
        }
        
        set {
            set_draw_center (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_texture")
        return withUnsafePointer(to: &StyleBoxTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4051416890)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture(_ texture: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: texture?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StyleBoxTexture.method_set_texture, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture")
        return withUnsafePointer(to: &StyleBoxTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture() -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(StyleBoxTexture.method_get_texture, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_texture_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_texture_margin")
        return withUnsafePointer(to: &StyleBoxTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4290182280)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the margin to `size` pixels for the specified ``Side``.
    fileprivate final func set_texture_margin(_ margin: Side, _ size: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: margin.rawValue) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(StyleBoxTexture.method_set_texture_margin, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_texture_margin_all: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_texture_margin_all")
        return withUnsafePointer(to: &StyleBoxTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Sets the margin to `size` pixels for all sides.
    public final func setTextureMarginAll(size: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StyleBoxTexture.method_set_texture_margin_all, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_texture_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture_margin")
        return withUnsafePointer(to: &StyleBoxTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2869120046)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns the margin size of the specified ``Side``.
    fileprivate final func get_texture_margin(_ margin: Side) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: margin.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StyleBoxTexture.method_get_texture_margin, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_expand_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_expand_margin")
        return withUnsafePointer(to: &StyleBoxTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4290182280)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the expand margin to `size` pixels for the specified ``Side``.
    fileprivate final func set_expand_margin(_ margin: Side, _ size: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: margin.rawValue) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(StyleBoxTexture.method_set_expand_margin, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_expand_margin_all: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_expand_margin_all")
        return withUnsafePointer(to: &StyleBoxTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Sets the expand margin to `size` pixels for all sides.
    public final func setExpandMarginAll(size: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StyleBoxTexture.method_set_expand_margin_all, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_expand_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_expand_margin")
        return withUnsafePointer(to: &StyleBoxTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2869120046)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns the expand margin size of the specified ``Side``.
    fileprivate final func get_expand_margin(_ margin: Side) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: margin.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StyleBoxTexture.method_get_expand_margin, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_region_rect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_region_rect")
        return withUnsafePointer(to: &StyleBoxTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2046264180)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_region_rect(_ region: Rect2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: region) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StyleBoxTexture.method_set_region_rect, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_region_rect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_region_rect")
        return withUnsafePointer(to: &StyleBoxTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1639390495)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_region_rect() -> Rect2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Rect2 = Rect2 ()
        gi.object_method_bind_ptrcall(StyleBoxTexture.method_get_region_rect, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_draw_center: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_draw_center")
        return withUnsafePointer(to: &StyleBoxTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_draw_center(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StyleBoxTexture.method_set_draw_center, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_draw_center_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_draw_center_enabled")
        return withUnsafePointer(to: &StyleBoxTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_draw_center_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(StyleBoxTexture.method_is_draw_center_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_modulate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_modulate")
        return withUnsafePointer(to: &StyleBoxTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_modulate(_ color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StyleBoxTexture.method_set_modulate, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_modulate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_modulate")
        return withUnsafePointer(to: &StyleBoxTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_modulate() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(StyleBoxTexture.method_get_modulate, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_h_axis_stretch_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_h_axis_stretch_mode")
        return withUnsafePointer(to: &StyleBoxTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2965538783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_h_axis_stretch_mode(_ mode: StyleBoxTexture.AxisStretchMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StyleBoxTexture.method_set_h_axis_stretch_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_h_axis_stretch_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_h_axis_stretch_mode")
        return withUnsafePointer(to: &StyleBoxTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3807744063)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_h_axis_stretch_mode() -> StyleBoxTexture.AxisStretchMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(StyleBoxTexture.method_get_h_axis_stretch_mode, handle, nil, &_result)
        return StyleBoxTexture.AxisStretchMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_v_axis_stretch_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_v_axis_stretch_mode")
        return withUnsafePointer(to: &StyleBoxTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2965538783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_v_axis_stretch_mode(_ mode: StyleBoxTexture.AxisStretchMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StyleBoxTexture.method_set_v_axis_stretch_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_v_axis_stretch_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_v_axis_stretch_mode")
        return withUnsafePointer(to: &StyleBoxTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3807744063)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_v_axis_stretch_mode() -> StyleBoxTexture.AxisStretchMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(StyleBoxTexture.method_get_v_axis_stretch_mode, handle, nil, &_result)
        return StyleBoxTexture.AxisStretchMode (rawValue: _result)!
    }
    
}

