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


/// A shader implemented in the Godot shading language.
/// 
/// A custom shader program implemented in the Godot shading language, saved with the `.gdshader` extension.
/// 
/// This class is used by a ``ShaderMaterial`` and allows you to write your own custom behavior for rendering visual items or updating particle information. For a detailed explanation and usage, please see the tutorials linked below.
/// 
open class Shader: Resource {
    private static var className = StringName("Shader")
    override open class var godotClassName: StringName { className }
    public enum Mode: Int64, CaseIterable {
        /// Mode used to draw all 3D objects.
        case spatial = 0 // MODE_SPATIAL
        /// Mode used to draw all 2D objects.
        case canvasItem = 1 // MODE_CANVAS_ITEM
        /// Mode used to calculate particle information on a per-particle basis. Not used for drawing.
        case particles = 2 // MODE_PARTICLES
        /// Mode used for drawing skies. Only works with shaders attached to ``Sky`` objects.
        case sky = 3 // MODE_SKY
        /// Mode used for setting the color and density of volumetric fog effect.
        case fog = 4 // MODE_FOG
    }
    
    
    /* Properties */
    
    /// Returns the shader's code as the user has written it, not the full generated code used internally.
    final public var code: String {
        get {
            return get_code ()
        }
        
        set {
            set_code (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_get_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_mode")
        return withUnsafePointer(to: &Shader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3392948163)!
            }
            
        }
        
    }()
    
    /// Returns the shader mode for the shader.
    public final func getMode() -> Shader.Mode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(Shader.method_get_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return Shader.Mode (rawValue: _result)!
    }
    
    fileprivate static let method_set_code: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_code")
        return withUnsafePointer(to: &Shader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_code(_ code: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let code = GString(code)
        withUnsafePointer(to: code.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Shader.method_set_code, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_code: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_code")
        return withUnsafePointer(to: &Shader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_code() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(Shader.method_get_code, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_default_texture_parameter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_default_texture_parameter")
        return withUnsafePointer(to: &Shader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3850209648)!
            }
            
        }
        
    }()
    
    /// Sets the default texture to be used with a texture uniform. The default is used if a texture is not set in the ``ShaderMaterial``.
    /// 
    /// > Note: `name` must match the name of the uniform in the code exactly.
    /// 
    /// > Note: If the sampler array is used use `index` to access the specified texture.
    /// 
    public final func setDefaultTextureParameter(name: StringName, texture: Texture?, index: Int32 = 0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: texture?.handle) { pArg1 in
                withUnsafePointer(to: index) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Shader.method_set_default_texture_parameter, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_default_texture_parameter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_default_texture_parameter")
        return withUnsafePointer(to: &Shader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4213877425)!
            }
            
        }
        
    }()
    
    /// Returns the texture that is set as default for the specified parameter.
    /// 
    /// > Note: `name` must match the name of the uniform in the code exactly.
    /// 
    /// > Note: If the sampler array is used use `index` to access the specified texture.
    /// 
    public final func getDefaultTextureParameter(name: StringName, index: Int32 = 0) -> Texture? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: index) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Shader.method_get_default_texture_parameter, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_shader_uniform_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_shader_uniform_list")
        return withUnsafePointer(to: &Shader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1230511656)!
            }
            
        }
        
    }()
    
    /// Returns the list of shader uniforms that can be assigned to a ``ShaderMaterial``, for use with ``ShaderMaterial/setShaderParameter(param:value:)`` and ``ShaderMaterial/getShaderParameter(param:)``. The parameters returned are contained in dictionaries in a similar format to the ones returned by ``Object/getPropertyList()``.
    /// 
    /// If argument `getGroups` is `true`, parameter grouping hints are also included in the list.
    /// 
    public final func getShaderUniformList(getGroups: Bool = false) -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        withUnsafePointer(to: getGroups) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Shader.method_get_shader_uniform_list, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_inspect_native_shader_code: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("inspect_native_shader_code")
        return withUnsafePointer(to: &Shader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Only available when running in the editor. Opens a popup that visualizes the generated shader code, including all variants and internal shader code. See also ``Material/inspectNativeShaderCode()``.
    public final func inspectNativeShaderCode() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Shader.method_inspect_native_shader_code, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
}

