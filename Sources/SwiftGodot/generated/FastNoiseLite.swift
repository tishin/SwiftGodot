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


/// Generates noise using the FastNoiseLite library.
/// 
/// This class generates noise using the FastNoiseLite library, which is a collection of several noise algorithms including Cellular, Perlin, Value, and more.
/// 
/// Most generated noise values are in the range of `[-1, 1]`, but not always. Some of the cellular noise algorithms return results above `1`.
/// 
open class FastNoiseLite: Noise {
    private static var className = StringName("FastNoiseLite")
    override open class var godotClassName: StringName { className }
    public enum NoiseType: Int64, CaseIterable {
        /// A lattice of points are assigned random values then interpolated based on neighboring values.
        case value = 5 // TYPE_VALUE
        /// Similar to Value noise, but slower. Has more variance in peaks and valleys.
        /// 
        /// Cubic noise can be used to avoid certain artifacts when using value noise to create a bumpmap. In general, you should always use this mode if the value noise is being used for a heightmap or bumpmap.
        /// 
        case valueCubic = 4 // TYPE_VALUE_CUBIC
        /// A lattice of random gradients. Their dot products are interpolated to obtain values in between the lattices.
        case perlin = 3 // TYPE_PERLIN
        /// Cellular includes both Worley noise and Voronoi diagrams which creates various regions of the same value.
        case cellular = 2 // TYPE_CELLULAR
        /// As opposed to ``NoiseType/perlin``, gradients exist in a simplex lattice rather than a grid lattice, avoiding directional artifacts. Internally uses FastNoiseLite's OpenSimplex2 noise type.
        case simplex = 0 // TYPE_SIMPLEX
        /// Modified, higher quality version of ``NoiseType/simplex``, but slower. Internally uses FastNoiseLite's OpenSimplex2S noise type.
        case simplexSmooth = 1 // TYPE_SIMPLEX_SMOOTH
    }
    
    public enum FractalType: Int64, CaseIterable {
        /// No fractal noise.
        case none = 0 // FRACTAL_NONE
        /// Method using Fractional Brownian Motion to combine octaves into a fractal.
        case fbm = 1 // FRACTAL_FBM
        /// Method of combining octaves into a fractal resulting in a "ridged" look.
        case ridged = 2 // FRACTAL_RIDGED
        /// Method of combining octaves into a fractal with a ping pong effect.
        case pingPong = 3 // FRACTAL_PING_PONG
    }
    
    public enum CellularDistanceFunction: Int64, CaseIterable {
        /// Euclidean distance to the nearest point.
        case euclidean = 0 // DISTANCE_EUCLIDEAN
        /// Squared Euclidean distance to the nearest point.
        case euclideanSquared = 1 // DISTANCE_EUCLIDEAN_SQUARED
        /// Manhattan distance (taxicab metric) to the nearest point.
        case manhattan = 2 // DISTANCE_MANHATTAN
        /// Blend of ``CellularDistanceFunction/euclidean`` and ``CellularDistanceFunction/manhattan`` to give curved cell boundaries.
        case hybrid = 3 // DISTANCE_HYBRID
    }
    
    public enum CellularReturnType: Int64, CaseIterable {
        /// The cellular distance function will return the same value for all points within a cell.
        case cellValue = 0 // RETURN_CELL_VALUE
        /// The cellular distance function will return a value determined by the distance to the nearest point.
        case distance = 1 // RETURN_DISTANCE
        /// The cellular distance function returns the distance to the second-nearest point.
        case distance2 = 2 // RETURN_DISTANCE2
        /// The distance to the nearest point is added to the distance to the second-nearest point.
        case distance2Add = 3 // RETURN_DISTANCE2_ADD
        /// The distance to the nearest point is subtracted from the distance to the second-nearest point.
        case distance2Sub = 4 // RETURN_DISTANCE2_SUB
        /// The distance to the nearest point is multiplied with the distance to the second-nearest point.
        case distance2Mul = 5 // RETURN_DISTANCE2_MUL
        /// The distance to the nearest point is divided by the distance to the second-nearest point.
        case distance2Div = 6 // RETURN_DISTANCE2_DIV
    }
    
    public enum DomainWarpType: Int64, CaseIterable {
        /// The domain is warped using the simplex noise algorithm.
        case simplex = 0 // DOMAIN_WARP_SIMPLEX
        /// The domain is warped using a simplified version of the simplex noise algorithm.
        case simplexReduced = 1 // DOMAIN_WARP_SIMPLEX_REDUCED
        /// The domain is warped using a simple noise grid (not as smooth as the other methods, but more performant).
        case basicGrid = 2 // DOMAIN_WARP_BASIC_GRID
    }
    
    public enum DomainWarpFractalType: Int64, CaseIterable {
        /// No fractal noise for warping the space.
        case none = 0 // DOMAIN_WARP_FRACTAL_NONE
        /// Warping the space progressively, octave for octave, resulting in a more "liquified" distortion.
        case progressive = 1 // DOMAIN_WARP_FRACTAL_PROGRESSIVE
        /// Warping the space independently for each octave, resulting in a more chaotic distortion.
        case independent = 2 // DOMAIN_WARP_FRACTAL_INDEPENDENT
    }
    
    
    /* Properties */
    
    /// The noise algorithm used. See ``FastNoiseLite/NoiseType``.
    final public var noiseType: FastNoiseLite.NoiseType {
        get {
            return get_noise_type ()
        }
        
        set {
            set_noise_type (newValue)
        }
        
    }
    
    /// The random number seed for all noise types.
    final public var seed: Int32 {
        get {
            return get_seed ()
        }
        
        set {
            set_seed (newValue)
        }
        
    }
    
    /// The frequency for all noise types. Low frequency results in smooth noise while high frequency results in rougher, more granular noise.
    final public var frequency: Double {
        get {
            return get_frequency ()
        }
        
        set {
            set_frequency (newValue)
        }
        
    }
    
    /// Translate the noise input coordinates by the given ``Vector3``.
    final public var offset: Vector3 {
        get {
            return get_offset ()
        }
        
        set {
            set_offset (newValue)
        }
        
    }
    
    /// The method for combining octaves into a fractal. See ``FastNoiseLite/FractalType``.
    final public var fractalType: FastNoiseLite.FractalType {
        get {
            return get_fractal_type ()
        }
        
        set {
            set_fractal_type (newValue)
        }
        
    }
    
    /// The number of noise layers that are sampled to get the final value for fractal noise types.
    final public var fractalOctaves: Int32 {
        get {
            return get_fractal_octaves ()
        }
        
        set {
            set_fractal_octaves (newValue)
        }
        
    }
    
    /// Frequency multiplier between subsequent octaves. Increasing this value results in higher octaves producing noise with finer details and a rougher appearance.
    final public var fractalLacunarity: Double {
        get {
            return get_fractal_lacunarity ()
        }
        
        set {
            set_fractal_lacunarity (newValue)
        }
        
    }
    
    /// Determines the strength of each subsequent layer of noise in fractal noise.
    /// 
    /// A low value places more emphasis on the lower frequency base layers, while a high value puts more emphasis on the higher frequency layers.
    /// 
    final public var fractalGain: Double {
        get {
            return get_fractal_gain ()
        }
        
        set {
            set_fractal_gain (newValue)
        }
        
    }
    
    /// Higher weighting means higher octaves have less impact if lower octaves have a large impact.
    final public var fractalWeightedStrength: Double {
        get {
            return get_fractal_weighted_strength ()
        }
        
        set {
            set_fractal_weighted_strength (newValue)
        }
        
    }
    
    /// Sets the strength of the fractal ping pong type.
    final public var fractalPingPongStrength: Double {
        get {
            return get_fractal_ping_pong_strength ()
        }
        
        set {
            set_fractal_ping_pong_strength (newValue)
        }
        
    }
    
    /// Determines how the distance to the nearest/second-nearest point is computed. See ``FastNoiseLite/CellularDistanceFunction`` for options.
    final public var cellularDistanceFunction: FastNoiseLite.CellularDistanceFunction {
        get {
            return get_cellular_distance_function ()
        }
        
        set {
            set_cellular_distance_function (newValue)
        }
        
    }
    
    /// Maximum distance a point can move off of its grid position. Set to `0` for an even grid.
    final public var cellularJitter: Double {
        get {
            return get_cellular_jitter ()
        }
        
        set {
            set_cellular_jitter (newValue)
        }
        
    }
    
    /// Return type from cellular noise calculations. See ``FastNoiseLite/CellularReturnType``.
    final public var cellularReturnType: FastNoiseLite.CellularReturnType {
        get {
            return get_cellular_return_type ()
        }
        
        set {
            set_cellular_return_type (newValue)
        }
        
    }
    
    /// If enabled, another FastNoiseLite instance is used to warp the space, resulting in a distortion of the noise.
    final public var domainWarpEnabled: Bool {
        get {
            return is_domain_warp_enabled ()
        }
        
        set {
            set_domain_warp_enabled (newValue)
        }
        
    }
    
    /// Sets the warp algorithm. See ``FastNoiseLite/DomainWarpType``.
    final public var domainWarpType: FastNoiseLite.DomainWarpType {
        get {
            return get_domain_warp_type ()
        }
        
        set {
            set_domain_warp_type (newValue)
        }
        
    }
    
    /// Sets the maximum warp distance from the origin.
    final public var domainWarpAmplitude: Double {
        get {
            return get_domain_warp_amplitude ()
        }
        
        set {
            set_domain_warp_amplitude (newValue)
        }
        
    }
    
    /// Frequency of the noise which warps the space. Low frequency results in smooth noise while high frequency results in rougher, more granular noise.
    final public var domainWarpFrequency: Double {
        get {
            return get_domain_warp_frequency ()
        }
        
        set {
            set_domain_warp_frequency (newValue)
        }
        
    }
    
    /// The method for combining octaves into a fractal which is used to warp the space. See ``FastNoiseLite/DomainWarpFractalType``.
    final public var domainWarpFractalType: FastNoiseLite.DomainWarpFractalType {
        get {
            return get_domain_warp_fractal_type ()
        }
        
        set {
            set_domain_warp_fractal_type (newValue)
        }
        
    }
    
    /// The number of noise layers that are sampled to get the final value for the fractal noise which warps the space.
    final public var domainWarpFractalOctaves: Int32 {
        get {
            return get_domain_warp_fractal_octaves ()
        }
        
        set {
            set_domain_warp_fractal_octaves (newValue)
        }
        
    }
    
    /// Octave lacunarity of the fractal noise which warps the space. Increasing this value results in higher octaves producing noise with finer details and a rougher appearance.
    final public var domainWarpFractalLacunarity: Double {
        get {
            return get_domain_warp_fractal_lacunarity ()
        }
        
        set {
            set_domain_warp_fractal_lacunarity (newValue)
        }
        
    }
    
    /// Determines the strength of each subsequent layer of the noise which is used to warp the space.
    /// 
    /// A low value places more emphasis on the lower frequency base layers, while a high value puts more emphasis on the higher frequency layers.
    /// 
    final public var domainWarpFractalGain: Double {
        get {
            return get_domain_warp_fractal_gain ()
        }
        
        set {
            set_domain_warp_fractal_gain (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_noise_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_noise_type")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2624461392)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_noise_type(_ type: FastNoiseLite.NoiseType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FastNoiseLite.method_set_noise_type, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_noise_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_noise_type")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1458108610)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_noise_type() -> FastNoiseLite.NoiseType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(FastNoiseLite.method_get_noise_type, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return FastNoiseLite.NoiseType (rawValue: _result)!
    }
    
    fileprivate static let method_set_seed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_seed")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_seed(_ seed: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: seed) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FastNoiseLite.method_set_seed, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_seed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_seed")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_seed() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(FastNoiseLite.method_get_seed, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_frequency: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_frequency")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_frequency(_ freq: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: freq) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FastNoiseLite.method_set_frequency, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_frequency: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_frequency")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_frequency() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(FastNoiseLite.method_get_frequency, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_offset")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_offset(_ offset: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FastNoiseLite.method_set_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_offset")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_offset() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(FastNoiseLite.method_get_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_fractal_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_fractal_type")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4132731174)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fractal_type(_ type: FastNoiseLite.FractalType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FastNoiseLite.method_set_fractal_type, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_fractal_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_fractal_type")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1036889279)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fractal_type() -> FastNoiseLite.FractalType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(FastNoiseLite.method_get_fractal_type, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return FastNoiseLite.FractalType (rawValue: _result)!
    }
    
    fileprivate static let method_set_fractal_octaves: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_fractal_octaves")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fractal_octaves(_ octaveCount: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: octaveCount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FastNoiseLite.method_set_fractal_octaves, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_fractal_octaves: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_fractal_octaves")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fractal_octaves() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(FastNoiseLite.method_get_fractal_octaves, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_fractal_lacunarity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_fractal_lacunarity")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fractal_lacunarity(_ lacunarity: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: lacunarity) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FastNoiseLite.method_set_fractal_lacunarity, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_fractal_lacunarity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_fractal_lacunarity")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fractal_lacunarity() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(FastNoiseLite.method_get_fractal_lacunarity, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_fractal_gain: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_fractal_gain")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fractal_gain(_ gain: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: gain) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FastNoiseLite.method_set_fractal_gain, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_fractal_gain: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_fractal_gain")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fractal_gain() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(FastNoiseLite.method_get_fractal_gain, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_fractal_weighted_strength: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_fractal_weighted_strength")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fractal_weighted_strength(_ weightedStrength: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: weightedStrength) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FastNoiseLite.method_set_fractal_weighted_strength, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_fractal_weighted_strength: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_fractal_weighted_strength")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fractal_weighted_strength() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(FastNoiseLite.method_get_fractal_weighted_strength, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_fractal_ping_pong_strength: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_fractal_ping_pong_strength")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fractal_ping_pong_strength(_ pingPongStrength: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pingPongStrength) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FastNoiseLite.method_set_fractal_ping_pong_strength, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_fractal_ping_pong_strength: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_fractal_ping_pong_strength")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fractal_ping_pong_strength() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(FastNoiseLite.method_get_fractal_ping_pong_strength, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_cellular_distance_function: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_cellular_distance_function")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1006013267)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_cellular_distance_function(_ `func`: FastNoiseLite.CellularDistanceFunction) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: `func`.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FastNoiseLite.method_set_cellular_distance_function, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_cellular_distance_function: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_cellular_distance_function")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2021274088)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_cellular_distance_function() -> FastNoiseLite.CellularDistanceFunction {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(FastNoiseLite.method_get_cellular_distance_function, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return FastNoiseLite.CellularDistanceFunction (rawValue: _result)!
    }
    
    fileprivate static let method_set_cellular_jitter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_cellular_jitter")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_cellular_jitter(_ jitter: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: jitter) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FastNoiseLite.method_set_cellular_jitter, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_cellular_jitter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_cellular_jitter")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_cellular_jitter() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(FastNoiseLite.method_get_cellular_jitter, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_cellular_return_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_cellular_return_type")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2654169698)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_cellular_return_type(_ ret: FastNoiseLite.CellularReturnType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: ret.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FastNoiseLite.method_set_cellular_return_type, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_cellular_return_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_cellular_return_type")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3699796343)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_cellular_return_type() -> FastNoiseLite.CellularReturnType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(FastNoiseLite.method_get_cellular_return_type, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return FastNoiseLite.CellularReturnType (rawValue: _result)!
    }
    
    fileprivate static let method_set_domain_warp_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_domain_warp_enabled")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_domain_warp_enabled(_ domainWarpEnabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: domainWarpEnabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FastNoiseLite.method_set_domain_warp_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_domain_warp_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_domain_warp_enabled")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_domain_warp_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(FastNoiseLite.method_is_domain_warp_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_domain_warp_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_domain_warp_type")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3629692980)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_domain_warp_type(_ domainWarpType: FastNoiseLite.DomainWarpType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: domainWarpType.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FastNoiseLite.method_set_domain_warp_type, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_domain_warp_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_domain_warp_type")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2980162020)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_domain_warp_type() -> FastNoiseLite.DomainWarpType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(FastNoiseLite.method_get_domain_warp_type, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return FastNoiseLite.DomainWarpType (rawValue: _result)!
    }
    
    fileprivate static let method_set_domain_warp_amplitude: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_domain_warp_amplitude")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_domain_warp_amplitude(_ domainWarpAmplitude: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: domainWarpAmplitude) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FastNoiseLite.method_set_domain_warp_amplitude, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_domain_warp_amplitude: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_domain_warp_amplitude")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_domain_warp_amplitude() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(FastNoiseLite.method_get_domain_warp_amplitude, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_domain_warp_frequency: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_domain_warp_frequency")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_domain_warp_frequency(_ domainWarpFrequency: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: domainWarpFrequency) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FastNoiseLite.method_set_domain_warp_frequency, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_domain_warp_frequency: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_domain_warp_frequency")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_domain_warp_frequency() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(FastNoiseLite.method_get_domain_warp_frequency, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_domain_warp_fractal_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_domain_warp_fractal_type")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3999408287)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_domain_warp_fractal_type(_ domainWarpFractalType: FastNoiseLite.DomainWarpFractalType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: domainWarpFractalType.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FastNoiseLite.method_set_domain_warp_fractal_type, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_domain_warp_fractal_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_domain_warp_fractal_type")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 407716934)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_domain_warp_fractal_type() -> FastNoiseLite.DomainWarpFractalType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(FastNoiseLite.method_get_domain_warp_fractal_type, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return FastNoiseLite.DomainWarpFractalType (rawValue: _result)!
    }
    
    fileprivate static let method_set_domain_warp_fractal_octaves: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_domain_warp_fractal_octaves")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_domain_warp_fractal_octaves(_ domainWarpOctaveCount: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: domainWarpOctaveCount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FastNoiseLite.method_set_domain_warp_fractal_octaves, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_domain_warp_fractal_octaves: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_domain_warp_fractal_octaves")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_domain_warp_fractal_octaves() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(FastNoiseLite.method_get_domain_warp_fractal_octaves, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_domain_warp_fractal_lacunarity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_domain_warp_fractal_lacunarity")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_domain_warp_fractal_lacunarity(_ domainWarpLacunarity: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: domainWarpLacunarity) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FastNoiseLite.method_set_domain_warp_fractal_lacunarity, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_domain_warp_fractal_lacunarity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_domain_warp_fractal_lacunarity")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_domain_warp_fractal_lacunarity() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(FastNoiseLite.method_get_domain_warp_fractal_lacunarity, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_domain_warp_fractal_gain: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_domain_warp_fractal_gain")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_domain_warp_fractal_gain(_ domainWarpGain: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: domainWarpGain) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FastNoiseLite.method_set_domain_warp_fractal_gain, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_domain_warp_fractal_gain: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_domain_warp_fractal_gain")
        return withUnsafePointer(to: &FastNoiseLite.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_domain_warp_fractal_gain() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(FastNoiseLite.method_get_domain_warp_fractal_gain, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

