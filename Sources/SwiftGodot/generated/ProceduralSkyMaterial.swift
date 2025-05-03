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


/// A material that defines a simple sky for a ``Sky`` resource.
/// 
/// ``ProceduralSkyMaterial`` provides a way to create an effective background quickly by defining procedural parameters for the sun, the sky and the ground. The sky and ground are defined by a main color, a color at the horizon, and an easing curve to interpolate between them. Suns are described by a position in the sky, a color, and a max angle from the sun at which the easing curve ends. The max angle therefore defines the size of the sun in the sky.
/// 
/// ``ProceduralSkyMaterial`` supports up to 4 suns, using the color, and energy, direction, and angular distance of the first four ``DirectionalLight3D`` nodes in the scene. This means that the suns are defined individually by the properties of their corresponding ``DirectionalLight3D``s and globally by ``sunAngleMax`` and ``sunCurve``.
/// 
/// ``ProceduralSkyMaterial`` uses a lightweight shader to draw the sky and is therefore suited for real-time updates. This makes it a great option for a sky that is simple and computationally cheap, but unrealistic. If you need a more realistic procedural option, use ``PhysicalSkyMaterial``.
/// 
open class ProceduralSkyMaterial: Material {
    private static var className = StringName("ProceduralSkyMaterial")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Color of the sky at the top. Blends with ``skyHorizonColor``.
    final public var skyTopColor: Color {
        get {
            return get_sky_top_color ()
        }
        
        set {
            set_sky_top_color (newValue)
        }
        
    }
    
    /// Color of the sky at the horizon. Blends with ``skyTopColor``.
    final public var skyHorizonColor: Color {
        get {
            return get_sky_horizon_color ()
        }
        
        set {
            set_sky_horizon_color (newValue)
        }
        
    }
    
    /// How quickly the ``skyHorizonColor`` fades into the ``skyTopColor``.
    final public var skyCurve: Double {
        get {
            return get_sky_curve ()
        }
        
        set {
            set_sky_curve (newValue)
        }
        
    }
    
    /// Multiplier for sky color. A higher value will make the sky brighter.
    final public var skyEnergyMultiplier: Double {
        get {
            return get_sky_energy_multiplier ()
        }
        
        set {
            set_sky_energy_multiplier (newValue)
        }
        
    }
    
    /// The sky cover texture to use. This texture must use an equirectangular projection (similar to ``PanoramaSkyMaterial``). The texture's colors will be _added_ to the existing sky color, and will be multiplied by ``skyEnergyMultiplier`` and ``skyCoverModulate``. This is mainly suited to displaying stars at night, but it can also be used to display clouds at day or night (with a non-physically-accurate look).
    final public var skyCover: Texture2D? {
        get {
            return get_sky_cover ()
        }
        
        set {
            set_sky_cover (newValue)
        }
        
    }
    
    /// The tint to apply to the ``skyCover`` texture. This can be used to change the sky cover's colors or opacity independently of the sky energy, which is useful for day/night or weather transitions. Only effective if a texture is defined in ``skyCover``.
    final public var skyCoverModulate: Color {
        get {
            return get_sky_cover_modulate ()
        }
        
        set {
            set_sky_cover_modulate (newValue)
        }
        
    }
    
    /// Color of the ground at the bottom. Blends with ``groundHorizonColor``.
    final public var groundBottomColor: Color {
        get {
            return get_ground_bottom_color ()
        }
        
        set {
            set_ground_bottom_color (newValue)
        }
        
    }
    
    /// Color of the ground at the horizon. Blends with ``groundBottomColor``.
    final public var groundHorizonColor: Color {
        get {
            return get_ground_horizon_color ()
        }
        
        set {
            set_ground_horizon_color (newValue)
        }
        
    }
    
    /// How quickly the ``groundHorizonColor`` fades into the ``groundBottomColor``.
    final public var groundCurve: Double {
        get {
            return get_ground_curve ()
        }
        
        set {
            set_ground_curve (newValue)
        }
        
    }
    
    /// Multiplier for ground color. A higher value will make the ground brighter.
    final public var groundEnergyMultiplier: Double {
        get {
            return get_ground_energy_multiplier ()
        }
        
        set {
            set_ground_energy_multiplier (newValue)
        }
        
    }
    
    /// Distance from center of sun where it fades out completely.
    final public var sunAngleMax: Double {
        get {
            return get_sun_angle_max ()
        }
        
        set {
            set_sun_angle_max (newValue)
        }
        
    }
    
    /// How quickly the sun fades away between the edge of the sun disk and ``sunAngleMax``.
    final public var sunCurve: Double {
        get {
            return get_sun_curve ()
        }
        
        set {
            set_sun_curve (newValue)
        }
        
    }
    
    /// If `true`, enables debanding. Debanding adds a small amount of noise which helps reduce banding that appears from the smooth changes in color in the sky.
    final public var useDebanding: Bool {
        get {
            return get_use_debanding ()
        }
        
        set {
            set_use_debanding (newValue)
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
    fileprivate static let method_set_sky_top_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sky_top_color")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sky_top_color(_ color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_set_sky_top_color, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sky_top_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sky_top_color")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sky_top_color() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_get_sky_top_color, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_sky_horizon_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sky_horizon_color")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sky_horizon_color(_ color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_set_sky_horizon_color, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sky_horizon_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sky_horizon_color")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sky_horizon_color() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_get_sky_horizon_color, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_sky_curve: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sky_curve")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sky_curve(_ curve: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: curve) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_set_sky_curve, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sky_curve: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sky_curve")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sky_curve() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_get_sky_curve, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_sky_energy_multiplier: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sky_energy_multiplier")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sky_energy_multiplier(_ multiplier: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: multiplier) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_set_sky_energy_multiplier, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sky_energy_multiplier: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sky_energy_multiplier")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sky_energy_multiplier() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_get_sky_energy_multiplier, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_sky_cover: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sky_cover")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4051416890)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sky_cover(_ skyCover: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: skyCover?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_set_sky_cover, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sky_cover: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sky_cover")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sky_cover() -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_get_sky_cover, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_sky_cover_modulate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sky_cover_modulate")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sky_cover_modulate(_ color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_set_sky_cover_modulate, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sky_cover_modulate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sky_cover_modulate")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sky_cover_modulate() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_get_sky_cover_modulate, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_ground_bottom_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_ground_bottom_color")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_ground_bottom_color(_ color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_set_ground_bottom_color, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_ground_bottom_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_ground_bottom_color")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_ground_bottom_color() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_get_ground_bottom_color, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_ground_horizon_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_ground_horizon_color")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_ground_horizon_color(_ color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_set_ground_horizon_color, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_ground_horizon_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_ground_horizon_color")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_ground_horizon_color() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_get_ground_horizon_color, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_ground_curve: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_ground_curve")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_ground_curve(_ curve: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: curve) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_set_ground_curve, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_ground_curve: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_ground_curve")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_ground_curve() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_get_ground_curve, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_ground_energy_multiplier: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_ground_energy_multiplier")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_ground_energy_multiplier(_ energy: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: energy) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_set_ground_energy_multiplier, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_ground_energy_multiplier: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_ground_energy_multiplier")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_ground_energy_multiplier() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_get_ground_energy_multiplier, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_sun_angle_max: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sun_angle_max")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sun_angle_max(_ degrees: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: degrees) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_set_sun_angle_max, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sun_angle_max: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sun_angle_max")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sun_angle_max() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_get_sun_angle_max, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_sun_curve: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sun_curve")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sun_curve(_ curve: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: curve) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_set_sun_curve, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sun_curve: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sun_curve")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sun_curve() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_get_sun_curve, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_use_debanding: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_debanding")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_debanding(_ useDebanding: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: useDebanding) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_set_use_debanding, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_use_debanding: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_use_debanding")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_use_debanding() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_get_use_debanding, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_energy_multiplier: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_energy_multiplier")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_set_energy_multiplier, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_energy_multiplier: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_energy_multiplier")
        return withUnsafePointer(to: &ProceduralSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_energy_multiplier() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(ProceduralSkyMaterial.method_get_energy_multiplier, handle, nil, &_result)
        return _result
    }
    
}

