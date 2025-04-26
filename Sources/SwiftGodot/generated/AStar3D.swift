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


/// An implementation of A* for finding the shortest path between two vertices on a connected graph in 3D space.
/// 
/// A* (A star) is a computer algorithm used in pathfinding and graph traversal, the process of plotting short paths among vertices (points), passing through a given set of edges (segments). It enjoys widespread use due to its performance and accuracy. Godot's A* implementation uses points in 3D space and Euclidean distances by default.
/// 
/// You must add points manually with ``addPoint(id:position:weightScale:)`` and create segments manually with ``connectPoints(id:toId:bidirectional:)``. Once done, you can test if there is a path between two points with the ``arePointsConnected(id:toId:bidirectional:)`` function, get a path containing indices by ``getIdPath(fromId:toId:allowPartialPath:)``, or one containing actual coordinates with ``getPointPath(fromId:toId:allowPartialPath:)``.
/// 
/// It is also possible to use non-Euclidean distances. To do so, create a script that extends ``AStar3D`` and override the methods ``_computeCost(fromId:toId:)`` and ``_estimateCost(fromId:endId:)``. Both should take two point IDs and return the distance between the corresponding points.
/// 
/// **Example:** Use Manhattan distance instead of Euclidean distance:
/// 
/// ``_estimateCost(fromId:endId:)`` should return a lower bound of the distance, i.e. `_estimate_cost(u, v) <= _compute_cost(u, v)`. This serves as a hint to the algorithm because the custom ``_computeCost(fromId:toId:)`` might be computation-heavy. If this is not the case, make ``_estimateCost(fromId:endId:)`` return the same value as ``_computeCost(fromId:toId:)`` to provide the algorithm with the most accurate information.
/// 
/// If the default ``_estimateCost(fromId:endId:)`` and ``_computeCost(fromId:toId:)`` methods are used, or if the supplied ``_estimateCost(fromId:endId:)`` method returns a lower bound of the cost, then the paths returned by A* will be the lowest-cost paths. Here, the cost of a path equals the sum of the ``_computeCost(fromId:toId:)`` results of all segments in the path multiplied by the `weight_scale`s of the endpoints of the respective segments. If the default methods are used and the `weight_scale`s of all points are set to `1.0`, then this equals the sum of Euclidean distances of all segments in the path.
/// 
open class AStar3D: RefCounted {
    private static var className = StringName("AStar3D")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__estimate_cost: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_estimate_cost")
        return withUnsafePointer(to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3085491603)!
            }
            
        }
        
    }()
    
    /// Called when estimating the cost between a point and the path's ending point.
    /// 
    /// Note that this function is hidden in the default ``AStar3D`` class.
    /// 
    @_documentation(visibility: public)
    open func _estimateCost(fromId: Int, endId: Int) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: fromId) { pArg0 in
            withUnsafePointer(to: endId) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AStar3D.method__estimate_cost, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__compute_cost: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_compute_cost")
        return withUnsafePointer(to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3085491603)!
            }
            
        }
        
    }()
    
    /// Called when computing the cost between two connected points.
    /// 
    /// Note that this function is hidden in the default ``AStar3D`` class.
    /// 
    @_documentation(visibility: public)
    open func _computeCost(fromId: Int, toId: Int) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: fromId) { pArg0 in
            withUnsafePointer(to: toId) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AStar3D.method__compute_cost, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_available_point_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_available_point_id")
        return withUnsafePointer(to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the next available point ID with no point associated to it.
    public final func getAvailablePointId() -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        gi.object_method_bind_ptrcall(AStar3D.method_get_available_point_id, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_add_point: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_point")
        return withUnsafePointer(to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1038703438)!
            }
            
        }
        
    }()
    
    /// Adds a new point at the given position with the given identifier. The `id` must be 0 or larger, and the `weightScale` must be 0.0 or greater.
    /// 
    /// The `weightScale` is multiplied by the result of ``_computeCost(fromId:toId:)`` when determining the overall cost of traveling across a segment from a neighboring point to this point. Thus, all else being equal, the algorithm prefers points with lower `weightScale`s to form a path.
    /// 
    /// If there already exists a point for the given `id`, its position and weight scale are updated to the given values.
    /// 
    public final func addPoint(id: Int, position: Vector3, weightScale: Double = 1.0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: position) { pArg1 in
                withUnsafePointer(to: weightScale) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(AStar3D.method_add_point, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_point_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_point_position")
        return withUnsafePointer(to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 711720468)!
            }
            
        }
        
    }()
    
    /// Returns the position of the point associated with the given `id`.
    public final func getPointPosition(id: Int) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AStar3D.method_get_point_position, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_point_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_point_position")
        return withUnsafePointer(to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1530502735)!
            }
            
        }
        
    }()
    
    /// Sets the `position` for the point with the given `id`.
    public final func setPointPosition(id: Int, position: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: position) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AStar3D.method_set_point_position, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_point_weight_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_point_weight_scale")
        return withUnsafePointer(to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// Returns the weight scale of the point associated with the given `id`.
    public final func getPointWeightScale(id: Int) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AStar3D.method_get_point_weight_scale, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_point_weight_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_point_weight_scale")
        return withUnsafePointer(to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Sets the `weightScale` for the point with the given `id`. The `weightScale` is multiplied by the result of ``_computeCost(fromId:toId:)`` when determining the overall cost of traveling across a segment from a neighboring point to this point.
    public final func setPointWeightScale(id: Int, weightScale: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: weightScale) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AStar3D.method_set_point_weight_scale, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_point: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_point")
        return withUnsafePointer(to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes the point associated with the given `id` from the points pool.
    public final func removePoint(id: Int) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AStar3D.method_remove_point, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_has_point: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_point")
        return withUnsafePointer(to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns whether a point associated with the given `id` exists.
    public final func hasPoint(id: Int) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AStar3D.method_has_point, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_point_connections: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_point_connections")
        return withUnsafePointer(to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2865087369)!
            }
            
        }
        
    }()
    
    /// Returns an array with the IDs of the points that form the connection with the given point.
    /// 
    public final func getPointConnections(id: Int) -> PackedInt64Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt64Array = PackedInt64Array ()
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AStar3D.method_get_point_connections, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_point_ids: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_point_ids")
        return withUnsafePointer(to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3851388692)!
            }
            
        }
        
    }()
    
    /// Returns an array of all point IDs.
    public final func getPointIds() -> PackedInt64Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt64Array = PackedInt64Array ()
        gi.object_method_bind_ptrcall(AStar3D.method_get_point_ids, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_point_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_point_disabled")
        return withUnsafePointer(to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 972357352)!
            }
            
        }
        
    }()
    
    /// Disables or enables the specified point for pathfinding. Useful for making a temporary obstacle.
    public final func setPointDisabled(id: Int, disabled: Bool = true) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: disabled) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AStar3D.method_set_point_disabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_point_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_point_disabled")
        return withUnsafePointer(to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns whether a point is disabled or not for pathfinding. By default, all points are enabled.
    public final func isPointDisabled(id: Int) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AStar3D.method_is_point_disabled, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_connect_points: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("connect_points")
        return withUnsafePointer(to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3710494224)!
            }
            
        }
        
    }()
    
    /// Creates a segment between the given points. If `bidirectional` is `false`, only movement from `id` to `toId` is allowed, not the reverse direction.
    /// 
    public final func connectPoints(id: Int, toId: Int, bidirectional: Bool = true) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: toId) { pArg1 in
                withUnsafePointer(to: bidirectional) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(AStar3D.method_connect_points, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_disconnect_points: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("disconnect_points")
        return withUnsafePointer(to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3710494224)!
            }
            
        }
        
    }()
    
    /// Deletes the segment between the given points. If `bidirectional` is `false`, only movement from `id` to `toId` is prevented, and a unidirectional segment possibly remains.
    public final func disconnectPoints(id: Int, toId: Int, bidirectional: Bool = true) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: toId) { pArg1 in
                withUnsafePointer(to: bidirectional) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(AStar3D.method_disconnect_points, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_are_points_connected: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("are_points_connected")
        return withUnsafePointer(to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2288175859)!
            }
            
        }
        
    }()
    
    /// Returns whether the two given points are directly connected by a segment. If `bidirectional` is `false`, returns whether movement from `id` to `toId` is possible through this segment.
    public final func arePointsConnected(id: Int, toId: Int, bidirectional: Bool = true) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: toId) { pArg1 in
                withUnsafePointer(to: bidirectional) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(AStar3D.method_are_points_connected, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_point_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_point_count")
        return withUnsafePointer(to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of points currently in the points pool.
    public final func getPointCount() -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        gi.object_method_bind_ptrcall(AStar3D.method_get_point_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_point_capacity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_point_capacity")
        return withUnsafePointer(to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the capacity of the structure backing the points, useful in conjunction with ``reserveSpace(numNodes:)``.
    public final func getPointCapacity() -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        gi.object_method_bind_ptrcall(AStar3D.method_get_point_capacity, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_reserve_space: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("reserve_space")
        return withUnsafePointer(to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Reserves space internally for `numNodes` points. Useful if you're adding a known large number of points at once, such as points on a grid. New capacity must be greater or equals to old capacity.
    public final func reserveSpace(numNodes: Int) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: numNodes) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AStar3D.method_reserve_space, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_clear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear")
        return withUnsafePointer(to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears all the points and segments.
    public final func clear() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(AStar3D.method_clear, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_get_closest_point: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_closest_point")
        return withUnsafePointer(to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3241074317)!
            }
            
        }
        
    }()
    
    /// Returns the ID of the closest point to `toPosition`, optionally taking disabled points into account. Returns `-1` if there are no points in the points pool.
    /// 
    /// > Note: If several points are the closest to `toPosition`, the one with the smallest ID will be returned, ensuring a deterministic result.
    /// 
    public final func getClosestPoint(toPosition: Vector3, includeDisabled: Bool = false) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: toPosition) { pArg0 in
            withUnsafePointer(to: includeDisabled) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AStar3D.method_get_closest_point, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_closest_position_in_segment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_closest_position_in_segment")
        return withUnsafePointer(to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 192990374)!
            }
            
        }
        
    }()
    
    /// Returns the closest position to `toPosition` that resides inside a segment between two connected points.
    /// 
    /// The result is in the segment that goes from `y = 0` to `y = 5`. It's the closest position in the segment to the given point.
    /// 
    public final func getClosestPositionInSegment(toPosition: Vector3) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: toPosition) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AStar3D.method_get_closest_position_in_segment, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_point_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_point_path")
        return withUnsafePointer(to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1562654675)!
            }
            
        }
        
    }()
    
    /// Returns an array with the points that are in the path found by AStar3D between the given points. The array is ordered from the starting point to the ending point of the path.
    /// 
    /// If there is no valid path to the target, and `allowPartialPath` is `true`, returns a path to the point closest to the target that can be reached.
    /// 
    /// > Note: This method is not thread-safe. If called from a ``Thread``, it will return an empty array and will print an error message.
    /// 
    /// Additionally, when `allowPartialPath` is `true` and `toId` is disabled the search may take an unusually long time to finish.
    /// 
    public final func getPointPath(fromId: Int, toId: Int, allowPartialPath: Bool = false) -> PackedVector3Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedVector3Array = PackedVector3Array ()
        withUnsafePointer(to: fromId) { pArg0 in
            withUnsafePointer(to: toId) { pArg1 in
                withUnsafePointer(to: allowPartialPath) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(AStar3D.method_get_point_path, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_id_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_id_path")
        return withUnsafePointer(to: &AStar3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3136199648)!
            }
            
        }
        
    }()
    
    /// Returns an array with the IDs of the points that form the path found by AStar3D between the given points. The array is ordered from the starting point to the ending point of the path.
    /// 
    /// If there is no valid path to the target, and `allowPartialPath` is `true`, returns a path to the point closest to the target that can be reached.
    /// 
    /// > Note: When `allowPartialPath` is `true` and `toId` is disabled the search may take an unusually long time to finish.
    /// 
    /// If you change the 2nd point's weight to 3, then the result will be `[1, 4, 3]` instead, because now even though the distance is longer, it's "easier" to get through point 4 than through point 2.
    /// 
    public final func getIdPath(fromId: Int, toId: Int, allowPartialPath: Bool = false) -> PackedInt64Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt64Array = PackedInt64Array ()
        withUnsafePointer(to: fromId) { pArg0 in
            withUnsafePointer(to: toId) { pArg1 in
                withUnsafePointer(to: allowPartialPath) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(AStar3D.method_get_id_path, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_compute_cost":
                return _AStar3D_proxy_compute_cost
            case "_estimate_cost":
                return _AStar3D_proxy_estimate_cost
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _AStar3D_proxy_compute_cost (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AStar3D else { return }
    let ret = swiftObject._computeCost (fromId: args [0]!.assumingMemoryBound (to: Int.self).pointee, toId: args [1]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _AStar3D_proxy_estimate_cost (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AStar3D else { return }
    let ret = swiftObject._estimateCost (fromId: args [0]!.assumingMemoryBound (to: Int.self).pointee, endId: args [1]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Double.self)
}

