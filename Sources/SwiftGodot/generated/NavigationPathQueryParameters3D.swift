// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Provides parameters for 3D navigation path queries.
/// 
/// By changing various properties of this object, such as the start and target position, you can configure path queries to the ``NavigationServer3D``.
open class NavigationPathQueryParameters3D: RefCounted {
    override open class var godotClassName: StringName { "NavigationPathQueryParameters3D" }
    public enum PathfindingAlgorithm: Int64, CustomDebugStringConvertible {
        /// The path query uses the default A* pathfinding algorithm.
        case pathfindingAlgorithmAstar = 0 // PATHFINDING_ALGORITHM_ASTAR
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .pathfindingAlgorithmAstar: return ".pathfindingAlgorithmAstar"
            }
            
        }
        
    }
    
    public enum PathPostProcessing: Int64, CustomDebugStringConvertible {
        /// Applies a funnel algorithm to the raw path corridor found by the pathfinding algorithm. This will result in the shortest path possible inside the path corridor. This postprocessing very much depends on the navigation mesh polygon layout and the created corridor. Especially tile- or gridbased layouts can face artificial corners with diagonal movement due to a jagged path corridor imposed by the cell shapes.
        case corridorfunnel = 0 // PATH_POSTPROCESSING_CORRIDORFUNNEL
        /// Centers every path position in the middle of the traveled navigation mesh polygon edge. This creates better paths for tile- or gridbased layouts that restrict the movement to the cells center.
        case edgecentered = 1 // PATH_POSTPROCESSING_EDGECENTERED
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .corridorfunnel: return ".corridorfunnel"
                case .edgecentered: return ".edgecentered"
            }
            
        }
        
    }
    
    public struct PathMetadataFlags: OptionSet, CustomDebugStringConvertible {
        public let rawValue: Int
        public init (rawValue: Int) {
            self.rawValue = rawValue
        }
        
        /// Include the type of navigation primitive (region or link) that each point of the path goes through.
        public static let types = PathMetadataFlags (rawValue: 1)
        /// Include the ``RID``s of the regions and links that each point of the path goes through.
        public static let rids = PathMetadataFlags (rawValue: 2)
        /// Include the `ObjectID`s of the ``Object``s which manage the regions and links each point of the path goes through.
        public static let owners = PathMetadataFlags (rawValue: 4)
        /// Include all available metadata about the returned path.
        public static let all = PathMetadataFlags (rawValue: 7)
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            var result = ""
            if self.contains (.types) { result += "types, " }
            if self.contains (.rids) { result += "rids, " }
            if self.contains (.owners) { result += "owners, " }
            if self.contains (.all) { result += "all, " }
            if result.hasSuffix (", ") { result.removeLast (2) }
            return result
        }
        
    }
    
    
    /* Properties */
    
    /// The navigation map ``RID`` used in the path query.
    final public var map: RID {
        get {
            return get_map ()
        }
        
        set {
            set_map (newValue)
        }
        
    }
    
    /// The pathfinding start position in global coordinates.
    final public var startPosition: Vector3 {
        get {
            return get_start_position ()
        }
        
        set {
            set_start_position (newValue)
        }
        
    }
    
    /// The pathfinding target position in global coordinates.
    final public var targetPosition: Vector3 {
        get {
            return get_target_position ()
        }
        
        set {
            set_target_position (newValue)
        }
        
    }
    
    /// The navigation layers the query will use (as a bitmask).
    final public var navigationLayers: UInt32 {
        get {
            return get_navigation_layers ()
        }
        
        set {
            set_navigation_layers (newValue)
        }
        
    }
    
    /// The pathfinding algorithm used in the path query.
    final public var pathfindingAlgorithm: NavigationPathQueryParameters3D.PathfindingAlgorithm {
        get {
            return get_pathfinding_algorithm ()
        }
        
        set {
            set_pathfinding_algorithm (newValue)
        }
        
    }
    
    /// The path postprocessing applied to the raw path corridor found by the ``pathfindingAlgorithm``.
    final public var pathPostprocessing: NavigationPathQueryParameters3D.PathPostProcessing {
        get {
            return get_path_postprocessing ()
        }
        
        set {
            set_path_postprocessing (newValue)
        }
        
    }
    
    /// Additional information to include with the navigation path.
    final public var metadataFlags: NavigationPathQueryParameters3D.PathMetadataFlags {
        get {
            return get_metadata_flags ()
        }
        
        set {
            set_metadata_flags (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_pathfinding_algorithm: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_pathfinding_algorithm")
        return withUnsafePointer (to: &NavigationPathQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 394560454)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pathfinding_algorithm (_ pathfindingAlgorithm: NavigationPathQueryParameters3D.PathfindingAlgorithm) {
        #if true
        
        var copy_pathfinding_algorithm = Int64 (pathfindingAlgorithm.rawValue)
        
        gi.object_method_bind_ptrcall_v (NavigationPathQueryParameters3D.method_set_pathfinding_algorithm, UnsafeMutableRawPointer (mutating: handle), nil, &copy_pathfinding_algorithm)
        
        #else
        
        var copy_pathfinding_algorithm = Int64 (pathfindingAlgorithm.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_pathfinding_algorithm) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (NavigationPathQueryParameters3D.method_set_pathfinding_algorithm, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_pathfinding_algorithm: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_pathfinding_algorithm")
        return withUnsafePointer (to: &NavigationPathQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3398491350)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pathfinding_algorithm ()-> NavigationPathQueryParameters3D.PathfindingAlgorithm {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (NavigationPathQueryParameters3D.method_get_pathfinding_algorithm, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return NavigationPathQueryParameters3D.PathfindingAlgorithm (rawValue: _result)!
    }
    
    fileprivate static var method_set_path_postprocessing: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_path_postprocessing")
        return withUnsafePointer (to: &NavigationPathQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2267362344)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_path_postprocessing (_ pathPostprocessing: NavigationPathQueryParameters3D.PathPostProcessing) {
        #if true
        
        var copy_path_postprocessing = Int64 (pathPostprocessing.rawValue)
        
        gi.object_method_bind_ptrcall_v (NavigationPathQueryParameters3D.method_set_path_postprocessing, UnsafeMutableRawPointer (mutating: handle), nil, &copy_path_postprocessing)
        
        #else
        
        var copy_path_postprocessing = Int64 (pathPostprocessing.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_path_postprocessing) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (NavigationPathQueryParameters3D.method_set_path_postprocessing, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_path_postprocessing: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_path_postprocessing")
        return withUnsafePointer (to: &NavigationPathQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3883858360)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_path_postprocessing ()-> NavigationPathQueryParameters3D.PathPostProcessing {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (NavigationPathQueryParameters3D.method_get_path_postprocessing, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return NavigationPathQueryParameters3D.PathPostProcessing (rawValue: _result)!
    }
    
    fileprivate static var method_set_map: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_map")
        return withUnsafePointer (to: &NavigationPathQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_map (_ map: RID) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (NavigationPathQueryParameters3D.method_set_map, UnsafeMutableRawPointer (mutating: handle), nil, &map.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &map.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (NavigationPathQueryParameters3D.method_set_map, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_map: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_map")
        return withUnsafePointer (to: &NavigationPathQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_map ()-> RID {
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall (NavigationPathQueryParameters3D.method_get_map, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_start_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_start_position")
        return withUnsafePointer (to: &NavigationPathQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_start_position (_ startPosition: Vector3) {
        #if true
        
        var copy_start_position = startPosition
        
        gi.object_method_bind_ptrcall_v (NavigationPathQueryParameters3D.method_set_start_position, UnsafeMutableRawPointer (mutating: handle), nil, &copy_start_position)
        
        #else
        
        var copy_start_position = startPosition
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_start_position) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (NavigationPathQueryParameters3D.method_set_start_position, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_start_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_start_position")
        return withUnsafePointer (to: &NavigationPathQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_start_position ()-> Vector3 {
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall (NavigationPathQueryParameters3D.method_get_start_position, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_target_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_target_position")
        return withUnsafePointer (to: &NavigationPathQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_target_position (_ targetPosition: Vector3) {
        #if true
        
        var copy_target_position = targetPosition
        
        gi.object_method_bind_ptrcall_v (NavigationPathQueryParameters3D.method_set_target_position, UnsafeMutableRawPointer (mutating: handle), nil, &copy_target_position)
        
        #else
        
        var copy_target_position = targetPosition
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_target_position) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (NavigationPathQueryParameters3D.method_set_target_position, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_target_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_target_position")
        return withUnsafePointer (to: &NavigationPathQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_target_position ()-> Vector3 {
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall (NavigationPathQueryParameters3D.method_get_target_position, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_navigation_layers: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_navigation_layers")
        return withUnsafePointer (to: &NavigationPathQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_navigation_layers (_ navigationLayers: UInt32) {
        #if true
        
        var copy_navigation_layers: Int = Int (navigationLayers)
        
        gi.object_method_bind_ptrcall_v (NavigationPathQueryParameters3D.method_set_navigation_layers, UnsafeMutableRawPointer (mutating: handle), nil, &copy_navigation_layers)
        
        #else
        
        var copy_navigation_layers: Int = Int (navigationLayers)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_navigation_layers) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (NavigationPathQueryParameters3D.method_set_navigation_layers, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_navigation_layers: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_navigation_layers")
        return withUnsafePointer (to: &NavigationPathQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_navigation_layers ()-> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall (NavigationPathQueryParameters3D.method_get_navigation_layers, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_metadata_flags: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_metadata_flags")
        return withUnsafePointer (to: &NavigationPathQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2713846708)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_metadata_flags (_ flags: NavigationPathQueryParameters3D.PathMetadataFlags) {
        #if true
        
        var copy_flags = flags
        
        gi.object_method_bind_ptrcall_v (NavigationPathQueryParameters3D.method_set_metadata_flags, UnsafeMutableRawPointer (mutating: handle), nil, &copy_flags)
        
        #else
        
        var copy_flags = flags
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_flags) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (NavigationPathQueryParameters3D.method_set_metadata_flags, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_metadata_flags: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_metadata_flags")
        return withUnsafePointer (to: &NavigationPathQueryParameters3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1582332802)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_metadata_flags ()-> NavigationPathQueryParameters3D.PathMetadataFlags {
        var _result: NavigationPathQueryParameters3D.PathMetadataFlags = NavigationPathQueryParameters3D.PathMetadataFlags ()
        gi.object_method_bind_ptrcall (NavigationPathQueryParameters3D.method_get_metadata_flags, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

