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


/// A material that provides a special texture to a ``Sky``, usually an HDR panorama.
/// 
/// A resource referenced in a ``Sky`` that is used to draw a background. ``PanoramaSkyMaterial`` functions similar to skyboxes in other engines, except it uses an equirectangular sky map instead of a ``Cubemap``.
/// 
/// Using an HDR panorama is strongly recommended for accurate, high-quality reflections. Godot supports the Radiance HDR (`.hdr`) and OpenEXR (`.exr`) image formats for this purpose.
/// 
/// You can use <a href="https://danilw.github.io/GLSL-howto/cubemap_to_panorama_js/cubemap_to_panorama.html">this tool</a> to convert a cubemap to an equirectangular sky map.
/// 
open class PanoramaSkyMaterial: Material {
    private static var className = StringName("PanoramaSkyMaterial")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// ``Texture2D`` to be applied to the ``PanoramaSkyMaterial``.
    final public var panorama: Texture2D? {
        get {
            return get_panorama ()
        }
        
        set {
            set_panorama (newValue)
        }
        
    }
    
    /// A boolean value to determine if the background texture should be filtered or not.
    final public var filter: Bool {
        get {
            return is_filtering_enabled ()
        }
        
        set {
            set_filtering_enabled (newValue)
        }
        
    }
    
    /// The sky's overall brightness multiplier. Higher values result in a brighter sky.
    final public var energyMultiplier: Double {
        get {
            return get_energy_multiplier ()
        }
        
        set {
            set_energy_multiplier (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_panorama: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_panorama")
        return withUnsafePointer(to: &PanoramaSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4051416890)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_panorama(_ texture: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: texture?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PanoramaSkyMaterial.method_set_panorama, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_panorama: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_panorama")
        return withUnsafePointer(to: &PanoramaSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_panorama() -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(PanoramaSkyMaterial.method_get_panorama, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_filtering_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_filtering_enabled")
        return withUnsafePointer(to: &PanoramaSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_filtering_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PanoramaSkyMaterial.method_set_filtering_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_filtering_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_filtering_enabled")
        return withUnsafePointer(to: &PanoramaSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_filtering_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PanoramaSkyMaterial.method_is_filtering_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_energy_multiplier: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_energy_multiplier")
        return withUnsafePointer(to: &PanoramaSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_energy_multiplier(_ multiplier: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: multiplier) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PanoramaSkyMaterial.method_set_energy_multiplier, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_energy_multiplier: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_energy_multiplier")
        return withUnsafePointer(to: &PanoramaSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_energy_multiplier() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PanoramaSkyMaterial.method_get_energy_multiplier, handle, nil, &_result)
        return _result
    }
    
}

