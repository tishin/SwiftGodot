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


/// Abstract base class for fonts and font variations.
/// 
/// Abstract base class for different font types. It has methods for drawing text and font character introspection.
open class Font: Resource {
    private static var className = StringName("Font")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Array of fallback ``Font``s to use as a substitute if a glyph is not found in this current ``Font``.
    /// 
    /// If this array is empty in a ``FontVariation``, the ``FontVariation/baseFont``'s fallbacks are used instead.
    /// 
    final public var fallbacks: TypedArray<Font?> {
        get {
            return get_fallbacks ()
        }
        
        set {
            set_fallbacks (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_fallbacks: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_fallbacks")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fallbacks(_ fallbacks: TypedArray<Font?>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fallbacks.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Font.method_set_fallbacks, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_fallbacks: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_fallbacks")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fallbacks() -> TypedArray<Font?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(Font.method_get_fallbacks, handle, nil, &_result)
        return TypedArray<Font?>(takingOver: _result)
    }
    
    fileprivate static let method_find_variation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("find_variation")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2553855095)!
            }
            
        }
        
    }()
    
    /// Returns ``TextServer`` RID of the font cache for specific variation.
    public final func findVariation(variationCoordinates: VariantDictionary, faceIndex: Int32 = 0, strength: Double = 0.0, transform: Transform2D = Transform2D (xAxis: Vector2 (x: 1, y: 0), yAxis: Vector2 (x: 0, y: 1), origin: Vector2 (x: 0, y: 0)), spacingTop: Int32 = 0, spacingBottom: Int32 = 0, spacingSpace: Int32 = 0, spacingGlyph: Int32 = 0, baselineOffset: Double = 0.0) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: variationCoordinates.content) { pArg0 in
            withUnsafePointer(to: faceIndex) { pArg1 in
                withUnsafePointer(to: strength) { pArg2 in
                    withUnsafePointer(to: transform) { pArg3 in
                        withUnsafePointer(to: spacingTop) { pArg4 in
                            withUnsafePointer(to: spacingBottom) { pArg5 in
                                withUnsafePointer(to: spacingSpace) { pArg6 in
                                    withUnsafePointer(to: spacingGlyph) { pArg7 in
                                        withUnsafePointer(to: baselineOffset) { pArg8 in
                                            withUnsafePointer(to: UnsafeRawPointersN9(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6, pArg7, pArg8)) { pArgs in
                                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 9) { pArgs in
                                                    gi.object_method_bind_ptrcall(Font.method_find_variation, handle, pArgs, &_result.content)
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_rids: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_rids")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns ``VariantArray`` of valid ``Font`` ``RID``s, which can be passed to the ``TextServer`` methods.
    public final func getRids() -> TypedArray<RID> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(Font.method_get_rids, handle, nil, &_result)
        return TypedArray<RID>(takingOver: _result)
    }
    
    fileprivate static let method_get_height: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_height")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 378113874)!
            }
            
        }
        
    }()
    
    /// Returns the total average font height (ascent plus descent) in pixels.
    /// 
    /// > Note: Real height of the string is context-dependent and can be significantly different from the value returned by this function. Use it only as rough estimate (e.g. as the height of empty line).
    /// 
    public final func getHeight(fontSize: Int32 = 16) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: fontSize) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Font.method_get_height, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_ascent: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_ascent")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 378113874)!
            }
            
        }
        
    }()
    
    /// Returns the average font ascent (number of pixels above the baseline).
    /// 
    /// > Note: Real ascent of the string is context-dependent and can be significantly different from the value returned by this function. Use it only as rough estimate (e.g. as the ascent of empty line).
    /// 
    public final func getAscent(fontSize: Int32 = 16) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: fontSize) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Font.method_get_ascent, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_descent: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_descent")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 378113874)!
            }
            
        }
        
    }()
    
    /// Returns the average font descent (number of pixels below the baseline).
    /// 
    /// > Note: Real descent of the string is context-dependent and can be significantly different from the value returned by this function. Use it only as rough estimate (e.g. as the descent of empty line).
    /// 
    public final func getDescent(fontSize: Int32 = 16) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: fontSize) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Font.method_get_descent, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_underline_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_underline_position")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 378113874)!
            }
            
        }
        
    }()
    
    /// Returns average pixel offset of the underline below the baseline.
    /// 
    /// > Note: Real underline position of the string is context-dependent and can be significantly different from the value returned by this function. Use it only as rough estimate.
    /// 
    public final func getUnderlinePosition(fontSize: Int32 = 16) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: fontSize) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Font.method_get_underline_position, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_underline_thickness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_underline_thickness")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 378113874)!
            }
            
        }
        
    }()
    
    /// Returns average thickness of the underline.
    /// 
    /// > Note: Real underline thickness of the string is context-dependent and can be significantly different from the value returned by this function. Use it only as rough estimate.
    /// 
    public final func getUnderlineThickness(fontSize: Int32 = 16) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: fontSize) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Font.method_get_underline_thickness, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_font_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_font_name")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns font family name.
    public final func getFontName() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(Font.method_get_font_name, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_font_style_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_font_style_name")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns font style name.
    public final func getFontStyleName() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(Font.method_get_font_style_name, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_ot_name_strings: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_ot_name_strings")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3102165223)!
            }
            
        }
        
    }()
    
    /// Returns ``VariantDictionary`` with OpenType font name strings (localized font names, version, description, license information, sample text, etc.).
    public final func getOtNameStrings() -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        gi.object_method_bind_ptrcall(Font.method_get_ot_name_strings, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_font_style: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_font_style")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2520224254)!
            }
            
        }
        
    }()
    
    /// Returns font style flags, see ``TextServer.FontStyle``.
    public final func getFontStyle() -> TextServer.FontStyle {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: TextServer.FontStyle = TextServer.FontStyle ()
        gi.object_method_bind_ptrcall(Font.method_get_font_style, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_font_weight: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_font_weight")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns weight (boldness) of the font. A value in the `100...999` range, normal font weight is `400`, bold font weight is `700`.
    public final func getFontWeight() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Font.method_get_font_weight, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_font_stretch: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_font_stretch")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns font stretch amount, compared to a normal width. A percentage value between `50%` and `200%`.
    public final func getFontStretch() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Font.method_get_font_stretch, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_spacing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_spacing")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1310880908)!
            }
            
        }
        
    }()
    
    /// Returns the spacing for the given `type` (see ``TextServer.SpacingType``).
    public final func getSpacing(_ spacing: TextServer.SpacingType) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: spacing.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Font.method_get_spacing, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_opentype_features: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_opentype_features")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3102165223)!
            }
            
        }
        
    }()
    
    /// Returns a set of OpenType feature tags. More info: <a href="https://docs.microsoft.com/en-us/typography/opentype/spec/featuretags">OpenType feature tags</a>.
    public final func getOpentypeFeatures() -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        gi.object_method_bind_ptrcall(Font.method_get_opentype_features, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_cache_capacity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_cache_capacity")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Sets LRU cache capacity for `draw_*` methods.
    public final func setCacheCapacity(singleLine: Int32, multiLine: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: singleLine) { pArg0 in
            withUnsafePointer(to: multiLine) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Font.method_set_cache_capacity, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_string_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_string_size")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1868866121)!
            }
            
        }
        
    }()
    
    /// Returns the size of a bounding box of a single-line string, taking kerning, advance and subpixel positioning into account. See also ``getMultilineStringSize(text:alignment:width:fontSize:maxLines:brkFlags:justificationFlags:direction:orientation:)`` and ``drawString(canvasItem:pos:text:alignment:width:fontSize:modulate:justificationFlags:direction:orientation:)``.
    /// 
    /// For example, to get the string size as displayed by a single-line Label, use:
    /// 
    /// > Note: Since kerning, advance and subpixel positioning are taken into account by ``getStringSize(text:alignment:width:fontSize:justificationFlags:direction:orientation:)``, using separate ``getStringSize(text:alignment:width:fontSize:justificationFlags:direction:orientation:)`` calls on substrings of a string then adding the results together will return a different result compared to using a single ``getStringSize(text:alignment:width:fontSize:justificationFlags:direction:orientation:)`` call on the full string.
    /// 
    /// > Note: Real height of the string is context-dependent and can be significantly different from the value returned by ``getHeight(fontSize:)``.
    /// 
    public final func getStringSize(text: String, alignment: HorizontalAlignment = .left, width: Double = -1, fontSize: Int32 = 16, justificationFlags: TextServer.JustificationFlag = [.kashida, .wordBound], direction: TextServer.Direction = .auto, orientation: TextServer.Orientation = .horizontal) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        let text = GString(text)
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: alignment.rawValue) { pArg1 in
                withUnsafePointer(to: width) { pArg2 in
                    withUnsafePointer(to: fontSize) { pArg3 in
                        withUnsafePointer(to: justificationFlags.rawValue) { pArg4 in
                            withUnsafePointer(to: direction.rawValue) { pArg5 in
                                withUnsafePointer(to: orientation.rawValue) { pArg6 in
                                    withUnsafePointer(to: UnsafeRawPointersN7(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6)) { pArgs in
                                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 7) { pArgs in
                                            gi.object_method_bind_ptrcall(Font.method_get_string_size, handle, pArgs, &_result)
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_multiline_string_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_multiline_string_size")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 519636710)!
            }
            
        }
        
    }()
    
    /// Returns the size of a bounding box of a string broken into the lines, taking kerning and advance into account.
    /// 
    /// See also ``drawMultilineString(canvasItem:pos:text:alignment:width:fontSize:maxLines:modulate:brkFlags:justificationFlags:direction:orientation:)``.
    /// 
    public final func getMultilineStringSize(text: String, alignment: HorizontalAlignment = .left, width: Double = -1, fontSize: Int32 = 16, maxLines: Int32 = -1, brkFlags: TextServer.LineBreakFlag = [.mandatory, .wordBound], justificationFlags: TextServer.JustificationFlag = [.kashida, .wordBound], direction: TextServer.Direction = .auto, orientation: TextServer.Orientation = .horizontal) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        let text = GString(text)
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: alignment.rawValue) { pArg1 in
                withUnsafePointer(to: width) { pArg2 in
                    withUnsafePointer(to: fontSize) { pArg3 in
                        withUnsafePointer(to: maxLines) { pArg4 in
                            withUnsafePointer(to: brkFlags.rawValue) { pArg5 in
                                withUnsafePointer(to: justificationFlags.rawValue) { pArg6 in
                                    withUnsafePointer(to: direction.rawValue) { pArg7 in
                                        withUnsafePointer(to: orientation.rawValue) { pArg8 in
                                            withUnsafePointer(to: UnsafeRawPointersN9(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6, pArg7, pArg8)) { pArgs in
                                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 9) { pArgs in
                                                    gi.object_method_bind_ptrcall(Font.method_get_multiline_string_size, handle, pArgs, &_result)
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_draw_string: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_string")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1983721962)!
            }
            
        }
        
    }()
    
    /// Draw `text` into a canvas item using the font, at a given position, with `modulate` color, optionally clipping the width and aligning horizontally. `pos` specifies the baseline, not the top. To draw from the top, _ascent_ must be added to the Y axis.
    /// 
    /// See also ``CanvasItem/drawString(font:pos:text:alignment:width:fontSize:modulate:justificationFlags:direction:orientation:)``.
    /// 
    public final func drawString(canvasItem: RID, pos: Vector2, text: String, alignment: HorizontalAlignment = .left, width: Double = -1, fontSize: Int32 = 16, modulate: Color = Color (r: 1, g: 1, b: 1, a: 1), justificationFlags: TextServer.JustificationFlag = [.kashida, .wordBound], direction: TextServer.Direction = .auto, orientation: TextServer.Orientation = .horizontal) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: canvasItem.content) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                let text = GString(text)
                withUnsafePointer(to: text.content) { pArg2 in
                    withUnsafePointer(to: alignment.rawValue) { pArg3 in
                        withUnsafePointer(to: width) { pArg4 in
                            withUnsafePointer(to: fontSize) { pArg5 in
                                withUnsafePointer(to: modulate) { pArg6 in
                                    withUnsafePointer(to: justificationFlags.rawValue) { pArg7 in
                                        withUnsafePointer(to: direction.rawValue) { pArg8 in
                                            withUnsafePointer(to: orientation.rawValue) { pArg9 in
                                                withUnsafePointer(to: UnsafeRawPointersN10(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6, pArg7, pArg8, pArg9)) { pArgs in
                                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 10) { pArgs in
                                                        gi.object_method_bind_ptrcall(Font.method_draw_string, handle, pArgs, nil)
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_multiline_string: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_multiline_string")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1171506176)!
            }
            
        }
        
    }()
    
    /// Breaks `text` into lines using rules specified by `brkFlags` and draws it into a canvas item using the font, at a given position, with `modulate` color, optionally clipping the width and aligning horizontally. `pos` specifies the baseline of the first line, not the top. To draw from the top, _ascent_ must be added to the Y axis.
    /// 
    /// See also ``CanvasItem/drawMultilineString(font:pos:text:alignment:width:fontSize:maxLines:modulate:brkFlags:justificationFlags:direction:orientation:)``.
    /// 
    public final func drawMultilineString(canvasItem: RID, pos: Vector2, text: String, alignment: HorizontalAlignment = .left, width: Double = -1, fontSize: Int32 = 16, maxLines: Int32 = -1, modulate: Color = Color (r: 1, g: 1, b: 1, a: 1), brkFlags: TextServer.LineBreakFlag = [.mandatory, .wordBound], justificationFlags: TextServer.JustificationFlag = [.kashida, .wordBound], direction: TextServer.Direction = .auto, orientation: TextServer.Orientation = .horizontal) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: canvasItem.content) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                let text = GString(text)
                withUnsafePointer(to: text.content) { pArg2 in
                    withUnsafePointer(to: alignment.rawValue) { pArg3 in
                        withUnsafePointer(to: width) { pArg4 in
                            withUnsafePointer(to: fontSize) { pArg5 in
                                withUnsafePointer(to: maxLines) { pArg6 in
                                    withUnsafePointer(to: modulate) { pArg7 in
                                        withUnsafePointer(to: brkFlags.rawValue) { pArg8 in
                                            withUnsafePointer(to: justificationFlags.rawValue) { pArg9 in
                                                withUnsafePointer(to: direction.rawValue) { pArg10 in
                                                    withUnsafePointer(to: orientation.rawValue) { pArg11 in
                                                        withUnsafePointer(to: UnsafeRawPointersN12(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6, pArg7, pArg8, pArg9, pArg10, pArg11)) { pArgs in
                                                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 12) { pArgs in
                                                                gi.object_method_bind_ptrcall(Font.method_draw_multiline_string, handle, pArgs, nil)
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_string_outline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_string_outline")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 623754045)!
            }
            
        }
        
    }()
    
    /// Draw `text` outline into a canvas item using the font, at a given position, with `modulate` color and `size` outline size, optionally clipping the width and aligning horizontally. `pos` specifies the baseline, not the top. To draw from the top, _ascent_ must be added to the Y axis.
    /// 
    /// See also ``CanvasItem/drawStringOutline(font:pos:text:alignment:width:fontSize:size:modulate:justificationFlags:direction:orientation:)``.
    /// 
    public final func drawStringOutline(canvasItem: RID, pos: Vector2, text: String, alignment: HorizontalAlignment = .left, width: Double = -1, fontSize: Int32 = 16, size: Int32 = 1, modulate: Color = Color (r: 1, g: 1, b: 1, a: 1), justificationFlags: TextServer.JustificationFlag = [.kashida, .wordBound], direction: TextServer.Direction = .auto, orientation: TextServer.Orientation = .horizontal) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: canvasItem.content) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                let text = GString(text)
                withUnsafePointer(to: text.content) { pArg2 in
                    withUnsafePointer(to: alignment.rawValue) { pArg3 in
                        withUnsafePointer(to: width) { pArg4 in
                            withUnsafePointer(to: fontSize) { pArg5 in
                                withUnsafePointer(to: size) { pArg6 in
                                    withUnsafePointer(to: modulate) { pArg7 in
                                        withUnsafePointer(to: justificationFlags.rawValue) { pArg8 in
                                            withUnsafePointer(to: direction.rawValue) { pArg9 in
                                                withUnsafePointer(to: orientation.rawValue) { pArg10 in
                                                    withUnsafePointer(to: UnsafeRawPointersN11(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6, pArg7, pArg8, pArg9, pArg10)) { pArgs in
                                                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 11) { pArgs in
                                                            gi.object_method_bind_ptrcall(Font.method_draw_string_outline, handle, pArgs, nil)
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_multiline_string_outline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_multiline_string_outline")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3206388178)!
            }
            
        }
        
    }()
    
    /// Breaks `text` to the lines using rules specified by `brkFlags` and draws text outline into a canvas item using the font, at a given position, with `modulate` color and `size` outline size, optionally clipping the width and aligning horizontally. `pos` specifies the baseline of the first line, not the top. To draw from the top, _ascent_ must be added to the Y axis.
    /// 
    /// See also ``CanvasItem/drawMultilineStringOutline(font:pos:text:alignment:width:fontSize:maxLines:size:modulate:brkFlags:justificationFlags:direction:orientation:)``.
    /// 
    public final func drawMultilineStringOutline(canvasItem: RID, pos: Vector2, text: String, alignment: HorizontalAlignment = .left, width: Double = -1, fontSize: Int32 = 16, maxLines: Int32 = -1, size: Int32 = 1, modulate: Color = Color (r: 1, g: 1, b: 1, a: 1), brkFlags: TextServer.LineBreakFlag = [.mandatory, .wordBound], justificationFlags: TextServer.JustificationFlag = [.kashida, .wordBound], direction: TextServer.Direction = .auto, orientation: TextServer.Orientation = .horizontal) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: canvasItem.content) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                let text = GString(text)
                withUnsafePointer(to: text.content) { pArg2 in
                    withUnsafePointer(to: alignment.rawValue) { pArg3 in
                        withUnsafePointer(to: width) { pArg4 in
                            withUnsafePointer(to: fontSize) { pArg5 in
                                withUnsafePointer(to: maxLines) { pArg6 in
                                    withUnsafePointer(to: size) { pArg7 in
                                        withUnsafePointer(to: modulate) { pArg8 in
                                            withUnsafePointer(to: brkFlags.rawValue) { pArg9 in
                                                withUnsafePointer(to: justificationFlags.rawValue) { pArg10 in
                                                    withUnsafePointer(to: direction.rawValue) { pArg11 in
                                                        withUnsafePointer(to: orientation.rawValue) { pArg12 in
                                                            withUnsafePointer(to: UnsafeRawPointersN13(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6, pArg7, pArg8, pArg9, pArg10, pArg11, pArg12)) { pArgs in
                                                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 13) { pArgs in
                                                                    gi.object_method_bind_ptrcall(Font.method_draw_multiline_string_outline, handle, pArgs, nil)
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_char_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_char_size")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3016396712)!
            }
            
        }
        
    }()
    
    /// Returns the size of a character. Does not take kerning into account.
    /// 
    /// > Note: Do not use this function to calculate width of the string character by character, use ``getStringSize(text:alignment:width:fontSize:justificationFlags:direction:orientation:)`` or ``TextLine`` instead. The height returned is the font height (see also ``getHeight(fontSize:)``) and has no relation to the glyph height.
    /// 
    public final func getCharSize(char: Int32, fontSize: Int32) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: char) { pArg0 in
            withUnsafePointer(to: fontSize) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Font.method_get_char_size, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_draw_char: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_char")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3815617597)!
            }
            
        }
        
    }()
    
    /// Draw a single Unicode character `char` into a canvas item using the font, at a given position, with `modulate` color. `pos` specifies the baseline, not the top. To draw from the top, _ascent_ must be added to the Y axis.
    /// 
    /// > Note: Do not use this function to draw strings character by character, use ``drawString(canvasItem:pos:text:alignment:width:fontSize:modulate:justificationFlags:direction:orientation:)`` or ``TextLine`` instead.
    /// 
    public final func drawChar(canvasItem: RID, pos: Vector2, char: Int32, fontSize: Int32, modulate: Color = Color (r: 1, g: 1, b: 1, a: 1)) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: canvasItem.content) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                withUnsafePointer(to: char) { pArg2 in
                    withUnsafePointer(to: fontSize) { pArg3 in
                        withUnsafePointer(to: modulate) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(Font.method_draw_char, handle, pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_draw_char_outline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_char_outline")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 209525354)!
            }
            
        }
        
    }()
    
    /// Draw a single Unicode character `char` outline into a canvas item using the font, at a given position, with `modulate` color and `size` outline size. `pos` specifies the baseline, not the top. To draw from the top, _ascent_ must be added to the Y axis.
    /// 
    /// > Note: Do not use this function to draw strings character by character, use ``drawString(canvasItem:pos:text:alignment:width:fontSize:modulate:justificationFlags:direction:orientation:)`` or ``TextLine`` instead.
    /// 
    public final func drawCharOutline(canvasItem: RID, pos: Vector2, char: Int32, fontSize: Int32, size: Int32 = -1, modulate: Color = Color (r: 1, g: 1, b: 1, a: 1)) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: canvasItem.content) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                withUnsafePointer(to: char) { pArg2 in
                    withUnsafePointer(to: fontSize) { pArg3 in
                        withUnsafePointer(to: size) { pArg4 in
                            withUnsafePointer(to: modulate) { pArg5 in
                                withUnsafePointer(to: UnsafeRawPointersN6(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5)) { pArgs in
                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 6) { pArgs in
                                        gi.object_method_bind_ptrcall(Font.method_draw_char_outline, handle, pArgs, &_result)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_has_char: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_char")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if a Unicode `char` is available in the font.
    public final func hasChar(_ char: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: char) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Font.method_has_char, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_supported_chars: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_supported_chars")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns a string containing all the characters available in the font.
    /// 
    /// If a given character is included in more than one font data source, it appears only once in the returned string.
    /// 
    public final func getSupportedChars() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(Font.method_get_supported_chars, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_is_language_supported: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_language_supported")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns `true`, if font supports given language (<a href="https://en.wikipedia.org/wiki/ISO_639-1">ISO 639</a> code).
    public final func isLanguageSupported(language: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let language = GString(language)
        withUnsafePointer(to: language.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Font.method_is_language_supported, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_script_supported: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_script_supported")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns `true`, if font supports given script (<a href="https://en.wikipedia.org/wiki/ISO_15924">ISO 15924</a> code).
    public final func isScriptSupported(script: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let script = GString(script)
        withUnsafePointer(to: script.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Font.method_is_script_supported, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_supported_feature_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_supported_feature_list")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3102165223)!
            }
            
        }
        
    }()
    
    /// Returns list of OpenType features supported by font.
    public final func getSupportedFeatureList() -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        gi.object_method_bind_ptrcall(Font.method_get_supported_feature_list, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_supported_variation_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_supported_variation_list")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3102165223)!
            }
            
        }
        
    }()
    
    /// Returns list of supported <a href="https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxisreg">variation coordinates</a>, each coordinate is returned as `tag: Vector3i(min_value,max_value,default_value)`.
    /// 
    /// Font variations allow for continuous change of glyph characteristics along some given design axis, such as weight, width or slant.
    /// 
    /// To print available variation axes of a variable font:
    /// 
    /// > Note: To set and get variation coordinates of a ``FontVariation``, use ``FontVariation/variationOpentype``.
    /// 
    public final func getSupportedVariationList() -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        gi.object_method_bind_ptrcall(Font.method_get_supported_variation_list, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_face_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_face_count")
        return withUnsafePointer(to: &Font.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns number of faces in the TrueType / OpenType collection.
    public final func getFaceCount() -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        gi.object_method_bind_ptrcall(Font.method_get_face_count, handle, nil, &_result)
        return _result
    }
    
}

