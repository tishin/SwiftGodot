// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Performs a fused multiply-add operation within the visual shader graph.
/// 
/// Uses three operands to compute `(a * b + c)` expression.
open class VisualShaderNodeMultiplyAdd: VisualShaderNode {
    override open class var godotClassName: StringName { "VisualShaderNodeMultiplyAdd" }
    public enum OpType: Int64 {
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
    fileprivate static var method_set_op_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_op_type")
        return withUnsafePointer (to: &VisualShaderNodeMultiplyAdd.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1409862380)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_op_type (_ type: VisualShaderNodeMultiplyAdd.OpType) {
        #if true
        
        var copy_type = Int64 (type.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeMultiplyAdd.method_set_op_type, UnsafeMutableRawPointer (mutating: handle), nil, &copy_type)
        
        #else
        
        var copy_type = Int64 (type.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_type) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeMultiplyAdd.method_set_op_type, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_op_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_op_type")
        return withUnsafePointer (to: &VisualShaderNodeMultiplyAdd.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2823201991)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_op_type ()-> VisualShaderNodeMultiplyAdd.OpType {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (VisualShaderNodeMultiplyAdd.method_get_op_type, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VisualShaderNodeMultiplyAdd.OpType (rawValue: _result)!
    }
    
}
