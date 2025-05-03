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


/// The parent class of all OpenXR composition layer nodes.
/// 
/// Composition layers allow 2D viewports to be displayed inside of the headset by the XR compositor through special projections that retain their quality. This allows for rendering clear text while keeping the layer at a native resolution.
/// 
/// > Note: If the OpenXR runtime doesn't support the given composition layer type, a fallback mesh can be generated with a ``ViewportTexture``, in order to emulate the composition layer.
/// 
open class OpenXRCompositionLayer: Node3D {
    private static var className = StringName("OpenXRCompositionLayer")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The ``SubViewport`` to render on the composition layer.
    final public var layerViewport: SubViewport? {
        get {
            return get_layer_viewport ()
        }
        
        set {
            set_layer_viewport (newValue)
        }
        
    }
    
    /// If enabled, an Android surface will be created (with the dimensions from ``androidSurfaceSize``) which will provide the 2D content for the composition layer, rather than using ``layerViewport``.
    /// 
    /// See ``getAndroidSurface()`` for information about how to get the surface so that your application can draw to it.
    /// 
    /// > Note: This will only work in Android builds.
    /// 
    final public var useAndroidSurface: Bool {
        get {
            return get_use_android_surface ()
        }
        
        set {
            set_use_android_surface (newValue)
        }
        
    }
    
    /// The size of the Android surface to create if ``useAndroidSurface`` is enabled.
    final public var androidSurfaceSize: Vector2i {
        get {
            return get_android_surface_size ()
        }
        
        set {
            set_android_surface_size (newValue)
        }
        
    }
    
    /// The sort order for this composition layer. Higher numbers will be shown in front of lower numbers.
    /// 
    /// > Note: This will have no effect if a fallback mesh is being used.
    /// 
    final public var sortOrder: Int32 {
        get {
            return get_sort_order ()
        }
        
        set {
            set_sort_order (newValue)
        }
        
    }
    
    /// Enables the blending the layer using its alpha channel.
    /// 
    /// Can be combined with ``Viewport/transparentBg`` to give the layer a transparent background.
    /// 
    final public var alphaBlend: Bool {
        get {
            return get_alpha_blend ()
        }
        
        set {
            set_alpha_blend (newValue)
        }
        
    }
    
    /// Enables a technique called "hole punching", which allows putting the composition layer behind the main projection layer (i.e. setting ``sortOrder`` to a negative value) while "punching a hole" through everything rendered by Godot so that the layer is still visible.
    /// 
    /// This can be used to create the illusion that the composition layer exists in the same 3D space as everything rendered by Godot, allowing objects to appear to pass both behind or in front of the composition layer.
    /// 
    final public var enableHolePunch: Bool {
        get {
            return get_enable_hole_punch ()
        }
        
        set {
            set_enable_hole_punch (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_layer_viewport: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_layer_viewport")
        return withUnsafePointer(to: &OpenXRCompositionLayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3888077664)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_layer_viewport(_ viewport: SubViewport?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: viewport?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRCompositionLayer.method_set_layer_viewport, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_layer_viewport: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_layer_viewport")
        return withUnsafePointer(to: &OpenXRCompositionLayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3750751911)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_layer_viewport() -> SubViewport? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(OpenXRCompositionLayer.method_get_layer_viewport, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_use_android_surface: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_android_surface")
        return withUnsafePointer(to: &OpenXRCompositionLayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_android_surface(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRCompositionLayer.method_set_use_android_surface, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_use_android_surface: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_use_android_surface")
        return withUnsafePointer(to: &OpenXRCompositionLayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_use_android_surface() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(OpenXRCompositionLayer.method_get_use_android_surface, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_android_surface_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_android_surface_size")
        return withUnsafePointer(to: &OpenXRCompositionLayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1130785943)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_android_surface_size(_ size: Vector2i) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRCompositionLayer.method_set_android_surface_size, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_android_surface_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_android_surface_size")
        return withUnsafePointer(to: &OpenXRCompositionLayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3690982128)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_android_surface_size() -> Vector2i {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2i = Vector2i ()
        gi.object_method_bind_ptrcall(OpenXRCompositionLayer.method_get_android_surface_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_enable_hole_punch: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_enable_hole_punch")
        return withUnsafePointer(to: &OpenXRCompositionLayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_enable_hole_punch(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRCompositionLayer.method_set_enable_hole_punch, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_enable_hole_punch: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_enable_hole_punch")
        return withUnsafePointer(to: &OpenXRCompositionLayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_enable_hole_punch() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(OpenXRCompositionLayer.method_get_enable_hole_punch, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_sort_order: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sort_order")
        return withUnsafePointer(to: &OpenXRCompositionLayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sort_order(_ order: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: order) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRCompositionLayer.method_set_sort_order, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sort_order: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sort_order")
        return withUnsafePointer(to: &OpenXRCompositionLayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sort_order() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(OpenXRCompositionLayer.method_get_sort_order, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_alpha_blend: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_alpha_blend")
        return withUnsafePointer(to: &OpenXRCompositionLayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_alpha_blend(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRCompositionLayer.method_set_alpha_blend, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_alpha_blend: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_alpha_blend")
        return withUnsafePointer(to: &OpenXRCompositionLayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_alpha_blend() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(OpenXRCompositionLayer.method_get_alpha_blend, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_android_surface: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_android_surface")
        return withUnsafePointer(to: &OpenXRCompositionLayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3277089691)!
            }
            
        }
        
    }()
    
    /// Returns a ``JavaObject`` representing an `android.view.Surface` if ``useAndroidSurface`` is enabled and OpenXR has created the surface. Otherwise, this will return `null`.
    /// 
    /// > Note: The surface can only be created during an active OpenXR session. So, if ``useAndroidSurface`` is enabled outside of an OpenXR session, it won't be created until a new session fully starts.
    /// 
    public final func getAndroidSurface() -> JavaObject? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(OpenXRCompositionLayer.method_get_android_surface, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_is_natively_supported: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_natively_supported")
        return withUnsafePointer(to: &OpenXRCompositionLayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the OpenXR runtime natively supports this composition layer type.
    /// 
    /// > Note: This will only return an accurate result after the OpenXR session has started.
    /// 
    public final func isNativelySupported() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(OpenXRCompositionLayer.method_is_natively_supported, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_intersects_ray: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("intersects_ray")
        return withUnsafePointer(to: &OpenXRCompositionLayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1091262597)!
            }
            
        }
        
    }()
    
    /// Returns UV coordinates where the given ray intersects with the composition layer. `origin` and `direction` must be in global space.
    /// 
    /// Returns `Vector2(-1.0, -1.0)` if the ray doesn't intersect.
    /// 
    public final func intersectsRay(origin: Vector3, direction: Vector3) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: origin) { pArg0 in
            withUnsafePointer(to: direction) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(OpenXRCompositionLayer.method_intersects_ray, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
}

