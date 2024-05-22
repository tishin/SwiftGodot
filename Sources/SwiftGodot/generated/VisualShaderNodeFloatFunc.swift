// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A scalar floating-point function to be used within the visual shader graph.
/// 
/// Accept a floating-point scalar (`x`) to the input port and transform it according to ``function``.
open class VisualShaderNodeFloatFunc: VisualShaderNode {
    override open class var godotClassName: StringName { "VisualShaderNodeFloatFunc" }
    public enum Function: Int64, CaseIterable, CustomDebugStringConvertible {
        /// Returns the sine of the parameter. Translates to `sin(x)` in the Godot Shader Language.
        case sin = 0 // FUNC_SIN
        /// Returns the cosine of the parameter. Translates to `cos(x)` in the Godot Shader Language.
        case cos = 1 // FUNC_COS
        /// Returns the tangent of the parameter. Translates to `tan(x)` in the Godot Shader Language.
        case tan = 2 // FUNC_TAN
        /// Returns the arc-sine of the parameter. Translates to `asin(x)` in the Godot Shader Language.
        case asin = 3 // FUNC_ASIN
        /// Returns the arc-cosine of the parameter. Translates to `acos(x)` in the Godot Shader Language.
        case acos = 4 // FUNC_ACOS
        /// Returns the arc-tangent of the parameter. Translates to `atan(x)` in the Godot Shader Language.
        case atan = 5 // FUNC_ATAN
        /// Returns the hyperbolic sine of the parameter. Translates to `sinh(x)` in the Godot Shader Language.
        case sinh = 6 // FUNC_SINH
        /// Returns the hyperbolic cosine of the parameter. Translates to `cosh(x)` in the Godot Shader Language.
        case cosh = 7 // FUNC_COSH
        /// Returns the hyperbolic tangent of the parameter. Translates to `tanh(x)` in the Godot Shader Language.
        case tanh = 8 // FUNC_TANH
        /// Returns the natural logarithm of the parameter. Translates to `log(x)` in the Godot Shader Language.
        case log = 9 // FUNC_LOG
        /// Returns the natural exponentiation of the parameter. Translates to `exp(x)` in the Godot Shader Language.
        case exp = 10 // FUNC_EXP
        /// Returns the square root of the parameter. Translates to `sqrt(x)` in the Godot Shader Language.
        case sqrt = 11 // FUNC_SQRT
        /// Returns the absolute value of the parameter. Translates to `abs(x)` in the Godot Shader Language.
        case abs = 12 // FUNC_ABS
        /// Extracts the sign of the parameter. Translates to `sign(x)` in the Godot Shader Language.
        case sign = 13 // FUNC_SIGN
        /// Finds the nearest integer less than or equal to the parameter. Translates to `floor(x)` in the Godot Shader Language.
        case floor = 14 // FUNC_FLOOR
        /// Finds the nearest integer to the parameter. Translates to `round(x)` in the Godot Shader Language.
        case round = 15 // FUNC_ROUND
        /// Finds the nearest integer that is greater than or equal to the parameter. Translates to `ceil(x)` in the Godot Shader Language.
        case ceil = 16 // FUNC_CEIL
        /// Computes the fractional part of the argument. Translates to `fract(x)` in the Godot Shader Language.
        case fract = 17 // FUNC_FRACT
        /// Clamps the value between `0.0` and `1.0` using `min(max(x, 0.0), 1.0)`.
        case saturate = 18 // FUNC_SATURATE
        /// Negates the `x` using `-(x)`.
        case negate = 19 // FUNC_NEGATE
        /// Returns the arc-hyperbolic-cosine of the parameter. Translates to `acosh(x)` in the Godot Shader Language.
        case acosh = 20 // FUNC_ACOSH
        /// Returns the arc-hyperbolic-sine of the parameter. Translates to `asinh(x)` in the Godot Shader Language.
        case asinh = 21 // FUNC_ASINH
        /// Returns the arc-hyperbolic-tangent of the parameter. Translates to `atanh(x)` in the Godot Shader Language.
        case atanh = 22 // FUNC_ATANH
        /// Convert a quantity in radians to degrees. Translates to `degrees(x)` in the Godot Shader Language.
        case degrees = 23 // FUNC_DEGREES
        /// Returns 2 raised by the power of the parameter. Translates to `exp2(x)` in the Godot Shader Language.
        case exp2 = 24 // FUNC_EXP2
        /// Returns the inverse of the square root of the parameter. Translates to `inversesqrt(x)` in the Godot Shader Language.
        case inverseSqrt = 25 // FUNC_INVERSE_SQRT
        /// Returns the base 2 logarithm of the parameter. Translates to `log2(x)` in the Godot Shader Language.
        case log2 = 26 // FUNC_LOG2
        /// Convert a quantity in degrees to radians. Translates to `radians(x)` in the Godot Shader Language.
        case radians = 27 // FUNC_RADIANS
        /// Finds reciprocal value of dividing 1 by `x` (i.e. `1 / x`).
        case reciprocal = 28 // FUNC_RECIPROCAL
        /// Finds the nearest even integer to the parameter. Translates to `roundEven(x)` in the Godot Shader Language.
        case roundeven = 29 // FUNC_ROUNDEVEN
        /// Returns a value equal to the nearest integer to `x` whose absolute value is not larger than the absolute value of `x`. Translates to `trunc(x)` in the Godot Shader Language.
        case trunc = 30 // FUNC_TRUNC
        /// Subtracts scalar `x` from 1 (i.e. `1 - x`).
        case oneminus = 31 // FUNC_ONEMINUS
        /// Represents the size of the ``VisualShaderNodeFloatFunc/Function`` enum.
        case max = 32 // FUNC_MAX
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .sin: return ".sin"
                case .cos: return ".cos"
                case .tan: return ".tan"
                case .asin: return ".asin"
                case .acos: return ".acos"
                case .atan: return ".atan"
                case .sinh: return ".sinh"
                case .cosh: return ".cosh"
                case .tanh: return ".tanh"
                case .log: return ".log"
                case .exp: return ".exp"
                case .sqrt: return ".sqrt"
                case .abs: return ".abs"
                case .sign: return ".sign"
                case .floor: return ".floor"
                case .round: return ".round"
                case .ceil: return ".ceil"
                case .fract: return ".fract"
                case .saturate: return ".saturate"
                case .negate: return ".negate"
                case .acosh: return ".acosh"
                case .asinh: return ".asinh"
                case .atanh: return ".atanh"
                case .degrees: return ".degrees"
                case .exp2: return ".exp2"
                case .inverseSqrt: return ".inverseSqrt"
                case .log2: return ".log2"
                case .radians: return ".radians"
                case .reciprocal: return ".reciprocal"
                case .roundeven: return ".roundeven"
                case .trunc: return ".trunc"
                case .oneminus: return ".oneminus"
                case .max: return ".max"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// A function to be applied to the scalar. See ``VisualShaderNodeFloatFunc/Function`` for options.
    final public var function: VisualShaderNodeFloatFunc.Function {
        get {
            return get_function ()
        }
        
        set {
            set_function (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_function: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_function")
        return withUnsafePointer (to: &VisualShaderNodeFloatFunc.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 536026177)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_function (_ `func`: VisualShaderNodeFloatFunc.Function) {
        #if true
        
        var copy_func = Int64 (`func`.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeFloatFunc.method_set_function, UnsafeMutableRawPointer (mutating: handle), nil, &copy_func)
        
        #else
        
        var copy_func = Int64 (`func`.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_func) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeFloatFunc.method_set_function, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_function: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_function")
        return withUnsafePointer (to: &VisualShaderNodeFloatFunc.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2033948868)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_function ()-> VisualShaderNodeFloatFunc.Function {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (VisualShaderNodeFloatFunc.method_get_function, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VisualShaderNodeFloatFunc.Function (rawValue: _result)!
    }
    
}

