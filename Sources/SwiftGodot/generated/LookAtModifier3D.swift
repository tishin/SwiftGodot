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


/// The ``LookAtModifier3D`` rotates a bone to look at a target.
/// 
/// This ``SkeletonModifier3D`` rotates a bone to look at a target. This is helpful for moving a character's head to look at the player, rotating a turret to look at a target, or any other case where you want to make a bone rotate towards something quickly and easily.
/// 
/// When applying multiple ``LookAtModifier3D``s, the ``LookAtModifier3D`` assigned to the parent bone must be put above the ``LookAtModifier3D`` assigned to the child bone in the list in order for the child bone results to be correct.
/// 
open class LookAtModifier3D: SkeletonModifier3D {
    private static var className = StringName("LookAtModifier3D")
    override open class var godotClassName: StringName { className }
    public enum OriginFrom: Int64, CaseIterable {
        /// The bone rest position of the bone specified in ``bone`` is used as origin.
        case `self` = 0 // ORIGIN_FROM_SELF
        /// The bone global pose position of the bone specified in ``originBone`` is used as origin.
        /// 
        /// > Note: It is recommended that you select only the parent bone unless you are familiar with the bone processing process. The specified bone pose at the time the ``LookAtModifier3D`` is processed is used as a reference. In other words, if you specify a child bone and the ``LookAtModifier3D`` causes the child bone to move, the rendered result and direction will not match.
        /// 
        case specificBone = 1 // ORIGIN_FROM_SPECIFIC_BONE
        /// The global position of the ``Node3D`` specified in ``originExternalNode`` is used as origin.
        /// 
        /// > Note: Same as ``OriginFrom/specificBone``, when specifying a ``BoneAttachment3D`` with a child bone assigned, the rendered result and direction will not match.
        /// 
        case externalNode = 2 // ORIGIN_FROM_EXTERNAL_NODE
    }
    
    
    /* Properties */
    
    /// The ``NodePath`` to the node that is the target for the look at modification. This node is what the modification will rotate the bone to.
    final public var targetNode: NodePath {
        get {
            return get_target_node ()
        }
        
        set {
            set_target_node (newValue)
        }
        
    }
    
    /// The bone name of the ``Skeleton3D`` that the modification will operate on.
    final public var boneName: String {
        get {
            return get_bone_name ()
        }
        
        set {
            set_bone_name (newValue)
        }
        
    }
    
    /// Index of the ``boneName`` in the parent ``Skeleton3D``.
    final public var bone: Int32 {
        get {
            return get_bone ()
        }
        
        set {
            set_bone (newValue)
        }
        
    }
    
    /// The forward axis of the bone. This ``SkeletonModifier3D`` modifies the bone so that this axis points toward the ``targetNode``.
    final public var forwardAxis: SkeletonModifier3D.BoneAxis {
        get {
            return get_forward_axis ()
        }
        
        set {
            set_forward_axis (newValue)
        }
        
    }
    
    /// The axis of the first rotation. This ``SkeletonModifier3D`` works by compositing the rotation by Euler angles to prevent to rotate the ``forwardAxis``.
    final public var primaryRotationAxis: Vector3.Axis {
        get {
            return get_primary_rotation_axis ()
        }
        
        set {
            set_primary_rotation_axis (newValue)
        }
        
    }
    
    /// If `true`, provides rotation by two axes.
    final public var useSecondaryRotation: Bool {
        get {
            return is_using_secondary_rotation ()
        }
        
        set {
            set_use_secondary_rotation (newValue)
        }
        
    }
    
    /// This value determines from what origin is retrieved for use in the calculation of the forward vector.
    final public var originFrom: LookAtModifier3D.OriginFrom {
        get {
            return get_origin_from ()
        }
        
        set {
            set_origin_from (newValue)
        }
        
    }
    
    /// If ``originFrom`` is ``OriginFrom/specificBone``, the bone global pose position specified for this is used as origin.
    final public var originBoneName: String {
        get {
            return get_origin_bone_name ()
        }
        
        set {
            set_origin_bone_name (newValue)
        }
        
    }
    
    /// Index of the ``originBoneName`` in the parent ``Skeleton3D``.
    final public var originBone: Int32 {
        get {
            return get_origin_bone ()
        }
        
        set {
            set_origin_bone (newValue)
        }
        
    }
    
    /// If ``originFrom`` is ``OriginFrom/externalNode``, the global position of the ``Node3D`` specified for this is used as origin.
    final public var originExternalNode: NodePath {
        get {
            return get_origin_external_node ()
        }
        
        set {
            set_origin_external_node (newValue)
        }
        
    }
    
    /// The offset of the bone pose origin. Matching the origins by offset is useful for cases where multiple bones must always face the same direction, such as the eyes.
    /// 
    /// > Note: This value indicates the local position of the object set in ``originFrom``.
    /// 
    final public var originOffset: Vector3 {
        get {
            return get_origin_offset ()
        }
        
        set {
            set_origin_offset (newValue)
        }
        
    }
    
    /// If the target passes through too close to the origin than this value, time-based interpolation is used even if the target is within the angular limitations, to prevent the angular velocity from becoming too high.
    final public var originSafeMargin: Double {
        get {
            return get_origin_safe_margin ()
        }
        
        set {
            set_origin_safe_margin (newValue)
        }
        
    }
    
    /// The duration of the time-based interpolation. Interpolation is triggered at the following cases:
    /// 
    /// - When the target node is changed
    /// 
    /// - When an axis is flipped due to angle limitation
    /// 
    /// > Note: The flipping occurs when the target is outside the angle limitation and the internally computed secondary rotation axis of the forward vector is flipped. Visually, it occurs when the target is outside the angle limitation and crosses the plane of the ``forwardAxis`` and ``primaryRotationAxis``.
    /// 
    final public var duration: Double {
        get {
            return get_duration ()
        }
        
        set {
            set_duration (newValue)
        }
        
    }
    
    /// The transition type of the time-based interpolation. See also ``Tween.TransitionType``.
    final public var transitionType: Tween.TransitionType {
        get {
            return get_transition_type ()
        }
        
        set {
            set_transition_type (newValue)
        }
        
    }
    
    /// The ease type of the time-based interpolation. See also ``Tween.EaseType``.
    final public var easeType: Tween.EaseType {
        get {
            return get_ease_type ()
        }
        
        set {
            set_ease_type (newValue)
        }
        
    }
    
    /// If `true`, limits the degree of rotation. This helps prevent the character's neck from rotating 360 degrees.
    /// 
    /// > Note: As with ``AnimationTree`` blending, interpolation is provided that favors ``Skeleton3D/getBoneRest(boneIdx:)``. This means that interpolation does not select the shortest path in some cases.
    /// 
    /// > Note: Some ``transitionType`` may exceed the limitations (e.g. `Back`, `Elastic`, and `Spring`). If interpolation occurs while overshooting the limitations, the result might possibly not respect the bone rest.
    /// 
    final public var useAngleLimitation: Bool {
        get {
            return is_using_angle_limitation ()
        }
        
        set {
            set_use_angle_limitation (newValue)
        }
        
    }
    
    /// If `true`, the limitations are spread from the bone symmetrically.
    /// 
    /// If `false`, the limitation can be specified separately for each side of the bone rest.
    /// 
    final public var symmetryLimitation: Bool {
        get {
            return is_limitation_symmetry ()
        }
        
        set {
            set_symmetry_limitation (newValue)
        }
        
    }
    
    /// The limit angle of the primary rotation when ``symmetryLimitation`` is `true`.
    final public var primaryLimitAngle: Double {
        get {
            return get_primary_limit_angle ()
        }
        
        set {
            set_primary_limit_angle (newValue)
        }
        
    }
    
    /// The threshold to start damping for ``primaryLimitAngle``. It provides non-linear (b-spline) interpolation, let it feel more resistance the more it rotate to the edge limit. This is useful for simulating the limits of human motion.
    /// 
    /// If `1.0`, no damping is performed. If `0.0`, damping is always performed.
    /// 
    final public var primaryDampThreshold: Double {
        get {
            return get_primary_damp_threshold ()
        }
        
        set {
            set_primary_damp_threshold (newValue)
        }
        
    }
    
    /// The limit angle of positive side of the primary rotation when ``symmetryLimitation`` is `false`.
    final public var primaryPositiveLimitAngle: Double {
        get {
            return get_primary_positive_limit_angle ()
        }
        
        set {
            set_primary_positive_limit_angle (newValue)
        }
        
    }
    
    /// The threshold to start damping for ``primaryPositiveLimitAngle``.
    final public var primaryPositiveDampThreshold: Double {
        get {
            return get_primary_positive_damp_threshold ()
        }
        
        set {
            set_primary_positive_damp_threshold (newValue)
        }
        
    }
    
    /// The limit angle of negative side of the primary rotation when ``symmetryLimitation`` is `false`.
    final public var primaryNegativeLimitAngle: Double {
        get {
            return get_primary_negative_limit_angle ()
        }
        
        set {
            set_primary_negative_limit_angle (newValue)
        }
        
    }
    
    /// The threshold to start damping for ``primaryNegativeLimitAngle``.
    final public var primaryNegativeDampThreshold: Double {
        get {
            return get_primary_negative_damp_threshold ()
        }
        
        set {
            set_primary_negative_damp_threshold (newValue)
        }
        
    }
    
    /// The limit angle of the secondary rotation when ``symmetryLimitation`` is `true`.
    final public var secondaryLimitAngle: Double {
        get {
            return get_secondary_limit_angle ()
        }
        
        set {
            set_secondary_limit_angle (newValue)
        }
        
    }
    
    /// The threshold to start damping for ``secondaryLimitAngle``.
    final public var secondaryDampThreshold: Double {
        get {
            return get_secondary_damp_threshold ()
        }
        
        set {
            set_secondary_damp_threshold (newValue)
        }
        
    }
    
    /// The limit angle of positive side of the secondary rotation when ``symmetryLimitation`` is `false`.
    final public var secondaryPositiveLimitAngle: Double {
        get {
            return get_secondary_positive_limit_angle ()
        }
        
        set {
            set_secondary_positive_limit_angle (newValue)
        }
        
    }
    
    /// The threshold to start damping for ``secondaryPositiveLimitAngle``.
    final public var secondaryPositiveDampThreshold: Double {
        get {
            return get_secondary_positive_damp_threshold ()
        }
        
        set {
            set_secondary_positive_damp_threshold (newValue)
        }
        
    }
    
    /// The limit angle of negative side of the secondary rotation when ``symmetryLimitation`` is `false`.
    final public var secondaryNegativeLimitAngle: Double {
        get {
            return get_secondary_negative_limit_angle ()
        }
        
        set {
            set_secondary_negative_limit_angle (newValue)
        }
        
    }
    
    /// The threshold to start damping for ``secondaryNegativeLimitAngle``.
    final public var secondaryNegativeDampThreshold: Double {
        get {
            return get_secondary_negative_damp_threshold ()
        }
        
        set {
            set_secondary_negative_damp_threshold (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_target_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_target_node")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_target_node(_ targetNode: NodePath) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: targetNode.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_target_node, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_target_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_target_node")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_target_node() -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_target_node, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_bone_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bone_name")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bone_name(_ boneName: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let boneName = GString(boneName)
        withUnsafePointer(to: boneName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_bone_name, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_bone_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bone_name")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bone_name() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_bone_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_bone: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bone")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bone(_ bone: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: bone) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_bone, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_bone: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bone")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bone() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_bone, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_forward_axis: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_forward_axis")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3199955933)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_forward_axis(_ forwardAxis: SkeletonModifier3D.BoneAxis) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: forwardAxis.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_forward_axis, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_forward_axis: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_forward_axis")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4076020284)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_forward_axis() -> SkeletonModifier3D.BoneAxis {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_forward_axis, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return SkeletonModifier3D.BoneAxis (rawValue: _result)!
    }
    
    fileprivate static let method_set_primary_rotation_axis: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_primary_rotation_axis")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1144690656)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_primary_rotation_axis(_ axis: Vector3.Axis) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: axis.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_primary_rotation_axis, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_primary_rotation_axis: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_primary_rotation_axis")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3050976882)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_primary_rotation_axis() -> Vector3.Axis {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_primary_rotation_axis, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return Vector3.Axis (rawValue: _result)!
    }
    
    fileprivate static let method_set_use_secondary_rotation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_secondary_rotation")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_secondary_rotation(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_use_secondary_rotation, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_using_secondary_rotation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_using_secondary_rotation")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_using_secondary_rotation() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_is_using_secondary_rotation, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_origin_safe_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_origin_safe_margin")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_origin_safe_margin(_ margin: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: margin) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_origin_safe_margin, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_origin_safe_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_origin_safe_margin")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_origin_safe_margin() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_origin_safe_margin, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_origin_from: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_origin_from")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4254695669)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_origin_from(_ originFrom: LookAtModifier3D.OriginFrom) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: originFrom.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_origin_from, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_origin_from: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_origin_from")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4057166297)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_origin_from() -> LookAtModifier3D.OriginFrom {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_origin_from, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return LookAtModifier3D.OriginFrom (rawValue: _result)!
    }
    
    fileprivate static let method_set_origin_bone_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_origin_bone_name")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_origin_bone_name(_ boneName: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let boneName = GString(boneName)
        withUnsafePointer(to: boneName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_origin_bone_name, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_origin_bone_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_origin_bone_name")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_origin_bone_name() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_origin_bone_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_origin_bone: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_origin_bone")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_origin_bone(_ bone: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: bone) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_origin_bone, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_origin_bone: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_origin_bone")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_origin_bone() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_origin_bone, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_origin_external_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_origin_external_node")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_origin_external_node(_ externalNode: NodePath) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: externalNode.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_origin_external_node, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_origin_external_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_origin_external_node")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_origin_external_node() -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_origin_external_node, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_origin_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_origin_offset")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_origin_offset(_ offset: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_origin_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_origin_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_origin_offset")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_origin_offset() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_origin_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_duration: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_duration")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_duration(_ duration: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: duration) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_duration, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_duration: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_duration")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_duration() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_duration, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_transition_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_transition_type")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1058637742)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_transition_type(_ transitionType: Tween.TransitionType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: transitionType.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_transition_type, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_transition_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_transition_type")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3842314528)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_transition_type() -> Tween.TransitionType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_transition_type, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return Tween.TransitionType (rawValue: _result)!
    }
    
    fileprivate static let method_set_ease_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_ease_type")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1208105857)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_ease_type(_ easeType: Tween.EaseType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: easeType.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_ease_type, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_ease_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_ease_type")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 631880200)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_ease_type() -> Tween.EaseType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_ease_type, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return Tween.EaseType (rawValue: _result)!
    }
    
    fileprivate static let method_set_use_angle_limitation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_angle_limitation")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_angle_limitation(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_use_angle_limitation, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_using_angle_limitation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_using_angle_limitation")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_using_angle_limitation() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_is_using_angle_limitation, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_symmetry_limitation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_symmetry_limitation")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_symmetry_limitation(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_symmetry_limitation, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_limitation_symmetry: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_limitation_symmetry")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_limitation_symmetry() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_is_limitation_symmetry, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_primary_limit_angle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_primary_limit_angle")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_primary_limit_angle(_ angle: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: angle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_primary_limit_angle, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_primary_limit_angle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_primary_limit_angle")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_primary_limit_angle() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_primary_limit_angle, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_primary_damp_threshold: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_primary_damp_threshold")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_primary_damp_threshold(_ power: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: power) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_primary_damp_threshold, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_primary_damp_threshold: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_primary_damp_threshold")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_primary_damp_threshold() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_primary_damp_threshold, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_primary_positive_limit_angle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_primary_positive_limit_angle")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_primary_positive_limit_angle(_ angle: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: angle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_primary_positive_limit_angle, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_primary_positive_limit_angle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_primary_positive_limit_angle")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_primary_positive_limit_angle() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_primary_positive_limit_angle, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_primary_positive_damp_threshold: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_primary_positive_damp_threshold")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_primary_positive_damp_threshold(_ power: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: power) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_primary_positive_damp_threshold, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_primary_positive_damp_threshold: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_primary_positive_damp_threshold")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_primary_positive_damp_threshold() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_primary_positive_damp_threshold, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_primary_negative_limit_angle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_primary_negative_limit_angle")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_primary_negative_limit_angle(_ angle: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: angle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_primary_negative_limit_angle, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_primary_negative_limit_angle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_primary_negative_limit_angle")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_primary_negative_limit_angle() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_primary_negative_limit_angle, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_primary_negative_damp_threshold: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_primary_negative_damp_threshold")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_primary_negative_damp_threshold(_ power: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: power) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_primary_negative_damp_threshold, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_primary_negative_damp_threshold: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_primary_negative_damp_threshold")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_primary_negative_damp_threshold() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_primary_negative_damp_threshold, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_secondary_limit_angle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_secondary_limit_angle")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_secondary_limit_angle(_ angle: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: angle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_secondary_limit_angle, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_secondary_limit_angle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_secondary_limit_angle")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_secondary_limit_angle() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_secondary_limit_angle, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_secondary_damp_threshold: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_secondary_damp_threshold")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_secondary_damp_threshold(_ power: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: power) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_secondary_damp_threshold, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_secondary_damp_threshold: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_secondary_damp_threshold")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_secondary_damp_threshold() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_secondary_damp_threshold, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_secondary_positive_limit_angle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_secondary_positive_limit_angle")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_secondary_positive_limit_angle(_ angle: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: angle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_secondary_positive_limit_angle, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_secondary_positive_limit_angle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_secondary_positive_limit_angle")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_secondary_positive_limit_angle() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_secondary_positive_limit_angle, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_secondary_positive_damp_threshold: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_secondary_positive_damp_threshold")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_secondary_positive_damp_threshold(_ power: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: power) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_secondary_positive_damp_threshold, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_secondary_positive_damp_threshold: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_secondary_positive_damp_threshold")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_secondary_positive_damp_threshold() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_secondary_positive_damp_threshold, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_secondary_negative_limit_angle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_secondary_negative_limit_angle")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_secondary_negative_limit_angle(_ angle: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: angle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_secondary_negative_limit_angle, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_secondary_negative_limit_angle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_secondary_negative_limit_angle")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_secondary_negative_limit_angle() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_secondary_negative_limit_angle, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_secondary_negative_damp_threshold: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_secondary_negative_damp_threshold")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_secondary_negative_damp_threshold(_ power: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: power) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LookAtModifier3D.method_set_secondary_negative_damp_threshold, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_secondary_negative_damp_threshold: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_secondary_negative_damp_threshold")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_secondary_negative_damp_threshold() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_secondary_negative_damp_threshold, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_interpolation_remaining: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_interpolation_remaining")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the remaining seconds of the time-based interpolation.
    public final func getInterpolationRemaining() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_get_interpolation_remaining, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_interpolating: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_interpolating")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns whether the time-based interpolation is running or not. If `true`, it is equivalent to ``getInterpolationRemaining()`` being `0`.
    /// 
    /// This is useful to determine whether a ``LookAtModifier3D`` can be removed safely.
    /// 
    public final func isInterpolating() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_is_interpolating, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_target_within_limitation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_target_within_limitation")
        return withUnsafePointer(to: &LookAtModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns whether the target is within the angle limitations. It is useful for unsetting the ``targetNode`` when the target is outside of the angle limitations.
    /// 
    /// > Note: The value is updated after ``SkeletonModifier3D/_processModification()``. To retrieve this value correctly, we recommend using the signal [signal SkeletonModifier3D.modification_processed].
    /// 
    public final func isTargetWithinLimitation() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LookAtModifier3D.method_is_target_within_limitation, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

