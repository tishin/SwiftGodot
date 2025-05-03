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


/// An unsigned scalar integer constant to be used within the visual shader graph.
/// 
/// Translated to `uint` in the shader language.
open class VisualShaderNodeUIntConstant: VisualShaderNodeConstant {
    private static var className = StringName("VisualShaderNodeUIntConstant")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// An unsigned integer constant which represents a state of this node.
    final public var constant: Int32 {
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
        return withUnsafePointer(to: &VisualShaderNodeUIntConstant.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_constant(_ constant: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: constant) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeUIntConstant.method_set_constant, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_constant: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_constant")
        return withUnsafePointer(to: &VisualShaderNodeUIntConstant.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_constant() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(VisualShaderNodeUIntConstant.method_get_constant, handle, nil, &_result)
        return _result
    }
    
}

