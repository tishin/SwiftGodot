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


/// A ``Transform3D`` constant for use within the visual shader graph.
/// 
/// A constant ``Transform3D``, which can be used as an input node.
open class VisualShaderNodeTransformConstant: VisualShaderNodeConstant {
    private static var className = StringName("VisualShaderNodeTransformConstant")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// A ``Transform3D`` constant which represents the state of this node.
    final public var constant: Transform3D {
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
        return withUnsafePointer(to: &VisualShaderNodeTransformConstant.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2952846383)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_constant(_ constant: Transform3D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: constant) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeTransformConstant.method_set_constant, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_constant: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_constant")
        return withUnsafePointer(to: &VisualShaderNodeTransformConstant.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3229777777)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_constant() -> Transform3D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform3D = Transform3D ()
        gi.object_method_bind_ptrcall(VisualShaderNodeTransformConstant.method_get_constant, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

