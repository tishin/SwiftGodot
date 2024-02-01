// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A ``Color`` operator to be used within the visual shader graph.
/// 
/// Applies ```operator``` to two color inputs.
open class VisualShaderNodeColorOp: VisualShaderNode {
    override open class var godotClassName: StringName { "VisualShaderNodeColorOp" }
    public enum Operator: Int64 {
        /// Produce a screen effect with the following formula:
        /// 
        case screen = 0 // OP_SCREEN
        /// Produce a difference effect with the following formula:
        /// 
        case difference = 1 // OP_DIFFERENCE
        /// Produce a darken effect with the following formula:
        /// 
        case darken = 2 // OP_DARKEN
        /// Produce a lighten effect with the following formula:
        /// 
        case lighten = 3 // OP_LIGHTEN
        /// Produce an overlay effect with the following formula:
        /// 
        case overlay = 4 // OP_OVERLAY
        /// Produce a dodge effect with the following formula:
        /// 
        case dodge = 5 // OP_DODGE
        /// Produce a burn effect with the following formula:
        /// 
        case burn = 6 // OP_BURN
        /// Produce a soft light effect with the following formula:
        /// 
        case softLight = 7 // OP_SOFT_LIGHT
        /// Produce a hard light effect with the following formula:
        /// 
        case hardLight = 8 // OP_HARD_LIGHT
        /// Represents the size of the ``VisualShaderNodeColorOp/Operator`` enum.
        case max = 9 // OP_MAX
    }
    
    
    /* Properties */
    
    /// An operator to be applied to the inputs. See ``VisualShaderNodeColorOp/Operator`` for options.
    final public var `operator`: VisualShaderNodeColorOp.Operator {
        get {
            return get_operator ()
        }
        
        set {
            set_operator (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_operator: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_operator")
        return withUnsafePointer (to: &VisualShaderNodeColorOp.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4260370673)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_operator (_ op: VisualShaderNodeColorOp.Operator) {
        #if true
        
        var copy_op = Int64 (op.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeColorOp.method_set_operator, UnsafeMutableRawPointer (mutating: handle), nil, &copy_op)
        
        #else
        
        var copy_op = Int64 (op.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_op) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeColorOp.method_set_operator, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_operator: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_operator")
        return withUnsafePointer (to: &VisualShaderNodeColorOp.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1950956529)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_operator ()-> VisualShaderNodeColorOp.Operator {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (VisualShaderNodeColorOp.method_get_operator, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VisualShaderNodeColorOp.Operator (rawValue: _result)!
    }
    
}
