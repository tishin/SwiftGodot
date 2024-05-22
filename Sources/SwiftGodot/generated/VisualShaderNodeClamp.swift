// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Clamps a value within the visual shader graph.
/// 
/// Constrains a value to lie between `min` and `max` values.
open class VisualShaderNodeClamp: VisualShaderNode {
    override open class var godotClassName: StringName { "VisualShaderNodeClamp" }
    public enum OpType: Int64, CaseIterable, CustomDebugStringConvertible {
        /// A floating-point scalar.
        case float = 0 // OP_TYPE_FLOAT
        /// An integer scalar.
        case int = 1 // OP_TYPE_INT
        /// An unsigned integer scalar.
        case uint = 2 // OP_TYPE_UINT
        /// A 2D vector type.
        case vector2d = 3 // OP_TYPE_VECTOR_2D
        /// A 3D vector type.
        case vector3d = 4 // OP_TYPE_VECTOR_3D
        /// A 4D vector type.
        case vector4d = 5 // OP_TYPE_VECTOR_4D
        /// Represents the size of the ``VisualShaderNodeClamp/OpType`` enum.
        case max = 6 // OP_TYPE_MAX
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .float: return ".float"
                case .int: return ".int"
                case .uint: return ".uint"
                case .vector2d: return ".vector2d"
                case .vector3d: return ".vector3d"
                case .vector4d: return ".vector4d"
                case .max: return ".max"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// A type of operands and returned value.
    final public var opType: VisualShaderNodeClamp.OpType {
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
        return withUnsafePointer (to: &VisualShaderNodeClamp.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 405010749)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_op_type (_ opType: VisualShaderNodeClamp.OpType) {
        #if true
        
        var copy_op_type = Int64 (opType.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeClamp.method_set_op_type, UnsafeMutableRawPointer (mutating: handle), nil, &copy_op_type)
        
        #else
        
        var copy_op_type = Int64 (opType.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_op_type) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeClamp.method_set_op_type, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_op_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_op_type")
        return withUnsafePointer (to: &VisualShaderNodeClamp.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 233276050)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_op_type ()-> VisualShaderNodeClamp.OpType {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (VisualShaderNodeClamp.method_get_op_type, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VisualShaderNodeClamp.OpType (rawValue: _result)!
    }
    
}

