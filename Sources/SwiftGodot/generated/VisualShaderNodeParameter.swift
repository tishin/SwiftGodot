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


/// A base type for the parameters within the visual shader graph.
/// 
/// A parameter represents a variable in the shader which is set externally, i.e. from the ``ShaderMaterial``. Parameters are exposed as properties in the ``ShaderMaterial`` and can be assigned from the Inspector or from a script.
open class VisualShaderNodeParameter: VisualShaderNode {
    private static var className = StringName("VisualShaderNodeParameter")
    override open class var godotClassName: StringName { className }
    public enum Qualifier: Int64, CaseIterable {
        /// The parameter will be tied to the ``ShaderMaterial`` using this shader.
        case none = 0 // QUAL_NONE
        /// The parameter will use a global value, defined in Project Settings.
        case global = 1 // QUAL_GLOBAL
        /// The parameter will be tied to the node with attached ``ShaderMaterial`` using this shader.
        case instance = 2 // QUAL_INSTANCE
        /// Represents the size of the ``VisualShaderNodeParameter/Qualifier`` enum.
        case max = 3 // QUAL_MAX
    }
    
    
    /* Properties */
    
    /// Name of the parameter, by which it can be accessed through the ``ShaderMaterial`` properties.
    final public var parameterName: String {
        get {
            return get_parameter_name ()
        }
        
        set {
            set_parameter_name (newValue)
        }
        
    }
    
    /// Defines the scope of the parameter.
    final public var qualifier: VisualShaderNodeParameter.Qualifier {
        get {
            return get_qualifier ()
        }
        
        set {
            set_qualifier (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_parameter_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_parameter_name")
        return withUnsafePointer(to: &VisualShaderNodeParameter.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(VisualShaderNodeParameter.method_set_parameter_name, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_parameter_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_parameter_name")
        return withUnsafePointer(to: &VisualShaderNodeParameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_parameter_name() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(VisualShaderNodeParameter.method_get_parameter_name, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_qualifier: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_qualifier")
        return withUnsafePointer(to: &VisualShaderNodeParameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1276489447)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_qualifier(_ qualifier: VisualShaderNodeParameter.Qualifier) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: qualifier.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeParameter.method_set_qualifier, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_qualifier: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_qualifier")
        return withUnsafePointer(to: &VisualShaderNodeParameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3558406205)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_qualifier() -> VisualShaderNodeParameter.Qualifier {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(VisualShaderNodeParameter.method_get_qualifier, handle, nil, &_result)
        return VisualShaderNodeParameter.Qualifier (rawValue: _result)!
    }
    
}

