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


/// A ``Color`` parameter to be used within the visual shader graph.
/// 
/// Translated to `uniform vec4` in the shader language.
open class VisualShaderNodeColorParameter: VisualShaderNodeParameter {
    private static var className = StringName("VisualShaderNodeColorParameter")
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
    final public var defaultValue: Color {
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
        return withUnsafePointer(to: &VisualShaderNodeColorParameter.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(VisualShaderNodeColorParameter.method_set_default_value_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_default_value_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_default_value_enabled")
        return withUnsafePointer(to: &VisualShaderNodeColorParameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_default_value_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(VisualShaderNodeColorParameter.method_is_default_value_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_default_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_default_value")
        return withUnsafePointer(to: &VisualShaderNodeColorParameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_default_value(_ value: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeColorParameter.method_set_default_value, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_default_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_default_value")
        return withUnsafePointer(to: &VisualShaderNodeColorParameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_default_value() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(VisualShaderNodeColorParameter.method_get_default_value, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

