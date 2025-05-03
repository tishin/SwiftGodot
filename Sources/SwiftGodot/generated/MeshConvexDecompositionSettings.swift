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


/// Parameters to be used with a ``Mesh`` convex decomposition operation.
/// 
/// Parameters to be used with a ``Mesh`` convex decomposition operation.
open class MeshConvexDecompositionSettings: RefCounted {
    private static var className = StringName("MeshConvexDecompositionSettings")
    override open class var godotClassName: StringName { className }
    public enum Mode: Int64, CaseIterable {
        /// Constant for voxel-based approximate convex decomposition.
        case voxel = 0 // CONVEX_DECOMPOSITION_MODE_VOXEL
        /// Constant for tetrahedron-based approximate convex decomposition.
        case tetrahedron = 1 // CONVEX_DECOMPOSITION_MODE_TETRAHEDRON
    }
    
    
    /* Properties */
    
    /// Maximum concavity. Ranges from `0.0` to `1.0`.
    final public var maxConcavity: Double {
        get {
            return get_max_concavity ()
        }
        
        set {
            set_max_concavity (newValue)
        }
        
    }
    
    /// Controls the bias toward clipping along symmetry planes. Ranges from `0.0` to `1.0`.
    final public var symmetryPlanesClippingBias: Double {
        get {
            return get_symmetry_planes_clipping_bias ()
        }
        
        set {
            set_symmetry_planes_clipping_bias (newValue)
        }
        
    }
    
    /// Controls the bias toward clipping along revolution axes. Ranges from `0.0` to `1.0`.
    final public var revolutionAxesClippingBias: Double {
        get {
            return get_revolution_axes_clipping_bias ()
        }
        
        set {
            set_revolution_axes_clipping_bias (newValue)
        }
        
    }
    
    /// Controls the adaptive sampling of the generated convex-hulls. Ranges from `0.0` to `0.01`.
    final public var minVolumePerConvexHull: Double {
        get {
            return get_min_volume_per_convex_hull ()
        }
        
        set {
            set_min_volume_per_convex_hull (newValue)
        }
        
    }
    
    /// Maximum number of voxels generated during the voxelization stage.
    final public var resolution: UInt32 {
        get {
            return get_resolution ()
        }
        
        set {
            set_resolution (newValue)
        }
        
    }
    
    /// Controls the maximum number of triangles per convex-hull. Ranges from `4` to `1024`.
    final public var maxNumVerticesPerConvexHull: UInt32 {
        get {
            return get_max_num_vertices_per_convex_hull ()
        }
        
        set {
            set_max_num_vertices_per_convex_hull (newValue)
        }
        
    }
    
    /// Controls the granularity of the search for the "best" clipping plane. Ranges from `1` to `16`.
    final public var planeDownsampling: UInt32 {
        get {
            return get_plane_downsampling ()
        }
        
        set {
            set_plane_downsampling (newValue)
        }
        
    }
    
    /// Controls the precision of the convex-hull generation process during the clipping plane selection stage. Ranges from `1` to `16`.
    final public var convexHullDownsampling: UInt32 {
        get {
            return get_convex_hull_downsampling ()
        }
        
        set {
            set_convex_hull_downsampling (newValue)
        }
        
    }
    
    /// If `true`, normalizes the mesh before applying the convex decomposition.
    final public var normalizeMesh: Bool {
        get {
            return get_normalize_mesh ()
        }
        
        set {
            set_normalize_mesh (newValue)
        }
        
    }
    
    /// Mode for the approximate convex decomposition.
    final public var mode: MeshConvexDecompositionSettings.Mode {
        get {
            return get_mode ()
        }
        
        set {
            set_mode (newValue)
        }
        
    }
    
    /// If `true`, uses approximation for computing convex hulls.
    final public var convexHullApproximation: Bool {
        get {
            return get_convex_hull_approximation ()
        }
        
        set {
            set_convex_hull_approximation (newValue)
        }
        
    }
    
    /// The maximum number of convex hulls to produce from the merge operation.
    final public var maxConvexHulls: UInt32 {
        get {
            return get_max_convex_hulls ()
        }
        
        set {
            set_max_convex_hulls (newValue)
        }
        
    }
    
    /// If `true`, projects output convex hull vertices onto the original source mesh to increase floating-point accuracy of the results.
    final public var projectHullVertices: Bool {
        get {
            return get_project_hull_vertices ()
        }
        
        set {
            set_project_hull_vertices (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_max_concavity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_max_concavity")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_concavity(_ maxConcavity: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: maxConcavity) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_set_max_concavity, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_max_concavity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_max_concavity")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_concavity() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_get_max_concavity, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_symmetry_planes_clipping_bias: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_symmetry_planes_clipping_bias")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_symmetry_planes_clipping_bias(_ symmetryPlanesClippingBias: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: symmetryPlanesClippingBias) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_set_symmetry_planes_clipping_bias, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_symmetry_planes_clipping_bias: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_symmetry_planes_clipping_bias")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_symmetry_planes_clipping_bias() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_get_symmetry_planes_clipping_bias, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_revolution_axes_clipping_bias: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_revolution_axes_clipping_bias")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_revolution_axes_clipping_bias(_ revolutionAxesClippingBias: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: revolutionAxesClippingBias) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_set_revolution_axes_clipping_bias, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_revolution_axes_clipping_bias: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_revolution_axes_clipping_bias")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_revolution_axes_clipping_bias() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_get_revolution_axes_clipping_bias, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_min_volume_per_convex_hull: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_min_volume_per_convex_hull")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_min_volume_per_convex_hull(_ minVolumePerConvexHull: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: minVolumePerConvexHull) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_set_min_volume_per_convex_hull, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_min_volume_per_convex_hull: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_min_volume_per_convex_hull")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_min_volume_per_convex_hull() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_get_min_volume_per_convex_hull, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_resolution: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_resolution")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_resolution(_ minVolumePerConvexHull: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: minVolumePerConvexHull) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_set_resolution, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_resolution: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_resolution")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_resolution() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_get_resolution, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_max_num_vertices_per_convex_hull: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_max_num_vertices_per_convex_hull")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_num_vertices_per_convex_hull(_ maxNumVerticesPerConvexHull: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: maxNumVerticesPerConvexHull) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_set_max_num_vertices_per_convex_hull, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_max_num_vertices_per_convex_hull: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_max_num_vertices_per_convex_hull")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_num_vertices_per_convex_hull() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_get_max_num_vertices_per_convex_hull, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_plane_downsampling: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_plane_downsampling")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_plane_downsampling(_ planeDownsampling: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: planeDownsampling) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_set_plane_downsampling, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_plane_downsampling: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_plane_downsampling")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_plane_downsampling() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_get_plane_downsampling, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_convex_hull_downsampling: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_convex_hull_downsampling")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_convex_hull_downsampling(_ convexHullDownsampling: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: convexHullDownsampling) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_set_convex_hull_downsampling, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_convex_hull_downsampling: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_convex_hull_downsampling")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_convex_hull_downsampling() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_get_convex_hull_downsampling, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_normalize_mesh: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_normalize_mesh")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_normalize_mesh(_ normalizeMesh: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: normalizeMesh) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_set_normalize_mesh, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_normalize_mesh: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_normalize_mesh")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_normalize_mesh() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_get_normalize_mesh, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_mode")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1668072869)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mode(_ mode: MeshConvexDecompositionSettings.Mode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_set_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_mode")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 23479454)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mode() -> MeshConvexDecompositionSettings.Mode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_get_mode, handle, nil, &_result)
        return MeshConvexDecompositionSettings.Mode (rawValue: _result)!
    }
    
    fileprivate static let method_set_convex_hull_approximation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_convex_hull_approximation")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_convex_hull_approximation(_ convexHullApproximation: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: convexHullApproximation) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_set_convex_hull_approximation, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_convex_hull_approximation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_convex_hull_approximation")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_convex_hull_approximation() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_get_convex_hull_approximation, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_max_convex_hulls: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_max_convex_hulls")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_convex_hulls(_ maxConvexHulls: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: maxConvexHulls) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_set_max_convex_hulls, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_max_convex_hulls: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_max_convex_hulls")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_convex_hulls() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_get_max_convex_hulls, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_project_hull_vertices: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_project_hull_vertices")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_project_hull_vertices(_ projectHullVertices: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: projectHullVertices) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_set_project_hull_vertices, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_project_hull_vertices: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_project_hull_vertices")
        return withUnsafePointer(to: &MeshConvexDecompositionSettings.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_project_hull_vertices() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(MeshConvexDecompositionSettings.method_get_project_hull_vertices, handle, nil, &_result)
        return _result
    }
    
}

