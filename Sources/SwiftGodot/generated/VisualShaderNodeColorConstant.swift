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


/// A ``Color`` constant to be used within the visual shader graph.
/// 
/// Has two output ports representing RGB and alpha channels of ``Color``.
/// 
/// Translated to `vec3 rgb` and `float alpha` in the shader language.
/// 
open class VisualShaderNodeColorConstant: VisualShaderNodeConstant {
    private static var className = StringName("VisualShaderNodeColorConstant")
    override open class var godotClassName: StringName { className }
    
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
    fileprivate static let method_set_constant: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_constant")
        return withUnsafePointer(to: &VisualShaderNodeColorConstant.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_constant(_ constant: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: constant) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeColorConstant.method_set_constant, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_constant: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_constant")
        return withUnsafePointer(to: &VisualShaderNodeColorConstant.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_constant() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(VisualShaderNodeColorConstant.method_get_constant, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

