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


/// Calculates a Step function within the visual shader graph.
/// 
/// Translates to `step(edge, x)` in the shader language.
/// 
/// Returns `0.0` if `x` is smaller than `edge` and `1.0` otherwise.
/// 
open class VisualShaderNodeStep: VisualShaderNode {
    private static var className = StringName("VisualShaderNodeStep")
    override open class var godotClassName: StringName { className }
    public enum OpType: Int64, CaseIterable {
        /// A floating-point scalar type.
        case scalar = 0 // OP_TYPE_SCALAR
        /// A 2D vector type.
        case vector2d = 1 // OP_TYPE_VECTOR_2D
        /// The `x` port uses a 2D vector type, while the `edge` port uses a floating-point scalar type.
        case vector2dScalar = 2 // OP_TYPE_VECTOR_2D_SCALAR
        /// A 3D vector type.
        case vector3d = 3 // OP_TYPE_VECTOR_3D
        /// The `x` port uses a 3D vector type, while the `edge` port uses a floating-point scalar type.
        case vector3dScalar = 4 // OP_TYPE_VECTOR_3D_SCALAR
        /// A 4D vector type.
        case vector4d = 5 // OP_TYPE_VECTOR_4D
        /// The `a` and `b` ports use a 4D vector type. The `weight` port uses a scalar type.
        case vector4dScalar = 6 // OP_TYPE_VECTOR_4D_SCALAR
        /// Represents the size of the ``VisualShaderNodeStep/OpType`` enum.
        case max = 7 // OP_TYPE_MAX
    }
    
    
    /* Properties */
    
    /// A type of operands and returned value.
    final public var opType: VisualShaderNodeStep.OpType {
        get {
            return get_op_type ()
        }
        
        set {
            set_op_type (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_op_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_op_type")
        return withUnsafePointer(to: &VisualShaderNodeStep.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 715172489)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_op_type(_ opType: VisualShaderNodeStep.OpType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: opType.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeStep.method_set_op_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_op_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_op_type")
        return withUnsafePointer(to: &VisualShaderNodeStep.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3274022781)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_op_type() -> VisualShaderNodeStep.OpType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(VisualShaderNodeStep.method_get_op_type, handle, nil, &_result)
        return VisualShaderNodeStep.OpType (rawValue: _result)!
    }
    
}

