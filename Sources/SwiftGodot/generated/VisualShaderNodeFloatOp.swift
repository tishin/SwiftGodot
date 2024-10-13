// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A floating-point scalar operator to be used within the visual shader graph.
/// 
/// Applies ```operator``` to two floating-point inputs: `a` and `b`.
open class VisualShaderNodeFloatOp: VisualShaderNode {
    override open class var godotClassName: StringName { "VisualShaderNodeFloatOp" }
    public enum Operator: Int64, CaseIterable, CustomDebugStringConvertible {
        /// Sums two numbers using `a + b`.
        case add = 0 // OP_ADD
        /// Subtracts two numbers using `a - b`.
        case sub = 1 // OP_SUB
        /// Multiplies two numbers using `a * b`.
        case mul = 2 // OP_MUL
        /// Divides two numbers using `a / b`.
        case div = 3 // OP_DIV
        /// Calculates the remainder of two numbers. Translates to `mod(a, b)` in the Godot Shader Language.
        case mod = 4 // OP_MOD
        /// Raises the `a` to the power of `b`. Translates to `pow(a, b)` in the Godot Shader Language.
        case pow = 5 // OP_POW
        /// Returns the greater of two numbers. Translates to `max(a, b)` in the Godot Shader Language.
        case max = 6 // OP_MAX
        /// Returns the lesser of two numbers. Translates to `min(a, b)` in the Godot Shader Language.
        case min = 7 // OP_MIN
        /// Returns the arc-tangent of the parameters. Translates to `atan(a, b)` in the Godot Shader Language.
        case atan2 = 8 // OP_ATAN2
        /// Generates a step function by comparing `b`(x) to `a`(edge). Returns 0.0 if `x` is smaller than `edge` and otherwise 1.0. Translates to `step(a, b)` in the Godot Shader Language.
        case step = 9 // OP_STEP
        /// Represents the size of the ``VisualShaderNodeFloatOp/Operator`` enum.
        case enumSize = 10 // OP_ENUM_SIZE
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .add: return ".add"
                case .sub: return ".sub"
                case .mul: return ".mul"
                case .div: return ".div"
                case .mod: return ".mod"
                case .pow: return ".pow"
                case .max: return ".max"
                case .min: return ".min"
                case .atan2: return ".atan2"
                case .step: return ".step"
                case .enumSize: return ".enumSize"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// An operator to be applied to the inputs. See ``VisualShaderNodeFloatOp/Operator`` for options.
    final public var `operator`: VisualShaderNodeFloatOp.Operator {
        get {
            return get_operator ()
        }
        
        set {
            set_operator (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_operator: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_operator")
        return withUnsafePointer(to: &VisualShaderNodeFloatOp.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2488468047)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_operator(_ op: VisualShaderNodeFloatOp.Operator) {
        withUnsafePointer(to: op.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeFloatOp.method_set_operator, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_operator: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_operator")
        return withUnsafePointer(to: &VisualShaderNodeFloatOp.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1867979390)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_operator() -> VisualShaderNodeFloatOp.Operator {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(VisualShaderNodeFloatOp.method_get_operator, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return VisualShaderNodeFloatOp.Operator (rawValue: _result)!
    }
    
}

