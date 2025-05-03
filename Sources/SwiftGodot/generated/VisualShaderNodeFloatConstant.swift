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


/// A scalar floating-point constant to be used within the visual shader graph.
/// 
/// Translated to [code skip-lint]float` in the shader language.
open class VisualShaderNodeFloatConstant: VisualShaderNodeConstant {
    private static var className = StringName("VisualShaderNodeFloatConstant")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// A floating-point constant which represents a state of this node.
    final public var constant: Double {
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
        return withUnsafePointer(to: &VisualShaderNodeFloatConstant.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_constant(_ constant: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: constant) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeFloatConstant.method_set_constant, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_constant: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_constant")
        return withUnsafePointer(to: &VisualShaderNodeFloatConstant.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_constant() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(VisualShaderNodeFloatConstant.method_get_constant, handle, nil, &_result)
        return _result
    }
    
}

