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


/// Compiled shader file in SPIR-V form (used by ``RenderingDevice``). Not to be confused with Godot's own ``Shader``.
/// 
/// Compiled shader file in SPIR-V form.
/// 
/// See also ``RDShaderSource``. ``RDShaderFile`` is only meant to be used with the ``RenderingDevice`` API. It should not be confused with Godot's own ``Shader`` resource, which is what Godot's various nodes use for high-level shader programming.
/// 
open class RDShaderFile: Resource {
    private static var className = StringName("RDShaderFile")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The base compilation error message, which indicates errors not related to a specific shader stage if non-empty. If empty, shader compilation is not necessarily successful (check ``RDShaderSPIRV``'s error message members).
    final public var baseError: String {
        get {
            return get_base_error ()
        }
        
        set {
            set_base_error (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_bytecode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bytecode")
        return withUnsafePointer(to: &RDShaderFile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1526857008)!
            }
            
        }
        
    }()
    
    /// Sets the SPIR-V `bytecode` that will be compiled for the specified `version`.
    public final func setBytecode(_ bytecode: RDShaderSPIRV?, version: StringName = StringName ("")) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: bytecode?.handle) { pArg0 in
            withUnsafePointer(to: version.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RDShaderFile.method_set_bytecode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_spirv: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_spirv")
        return withUnsafePointer(to: &RDShaderFile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2689310080)!
            }
            
        }
        
    }()
    
    /// Returns the SPIR-V intermediate representation for the specified shader `version`.
    public final func getSpirv(version: StringName = StringName ("")) -> RDShaderSPIRV? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: version.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDShaderFile.method_get_spirv, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_version_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_version_list")
        return withUnsafePointer(to: &RDShaderFile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns the list of compiled versions for this shader.
    public final func getVersionList() -> TypedArray<StringName> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(RDShaderFile.method_get_version_list, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<StringName>(takingOver: _result)
    }
    
    fileprivate static let method_set_base_error: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_base_error")
        return withUnsafePointer(to: &RDShaderFile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_base_error(_ error: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let error = GString(error)
        withUnsafePointer(to: error.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDShaderFile.method_set_base_error, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_base_error: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_base_error")
        return withUnsafePointer(to: &RDShaderFile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_base_error() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(RDShaderFile.method_get_base_error, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
}

