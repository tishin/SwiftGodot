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


/// Performs a fused multiply-add operation within the visual shader graph.
/// 
/// Uses three operands to compute `(a * b + c)` expression.
open class VisualShaderNodeMultiplyAdd: VisualShaderNode {
    private static var className = StringName("VisualShaderNodeMultiplyAdd")
    override open class var godotClassName: StringName { className }
    public enum OpType: Int64, CaseIterable {
        /// A floating-point scalar type.
        case scalar = 0 // OP_TYPE_SCALAR
        /// A 2D vector type.
        case vector2d = 1 // OP_TYPE_VECTOR_2D
        /// A 3D vector type.
        case vector3d = 2 // OP_TYPE_VECTOR_3D
        /// A 4D vector type.
        case vector4d = 3 // OP_TYPE_VECTOR_4D
        /// Represents the size of the ``VisualShaderNodeMultiplyAdd/OpType`` enum.
        case max = 4 // OP_TYPE_MAX
    }
    
    
    /* Properties */
    
    /// A type of operands and returned value.
    final public var opType: VisualShaderNodeMultiplyAdd.OpType {
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
        return withUnsafePointer(to: &VisualShaderNodeMultiplyAdd.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1409862380)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_op_type(_ type: VisualShaderNodeMultiplyAdd.OpType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeMultiplyAdd.method_set_op_type, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_op_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_op_type")
        return withUnsafePointer(to: &VisualShaderNodeMultiplyAdd.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2823201991)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_op_type() -> VisualShaderNodeMultiplyAdd.OpType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(VisualShaderNodeMultiplyAdd.method_get_op_type, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return VisualShaderNodeMultiplyAdd.OpType (rawValue: _result)!
    }
    
}

