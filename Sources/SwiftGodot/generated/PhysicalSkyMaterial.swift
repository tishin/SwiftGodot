// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A material that defines a sky for a ``Sky`` resource by a set of physical properties.
/// 
/// The ``PhysicalSkyMaterial`` uses the Preetham analytic daylight model to draw a sky based on physical properties. This results in a substantially more realistic sky than the ``ProceduralSkyMaterial``, but it is slightly slower and less flexible.
/// 
/// The ``PhysicalSkyMaterial`` only supports one sun. The color, energy, and direction of the sun are taken from the first ``DirectionalLight3D`` in the scene tree.
/// 
/// As it is based on a daylight model, the sky fades to black as the sunset ends. If you want a full day/night cycle, you will have to add a night sky by converting this to a ``ShaderMaterial`` and adding a night sky directly into the resulting shader.
/// 
open class PhysicalSkyMaterial: Material {
    override open class var godotClassName: StringName { "PhysicalSkyMaterial" }
    
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
    fileprivate static var method_set_rayleigh_coefficient: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_rayleigh_coefficient")
        return withUnsafePointer (to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_rayleigh_coefficient (_ rayleigh: Double) {
        #if true
        
        var copy_rayleigh = rayleigh
        
        gi.object_method_bind_ptrcall_v (PhysicalSkyMaterial.method_set_rayleigh_coefficient, UnsafeMutableRawPointer (mutating: handle), nil, &copy_rayleigh)
        
        #else
        
        var copy_rayleigh = rayleigh
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_rayleigh) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PhysicalSkyMaterial.method_set_rayleigh_coefficient, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_rayleigh_coefficient: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_rayleigh_coefficient")
        return withUnsafePointer (to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_rayleigh_coefficient ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (PhysicalSkyMaterial.method_get_rayleigh_coefficient, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_rayleigh_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_rayleigh_color")
        return withUnsafePointer (to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_rayleigh_color (_ color: Color) {
        #if true
        
        var copy_color = color
        
        gi.object_method_bind_ptrcall_v (PhysicalSkyMaterial.method_set_rayleigh_color, UnsafeMutableRawPointer (mutating: handle), nil, &copy_color)
        
        #else
        
        var copy_color = color
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_color) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PhysicalSkyMaterial.method_set_rayleigh_color, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_rayleigh_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_rayleigh_color")
        return withUnsafePointer (to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_rayleigh_color ()-> Color {
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall (PhysicalSkyMaterial.method_get_rayleigh_color, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_mie_coefficient: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_mie_coefficient")
        return withUnsafePointer (to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mie_coefficient (_ mie: Double) {
        #if true
        
        var copy_mie = mie
        
        gi.object_method_bind_ptrcall_v (PhysicalSkyMaterial.method_set_mie_coefficient, UnsafeMutableRawPointer (mutating: handle), nil, &copy_mie)
        
        #else
        
        var copy_mie = mie
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_mie) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PhysicalSkyMaterial.method_set_mie_coefficient, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_mie_coefficient: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_mie_coefficient")
        return withUnsafePointer (to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mie_coefficient ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (PhysicalSkyMaterial.method_get_mie_coefficient, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_mie_eccentricity: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_mie_eccentricity")
        return withUnsafePointer (to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mie_eccentricity (_ eccentricity: Double) {
        #if true
        
        var copy_eccentricity = eccentricity
        
        gi.object_method_bind_ptrcall_v (PhysicalSkyMaterial.method_set_mie_eccentricity, UnsafeMutableRawPointer (mutating: handle), nil, &copy_eccentricity)
        
        #else
        
        var copy_eccentricity = eccentricity
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_eccentricity) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PhysicalSkyMaterial.method_set_mie_eccentricity, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_mie_eccentricity: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_mie_eccentricity")
        return withUnsafePointer (to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mie_eccentricity ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (PhysicalSkyMaterial.method_get_mie_eccentricity, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_mie_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_mie_color")
        return withUnsafePointer (to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mie_color (_ color: Color) {
        #if true
        
        var copy_color = color
        
        gi.object_method_bind_ptrcall_v (PhysicalSkyMaterial.method_set_mie_color, UnsafeMutableRawPointer (mutating: handle), nil, &copy_color)
        
        #else
        
        var copy_color = color
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_color) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PhysicalSkyMaterial.method_set_mie_color, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_mie_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_mie_color")
        return withUnsafePointer (to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mie_color ()-> Color {
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall (PhysicalSkyMaterial.method_get_mie_color, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_turbidity: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_turbidity")
        return withUnsafePointer (to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_turbidity (_ turbidity: Double) {
        #if true
        
        var copy_turbidity = turbidity
        
        gi.object_method_bind_ptrcall_v (PhysicalSkyMaterial.method_set_turbidity, UnsafeMutableRawPointer (mutating: handle), nil, &copy_turbidity)
        
        #else
        
        var copy_turbidity = turbidity
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_turbidity) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PhysicalSkyMaterial.method_set_turbidity, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_turbidity: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_turbidity")
        return withUnsafePointer (to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_turbidity ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (PhysicalSkyMaterial.method_get_turbidity, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_sun_disk_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_sun_disk_scale")
        return withUnsafePointer (to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sun_disk_scale (_ scale: Double) {
        #if true
        
        var copy_scale = scale
        
        gi.object_method_bind_ptrcall_v (PhysicalSkyMaterial.method_set_sun_disk_scale, UnsafeMutableRawPointer (mutating: handle), nil, &copy_scale)
        
        #else
        
        var copy_scale = scale
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_scale) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PhysicalSkyMaterial.method_set_sun_disk_scale, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_sun_disk_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_sun_disk_scale")
        return withUnsafePointer (to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sun_disk_scale ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (PhysicalSkyMaterial.method_get_sun_disk_scale, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_ground_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_ground_color")
        return withUnsafePointer (to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_ground_color (_ color: Color) {
        #if true
        
        var copy_color = color
        
        gi.object_method_bind_ptrcall_v (PhysicalSkyMaterial.method_set_ground_color, UnsafeMutableRawPointer (mutating: handle), nil, &copy_color)
        
        #else
        
        var copy_color = color
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_color) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PhysicalSkyMaterial.method_set_ground_color, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_ground_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_ground_color")
        return withUnsafePointer (to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_ground_color ()-> Color {
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall (PhysicalSkyMaterial.method_get_ground_color, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_energy_multiplier: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_energy_multiplier")
        return withUnsafePointer (to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_energy_multiplier (_ multiplier: Double) {
        #if true
        
        var copy_multiplier = multiplier
        
        gi.object_method_bind_ptrcall_v (PhysicalSkyMaterial.method_set_energy_multiplier, UnsafeMutableRawPointer (mutating: handle), nil, &copy_multiplier)
        
        #else
        
        var copy_multiplier = multiplier
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_multiplier) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PhysicalSkyMaterial.method_set_energy_multiplier, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_energy_multiplier: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_energy_multiplier")
        return withUnsafePointer (to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_energy_multiplier ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (PhysicalSkyMaterial.method_get_energy_multiplier, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_use_debanding: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_use_debanding")
        return withUnsafePointer (to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_debanding (_ useDebanding: Bool) {
        #if true
        
        var copy_use_debanding = useDebanding
        
        gi.object_method_bind_ptrcall_v (PhysicalSkyMaterial.method_set_use_debanding, UnsafeMutableRawPointer (mutating: handle), nil, &copy_use_debanding)
        
        #else
        
        var copy_use_debanding = useDebanding
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_use_debanding) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PhysicalSkyMaterial.method_set_use_debanding, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_use_debanding: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_use_debanding")
        return withUnsafePointer (to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_use_debanding ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (PhysicalSkyMaterial.method_get_use_debanding, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_night_sky: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_night_sky")
        return withUnsafePointer (to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4051416890)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_night_sky (_ nightSky: Texture2D?) {
        #if true
        
        var copy_night_sky_handle = nightSky?.handle
        
        gi.object_method_bind_ptrcall_v (PhysicalSkyMaterial.method_set_night_sky, UnsafeMutableRawPointer (mutating: handle), nil, &copy_night_sky_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: nightSky?.handle) { p0 in
        _args.append (nightSky == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (PhysicalSkyMaterial.method_set_night_sky, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_night_sky: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_night_sky")
        return withUnsafePointer (to: &PhysicalSkyMaterial.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_night_sky ()-> Texture2D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (PhysicalSkyMaterial.method_get_night_sky, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
}

