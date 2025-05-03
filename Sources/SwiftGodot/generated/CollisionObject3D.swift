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


/// Abstract base class for 3D physics objects.
/// 
/// Abstract base class for 3D physics objects. ``CollisionObject3D`` can hold any number of ``Shape3D``s for collision. Each shape must be assigned to a _shape owner_. Shape owners are not nodes and do not appear in the editor, but are accessible through code using the `shape_owner_*` methods.
/// 
/// > Warning: With a non-uniform scale, this node will likely not behave as expected. It is advised to keep its scale the same on all axes and adjust its collision shape(s) instead.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``inputEvent``
/// - ``mouseEntered``
/// - ``mouseExited``
open class CollisionObject3D: Node3D {
    private static var className = StringName("CollisionObject3D")
    override open class var godotClassName: StringName { className }
    public enum DisableMode: Int64, CaseIterable {
        /// When ``Node/processMode`` is set to ``Node/ProcessMode/disabled``, remove from the physics simulation to stop all physics interactions with this ``CollisionObject3D``.
        /// 
        /// Automatically re-added to the physics simulation when the ``Node`` is processed again.
        /// 
        case remove = 0 // DISABLE_MODE_REMOVE
        /// When ``Node/processMode`` is set to ``Node/ProcessMode/disabled``, make the body static. Doesn't affect ``Area3D``. ``PhysicsBody3D`` can't be affected by forces or other bodies while static.
        /// 
        /// Automatically set ``PhysicsBody3D`` back to its original mode when the ``Node`` is processed again.
        /// 
        case makeStatic = 1 // DISABLE_MODE_MAKE_STATIC
        /// When ``Node/processMode`` is set to ``Node/ProcessMode/disabled``, do not affect the physics simulation.
        case keepActive = 2 // DISABLE_MODE_KEEP_ACTIVE
    }
    
    
    /* Properties */
    
    /// Defines the behavior in physics when ``Node/processMode`` is set to ``Node/ProcessMode/disabled``. See ``CollisionObject3D/DisableMode`` for more details about the different modes.
    final public var disableMode: CollisionObject3D.DisableMode {
        get {
            return get_disable_mode ()
        }
        
        set {
            set_disable_mode (newValue)
        }
        
    }
    
    /// The physics layers this CollisionObject3D **is in**. Collision objects can exist in one or more of 32 different layers. See also ``collisionMask``.
    /// 
    /// > Note: Object A can detect a contact with object B only if object B is in any of the layers that object A scans. See <a href="https://docs.godotengine.org/en//tutorials/physics/physics_introduction.html#collision-layers-and-masks">Collision layers and masks</a> in the documentation for more information.
    /// 
    final public var collisionLayer: UInt32 {
        get {
            return get_collision_layer ()
        }
        
        set {
            set_collision_layer (newValue)
        }
        
    }
    
    /// The physics layers this CollisionObject3D **scans**. Collision objects can scan one or more of 32 different layers. See also ``collisionLayer``.
    /// 
    /// > Note: Object A can detect a contact with object B only if object B is in any of the layers that object A scans. See <a href="https://docs.godotengine.org/en//tutorials/physics/physics_introduction.html#collision-layers-and-masks">Collision layers and masks</a> in the documentation for more information.
    /// 
    final public var collisionMask: UInt32 {
        get {
            return get_collision_mask ()
        }
        
        set {
            set_collision_mask (newValue)
        }
        
    }
    
    /// The priority used to solve colliding when occurring penetration. The higher the priority is, the lower the penetration into the object will be. This can for example be used to prevent the player from breaking through the boundaries of a level.
    final public var collisionPriority: Double {
        get {
            return get_collision_priority ()
        }
        
        set {
            set_collision_priority (newValue)
        }
        
    }
    
    /// If `true`, this object is pickable. A pickable object can detect the mouse pointer entering/leaving, and if the mouse is inside it, report input events. Requires at least one ``collisionLayer`` bit to be set.
    final public var inputRayPickable: Bool {
        get {
            return is_ray_pickable ()
        }
        
        set {
            set_ray_pickable (newValue)
        }
        
    }
    
    /// If `true`, the ``CollisionObject3D`` will continue to receive input events as the mouse is dragged across its shapes.
    final public var inputCaptureOnDrag: Bool {
        get {
            return get_capture_input_on_drag ()
        }
        
        set {
            set_capture_input_on_drag (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method__input_event: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_input_event")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2310605070)!
            }
            
        }
        
    }()
    
    /// Receives unhandled ``InputEvent``s. `eventPosition` is the location in world space of the mouse pointer on the surface of the shape with index `shapeIdx` and `normal` is the normal vector of the surface at that point. Connect to the [signal input_event] signal to easily pick up these events.
    /// 
    /// > Note: ``_inputEvent(camera:event:eventPosition:normal:shapeIdx:)`` requires ``inputRayPickable`` to be `true` and at least one ``collisionLayer`` bit to be set.
    /// 
    @_documentation(visibility: public)
    open func _inputEvent(camera: Camera3D?, event: InputEvent?, eventPosition: Vector3, normal: Vector3, shapeIdx: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: camera?.handle) { pArg0 in
            withUnsafePointer(to: event?.handle) { pArg1 in
                withUnsafePointer(to: eventPosition) { pArg2 in
                    withUnsafePointer(to: normal) { pArg3 in
                        withUnsafePointer(to: shapeIdx) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(CollisionObject3D.method__input_event, handle, pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__mouse_enter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_mouse_enter")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called when the mouse pointer enters any of this object's shapes. Requires ``inputRayPickable`` to be `true` and at least one ``collisionLayer`` bit to be set. Note that moving between different shapes within a single ``CollisionObject3D`` won't cause this function to be called.
    @_documentation(visibility: public)
    open func _mouseEnter() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CollisionObject3D.method__mouse_enter, handle, nil, nil)
        
    }
    
    fileprivate static let method__mouse_exit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_mouse_exit")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called when the mouse pointer exits all this object's shapes. Requires ``inputRayPickable`` to be `true` and at least one ``collisionLayer`` bit to be set. Note that moving between different shapes within a single ``CollisionObject3D`` won't cause this function to be called.
    @_documentation(visibility: public)
    open func _mouseExit() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CollisionObject3D.method__mouse_exit, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_collision_layer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collision_layer")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(CollisionObject3D.method_set_collision_layer, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_collision_layer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_layer")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_collision_layer() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(CollisionObject3D.method_get_collision_layer, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collision_mask")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(CollisionObject3D.method_set_collision_mask, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_mask")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_collision_mask() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(CollisionObject3D.method_get_collision_mask, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_collision_layer_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collision_layer_value")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
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
                        gi.object_method_bind_ptrcall(CollisionObject3D.method_set_collision_layer_value, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_collision_layer_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_layer_value")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(CollisionObject3D.method_get_collision_layer_value, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_collision_mask_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collision_mask_value")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
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
                        gi.object_method_bind_ptrcall(CollisionObject3D.method_set_collision_mask_value, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_collision_mask_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_mask_value")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(CollisionObject3D.method_get_collision_mask_value, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_collision_priority: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collision_priority")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(CollisionObject3D.method_set_collision_priority, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_collision_priority: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_priority")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_collision_priority() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CollisionObject3D.method_get_collision_priority, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_disable_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_disable_mode")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1623620376)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_disable_mode(_ mode: CollisionObject3D.DisableMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionObject3D.method_set_disable_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_disable_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_disable_mode")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 410164780)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_disable_mode() -> CollisionObject3D.DisableMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(CollisionObject3D.method_get_disable_mode, handle, nil, &_result)
        return CollisionObject3D.DisableMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_ray_pickable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_ray_pickable")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_ray_pickable(_ rayPickable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: rayPickable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionObject3D.method_set_ray_pickable, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_ray_pickable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_ray_pickable")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_ray_pickable() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CollisionObject3D.method_is_ray_pickable, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_capture_input_on_drag: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_capture_input_on_drag")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_capture_input_on_drag(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionObject3D.method_set_capture_input_on_drag, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_capture_input_on_drag: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_capture_input_on_drag")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_capture_input_on_drag() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CollisionObject3D.method_get_capture_input_on_drag, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_rid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_rid")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Returns the object's ``RID``.
    public final func getRid() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(CollisionObject3D.method_get_rid, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_create_shape_owner: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_shape_owner")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3429307534)!
            }
            
        }
        
    }()
    
    /// Creates a new shape owner for the given object. Returns `owner_id` of the new owner for future reference.
    public final func createShapeOwner(_ owner: Object?) -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        withUnsafePointer(to: owner?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionObject3D.method_create_shape_owner, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_remove_shape_owner: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_shape_owner")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes the given shape owner.
    public final func removeShapeOwner(ownerId: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: ownerId) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionObject3D.method_remove_shape_owner, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_shape_owners: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_shape_owners")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 969006518)!
            }
            
        }
        
    }()
    
    /// Returns an ``VariantArray`` of `owner_id` identifiers. You can use these ids in other methods that take `owner_id` as an argument.
    public final func getShapeOwners() -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall(CollisionObject3D.method_get_shape_owners, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_shape_owner_set_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("shape_owner_set_transform")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3616898986)!
            }
            
        }
        
    }()
    
    /// Sets the ``Transform3D`` of the given shape owner.
    public final func shapeOwnerSetTransform(ownerId: UInt32, transform: Transform3D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: ownerId) { pArg0 in
            withUnsafePointer(to: transform) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CollisionObject3D.method_shape_owner_set_transform, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_shape_owner_get_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("shape_owner_get_transform")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1965739696)!
            }
            
        }
        
    }()
    
    /// Returns the shape owner's ``Transform3D``.
    public final func shapeOwnerGetTransform(ownerId: UInt32) -> Transform3D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform3D = Transform3D ()
        withUnsafePointer(to: ownerId) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionObject3D.method_shape_owner_get_transform, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_shape_owner_get_owner: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("shape_owner_get_owner")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3332903315)!
            }
            
        }
        
    }()
    
    /// Returns the parent object of the given shape owner.
    public final func shapeOwnerGetOwner(ownerId: UInt32) -> Object? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: ownerId) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionObject3D.method_shape_owner_get_owner, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_shape_owner_set_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("shape_owner_set_disabled")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// If `true`, disables the given shape owner.
    public final func shapeOwnerSetDisabled(ownerId: UInt32, disabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: ownerId) { pArg0 in
            withUnsafePointer(to: disabled) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CollisionObject3D.method_shape_owner_set_disabled, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_shape_owner_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_shape_owner_disabled")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// If `true`, the shape owner and its shapes are disabled.
    public final func isShapeOwnerDisabled(ownerId: UInt32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: ownerId) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionObject3D.method_is_shape_owner_disabled, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_shape_owner_add_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("shape_owner_add_shape")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2566676345)!
            }
            
        }
        
    }()
    
    /// Adds a ``Shape3D`` to the shape owner.
    public final func shapeOwnerAddShape(ownerId: UInt32, shape: Shape3D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: ownerId) { pArg0 in
            withUnsafePointer(to: shape?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CollisionObject3D.method_shape_owner_add_shape, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_shape_owner_get_shape_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("shape_owner_get_shape_count")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the number of shapes the given shape owner contains.
    public final func shapeOwnerGetShapeCount(ownerId: UInt32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: ownerId) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionObject3D.method_shape_owner_get_shape_count, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_shape_owner_get_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("shape_owner_get_shape")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4015519174)!
            }
            
        }
        
    }()
    
    /// Returns the ``Shape3D`` with the given ID from the given shape owner.
    public final func shapeOwnerGetShape(ownerId: UInt32, shapeId: Int32) -> Shape3D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: ownerId) { pArg0 in
            withUnsafePointer(to: shapeId) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CollisionObject3D.method_shape_owner_get_shape, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_shape_owner_get_shape_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("shape_owner_get_shape_index")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3175239445)!
            }
            
        }
        
    }()
    
    /// Returns the child index of the ``Shape3D`` with the given ID from the given shape owner.
    public final func shapeOwnerGetShapeIndex(ownerId: UInt32, shapeId: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: ownerId) { pArg0 in
            withUnsafePointer(to: shapeId) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CollisionObject3D.method_shape_owner_get_shape_index, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_shape_owner_remove_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("shape_owner_remove_shape")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Removes a shape from the given shape owner.
    public final func shapeOwnerRemoveShape(ownerId: UInt32, shapeId: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: ownerId) { pArg0 in
            withUnsafePointer(to: shapeId) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CollisionObject3D.method_shape_owner_remove_shape, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_shape_owner_clear_shapes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("shape_owner_clear_shapes")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes all shapes from the shape owner.
    public final func shapeOwnerClearShapes(ownerId: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: ownerId) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionObject3D.method_shape_owner_clear_shapes, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_shape_find_owner: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("shape_find_owner")
        return withUnsafePointer(to: &CollisionObject3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the `owner_id` of the given shape.
    public final func shapeFindOwner(shapeIndex: Int32) -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        withUnsafePointer(to: shapeIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionObject3D.method_shape_find_owner, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_input_event":
                return _CollisionObject3D_proxy_input_event
            case "_mouse_enter":
                return _CollisionObject3D_proxy_mouse_enter
            case "_mouse_exit":
                return _CollisionObject3D_proxy_mouse_exit
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
    // Signals 
    /// Emitted when the object receives an unhandled ``InputEvent``. `eventPosition` is the location in world space of the mouse pointer on the surface of the shape with index `shapeIdx` and `normal` is the normal vector of the surface at that point.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.inputEvent.connect { camera, event, eventPosition, normal, shapeIdx in
    ///    print ("caught signal")
    /// }
    /// ```
    public var inputEvent: SignalWithArguments<Node?, InputEvent?, Vector3, Vector3, Int64> { SignalWithArguments<Node?, InputEvent?, Vector3, Vector3, Int64> (target: self, signalName: "input_event") }
    
    /// Emitted when the mouse pointer enters any of this object's shapes. Requires ``inputRayPickable`` to be `true` and at least one ``collisionLayer`` bit to be set.
    /// 
    /// > Note: Due to the lack of continuous collision detection, this signal may not be emitted in the expected order if the mouse moves fast enough and the ``CollisionObject3D``'s area is small. This signal may also not be emitted if another ``CollisionObject3D`` is overlapping the ``CollisionObject3D`` in question.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.mouseEntered.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var mouseEntered: SimpleSignal { SimpleSignal (target: self, signalName: "mouse_entered") }
    
    /// Emitted when the mouse pointer exits all this object's shapes. Requires ``inputRayPickable`` to be `true` and at least one ``collisionLayer`` bit to be set.
    /// 
    /// > Note: Due to the lack of continuous collision detection, this signal may not be emitted in the expected order if the mouse moves fast enough and the ``CollisionObject3D``'s area is small. This signal may also not be emitted if another ``CollisionObject3D`` is overlapping the ``CollisionObject3D`` in question.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.mouseExited.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var mouseExited: SimpleSignal { SimpleSignal (target: self, signalName: "mouse_exited") }
    
}

// Support methods for proxies
func _CollisionObject3D_proxy_input_event (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? CollisionObject3D else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    let resolved_1 = args [1]!.load (as: GodotNativeObjectPointer?.self)
    
    swiftObject._inputEvent (camera: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Camera3D, event: resolved_1 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_1!, ownsRef: false) as? InputEvent, eventPosition: args [2]!.assumingMemoryBound (to: Vector3.self).pointee, normal: args [3]!.assumingMemoryBound (to: Vector3.self).pointee, shapeIdx: args [4]!.assumingMemoryBound (to: Int32.self).pointee)
}

func _CollisionObject3D_proxy_mouse_enter (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? CollisionObject3D else { return }
    swiftObject._mouseEnter ()
}

func _CollisionObject3D_proxy_mouse_exit (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? CollisionObject3D else { return }
    swiftObject._mouseExit ()
}

