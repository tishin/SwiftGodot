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


/// A reference to an existing ``VisualShaderNodeParameter``.
/// 
/// Creating a reference to a ``VisualShaderNodeParameter`` allows you to reuse this parameter in different shaders or shader stages easily.
open class VisualShaderNodeParameterRef: VisualShaderNode {
    private static var className = StringName("VisualShaderNodeParameterRef")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The name of the parameter which this reference points to.
    final public var parameterName: String {
        get {
            return get_parameter_name ()
        }
        
        set {
            set_parameter_name (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_parameter_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_parameter_name")
        return withUnsafePointer(to: &VisualShaderNodeParameterRef.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_parameter_name(_ name: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeParameterRef.method_set_parameter_name, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_parameter_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_parameter_name")
        return withUnsafePointer(to: &VisualShaderNodeParameterRef.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_parameter_name() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(VisualShaderNodeParameterRef.method_get_parameter_name, handle, nil, &_result.content)
        return _result.description
    }
    
}

