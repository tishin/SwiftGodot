// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A ``Color`` constant to be used within the visual shader graph.
/// 
/// Has two output ports representing RGB and alpha channels of ``Color``.
/// 
/// Translated to `vec3 rgb` and `float alpha` in the shader language.
/// 
open class VisualShaderNodeColorConstant: VisualShaderNodeConstant {
    override open class var godotClassName: StringName { "VisualShaderNodeColorConstant" }
    
    /* Properties */
    
    /// A ``Color`` constant which represents a state of this node.
    final public var constant: Color {
        get {
            return get_constant ()
        }
        
        set {
            set_constant (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_constant: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_constant")
        return withUnsafePointer (to: &VisualShaderNodeColorConstant.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_constant (_ constant: Color) {
        #if true
        
        var copy_constant = constant
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeColorConstant.method_set_constant, UnsafeMutableRawPointer (mutating: handle), nil, &copy_constant)
        
        #else
        
        var copy_constant = constant
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_constant) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeColorConstant.method_set_constant, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_constant: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_constant")
        return withUnsafePointer (to: &VisualShaderNodeColorConstant.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_constant ()-> Color {
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall (VisualShaderNodeColorConstant.method_get_constant, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}
