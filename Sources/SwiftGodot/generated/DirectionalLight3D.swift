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


/// Directional light from a distance, as from the Sun.
/// 
/// A directional light is a type of ``Light3D`` node that models an infinite number of parallel rays covering the entire scene. It is used for lights with strong intensity that are located far away from the scene to model sunlight or moonlight. The worldspace location of the DirectionalLight3D transform (origin) is ignored. Only the basis is used to determine light direction.
open class DirectionalLight3D: Light3D {
    private static var className = StringName("DirectionalLight3D")
    override open class var godotClassName: StringName { className }
    public enum ShadowMode: Int64, CaseIterable {
        /// Renders the entire scene's shadow map from an orthogonal point of view. This is the fastest directional shadow mode. May result in blurrier shadows on close objects.
        case orthogonal = 0 // SHADOW_ORTHOGONAL
        /// Splits the view frustum in 2 areas, each with its own shadow map. This shadow mode is a compromise between ``ShadowMode/orthogonal`` and ``ShadowMode/parallel4Splits`` in terms of performance.
        case parallel2Splits = 1 // SHADOW_PARALLEL_2_SPLITS
        /// Splits the view frustum in 4 areas, each with its own shadow map. This is the slowest directional shadow mode.
        case parallel4Splits = 2 // SHADOW_PARALLEL_4_SPLITS
    }
    
    public enum SkyMode: Int64, CaseIterable {
        /// Makes the light visible in both scene lighting and sky rendering.
        case lightAndSky = 0 // SKY_MODE_LIGHT_AND_SKY
        /// Makes the light visible in scene lighting only (including direct lighting and global illumination). When using this mode, the light will not be visible from sky shaders.
        case lightOnly = 1 // SKY_MODE_LIGHT_ONLY
        /// Makes the light visible to sky shaders only. When using this mode the light will not cast light into the scene (either through direct lighting or through global illumination), but can be accessed through sky shaders. This can be useful, for example, when you want to control sky effects without illuminating the scene (during a night cycle, for example).
        case skyOnly = 2 // SKY_MODE_SKY_ONLY
    }
    
    
    /* Properties */
    
    /// The light's shadow rendering algorithm. See ``DirectionalLight3D/ShadowMode``.
    final public var directionalShadowMode: DirectionalLight3D.ShadowMode {
        get {
            return get_shadow_mode ()
        }
        
        set {
            set_shadow_mode (newValue)
        }
        
    }
    
    /// The distance from camera to shadow split 1. Relative to ``directionalShadowMaxDistance``. Only used when ``directionalShadowMode`` is ``ShadowMode/parallel2Splits`` or ``ShadowMode/parallel4Splits``.
    final public var directionalShadowSplit1: Double {
        get {
            return get_param (Light3D.Param (rawValue: 10)!)
        }
        
        set {
            set_param (Light3D.Param (rawValue: 10)!, newValue)
        }
        
    }
    
    /// The distance from shadow split 1 to split 2. Relative to ``directionalShadowMaxDistance``. Only used when ``directionalShadowMode`` is ``ShadowMode/parallel4Splits``.
    final public var directionalShadowSplit2: Double {
        get {
            return get_param (Light3D.Param (rawValue: 11)!)
        }
        
        set {
            set_param (Light3D.Param (rawValue: 11)!, newValue)
        }
        
    }
    
    /// The distance from shadow split 2 to split 3. Relative to ``directionalShadowMaxDistance``. Only used when ``directionalShadowMode`` is ``ShadowMode/parallel4Splits``.
    final public var directionalShadowSplit3: Double {
        get {
            return get_param (Light3D.Param (rawValue: 12)!)
        }
        
        set {
            set_param (Light3D.Param (rawValue: 12)!, newValue)
        }
        
    }
    
    /// If `true`, shadow detail is sacrificed in exchange for smoother transitions between splits. Enabling shadow blend splitting also has a moderate performance cost. This is ignored when ``directionalShadowMode`` is ``ShadowMode/orthogonal``.
    final public var directionalShadowBlendSplits: Bool {
        get {
            return is_blend_splits_enabled ()
        }
        
        set {
            set_blend_splits (newValue)
        }
        
    }
    
    /// Proportion of ``directionalShadowMaxDistance`` at which point the shadow starts to fade. At ``directionalShadowMaxDistance``, the shadow will disappear. The default value is a balance between smooth fading and distant shadow visibility. If the camera moves fast and the ``directionalShadowMaxDistance`` is low, consider lowering ``directionalShadowFadeStart`` below `0.8` to make shadow transitions less noticeable. On the other hand, if you tuned ``directionalShadowMaxDistance`` to cover the entire scene, you can set ``directionalShadowFadeStart`` to `1.0` to prevent the shadow from fading in the distance (it will suddenly cut off instead).
    final public var directionalShadowFadeStart: Double {
        get {
            return get_param (Light3D.Param (rawValue: 13)!)
        }
        
        set {
            set_param (Light3D.Param (rawValue: 13)!, newValue)
        }
        
    }
    
    /// The maximum distance for shadow splits. Increasing this value will make directional shadows visible from further away, at the cost of lower overall shadow detail and performance (since more objects need to be included in the directional shadow rendering).
    final public var directionalShadowMaxDistance: Double {
        get {
            return get_param (Light3D.Param (rawValue: 9)!)
        }
        
        set {
            set_param (Light3D.Param (rawValue: 9)!, newValue)
        }
        
    }
    
    /// Sets the size of the directional shadow pancake. The pancake offsets the start of the shadow's camera frustum to provide a higher effective depth resolution for the shadow. However, a high pancake size can cause artifacts in the shadows of large objects that are close to the edge of the frustum. Reducing the pancake size can help. Setting the size to `0` turns off the pancaking effect.
    final public var directionalShadowPancakeSize: Double {
        get {
            return get_param (Light3D.Param (rawValue: 16)!)
        }
        
        set {
            set_param (Light3D.Param (rawValue: 16)!, newValue)
        }
        
    }
    
    /// Set whether this ``DirectionalLight3D`` is visible in the sky, in the scene, or both in the sky and in the scene. See ``DirectionalLight3D/SkyMode`` for options.
    final public var skyMode: DirectionalLight3D.SkyMode {
        get {
            return get_sky_mode ()
        }
        
        set {
            set_sky_mode (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_shadow_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_shadow_mode")
        return withUnsafePointer(to: &DirectionalLight3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1261211726)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shadow_mode(_ mode: DirectionalLight3D.ShadowMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(DirectionalLight3D.method_set_shadow_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_shadow_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_shadow_mode")
        return withUnsafePointer(to: &DirectionalLight3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2765228544)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_shadow_mode() -> DirectionalLight3D.ShadowMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(DirectionalLight3D.method_get_shadow_mode, handle, nil, &_result)
        return DirectionalLight3D.ShadowMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_blend_splits: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_blend_splits")
        return withUnsafePointer(to: &DirectionalLight3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_blend_splits(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(DirectionalLight3D.method_set_blend_splits, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_blend_splits_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_blend_splits_enabled")
        return withUnsafePointer(to: &DirectionalLight3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_blend_splits_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(DirectionalLight3D.method_is_blend_splits_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_sky_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sky_mode")
        return withUnsafePointer(to: &DirectionalLight3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2691194817)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sky_mode(_ mode: DirectionalLight3D.SkyMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(DirectionalLight3D.method_set_sky_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sky_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sky_mode")
        return withUnsafePointer(to: &DirectionalLight3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3819982774)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sky_mode() -> DirectionalLight3D.SkyMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(DirectionalLight3D.method_get_sky_mode, handle, nil, &_result)
        return DirectionalLight3D.SkyMode (rawValue: _result)!
    }
    
}

