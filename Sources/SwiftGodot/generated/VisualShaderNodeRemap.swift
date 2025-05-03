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


/// A visual shader node for remap function.
/// 
/// Remap will transform the input range into output range, e.g. you can change a `0..1` value to `-2..2` etc. See ``@GlobalScope.remap`` for more details.
open class VisualShaderNodeRemap: VisualShaderNode {
    private static var className = StringName("VisualShaderNodeRemap")
    override open class var godotClassName: StringName { className }
    public enum OpType: Int64, CaseIterable {
        /// A floating-point scalar type.
        case scalar = 0 // OP_TYPE_SCALAR
        /// A 2D vector type.
        case vector2d = 1 // OP_TYPE_VECTOR_2D
        /// The `value` port uses a 2D vector type, while the `input min`, `input max`, `output min`, and `output max` ports use a floating-point scalar type.
        case vector2dScalar = 2 // OP_TYPE_VECTOR_2D_SCALAR
        /// A 3D vector type.
        case vector3d = 3 // OP_TYPE_VECTOR_3D
        /// The `value` port uses a 3D vector type, while the `input min`, `input max`, `output min`, and `output max` ports use a floating-point scalar type.
        case vector3dScalar = 4 // OP_TYPE_VECTOR_3D_SCALAR
        /// A 4D vector type.
        case vector4d = 5 // OP_TYPE_VECTOR_4D
        /// The `value` port uses a 4D vector type, while the `input min`, `input max`, `output min`, and `output max` ports use a floating-point scalar type.
        case vector4dScalar = 6 // OP_TYPE_VECTOR_4D_SCALAR
        /// Represents the size of the ``VisualShaderNodeRemap/OpType`` enum.
        case max = 7 // OP_TYPE_MAX
    }
    
    
    /* Properties */
    
    final public var opType: VisualShaderNodeRemap.OpType {
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
        return withUnsafePointer(to: &VisualShaderNodeRemap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1703697889)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_op_type(_ opType: VisualShaderNodeRemap.OpType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: opType.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeRemap.method_set_op_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_op_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_op_type")
        return withUnsafePointer(to: &VisualShaderNodeRemap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1678380563)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_op_type() -> VisualShaderNodeRemap.OpType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(VisualShaderNodeRemap.method_get_op_type, handle, nil, &_result)
        return VisualShaderNodeRemap.OpType (rawValue: _result)!
    }
    
}

