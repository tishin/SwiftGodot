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


/// A link between two positions on ``NavigationRegion3D``s that agents can be routed through.
/// 
/// A link between two positions on ``NavigationRegion3D``s that agents can be routed through. These positions can be on the same ``NavigationRegion3D`` or on two different ones. Links are useful to express navigation methods other than traveling along the surface of the navigation mesh, such as ziplines, teleporters, or gaps that can be jumped across.
open class NavigationLink3D: Node3D {
    private static var className = StringName("NavigationLink3D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Whether this link is currently active. If `false`, ``NavigationServer3D/mapGetPath(map:origin:destination:optimize:navigationLayers:)`` will ignore this link.
    final public var enabled: Bool {
        get {
            return is_enabled ()
        }
        
        set {
            set_enabled (newValue)
        }
        
    }
    
    /// Whether this link can be traveled in both directions or only from ``startPosition`` to ``endPosition``.
    final public var bidirectional: Bool {
        get {
            return is_bidirectional ()
        }
        
        set {
            set_bidirectional (newValue)
        }
        
    }
    
    /// A bitfield determining all navigation layers the link belongs to. These navigation layers will be checked when requesting a path with ``NavigationServer3D/mapGetPath(map:origin:destination:optimize:navigationLayers:)``.
    final public var navigationLayers: UInt32 {
        get {
            return get_navigation_layers ()
        }
        
        set {
            set_navigation_layers (newValue)
        }
        
    }
    
    /// Starting position of the link.
    /// 
    /// This position will search out the nearest polygon in the navigation mesh to attach to.
    /// 
    /// The distance the link will search is controlled by ``NavigationServer3D/mapSetLinkConnectionRadius(map:radius:)``.
    /// 
    final public var startPosition: Vector3 {
        get {
            return get_start_position ()
        }
        
        set {
            set_start_position (newValue)
        }
        
    }
    
    /// Ending position of the link.
    /// 
    /// This position will search out the nearest polygon in the navigation mesh to attach to.
    /// 
    /// The distance the link will search is controlled by ``NavigationServer3D/mapSetLinkConnectionRadius(map:radius:)``.
    /// 
    final public var endPosition: Vector3 {
        get {
            return get_end_position ()
        }
        
        set {
            set_end_position (newValue)
        }
        
    }
    
    /// When pathfinding enters this link from another regions navigation mesh the ``enterCost`` value is added to the path distance for determining the shortest path.
    final public var enterCost: Double {
        get {
            return get_enter_cost ()
        }
        
        set {
            set_enter_cost (newValue)
        }
        
    }
    
    /// When pathfinding moves along the link the traveled distance is multiplied with ``travelCost`` for determining the shortest path.
    final public var travelCost: Double {
        get {
            return get_travel_cost ()
        }
        
        set {
            set_travel_cost (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_get_rid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_rid")
        return withUnsafePointer(to: &NavigationLink3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Returns the ``RID`` of this link on the ``NavigationServer3D``.
    public final func getRid() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(NavigationLink3D.method_get_rid, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_enabled")
        return withUnsafePointer(to: &NavigationLink3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationLink3D.method_set_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_enabled")
        return withUnsafePointer(to: &NavigationLink3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(NavigationLink3D.method_is_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_navigation_map: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_navigation_map")
        return withUnsafePointer(to: &NavigationLink3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// Sets the ``RID`` of the navigation map this link should use. By default the link will automatically join the ``World3D`` default navigation map so this function is only required to override the default map.
    public final func setNavigationMap(_ navigationMap: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: navigationMap.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationLink3D.method_set_navigation_map, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_navigation_map: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_navigation_map")
        return withUnsafePointer(to: &NavigationLink3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Returns the current navigation map ``RID`` used by this link.
    public final func getNavigationMap() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(NavigationLink3D.method_get_navigation_map, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_bidirectional: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bidirectional")
        return withUnsafePointer(to: &NavigationLink3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bidirectional(_ bidirectional: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: bidirectional) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationLink3D.method_set_bidirectional, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_bidirectional: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_bidirectional")
        return withUnsafePointer(to: &NavigationLink3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_bidirectional() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(NavigationLink3D.method_is_bidirectional, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_navigation_layers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_navigation_layers")
        return withUnsafePointer(to: &NavigationLink3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(NavigationLink3D.method_set_navigation_layers, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_navigation_layers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_navigation_layers")
        return withUnsafePointer(to: &NavigationLink3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_navigation_layers() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(NavigationLink3D.method_get_navigation_layers, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_navigation_layer_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_navigation_layer_value")
        return withUnsafePointer(to: &NavigationLink3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Based on `value`, enables or disables the specified layer in the ``navigationLayers`` bitmask, given a `layerNumber` between 1 and 32.
    public final func setNavigationLayerValue(layerNumber: Int32, value: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layerNumber) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(NavigationLink3D.method_set_navigation_layer_value, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_navigation_layer_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_navigation_layer_value")
        return withUnsafePointer(to: &NavigationLink3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns whether or not the specified layer of the ``navigationLayers`` bitmask is enabled, given a `layerNumber` between 1 and 32.
    public final func getNavigationLayerValue(layerNumber: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: layerNumber) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationLink3D.method_get_navigation_layer_value, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_start_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_start_position")
        return withUnsafePointer(to: &NavigationLink3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_start_position(_ position: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationLink3D.method_set_start_position, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_start_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_start_position")
        return withUnsafePointer(to: &NavigationLink3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_start_position() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(NavigationLink3D.method_get_start_position, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_end_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_end_position")
        return withUnsafePointer(to: &NavigationLink3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_end_position(_ position: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationLink3D.method_set_end_position, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_end_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_end_position")
        return withUnsafePointer(to: &NavigationLink3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_end_position() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(NavigationLink3D.method_get_end_position, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_global_start_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_global_start_position")
        return withUnsafePointer(to: &NavigationLink3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// Sets the ``startPosition`` that is relative to the link from a global `position`.
    public final func setGlobalStartPosition(_ position: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationLink3D.method_set_global_start_position, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_global_start_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_global_start_position")
        return withUnsafePointer(to: &NavigationLink3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    /// Returns the ``startPosition`` that is relative to the link as a global position.
    public final func getGlobalStartPosition() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(NavigationLink3D.method_get_global_start_position, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_global_end_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_global_end_position")
        return withUnsafePointer(to: &NavigationLink3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// Sets the ``endPosition`` that is relative to the link from a global `position`.
    public final func setGlobalEndPosition(_ position: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationLink3D.method_set_global_end_position, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_global_end_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_global_end_position")
        return withUnsafePointer(to: &NavigationLink3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    /// Returns the ``endPosition`` that is relative to the link as a global position.
    public final func getGlobalEndPosition() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(NavigationLink3D.method_get_global_end_position, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_enter_cost: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_enter_cost")
        return withUnsafePointer(to: &NavigationLink3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_enter_cost(_ enterCost: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enterCost) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationLink3D.method_set_enter_cost, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_enter_cost: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_enter_cost")
        return withUnsafePointer(to: &NavigationLink3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_enter_cost() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(NavigationLink3D.method_get_enter_cost, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_travel_cost: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_travel_cost")
        return withUnsafePointer(to: &NavigationLink3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_travel_cost(_ travelCost: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: travelCost) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationLink3D.method_set_travel_cost, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_travel_cost: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_travel_cost")
        return withUnsafePointer(to: &NavigationLink3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_travel_cost() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(NavigationLink3D.method_get_travel_cost, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

