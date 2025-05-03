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


/// A modification that jiggles ``Bone2D`` nodes as they move towards a target.
/// 
/// This modification moves a series of bones, typically called a bone chain, towards a target. What makes this modification special is that it calculates the velocity and acceleration for each bone in the bone chain, and runs a very light physics-like calculation using the inputted values. This allows the bones to overshoot the target and "jiggle" around. It can be configured to act more like a spring, or sway around like cloth might.
/// 
/// This modification is useful for adding additional motion to things like hair, the edges of clothing, and more. It has several settings to that allow control over how the joint moves when the target moves.
/// 
/// > Note: The Jiggle modifier has `jiggle_joints`, which are the data objects that hold the data for each joint in the Jiggle chain. This is different from than ``Bone2D`` nodes! Jiggle joints hold the data needed for each ``Bone2D`` in the bone chain used by the Jiggle modification.
/// 
open class SkeletonModification2DJiggle: SkeletonModification2D {
    private static var className = StringName("SkeletonModification2DJiggle")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The NodePath to the node that is the target for the Jiggle modification. This node is what the Jiggle chain will attempt to rotate the bone chain to.
    final public var targetNodepath: NodePath {
        get {
            return get_target_node ()
        }
        
        set {
            set_target_node (newValue)
        }
        
    }
    
    /// The amount of Jiggle joints in the Jiggle modification.
    final public var jiggleDataChainLength: Int32 {
        get {
            return get_jiggle_data_chain_length ()
        }
        
        set {
            set_jiggle_data_chain_length (newValue)
        }
        
    }
    
    /// The default amount of stiffness assigned to the Jiggle joints, if they are not overridden. Higher values act more like springs, quickly moving into the correct position.
    final public var stiffness: Double {
        get {
            return get_stiffness ()
        }
        
        set {
            set_stiffness (newValue)
        }
        
    }
    
    /// The default amount of mass assigned to the Jiggle joints, if they are not overridden. Higher values lead to faster movements and more overshooting.
    final public var mass: Double {
        get {
            return get_mass ()
        }
        
        set {
            set_mass (newValue)
        }
        
    }
    
    /// The default amount of damping applied to the Jiggle joints, if they are not overridden. Higher values lead to more of the calculated velocity being applied.
    final public var damping: Double {
        get {
            return get_damping ()
        }
        
        set {
            set_damping (newValue)
        }
        
    }
    
    /// Whether the gravity vector, ``gravity``, should be applied to the Jiggle joints, assuming they are not overriding the default settings.
    final public var useGravity: Bool {
        get {
            return get_use_gravity ()
        }
        
        set {
            set_use_gravity (newValue)
        }
        
    }
    
    /// The default amount of gravity applied to the Jiggle joints, if they are not overridden.
    final public var gravity: Vector2 {
        get {
            return get_gravity ()
        }
        
        set {
            set_gravity (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_target_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_target_node")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_target_node(_ targetNodepath: NodePath) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: targetNodepath.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_set_target_node, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_target_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_target_node")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_target_node() -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_get_target_node, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_jiggle_data_chain_length: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_jiggle_data_chain_length")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_jiggle_data_chain_length(_ length: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: length) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_set_jiggle_data_chain_length, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_jiggle_data_chain_length: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_jiggle_data_chain_length")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_jiggle_data_chain_length() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_get_jiggle_data_chain_length, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_stiffness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_stiffness")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_stiffness(_ stiffness: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: stiffness) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_set_stiffness, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_stiffness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_stiffness")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_stiffness() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_get_stiffness, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_mass: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_mass")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mass(_ mass: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mass) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_set_mass, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_mass: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_mass")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mass() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_get_mass, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_damping: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_damping")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_damping(_ damping: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: damping) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_set_damping, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_damping: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_damping")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_damping() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_get_damping, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_use_gravity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_gravity")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_gravity(_ useGravity: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: useGravity) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_set_use_gravity, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_use_gravity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_use_gravity")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_use_gravity() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_get_use_gravity, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_gravity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_gravity")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_gravity(_ gravity: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: gravity) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_set_gravity, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_gravity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_gravity")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_gravity() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_get_gravity, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_use_colliders: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_colliders")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// If `true`, the Jiggle modifier will take colliders into account, keeping them from entering into these collision objects.
    public final func setUseColliders(_ useColliders: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: useColliders) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_set_use_colliders, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_use_colliders: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_use_colliders")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns whether the jiggle modifier is taking physics colliders into account when solving.
    public final func getUseColliders() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_get_use_colliders, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collision_mask")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Sets the collision mask that the Jiggle modifier will use when reacting to colliders, if the Jiggle modifier is set to take colliders into account.
    public final func setCollisionMask(_ collisionMask: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: collisionMask) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_set_collision_mask, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_mask")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the collision mask used by the Jiggle modifier when collisions are enabled.
    public final func getCollisionMask() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_get_collision_mask, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_jiggle_joint_bone2d_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_jiggle_joint_bone2d_node")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2761262315)!
            }
            
        }
        
    }()
    
    /// Sets the ``Bone2D`` node assigned to the Jiggle joint at `jointIdx`.
    public final func setJiggleJointBone2dNode(jointIdx: Int32, bone2dNode: NodePath) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: jointIdx) { pArg0 in
            withUnsafePointer(to: bone2dNode.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_set_jiggle_joint_bone2d_node, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_jiggle_joint_bone2d_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_jiggle_joint_bone2d_node")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 408788394)!
            }
            
        }
        
    }()
    
    /// Returns the ``Bone2D`` node assigned to the Jiggle joint at `jointIdx`.
    public final func getJiggleJointBone2dNode(jointIdx: Int32) -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        withUnsafePointer(to: jointIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_get_jiggle_joint_bone2d_node, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_jiggle_joint_bone_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_jiggle_joint_bone_index")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Sets the bone index, `boneIdx`, of the Jiggle joint at `jointIdx`. When possible, this will also update the `bone2d_node` of the Jiggle joint based on data provided by the linked skeleton.
    public final func setJiggleJointBoneIndex(jointIdx: Int32, boneIdx: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: jointIdx) { pArg0 in
            withUnsafePointer(to: boneIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_set_jiggle_joint_bone_index, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_jiggle_joint_bone_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_jiggle_joint_bone_index")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the index of the ``Bone2D`` node assigned to the Jiggle joint at `jointIdx`.
    public final func getJiggleJointBoneIndex(jointIdx: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: jointIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_get_jiggle_joint_bone_index, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_jiggle_joint_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_jiggle_joint_override")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Sets whether the Jiggle joint at `jointIdx` should override the default Jiggle joint settings. Setting this to `true` will make the joint use its own settings rather than the default ones attached to the modification.
    public final func setJiggleJointOverride(jointIdx: Int32, override: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: jointIdx) { pArg0 in
            withUnsafePointer(to: override) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_set_jiggle_joint_override, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_jiggle_joint_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_jiggle_joint_override")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns a boolean that indicates whether the joint at `jointIdx` is overriding the default Jiggle joint data defined in the modification.
    public final func getJiggleJointOverride(jointIdx: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: jointIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_get_jiggle_joint_override, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_jiggle_joint_stiffness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_jiggle_joint_stiffness")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Sets the of stiffness of the Jiggle joint at `jointIdx`.
    public final func setJiggleJointStiffness(jointIdx: Int32, stiffness: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: jointIdx) { pArg0 in
            withUnsafePointer(to: stiffness) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_set_jiggle_joint_stiffness, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_jiggle_joint_stiffness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_jiggle_joint_stiffness")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// Returns the stiffness of the Jiggle joint at `jointIdx`.
    public final func getJiggleJointStiffness(jointIdx: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: jointIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_get_jiggle_joint_stiffness, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_jiggle_joint_mass: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_jiggle_joint_mass")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Sets the of mass of the Jiggle joint at `jointIdx`.
    public final func setJiggleJointMass(jointIdx: Int32, mass: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: jointIdx) { pArg0 in
            withUnsafePointer(to: mass) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_set_jiggle_joint_mass, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_jiggle_joint_mass: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_jiggle_joint_mass")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// Returns the amount of mass of the jiggle joint at `jointIdx`.
    public final func getJiggleJointMass(jointIdx: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: jointIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_get_jiggle_joint_mass, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_jiggle_joint_damping: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_jiggle_joint_damping")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Sets the amount of damping of the Jiggle joint at `jointIdx`.
    public final func setJiggleJointDamping(jointIdx: Int32, damping: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: jointIdx) { pArg0 in
            withUnsafePointer(to: damping) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_set_jiggle_joint_damping, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_jiggle_joint_damping: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_jiggle_joint_damping")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// Returns the amount of damping of the Jiggle joint at `jointIdx`.
    public final func getJiggleJointDamping(jointIdx: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: jointIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_get_jiggle_joint_damping, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_jiggle_joint_use_gravity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_jiggle_joint_use_gravity")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Sets whether the Jiggle joint at `jointIdx` should use gravity.
    public final func setJiggleJointUseGravity(jointIdx: Int32, useGravity: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: jointIdx) { pArg0 in
            withUnsafePointer(to: useGravity) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_set_jiggle_joint_use_gravity, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_jiggle_joint_use_gravity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_jiggle_joint_use_gravity")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns a boolean that indicates whether the joint at `jointIdx` is using gravity or not.
    public final func getJiggleJointUseGravity(jointIdx: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: jointIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_get_jiggle_joint_use_gravity, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_jiggle_joint_gravity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_jiggle_joint_gravity")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 163021252)!
            }
            
        }
        
    }()
    
    /// Sets the gravity vector of the Jiggle joint at `jointIdx`.
    public final func setJiggleJointGravity(jointIdx: Int32, gravity: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: jointIdx) { pArg0 in
            withUnsafePointer(to: gravity) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_set_jiggle_joint_gravity, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_jiggle_joint_gravity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_jiggle_joint_gravity")
        return withUnsafePointer(to: &SkeletonModification2DJiggle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2299179447)!
            }
            
        }
        
    }()
    
    /// Returns a ``Vector2`` representing the amount of gravity the Jiggle joint at `jointIdx` is influenced by.
    public final func getJiggleJointGravity(jointIdx: Int32) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: jointIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2DJiggle.method_get_jiggle_joint_gravity, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
}

