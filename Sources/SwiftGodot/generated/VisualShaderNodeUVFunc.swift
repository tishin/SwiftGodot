// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Contains functions to modify texture coordinates (`uv`) to be used within the visual shader graph.
/// 
/// UV functions are similar to ``Vector2`` functions, but the input port of this node uses the shader's UV value by default.
open class VisualShaderNodeUVFunc: VisualShaderNode {
    override open class var godotClassName: StringName { "VisualShaderNodeUVFunc" }
    public enum Function: Int64, CaseIterable, CustomDebugStringConvertible {
        /// Translates `uv` by using `scale` and `offset` values using the following formula: `uv = uv + offset * scale`. `uv` port is connected to `UV` built-in by default.
        case panning = 0 // FUNC_PANNING
        /// Scales `uv` by using `scale` and `pivot` values using the following formula: `uv = (uv - pivot) * scale + pivot`. `uv` port is connected to `UV` built-in by default.
        case scaling = 1 // FUNC_SCALING
        /// Represents the size of the ``VisualShaderNodeUVFunc/Function`` enum.
        case max = 2 // FUNC_MAX
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .panning: return ".panning"
                case .scaling: return ".scaling"
                case .max: return ".max"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// A function to be applied to the texture coordinates. See ``VisualShaderNodeUVFunc/Function`` for options.
    final public var function: VisualShaderNodeUVFunc.Function {
        get {
            return get_function ()
        }
        
        set {
            set_function (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_function: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_function")
        return withUnsafePointer(to: &VisualShaderNodeUVFunc.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 765791915)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_function(_ `func`: VisualShaderNodeUVFunc.Function) {
        withUnsafePointer(to: `func`.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeUVFunc.method_set_function, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_function: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_function")
        return withUnsafePointer(to: &VisualShaderNodeUVFunc.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3772902164)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_function() -> VisualShaderNodeUVFunc.Function {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(VisualShaderNodeUVFunc.method_get_function, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return VisualShaderNodeUVFunc.Function (rawValue: _result)!
    }
    
}
