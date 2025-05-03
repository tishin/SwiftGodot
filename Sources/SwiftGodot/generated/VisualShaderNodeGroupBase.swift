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


/// Base class for a family of nodes with variable number of input and output ports within the visual shader graph.
/// 
/// Currently, has no direct usage, use the derived classes instead.
open class VisualShaderNodeGroupBase: VisualShaderNodeResizableBase {
    private static var className = StringName("VisualShaderNodeGroupBase")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_set_inputs: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_inputs")
        return withUnsafePointer(to: &VisualShaderNodeGroupBase.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Defines all input ports using a ``String`` formatted as a colon-separated list: `id,type,name;` (see ``addInputPort(id:type:name:)``).
    public final func setInputs(_ inputs: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let inputs = GString(inputs)
        withUnsafePointer(to: inputs.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeGroupBase.method_set_inputs, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_inputs: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_inputs")
        return withUnsafePointer(to: &VisualShaderNodeGroupBase.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns a ``String`` description of the input ports as a colon-separated list using the format `id,type,name;` (see ``addInputPort(id:type:name:)``).
    public final func getInputs() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(VisualShaderNodeGroupBase.method_get_inputs, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_outputs: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_outputs")
        return withUnsafePointer(to: &VisualShaderNodeGroupBase.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Defines all output ports using a ``String`` formatted as a colon-separated list: `id,type,name;` (see ``addOutputPort(id:type:name:)``).
    public final func setOutputs(_ outputs: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let outputs = GString(outputs)
        withUnsafePointer(to: outputs.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeGroupBase.method_set_outputs, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_outputs: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_outputs")
        return withUnsafePointer(to: &VisualShaderNodeGroupBase.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns a ``String`` description of the output ports as a colon-separated list using the format `id,type,name;` (see ``addOutputPort(id:type:name:)``).
    public final func getOutputs() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(VisualShaderNodeGroupBase.method_get_outputs, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_is_valid_port_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_valid_port_name")
        return withUnsafePointer(to: &VisualShaderNodeGroupBase.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the specified port name does not override an existed port name and is valid within the shader.
    public final func isValidPortName(_ name: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeGroupBase.method_is_valid_port_name, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_add_input_port: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_input_port")
        return withUnsafePointer(to: &VisualShaderNodeGroupBase.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2285447957)!
            }
            
        }
        
    }()
    
    /// Adds an input port with the specified `type` (see ``VisualShaderNode.PortType``) and `name`.
    public final func addInputPort(id: Int32, type: Int32, name: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: type) { pArg1 in
                let name = GString(name)
                withUnsafePointer(to: name.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(VisualShaderNodeGroupBase.method_add_input_port, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_input_port: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_input_port")
        return withUnsafePointer(to: &VisualShaderNodeGroupBase.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes the specified input port.
    public final func removeInputPort(id: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeGroupBase.method_remove_input_port, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_input_port_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_input_port_count")
        return withUnsafePointer(to: &VisualShaderNodeGroupBase.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of input ports in use. Alternative for ``getFreeInputPortId()``.
    public final func getInputPortCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(VisualShaderNodeGroupBase.method_get_input_port_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_has_input_port: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_input_port")
        return withUnsafePointer(to: &VisualShaderNodeGroupBase.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the specified input port exists.
    public final func hasInputPort(id: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeGroupBase.method_has_input_port, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_clear_input_ports: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_input_ports")
        return withUnsafePointer(to: &VisualShaderNodeGroupBase.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all previously specified input ports.
    public final func clearInputPorts() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(VisualShaderNodeGroupBase.method_clear_input_ports, handle, nil, nil)
        
    }
    
    fileprivate static let method_add_output_port: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_output_port")
        return withUnsafePointer(to: &VisualShaderNodeGroupBase.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2285447957)!
            }
            
        }
        
    }()
    
    /// Adds an output port with the specified `type` (see ``VisualShaderNode.PortType``) and `name`.
    public final func addOutputPort(id: Int32, type: Int32, name: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: type) { pArg1 in
                let name = GString(name)
                withUnsafePointer(to: name.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(VisualShaderNodeGroupBase.method_add_output_port, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_output_port: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_output_port")
        return withUnsafePointer(to: &VisualShaderNodeGroupBase.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes the specified output port.
    public final func removeOutputPort(id: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeGroupBase.method_remove_output_port, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_output_port_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_output_port_count")
        return withUnsafePointer(to: &VisualShaderNodeGroupBase.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of output ports in use. Alternative for ``getFreeOutputPortId()``.
    public final func getOutputPortCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(VisualShaderNodeGroupBase.method_get_output_port_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_has_output_port: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_output_port")
        return withUnsafePointer(to: &VisualShaderNodeGroupBase.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the specified output port exists.
    public final func hasOutputPort(id: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeGroupBase.method_has_output_port, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_clear_output_ports: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_output_ports")
        return withUnsafePointer(to: &VisualShaderNodeGroupBase.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all previously specified output ports.
    public final func clearOutputPorts() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(VisualShaderNodeGroupBase.method_clear_output_ports, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_input_port_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_input_port_name")
        return withUnsafePointer(to: &VisualShaderNodeGroupBase.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Renames the specified input port.
    public final func setInputPortName(id: Int32, name: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            let name = GString(name)
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(VisualShaderNodeGroupBase.method_set_input_port_name, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_input_port_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_input_port_type")
        return withUnsafePointer(to: &VisualShaderNodeGroupBase.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Sets the specified input port's type (see ``VisualShaderNode.PortType``).
    public final func setInputPortType(id: Int32, type: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: type) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(VisualShaderNodeGroupBase.method_set_input_port_type, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_output_port_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_output_port_name")
        return withUnsafePointer(to: &VisualShaderNodeGroupBase.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Renames the specified output port.
    public final func setOutputPortName(id: Int32, name: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            let name = GString(name)
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(VisualShaderNodeGroupBase.method_set_output_port_name, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_output_port_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_output_port_type")
        return withUnsafePointer(to: &VisualShaderNodeGroupBase.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Sets the specified output port's type (see ``VisualShaderNode.PortType``).
    public final func setOutputPortType(id: Int32, type: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: type) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(VisualShaderNodeGroupBase.method_set_output_port_type, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_free_input_port_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_free_input_port_id")
        return withUnsafePointer(to: &VisualShaderNodeGroupBase.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns a free input port ID which can be used in ``addInputPort(id:type:name:)``.
    public final func getFreeInputPortId() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(VisualShaderNodeGroupBase.method_get_free_input_port_id, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_free_output_port_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_free_output_port_id")
        return withUnsafePointer(to: &VisualShaderNodeGroupBase.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns a free output port ID which can be used in ``addOutputPort(id:type:name:)``.
    public final func getFreeOutputPortId() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(VisualShaderNodeGroupBase.method_get_free_output_port_id, handle, nil, &_result)
        return _result
    }
    
}

