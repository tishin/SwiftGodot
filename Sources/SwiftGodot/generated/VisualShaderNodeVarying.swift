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


/// A visual shader node that represents a "varying" shader value.
/// 
/// Varying values are shader variables that can be passed between shader functions, e.g. from Vertex shader to Fragment shader.
open class VisualShaderNodeVarying: VisualShaderNode {
    private static var className = StringName("VisualShaderNodeVarying")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Name of the variable. Must be unique.
    final public var varyingName: String {
        get {
            return get_varying_name ()
        }
        
        set {
            set_varying_name (newValue)
        }
        
    }
    
    /// Type of the variable. Determines where the variable can be accessed.
    final public var varyingType: VisualShader.VaryingType {
        get {
            return get_varying_type ()
        }
        
        set {
            set_varying_type (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_varying_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_varying_name")
        return withUnsafePointer(to: &VisualShaderNodeVarying.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_varying_name(_ name: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeVarying.method_set_varying_name, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_varying_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_varying_name")
        return withUnsafePointer(to: &VisualShaderNodeVarying.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_varying_name() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(VisualShaderNodeVarying.method_get_varying_name, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_varying_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_varying_type")
        return withUnsafePointer(to: &VisualShaderNodeVarying.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3565867981)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_varying_type(_ type: VisualShader.VaryingType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeVarying.method_set_varying_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_varying_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_varying_type")
        return withUnsafePointer(to: &VisualShaderNodeVarying.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 523183580)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_varying_type() -> VisualShader.VaryingType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(VisualShaderNodeVarying.method_get_varying_type, handle, nil, &_result)
        return VisualShader.VaryingType (rawValue: _result)!
    }
    
}

