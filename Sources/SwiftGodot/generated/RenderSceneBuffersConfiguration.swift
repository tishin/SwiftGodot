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


/// Configuration object used to setup a ``RenderSceneBuffers`` object.
/// 
/// This configuration object is created and populated by the render engine on a viewport change and used to (re)configure a ``RenderSceneBuffers`` object.
open class RenderSceneBuffersConfiguration: RefCounted {
    private static var className = StringName("RenderSceneBuffersConfiguration")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The render target associated with these buffer.
    final public var renderTarget: RID {
        get {
            return get_render_target ()
        }
        
        set {
            set_render_target (newValue)
        }
        
    }
    
    /// The size of the 3D render buffer used for rendering.
    final public var internalSize: Vector2i {
        get {
            return get_internal_size ()
        }
        
        set {
            set_internal_size (newValue)
        }
        
    }
    
    /// The target (upscale) size if scaling is used.
    final public var targetSize: Vector2i {
        get {
            return get_target_size ()
        }
        
        set {
            set_target_size (newValue)
        }
        
    }
    
    /// The number of views we're rendering.
    final public var viewCount: UInt32 {
        get {
            return get_view_count ()
        }
        
        set {
            set_view_count (newValue)
        }
        
    }
    
    /// The requested scaling mode with which we upscale/downscale if ``internalSize`` and ``targetSize`` are not equal.
    final public var scaling3dMode: RenderingServer.ViewportScaling3DMode {
        get {
            return get_scaling_3d_mode ()
        }
        
        set {
            set_scaling_3d_mode (newValue)
        }
        
    }
    
    /// The MSAA mode we're using for 3D rendering.
    final public var msaa3d: RenderingServer.ViewportMSAA {
        get {
            return get_msaa_3d ()
        }
        
        set {
            set_msaa_3d (newValue)
        }
        
    }
    
    /// The requested screen space AA applied in post processing.
    final public var screenSpaceAa: RenderingServer.ViewportScreenSpaceAA {
        get {
            return get_screen_space_aa ()
        }
        
        set {
            set_screen_space_aa (newValue)
        }
        
    }
    
    /// FSR Sharpness applicable if FSR upscaling is used.
    final public var fsrSharpness: Double {
        get {
            return get_fsr_sharpness ()
        }
        
        set {
            set_fsr_sharpness (newValue)
        }
        
    }
    
    /// Bias applied to mipmaps.
    final public var textureMipmapBias: Double {
        get {
            return get_texture_mipmap_bias ()
        }
        
        set {
            set_texture_mipmap_bias (newValue)
        }
        
    }
    
    /// Level of the anisotropic filter.
    final public var anisotropicFilteringLevel: RenderingServer.ViewportAnisotropicFiltering {
        get {
            return get_anisotropic_filtering_level ()
        }
        
        set {
            set_anisotropic_filtering_level (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_get_render_target: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_render_target")
        return withUnsafePointer(to: &RenderSceneBuffersConfiguration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_render_target() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(RenderSceneBuffersConfiguration.method_get_render_target, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_render_target: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_render_target")
        return withUnsafePointer(to: &RenderSceneBuffersConfiguration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_render_target(_ renderTarget: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: renderTarget.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderSceneBuffersConfiguration.method_set_render_target, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_internal_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_internal_size")
        return withUnsafePointer(to: &RenderSceneBuffersConfiguration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3690982128)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_internal_size() -> Vector2i {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2i = Vector2i ()
        gi.object_method_bind_ptrcall(RenderSceneBuffersConfiguration.method_get_internal_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_internal_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_internal_size")
        return withUnsafePointer(to: &RenderSceneBuffersConfiguration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1130785943)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_internal_size(_ internalSize: Vector2i) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: internalSize) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderSceneBuffersConfiguration.method_set_internal_size, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_target_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_target_size")
        return withUnsafePointer(to: &RenderSceneBuffersConfiguration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3690982128)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_target_size() -> Vector2i {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2i = Vector2i ()
        gi.object_method_bind_ptrcall(RenderSceneBuffersConfiguration.method_get_target_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_target_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_target_size")
        return withUnsafePointer(to: &RenderSceneBuffersConfiguration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1130785943)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_target_size(_ targetSize: Vector2i) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: targetSize) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderSceneBuffersConfiguration.method_set_target_size, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_view_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_view_count")
        return withUnsafePointer(to: &RenderSceneBuffersConfiguration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_view_count() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(RenderSceneBuffersConfiguration.method_get_view_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_view_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_view_count")
        return withUnsafePointer(to: &RenderSceneBuffersConfiguration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_view_count(_ viewCount: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: viewCount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderSceneBuffersConfiguration.method_set_view_count, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_scaling_3d_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_scaling_3d_mode")
        return withUnsafePointer(to: &RenderSceneBuffersConfiguration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 976778074)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_scaling_3d_mode() -> RenderingServer.ViewportScaling3DMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RenderSceneBuffersConfiguration.method_get_scaling_3d_mode, handle, nil, &_result)
        return RenderingServer.ViewportScaling3DMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_scaling_3d_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_scaling_3d_mode")
        return withUnsafePointer(to: &RenderSceneBuffersConfiguration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 447477857)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_scaling_3d_mode(_ scaling3dMode: RenderingServer.ViewportScaling3DMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: scaling3dMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderSceneBuffersConfiguration.method_set_scaling_3d_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_msaa_3d: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_msaa_3d")
        return withUnsafePointer(to: &RenderSceneBuffersConfiguration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3109158617)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_msaa_3d() -> RenderingServer.ViewportMSAA {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RenderSceneBuffersConfiguration.method_get_msaa_3d, handle, nil, &_result)
        return RenderingServer.ViewportMSAA (rawValue: _result)!
    }
    
    fileprivate static let method_set_msaa_3d: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_msaa_3d")
        return withUnsafePointer(to: &RenderSceneBuffersConfiguration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3952630748)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_msaa_3d(_ msaa3d: RenderingServer.ViewportMSAA) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: msaa3d.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderSceneBuffersConfiguration.method_set_msaa_3d, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_screen_space_aa: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_screen_space_aa")
        return withUnsafePointer(to: &RenderSceneBuffersConfiguration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 641513172)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_screen_space_aa() -> RenderingServer.ViewportScreenSpaceAA {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RenderSceneBuffersConfiguration.method_get_screen_space_aa, handle, nil, &_result)
        return RenderingServer.ViewportScreenSpaceAA (rawValue: _result)!
    }
    
    fileprivate static let method_set_screen_space_aa: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_screen_space_aa")
        return withUnsafePointer(to: &RenderSceneBuffersConfiguration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 139543108)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_screen_space_aa(_ screenSpaceAa: RenderingServer.ViewportScreenSpaceAA) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: screenSpaceAa.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderSceneBuffersConfiguration.method_set_screen_space_aa, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_fsr_sharpness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_fsr_sharpness")
        return withUnsafePointer(to: &RenderSceneBuffersConfiguration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fsr_sharpness() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(RenderSceneBuffersConfiguration.method_get_fsr_sharpness, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_fsr_sharpness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_fsr_sharpness")
        return withUnsafePointer(to: &RenderSceneBuffersConfiguration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fsr_sharpness(_ fsrSharpness: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fsrSharpness) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderSceneBuffersConfiguration.method_set_fsr_sharpness, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_texture_mipmap_bias: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture_mipmap_bias")
        return withUnsafePointer(to: &RenderSceneBuffersConfiguration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_mipmap_bias() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(RenderSceneBuffersConfiguration.method_get_texture_mipmap_bias, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_texture_mipmap_bias: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_texture_mipmap_bias")
        return withUnsafePointer(to: &RenderSceneBuffersConfiguration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_mipmap_bias(_ textureMipmapBias: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: textureMipmapBias) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderSceneBuffersConfiguration.method_set_texture_mipmap_bias, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_anisotropic_filtering_level: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_anisotropic_filtering_level")
        return withUnsafePointer(to: &RenderSceneBuffersConfiguration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1617414954)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_anisotropic_filtering_level() -> RenderingServer.ViewportAnisotropicFiltering {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RenderSceneBuffersConfiguration.method_get_anisotropic_filtering_level, handle, nil, &_result)
        return RenderingServer.ViewportAnisotropicFiltering (rawValue: _result)!
    }
    
    fileprivate static let method_set_anisotropic_filtering_level: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_anisotropic_filtering_level")
        return withUnsafePointer(to: &RenderSceneBuffersConfiguration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2559658741)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_anisotropic_filtering_level(_ anisotropicFilteringLevel: RenderingServer.ViewportAnisotropicFiltering) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: anisotropicFilteringLevel.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderSceneBuffersConfiguration.method_set_anisotropic_filtering_level, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}

