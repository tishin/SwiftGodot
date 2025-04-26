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


/// A ``Cubemap`` sampling node to be used within the visual shader graph.
/// 
/// Translated to `texture(cubemap, vec3)` in the shader language. Returns a color vector and alpha channel as scalar.
open class VisualShaderNodeCubemap: VisualShaderNode {
    private static var className = StringName("VisualShaderNodeCubemap")
    override open class var godotClassName: StringName { className }
    public enum Source: Int64, CaseIterable {
        /// Use the ``Cubemap`` set via ``cubeMap``. If this is set to ``source``, the `samplerCube` port is ignored.
        case texture = 0 // SOURCE_TEXTURE
        /// Use the ``Cubemap`` sampler reference passed via the `samplerCube` port. If this is set to ``source``, the ``cubeMap`` texture is ignored.
        case port = 1 // SOURCE_PORT
        /// Represents the size of the ``VisualShaderNodeCubemap/Source`` enum.
        case max = 2 // SOURCE_MAX
    }
    
    public enum TextureType: Int64, CaseIterable {
        /// No hints are added to the uniform declaration.
        case data = 0 // TYPE_DATA
        /// Adds `source_color` as hint to the uniform declaration for proper sRGB to linear conversion.
        case color = 1 // TYPE_COLOR
        /// Adds `hint_normal` as hint to the uniform declaration, which internally converts the texture for proper usage as normal map.
        case normalMap = 2 // TYPE_NORMAL_MAP
        /// Represents the size of the ``VisualShaderNodeCubemap/TextureType`` enum.
        case max = 3 // TYPE_MAX
    }
    
    
    /* Properties */
    
    /// Defines which source should be used for the sampling. See ``VisualShaderNodeCubemap/Source`` for options.
    final public var source: VisualShaderNodeCubemap.Source {
        get {
            return get_source ()
        }
        
        set {
            set_source (newValue)
        }
        
    }
    
    /// The ``Cubemap`` texture to sample when using ``Source/texture`` as ``source``.
    final public var cubeMap: TextureLayered? {
        get {
            return get_cube_map ()
        }
        
        set {
            set_cube_map (newValue)
        }
        
    }
    
    /// Defines the type of data provided by the source texture. See ``VisualShaderNodeCubemap/TextureType`` for options.
    final public var textureType: VisualShaderNodeCubemap.TextureType {
        get {
            return get_texture_type ()
        }
        
        set {
            set_texture_type (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_source: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_source")
        return withUnsafePointer(to: &VisualShaderNodeCubemap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1625400621)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_source(_ value: VisualShaderNodeCubemap.Source) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: value.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeCubemap.method_set_source, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_source: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_source")
        return withUnsafePointer(to: &VisualShaderNodeCubemap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2222048781)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_source() -> VisualShaderNodeCubemap.Source {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(VisualShaderNodeCubemap.method_get_source, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return VisualShaderNodeCubemap.Source (rawValue: _result)!
    }
    
    fileprivate static let method_set_cube_map: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_cube_map")
        return withUnsafePointer(to: &VisualShaderNodeCubemap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1278366092)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_cube_map(_ value: TextureLayered?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: value?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeCubemap.method_set_cube_map, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_cube_map: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_cube_map")
        return withUnsafePointer(to: &VisualShaderNodeCubemap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3984243839)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_cube_map() -> TextureLayered? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(VisualShaderNodeCubemap.method_get_cube_map, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_texture_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_texture_type")
        return withUnsafePointer(to: &VisualShaderNodeCubemap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1899718876)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_type(_ value: VisualShaderNodeCubemap.TextureType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: value.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeCubemap.method_set_texture_type, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_texture_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture_type")
        return withUnsafePointer(to: &VisualShaderNodeCubemap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3356498888)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_type() -> VisualShaderNodeCubemap.TextureType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(VisualShaderNodeCubemap.method_get_texture_type, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return VisualShaderNodeCubemap.TextureType (rawValue: _result)!
    }
    
}

