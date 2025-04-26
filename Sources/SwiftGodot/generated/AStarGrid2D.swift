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


/// An implementation of A* for finding the shortest path between two points on a partial 2D grid.
/// 
/// ``AStarGrid2D`` is a variant of ``AStar2D`` that is specialized for partial 2D grids. It is simpler to use because it doesn't require you to manually create points and connect them together. This class also supports multiple types of heuristics, modes for diagonal movement, and a jumping mode to speed up calculations.
/// 
/// To use ``AStarGrid2D``, you only need to set the ``region`` of the grid, optionally set the ``cellSize``, and then call the ``update()`` method:
/// 
/// To remove a point from the pathfinding grid, it must be set as "solid" with ``setPointSolid(_:solid:)``.
/// 
open class AStarGrid2D: RefCounted {
    private static var className = StringName("AStarGrid2D")
    override open class var godotClassName: StringName { className }
    public enum Heuristic: Int64, CaseIterable {
        /// The <a href="https://en.wikipedia.org/wiki/Euclidean_distance">Euclidean heuristic</a> to be used for the pathfinding using the following formula:
        /// 
        /// > Note: This is also the internal heuristic used in ``AStar3D`` and ``AStar2D`` by default (with the inclusion of possible z-axis coordinate).
        /// 
        case euclidean = 0 // HEURISTIC_EUCLIDEAN
        /// The <a href="https://en.wikipedia.org/wiki/Taxicab_geometry">Manhattan heuristic</a> to be used for the pathfinding using the following formula:
        /// 
        /// > Note: This heuristic is intended to be used with 4-side orthogonal movements, provided by setting the ``diagonalMode`` to ``DiagonalMode/never``.
        /// 
        case manhattan = 1 // HEURISTIC_MANHATTAN
        /// The Octile heuristic to be used for the pathfinding using the following formula:
        /// 
        case octile = 2 // HEURISTIC_OCTILE
        /// The <a href="https://en.wikipedia.org/wiki/Chebyshev_distance">Chebyshev heuristic</a> to be used for the pathfinding using the following formula:
        /// 
        case chebyshev = 3 // HEURISTIC_CHEBYSHEV
        /// Represents the size of the ``AStarGrid2D/Heuristic`` enum.
        case max = 4 // HEURISTIC_MAX
    }
    
    public enum DiagonalMode: Int64, CaseIterable {
        /// The pathfinding algorithm will ignore solid neighbors around the target cell and allow passing using diagonals.
        case always = 0 // DIAGONAL_MODE_ALWAYS
        /// The pathfinding algorithm will ignore all diagonals and the way will be always orthogonal.
        case never = 1 // DIAGONAL_MODE_NEVER
        /// The pathfinding algorithm will avoid using diagonals if at least two obstacles have been placed around the neighboring cells of the specific path segment.
        case atLeastOneWalkable = 2 // DIAGONAL_MODE_AT_LEAST_ONE_WALKABLE
        /// The pathfinding algorithm will avoid using diagonals if any obstacle has been placed around the neighboring cells of the specific path segment.
        case onlyIfNoObstacles = 3 // DIAGONAL_MODE_ONLY_IF_NO_OBSTACLES
        /// Represents the size of the ``AStarGrid2D/DiagonalMode`` enum.
        case max = 4 // DIAGONAL_MODE_MAX
    }
    
    public enum CellShape: Int64, CaseIterable {
        /// Rectangular cell shape.
        case square = 0 // CELL_SHAPE_SQUARE
        /// Diamond cell shape (for isometric look). Cell coordinates layout where the horizontal axis goes up-right, and the vertical one goes down-right.
        case isometricRight = 1 // CELL_SHAPE_ISOMETRIC_RIGHT
        /// Diamond cell shape (for isometric look). Cell coordinates layout where the horizontal axis goes down-right, and the vertical one goes down-left.
        case isometricDown = 2 // CELL_SHAPE_ISOMETRIC_DOWN
        /// Represents the size of the ``AStarGrid2D/CellShape`` enum.
        case max = 3 // CELL_SHAPE_MAX
    }
    
    
    /* Properties */
    
    /// The region of grid cells available for pathfinding. If changed, ``update()`` needs to be called before finding the next path.
    final public var region: Rect2i {
        get {
            return get_region ()
        }
        
        set {
            set_region (newValue)
        }
        
    }
    
    /// The size of the grid (number of cells of size ``cellSize`` on each axis). If changed, ``update()`` needs to be called before finding the next path.
    final public var size: Vector2i {
        get {
            return get_size ()
        }
        
        set {
            set_size (newValue)
        }
        
    }
    
    /// The offset of the grid which will be applied to calculate the resulting point position returned by ``getPointPath(fromId:toId:allowPartialPath:)``. If changed, ``update()`` needs to be called before finding the next path.
    final public var offset: Vector2 {
        get {
            return get_offset ()
        }
        
        set {
            set_offset (newValue)
        }
        
    }
    
    /// The size of the point cell which will be applied to calculate the resulting point position returned by ``getPointPath(fromId:toId:allowPartialPath:)``. If changed, ``update()`` needs to be called before finding the next path.
    final public var cellSize: Vector2 {
        get {
            return get_cell_size ()
        }
        
        set {
            set_cell_size (newValue)
        }
        
    }
    
    /// The cell shape. Affects how the positions are placed in the grid. If changed, ``update()`` needs to be called before finding the next path.
    final public var cellShape: AStarGrid2D.CellShape {
        get {
            return get_cell_shape ()
        }
        
        set {
            set_cell_shape (newValue)
        }
        
    }
    
    /// Enables or disables jumping to skip up the intermediate points and speeds up the searching algorithm.
    /// 
    /// > Note: Currently, toggling it on disables the consideration of weight scaling in pathfinding.
    /// 
    final public var jumpingEnabled: Bool {
        get {
            return is_jumping_enabled ()
        }
        
        set {
            set_jumping_enabled (newValue)
        }
        
    }
    
    /// The default ``AStarGrid2D/Heuristic`` which will be used to calculate the cost between two points if ``_computeCost(fromId:toId:)`` was not overridden.
    final public var defaultComputeHeuristic: AStarGrid2D.Heuristic {
        get {
            return get_default_compute_heuristic ()
        }
        
        set {
            set_default_compute_heuristic (newValue)
        }
        
    }
    
    /// The default ``AStarGrid2D/Heuristic`` which will be used to calculate the cost between the point and the end point if ``_estimateCost(fromId:endId:)`` was not overridden.
    final public var defaultEstimateHeuristic: AStarGrid2D.Heuristic {
        get {
            return get_default_estimate_heuristic ()
        }
        
        set {
            set_default_estimate_heuristic (newValue)
        }
        
    }
    
    /// A specific ``AStarGrid2D/DiagonalMode`` mode which will force the path to avoid or accept the specified diagonals.
    final public var diagonalMode: AStarGrid2D.DiagonalMode {
        get {
            return get_diagonal_mode ()
        }
        
        set {
            set_diagonal_mode (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method__estimate_cost: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_estimate_cost")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2153177966)!
            }
            
        }
        
    }()
    
    /// Called when estimating the cost between a point and the path's ending point.
    /// 
    /// Note that this function is hidden in the default ``AStarGrid2D`` class.
    /// 
    @_documentation(visibility: public)
    open func _estimateCost(fromId: Vector2i, endId: Vector2i) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: fromId) { pArg0 in
            withUnsafePointer(to: endId) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AStarGrid2D.method__estimate_cost, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__compute_cost: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_compute_cost")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2153177966)!
            }
            
        }
        
    }()
    
    /// Called when computing the cost between two connected points.
    /// 
    /// Note that this function is hidden in the default ``AStarGrid2D`` class.
    /// 
    @_documentation(visibility: public)
    open func _computeCost(fromId: Vector2i, toId: Vector2i) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: fromId) { pArg0 in
            withUnsafePointer(to: toId) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AStarGrid2D.method__compute_cost, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_region")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1763793166)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_region(_ region: Rect2i) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: region) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AStarGrid2D.method_set_region, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_region")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 410525958)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_region() -> Rect2i {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Rect2i = Rect2i ()
        gi.object_method_bind_ptrcall(AStarGrid2D.method_get_region, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_size")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1130785943)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_size(_ size: Vector2i) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AStarGrid2D.method_set_size, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_size")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3690982128)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_size() -> Vector2i {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2i = Vector2i ()
        gi.object_method_bind_ptrcall(AStarGrid2D.method_get_size, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_offset")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_offset(_ offset: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AStarGrid2D.method_set_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_offset")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_offset() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(AStarGrid2D.method_get_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_cell_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_cell_size")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_cell_size(_ cellSize: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: cellSize) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AStarGrid2D.method_set_cell_size, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_cell_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_cell_size")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_cell_size() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(AStarGrid2D.method_get_cell_size, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_cell_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_cell_shape")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4130591146)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_cell_shape(_ cellShape: AStarGrid2D.CellShape) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: cellShape.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AStarGrid2D.method_set_cell_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_cell_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_cell_shape")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3293463634)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_cell_shape() -> AStarGrid2D.CellShape {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AStarGrid2D.method_get_cell_shape, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return AStarGrid2D.CellShape (rawValue: _result)!
    }
    
    fileprivate static let method_is_in_bounds: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_in_bounds")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2522259332)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the `x` and `y` is a valid grid coordinate (id), i.e. if it is inside ``region``. Equivalent to `region.has_point(Vector2i(x, y))`.
    public final func isInBounds(x: Int32, y: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: x) { pArg0 in
            withUnsafePointer(to: y) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AStarGrid2D.method_is_in_bounds, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_in_boundsv: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_in_boundsv")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3900751641)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the `id` vector is a valid grid coordinate, i.e. if it is inside ``region``. Equivalent to `region.has_point(id)`.
    public final func isInBoundsv(id: Vector2i) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AStarGrid2D.method_is_in_boundsv, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_dirty: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_dirty")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Indicates that the grid parameters were changed and ``update()`` needs to be called.
    public final func isDirty() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AStarGrid2D.method_is_dirty, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_update: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("update")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Updates the internal state of the grid according to the parameters to prepare it to search the path. Needs to be called if parameters like ``region``, ``cellSize`` or ``offset`` are changed. ``isDirty()`` will return `true` if this is the case and this needs to be called.
    /// 
    /// > Note: All point data (solidity and weight scale) will be cleared.
    /// 
    public final func update() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(AStarGrid2D.method_update, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_set_jumping_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_jumping_enabled")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_jumping_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AStarGrid2D.method_set_jumping_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_jumping_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_jumping_enabled")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_jumping_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AStarGrid2D.method_is_jumping_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_diagonal_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_diagonal_mode")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1017829798)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_diagonal_mode(_ mode: AStarGrid2D.DiagonalMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AStarGrid2D.method_set_diagonal_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_diagonal_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_diagonal_mode")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3129282674)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_diagonal_mode() -> AStarGrid2D.DiagonalMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AStarGrid2D.method_get_diagonal_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return AStarGrid2D.DiagonalMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_default_compute_heuristic: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_default_compute_heuristic")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1044375519)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_default_compute_heuristic(_ heuristic: AStarGrid2D.Heuristic) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: heuristic.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AStarGrid2D.method_set_default_compute_heuristic, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_default_compute_heuristic: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_default_compute_heuristic")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2074731422)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_default_compute_heuristic() -> AStarGrid2D.Heuristic {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AStarGrid2D.method_get_default_compute_heuristic, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return AStarGrid2D.Heuristic (rawValue: _result)!
    }
    
    fileprivate static let method_set_default_estimate_heuristic: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_default_estimate_heuristic")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1044375519)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_default_estimate_heuristic(_ heuristic: AStarGrid2D.Heuristic) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: heuristic.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AStarGrid2D.method_set_default_estimate_heuristic, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_default_estimate_heuristic: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_default_estimate_heuristic")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2074731422)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_default_estimate_heuristic() -> AStarGrid2D.Heuristic {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AStarGrid2D.method_get_default_estimate_heuristic, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return AStarGrid2D.Heuristic (rawValue: _result)!
    }
    
    fileprivate static let method_set_point_solid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_point_solid")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1765703753)!
            }
            
        }
        
    }()
    
    /// Disables or enables the specified point for pathfinding. Useful for making an obstacle. By default, all points are enabled.
    /// 
    /// > Note: Calling ``update()`` is not needed after the call of this function.
    /// 
    public final func setPointSolid(id: Vector2i, solid: Bool = true) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: solid) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AStarGrid2D.method_set_point_solid, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_point_solid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_point_solid")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3900751641)!
            }
            
        }
        
    }()
    
    /// Returns `true` if a point is disabled for pathfinding. By default, all points are enabled.
    public final func isPointSolid(id: Vector2i) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AStarGrid2D.method_is_point_solid, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_point_weight_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_point_weight_scale")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2262553149)!
            }
            
        }
        
    }()
    
    /// Sets the `weightScale` for the point with the given `id`. The `weightScale` is multiplied by the result of ``_computeCost(fromId:toId:)`` when determining the overall cost of traveling across a segment from a neighboring point to this point.
    /// 
    /// > Note: Calling ``update()`` is not needed after the call of this function.
    /// 
    public final func setPointWeightScale(id: Vector2i, weightScale: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: weightScale) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AStarGrid2D.method_set_point_weight_scale, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_point_weight_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_point_weight_scale")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 719993801)!
            }
            
        }
        
    }()
    
    /// Returns the weight scale of the point associated with the given `id`.
    public final func getPointWeightScale(id: Vector2i) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AStarGrid2D.method_get_point_weight_scale, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_fill_solid_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("fill_solid_region")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2261970063)!
            }
            
        }
        
    }()
    
    /// Fills the given `region` on the grid with the specified value for the solid flag.
    /// 
    /// > Note: Calling ``update()`` is not needed after the call of this function.
    /// 
    public final func fillSolidRegion(_ region: Rect2i, solid: Bool = true) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: region) { pArg0 in
            withUnsafePointer(to: solid) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AStarGrid2D.method_fill_solid_region, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_fill_weight_scale_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("fill_weight_scale_region")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2793244083)!
            }
            
        }
        
    }()
    
    /// Fills the given `region` on the grid with the specified value for the weight scale.
    /// 
    /// > Note: Calling ``update()`` is not needed after the call of this function.
    /// 
    public final func fillWeightScaleRegion(_ region: Rect2i, weightScale: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: region) { pArg0 in
            withUnsafePointer(to: weightScale) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AStarGrid2D.method_fill_weight_scale_region, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_clear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears the grid and sets the ``region`` to `Rect2i(0, 0, 0, 0)`.
    public final func clear() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(AStarGrid2D.method_clear, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_get_point_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_point_position")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 108438297)!
            }
            
        }
        
    }()
    
    /// Returns the position of the point associated with the given `id`.
    public final func getPointPosition(id: Vector2i) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AStarGrid2D.method_get_point_position, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_point_data_in_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_point_data_in_region")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3893818462)!
            }
            
        }
        
    }()
    
    /// Returns an array of dictionaries with point data (`id`: ``Vector2i``, `position`: ``Vector2``, `solid`: [bool], `weight_scale`: float) within a `region`.
    public final func getPointDataInRegion(_ region: Rect2i) -> TypedArray<VariantDictionary> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        withUnsafePointer(to: region) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AStarGrid2D.method_get_point_data_in_region, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method_get_point_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_point_path")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1641925693)!
            }
            
        }
        
    }()
    
    /// Returns an array with the points that are in the path found by ``AStarGrid2D`` between the given points. The array is ordered from the starting point to the ending point of the path.
    /// 
    /// If there is no valid path to the target, and `allowPartialPath` is `true`, returns a path to the point closest to the target that can be reached.
    /// 
    /// > Note: This method is not thread-safe. If called from a ``Thread``, it will return an empty array and will print an error message.
    /// 
    /// Additionally, when `allowPartialPath` is `true` and `toId` is solid the search may take an unusually long time to finish.
    /// 
    public final func getPointPath(fromId: Vector2i, toId: Vector2i, allowPartialPath: Bool = false) -> PackedVector2Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedVector2Array = PackedVector2Array ()
        withUnsafePointer(to: fromId) { pArg0 in
            withUnsafePointer(to: toId) { pArg1 in
                withUnsafePointer(to: allowPartialPath) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(AStarGrid2D.method_get_point_path, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_id_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_id_path")
        return withUnsafePointer(to: &AStarGrid2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1918132273)!
            }
            
        }
        
    }()
    
    /// Returns an array with the IDs of the points that form the path found by AStar2D between the given points. The array is ordered from the starting point to the ending point of the path.
    /// 
    /// If there is no valid path to the target, and `allowPartialPath` is `true`, returns a path to the point closest to the target that can be reached.
    /// 
    /// > Note: When `allowPartialPath` is `true` and `toId` is solid the search may take an unusually long time to finish.
    /// 
    public final func getIdPath(fromId: Vector2i, toId: Vector2i, allowPartialPath: Bool = false) -> TypedArray<Vector2i> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        withUnsafePointer(to: fromId) { pArg0 in
            withUnsafePointer(to: toId) { pArg1 in
                withUnsafePointer(to: allowPartialPath) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(AStarGrid2D.method_get_id_path, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return TypedArray<Vector2i>(takingOver: _result)
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_compute_cost":
                return _AStarGrid2D_proxy_compute_cost
            case "_estimate_cost":
                return _AStarGrid2D_proxy_estimate_cost
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _AStarGrid2D_proxy_compute_cost (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AStarGrid2D else { return }
    let ret = swiftObject._computeCost (fromId: args [0]!.assumingMemoryBound (to: Vector2i.self).pointee, toId: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee)
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _AStarGrid2D_proxy_estimate_cost (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AStarGrid2D else { return }
    let ret = swiftObject._estimateCost (fromId: args [0]!.assumingMemoryBound (to: Vector2i.self).pointee, endId: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee)
    retPtr!.storeBytes (of: ret, as: Double.self)
}

