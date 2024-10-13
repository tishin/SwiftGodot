// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Only exists for compatibility. Use ``VisualShaderNodeFrame`` as a replacement.
/// 
/// This node was replaced by ``VisualShaderNodeFrame`` and only exists to preserve compatibility. In the ``VisualShader`` editor it behaves exactly like ``VisualShaderNodeFrame``.
open class VisualShaderNodeComment: VisualShaderNodeFrame {
    override open class var godotClassName: StringName { "VisualShaderNodeComment" }
    
    /* Properties */
    
    /// This property only exists to preserve data authored in earlier versions of Godot. It has currently no function.
    final public var additionalDescription: String {
        get {
            return get_description ()
        }
        
        set {
            set_description (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_description: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_description")
        return withUnsafePointer(to: &VisualShaderNodeComment.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_description(_ description: String) {
        let description = GString(description)
        withUnsafePointer(to: description.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeComment.method_set_description, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_description: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_description")
        return withUnsafePointer(to: &VisualShaderNodeComment.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_description() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(VisualShaderNodeComment.method_get_description, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
}

