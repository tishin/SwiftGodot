// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A node used to rotate all bones of a ``Skeleton3D`` bone chain a way that places the end bone at a desired 3D position.
/// 
/// SkeletonIK3D is used to rotate all bones of a ``Skeleton3D`` bone chain a way that places the end bone at a desired 3D position. A typical scenario for IK in games is to place a character's feet on the ground or a character's hands on a currently held object. SkeletonIK uses FabrikInverseKinematic internally to solve the bone chain and applies the results to the ``Skeleton3D`` `bones_global_pose_override` property for all affected bones in the chain. If fully applied, this overwrites any bone transform from ``Animation``s or bone custom poses set by users. The applied amount can be controlled with the ``SkeletonModifier3D/influence`` property.
/// 
open class SkeletonIK3D: SkeletonModifier3D {
    override open class var godotClassName: StringName { "SkeletonIK3D" }
    
    /* Properties */
    
    /// The name of the current root bone, the first bone in the IK chain.
    final public var rootBone: StringName {
        get {
            return get_root_bone ()
        }
        
        set {
            set_root_bone (newValue)
        }
        
    }
    
    /// The name of the current tip bone, the last bone in the IK chain placed at the ``target`` transform (or ``targetNode`` if defined).
    final public var tipBone: StringName {
        get {
            return get_tip_bone ()
        }
        
        set {
            set_tip_bone (newValue)
        }
        
    }
    
    /// First target of the IK chain where the tip bone is placed and, if ``overrideTipBasis`` is `true`, how the tip bone is rotated. If a ``targetNode`` path is available the nodes transform is used instead and this property is ignored.
    final public var target: Transform3D {
        get {
            return get_target_transform ()
        }
        
        set {
            set_target_transform (newValue)
        }
        
    }
    
    /// If `true` overwrites the rotation of the tip bone with the rotation of the ``target`` (or ``targetNode`` if defined).
    final public var overrideTipBasis: Bool {
        get {
            return is_override_tip_basis ()
        }
        
        set {
            set_override_tip_basis (newValue)
        }
        
    }
    
    /// If `true`, instructs the IK solver to consider the secondary magnet target (pole target) when calculating the bone chain. Use the magnet position (pole target) to control the bending of the IK chain.
    final public var useMagnet: Bool {
        get {
            return is_using_magnet ()
        }
        
        set {
            set_use_magnet (newValue)
        }
        
    }
    
    /// Secondary target position (first is ``target`` property or ``targetNode``) for the IK chain. Use magnet position (pole target) to control the bending of the IK chain. Only works if the bone chain has more than 2 bones. The middle chain bone position will be linearly interpolated with the magnet position.
    final public var magnet: Vector3 {
        get {
            return get_magnet_position ()
        }
        
        set {
            set_magnet_position (newValue)
        }
        
    }
    
    /// Target node ``NodePath`` for the IK chain. If available, the node's current ``Transform3D`` is used instead of the ``target`` property.
    final public var targetNode: NodePath {
        get {
            return get_target_node ()
        }
        
        set {
            set_target_node (newValue)
        }
        
    }
    
    /// The minimum distance between bone and goal target. If the distance is below this value, the IK solver stops further iterations.
    final public var minDistance: Double {
        get {
            return get_min_distance ()
        }
        
        set {
            set_min_distance (newValue)
        }
        
    }
    
    /// Number of iteration loops used by the IK solver to produce more accurate (and elegant) bone chain results.
    final public var maxIterations: Int32 {
        get {
            return get_max_iterations ()
        }
        
        set {
            set_max_iterations (newValue)
        }
        
    }
    
    /// Interpolation value for how much the IK results are applied to the current skeleton bone chain. A value of `1.0` will overwrite all skeleton bone transforms completely while a value of `0.0` will visually disable the SkeletonIK.
    final public var interpolation: Double {
        get {
            return get_interpolation ()
        }
        
        set {
            set_interpolation (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_root_bone: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_root_bone")
        return withUnsafePointer(to: &SkeletonIK3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_root_bone(_ rootBone: StringName) {
        withUnsafePointer(to: rootBone.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonIK3D.method_set_root_bone, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_root_bone: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_root_bone")
        return withUnsafePointer(to: &SkeletonIK3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_root_bone() -> StringName {
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(SkeletonIK3D.method_get_root_bone, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_tip_bone: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_tip_bone")
        return withUnsafePointer(to: &SkeletonIK3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tip_bone(_ tipBone: StringName) {
        withUnsafePointer(to: tipBone.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonIK3D.method_set_tip_bone, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_tip_bone: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_tip_bone")
        return withUnsafePointer(to: &SkeletonIK3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tip_bone() -> StringName {
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(SkeletonIK3D.method_get_tip_bone, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_target_transform: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_target_transform")
        return withUnsafePointer(to: &SkeletonIK3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2952846383)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_target_transform(_ target: Transform3D) {
        withUnsafePointer(to: target) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonIK3D.method_set_target_transform, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_target_transform: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_target_transform")
        return withUnsafePointer(to: &SkeletonIK3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3229777777)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_target_transform() -> Transform3D {
        var _result: Transform3D = Transform3D ()
        gi.object_method_bind_ptrcall(SkeletonIK3D.method_get_target_transform, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_target_node: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_target_node")
        return withUnsafePointer(to: &SkeletonIK3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_target_node(_ node: NodePath) {
        withUnsafePointer(to: node.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonIK3D.method_set_target_node, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_target_node: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_target_node")
        return withUnsafePointer(to: &SkeletonIK3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 277076166)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_target_node() -> NodePath {
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(SkeletonIK3D.method_get_target_node, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_override_tip_basis: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_override_tip_basis")
        return withUnsafePointer(to: &SkeletonIK3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_override_tip_basis(_ override: Bool) {
        withUnsafePointer(to: override) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonIK3D.method_set_override_tip_basis, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_override_tip_basis: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_override_tip_basis")
        return withUnsafePointer(to: &SkeletonIK3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_override_tip_basis() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(SkeletonIK3D.method_is_override_tip_basis, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_use_magnet: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_use_magnet")
        return withUnsafePointer(to: &SkeletonIK3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_magnet(_ use: Bool) {
        withUnsafePointer(to: use) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonIK3D.method_set_use_magnet, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_using_magnet: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_using_magnet")
        return withUnsafePointer(to: &SkeletonIK3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_using_magnet() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(SkeletonIK3D.method_is_using_magnet, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_magnet_position: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_magnet_position")
        return withUnsafePointer(to: &SkeletonIK3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_magnet_position(_ localPosition: Vector3) {
        withUnsafePointer(to: localPosition) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonIK3D.method_set_magnet_position, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_magnet_position: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_magnet_position")
        return withUnsafePointer(to: &SkeletonIK3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_magnet_position() -> Vector3 {
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(SkeletonIK3D.method_get_magnet_position, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_parent_skeleton: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_parent_skeleton")
        return withUnsafePointer(to: &SkeletonIK3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1488626673)!
            }
            
        }
        
    }()
    
    /// Returns the parent ``Skeleton3D`` Node that was present when SkeletonIK entered the ``SceneTree``. Returns null if the parent node was not a ``Skeleton3D`` Node when SkeletonIK3D entered the ``SceneTree``.
    public final func getParentSkeleton() -> Skeleton3D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(SkeletonIK3D.method_get_parent_skeleton, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_is_running: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_running")
        return withUnsafePointer(to: &SkeletonIK3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Returns `true` if SkeletonIK is applying IK effects on continues frames to the ``Skeleton3D`` bones. Returns `false` if SkeletonIK is stopped or ``start(oneTime:)`` was used with the `one_time` parameter set to `true`.
    public final func isRunning() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(SkeletonIK3D.method_is_running, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_min_distance: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_min_distance")
        return withUnsafePointer(to: &SkeletonIK3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_min_distance(_ minDistance: Double) {
        withUnsafePointer(to: minDistance) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonIK3D.method_set_min_distance, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_min_distance: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_min_distance")
        return withUnsafePointer(to: &SkeletonIK3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_min_distance() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(SkeletonIK3D.method_get_min_distance, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_max_iterations: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_max_iterations")
        return withUnsafePointer(to: &SkeletonIK3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_iterations(_ iterations: Int32) {
        withUnsafePointer(to: iterations) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonIK3D.method_set_max_iterations, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_max_iterations: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_max_iterations")
        return withUnsafePointer(to: &SkeletonIK3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_iterations() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(SkeletonIK3D.method_get_max_iterations, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_start: GDExtensionMethodBindPtr = {
        let methodName = StringName("start")
        return withUnsafePointer(to: &SkeletonIK3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 107499316)!
            }
            
        }
        
    }()
    
    /// Starts applying IK effects on each frame to the ``Skeleton3D`` bones but will only take effect starting on the next frame. If `oneTime` is `true`, this will take effect immediately but also reset on the next frame.
    public final func start(oneTime: Bool = false) {
        withUnsafePointer(to: oneTime) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonIK3D.method_start, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_stop: GDExtensionMethodBindPtr = {
        let methodName = StringName("stop")
        return withUnsafePointer(to: &SkeletonIK3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Stops applying IK effects on each frame to the ``Skeleton3D`` bones and also calls ``Skeleton3D/clearBonesGlobalPoseOverride()`` to remove existing overrides on all bones.
    public final func stop() {
        gi.object_method_bind_ptrcall(SkeletonIK3D.method_stop, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static var method_set_interpolation: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_interpolation")
        return withUnsafePointer(to: &SkeletonIK3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_interpolation(_ interpolation: Double) {
        withUnsafePointer(to: interpolation) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonIK3D.method_set_interpolation, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_interpolation: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_interpolation")
        return withUnsafePointer(to: &SkeletonIK3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_interpolation() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(SkeletonIK3D.method_get_interpolation, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

