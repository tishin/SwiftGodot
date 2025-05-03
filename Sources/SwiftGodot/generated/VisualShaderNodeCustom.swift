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


/// Virtual class to define custom ``VisualShaderNode``s for use in the Visual Shader Editor.
/// 
/// By inheriting this class you can create a custom ``VisualShader`` script addon which will be automatically added to the Visual Shader Editor. The ``VisualShaderNode``'s behavior is defined by overriding the provided virtual methods.
/// 
/// In order for the node to be registered as an editor addon, you must use the `@tool` annotation and provide a `class_name` for your custom script. For example:
/// 
open class VisualShaderNodeCustom: VisualShaderNode {
    private static var className = StringName("VisualShaderNodeCustom")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /* Methods */
    fileprivate static let method__get_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_name")
        return withUnsafePointer(to: &VisualShaderNodeCustom.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Override this method to define the name of the associated custom node in the Visual Shader Editor's members dialog and graph.
    /// 
    /// Defining this method is **optional**, but recommended. If not overridden, the node will be named as "Unnamed".
    /// 
    @_documentation(visibility: public)
    open func _getName() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(VisualShaderNodeCustom.method__get_name, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__get_description: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_description")
        return withUnsafePointer(to: &VisualShaderNodeCustom.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Override this method to define the description of the associated custom node in the Visual Shader Editor's members dialog.
    /// 
    /// Defining this method is **optional**.
    /// 
    @_documentation(visibility: public)
    open func _getDescription() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(VisualShaderNodeCustom.method__get_description, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__get_category: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_category")
        return withUnsafePointer(to: &VisualShaderNodeCustom.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Override this method to define the path to the associated custom node in the Visual Shader Editor's members dialog. The path may look like `"MyGame/MyFunctions/Noise"`.
    /// 
    /// Defining this method is **optional**. If not overridden, the node will be filed under the "Addons" category.
    /// 
    @_documentation(visibility: public)
    open func _getCategory() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(VisualShaderNodeCustom.method__get_category, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__get_return_icon_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_return_icon_type")
        return withUnsafePointer(to: &VisualShaderNodeCustom.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1287173294)!
            }
            
        }
        
    }()
    
    /// Override this method to define the return icon of the associated custom node in the Visual Shader Editor's members dialog.
    /// 
    /// Defining this method is **optional**. If not overridden, no return icon is shown.
    /// 
    @_documentation(visibility: public)
    open func _getReturnIconType() -> VisualShaderNode.PortType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(VisualShaderNodeCustom.method__get_return_icon_type, handle, nil, &_result)
        return VisualShaderNode.PortType (rawValue: _result)!
    }
    
    fileprivate static let method__get_input_port_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_input_port_count")
        return withUnsafePointer(to: &VisualShaderNodeCustom.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Override this method to define the number of input ports of the associated custom node.
    /// 
    /// Defining this method is **required**. If not overridden, the node has no input ports.
    /// 
    @_documentation(visibility: public)
    open func _getInputPortCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(VisualShaderNodeCustom.method__get_input_port_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_input_port_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_input_port_type")
        return withUnsafePointer(to: &VisualShaderNodeCustom.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4102573379)!
            }
            
        }
        
    }()
    
    /// Override this method to define the returned type of each input port of the associated custom node (see ``VisualShaderNode.PortType`` for possible types).
    /// 
    /// Defining this method is **optional**, but recommended. If not overridden, input ports will return the ``VisualShaderNode/PortType/scalar`` type.
    /// 
    @_documentation(visibility: public)
    open func _getInputPortType(port: Int32) -> VisualShaderNode.PortType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: port) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeCustom.method__get_input_port_type, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return VisualShaderNode.PortType (rawValue: _result)!
    }
    
    fileprivate static let method__get_input_port_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_input_port_name")
        return withUnsafePointer(to: &VisualShaderNodeCustom.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Override this method to define the names of input ports of the associated custom node. The names are used both for the input slots in the editor and as identifiers in the shader code, and are passed in the `input_vars` array in ``_getCode(inputVars:outputVars:mode:type:)``.
    /// 
    /// Defining this method is **optional**, but recommended. If not overridden, input ports are named as `"in" + str(port)`.
    /// 
    @_documentation(visibility: public)
    open func _getInputPortName(port: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: port) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeCustom.method__get_input_port_name, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__get_input_port_default_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_input_port_default_value")
        return withUnsafePointer(to: &VisualShaderNodeCustom.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4227898402)!
            }
            
        }
        
    }()
    
    /// Override this method to define the default value for the specified input port. Prefer use this over ``VisualShaderNode/setInputPortDefaultValue(port:value:prevValue:)``.
    /// 
    /// Defining this method is **required**. If not overridden, the node has no default values for their input ports.
    /// 
    @_documentation(visibility: public)
    open func _getInputPortDefaultValue(port: Int32) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: port) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeCustom.method__get_input_port_default_value, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method__get_default_input_port: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_default_input_port")
        return withUnsafePointer(to: &VisualShaderNodeCustom.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1894493699)!
            }
            
        }
        
    }()
    
    /// Override this method to define the input port which should be connected by default when this node is created as a result of dragging a connection from an existing node to the empty space on the graph.
    /// 
    /// Defining this method is **optional**. If not overridden, the connection will be created to the first valid port.
    /// 
    @_documentation(visibility: public)
    open func _getDefaultInputPort(type: VisualShaderNode.PortType) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeCustom.method__get_default_input_port, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_output_port_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_output_port_count")
        return withUnsafePointer(to: &VisualShaderNodeCustom.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Override this method to define the number of output ports of the associated custom node.
    /// 
    /// Defining this method is **required**. If not overridden, the node has no output ports.
    /// 
    @_documentation(visibility: public)
    open func _getOutputPortCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(VisualShaderNodeCustom.method__get_output_port_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_output_port_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_output_port_type")
        return withUnsafePointer(to: &VisualShaderNodeCustom.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4102573379)!
            }
            
        }
        
    }()
    
    /// Override this method to define the returned type of each output port of the associated custom node (see ``VisualShaderNode.PortType`` for possible types).
    /// 
    /// Defining this method is **optional**, but recommended. If not overridden, output ports will return the ``VisualShaderNode/PortType/scalar`` type.
    /// 
    @_documentation(visibility: public)
    open func _getOutputPortType(port: Int32) -> VisualShaderNode.PortType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: port) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeCustom.method__get_output_port_type, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return VisualShaderNode.PortType (rawValue: _result)!
    }
    
    fileprivate static let method__get_output_port_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_output_port_name")
        return withUnsafePointer(to: &VisualShaderNodeCustom.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Override this method to define the names of output ports of the associated custom node. The names are used both for the output slots in the editor and as identifiers in the shader code, and are passed in the `output_vars` array in ``_getCode(inputVars:outputVars:mode:type:)``.
    /// 
    /// Defining this method is **optional**, but recommended. If not overridden, output ports are named as `"out" + str(port)`.
    /// 
    @_documentation(visibility: public)
    open func _getOutputPortName(port: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: port) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeCustom.method__get_output_port_name, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__get_property_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_property_count")
        return withUnsafePointer(to: &VisualShaderNodeCustom.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Override this method to define the number of the properties.
    /// 
    /// Defining this method is **optional**.
    /// 
    @_documentation(visibility: public)
    open func _getPropertyCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(VisualShaderNodeCustom.method__get_property_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_property_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_property_name")
        return withUnsafePointer(to: &VisualShaderNodeCustom.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Override this method to define the names of the property of the associated custom node.
    /// 
    /// Defining this method is **optional**.
    /// 
    @_documentation(visibility: public)
    open func _getPropertyName(index: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeCustom.method__get_property_name, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__get_property_default_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_property_default_index")
        return withUnsafePointer(to: &VisualShaderNodeCustom.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Override this method to define the default index of the property of the associated custom node.
    /// 
    /// Defining this method is **optional**.
    /// 
    @_documentation(visibility: public)
    open func _getPropertyDefaultIndex(_ index: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeCustom.method__get_property_default_index, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_property_options: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_property_options")
        return withUnsafePointer(to: &VisualShaderNodeCustom.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 647634434)!
            }
            
        }
        
    }()
    
    /// Override this method to define the options inside the drop-down list property of the associated custom node.
    /// 
    /// Defining this method is **optional**.
    /// 
    @_documentation(visibility: public)
    open func _getPropertyOptions(index: Int32) -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeCustom.method__get_property_options, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_code: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_code")
        return withUnsafePointer(to: &VisualShaderNodeCustom.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4287175357)!
            }
            
        }
        
    }()
    
    /// Override this method to define the actual shader code of the associated custom node. The shader code should be returned as a string, which can have multiple lines (the `"""` multiline string construct can be used for convenience).
    /// 
    /// The `inputVars` and `outputVars` arrays contain the string names of the various input and output variables, as defined by `_get_input_*` and `_get_output_*` virtual methods in this class.
    /// 
    /// The output ports can be assigned values in the shader code. For example, `return output_vars[0] + " = " + input_vars[0] + ";"`.
    /// 
    /// You can customize the generated code based on the shader `mode` (see ``Shader.Mode``) and/or `type` (see ``VisualShader.GType``).
    /// 
    /// Defining this method is **required**.
    /// 
    @_documentation(visibility: public)
    open func _getCode(inputVars: TypedArray<String>, outputVars: TypedArray<String>, mode: Shader.Mode, type: VisualShader.GType) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: inputVars.array.content) { pArg0 in
            withUnsafePointer(to: outputVars.array.content) { pArg1 in
                withUnsafePointer(to: mode.rawValue) { pArg2 in
                    withUnsafePointer(to: type.rawValue) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(VisualShaderNodeCustom.method__get_code, handle, pArgs, &_result.content)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__get_func_code: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_func_code")
        return withUnsafePointer(to: &VisualShaderNodeCustom.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1924221678)!
            }
            
        }
        
    }()
    
    /// Override this method to add a shader code to the beginning of each shader function (once). The shader code should be returned as a string, which can have multiple lines (the `"""` multiline string construct can be used for convenience).
    /// 
    /// If there are multiple custom nodes of different types which use this feature the order of each insertion is undefined.
    /// 
    /// You can customize the generated code based on the shader `mode` (see ``Shader.Mode``) and/or `type` (see ``VisualShader.GType``).
    /// 
    /// Defining this method is **optional**.
    /// 
    @_documentation(visibility: public)
    open func _getFuncCode(mode: Shader.Mode, type: VisualShader.GType) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: type.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(VisualShaderNodeCustom.method__get_func_code, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__get_global_code: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_global_code")
        return withUnsafePointer(to: &VisualShaderNodeCustom.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3956542358)!
            }
            
        }
        
    }()
    
    /// Override this method to add shader code on top of the global shader, to define your own standard library of reusable methods, varyings, constants, uniforms, etc. The shader code should be returned as a string, which can have multiple lines (the `"""` multiline string construct can be used for convenience).
    /// 
    /// Be careful with this functionality as it can cause name conflicts with other custom nodes, so be sure to give the defined entities unique names.
    /// 
    /// You can customize the generated code based on the shader `mode` (see ``Shader.Mode``).
    /// 
    /// Defining this method is **optional**.
    /// 
    @_documentation(visibility: public)
    open func _getGlobalCode(mode: Shader.Mode) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeCustom.method__get_global_code, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__is_highend: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_highend")
        return withUnsafePointer(to: &VisualShaderNodeCustom.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Override this method to enable high-end mark in the Visual Shader Editor's members dialog.
    /// 
    /// Defining this method is **optional**. If not overridden, it's `false`.
    /// 
    @_documentation(visibility: public)
    open func _isHighend() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(VisualShaderNodeCustom.method__is_highend, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__is_available: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_available")
        return withUnsafePointer(to: &VisualShaderNodeCustom.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1932120545)!
            }
            
        }
        
    }()
    
    /// Override this method to prevent the node to be visible in the member dialog for the certain `mode` (see ``Shader.Mode``) and/or `type` (see ``VisualShader.GType``).
    /// 
    /// Defining this method is **optional**. If not overridden, it's `true`.
    /// 
    @_documentation(visibility: public)
    open func _isAvailable(mode: Shader.Mode, type: VisualShader.GType) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: type.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(VisualShaderNodeCustom.method__is_available, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_option_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_option_index")
        return withUnsafePointer(to: &VisualShaderNodeCustom.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the selected index of the drop-down list option within a graph. You may use this function to define the specific behavior in the ``_getCode(inputVars:outputVars:mode:type:)`` or ``_getGlobalCode(mode:)``.
    public final func getOptionIndex(option: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: option) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeCustom.method_get_option_index, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_category":
                return _VisualShaderNodeCustom_proxy_get_category
            case "_get_code":
                return _VisualShaderNodeCustom_proxy_get_code
            case "_get_default_input_port":
                return _VisualShaderNodeCustom_proxy_get_default_input_port
            case "_get_description":
                return _VisualShaderNodeCustom_proxy_get_description
            case "_get_func_code":
                return _VisualShaderNodeCustom_proxy_get_func_code
            case "_get_global_code":
                return _VisualShaderNodeCustom_proxy_get_global_code
            case "_get_input_port_count":
                return _VisualShaderNodeCustom_proxy_get_input_port_count
            case "_get_input_port_default_value":
                return _VisualShaderNodeCustom_proxy_get_input_port_default_value
            case "_get_input_port_name":
                return _VisualShaderNodeCustom_proxy_get_input_port_name
            case "_get_input_port_type":
                return _VisualShaderNodeCustom_proxy_get_input_port_type
            case "_get_name":
                return _VisualShaderNodeCustom_proxy_get_name
            case "_get_output_port_count":
                return _VisualShaderNodeCustom_proxy_get_output_port_count
            case "_get_output_port_name":
                return _VisualShaderNodeCustom_proxy_get_output_port_name
            case "_get_output_port_type":
                return _VisualShaderNodeCustom_proxy_get_output_port_type
            case "_get_property_count":
                return _VisualShaderNodeCustom_proxy_get_property_count
            case "_get_property_default_index":
                return _VisualShaderNodeCustom_proxy_get_property_default_index
            case "_get_property_name":
                return _VisualShaderNodeCustom_proxy_get_property_name
            case "_get_property_options":
                return _VisualShaderNodeCustom_proxy_get_property_options
            case "_get_return_icon_type":
                return _VisualShaderNodeCustom_proxy_get_return_icon_type
            case "_is_available":
                return _VisualShaderNodeCustom_proxy_is_available
            case "_is_highend":
                return _VisualShaderNodeCustom_proxy_is_highend
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _VisualShaderNodeCustom_proxy_get_category (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VisualShaderNodeCustom else { return }
    let ret = GString (swiftObject._getCategory ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _VisualShaderNodeCustom_proxy_get_code (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VisualShaderNodeCustom else { return }
    let ret = GString (swiftObject._getCode (inputVars: args [0]!.assumingMemoryBound (to: TypedArray<String>.self).pointee, outputVars: args [1]!.assumingMemoryBound (to: TypedArray<String>.self).pointee, mode: args [2]!.assumingMemoryBound (to: Shader.Mode.self).pointee, type: args [3]!.assumingMemoryBound (to: VisualShader.GType.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _VisualShaderNodeCustom_proxy_get_default_input_port (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VisualShaderNodeCustom else { return }
    let ret = swiftObject._getDefaultInputPort (type: args [0]!.assumingMemoryBound (to: VisualShaderNode.PortType.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _VisualShaderNodeCustom_proxy_get_description (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VisualShaderNodeCustom else { return }
    let ret = GString (swiftObject._getDescription ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _VisualShaderNodeCustom_proxy_get_func_code (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VisualShaderNodeCustom else { return }
    let ret = GString (swiftObject._getFuncCode (mode: args [0]!.assumingMemoryBound (to: Shader.Mode.self).pointee, type: args [1]!.assumingMemoryBound (to: VisualShader.GType.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _VisualShaderNodeCustom_proxy_get_global_code (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VisualShaderNodeCustom else { return }
    let ret = GString (swiftObject._getGlobalCode (mode: args [0]!.assumingMemoryBound (to: Shader.Mode.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _VisualShaderNodeCustom_proxy_get_input_port_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VisualShaderNodeCustom else { return }
    let ret = swiftObject._getInputPortCount ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _VisualShaderNodeCustom_proxy_get_input_port_default_value (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VisualShaderNodeCustom else { return }
    let ret = swiftObject._getInputPortDefaultValue (port: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes(of: ret.content, as: Variant.ContentType.self)
    ret?.content = Variant.zero
}

func _VisualShaderNodeCustom_proxy_get_input_port_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VisualShaderNodeCustom else { return }
    let ret = GString (swiftObject._getInputPortName (port: args [0]!.assumingMemoryBound (to: Int32.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _VisualShaderNodeCustom_proxy_get_input_port_type (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VisualShaderNodeCustom else { return }
    let ret = swiftObject._getInputPortType (port: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _VisualShaderNodeCustom_proxy_get_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VisualShaderNodeCustom else { return }
    let ret = GString (swiftObject._getName ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _VisualShaderNodeCustom_proxy_get_output_port_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VisualShaderNodeCustom else { return }
    let ret = swiftObject._getOutputPortCount ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _VisualShaderNodeCustom_proxy_get_output_port_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VisualShaderNodeCustom else { return }
    let ret = GString (swiftObject._getOutputPortName (port: args [0]!.assumingMemoryBound (to: Int32.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _VisualShaderNodeCustom_proxy_get_output_port_type (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VisualShaderNodeCustom else { return }
    let ret = swiftObject._getOutputPortType (port: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _VisualShaderNodeCustom_proxy_get_property_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VisualShaderNodeCustom else { return }
    let ret = swiftObject._getPropertyCount ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _VisualShaderNodeCustom_proxy_get_property_default_index (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VisualShaderNodeCustom else { return }
    let ret = swiftObject._getPropertyDefaultIndex (args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _VisualShaderNodeCustom_proxy_get_property_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VisualShaderNodeCustom else { return }
    let ret = GString (swiftObject._getPropertyName (index: args [0]!.assumingMemoryBound (to: Int32.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _VisualShaderNodeCustom_proxy_get_property_options (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VisualShaderNodeCustom else { return }
    let ret = swiftObject._getPropertyOptions (index: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _VisualShaderNodeCustom_proxy_get_return_icon_type (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VisualShaderNodeCustom else { return }
    let ret = swiftObject._getReturnIconType ()
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _VisualShaderNodeCustom_proxy_is_available (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VisualShaderNodeCustom else { return }
    let ret = swiftObject._isAvailable (mode: args [0]!.assumingMemoryBound (to: Shader.Mode.self).pointee, type: args [1]!.assumingMemoryBound (to: VisualShader.GType.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _VisualShaderNodeCustom_proxy_is_highend (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VisualShaderNodeCustom else { return }
    let ret = swiftObject._isHighend ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

