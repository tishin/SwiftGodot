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


/// Extrudes a 2D polygon shape to create a 3D mesh.
/// 
/// An array of 2D points is extruded to quickly and easily create a variety of 3D meshes. See also ``CSGMesh3D`` for using 3D meshes as CSG nodes.
/// 
/// > Note: CSG nodes are intended to be used for level prototyping. Creating CSG nodes has a significant CPU cost compared to creating a ``MeshInstance3D`` with a ``PrimitiveMesh``. Moving a CSG node within another CSG node also has a significant CPU cost, so it should be avoided during gameplay.
/// 
open class CSGPolygon3D: CSGPrimitive3D {
    private static var className = StringName("CSGPolygon3D")
    override open class var godotClassName: StringName { className }
    public enum Mode: Int64, CaseIterable {
        /// The ``polygon`` shape is extruded along the negative Z axis.
        case depth = 0 // MODE_DEPTH
        /// The ``polygon`` shape is extruded by rotating it around the Y axis.
        case spin = 1 // MODE_SPIN
        /// The ``polygon`` shape is extruded along the ``Path3D`` specified in ``pathNode``.
        case path = 2 // MODE_PATH
    }
    
    public enum PathRotation: Int64, CaseIterable {
        /// The ``polygon`` shape is not rotated.
        /// 
        /// > Note: Requires the path Z coordinates to continually decrease to ensure viable shapes.
        /// 
        case polygon = 0 // PATH_ROTATION_POLYGON
        /// The ``polygon`` shape is rotated along the path, but it is not rotated around the path axis.
        /// 
        /// > Note: Requires the path Z coordinates to continually decrease to ensure viable shapes.
        /// 
        case path = 1 // PATH_ROTATION_PATH
        /// The ``polygon`` shape follows the path and its rotations around the path axis.
        case pathFollow = 2 // PATH_ROTATION_PATH_FOLLOW
    }
    
    public enum PathIntervalType: Int64, CaseIterable {
        /// When ``mode`` is set to ``Mode/path``, ``pathInterval`` will determine the distance, in meters, each interval of the path will extrude.
        case distance = 0 // PATH_INTERVAL_DISTANCE
        /// When ``mode`` is set to ``Mode/path``, ``pathInterval`` will subdivide the polygons along the path.
        case subdivide = 1 // PATH_INTERVAL_SUBDIVIDE
    }
    
    
    /* Properties */
    
    /// The point array that defines the 2D polygon that is extruded. This can be a convex or concave polygon with 3 or more points. The polygon must _not_ have any intersecting edges. Otherwise, triangulation will fail and no mesh will be generated.
    /// 
    /// > Note: If only 1 or 2 points are defined in ``polygon``, no mesh will be generated.
    /// 
    final public var polygon: PackedVector2Array {
        get {
            return get_polygon ()
        }
        
        set {
            set_polygon (newValue)
        }
        
    }
    
    /// The ``mode`` used to extrude the ``polygon``.
    final public var mode: CSGPolygon3D.Mode {
        get {
            return get_mode ()
        }
        
        set {
            set_mode (newValue)
        }
        
    }
    
    /// When ``mode`` is ``Mode/depth``, the depth of the extrusion.
    final public var depth: Double {
        get {
            return get_depth ()
        }
        
        set {
            set_depth (newValue)
        }
        
    }
    
    /// When ``mode`` is ``Mode/spin``, the total number of degrees the ``polygon`` is rotated when extruding.
    final public var spinDegrees: Double {
        get {
            return get_spin_degrees ()
        }
        
        set {
            set_spin_degrees (newValue)
        }
        
    }
    
    /// When ``mode`` is ``Mode/spin``, the number of extrusions made.
    final public var spinSides: Int32 {
        get {
            return get_spin_sides ()
        }
        
        set {
            set_spin_sides (newValue)
        }
        
    }
    
    /// When ``mode`` is ``Mode/path``, the location of the ``Path3D`` object used to extrude the ``polygon``.
    final public var pathNode: NodePath {
        get {
            return get_path_node ()
        }
        
        set {
            set_path_node (newValue)
        }
        
    }
    
    /// When ``mode`` is ``Mode/path``, this will determine if the interval should be by distance (``PathIntervalType/distance``) or subdivision fractions (``PathIntervalType/subdivide``).
    final public var pathIntervalType: CSGPolygon3D.PathIntervalType {
        get {
            return get_path_interval_type ()
        }
        
        set {
            set_path_interval_type (newValue)
        }
        
    }
    
    /// When ``mode`` is ``Mode/path``, the path interval or ratio of path points to extrusions.
    final public var pathInterval: Double {
        get {
            return get_path_interval ()
        }
        
        set {
            set_path_interval (newValue)
        }
        
    }
    
    /// When ``mode`` is ``Mode/path``, extrusions that are less than this angle, will be merged together to reduce polygon count.
    final public var pathSimplifyAngle: Double {
        get {
            return get_path_simplify_angle ()
        }
        
        set {
            set_path_simplify_angle (newValue)
        }
        
    }
    
    /// When ``mode`` is ``Mode/path``, the path rotation method used to rotate the ``polygon`` as it is extruded.
    final public var pathRotation: CSGPolygon3D.PathRotation {
        get {
            return get_path_rotation ()
        }
        
        set {
            set_path_rotation (newValue)
        }
        
    }
    
    /// When ``mode`` is ``Mode/path``, if `true` the polygon will be rotated according to the proper tangent of the path at the sampled points. If `false` an approximation is used, which decreases in accuracy as the number of subdivisions decreases.
    final public var pathRotationAccurate: Bool {
        get {
            return get_path_rotation_accurate ()
        }
        
        set {
            set_path_rotation_accurate (newValue)
        }
        
    }
    
    /// When ``mode`` is ``Mode/path``, if `true` the ``Transform3D`` of the ``CSGPolygon3D`` is used as the starting point for the extrusions, not the ``Transform3D`` of the ``pathNode``.
    final public var pathLocal: Bool {
        get {
            return is_path_local ()
        }
        
        set {
            set_path_local (newValue)
        }
        
    }
    
    /// When ``mode`` is ``Mode/path``, by default, the top half of the ``material`` is stretched along the entire length of the extruded shape. If `false` the top half of the material is repeated every step of the extrusion.
    final public var pathContinuousU: Bool {
        get {
            return is_path_continuous_u ()
        }
        
        set {
            set_path_continuous_u (newValue)
        }
        
    }
    
    /// When ``mode`` is ``Mode/path``, this is the distance along the path, in meters, the texture coordinates will tile. When set to 0, texture coordinates will match geometry exactly with no tiling.
    final public var pathUDistance: Double {
        get {
            return get_path_u_distance ()
        }
        
        set {
            set_path_u_distance (newValue)
        }
        
    }
    
    /// When ``mode`` is ``Mode/path``, if `true` the ends of the path are joined, by adding an extrusion between the last and first points of the path.
    final public var pathJoined: Bool {
        get {
            return is_path_joined ()
        }
        
        set {
            set_path_joined (newValue)
        }
        
    }
    
    /// If `true`, applies smooth shading to the extrusions.
    final public var smoothFaces: Bool {
        get {
            return get_smooth_faces ()
        }
        
        set {
            set_smooth_faces (newValue)
        }
        
    }
    
    /// Material to use for the resulting mesh. The UV maps the top half of the material to the extruded shape (U along the length of the extrusions and V around the outline of the ``polygon``), the bottom-left quarter to the front end face, and the bottom-right quarter to the back end face.
    final public var material: Material? {
        get {
            return get_material ()
        }
        
        set {
            set_material (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_polygon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_polygon")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1509147220)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_polygon(_ polygon: PackedVector2Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: polygon.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGPolygon3D.method_set_polygon, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_polygon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_polygon")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2961356807)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_polygon() -> PackedVector2Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedVector2Array = PackedVector2Array ()
        gi.object_method_bind_ptrcall(CSGPolygon3D.method_get_polygon, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_mode")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3158377035)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mode(_ mode: CSGPolygon3D.Mode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGPolygon3D.method_set_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_mode")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1201612222)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mode() -> CSGPolygon3D.Mode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(CSGPolygon3D.method_get_mode, handle, nil, &_result)
        return CSGPolygon3D.Mode (rawValue: _result)!
    }
    
    fileprivate static let method_set_depth: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_depth")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_depth(_ depth: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: depth) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGPolygon3D.method_set_depth, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_depth: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_depth")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_depth() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CSGPolygon3D.method_get_depth, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_spin_degrees: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_spin_degrees")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_spin_degrees(_ degrees: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: degrees) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGPolygon3D.method_set_spin_degrees, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_spin_degrees: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_spin_degrees")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_spin_degrees() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CSGPolygon3D.method_get_spin_degrees, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_spin_sides: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_spin_sides")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_spin_sides(_ spinSides: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: spinSides) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGPolygon3D.method_set_spin_sides, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_spin_sides: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_spin_sides")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_spin_sides() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(CSGPolygon3D.method_get_spin_sides, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_path_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_path_node")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_path_node(_ path: NodePath) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGPolygon3D.method_set_path_node, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_path_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_path_node")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_path_node() -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(CSGPolygon3D.method_get_path_node, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_path_interval_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_path_interval_type")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3744240707)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_path_interval_type(_ intervalType: CSGPolygon3D.PathIntervalType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: intervalType.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGPolygon3D.method_set_path_interval_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_path_interval_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_path_interval_type")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3434618397)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_path_interval_type() -> CSGPolygon3D.PathIntervalType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(CSGPolygon3D.method_get_path_interval_type, handle, nil, &_result)
        return CSGPolygon3D.PathIntervalType (rawValue: _result)!
    }
    
    fileprivate static let method_set_path_interval: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_path_interval")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_path_interval(_ interval: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: interval) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGPolygon3D.method_set_path_interval, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_path_interval: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_path_interval")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_path_interval() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CSGPolygon3D.method_get_path_interval, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_path_simplify_angle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_path_simplify_angle")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_path_simplify_angle(_ degrees: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: degrees) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGPolygon3D.method_set_path_simplify_angle, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_path_simplify_angle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_path_simplify_angle")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_path_simplify_angle() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CSGPolygon3D.method_get_path_simplify_angle, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_path_rotation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_path_rotation")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1412947288)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_path_rotation(_ pathRotation: CSGPolygon3D.PathRotation) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pathRotation.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGPolygon3D.method_set_path_rotation, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_path_rotation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_path_rotation")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 647219346)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_path_rotation() -> CSGPolygon3D.PathRotation {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(CSGPolygon3D.method_get_path_rotation, handle, nil, &_result)
        return CSGPolygon3D.PathRotation (rawValue: _result)!
    }
    
    fileprivate static let method_set_path_rotation_accurate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_path_rotation_accurate")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_path_rotation_accurate(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGPolygon3D.method_set_path_rotation_accurate, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_path_rotation_accurate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_path_rotation_accurate")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_path_rotation_accurate() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CSGPolygon3D.method_get_path_rotation_accurate, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_path_local: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_path_local")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_path_local(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGPolygon3D.method_set_path_local, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_path_local: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_path_local")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_path_local() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CSGPolygon3D.method_is_path_local, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_path_continuous_u: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_path_continuous_u")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_path_continuous_u(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGPolygon3D.method_set_path_continuous_u, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_path_continuous_u: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_path_continuous_u")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_path_continuous_u() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CSGPolygon3D.method_is_path_continuous_u, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_path_u_distance: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_path_u_distance")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_path_u_distance(_ distance: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: distance) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGPolygon3D.method_set_path_u_distance, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_path_u_distance: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_path_u_distance")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_path_u_distance() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CSGPolygon3D.method_get_path_u_distance, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_path_joined: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_path_joined")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_path_joined(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGPolygon3D.method_set_path_joined, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_path_joined: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_path_joined")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_path_joined() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CSGPolygon3D.method_is_path_joined, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_material: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_material")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2757459619)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_material(_ material: Material?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: material?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGPolygon3D.method_set_material, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_material: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_material")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 5934680)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_material() -> Material? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(CSGPolygon3D.method_get_material, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_smooth_faces: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_smooth_faces")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_smooth_faces(_ smoothFaces: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: smoothFaces) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGPolygon3D.method_set_smooth_faces, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_smooth_faces: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_smooth_faces")
        return withUnsafePointer(to: &CSGPolygon3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_smooth_faces() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CSGPolygon3D.method_get_smooth_faces, handle, nil, &_result)
        return _result
    }
    
}

