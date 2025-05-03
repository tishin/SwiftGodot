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


/// An unsigned scalar integer function to be used within the visual shader graph.
/// 
/// Accept an unsigned integer scalar (`x`) to the input port and transform it according to ``function``.
open class VisualShaderNodeUIntFunc: VisualShaderNode {
    private static var className = StringName("VisualShaderNodeUIntFunc")
    override open class var godotClassName: StringName { className }
    public enum Function: Int64, CaseIterable {
        /// Negates the `x` using `-(x)`.
        case negate = 0 // FUNC_NEGATE
        /// Returns the result of bitwise `NOT` operation on the integer. Translates to `~a` in the Godot Shader Language.
        case bitwiseNot = 1 // FUNC_BITWISE_NOT
        /// Represents the size of the ``VisualShaderNodeUIntFunc/Function`` enum.
        case max = 2 // FUNC_MAX
    }
    
    
    /* Properties */
    
    /// A function to be applied to the scalar. See ``VisualShaderNodeUIntFunc/Function`` for options.
    final public var function: VisualShaderNodeUIntFunc.Function {
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
        return withUnsafePointer(to: &VisualShaderNodeUIntFunc.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2273148961)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_function(_ `func`: VisualShaderNodeUIntFunc.Function) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: `func`.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeUIntFunc.method_set_function, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_function: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_function")
        return withUnsafePointer(to: &VisualShaderNodeUIntFunc.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4187123296)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_function() -> VisualShaderNodeUIntFunc.Function {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(VisualShaderNodeUIntFunc.method_get_function, handle, nil, &_result)
        return VisualShaderNodeUIntFunc.Function (rawValue: _result)!
    }
    
}

