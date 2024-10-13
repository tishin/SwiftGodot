// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// SPIR-V intermediate representation as part of a ``RDShaderFile`` (used by ``RenderingDevice``).
/// 
/// ``RDShaderSPIRV`` represents a ``RDShaderFile``'s <a href="https://www.khronos.org/spir/">SPIR-V</a> code for various shader stages, as well as possible compilation error messages. SPIR-V is a low-level intermediate shader representation. This intermediate representation is not used directly by GPUs for rendering, but it can be compiled into binary shaders that GPUs can understand. Unlike compiled shaders, SPIR-V is portable across GPU models and driver versions.
/// 
/// This object is used by ``RenderingDevice``.
/// 
open class RDShaderSPIRV: Resource {
    override open class var godotClassName: StringName { "RDShaderSPIRV" }
    
    /* Properties */
    
    /// The SPIR-V bytecode for the vertex shader stage.
    final public var bytecodeVertex: PackedByteArray {
        get {
            return get_stage_bytecode (RenderingDevice.ShaderStage (rawValue: 0)!)
        }
        
        set {
            set_stage_bytecode (RenderingDevice.ShaderStage (rawValue: 0)!, newValue)
        }
        
    }
    
    /// The SPIR-V bytecode for the fragment shader stage.
    final public var bytecodeFragment: PackedByteArray {
        get {
            return get_stage_bytecode (RenderingDevice.ShaderStage (rawValue: 1)!)
        }
        
        set {
            set_stage_bytecode (RenderingDevice.ShaderStage (rawValue: 1)!, newValue)
        }
        
    }
    
    /// The SPIR-V bytecode for the tessellation control shader stage.
    final public var bytecodeTesselationControl: PackedByteArray {
        get {
            return get_stage_bytecode (RenderingDevice.ShaderStage (rawValue: 2)!)
        }
        
        set {
            set_stage_bytecode (RenderingDevice.ShaderStage (rawValue: 2)!, newValue)
        }
        
    }
    
    /// The SPIR-V bytecode for the tessellation evaluation shader stage.
    final public var bytecodeTesselationEvaluation: PackedByteArray {
        get {
            return get_stage_bytecode (RenderingDevice.ShaderStage (rawValue: 3)!)
        }
        
        set {
            set_stage_bytecode (RenderingDevice.ShaderStage (rawValue: 3)!, newValue)
        }
        
    }
    
    /// The SPIR-V bytecode for the compute shader stage.
    final public var bytecodeCompute: PackedByteArray {
        get {
            return get_stage_bytecode (RenderingDevice.ShaderStage (rawValue: 4)!)
        }
        
        set {
            set_stage_bytecode (RenderingDevice.ShaderStage (rawValue: 4)!, newValue)
        }
        
    }
    
    /// The compilation error message for the vertex shader stage (set by the SPIR-V compiler and Godot). If empty, shader compilation was successful.
    final public var compileErrorVertex: String {
        get {
            return get_stage_compile_error (RenderingDevice.ShaderStage (rawValue: 0)!)
        }
        
        set {
            set_stage_compile_error (RenderingDevice.ShaderStage (rawValue: 0)!, newValue)
        }
        
    }
    
    /// The compilation error message for the fragment shader stage (set by the SPIR-V compiler and Godot). If empty, shader compilation was successful.
    final public var compileErrorFragment: String {
        get {
            return get_stage_compile_error (RenderingDevice.ShaderStage (rawValue: 1)!)
        }
        
        set {
            set_stage_compile_error (RenderingDevice.ShaderStage (rawValue: 1)!, newValue)
        }
        
    }
    
    /// The compilation error message for the tessellation control shader stage (set by the SPIR-V compiler and Godot). If empty, shader compilation was successful.
    final public var compileErrorTesselationControl: String {
        get {
            return get_stage_compile_error (RenderingDevice.ShaderStage (rawValue: 2)!)
        }
        
        set {
            set_stage_compile_error (RenderingDevice.ShaderStage (rawValue: 2)!, newValue)
        }
        
    }
    
    /// The compilation error message for the tessellation evaluation shader stage (set by the SPIR-V compiler and Godot). If empty, shader compilation was successful.
    final public var compileErrorTesselationEvaluation: String {
        get {
            return get_stage_compile_error (RenderingDevice.ShaderStage (rawValue: 3)!)
        }
        
        set {
            set_stage_compile_error (RenderingDevice.ShaderStage (rawValue: 3)!, newValue)
        }
        
    }
    
    /// The compilation error message for the compute shader stage (set by the SPIR-V compiler and Godot). If empty, shader compilation was successful.
    final public var compileErrorCompute: String {
        get {
            return get_stage_compile_error (RenderingDevice.ShaderStage (rawValue: 4)!)
        }
        
        set {
            set_stage_compile_error (RenderingDevice.ShaderStage (rawValue: 4)!, newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_stage_bytecode: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_stage_bytecode")
        return withUnsafePointer(to: &RDShaderSPIRV.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3514097977)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the SPIR-V `bytecode` for the given shader `stage`. Equivalent to setting one of ``bytecodeCompute``, ``bytecodeFragment``, ``bytecodeTesselationControl``, ``bytecodeTesselationEvaluation``, ``bytecodeVertex``.
    fileprivate final func set_stage_bytecode(_ stage: RenderingDevice.ShaderStage, _ bytecode: PackedByteArray) {
        withUnsafePointer(to: stage.rawValue) { pArg0 in
            withUnsafePointer(to: bytecode.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RDShaderSPIRV.method_set_stage_bytecode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_stage_bytecode: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_stage_bytecode")
        return withUnsafePointer(to: &RDShaderSPIRV.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3816765404)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Equivalent to getting one of ``bytecodeCompute``, ``bytecodeFragment``, ``bytecodeTesselationControl``, ``bytecodeTesselationEvaluation``, ``bytecodeVertex``.
    fileprivate final func get_stage_bytecode(_ stage: RenderingDevice.ShaderStage) -> PackedByteArray {
        let _result: PackedByteArray = PackedByteArray ()
        withUnsafePointer(to: stage.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDShaderSPIRV.method_get_stage_bytecode, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_set_stage_compile_error: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_stage_compile_error")
        return withUnsafePointer(to: &RDShaderSPIRV.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 620821314)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the compilation error message for the given shader `stage` to `compileError`. Equivalent to setting one of ``compileErrorCompute``, ``compileErrorFragment``, ``compileErrorTesselationControl``, ``compileErrorTesselationEvaluation``, ``compileErrorVertex``.
    fileprivate final func set_stage_compile_error(_ stage: RenderingDevice.ShaderStage, _ compileError: String) {
        withUnsafePointer(to: stage.rawValue) { pArg0 in
            let compileError = GString(compileError)
            withUnsafePointer(to: compileError.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RDShaderSPIRV.method_set_stage_compile_error, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_stage_compile_error: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_stage_compile_error")
        return withUnsafePointer(to: &RDShaderSPIRV.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3354920045)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns the compilation error message for the given shader `stage`. Equivalent to getting one of ``compileErrorCompute``, ``compileErrorFragment``, ``compileErrorTesselationControl``, ``compileErrorTesselationEvaluation``, ``compileErrorVertex``.
    fileprivate final func get_stage_compile_error(_ stage: RenderingDevice.ShaderStage) -> String {
        let _result = GString ()
        withUnsafePointer(to: stage.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDShaderSPIRV.method_get_stage_compile_error, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
}

