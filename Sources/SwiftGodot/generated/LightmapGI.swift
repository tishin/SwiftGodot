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


/// Computes and stores baked lightmaps for fast global illumination.
/// 
/// The ``LightmapGI`` node is used to compute and store baked lightmaps. Lightmaps are used to provide high-quality indirect lighting with very little light leaking. ``LightmapGI`` can also provide rough reflections using spherical harmonics if ``directional`` is enabled. Dynamic objects can receive indirect lighting thanks to _light probes_, which can be automatically placed by setting ``generateProbesSubdiv`` to a value other than ``GenerateProbes/disabled``. Additional lightmap probes can also be added by creating ``LightmapProbe`` nodes. The downside is that lightmaps are fully static and cannot be baked in an exported project. Baking a ``LightmapGI`` node is also slower compared to ``VoxelGI``.
/// 
/// **Procedural generation:** Lightmap baking functionality is only available in the editor. This means ``LightmapGI`` is not suited to procedurally generated or user-built levels. For procedurally generated or user-built levels, use ``VoxelGI`` or SDFGI instead (see ``Environment/sdfgiEnabled``).
/// 
/// **Performance:** ``LightmapGI`` provides the best possible run-time performance for global illumination. It is suitable for low-end hardware including integrated graphics and mobile devices.
/// 
/// > Note: Due to how lightmaps work, most properties only have a visible effect once lightmaps are baked again.
/// 
/// > Note: Lightmap baking on ``CSGShape3D``s and ``PrimitiveMesh``es is not supported, as these cannot store UV2 data required for baking.
/// 
/// > Note: If no custom lightmappers are installed, ``LightmapGI`` can only be baked from devices that support the Forward+ or Mobile renderers.
/// 
/// > Note: The ``LightmapGI`` node only bakes light data for child nodes of its parent. Nodes further up the hierarchy of the scene will not be baked.
/// 
open class LightmapGI: VisualInstance3D {
    private static var className = StringName("LightmapGI")
    override open class var godotClassName: StringName { className }
    public enum BakeQuality: Int64, CaseIterable {
        /// Low bake quality (fastest bake times). The quality of this preset can be adjusted by changing ``ProjectSettings/rendering/lightmapping/bakeQuality/lowQualityRayCount`` and ``ProjectSettings/rendering/lightmapping/bakeQuality/lowQualityProbeRayCount``.
        case low = 0 // BAKE_QUALITY_LOW
        /// Medium bake quality (fast bake times). The quality of this preset can be adjusted by changing ``ProjectSettings/rendering/lightmapping/bakeQuality/mediumQualityRayCount`` and ``ProjectSettings/rendering/lightmapping/bakeQuality/mediumQualityProbeRayCount``.
        case medium = 1 // BAKE_QUALITY_MEDIUM
        /// High bake quality (slow bake times). The quality of this preset can be adjusted by changing ``ProjectSettings/rendering/lightmapping/bakeQuality/highQualityRayCount`` and ``ProjectSettings/rendering/lightmapping/bakeQuality/highQualityProbeRayCount``.
        case high = 2 // BAKE_QUALITY_HIGH
        /// Highest bake quality (slowest bake times). The quality of this preset can be adjusted by changing ``ProjectSettings/rendering/lightmapping/bakeQuality/ultraQualityRayCount`` and ``ProjectSettings/rendering/lightmapping/bakeQuality/ultraQualityProbeRayCount``.
        case ultra = 3 // BAKE_QUALITY_ULTRA
    }
    
    public enum GenerateProbes: Int64, CaseIterable {
        /// Don't generate lightmap probes for lighting dynamic objects.
        case disabled = 0 // GENERATE_PROBES_DISABLED
        /// Lowest level of subdivision (fastest bake times, smallest file sizes).
        case subdiv4 = 1 // GENERATE_PROBES_SUBDIV_4
        /// Low level of subdivision (fast bake times, small file sizes).
        case subdiv8 = 2 // GENERATE_PROBES_SUBDIV_8
        /// High level of subdivision (slow bake times, large file sizes).
        case subdiv16 = 3 // GENERATE_PROBES_SUBDIV_16
        /// Highest level of subdivision (slowest bake times, largest file sizes).
        case subdiv32 = 4 // GENERATE_PROBES_SUBDIV_32
    }
    
    public enum BakeError: Int64, CaseIterable {
        /// Lightmap baking was successful.
        case ok = 0 // BAKE_ERROR_OK
        /// Lightmap baking failed because the root node for the edited scene could not be accessed.
        case noSceneRoot = 1 // BAKE_ERROR_NO_SCENE_ROOT
        /// Lightmap baking failed as the lightmap data resource is embedded in a foreign resource.
        case foreignData = 2 // BAKE_ERROR_FOREIGN_DATA
        /// Lightmap baking failed as there is no lightmapper available in this Godot build.
        case noLightmapper = 3 // BAKE_ERROR_NO_LIGHTMAPPER
        /// Lightmap baking failed as the ``LightmapGIData`` save path isn't configured in the resource.
        case noSavePath = 4 // BAKE_ERROR_NO_SAVE_PATH
        /// Lightmap baking failed as there are no meshes whose ``GeometryInstance3D/giMode`` is ``GeometryInstance3D/GIMode/`static``` and with valid UV2 mapping in the current scene. You may need to select 3D scenes in the Import dock and change their global illumination mode accordingly.
        case noMeshes = 5 // BAKE_ERROR_NO_MESHES
        /// Lightmap baking failed as the lightmapper failed to analyze some of the meshes marked as static for baking.
        case meshesInvalid = 6 // BAKE_ERROR_MESHES_INVALID
        /// Lightmap baking failed as the resulting image couldn't be saved or imported by Godot after it was saved.
        case cantCreateImage = 7 // BAKE_ERROR_CANT_CREATE_IMAGE
        /// The user aborted the lightmap baking operation (typically by clicking the **Cancel** button in the progress dialog).
        case userAborted = 8 // BAKE_ERROR_USER_ABORTED
        /// Lightmap baking failed as the maximum texture size is too small to fit some of the meshes marked for baking.
        case textureSizeTooSmall = 9 // BAKE_ERROR_TEXTURE_SIZE_TOO_SMALL
        /// Lightmap baking failed as the lightmap is too small.
        case lightmapTooSmall = 10 // BAKE_ERROR_LIGHTMAP_TOO_SMALL
        /// Lightmap baking failed as the lightmap was unable to fit into an atlas.
        case atlasTooSmall = 11 // BAKE_ERROR_ATLAS_TOO_SMALL
    }
    
    public enum EnvironmentMode: Int64, CaseIterable {
        /// Ignore environment lighting when baking lightmaps.
        case disabled = 0 // ENVIRONMENT_MODE_DISABLED
        /// Use the scene's environment lighting when baking lightmaps.
        /// 
        /// > Note: If baking lightmaps in a scene with no ``WorldEnvironment`` node, this will act like ``EnvironmentMode/disabled``. The editor's preview sky and sun is _not_ taken into account by ``LightmapGI`` when baking lightmaps.
        /// 
        case scene = 1 // ENVIRONMENT_MODE_SCENE
        /// Use ``environmentCustomSky`` as a source of environment lighting when baking lightmaps.
        case customSky = 2 // ENVIRONMENT_MODE_CUSTOM_SKY
        /// Use ``environmentCustomColor`` multiplied by ``environmentCustomEnergy`` as a constant source of environment lighting when baking lightmaps.
        case customColor = 3 // ENVIRONMENT_MODE_CUSTOM_COLOR
    }
    
    
    /* Properties */
    
    /// The quality preset to use when baking lightmaps. This affects bake times, but output file sizes remain mostly identical across quality levels.
    /// 
    /// To further speed up bake times, decrease ``bounces``, disable ``useDenoiser`` and/or decrease ``texelScale``.
    /// 
    /// To further increase quality, enable ``supersampling`` and/or increase ``texelScale``.
    /// 
    final public var quality: LightmapGI.BakeQuality {
        get {
            return get_bake_quality ()
        }
        
        set {
            set_bake_quality (newValue)
        }
        
    }
    
    /// If `true`, lightmaps are baked with the texel scale multiplied with ``supersamplingFactor`` and downsampled before saving the lightmap (so the effective texel density is identical to having supersampling disabled).
    /// 
    /// Supersampling provides increased lightmap quality with less noise, smoother shadows and better shadowing of small-scale features in objects. However, it may result in significantly increased bake times and memory usage while baking lightmaps. Padding is automatically adjusted to avoid increasing light leaking.
    /// 
    final public var supersampling: Bool {
        get {
            return is_supersampling_enabled ()
        }
        
        set {
            set_supersampling_enabled (newValue)
        }
        
    }
    
    /// The factor by which the texel density is multiplied for supersampling. For best results, use an integer value. While fractional values are allowed, they can result in increased light leaking and a blurry lightmap.
    /// 
    /// Higher values may result in better quality, but also increase bake times and memory usage while baking.
    /// 
    /// See ``supersampling`` for more information.
    /// 
    final public var supersamplingFactor: Double {
        get {
            return get_supersampling_factor ()
        }
        
        set {
            set_supersampling_factor (newValue)
        }
        
    }
    
    /// Number of light bounces that are taken into account during baking. Higher values result in brighter, more realistic lighting, at the cost of longer bake times. If set to `0`, only environment lighting, direct light and emissive lighting is baked.
    final public var bounces: Int32 {
        get {
            return get_bounces ()
        }
        
        set {
            set_bounces (newValue)
        }
        
    }
    
    /// The energy multiplier for each bounce. Higher values will make indirect lighting brighter. A value of `1.0` represents physically accurate behavior, but higher values can be used to make indirect lighting propagate more visibly when using a low number of bounces. This can be used to speed up bake times by lowering the number of ``bounces`` then increasing ``bounceIndirectEnergy``.
    /// 
    /// > Note: ``bounceIndirectEnergy`` only has an effect if ``bounces`` is set to a value greater than or equal to `1`.
    /// 
    final public var bounceIndirectEnergy: Double {
        get {
            return get_bounce_indirect_energy ()
        }
        
        set {
            set_bounce_indirect_energy (newValue)
        }
        
    }
    
    /// If `true`, bakes lightmaps to contain directional information as spherical harmonics. This results in more realistic lighting appearance, especially with normal mapped materials and for lights that have their direct light baked (``Light3D/lightBakeMode`` set to ``Light3D/BakeMode/`static``` and with ``Light3D/editorOnly`` set to `false`). The directional information is also used to provide rough reflections for static and dynamic objects. This has a small run-time performance cost as the shader has to perform more work to interpret the direction information from the lightmap. Directional lightmaps also take longer to bake and result in larger file sizes.
    /// 
    /// > Note: The property's name has no relationship with ``DirectionalLight3D``. ``directional`` works with all light types.
    /// 
    final public var directional: Bool {
        get {
            return is_directional ()
        }
        
        set {
            set_directional (newValue)
        }
        
    }
    
    /// The shadowmasking policy to use for directional shadows on static objects that are baked with this ``LightmapGI`` instance.
    /// 
    /// Shadowmasking allows ``DirectionalLight3D`` nodes to cast shadows even outside the range defined by their ``DirectionalLight3D/directionalShadowMaxDistance`` property. This is done by baking a texture that contains a shadowmap for the directional light, then using this texture according to the current shadowmask mode.
    /// 
    /// > Note: The shadowmask texture is only created if ``shadowmaskMode`` is not ``LightmapGIData/ShadowmaskMode/none``. To see a difference, you need to bake lightmaps again after switching from ``LightmapGIData/ShadowmaskMode/none`` to any other mode.
    /// 
    final public var shadowmaskMode: LightmapGIData.ShadowmaskMode {
        get {
            return get_shadowmask_mode ()
        }
        
        set {
            set_shadowmask_mode (newValue)
        }
        
    }
    
    /// If `true`, a texture with the lighting information will be generated to speed up the generation of indirect lighting at the cost of some accuracy. The geometry might exhibit extra light leak artifacts when using low resolution lightmaps or UVs that stretch the lightmap significantly across surfaces. Leave ``useTextureForBounces`` at its default value of `true` if unsure.
    /// 
    /// > Note: ``useTextureForBounces`` only has an effect if ``bounces`` is set to a value greater than or equal to `1`.
    /// 
    final public var useTextureForBounces: Bool {
        get {
            return is_using_texture_for_bounces ()
        }
        
        set {
            set_use_texture_for_bounces (newValue)
        }
        
    }
    
    /// If `true`, ignore environment lighting when baking lightmaps.
    final public var interior: Bool {
        get {
            return is_interior ()
        }
        
        set {
            set_interior (newValue)
        }
        
    }
    
    /// If `true`, uses a GPU-based denoising algorithm on the generated lightmap. This eliminates most noise within the generated lightmap at the cost of longer bake times. File sizes are generally not impacted significantly by the use of a denoiser, although lossless compression may do a better job at compressing a denoised image.
    final public var useDenoiser: Bool {
        get {
            return is_using_denoiser ()
        }
        
        set {
            set_use_denoiser (newValue)
        }
        
    }
    
    /// The strength of denoising step applied to the generated lightmaps. Only effective if ``useDenoiser`` is `true` and ``ProjectSettings/rendering/lightmapping/denoising/denoiser`` is set to JNLM.
    final public var denoiserStrength: Double {
        get {
            return get_denoiser_strength ()
        }
        
        set {
            set_denoiser_strength (newValue)
        }
        
    }
    
    /// The distance in pixels from which the denoiser samples. Lower values preserve more details, but may give blotchy results if the lightmap quality is not high enough. Only effective if ``useDenoiser`` is `true` and ``ProjectSettings/rendering/lightmapping/denoising/denoiser`` is set to JNLM.
    final public var denoiserRange: Int32 {
        get {
            return get_denoiser_range ()
        }
        
        set {
            set_denoiser_range (newValue)
        }
        
    }
    
    /// The bias to use when computing shadows. Increasing ``bias`` can fix shadow acne on the resulting baked lightmap, but can introduce peter-panning (shadows not connecting to their casters). Real-time ``Light3D`` shadows are not affected by this ``bias`` property.
    final public var bias: Double {
        get {
            return get_bias ()
        }
        
        set {
            set_bias (newValue)
        }
        
    }
    
    /// Scales the lightmap texel density of all meshes for the current bake. This is a multiplier that builds upon the existing lightmap texel size defined in each imported 3D scene, along with the per-mesh density multiplier (which is designed to be used when the same mesh is used at different scales). Lower values will result in faster bake times.
    /// 
    /// For example, doubling ``texelScale`` doubles the lightmap texture resolution for all objects _on each axis_, so it will _quadruple_ the texel count.
    /// 
    final public var texelScale: Double {
        get {
            return get_texel_scale ()
        }
        
        set {
            set_texel_scale (newValue)
        }
        
    }
    
    /// The maximum texture size for the generated texture atlas. Higher values will result in fewer slices being generated, but may not work on all hardware as a result of hardware limitations on texture sizes. Leave ``maxTextureSize`` at its default value of `16384` if unsure.
    final public var maxTextureSize: Int32 {
        get {
            return get_max_texture_size ()
        }
        
        set {
            set_max_texture_size (newValue)
        }
        
    }
    
    /// The environment mode to use when baking lightmaps.
    final public var environmentMode: LightmapGI.EnvironmentMode {
        get {
            return get_environment_mode ()
        }
        
        set {
            set_environment_mode (newValue)
        }
        
    }
    
    /// The sky to use as a source of environment lighting. Only effective if ``environmentMode`` is ``EnvironmentMode/customSky``.
    final public var environmentCustomSky: Sky? {
        get {
            return get_environment_custom_sky ()
        }
        
        set {
            set_environment_custom_sky (newValue)
        }
        
    }
    
    /// The color to use for environment lighting. Only effective if ``environmentMode`` is ``EnvironmentMode/customColor``.
    final public var environmentCustomColor: Color {
        get {
            return get_environment_custom_color ()
        }
        
        set {
            set_environment_custom_color (newValue)
        }
        
    }
    
    /// The color multiplier to use for environment lighting. Only effective if ``environmentMode`` is ``EnvironmentMode/customColor``.
    final public var environmentCustomEnergy: Double {
        get {
            return get_environment_custom_energy ()
        }
        
        set {
            set_environment_custom_energy (newValue)
        }
        
    }
    
    /// The ``CameraAttributes`` resource that specifies exposure levels to bake at. Auto-exposure and non exposure properties will be ignored. Exposure settings should be used to reduce the dynamic range present when baking. If exposure is too high, the ``LightmapGI`` will have banding artifacts or may have over-exposure artifacts.
    final public var cameraAttributes: CameraAttributes? {
        get {
            return get_camera_attributes ()
        }
        
        set {
            set_camera_attributes (newValue)
        }
        
    }
    
    /// The level of subdivision to use when automatically generating ``LightmapProbe``s for dynamic object lighting. Higher values result in more accurate indirect lighting on dynamic objects, at the cost of longer bake times and larger file sizes.
    /// 
    /// > Note: Automatically generated ``LightmapProbe``s are not visible as nodes in the Scene tree dock, and cannot be modified this way after they are generated.
    /// 
    /// > Note: Regardless of ``generateProbesSubdiv``, direct lighting on dynamic objects is always applied using ``Light3D`` nodes in real-time.
    /// 
    final public var generateProbesSubdiv: LightmapGI.GenerateProbes {
        get {
            return get_generate_probes ()
        }
        
        set {
            set_generate_probes (newValue)
        }
        
    }
    
    /// The ``LightmapGIData`` associated to this ``LightmapGI`` node. This resource is automatically created after baking, and is not meant to be created manually.
    final public var lightData: LightmapGIData? {
        get {
            return get_light_data ()
        }
        
        set {
            set_light_data (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_light_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_light_data")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1790597277)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_light_data(_ data: LightmapGIData?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: data?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LightmapGI.method_set_light_data, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_light_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_light_data")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 290354153)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_light_data() -> LightmapGIData? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(LightmapGI.method_get_light_data, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_bake_quality: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bake_quality")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1192215803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bake_quality(_ bakeQuality: LightmapGI.BakeQuality) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: bakeQuality.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LightmapGI.method_set_bake_quality, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_bake_quality: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bake_quality")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 688832735)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bake_quality() -> LightmapGI.BakeQuality {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(LightmapGI.method_get_bake_quality, handle, nil, &_result)
        return LightmapGI.BakeQuality (rawValue: _result)!
    }
    
    fileprivate static let method_set_bounces: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bounces")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bounces(_ bounces: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: bounces) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LightmapGI.method_set_bounces, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_bounces: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bounces")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bounces() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(LightmapGI.method_get_bounces, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_bounce_indirect_energy: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bounce_indirect_energy")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bounce_indirect_energy(_ bounceIndirectEnergy: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: bounceIndirectEnergy) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LightmapGI.method_set_bounce_indirect_energy, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_bounce_indirect_energy: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bounce_indirect_energy")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bounce_indirect_energy() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(LightmapGI.method_get_bounce_indirect_energy, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_generate_probes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_generate_probes")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 549981046)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_generate_probes(_ subdivision: LightmapGI.GenerateProbes) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: subdivision.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LightmapGI.method_set_generate_probes, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_generate_probes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_generate_probes")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3930596226)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_generate_probes() -> LightmapGI.GenerateProbes {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(LightmapGI.method_get_generate_probes, handle, nil, &_result)
        return LightmapGI.GenerateProbes (rawValue: _result)!
    }
    
    fileprivate static let method_set_bias: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bias")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bias(_ bias: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: bias) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LightmapGI.method_set_bias, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_bias: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bias")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bias() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(LightmapGI.method_get_bias, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_environment_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_environment_mode")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2282650285)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_environment_mode(_ mode: LightmapGI.EnvironmentMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LightmapGI.method_set_environment_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_environment_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_environment_mode")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4128646479)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_environment_mode() -> LightmapGI.EnvironmentMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(LightmapGI.method_get_environment_mode, handle, nil, &_result)
        return LightmapGI.EnvironmentMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_environment_custom_sky: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_environment_custom_sky")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3336722921)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_environment_custom_sky(_ sky: Sky?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: sky?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LightmapGI.method_set_environment_custom_sky, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_environment_custom_sky: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_environment_custom_sky")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1177136966)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_environment_custom_sky() -> Sky? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(LightmapGI.method_get_environment_custom_sky, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_environment_custom_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_environment_custom_color")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_environment_custom_color(_ color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LightmapGI.method_set_environment_custom_color, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_environment_custom_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_environment_custom_color")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_environment_custom_color() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(LightmapGI.method_get_environment_custom_color, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_environment_custom_energy: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_environment_custom_energy")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_environment_custom_energy(_ energy: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: energy) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LightmapGI.method_set_environment_custom_energy, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_environment_custom_energy: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_environment_custom_energy")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_environment_custom_energy() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(LightmapGI.method_get_environment_custom_energy, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_texel_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_texel_scale")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texel_scale(_ texelScale: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: texelScale) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LightmapGI.method_set_texel_scale, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_texel_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texel_scale")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texel_scale() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(LightmapGI.method_get_texel_scale, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_max_texture_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_max_texture_size")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_texture_size(_ maxTextureSize: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: maxTextureSize) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LightmapGI.method_set_max_texture_size, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_max_texture_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_max_texture_size")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_texture_size() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(LightmapGI.method_get_max_texture_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_supersampling_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_supersampling_enabled")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_supersampling_enabled(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LightmapGI.method_set_supersampling_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_supersampling_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_supersampling_enabled")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_supersampling_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LightmapGI.method_is_supersampling_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_supersampling_factor: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_supersampling_factor")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_supersampling_factor(_ factor: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: factor) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LightmapGI.method_set_supersampling_factor, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_supersampling_factor: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_supersampling_factor")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_supersampling_factor() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(LightmapGI.method_get_supersampling_factor, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_use_denoiser: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_denoiser")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_denoiser(_ useDenoiser: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: useDenoiser) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LightmapGI.method_set_use_denoiser, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_using_denoiser: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_using_denoiser")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_using_denoiser() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LightmapGI.method_is_using_denoiser, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_denoiser_strength: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_denoiser_strength")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_denoiser_strength(_ denoiserStrength: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: denoiserStrength) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LightmapGI.method_set_denoiser_strength, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_denoiser_strength: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_denoiser_strength")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_denoiser_strength() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(LightmapGI.method_get_denoiser_strength, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_denoiser_range: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_denoiser_range")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_denoiser_range(_ denoiserRange: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: denoiserRange) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LightmapGI.method_set_denoiser_range, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_denoiser_range: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_denoiser_range")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_denoiser_range() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(LightmapGI.method_get_denoiser_range, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_interior: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_interior")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_interior(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LightmapGI.method_set_interior, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_interior: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_interior")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_interior() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LightmapGI.method_is_interior, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_directional: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_directional")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_directional(_ directional: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: directional) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LightmapGI.method_set_directional, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_directional: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_directional")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_directional() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LightmapGI.method_is_directional, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_shadowmask_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_shadowmask_mode")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3451066572)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shadowmask_mode(_ mode: LightmapGIData.ShadowmaskMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LightmapGI.method_set_shadowmask_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_shadowmask_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_shadowmask_mode")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 785478560)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_shadowmask_mode() -> LightmapGIData.ShadowmaskMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(LightmapGI.method_get_shadowmask_mode, handle, nil, &_result)
        return LightmapGIData.ShadowmaskMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_use_texture_for_bounces: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_texture_for_bounces")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_texture_for_bounces(_ useTextureForBounces: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: useTextureForBounces) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LightmapGI.method_set_use_texture_for_bounces, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_using_texture_for_bounces: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_using_texture_for_bounces")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_using_texture_for_bounces() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LightmapGI.method_is_using_texture_for_bounces, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_camera_attributes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_camera_attributes")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2817810567)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_camera_attributes(_ cameraAttributes: CameraAttributes?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: cameraAttributes?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LightmapGI.method_set_camera_attributes, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_camera_attributes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_camera_attributes")
        return withUnsafePointer(to: &LightmapGI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3921283215)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_camera_attributes() -> CameraAttributes? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(LightmapGI.method_get_camera_attributes, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
}

