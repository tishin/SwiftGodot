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


/// The CSG base class.
/// 
/// This is the CSG base class that provides CSG operation support to the various CSG nodes in Godot.
/// 
/// **Performance:** CSG nodes are only intended for prototyping as they have a significant CPU performance cost.
/// 
/// Consider baking final CSG operation results into static geometry that replaces the CSG nodes.
/// 
/// Individual CSG root node results can be baked to nodes with static resources with the editor menu that appears when a CSG root node is selected.
/// 
/// Individual CSG root nodes can also be baked to static resources with scripts by calling ``bakeStaticMesh()`` for the visual mesh or ``bakeCollisionShape()`` for the physics collision.
/// 
/// Entire scenes of CSG nodes can be baked to static geometry and exported with the editor gltf scene exporter.
/// 
open class CSGShape3D: GeometryInstance3D {
    private static var className = StringName("CSGShape3D")
    override open class var godotClassName: StringName { className }
    public enum Operation: Int64, CaseIterable {
        /// Geometry of both primitives is merged, intersecting geometry is removed.
        case union = 0 // OPERATION_UNION
        /// Only intersecting geometry remains, the rest is removed.
        case intersection = 1 // OPERATION_INTERSECTION
        /// The second shape is subtracted from the first, leaving a dent with its shape.
        case subtraction = 2 // OPERATION_SUBTRACTION
    }
    
    
    /* Properties */
    
    /// The operation that is performed on this shape. This is ignored for the first CSG child node as the operation is between this node and the previous child of this nodes parent.
    final public var operation: CSGShape3D.Operation {
        get {
            return get_operation ()
        }
        
        set {
            set_operation (newValue)
        }
        
    }
    
    /// This property does nothing.
    final public var snap: Double {
        get {
            return get_snap ()
        }
        
        set {
            set_snap (newValue)
        }
        
    }
    
    /// Calculate tangents for the CSG shape which allows the use of normal maps. This is only applied on the root shape, this setting is ignored on any child.
    final public var calculateTangents: Bool {
        get {
            return is_calculating_tangents ()
        }
        
        set {
            set_calculate_tangents (newValue)
        }
        
    }
    
    /// Adds a collision shape to the physics engine for our CSG shape. This will always act like a static body. Note that the collision shape is still active even if the CSG shape itself is hidden. See also ``collisionMask`` and ``collisionPriority``.
    final public var useCollision: Bool {
        get {
            return is_using_collision ()
        }
        
        set {
            set_use_collision (newValue)
        }
        
    }
    
    /// The physics layers this area is in.
    /// 
    /// Collidable objects can exist in any of 32 different layers. These layers work like a tagging system, and are not visual. A collidable can use these layers to select with which objects it can collide, using the collision_mask property.
    /// 
    /// A contact is detected if object A is in any of the layers that object B scans, or object B is in any layer scanned by object A. See <a href="https://docs.godotengine.org/en//tutorials/physics/physics_introduction.html#collision-layers-and-masks">Collision layers and masks</a> in the documentation for more information.
    /// 
    final public var collisionLayer: UInt32 {
        get {
            return get_collision_layer ()
        }
        
        set {
            set_collision_layer (newValue)
        }
        
    }
    
    /// The physics layers this CSG shape scans for collisions. Only effective if ``useCollision`` is `true`. See <a href="https://docs.godotengine.org/en//tutorials/physics/physics_introduction.html#collision-layers-and-masks">Collision layers and masks</a> in the documentation for more information.
    final public var collisionMask: UInt32 {
        get {
            return get_collision_mask ()
        }
        
        set {
            set_collision_mask (newValue)
        }
        
    }
    
    /// The priority used to solve colliding when occurring penetration. Only effective if ``useCollision`` is `true`. The higher the priority is, the lower the penetration into the object will be. This can for example be used to prevent the player from breaking through the boundaries of a level.
    final public var collisionPriority: Double {
        get {
            return get_collision_priority ()
        }
        
        set {
            set_collision_priority (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_is_root_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_root_shape")
        return withUnsafePointer(to: &CSGShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this is a root shape and is thus the object that is rendered.
    public final func isRootShape() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CSGShape3D.method_is_root_shape, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_operation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_operation")
        return withUnsafePointer(to: &CSGShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 811425055)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_operation(_ operation: CSGShape3D.Operation) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: operation.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGShape3D.method_set_operation, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_operation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_operation")
        return withUnsafePointer(to: &CSGShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2662425879)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_operation() -> CSGShape3D.Operation {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(CSGShape3D.method_get_operation, handle, nil, &_result)
        return CSGShape3D.Operation (rawValue: _result)!
    }
    
    fileprivate static let method_set_snap: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_snap")
        return withUnsafePointer(to: &CSGShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_snap(_ snap: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: snap) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGShape3D.method_set_snap, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_snap: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_snap")
        return withUnsafePointer(to: &CSGShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_snap() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CSGShape3D.method_get_snap, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_use_collision: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_collision")
        return withUnsafePointer(to: &CSGShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_collision(_ operation: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: operation) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGShape3D.method_set_use_collision, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_using_collision: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_using_collision")
        return withUnsafePointer(to: &CSGShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_using_collision() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CSGShape3D.method_is_using_collision, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_collision_layer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collision_layer")
        return withUnsafePointer(to: &CSGShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_collision_layer(_ layer: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layer) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGShape3D.method_set_collision_layer, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_collision_layer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_layer")
        return withUnsafePointer(to: &CSGShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_collision_layer() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(CSGShape3D.method_get_collision_layer, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collision_mask")
        return withUnsafePointer(to: &CSGShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_collision_mask(_ mask: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mask) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGShape3D.method_set_collision_mask, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_mask")
        return withUnsafePointer(to: &CSGShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_collision_mask() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(CSGShape3D.method_get_collision_mask, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_collision_mask_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collision_mask_value")
        return withUnsafePointer(to: &CSGShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Based on `value`, enables or disables the specified layer in the ``collisionMask``, given a `layerNumber` between 1 and 32.
    public final func setCollisionMaskValue(layerNumber: Int32, value: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layerNumber) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CSGShape3D.method_set_collision_mask_value, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_collision_mask_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_mask_value")
        return withUnsafePointer(to: &CSGShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns whether or not the specified layer of the ``collisionMask`` is enabled, given a `layerNumber` between 1 and 32.
    public final func getCollisionMaskValue(layerNumber: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: layerNumber) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGShape3D.method_get_collision_mask_value, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_collision_layer_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collision_layer_value")
        return withUnsafePointer(to: &CSGShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Based on `value`, enables or disables the specified layer in the ``collisionLayer``, given a `layerNumber` between 1 and 32.
    public final func setCollisionLayerValue(layerNumber: Int32, value: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layerNumber) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CSGShape3D.method_set_collision_layer_value, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_collision_layer_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_layer_value")
        return withUnsafePointer(to: &CSGShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns whether or not the specified layer of the ``collisionLayer`` is enabled, given a `layerNumber` between 1 and 32.
    public final func getCollisionLayerValue(layerNumber: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: layerNumber) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGShape3D.method_get_collision_layer_value, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_collision_priority: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collision_priority")
        return withUnsafePointer(to: &CSGShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_collision_priority(_ priority: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: priority) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGShape3D.method_set_collision_priority, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_collision_priority: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_priority")
        return withUnsafePointer(to: &CSGShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_collision_priority() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CSGShape3D.method_get_collision_priority, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_calculate_tangents: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_calculate_tangents")
        return withUnsafePointer(to: &CSGShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_calculate_tangents(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGShape3D.method_set_calculate_tangents, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_calculating_tangents: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_calculating_tangents")
        return withUnsafePointer(to: &CSGShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_calculating_tangents() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CSGShape3D.method_is_calculating_tangents, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_meshes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_meshes")
        return withUnsafePointer(to: &CSGShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns an ``VariantArray`` with two elements, the first is the ``Transform3D`` of this node and the second is the root ``Mesh`` of this node. Only works when this node is the root shape.
    public final func getMeshes() -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        gi.object_method_bind_ptrcall(CSGShape3D.method_get_meshes, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_bake_static_mesh: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("bake_static_mesh")
        return withUnsafePointer(to: &CSGShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1605880883)!
            }
            
        }
        
    }()
    
    /// Returns a baked static ``ArrayMesh`` of this node's CSG operation result. Materials from involved CSG nodes are added as extra mesh surfaces. Returns an empty mesh if the node is not a CSG root node or has no valid geometry.
    public final func bakeStaticMesh() -> ArrayMesh? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(CSGShape3D.method_bake_static_mesh, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_bake_collision_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("bake_collision_shape")
        return withUnsafePointer(to: &CSGShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36102322)!
            }
            
        }
        
    }()
    
    /// Returns a baked physics ``ConcavePolygonShape3D`` of this node's CSG operation result. Returns an empty shape if the node is not a CSG root node or has no valid geometry.
    /// 
    /// **Performance:** If the CSG operation results in a very detailed geometry with many faces physics performance will be very slow. Concave shapes should in general only be used for static level geometry and not with dynamic objects that are moving.
    /// 
    public final func bakeCollisionShape() -> ConcavePolygonShape3D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(CSGShape3D.method_bake_collision_shape, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
}

