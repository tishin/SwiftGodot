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


/// A ``Vector3`` constant to be used within the visual shader graph.
/// 
/// A constant ``Vector3``, which can be used as an input node.
open class VisualShaderNodeVec3Constant: VisualShaderNodeConstant {
    private static var className = StringName("VisualShaderNodeVec3Constant")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// A ``Vector3`` constant which represents the state of this node.
    final public var constant: Vector3 {
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
        return withUnsafePointer(to: &VisualShaderNodeVec3Constant.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_constant(_ constant: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: constant) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeVec3Constant.method_set_constant, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_constant: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_constant")
        return withUnsafePointer(to: &VisualShaderNodeVec3Constant.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_constant() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(VisualShaderNodeVec3Constant.method_get_constant, handle, nil, &_result)
        return _result
    }
    
}

