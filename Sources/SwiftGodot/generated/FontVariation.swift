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


/// A variation of a font with additional settings.
/// 
/// Provides OpenType variations, simulated bold / slant, and additional font settings like OpenType features and extra spacing.
/// 
/// To use simulated bold font variant:
/// 
/// To set the coordinate of multiple variation axes:
/// 
open class FontVariation: Font {
    private static var className = StringName("FontVariation")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Base font used to create a variation. If not set, default ``Theme`` font is used.
    final public var baseFont: Font? {
        get {
            return get_base_font ()
        }
        
        set {
            set_base_font (newValue)
        }
        
    }
    
    /// Font OpenType variation coordinates. More info: <a href="https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxisreg">OpenType variation tags</a>.
    /// 
    /// > Note: This ``VariantDictionary`` uses OpenType tags as keys. Variation axes can be identified both by tags (integer, e.g. `0x77678674`) and names (``String``, e.g. `wght`). Some axes might be accessible by multiple names. For example, `wght` refers to the same axis as `weight`. Tags on the other hand are unique. To convert between names and tags, use ``TextServer/nameToTag(name:)`` and ``TextServer/tagToName(tag:)``.
    /// 
    /// > Note: To get available variation axes of a font, use ``Font/getSupportedVariationList()``.
    /// 
    final public var variationOpentype: VariantDictionary {
        get {
            return get_variation_opentype ()
        }
        
        set {
            set_variation_opentype (newValue)
        }
        
    }
    
    /// Active face index in the TrueType / OpenType collection file.
    final public var variationFaceIndex: Int32 {
        get {
            return get_variation_face_index ()
        }
        
        set {
            set_variation_face_index (newValue)
        }
        
    }
    
    /// If is not equal to zero, emboldens the font outlines. Negative values reduce the outline thickness.
    /// 
    /// > Note: Emboldened fonts might have self-intersecting outlines, which will prevent MSDF fonts and ``TextMesh`` from working correctly.
    /// 
    final public var variationEmbolden: Double {
        get {
            return get_variation_embolden ()
        }
        
        set {
            set_variation_embolden (newValue)
        }
        
    }
    
    /// 2D transform, applied to the font outlines, can be used for slanting, flipping and rotating glyphs.
    /// 
    /// For example, to simulate italic typeface by slanting, apply the following transform `Transform2D(1.0, slant, 0.0, 1.0, 0.0, 0.0)`.
    /// 
    final public var variationTransform: Transform2D {
        get {
            return get_variation_transform ()
        }
        
        set {
            set_variation_transform (newValue)
        }
        
    }
    
    /// A set of OpenType feature tags. More info: <a href="https://docs.microsoft.com/en-us/typography/opentype/spec/featuretags">OpenType feature tags</a>.
    final public var opentypeFeatures: VariantDictionary {
        get {
            return getOpentypeFeatures ()
        }
        
        set {
            set_opentype_features (newValue)
        }
        
    }
    
    /// Extra spacing between graphical glyphs.
    final public var spacingGlyph: Int32 {
        get {
            return getSpacing (TextServer.SpacingType (rawValue: 0)!)
        }
        
        set {
            set_spacing (TextServer.SpacingType (rawValue: 0)!, newValue)
        }
        
    }
    
    /// Extra width of the space glyphs.
    final public var spacingSpace: Int32 {
        get {
            return getSpacing (TextServer.SpacingType (rawValue: 1)!)
        }
        
        set {
            set_spacing (TextServer.SpacingType (rawValue: 1)!, newValue)
        }
        
    }
    
    /// Extra spacing at the top of the line in pixels.
    final public var spacingTop: Int32 {
        get {
            return getSpacing (TextServer.SpacingType (rawValue: 2)!)
        }
        
        set {
            set_spacing (TextServer.SpacingType (rawValue: 2)!, newValue)
        }
        
    }
    
    /// Extra spacing at the bottom of the line in pixels.
    final public var spacingBottom: Int32 {
        get {
            return getSpacing (TextServer.SpacingType (rawValue: 3)!)
        }
        
        set {
            set_spacing (TextServer.SpacingType (rawValue: 3)!, newValue)
        }
        
    }
    
    /// Extra baseline offset (as a fraction of font height).
    final public var baselineOffset: Double {
        get {
            return get_baseline_offset ()
        }
        
        set {
            set_baseline_offset (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_base_font: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_base_font")
        return withUnsafePointer(to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1262170328)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_base_font(_ font: Font?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: font?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FontVariation.method_set_base_font, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_base_font: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_base_font")
        return withUnsafePointer(to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3229501585)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_base_font() -> Font? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(FontVariation.method_get_base_font, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_variation_opentype: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_variation_opentype")
        return withUnsafePointer(to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155329257)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_variation_opentype(_ coords: VariantDictionary) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: coords.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FontVariation.method_set_variation_opentype, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_variation_opentype: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_variation_opentype")
        return withUnsafePointer(to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3102165223)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_variation_opentype() -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        gi.object_method_bind_ptrcall(FontVariation.method_get_variation_opentype, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_variation_embolden: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_variation_embolden")
        return withUnsafePointer(to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_variation_embolden(_ strength: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: strength) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FontVariation.method_set_variation_embolden, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_variation_embolden: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_variation_embolden")
        return withUnsafePointer(to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_variation_embolden() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(FontVariation.method_get_variation_embolden, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_variation_face_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_variation_face_index")
        return withUnsafePointer(to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_variation_face_index(_ faceIndex: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: faceIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FontVariation.method_set_variation_face_index, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_variation_face_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_variation_face_index")
        return withUnsafePointer(to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_variation_face_index() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(FontVariation.method_get_variation_face_index, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_variation_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_variation_transform")
        return withUnsafePointer(to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2761652528)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_variation_transform(_ transform: Transform2D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: transform) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FontVariation.method_set_variation_transform, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_variation_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_variation_transform")
        return withUnsafePointer(to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3814499831)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_variation_transform() -> Transform2D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform2D = Transform2D ()
        gi.object_method_bind_ptrcall(FontVariation.method_get_variation_transform, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_opentype_features: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_opentype_features")
        return withUnsafePointer(to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155329257)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_opentype_features(_ features: VariantDictionary) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: features.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FontVariation.method_set_opentype_features, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_spacing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_spacing")
        return withUnsafePointer(to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3122339690)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the spacing for `spacing` (see ``TextServer.SpacingType``) to `value` in pixels (not relative to the font size).
    fileprivate final func set_spacing(_ spacing: TextServer.SpacingType, _ value: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: spacing.rawValue) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(FontVariation.method_set_spacing, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_baseline_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_baseline_offset")
        return withUnsafePointer(to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_baseline_offset(_ baselineOffset: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: baselineOffset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FontVariation.method_set_baseline_offset, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_baseline_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_baseline_offset")
        return withUnsafePointer(to: &FontVariation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_baseline_offset() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(FontVariation.method_get_baseline_offset, handle, nil, &_result)
        return _result
    }
    
}

