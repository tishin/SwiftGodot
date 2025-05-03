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


/// A 2D navigation mesh that describes a traversable surface for pathfinding.
/// 
/// A navigation mesh can be created either by baking it with the help of the ``NavigationServer2D``, or by adding vertices and convex polygon indices arrays manually.
/// 
/// To bake a navigation mesh at least one outline needs to be added that defines the outer bounds of the baked area.
/// 
/// Adding vertices and polygon indices manually.
/// 
open class NavigationPolygon: Resource {
    private static var className = StringName("NavigationPolygon")
    override open class var godotClassName: StringName { className }
    public enum SamplePartitionType: Int64, CaseIterable {
        /// Convex partitioning that yields navigation mesh with convex polygons.
        case convexPartition = 0 // SAMPLE_PARTITION_CONVEX_PARTITION
        /// Triangulation partitioning that yields navigation mesh with triangle polygons.
        case triangulate = 1 // SAMPLE_PARTITION_TRIANGULATE
        /// Represents the size of the ``NavigationPolygon/SamplePartitionType`` enum.
        case max = 2 // SAMPLE_PARTITION_MAX
    }
    
    public enum ParsedGeometryType: Int64, CaseIterable {
        /// Parses mesh instances as obstruction geometry. This includes ``Polygon2D``, ``MeshInstance2D``, ``MultiMeshInstance2D``, and ``TileMap`` nodes.
        /// 
        /// Meshes are only parsed when they use a 2D vertices surface format.
        /// 
        case meshInstances = 0 // PARSED_GEOMETRY_MESH_INSTANCES
        /// Parses ``StaticBody2D`` and ``TileMap`` colliders as obstruction geometry. The collider should be in any of the layers specified by ``parsedCollisionMask``.
        case staticColliders = 1 // PARSED_GEOMETRY_STATIC_COLLIDERS
        /// Both ``ParsedGeometryType/meshInstances`` and ``ParsedGeometryType/staticColliders``.
        case both = 2 // PARSED_GEOMETRY_BOTH
        /// Represents the size of the ``NavigationPolygon/ParsedGeometryType`` enum.
        case max = 3 // PARSED_GEOMETRY_MAX
    }
    
    public enum SourceGeometryMode: Int64, CaseIterable {
        /// Scans the child nodes of the root node recursively for geometry.
        case rootNodeChildren = 0 // SOURCE_GEOMETRY_ROOT_NODE_CHILDREN
        /// Scans nodes in a group and their child nodes recursively for geometry. The group is specified by ``sourceGeometryGroupName``.
        case groupsWithChildren = 1 // SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN
        /// Uses nodes in a group for geometry. The group is specified by ``sourceGeometryGroupName``.
        case groupsExplicit = 2 // SOURCE_GEOMETRY_GROUPS_EXPLICIT
        /// Represents the size of the ``NavigationPolygon/SourceGeometryMode`` enum.
        case max = 3 // SOURCE_GEOMETRY_MAX
    }
    
    
    /* Properties */
    
    final public var vertices: PackedVector2Array {
        get {
            return get_vertices ()
        }
        
        set {
            set_vertices (newValue)
        }
        
    }
    
    /// Partitioning algorithm for creating the navigation mesh polys. See ``NavigationPolygon/SamplePartitionType`` for possible values.
    final public var samplePartitionType: NavigationPolygon.SamplePartitionType {
        get {
            return get_sample_partition_type ()
        }
        
        set {
            set_sample_partition_type (newValue)
        }
        
    }
    
    /// Determines which type of nodes will be parsed as geometry. See ``NavigationPolygon/ParsedGeometryType`` for possible values.
    final public var parsedGeometryType: NavigationPolygon.ParsedGeometryType {
        get {
            return get_parsed_geometry_type ()
        }
        
        set {
            set_parsed_geometry_type (newValue)
        }
        
    }
    
    /// The physics layers to scan for static colliders.
    /// 
    /// Only used when ``parsedGeometryType`` is ``ParsedGeometryType/staticColliders`` or ``ParsedGeometryType/both``.
    /// 
    final public var parsedCollisionMask: UInt32 {
        get {
            return get_parsed_collision_mask ()
        }
        
        set {
            set_parsed_collision_mask (newValue)
        }
        
    }
    
    /// The source of the geometry used when baking. See ``NavigationPolygon/SourceGeometryMode`` for possible values.
    final public var sourceGeometryMode: NavigationPolygon.SourceGeometryMode {
        get {
            return get_source_geometry_mode ()
        }
        
        set {
            set_source_geometry_mode (newValue)
        }
        
    }
    
    /// The group name of nodes that should be parsed for baking source geometry.
    /// 
    /// Only used when ``sourceGeometryMode`` is ``SourceGeometryMode/groupsWithChildren`` or ``SourceGeometryMode/groupsExplicit``.
    /// 
    final public var sourceGeometryGroupName: StringName {
        get {
            return get_source_geometry_group_name ()
        }
        
        set {
            set_source_geometry_group_name (newValue)
        }
        
    }
    
    /// The cell size used to rasterize the navigation mesh vertices. Must match with the cell size on the navigation map.
    final public var cellSize: Double {
        get {
            return get_cell_size ()
        }
        
        set {
            set_cell_size (newValue)
        }
        
    }
    
    /// The size of the non-navigable border around the bake bounding area defined by the ``bakingRect`` ``Rect2``.
    /// 
    /// In conjunction with the ``bakingRect`` the border size can be used to bake tile aligned navigation meshes without the tile edges being shrunk by ``agentRadius``.
    /// 
    final public var borderSize: Double {
        get {
            return get_border_size ()
        }
        
        set {
            set_border_size (newValue)
        }
        
    }
    
    /// The distance to erode/shrink the walkable surface when baking the navigation mesh.
    final public var agentRadius: Double {
        get {
            return get_agent_radius ()
        }
        
        set {
            set_agent_radius (newValue)
        }
        
    }
    
    /// If the baking ``Rect2`` has an area the navigation mesh baking will be restricted to its enclosing area.
    final public var bakingRect: Rect2 {
        get {
            return get_baking_rect ()
        }
        
        set {
            set_baking_rect (newValue)
        }
        
    }
    
    /// The position offset applied to the ``bakingRect`` ``Rect2``.
    final public var bakingRectOffset: Vector2 {
        get {
            return get_baking_rect_offset ()
        }
        
        set {
            set_baking_rect_offset (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_vertices: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_vertices")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1509147220)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the vertices that can be then indexed to create polygons with the ``addPolygon(_:)`` method.
    fileprivate final func set_vertices(_ vertices: PackedVector2Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: vertices.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPolygon.method_set_vertices, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_vertices: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_vertices")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2961356807)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns a ``PackedVector2Array`` containing all the vertices being used to create the polygons.
    fileprivate final func get_vertices() -> PackedVector2Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedVector2Array = PackedVector2Array ()
        gi.object_method_bind_ptrcall(NavigationPolygon.method_get_vertices, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_add_polygon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_polygon")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3614634198)!
            }
            
        }
        
    }()
    
    /// Adds a polygon using the indices of the vertices you get when calling ``getVertices()``.
    public final func addPolygon(_ polygon: PackedInt32Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: polygon.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPolygon.method_add_polygon, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_polygon_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_polygon_count")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the count of all polygons.
    public final func getPolygonCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(NavigationPolygon.method_get_polygon_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_polygon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_polygon")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3668444399)!
            }
            
        }
        
    }()
    
    /// Returns a ``PackedInt32Array`` containing the indices of the vertices of a created polygon.
    public final func getPolygon(idx: Int32) -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt32Array = PackedInt32Array ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPolygon.method_get_polygon, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_clear_polygons: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_polygons")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears the array of polygons, but it doesn't clear the array of outlines and vertices.
    public final func clearPolygons() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(NavigationPolygon.method_clear_polygons, handle, nil, nil)
        
    }
    
    fileprivate static let method_get_navigation_mesh: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_navigation_mesh")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 330232164)!
            }
            
        }
        
    }()
    
    /// Returns the ``NavigationMesh`` resulting from this navigation polygon. This navigation mesh can be used to update the navigation mesh of a region with the ``NavigationServer3D/regionSetNavigationMesh(region:navigationMesh:)`` API directly (as 2D uses the 3D server behind the scene).
    public final func getNavigationMesh() -> NavigationMesh? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(NavigationPolygon.method_get_navigation_mesh, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_add_outline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_outline")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1509147220)!
            }
            
        }
        
    }()
    
    /// Appends a ``PackedVector2Array`` that contains the vertices of an outline to the internal array that contains all the outlines.
    public final func addOutline(_ outline: PackedVector2Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: outline.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPolygon.method_add_outline, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_outline_at_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_outline_at_index")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1569738947)!
            }
            
        }
        
    }()
    
    /// Adds a ``PackedVector2Array`` that contains the vertices of an outline to the internal array that contains all the outlines at a fixed position.
    public final func addOutlineAtIndex(outline: PackedVector2Array, index: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: outline.content) { pArg0 in
            withUnsafePointer(to: index) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(NavigationPolygon.method_add_outline_at_index, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_outline_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_outline_count")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of outlines that were created in the editor or by script.
    public final func getOutlineCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(NavigationPolygon.method_get_outline_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_outline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_outline")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1201971903)!
            }
            
        }
        
    }()
    
    /// Changes an outline created in the editor or by script. You have to call ``makePolygonsFromOutlines()`` for the polygons to update.
    public final func setOutline(idx: Int32, outline: PackedVector2Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: outline.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(NavigationPolygon.method_set_outline, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_outline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_outline")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3946907486)!
            }
            
        }
        
    }()
    
    /// Returns a ``PackedVector2Array`` containing the vertices of an outline that was created in the editor or by script.
    public final func getOutline(idx: Int32) -> PackedVector2Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedVector2Array = PackedVector2Array ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPolygon.method_get_outline, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_remove_outline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_outline")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes an outline created in the editor or by script. You have to call ``makePolygonsFromOutlines()`` for the polygons to update.
    public final func removeOutline(idx: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPolygon.method_remove_outline, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_clear_outlines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_outlines")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears the array of the outlines, but it doesn't clear the vertices and the polygons that were created by them.
    public final func clearOutlines() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(NavigationPolygon.method_clear_outlines, handle, nil, nil)
        
    }
    
    fileprivate static let method_make_polygons_from_outlines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("make_polygons_from_outlines")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Creates polygons from the outlines added in the editor or by script.
    public final func makePolygonsFromOutlines() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(NavigationPolygon.method_make_polygons_from_outlines, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_cell_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_cell_size")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_cell_size(_ cellSize: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: cellSize) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPolygon.method_set_cell_size, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_cell_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_cell_size")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_cell_size() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(NavigationPolygon.method_get_cell_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_border_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_border_size")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_border_size(_ borderSize: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: borderSize) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPolygon.method_set_border_size, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_border_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_border_size")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_border_size() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(NavigationPolygon.method_get_border_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_sample_partition_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sample_partition_type")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2441478482)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sample_partition_type(_ samplePartitionType: NavigationPolygon.SamplePartitionType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: samplePartitionType.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPolygon.method_set_sample_partition_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sample_partition_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sample_partition_type")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3887422851)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sample_partition_type() -> NavigationPolygon.SamplePartitionType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(NavigationPolygon.method_get_sample_partition_type, handle, nil, &_result)
        return NavigationPolygon.SamplePartitionType (rawValue: _result)!
    }
    
    fileprivate static let method_set_parsed_geometry_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_parsed_geometry_type")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2507971764)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_parsed_geometry_type(_ geometryType: NavigationPolygon.ParsedGeometryType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: geometryType.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPolygon.method_set_parsed_geometry_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_parsed_geometry_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_parsed_geometry_type")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1073219508)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_parsed_geometry_type() -> NavigationPolygon.ParsedGeometryType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(NavigationPolygon.method_get_parsed_geometry_type, handle, nil, &_result)
        return NavigationPolygon.ParsedGeometryType (rawValue: _result)!
    }
    
    fileprivate static let method_set_parsed_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_parsed_collision_mask")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_parsed_collision_mask(_ mask: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mask) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPolygon.method_set_parsed_collision_mask, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_parsed_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_parsed_collision_mask")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_parsed_collision_mask() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(NavigationPolygon.method_get_parsed_collision_mask, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_parsed_collision_mask_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_parsed_collision_mask_value")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Based on `value`, enables or disables the specified layer in the ``parsedCollisionMask``, given a `layerNumber` between 1 and 32.
    public final func setParsedCollisionMaskValue(layerNumber: Int32, value: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layerNumber) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(NavigationPolygon.method_set_parsed_collision_mask_value, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_parsed_collision_mask_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_parsed_collision_mask_value")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns whether or not the specified layer of the ``parsedCollisionMask`` is enabled, given a `layerNumber` between 1 and 32.
    public final func getParsedCollisionMaskValue(layerNumber: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: layerNumber) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPolygon.method_get_parsed_collision_mask_value, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_source_geometry_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_source_geometry_mode")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4002316705)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_source_geometry_mode(_ geometryMode: NavigationPolygon.SourceGeometryMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: geometryMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPolygon.method_set_source_geometry_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_source_geometry_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_source_geometry_mode")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 459686762)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_source_geometry_mode() -> NavigationPolygon.SourceGeometryMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(NavigationPolygon.method_get_source_geometry_mode, handle, nil, &_result)
        return NavigationPolygon.SourceGeometryMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_source_geometry_group_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_source_geometry_group_name")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_source_geometry_group_name(_ groupName: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: groupName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPolygon.method_set_source_geometry_group_name, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_source_geometry_group_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_source_geometry_group_name")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_source_geometry_group_name() -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(NavigationPolygon.method_get_source_geometry_group_name, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_agent_radius: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_agent_radius")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_agent_radius(_ agentRadius: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: agentRadius) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPolygon.method_set_agent_radius, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_agent_radius: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_agent_radius")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_agent_radius() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(NavigationPolygon.method_get_agent_radius, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_baking_rect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_baking_rect")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2046264180)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_baking_rect(_ rect: Rect2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: rect) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPolygon.method_set_baking_rect, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_baking_rect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_baking_rect")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1639390495)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_baking_rect() -> Rect2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Rect2 = Rect2 ()
        gi.object_method_bind_ptrcall(NavigationPolygon.method_get_baking_rect, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_baking_rect_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_baking_rect_offset")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_baking_rect_offset(_ rectOffset: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: rectOffset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPolygon.method_set_baking_rect_offset, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_baking_rect_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_baking_rect_offset")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_baking_rect_offset() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(NavigationPolygon.method_get_baking_rect_offset, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_clear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear")
        return withUnsafePointer(to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears the internal arrays for vertices and polygon indices.
    public final func clear() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(NavigationPolygon.method_clear, handle, nil, nil)
        
    }
    
}

