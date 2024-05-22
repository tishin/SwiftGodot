// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A color transition.
/// 
/// This resource describes a color transition by defining a set of colored points and how to interpolate between them.
/// 
/// See also ``Curve`` which supports more complex easing methods, but does not support colors.
/// 
open class Gradient: Resource {
    override open class var godotClassName: StringName { "Gradient" }
    public enum InterpolationMode: Int64, CaseIterable, CustomDebugStringConvertible {
        /// Linear interpolation.
        case linear = 0 // GRADIENT_INTERPOLATE_LINEAR
        /// Constant interpolation, color changes abruptly at each point and stays uniform between. This might cause visible aliasing when used for a gradient texture in some cases.
        case constant = 1 // GRADIENT_INTERPOLATE_CONSTANT
        /// Cubic interpolation.
        case cubic = 2 // GRADIENT_INTERPOLATE_CUBIC
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .linear: return ".linear"
                case .constant: return ".constant"
                case .cubic: return ".cubic"
            }
            
        }
        
    }
    
    public enum ColorSpace: Int64, CaseIterable, CustomDebugStringConvertible {
        /// sRGB color space.
        case srgb = 0 // GRADIENT_COLOR_SPACE_SRGB
        /// Linear sRGB color space.
        case linearSrgb = 1 // GRADIENT_COLOR_SPACE_LINEAR_SRGB
        /// <a href="https://bottosson.github.io/posts/oklab/">Oklab</a> color space. This color space provides a smooth and uniform-looking transition between colors.
        case oklab = 2 // GRADIENT_COLOR_SPACE_OKLAB
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .srgb: return ".srgb"
                case .linearSrgb: return ".linearSrgb"
                case .oklab: return ".oklab"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// The algorithm used to interpolate between points of the gradient. See ``Gradient/InterpolationMode`` for available modes.
    final public var interpolationMode: Gradient.InterpolationMode {
        get {
            return get_interpolation_mode ()
        }
        
        set {
            set_interpolation_mode (newValue)
        }
        
    }
    
    /// The color space used to interpolate between points of the gradient. It does not affect the returned colors, which will always be in sRGB space. See ``Gradient/ColorSpace`` for available modes.
    /// 
    /// > Note: This setting has no effect when ``interpolationMode`` is set to .gradientInterpolateConstant.
    /// 
    final public var interpolationColorSpace: Gradient.ColorSpace {
        get {
            return get_interpolation_color_space ()
        }
        
        set {
            set_interpolation_color_space (newValue)
        }
        
    }
    
    /// Gradient's offsets returned as a ``PackedFloat32Array``.
    /// 
    /// > Note: This property returns a copy, modifying the return value does not update the gradient. To update the gradient use ``setOffset(point:offset:)`` method (for updating offsets individually) or assign to this property directly (for bulk-updating all offsets at once).
    /// 
    final public var offsets: PackedFloat32Array {
        get {
            return get_offsets ()
        }
        
        set {
            set_offsets (newValue)
        }
        
    }
    
    /// Gradient's colors returned as a ``PackedColorArray``.
    /// 
    /// > Note: This property returns a copy, modifying the return value does not update the gradient. To update the gradient use ``setColor(point:color:)`` method (for updating colors individually) or assign to this property directly (for bulk-updating all colors at once).
    /// 
    final public var colors: PackedColorArray {
        get {
            return get_colors ()
        }
        
        set {
            set_colors (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_add_point: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_point")
        return withUnsafePointer (to: &Gradient.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3629403827)!
            }
            
        }
        
    }()
    
    /// Adds the specified color to the gradient, with the specified offset.
    public final func addPoint (offset: Double, color: Color) {
        #if true
        
        var copy_offset = offset
        var copy_color = color
        
        gi.object_method_bind_ptrcall_v (Gradient.method_add_point, UnsafeMutableRawPointer (mutating: handle), nil, &copy_offset, &copy_color)
        
        #else
        
        var copy_offset = offset
        var copy_color = color
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_offset) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_color) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Gradient.method_add_point, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_remove_point: GDExtensionMethodBindPtr = {
        let methodName = StringName ("remove_point")
        return withUnsafePointer (to: &Gradient.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes the color at index `point`.
    public final func removePoint (_ point: Int32) {
        #if true
        
        var copy_point: Int = Int (point)
        
        gi.object_method_bind_ptrcall_v (Gradient.method_remove_point, UnsafeMutableRawPointer (mutating: handle), nil, &copy_point)
        
        #else
        
        var copy_point: Int = Int (point)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_point) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Gradient.method_remove_point, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_offset")
        return withUnsafePointer (to: &Gradient.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Sets the offset for the gradient color at index `point`.
    public final func setOffset (point: Int32, offset: Double) {
        #if true
        
        var copy_point: Int = Int (point)
        var copy_offset = offset
        
        gi.object_method_bind_ptrcall_v (Gradient.method_set_offset, UnsafeMutableRawPointer (mutating: handle), nil, &copy_point, &copy_offset)
        
        #else
        
        var copy_point: Int = Int (point)
        var copy_offset = offset
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_point) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_offset) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Gradient.method_set_offset, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_offset")
        return withUnsafePointer (to: &Gradient.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4025615559)!
            }
            
        }
        
    }()
    
    /// Returns the offset of the gradient color at index `point`.
    public final func getOffset (point: Int32)-> Double {
        var _result: Double = 0.0
        #if true
        
        var copy_point: Int = Int (point)
        
        gi.object_method_bind_ptrcall_v (Gradient.method_get_offset, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_point)
        return _result
        #else
        
        var copy_point: Int = Int (point)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_point) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Gradient.method_get_offset, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_reverse: GDExtensionMethodBindPtr = {
        let methodName = StringName ("reverse")
        return withUnsafePointer (to: &Gradient.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Reverses/mirrors the gradient.
    /// 
    /// > Note: This method mirrors all points around the middle of the gradient, which may produce unexpected results when ``interpolationMode`` is set to .gradientInterpolateConstant.
    /// 
    public final func reverse () {
        gi.object_method_bind_ptrcall (Gradient.method_reverse, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_set_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_color")
        return withUnsafePointer (to: &Gradient.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2878471219)!
            }
            
        }
        
    }()
    
    /// Sets the color of the gradient color at index `point`.
    public final func setColor (point: Int32, color: Color) {
        #if true
        
        var copy_point: Int = Int (point)
        var copy_color = color
        
        gi.object_method_bind_ptrcall_v (Gradient.method_set_color, UnsafeMutableRawPointer (mutating: handle), nil, &copy_point, &copy_color)
        
        #else
        
        var copy_point: Int = Int (point)
        var copy_color = color
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_point) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_color) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Gradient.method_set_color, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_color")
        return withUnsafePointer (to: &Gradient.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2624840992)!
            }
            
        }
        
    }()
    
    /// Returns the color of the gradient color at index `point`.
    public final func getColor (point: Int32)-> Color {
        var _result: Color = Color ()
        #if true
        
        var copy_point: Int = Int (point)
        
        gi.object_method_bind_ptrcall_v (Gradient.method_get_color, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_point)
        return _result
        #else
        
        var copy_point: Int = Int (point)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_point) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Gradient.method_get_color, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_sample: GDExtensionMethodBindPtr = {
        let methodName = StringName ("sample")
        return withUnsafePointer (to: &Gradient.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1250405064)!
            }
            
        }
        
    }()
    
    /// Returns the interpolated color specified by `offset`.
    public final func sample (offset: Double)-> Color {
        var _result: Color = Color ()
        #if true
        
        var copy_offset = offset
        
        gi.object_method_bind_ptrcall_v (Gradient.method_sample, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_offset)
        return _result
        #else
        
        var copy_offset = offset
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_offset) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Gradient.method_sample, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_point_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_point_count")
        return withUnsafePointer (to: &Gradient.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of colors in the gradient.
    public final func getPointCount ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (Gradient.method_get_point_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_offsets: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_offsets")
        return withUnsafePointer (to: &Gradient.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2899603908)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_offsets (_ offsets: PackedFloat32Array) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (Gradient.method_set_offsets, UnsafeMutableRawPointer (mutating: handle), nil, &offsets.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &offsets.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Gradient.method_set_offsets, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_offsets: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_offsets")
        return withUnsafePointer (to: &Gradient.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 675695659)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_offsets ()-> PackedFloat32Array {
        let _result: PackedFloat32Array = PackedFloat32Array ()
        gi.object_method_bind_ptrcall (Gradient.method_get_offsets, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_colors: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_colors")
        return withUnsafePointer (to: &Gradient.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3546319833)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_colors (_ colors: PackedColorArray) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (Gradient.method_set_colors, UnsafeMutableRawPointer (mutating: handle), nil, &colors.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &colors.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Gradient.method_set_colors, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_colors: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_colors")
        return withUnsafePointer (to: &Gradient.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1392750486)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_colors ()-> PackedColorArray {
        let _result: PackedColorArray = PackedColorArray ()
        gi.object_method_bind_ptrcall (Gradient.method_get_colors, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_interpolation_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_interpolation_mode")
        return withUnsafePointer (to: &Gradient.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1971444490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_interpolation_mode (_ interpolationMode: Gradient.InterpolationMode) {
        #if true
        
        var copy_interpolation_mode = Int64 (interpolationMode.rawValue)
        
        gi.object_method_bind_ptrcall_v (Gradient.method_set_interpolation_mode, UnsafeMutableRawPointer (mutating: handle), nil, &copy_interpolation_mode)
        
        #else
        
        var copy_interpolation_mode = Int64 (interpolationMode.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_interpolation_mode) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Gradient.method_set_interpolation_mode, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_interpolation_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_interpolation_mode")
        return withUnsafePointer (to: &Gradient.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3674172981)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_interpolation_mode ()-> Gradient.InterpolationMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (Gradient.method_get_interpolation_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return Gradient.InterpolationMode (rawValue: _result)!
    }
    
    fileprivate static var method_set_interpolation_color_space: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_interpolation_color_space")
        return withUnsafePointer (to: &Gradient.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3685995981)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_interpolation_color_space (_ interpolationColorSpace: Gradient.ColorSpace) {
        #if true
        
        var copy_interpolation_color_space = Int64 (interpolationColorSpace.rawValue)
        
        gi.object_method_bind_ptrcall_v (Gradient.method_set_interpolation_color_space, UnsafeMutableRawPointer (mutating: handle), nil, &copy_interpolation_color_space)
        
        #else
        
        var copy_interpolation_color_space = Int64 (interpolationColorSpace.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_interpolation_color_space) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Gradient.method_set_interpolation_color_space, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_interpolation_color_space: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_interpolation_color_space")
        return withUnsafePointer (to: &Gradient.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1538296000)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_interpolation_color_space ()-> Gradient.ColorSpace {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (Gradient.method_get_interpolation_color_space, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return Gradient.ColorSpace (rawValue: _result)!
    }
    
}

