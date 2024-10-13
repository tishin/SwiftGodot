// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A traversable 2D region that ``NavigationAgent2D``s can use for pathfinding.
/// 
/// A traversable 2D region based on a ``NavigationPolygon`` that ``NavigationAgent2D``s can use for pathfinding.
/// 
/// Two regions can be connected to each other if they share a similar edge. You can set the minimum distance between two vertices required to connect two edges by using ``NavigationServer2D/mapSetEdgeConnectionMargin(map:margin:)``.
/// 
/// > Note: Overlapping two regions' navigation polygons is not enough for connecting two regions. They must share a similar edge.
/// 
/// The pathfinding cost of entering a region from another region can be controlled with the ``enterCost`` value.
/// 
/// > Note: This value is not added to the path cost when the start position is already inside this region.
/// 
/// The pathfinding cost of traveling distances inside this region can be controlled with the ``travelCost`` multiplier.
/// 
/// > Note: This node caches changes to its properties, so if you make changes to the underlying region ``RID`` in ``NavigationServer2D``, they will not be reflected in this node's properties.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``navigationPolygonChanged``
/// - ``bakeFinished``
open class NavigationRegion2D: Node2D {
    override open class var godotClassName: StringName { "NavigationRegion2D" }
    
    /* Properties */
    
    /// The ``NavigationPolygon`` resource to use.
    final public var navigationPolygon: NavigationPolygon? {
        get {
            return get_navigation_polygon ()
        }
        
        set {
            set_navigation_polygon (newValue)
        }
        
    }
    
    /// Determines if the ``NavigationRegion2D`` is enabled or disabled.
    final public var enabled: Bool {
        get {
            return is_enabled ()
        }
        
        set {
            set_enabled (newValue)
        }
        
    }
    
    /// If enabled the navigation region will use edge connections to connect with other navigation regions within proximity of the navigation map edge connection margin.
    final public var useEdgeConnections: Bool {
        get {
            return get_use_edge_connections ()
        }
        
        set {
            set_use_edge_connections (newValue)
        }
        
    }
    
    /// A bitfield determining all navigation layers the region belongs to. These navigation layers can be checked upon when requesting a path with ``NavigationServer2D/mapGetPath(map:origin:destination:optimize:navigationLayers:)``.
    final public var navigationLayers: UInt32 {
        get {
            return get_navigation_layers ()
        }
        
        set {
            set_navigation_layers (newValue)
        }
        
    }
    
    /// When pathfinding enters this region's navigation mesh from another regions navigation mesh the ``enterCost`` value is added to the path distance for determining the shortest path.
    final public var enterCost: Double {
        get {
            return get_enter_cost ()
        }
        
        set {
            set_enter_cost (newValue)
        }
        
    }
    
    /// When pathfinding moves inside this region's navigation mesh the traveled distances are multiplied with ``travelCost`` for determining the shortest path.
    final public var travelCost: Double {
        get {
            return get_travel_cost ()
        }
        
        set {
            set_travel_cost (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_get_rid: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_rid")
        return withUnsafePointer(to: &NavigationRegion2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Returns the ``RID`` of this region on the ``NavigationServer2D``. Combined with ``NavigationServer2D/mapGetClosestPointOwner(map:toPoint:)`` can be used to identify the ``NavigationRegion2D`` closest to a point on the merged navigation map.
    public final func getRid() -> RID {
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(NavigationRegion2D.method_get_rid, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_navigation_polygon: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_navigation_polygon")
        return withUnsafePointer(to: &NavigationRegion2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1515040758)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_navigation_polygon(_ navigationPolygon: NavigationPolygon?) {
        withUnsafePointer(to: navigationPolygon?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationRegion2D.method_set_navigation_polygon, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_navigation_polygon: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_navigation_polygon")
        return withUnsafePointer(to: &NavigationRegion2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1046532237)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_navigation_polygon() -> NavigationPolygon? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(NavigationRegion2D.method_get_navigation_polygon, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_enabled")
        return withUnsafePointer(to: &NavigationRegion2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_enabled(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationRegion2D.method_set_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_enabled")
        return withUnsafePointer(to: &NavigationRegion2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_enabled() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(NavigationRegion2D.method_is_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_navigation_map: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_navigation_map")
        return withUnsafePointer(to: &NavigationRegion2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// Sets the ``RID`` of the navigation map this region should use. By default the region will automatically join the ``World2D`` default navigation map so this function is only required to override the default map.
    public final func setNavigationMap(_ navigationMap: RID) {
        withUnsafePointer(to: navigationMap.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationRegion2D.method_set_navigation_map, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_navigation_map: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_navigation_map")
        return withUnsafePointer(to: &NavigationRegion2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Returns the current navigation map ``RID`` used by this region.
    public final func getNavigationMap() -> RID {
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(NavigationRegion2D.method_get_navigation_map, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_use_edge_connections: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_use_edge_connections")
        return withUnsafePointer(to: &NavigationRegion2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_edge_connections(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationRegion2D.method_set_use_edge_connections, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_use_edge_connections: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_use_edge_connections")
        return withUnsafePointer(to: &NavigationRegion2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_use_edge_connections() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(NavigationRegion2D.method_get_use_edge_connections, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_navigation_layers: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_navigation_layers")
        return withUnsafePointer(to: &NavigationRegion2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_navigation_layers(_ navigationLayers: UInt32) {
        withUnsafePointer(to: navigationLayers) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationRegion2D.method_set_navigation_layers, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_navigation_layers: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_navigation_layers")
        return withUnsafePointer(to: &NavigationRegion2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_navigation_layers() -> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(NavigationRegion2D.method_get_navigation_layers, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_navigation_layer_value: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_navigation_layer_value")
        return withUnsafePointer(to: &NavigationRegion2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Based on `value`, enables or disables the specified layer in the ``navigationLayers`` bitmask, given a `layerNumber` between 1 and 32.
    public final func setNavigationLayerValue(layerNumber: Int32, value: Bool) {
        withUnsafePointer(to: layerNumber) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(NavigationRegion2D.method_set_navigation_layer_value, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_navigation_layer_value: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_navigation_layer_value")
        return withUnsafePointer(to: &NavigationRegion2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns whether or not the specified layer of the ``navigationLayers`` bitmask is enabled, given a `layerNumber` between 1 and 32.
    public final func getNavigationLayerValue(layerNumber: Int32) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: layerNumber) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationRegion2D.method_get_navigation_layer_value, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_region_rid: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_region_rid")
        return withUnsafePointer(to: &NavigationRegion2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Returns the ``RID`` of this region on the ``NavigationServer2D``.
    public final func getRegionRid() -> RID {
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(NavigationRegion2D.method_get_region_rid, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_enter_cost: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_enter_cost")
        return withUnsafePointer(to: &NavigationRegion2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_enter_cost(_ enterCost: Double) {
        withUnsafePointer(to: enterCost) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationRegion2D.method_set_enter_cost, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_enter_cost: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_enter_cost")
        return withUnsafePointer(to: &NavigationRegion2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_enter_cost() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(NavigationRegion2D.method_get_enter_cost, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_travel_cost: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_travel_cost")
        return withUnsafePointer(to: &NavigationRegion2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_travel_cost(_ travelCost: Double) {
        withUnsafePointer(to: travelCost) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationRegion2D.method_set_travel_cost, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_travel_cost: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_travel_cost")
        return withUnsafePointer(to: &NavigationRegion2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_travel_cost() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(NavigationRegion2D.method_get_travel_cost, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_bake_navigation_polygon: GDExtensionMethodBindPtr = {
        let methodName = StringName("bake_navigation_polygon")
        return withUnsafePointer(to: &NavigationRegion2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3216645846)!
            }
            
        }
        
    }()
    
    /// Bakes the ``NavigationPolygon``. If `onThread` is set to `true` (default), the baking is done on a separate thread.
    public final func bakeNavigationPolygon(onThread: Bool = true) {
        withUnsafePointer(to: onThread) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationRegion2D.method_bake_navigation_polygon, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_baking: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_baking")
        return withUnsafePointer(to: &NavigationRegion2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` when the ``NavigationPolygon`` is being baked on a background thread.
    public final func isBaking() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(NavigationRegion2D.method_is_baking, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    // Signals 
    /// Emitted when the used navigation polygon is replaced or changes to the internals of the current navigation polygon are committed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.navigationPolygonChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var navigationPolygonChanged: SimpleSignal { SimpleSignal (target: self, signalName: "navigation_polygon_changed") }
    
    /// Emitted when a navigation polygon bake operation is completed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.bakeFinished.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var bakeFinished: SimpleSignal { SimpleSignal (target: self, signalName: "bake_finished") }
    
}
