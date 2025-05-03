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


/// A custom visual shader graph expression written in Godot Shading Language.
/// 
/// Custom Godot Shading Language expression, with a custom number of input and output ports.
/// 
/// The provided code is directly injected into the graph's matching shader function (`vertex`, `fragment`, or `light`), so it cannot be used to declare functions, varyings, uniforms, or global constants. See ``VisualShaderNodeGlobalExpression`` for such global definitions.
/// 
open class VisualShaderNodeExpression: VisualShaderNodeGroupBase {
    private static var className = StringName("VisualShaderNodeExpression")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// An expression in Godot Shading Language, which will be injected at the start of the graph's matching shader function (`vertex`, `fragment`, or `light`), and thus cannot be used to declare functions, varyings, uniforms, or global constants.
    final public var expression: String {
        get {
            return get_expression ()
        }
        
        set {
            set_expression (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_expression: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_expression")
        return withUnsafePointer(to: &VisualShaderNodeExpression.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_expression(_ expression: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let expression = GString(expression)
        withUnsafePointer(to: expression.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeExpression.method_set_expression, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_expression: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_expression")
        return withUnsafePointer(to: &VisualShaderNodeExpression.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_expression() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(VisualShaderNodeExpression.method_get_expression, handle, nil, &_result.content)
        return _result.description
    }
    
}

