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


/// A boolean comparison operator to be used within the visual shader graph.
/// 
/// Returns the boolean result of the comparison between `INF` or `NaN` and a scalar parameter.
open class VisualShaderNodeIs: VisualShaderNode {
    private static var className = StringName("VisualShaderNodeIs")
    override open class var godotClassName: StringName { className }
    public enum Function: Int64, CaseIterable {
        /// Comparison with `INF` (Infinity).
        case isInf = 0 // FUNC_IS_INF
        /// Comparison with `NaN` (Not a Number; indicates invalid numeric results, such as division by zero).
        case isNan = 1 // FUNC_IS_NAN
        /// Represents the size of the ``VisualShaderNodeIs/Function`` enum.
        case max = 2 // FUNC_MAX
    }
    
    
    /* Properties */
    
    /// The comparison function. See ``VisualShaderNodeIs/Function`` for options.
    final public var function: VisualShaderNodeIs.Function {
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
        return withUnsafePointer(to: &VisualShaderNodeIs.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1438374690)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_function(_ `func`: VisualShaderNodeIs.Function) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: `func`.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeIs.method_set_function, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_function: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_function")
        return withUnsafePointer(to: &VisualShaderNodeIs.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 580678557)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_function() -> VisualShaderNodeIs.Function {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(VisualShaderNodeIs.method_get_function, handle, nil, &_result)
        return VisualShaderNodeIs.Function (rawValue: _result)!
    }
    
}

