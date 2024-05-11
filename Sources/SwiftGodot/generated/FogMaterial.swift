// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A material that controls how volumetric fog is rendered, to be assigned to a ``FogVolume``.
/// 
/// A ``Material`` resource that can be used by ``FogVolume``s to draw volumetric effects.
/// 
/// If you need more advanced effects, use a custom <a href="https://docs.godotengine.org/en//tutorials/shaders/shader_reference/fog_shader.html">fog shader</a>.
/// 
open class FogMaterial: Material {
    override open class var godotClassName: StringName { "FogMaterial" }
    
    /* Properties */
    
    /// The density of the ``FogVolume``. Denser objects are more opaque, but may suffer from under-sampling artifacts that look like stripes. Negative values can be used to subtract fog from other ``FogVolume``s or global volumetric fog.
    /// 
    /// > Note: Due to limited precision, ``density`` values between `-0.001` and `0.001` (exclusive) act like `0.0`. This does not apply to ``Environment/volumetricFogDensity``.
    /// 
    final public var density: Double {
        get {
            return get_density ()
        }
        
        set {
            set_density (newValue)
        }
        
    }
    
    /// The single-scattering ``Color`` of the ``FogVolume``. Internally, ``albedo`` is converted into single-scattering, which is additively blended with other ``FogVolume``s and the ``Environment/volumetricFogAlbedo``.
    final public var albedo: Color {
        get {
            return get_albedo ()
        }
        
        set {
            set_albedo (newValue)
        }
        
    }
    
    /// The ``Color`` of the light emitted by the ``FogVolume``. Emitted light will not cast light or shadows on other objects, but can be useful for modulating the ``Color`` of the ``FogVolume`` independently from light sources.
    final public var emission: Color {
        get {
            return get_emission ()
        }
        
        set {
            set_emission (newValue)
        }
        
    }
    
    /// The rate by which the height-based fog decreases in density as height increases in world space. A high falloff will result in a sharp transition, while a low falloff will result in a smoother transition. A value of `0.0` results in uniform-density fog. The height threshold is determined by the height of the associated ``FogVolume``.
    final public var heightFalloff: Double {
        get {
            return get_height_falloff ()
        }
        
        set {
            set_height_falloff (newValue)
        }
        
    }
    
    /// The hardness of the edges of the ``FogVolume``. A higher value will result in softer edges, while a lower value will result in harder edges.
    final public var edgeFade: Double {
        get {
            return get_edge_fade ()
        }
        
        set {
            set_edge_fade (newValue)
        }
        
    }
    
    /// The 3D texture that is used to scale the ``density`` of the ``FogVolume``. This can be used to vary fog density within the ``FogVolume`` with any kind of static pattern. For animated effects, consider using a custom <a href="https://docs.godotengine.org/en//tutorials/shaders/shader_reference/fog_shader.html">fog shader</a>.
    final public var densityTexture: Texture3D? {
        get {
            return get_density_texture ()
        }
        
        set {
            set_density_texture (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_density: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_density")
        return withUnsafePointer (to: &FogMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_density (_ density: Double) {
        #if true
        
        var copy_density = density
        
        gi.object_method_bind_ptrcall_v (FogMaterial.method_set_density, UnsafeMutableRawPointer (mutating: handle), nil, &copy_density)
        
        #else
        
        var copy_density = density
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_density) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (FogMaterial.method_set_density, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_density: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_density")
        return withUnsafePointer (to: &FogMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_density ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (FogMaterial.method_get_density, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_albedo: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_albedo")
        return withUnsafePointer (to: &FogMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_albedo (_ albedo: Color) {
        #if true
        
        var copy_albedo = albedo
        
        gi.object_method_bind_ptrcall_v (FogMaterial.method_set_albedo, UnsafeMutableRawPointer (mutating: handle), nil, &copy_albedo)
        
        #else
        
        var copy_albedo = albedo
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_albedo) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (FogMaterial.method_set_albedo, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_albedo: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_albedo")
        return withUnsafePointer (to: &FogMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_albedo ()-> Color {
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall (FogMaterial.method_get_albedo, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_emission: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_emission")
        return withUnsafePointer (to: &FogMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_emission (_ emission: Color) {
        #if true
        
        var copy_emission = emission
        
        gi.object_method_bind_ptrcall_v (FogMaterial.method_set_emission, UnsafeMutableRawPointer (mutating: handle), nil, &copy_emission)
        
        #else
        
        var copy_emission = emission
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_emission) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (FogMaterial.method_set_emission, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_emission: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_emission")
        return withUnsafePointer (to: &FogMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_emission ()-> Color {
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall (FogMaterial.method_get_emission, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_height_falloff: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_height_falloff")
        return withUnsafePointer (to: &FogMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_height_falloff (_ heightFalloff: Double) {
        #if true
        
        var copy_height_falloff = heightFalloff
        
        gi.object_method_bind_ptrcall_v (FogMaterial.method_set_height_falloff, UnsafeMutableRawPointer (mutating: handle), nil, &copy_height_falloff)
        
        #else
        
        var copy_height_falloff = heightFalloff
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_height_falloff) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (FogMaterial.method_set_height_falloff, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_height_falloff: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_height_falloff")
        return withUnsafePointer (to: &FogMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_height_falloff ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (FogMaterial.method_get_height_falloff, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_edge_fade: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_edge_fade")
        return withUnsafePointer (to: &FogMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_edge_fade (_ edgeFade: Double) {
        #if true
        
        var copy_edge_fade = edgeFade
        
        gi.object_method_bind_ptrcall_v (FogMaterial.method_set_edge_fade, UnsafeMutableRawPointer (mutating: handle), nil, &copy_edge_fade)
        
        #else
        
        var copy_edge_fade = edgeFade
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_edge_fade) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (FogMaterial.method_set_edge_fade, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_edge_fade: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_edge_fade")
        return withUnsafePointer (to: &FogMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_edge_fade ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (FogMaterial.method_get_edge_fade, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_density_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_density_texture")
        return withUnsafePointer (to: &FogMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1188404210)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_density_texture (_ densityTexture: Texture3D?) {
        #if true
        
        var copy_density_texture_handle = densityTexture?.handle
        
        gi.object_method_bind_ptrcall_v (FogMaterial.method_set_density_texture, UnsafeMutableRawPointer (mutating: handle), nil, &copy_density_texture_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: densityTexture?.handle) { p0 in
        _args.append (densityTexture == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (FogMaterial.method_set_density_texture, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_density_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_density_texture")
        return withUnsafePointer (to: &FogMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373985333)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_density_texture ()-> Texture3D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (FogMaterial.method_get_density_texture, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
}

