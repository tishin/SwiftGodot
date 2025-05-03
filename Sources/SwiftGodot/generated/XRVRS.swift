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


/// Helper class for XR interfaces that generates VRS images.
/// 
/// This class is used by various XR interfaces to generate VRS textures that can be used to speed up rendering.
open class XRVRS: Object {
    private static var className = StringName("XRVRS")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The minimum radius around the focal point where full quality is guaranteed if VRS is used as a percentage of screen size.
    final public var vrsMinRadius: Double {
        get {
            return get_vrs_min_radius ()
        }
        
        set {
            set_vrs_min_radius (newValue)
        }
        
    }
    
    /// The strength used to calculate the VRS density map. The greater this value, the more noticeable VRS is.
    final public var vrsStrength: Double {
        get {
            return get_vrs_strength ()
        }
        
        set {
            set_vrs_strength (newValue)
        }
        
    }
    
    /// The render region that the VRS texture will be scaled to when generated.
    final public var vrsRenderRegion: Rect2i {
        get {
            return get_vrs_render_region ()
        }
        
        set {
            set_vrs_render_region (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_get_vrs_min_radius: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_vrs_min_radius")
        return withUnsafePointer(to: &XRVRS.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_vrs_min_radius() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(XRVRS.method_get_vrs_min_radius, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_vrs_min_radius: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_vrs_min_radius")
        return withUnsafePointer(to: &XRVRS.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_vrs_min_radius(_ radius: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: radius) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XRVRS.method_set_vrs_min_radius, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_vrs_strength: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_vrs_strength")
        return withUnsafePointer(to: &XRVRS.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_vrs_strength() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(XRVRS.method_get_vrs_strength, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_vrs_strength: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_vrs_strength")
        return withUnsafePointer(to: &XRVRS.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_vrs_strength(_ strength: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: strength) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XRVRS.method_set_vrs_strength, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_vrs_render_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_vrs_render_region")
        return withUnsafePointer(to: &XRVRS.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 410525958)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_vrs_render_region() -> Rect2i {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Rect2i = Rect2i ()
        gi.object_method_bind_ptrcall(XRVRS.method_get_vrs_render_region, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_vrs_render_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_vrs_render_region")
        return withUnsafePointer(to: &XRVRS.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1763793166)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_vrs_render_region(_ renderRegion: Rect2i) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: renderRegion) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XRVRS.method_set_vrs_render_region, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_make_vrs_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("make_vrs_texture")
        return withUnsafePointer(to: &XRVRS.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3647044786)!
            }
            
        }
        
    }()
    
    /// Generates the VRS texture based on a render `targetSize` adjusted by our VRS tile size. For each eyes focal point passed in `eyeFoci` a layer is created. Focal point should be in NDC.
    /// 
    /// The result will be cached, requesting a VRS texture with unchanged parameters and settings will return the cached RID.
    /// 
    public final func makeVrsTexture(targetSize: Vector2, eyeFoci: PackedVector2Array) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: targetSize) { pArg0 in
            withUnsafePointer(to: eyeFoci.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(XRVRS.method_make_vrs_texture, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
}

