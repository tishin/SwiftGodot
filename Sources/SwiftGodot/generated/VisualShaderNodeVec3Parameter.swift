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


/// A ``Vector3`` parameter to be used within the visual shader graph.
/// 
/// Translated to `uniform vec3` in the shader language.
open class VisualShaderNodeVec3Parameter: VisualShaderNodeParameter {
    private static var className = StringName("VisualShaderNodeVec3Parameter")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Enables usage of the ``defaultValue``.
    final public var defaultValueEnabled: Bool {
        get {
            return is_default_value_enabled ()
        }
        
        set {
            set_default_value_enabled (newValue)
        }
        
    }
    
    /// A default value to be assigned within the shader.
    final public var defaultValue: Vector3 {
        get {
            return get_default_value ()
        }
        
        set {
            set_default_value (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_default_value_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_default_value_enabled")
        return withUnsafePointer(to: &VisualShaderNodeVec3Parameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_default_value_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeVec3Parameter.method_set_default_value_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_default_value_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_default_value_enabled")
        return withUnsafePointer(to: &VisualShaderNodeVec3Parameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_default_value_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(VisualShaderNodeVec3Parameter.method_is_default_value_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_default_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_default_value")
        return withUnsafePointer(to: &VisualShaderNodeVec3Parameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_default_value(_ value: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeVec3Parameter.method_set_default_value, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_default_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_default_value")
        return withUnsafePointer(to: &VisualShaderNodeVec3Parameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_default_value() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(VisualShaderNodeVec3Parameter.method_get_default_value, handle, nil, &_result)
        return _result
    }
    
}

