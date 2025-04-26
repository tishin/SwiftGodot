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


/// A ``Color`` function to be used within the visual shader graph.
/// 
/// Accept a ``Color`` to the input port and transform it according to ``function``.
open class VisualShaderNodeColorFunc: VisualShaderNode {
    private static var className = StringName("VisualShaderNodeColorFunc")
    override open class var godotClassName: StringName { className }
    public enum Function: Int64, CaseIterable {
        /// Converts the color to grayscale using the following formula:
        /// 
        case grayscale = 0 // FUNC_GRAYSCALE
        /// Converts HSV vector to RGB equivalent.
        case hsv2rgb = 1 // FUNC_HSV2RGB
        /// Converts RGB vector to HSV equivalent.
        case rgb2hsv = 2 // FUNC_RGB2HSV
        /// Applies sepia tone effect using the following formula:
        /// 
        case sepia = 3 // FUNC_SEPIA
        /// Converts color from linear color space to sRGB color space using the following formula:
        /// 
        /// The Compatibility renderer uses a simpler formula:
        /// 
        case linearToSrgb = 4 // FUNC_LINEAR_TO_SRGB
        /// Converts color from sRGB color space to linear color space using the following formula:
        /// 
        /// The Compatibility renderer uses a simpler formula:
        /// 
        case srgbToLinear = 5 // FUNC_SRGB_TO_LINEAR
        /// Represents the size of the ``VisualShaderNodeColorFunc/Function`` enum.
        case max = 6 // FUNC_MAX
    }
    
    
    /* Properties */
    
    /// A function to be applied to the input color. See ``VisualShaderNodeColorFunc/Function`` for options.
    final public var function: VisualShaderNodeColorFunc.Function {
        get {
            return get_function ()
        }
        
        set {
            set_function (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_function: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_function")
        return withUnsafePointer(to: &VisualShaderNodeColorFunc.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3973396138)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_function(_ `func`: VisualShaderNodeColorFunc.Function) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: `func`.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeColorFunc.method_set_function, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_function: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_function")
        return withUnsafePointer(to: &VisualShaderNodeColorFunc.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 554863321)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_function() -> VisualShaderNodeColorFunc.Function {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(VisualShaderNodeColorFunc.method_get_function, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return VisualShaderNodeColorFunc.Function (rawValue: _result)!
    }
    
}

