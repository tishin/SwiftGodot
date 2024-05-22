// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A 2D navigation mesh that describes a traversable surface for pathfinding.
/// 
/// A navigation mesh can be created either by baking it with the help of the ``NavigationServer2D``, or by adding vertices and convex polygon indices arrays manually.
/// 
/// To bake a navigation mesh at least one outline needs to be added that defines the outer bounds of the baked area.
/// 
/// Adding vertices and polygon indices manually.
/// 
open class NavigationPolygon: Resource {
    override open class var godotClassName: StringName { "NavigationPolygon" }
    public enum ParsedGeometryType: Int64, CaseIterable, CustomDebugStringConvertible {
        /// Parses mesh instances as obstruction geometry. This includes ``Polygon2D``, ``MeshInstance2D``, ``MultiMeshInstance2D``, and ``TileMap`` nodes.
        /// 
        /// Meshes are only parsed when they use a 2D vertices surface format.
        /// 
        case meshInstances = 0 // PARSED_GEOMETRY_MESH_INSTANCES
        /// Parses ``StaticBody2D`` and ``TileMap`` colliders as obstruction geometry. The collider should be in any of the layers specified by ``parsedCollisionMask``.
        case staticColliders = 1 // PARSED_GEOMETRY_STATIC_COLLIDERS
        /// Both .parsedGeometryMeshInstances and .parsedGeometryStaticColliders.
        case both = 2 // PARSED_GEOMETRY_BOTH
        /// Represents the size of the ``NavigationPolygon/ParsedGeometryType`` enum.
        case max = 3 // PARSED_GEOMETRY_MAX
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .meshInstances: return ".meshInstances"
                case .staticColliders: return ".staticColliders"
                case .both: return ".both"
                case .max: return ".max"
            }
            
        }
        
    }
    
    public enum SourceGeometryMode: Int64, CaseIterable, CustomDebugStringConvertible {
        /// Scans the child nodes of the root node recursively for geometry.
        case rootNodeChildren = 0 // SOURCE_GEOMETRY_ROOT_NODE_CHILDREN
        /// Scans nodes in a group and their child nodes recursively for geometry. The group is specified by ``sourceGeometryGroupName``.
        case groupsWithChildren = 1 // SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN
        /// Uses nodes in a group for geometry. The group is specified by ``sourceGeometryGroupName``.
        case groupsExplicit = 2 // SOURCE_GEOMETRY_GROUPS_EXPLICIT
        /// Represents the size of the ``NavigationPolygon/SourceGeometryMode`` enum.
        case max = 3 // SOURCE_GEOMETRY_MAX
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .rootNodeChildren: return ".rootNodeChildren"
                case .groupsWithChildren: return ".groupsWithChildren"
                case .groupsExplicit: return ".groupsExplicit"
                case .max: return ".max"
            }
            
        }
        
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
    /// Only used when ``parsedGeometryType`` is .parsedGeometryStaticColliders or .parsedGeometryBoth.
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
    /// Only used when ``sourceGeometryMode`` is .sourceGeometryGroupsWithChildren or .sourceGeometryGroupsExplicit.
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
    
    /// The distance to erode/shrink the walkable surface when baking the navigation mesh.
    final public var agentRadius: Double {
        get {
            return get_agent_radius ()
        }
        
        set {
            set_agent_radius (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_vertices: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_vertices")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1509147220)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the vertices that can be then indexed to create polygons with the ``addPolygon(_:)`` method.
    fileprivate final func set_vertices (_ vertices: PackedVector2Array) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (NavigationPolygon.method_set_vertices, UnsafeMutableRawPointer (mutating: handle), nil, &vertices.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &vertices.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (NavigationPolygon.method_set_vertices, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_vertices: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_vertices")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2961356807)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns a ``PackedVector2Array`` containing all the vertices being used to create the polygons.
    fileprivate final func get_vertices ()-> PackedVector2Array {
        let _result: PackedVector2Array = PackedVector2Array ()
        gi.object_method_bind_ptrcall (NavigationPolygon.method_get_vertices, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_add_polygon: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_polygon")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3614634198)!
            }
            
        }
        
    }()
    
    /// Adds a polygon using the indices of the vertices you get when calling ``getVertices()``.
    public final func addPolygon (_ polygon: PackedInt32Array) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (NavigationPolygon.method_add_polygon, UnsafeMutableRawPointer (mutating: handle), nil, &polygon.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &polygon.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (NavigationPolygon.method_add_polygon, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_polygon_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_polygon_count")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the count of all polygons.
    public final func getPolygonCount ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (NavigationPolygon.method_get_polygon_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_polygon: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_polygon")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3668444399)!
            }
            
        }
        
    }()
    
    /// Returns a ``PackedInt32Array`` containing the indices of the vertices of a created polygon.
    public final func getPolygon (idx: Int32)-> PackedInt32Array {
        let _result: PackedInt32Array = PackedInt32Array ()
        #if true
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (NavigationPolygon.method_get_polygon, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_idx)
        return _result
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (NavigationPolygon.method_get_polygon, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_clear_polygons: GDExtensionMethodBindPtr = {
        let methodName = StringName ("clear_polygons")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears the array of polygons, but it doesn't clear the array of outlines and vertices.
    public final func clearPolygons () {
        gi.object_method_bind_ptrcall (NavigationPolygon.method_clear_polygons, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_get_navigation_mesh: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_navigation_mesh")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 330232164)!
            }
            
        }
        
    }()
    
    /// Returns the ``NavigationMesh`` resulting from this navigation polygon. This navigation mesh can be used to update the navigation mesh of a region with the ``NavigationServer3D/regionSetNavigationMesh(region:navigationMesh:)`` API directly (as 2D uses the 3D server behind the scene).
    public final func getNavigationMesh ()-> NavigationMesh? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (NavigationPolygon.method_get_navigation_mesh, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_add_outline: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_outline")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1509147220)!
            }
            
        }
        
    }()
    
    /// Appends a ``PackedVector2Array`` that contains the vertices of an outline to the internal array that contains all the outlines.
    public final func addOutline (_ outline: PackedVector2Array) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (NavigationPolygon.method_add_outline, UnsafeMutableRawPointer (mutating: handle), nil, &outline.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &outline.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (NavigationPolygon.method_add_outline, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_add_outline_at_index: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_outline_at_index")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1569738947)!
            }
            
        }
        
    }()
    
    /// Adds a ``PackedVector2Array`` that contains the vertices of an outline to the internal array that contains all the outlines at a fixed position.
    public final func addOutlineAtIndex (outline: PackedVector2Array, index: Int32) {
        #if true
        
        var copy_index: Int = Int (index)
        
        gi.object_method_bind_ptrcall_v (NavigationPolygon.method_add_outline_at_index, UnsafeMutableRawPointer (mutating: handle), nil, &outline.content, &copy_index)
        
        #else
        
        var copy_index: Int = Int (index)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &outline.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_index) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (NavigationPolygon.method_add_outline_at_index, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_outline_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_outline_count")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of outlines that were created in the editor or by script.
    public final func getOutlineCount ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (NavigationPolygon.method_get_outline_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_outline: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_outline")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1201971903)!
            }
            
        }
        
    }()
    
    /// Changes an outline created in the editor or by script. You have to call ``makePolygonsFromOutlines()`` for the polygons to update.
    public final func setOutline (idx: Int32, outline: PackedVector2Array) {
        #if true
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (NavigationPolygon.method_set_outline, UnsafeMutableRawPointer (mutating: handle), nil, &copy_idx, &outline.content)
        
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &outline.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (NavigationPolygon.method_set_outline, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_outline: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_outline")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3946907486)!
            }
            
        }
        
    }()
    
    /// Returns a ``PackedVector2Array`` containing the vertices of an outline that was created in the editor or by script.
    public final func getOutline (idx: Int32)-> PackedVector2Array {
        let _result: PackedVector2Array = PackedVector2Array ()
        #if true
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (NavigationPolygon.method_get_outline, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_idx)
        return _result
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (NavigationPolygon.method_get_outline, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_remove_outline: GDExtensionMethodBindPtr = {
        let methodName = StringName ("remove_outline")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes an outline created in the editor or by script. You have to call ``makePolygonsFromOutlines()`` for the polygons to update.
    public final func removeOutline (idx: Int32) {
        #if true
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (NavigationPolygon.method_remove_outline, UnsafeMutableRawPointer (mutating: handle), nil, &copy_idx)
        
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (NavigationPolygon.method_remove_outline, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_clear_outlines: GDExtensionMethodBindPtr = {
        let methodName = StringName ("clear_outlines")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears the array of the outlines, but it doesn't clear the vertices and the polygons that were created by them.
    public final func clearOutlines () {
        gi.object_method_bind_ptrcall (NavigationPolygon.method_clear_outlines, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_make_polygons_from_outlines: GDExtensionMethodBindPtr = {
        let methodName = StringName ("make_polygons_from_outlines")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Creates polygons from the outlines added in the editor or by script.
    /// 
    /// _Deprecated._ This function is deprecated, and might be removed in a future release. Use ``NavigationServer2D/parseSourceGeometryData(navigationPolygon:sourceGeometryData:rootNode:callback:)`` and ``NavigationServer2D/bakeFromSourceGeometryData(navigationPolygon:sourceGeometryData:callback:)`` instead.
    /// 
    public final func makePolygonsFromOutlines () {
        gi.object_method_bind_ptrcall (NavigationPolygon.method_make_polygons_from_outlines, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_set_cell_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_cell_size")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_cell_size (_ cellSize: Double) {
        #if true
        
        var copy_cell_size = cellSize
        
        gi.object_method_bind_ptrcall_v (NavigationPolygon.method_set_cell_size, UnsafeMutableRawPointer (mutating: handle), nil, &copy_cell_size)
        
        #else
        
        var copy_cell_size = cellSize
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_cell_size) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (NavigationPolygon.method_set_cell_size, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_cell_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_cell_size")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_cell_size ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (NavigationPolygon.method_get_cell_size, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_parsed_geometry_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_parsed_geometry_type")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2507971764)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_parsed_geometry_type (_ geometryType: NavigationPolygon.ParsedGeometryType) {
        #if true
        
        var copy_geometry_type = Int64 (geometryType.rawValue)
        
        gi.object_method_bind_ptrcall_v (NavigationPolygon.method_set_parsed_geometry_type, UnsafeMutableRawPointer (mutating: handle), nil, &copy_geometry_type)
        
        #else
        
        var copy_geometry_type = Int64 (geometryType.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_geometry_type) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (NavigationPolygon.method_set_parsed_geometry_type, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_parsed_geometry_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_parsed_geometry_type")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1073219508)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_parsed_geometry_type ()-> NavigationPolygon.ParsedGeometryType {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (NavigationPolygon.method_get_parsed_geometry_type, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return NavigationPolygon.ParsedGeometryType (rawValue: _result)!
    }
    
    fileprivate static var method_set_parsed_collision_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_parsed_collision_mask")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_parsed_collision_mask (_ mask: UInt32) {
        #if true
        
        var copy_mask: Int = Int (mask)
        
        gi.object_method_bind_ptrcall_v (NavigationPolygon.method_set_parsed_collision_mask, UnsafeMutableRawPointer (mutating: handle), nil, &copy_mask)
        
        #else
        
        var copy_mask: Int = Int (mask)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_mask) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (NavigationPolygon.method_set_parsed_collision_mask, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_parsed_collision_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_parsed_collision_mask")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_parsed_collision_mask ()-> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall (NavigationPolygon.method_get_parsed_collision_mask, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_parsed_collision_mask_value: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_parsed_collision_mask_value")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Based on `value`, enables or disables the specified layer in the ``parsedCollisionMask``, given a `layerNumber` between 1 and 32.
    public final func setParsedCollisionMaskValue (layerNumber: Int32, value: Bool) {
        #if true
        
        var copy_layer_number: Int = Int (layerNumber)
        var copy_value = value
        
        gi.object_method_bind_ptrcall_v (NavigationPolygon.method_set_parsed_collision_mask_value, UnsafeMutableRawPointer (mutating: handle), nil, &copy_layer_number, &copy_value)
        
        #else
        
        var copy_layer_number: Int = Int (layerNumber)
        var copy_value = value
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_layer_number) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_value) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (NavigationPolygon.method_set_parsed_collision_mask_value, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_parsed_collision_mask_value: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_parsed_collision_mask_value")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns whether or not the specified layer of the ``parsedCollisionMask`` is enabled, given a `layerNumber` between 1 and 32.
    public final func getParsedCollisionMaskValue (layerNumber: Int32)-> Bool {
        var _result: Bool = false
        #if true
        
        var copy_layer_number: Int = Int (layerNumber)
        
        gi.object_method_bind_ptrcall_v (NavigationPolygon.method_get_parsed_collision_mask_value, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_layer_number)
        return _result
        #else
        
        var copy_layer_number: Int = Int (layerNumber)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_layer_number) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (NavigationPolygon.method_get_parsed_collision_mask_value, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_source_geometry_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_source_geometry_mode")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4002316705)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_source_geometry_mode (_ geometryMode: NavigationPolygon.SourceGeometryMode) {
        #if true
        
        var copy_geometry_mode = Int64 (geometryMode.rawValue)
        
        gi.object_method_bind_ptrcall_v (NavigationPolygon.method_set_source_geometry_mode, UnsafeMutableRawPointer (mutating: handle), nil, &copy_geometry_mode)
        
        #else
        
        var copy_geometry_mode = Int64 (geometryMode.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_geometry_mode) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (NavigationPolygon.method_set_source_geometry_mode, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_source_geometry_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_source_geometry_mode")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 459686762)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_source_geometry_mode ()-> NavigationPolygon.SourceGeometryMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (NavigationPolygon.method_get_source_geometry_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return NavigationPolygon.SourceGeometryMode (rawValue: _result)!
    }
    
    fileprivate static var method_set_source_geometry_group_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_source_geometry_group_name")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_source_geometry_group_name (_ groupName: StringName) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (NavigationPolygon.method_set_source_geometry_group_name, UnsafeMutableRawPointer (mutating: handle), nil, &groupName.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &groupName.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (NavigationPolygon.method_set_source_geometry_group_name, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_source_geometry_group_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_source_geometry_group_name")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_source_geometry_group_name ()-> StringName {
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall (NavigationPolygon.method_get_source_geometry_group_name, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_agent_radius: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_agent_radius")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_agent_radius (_ agentRadius: Double) {
        #if true
        
        var copy_agent_radius = agentRadius
        
        gi.object_method_bind_ptrcall_v (NavigationPolygon.method_set_agent_radius, UnsafeMutableRawPointer (mutating: handle), nil, &copy_agent_radius)
        
        #else
        
        var copy_agent_radius = agentRadius
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_agent_radius) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (NavigationPolygon.method_set_agent_radius, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_agent_radius: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_agent_radius")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_agent_radius ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (NavigationPolygon.method_get_agent_radius, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_clear: GDExtensionMethodBindPtr = {
        let methodName = StringName ("clear")
        return withUnsafePointer (to: &NavigationPolygon.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears the internal arrays for vertices and polygon indices.
    public final func clear () {
        gi.object_method_bind_ptrcall (NavigationPolygon.method_clear, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
}

