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


/// A material that controls how volumetric fog is rendered, to be assigned to a ``FogVolume``.
/// 
/// A ``Material`` resource that can be used by ``FogVolume``s to draw volumetric effects.
/// 
/// If you need more advanced effects, use a custom <a href="https://docs.godotengine.org/en//tutorials/shaders/shader_reference/fog_shader.html">fog shader</a>.
/// 
open class FogMaterial: Material {
    private static var className = StringName("FogMaterial")
    override open class var godotClassName: StringName { className }
    
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
    fileprivate static let method_set_density: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_density")
        return withUnsafePointer(to: &FogMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_density(_ density: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: density) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FogMaterial.method_set_density, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_density: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_density")
        return withUnsafePointer(to: &FogMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_density() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(FogMaterial.method_get_density, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_albedo: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_albedo")
        return withUnsafePointer(to: &FogMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_albedo(_ albedo: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: albedo) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FogMaterial.method_set_albedo, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_albedo: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_albedo")
        return withUnsafePointer(to: &FogMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_albedo() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(FogMaterial.method_get_albedo, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_emission: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_emission")
        return withUnsafePointer(to: &FogMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_emission(_ emission: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: emission) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FogMaterial.method_set_emission, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_emission: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_emission")
        return withUnsafePointer(to: &FogMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_emission() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(FogMaterial.method_get_emission, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_height_falloff: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_height_falloff")
        return withUnsafePointer(to: &FogMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_height_falloff(_ heightFalloff: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: heightFalloff) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FogMaterial.method_set_height_falloff, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_height_falloff: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_height_falloff")
        return withUnsafePointer(to: &FogMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_height_falloff() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(FogMaterial.method_get_height_falloff, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_edge_fade: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_edge_fade")
        return withUnsafePointer(to: &FogMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_edge_fade(_ edgeFade: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: edgeFade) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FogMaterial.method_set_edge_fade, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_edge_fade: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_edge_fade")
        return withUnsafePointer(to: &FogMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_edge_fade() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(FogMaterial.method_get_edge_fade, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_density_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_density_texture")
        return withUnsafePointer(to: &FogMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1188404210)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_density_texture(_ densityTexture: Texture3D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: densityTexture?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FogMaterial.method_set_density_texture, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_density_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_density_texture")
        return withUnsafePointer(to: &FogMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373985333)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_density_texture() -> Texture3D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(FogMaterial.method_get_density_texture, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
}

