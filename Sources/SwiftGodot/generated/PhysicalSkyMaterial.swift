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


/// A material that defines a sky for a ``Sky`` resource by a set of physical properties.
/// 
/// The ``PhysicalSkyMaterial`` uses the Preetham analytic daylight model to draw a sky based on physical properties. This results in a substantially more realistic sky than the ``ProceduralSkyMaterial``, but it is slightly slower and less flexible.
/// 
/// The ``PhysicalSkyMaterial`` only supports one sun. The color, energy, and direction of the sun are taken from the first ``DirectionalLight3D`` in the scene tree.
/// 
open class PhysicalSkyMaterial: Material {
    private static var className = StringName("PhysicalSkyMaterial")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Controls the strength of the <a href="https://en.wikipedia.org/wiki/Rayleigh_scattering">Rayleigh scattering</a>. Rayleigh scattering results from light colliding with small particles. It is responsible for the blue color of the sky.
    final public var rayleighCoefficient: Double {
        get {
            return get_rayleigh_coefficient ()
        }
        
        set {
            set_rayleigh_coefficient (newValue)
        }
        
    }
    
    /// Controls the ``Color`` of the <a href="https://en.wikipedia.org/wiki/Rayleigh_scattering">Rayleigh scattering</a>. While not physically accurate, this allows for the creation of alien-looking planets. For example, setting this to a red ``Color`` results in a Mars-looking atmosphere with a corresponding blue sunset.
    final public var rayleighColor: Color {
        get {
            return get_rayleigh_color ()
        }
        
        set {
            set_rayleigh_color (newValue)
        }
        
    }
    
    /// Controls the strength of <a href="https://en.wikipedia.org/wiki/Mie_scattering">Mie scattering</a> for the sky. Mie scattering results from light colliding with larger particles (like water). On earth, Mie scattering results in a whitish color around the sun and horizon.
    final public var mieCoefficient: Double {
        get {
            return get_mie_coefficient ()
        }
        
        set {
            set_mie_coefficient (newValue)
        }
        
    }
    
    /// Controls the direction of the <a href="https://en.wikipedia.org/wiki/Mie_scattering">Mie scattering</a>. A value of `1` means that when light hits a particle it's passing through straight forward. A value of `-1` means that all light is scatter backwards.
    final public var mieEccentricity: Double {
        get {
            return get_mie_eccentricity ()
        }
        
        set {
            set_mie_eccentricity (newValue)
        }
        
    }
    
    /// Controls the ``Color`` of the <a href="https://en.wikipedia.org/wiki/Mie_scattering">Mie scattering</a> effect. While not physically accurate, this allows for the creation of alien-looking planets.
    final public var mieColor: Color {
        get {
            return get_mie_color ()
        }
        
        set {
            set_mie_color (newValue)
        }
        
    }
    
    /// Sets the thickness of the atmosphere. High turbidity creates a foggy-looking atmosphere, while a low turbidity results in a clearer atmosphere.
    final public var turbidity: Double {
        get {
            return get_turbidity ()
        }
        
        set {
            set_turbidity (newValue)
        }
        
    }
    
    /// Sets the size of the sun disk. Default value is based on Sol's perceived size from Earth.
    final public var sunDiskScale: Double {
        get {
            return get_sun_disk_scale ()
        }
        
        set {
            set_sun_disk_scale (newValue)
        }
        
    }
    
    /// Modulates the ``Color`` on the bottom half of the sky to represent the ground.
    final public var groundColor: Color {
        get {
            return get_ground_color ()
        }
        
        set {
            set_ground_color (newValue)
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
    
    /// If `true`, enables debanding. Debanding adds a small amount of noise which helps reduce banding that appears from the smooth changes in color in the sky.
    final public var useDebanding: Bool {
        get {
            return get_use_debanding ()
        }
        
        set {
            set_use_debanding (newValue)
        }
        
    }
    
    /// ``Texture2D`` for the night sky. This is added to the sky, so if it is bright enough, it may be visible during the day.
    final public var nightSky: Texture2D? {
        get {
            return get_night_sky ()
        }
        
        set {
            set_night_sky (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_rayleigh_coefficient: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_rayleigh_coefficient")
        return withUnsafePointer(to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_rayleigh_coefficient(_ rayleigh: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: rayleigh) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicalSkyMaterial.method_set_rayleigh_coefficient, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_rayleigh_coefficient: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_rayleigh_coefficient")
        return withUnsafePointer(to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_rayleigh_coefficient() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicalSkyMaterial.method_get_rayleigh_coefficient, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_rayleigh_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_rayleigh_color")
        return withUnsafePointer(to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_rayleigh_color(_ color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicalSkyMaterial.method_set_rayleigh_color, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_rayleigh_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_rayleigh_color")
        return withUnsafePointer(to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_rayleigh_color() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(PhysicalSkyMaterial.method_get_rayleigh_color, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_mie_coefficient: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_mie_coefficient")
        return withUnsafePointer(to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mie_coefficient(_ mie: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mie) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicalSkyMaterial.method_set_mie_coefficient, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_mie_coefficient: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_mie_coefficient")
        return withUnsafePointer(to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mie_coefficient() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicalSkyMaterial.method_get_mie_coefficient, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_mie_eccentricity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_mie_eccentricity")
        return withUnsafePointer(to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mie_eccentricity(_ eccentricity: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: eccentricity) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicalSkyMaterial.method_set_mie_eccentricity, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_mie_eccentricity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_mie_eccentricity")
        return withUnsafePointer(to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mie_eccentricity() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicalSkyMaterial.method_get_mie_eccentricity, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_mie_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_mie_color")
        return withUnsafePointer(to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mie_color(_ color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicalSkyMaterial.method_set_mie_color, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_mie_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_mie_color")
        return withUnsafePointer(to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mie_color() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(PhysicalSkyMaterial.method_get_mie_color, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_turbidity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_turbidity")
        return withUnsafePointer(to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_turbidity(_ turbidity: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: turbidity) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicalSkyMaterial.method_set_turbidity, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_turbidity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_turbidity")
        return withUnsafePointer(to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_turbidity() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicalSkyMaterial.method_get_turbidity, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_sun_disk_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sun_disk_scale")
        return withUnsafePointer(to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sun_disk_scale(_ scale: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: scale) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicalSkyMaterial.method_set_sun_disk_scale, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sun_disk_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sun_disk_scale")
        return withUnsafePointer(to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sun_disk_scale() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicalSkyMaterial.method_get_sun_disk_scale, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_ground_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_ground_color")
        return withUnsafePointer(to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_ground_color(_ color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicalSkyMaterial.method_set_ground_color, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_ground_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_ground_color")
        return withUnsafePointer(to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_ground_color() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(PhysicalSkyMaterial.method_get_ground_color, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_energy_multiplier: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_energy_multiplier")
        return withUnsafePointer(to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(PhysicalSkyMaterial.method_set_energy_multiplier, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_energy_multiplier: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_energy_multiplier")
        return withUnsafePointer(to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_energy_multiplier() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicalSkyMaterial.method_get_energy_multiplier, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_use_debanding: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_debanding")
        return withUnsafePointer(to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(PhysicalSkyMaterial.method_set_use_debanding, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_use_debanding: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_use_debanding")
        return withUnsafePointer(to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_use_debanding() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PhysicalSkyMaterial.method_get_use_debanding, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_night_sky: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_night_sky")
        return withUnsafePointer(to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4051416890)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_night_sky(_ nightSky: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: nightSky?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicalSkyMaterial.method_set_night_sky, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_night_sky: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_night_sky")
        return withUnsafePointer(to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_night_sky() -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(PhysicalSkyMaterial.method_get_night_sky, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
}

