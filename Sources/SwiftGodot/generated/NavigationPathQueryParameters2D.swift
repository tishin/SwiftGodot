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


/// Provides parameters for 2D navigation path queries.
/// 
/// By changing various properties of this object, such as the start and target position, you can configure path queries to the ``NavigationServer2D``.
open class NavigationPathQueryParameters2D: RefCounted {
    private static var className = StringName("NavigationPathQueryParameters2D")
    override open class var godotClassName: StringName { className }
    public enum PathfindingAlgorithm: Int64, CaseIterable {
        /// The path query uses the default A* pathfinding algorithm.
        case pathfindingAlgorithmAstar = 0 // PATHFINDING_ALGORITHM_ASTAR
    }
    
    public enum PathPostProcessing: Int64, CaseIterable {
        /// Applies a funnel algorithm to the raw path corridor found by the pathfinding algorithm. This will result in the shortest path possible inside the path corridor. This postprocessing very much depends on the navigation mesh polygon layout and the created corridor. Especially tile- or gridbased layouts can face artificial corners with diagonal movement due to a jagged path corridor imposed by the cell shapes.
        case corridorfunnel = 0 // PATH_POSTPROCESSING_CORRIDORFUNNEL
        /// Centers every path position in the middle of the traveled navigation mesh polygon edge. This creates better paths for tile- or gridbased layouts that restrict the movement to the cells center.
        case edgecentered = 1 // PATH_POSTPROCESSING_EDGECENTERED
        /// Applies no postprocessing and returns the raw path corridor as found by the pathfinding algorithm.
        case none = 2 // PATH_POSTPROCESSING_NONE
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
    final public var startPosition: Vector2 {
        get {
            return get_start_position ()
        }
        
        set {
            set_start_position (newValue)
        }
        
    }
    
    /// The pathfinding target position in global coordinates.
    final public var targetPosition: Vector2 {
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
    final public var pathfindingAlgorithm: NavigationPathQueryParameters2D.PathfindingAlgorithm {
        get {
            return get_pathfinding_algorithm ()
        }
        
        set {
            set_pathfinding_algorithm (newValue)
        }
        
    }
    
    /// The path postprocessing applied to the raw path corridor found by the ``pathfindingAlgorithm``.
    final public var pathPostprocessing: NavigationPathQueryParameters2D.PathPostProcessing {
        get {
            return get_path_postprocessing ()
        }
        
        set {
            set_path_postprocessing (newValue)
        }
        
    }
    
    /// Additional information to include with the navigation path.
    final public var metadataFlags: NavigationPathQueryParameters2D.PathMetadataFlags {
        get {
            return get_metadata_flags ()
        }
        
        set {
            set_metadata_flags (newValue)
        }
        
    }
    
    /// If `true` a simplified version of the path will be returned with less critical path points removed. The simplification amount is controlled by ``simplifyEpsilon``. The simplification uses a variant of Ramer-Douglas-Peucker algorithm for curve point decimation.
    /// 
    /// Path simplification can be helpful to mitigate various path following issues that can arise with certain agent types and script behaviors. E.g. "steering" agents or avoidance in "open fields".
    /// 
    final public var simplifyPath: Bool {
        get {
            return get_simplify_path ()
        }
        
        set {
            set_simplify_path (newValue)
        }
        
    }
    
    /// The path simplification amount in worlds units.
    final public var simplifyEpsilon: Double {
        get {
            return get_simplify_epsilon ()
        }
        
        set {
            set_simplify_epsilon (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_pathfinding_algorithm: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_pathfinding_algorithm")
        return withUnsafePointer(to: &NavigationPathQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2783519915)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pathfinding_algorithm(_ pathfindingAlgorithm: NavigationPathQueryParameters2D.PathfindingAlgorithm) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pathfindingAlgorithm.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPathQueryParameters2D.method_set_pathfinding_algorithm, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_pathfinding_algorithm: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_pathfinding_algorithm")
        return withUnsafePointer(to: &NavigationPathQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3000421146)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pathfinding_algorithm() -> NavigationPathQueryParameters2D.PathfindingAlgorithm {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(NavigationPathQueryParameters2D.method_get_pathfinding_algorithm, handle, nil, &_result)
        return NavigationPathQueryParameters2D.PathfindingAlgorithm (rawValue: _result)!
    }
    
    fileprivate static let method_set_path_postprocessing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_path_postprocessing")
        return withUnsafePointer(to: &NavigationPathQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2864409082)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_path_postprocessing(_ pathPostprocessing: NavigationPathQueryParameters2D.PathPostProcessing) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pathPostprocessing.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPathQueryParameters2D.method_set_path_postprocessing, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_path_postprocessing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_path_postprocessing")
        return withUnsafePointer(to: &NavigationPathQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3798118993)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_path_postprocessing() -> NavigationPathQueryParameters2D.PathPostProcessing {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(NavigationPathQueryParameters2D.method_get_path_postprocessing, handle, nil, &_result)
        return NavigationPathQueryParameters2D.PathPostProcessing (rawValue: _result)!
    }
    
    fileprivate static let method_set_map: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_map")
        return withUnsafePointer(to: &NavigationPathQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_map(_ map: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: map.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPathQueryParameters2D.method_set_map, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_map: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_map")
        return withUnsafePointer(to: &NavigationPathQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_map() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(NavigationPathQueryParameters2D.method_get_map, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_start_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_start_position")
        return withUnsafePointer(to: &NavigationPathQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_start_position(_ startPosition: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: startPosition) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPathQueryParameters2D.method_set_start_position, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_start_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_start_position")
        return withUnsafePointer(to: &NavigationPathQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_start_position() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(NavigationPathQueryParameters2D.method_get_start_position, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_target_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_target_position")
        return withUnsafePointer(to: &NavigationPathQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_target_position(_ targetPosition: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: targetPosition) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPathQueryParameters2D.method_set_target_position, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_target_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_target_position")
        return withUnsafePointer(to: &NavigationPathQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_target_position() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(NavigationPathQueryParameters2D.method_get_target_position, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_navigation_layers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_navigation_layers")
        return withUnsafePointer(to: &NavigationPathQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_navigation_layers(_ navigationLayers: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: navigationLayers) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPathQueryParameters2D.method_set_navigation_layers, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_navigation_layers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_navigation_layers")
        return withUnsafePointer(to: &NavigationPathQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_navigation_layers() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(NavigationPathQueryParameters2D.method_get_navigation_layers, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_metadata_flags: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_metadata_flags")
        return withUnsafePointer(to: &NavigationPathQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 24274129)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_metadata_flags(_ flags: NavigationPathQueryParameters2D.PathMetadataFlags) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: flags.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPathQueryParameters2D.method_set_metadata_flags, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_metadata_flags: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_metadata_flags")
        return withUnsafePointer(to: &NavigationPathQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 488152976)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_metadata_flags() -> NavigationPathQueryParameters2D.PathMetadataFlags {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: NavigationPathQueryParameters2D.PathMetadataFlags = NavigationPathQueryParameters2D.PathMetadataFlags ()
        gi.object_method_bind_ptrcall(NavigationPathQueryParameters2D.method_get_metadata_flags, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_simplify_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_simplify_path")
        return withUnsafePointer(to: &NavigationPathQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_simplify_path(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPathQueryParameters2D.method_set_simplify_path, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_simplify_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_simplify_path")
        return withUnsafePointer(to: &NavigationPathQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_simplify_path() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(NavigationPathQueryParameters2D.method_get_simplify_path, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_simplify_epsilon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_simplify_epsilon")
        return withUnsafePointer(to: &NavigationPathQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_simplify_epsilon(_ epsilon: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: epsilon) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPathQueryParameters2D.method_set_simplify_epsilon, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_simplify_epsilon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_simplify_epsilon")
        return withUnsafePointer(to: &NavigationPathQueryParameters2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_simplify_epsilon() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(NavigationPathQueryParameters2D.method_get_simplify_epsilon, handle, nil, &_result)
        return _result
    }
    
}

