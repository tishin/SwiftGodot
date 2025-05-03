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


/// A ``SkeletonModifier3D`` to apply inertial wavering to bone chains.
/// 
/// This ``SkeletonModifier3D`` can be used to wiggle hair, cloth, and tails. This modifier behaves differently from ``PhysicalBoneSimulator3D`` as it attempts to return the original pose after modification.
/// 
/// If you setup ``setRootBone(index:bone:)`` and ``setEndBone(index:bone:)``, it is treated as one bone chain. Note that it does not support a branched chain like Y-shaped chains.
/// 
/// When a bone chain is created, an array is generated from the bones that exist in between and listed in the joint list.
/// 
/// Several properties can be applied to each joint, such as ``setJointStiffness(index:joint:stiffness:)``, ``setJointDrag(index:joint:drag:)``, and ``setJointGravity(index:joint:gravity:)``.
/// 
/// For simplicity, you can set values to all joints at the same time by using a ``Curve``. If you want to specify detailed values individually, set ``setIndividualConfig(index:enabled:)`` to `true`.
/// 
/// For physical simulation, ``SpringBoneSimulator3D`` can have children as self-standing collisions that are not related to ``PhysicsServer3D``, see also ``SpringBoneCollision3D``.
/// 
/// > Warning: A scaled ``SpringBoneSimulator3D`` will likely not behave as expected. Make sure that the parent ``Skeleton3D`` and its bones are not scaled.
/// 
open class SpringBoneSimulator3D: SkeletonModifier3D {
    private static var className = StringName("SpringBoneSimulator3D")
    override open class var godotClassName: StringName { className }
    public enum BoneDirection: Int64, CaseIterable {
        /// Enumerated value for the +X axis.
        case plusX = 0 // BONE_DIRECTION_PLUS_X
        /// Enumerated value for the -X axis.
        case minusX = 1 // BONE_DIRECTION_MINUS_X
        /// Enumerated value for the +Y axis.
        case plusY = 2 // BONE_DIRECTION_PLUS_Y
        /// Enumerated value for the -Y axis.
        case minusY = 3 // BONE_DIRECTION_MINUS_Y
        /// Enumerated value for the +Z axis.
        case plusZ = 4 // BONE_DIRECTION_PLUS_Z
        /// Enumerated value for the -Z axis.
        case minusZ = 5 // BONE_DIRECTION_MINUS_Z
        /// Enumerated value for the axis from a parent bone to the child bone.
        case fromParent = 6 // BONE_DIRECTION_FROM_PARENT
    }
    
    public enum CenterFrom: Int64, CaseIterable {
        /// The world origin is defined as center.
        case worldOrigin = 0 // CENTER_FROM_WORLD_ORIGIN
        /// The ``Node3D`` specified by ``setCenterNode(index:nodePath:)`` is defined as center.
        /// 
        /// If ``Node3D`` is not found, the parent ``Skeleton3D`` is treated as center.
        /// 
        case node = 1 // CENTER_FROM_NODE
        /// The bone pose origin of the parent ``Skeleton3D`` specified by ``setCenterBone(index:bone:)`` is defined as center.
        /// 
        /// If ``Node3D`` is not found, the parent ``Skeleton3D`` is treated as center.
        /// 
        case bone = 2 // CENTER_FROM_BONE
    }
    
    public enum RotationAxis: Int64, CaseIterable {
        /// Enumerated value for the rotation of the X axis.
        case x = 0 // ROTATION_AXIS_X
        /// Enumerated value for the rotation of the Y axis.
        case y = 1 // ROTATION_AXIS_Y
        /// Enumerated value for the rotation of the Z axis.
        case z = 2 // ROTATION_AXIS_Z
        /// Enumerated value for the unconstrained rotation.
        case all = 3 // ROTATION_AXIS_ALL
    }
    
    
    /* Properties */
    
    /// The number of settings.
    final public var settingCount: Int32 {
        get {
            return get_setting_count ()
        }
        
        set {
            set_setting_count (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_root_bone_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_root_bone_name")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Sets the root bone name of the bone chain.
    public final func setRootBoneName(index: Int32, boneName: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            let boneName = GString(boneName)
            withUnsafePointer(to: boneName.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_root_bone_name, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_root_bone_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_root_bone_name")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the root bone name of the bone chain.
    public final func getRootBoneName(index: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_root_bone_name, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_set_root_bone: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_root_bone")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Sets the root bone index of the bone chain.
    public final func setRootBone(index: Int32, bone: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: bone) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_root_bone, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_root_bone: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_root_bone")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the root bone index of the bone chain.
    public final func getRootBone(index: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_root_bone, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_end_bone_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_end_bone_name")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Sets the end bone name of the bone chain.
    /// 
    /// > Note: End bone must be the root bone or a child of the root bone. If they are the same, the tail must be extended by ``setExtendEndBone(index:enabled:)`` to jiggle the bone.
    /// 
    public final func setEndBoneName(index: Int32, boneName: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            let boneName = GString(boneName)
            withUnsafePointer(to: boneName.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_end_bone_name, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_end_bone_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_end_bone_name")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the end bone name of the bone chain.
    public final func getEndBoneName(index: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_end_bone_name, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_set_end_bone: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_end_bone")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Sets the end bone index of the bone chain.
    public final func setEndBone(index: Int32, bone: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: bone) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_end_bone, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_end_bone: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_end_bone")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the end bone index of the bone chain.
    public final func getEndBone(index: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_end_bone, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_extend_end_bone: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_extend_end_bone")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// If `enabled` is `true`, the end bone is extended to have the tail.
    /// 
    /// The extended tail config is allocated to the last element in the joint list.
    /// 
    /// In other words, if you set `enabled` is `false`, the config of last element in the joint list has no effect in the simulated result.
    /// 
    public final func setExtendEndBone(index: Int32, enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: enabled) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_extend_end_bone, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_end_bone_extended: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_end_bone_extended")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the end bone is extended to have the tail.
    public final func isEndBoneExtended(index: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_is_end_bone_extended, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_end_bone_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_end_bone_direction")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 204796492)!
            }
            
        }
        
    }()
    
    /// Sets the end bone tail direction of the bone chain when ``isEndBoneExtended(index:)`` is `true`.
    public final func setEndBoneDirection(index: Int32, boneDirection: SpringBoneSimulator3D.BoneDirection) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: boneDirection.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_end_bone_direction, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_end_bone_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_end_bone_direction")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2438315700)!
            }
            
        }
        
    }()
    
    /// Returns the end bone's tail direction of the bone chain when ``isEndBoneExtended(index:)`` is `true`.
    public final func getEndBoneDirection(index: Int32) -> SpringBoneSimulator3D.BoneDirection {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_end_bone_direction, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return SpringBoneSimulator3D.BoneDirection (rawValue: _result)!
    }
    
    fileprivate static let method_set_end_bone_length: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_end_bone_length")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Sets the end bone tail length of the bone chain when ``isEndBoneExtended(index:)`` is `true`.
    public final func setEndBoneLength(index: Int32, length: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: length) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_end_bone_length, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_end_bone_length: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_end_bone_length")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// Returns the end bone's tail length of the bone chain when ``isEndBoneExtended(index:)`` is `true`.
    public final func getEndBoneLength(index: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_end_bone_length, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_center_from: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_center_from")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2551505749)!
            }
            
        }
        
    }()
    
    /// Sets what the center originates from in the bone chain.
    /// 
    /// Bone movement is calculated based on the difference in relative distance between center and bone in the previous and next frames.
    /// 
    /// For example, if the parent ``Skeleton3D`` is used as the center, the bones are considered to have not moved if the ``Skeleton3D`` moves in the world.
    /// 
    /// In this case, only a change in the bone pose is considered to be a bone movement.
    /// 
    public final func setCenterFrom(index: Int32, centerFrom: SpringBoneSimulator3D.CenterFrom) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: centerFrom.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_center_from, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_center_from: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_center_from")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2721930813)!
            }
            
        }
        
    }()
    
    /// Returns what the center originates from in the bone chain.
    public final func getCenterFrom(index: Int32) -> SpringBoneSimulator3D.CenterFrom {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_center_from, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return SpringBoneSimulator3D.CenterFrom (rawValue: _result)!
    }
    
    fileprivate static let method_set_center_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_center_node")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2761262315)!
            }
            
        }
        
    }()
    
    /// Sets the center node path of the bone chain.
    public final func setCenterNode(index: Int32, nodePath: NodePath) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: nodePath.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_center_node, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_center_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_center_node")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 408788394)!
            }
            
        }
        
    }()
    
    /// Returns the center node path of the bone chain.
    public final func getCenterNode(index: Int32) -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_center_node, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_center_bone_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_center_bone_name")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Sets the center bone name of the bone chain.
    public final func setCenterBoneName(index: Int32, boneName: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            let boneName = GString(boneName)
            withUnsafePointer(to: boneName.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_center_bone_name, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_center_bone_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_center_bone_name")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the center bone name of the bone chain.
    public final func getCenterBoneName(index: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_center_bone_name, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_set_center_bone: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_center_bone")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Sets the center bone index of the bone chain.
    public final func setCenterBone(index: Int32, bone: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: bone) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_center_bone, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_center_bone: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_center_bone")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the center bone index of the bone chain.
    public final func getCenterBone(index: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_center_bone, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_radius: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_radius")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Sets the joint radius of the bone chain. It is used to move and slide with the ``SpringBoneCollision3D`` in the collision list.
    /// 
    /// The value is scaled by ``setRadiusDampingCurve(index:curve:)`` and cached in each joint setting in the joint list.
    /// 
    public final func setRadius(index: Int32, radius: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: radius) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_radius, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_radius: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_radius")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// Returns the joint radius of the bone chain.
    public final func getRadius(index: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_radius, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_rotation_axis: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_rotation_axis")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3534169209)!
            }
            
        }
        
    }()
    
    /// Sets the rotation axis of the bone chain. If sets a specific axis, it acts like a hinge joint.
    /// 
    /// The value is cached in each joint setting in the joint list.
    /// 
    /// > Note: The rotation axis and the forward vector shouldn't be colinear to avoid unintended rotation since ``SpringBoneSimulator3D`` does not factor in twisting forces.
    /// 
    public final func setRotationAxis(index: Int32, axis: SpringBoneSimulator3D.RotationAxis) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: axis.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_rotation_axis, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_rotation_axis: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_rotation_axis")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 748837671)!
            }
            
        }
        
    }()
    
    /// Returns the rotation axis of the bone chain.
    public final func getRotationAxis(index: Int32) -> SpringBoneSimulator3D.RotationAxis {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_rotation_axis, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return SpringBoneSimulator3D.RotationAxis (rawValue: _result)!
    }
    
    fileprivate static let method_set_radius_damping_curve: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_radius_damping_curve")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1447180063)!
            }
            
        }
        
    }()
    
    /// Sets the joint radius damping curve of the bone chain.
    public final func setRadiusDampingCurve(index: Int32, curve: Curve?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: curve?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_radius_damping_curve, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_radius_damping_curve: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_radius_damping_curve")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 747537754)!
            }
            
        }
        
    }()
    
    /// Returns the joint radius damping curve of the bone chain.
    public final func getRadiusDampingCurve(index: Int32) -> Curve? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_radius_damping_curve, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_stiffness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_stiffness")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Sets the stiffness force of the bone chain. The greater the value, the faster it recovers to its initial pose.
    /// 
    /// If `stiffness` is `0`, the modified pose will not return to the original pose.
    /// 
    /// The value is scaled by ``setStiffnessDampingCurve(index:curve:)`` and cached in each joint setting in the joint list.
    /// 
    public final func setStiffness(index: Int32, stiffness: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: stiffness) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_stiffness, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_stiffness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_stiffness")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// Returns the stiffness force of the bone chain.
    public final func getStiffness(index: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_stiffness, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_stiffness_damping_curve: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_stiffness_damping_curve")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1447180063)!
            }
            
        }
        
    }()
    
    /// Sets the stiffness force damping curve of the bone chain.
    public final func setStiffnessDampingCurve(index: Int32, curve: Curve?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: curve?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_stiffness_damping_curve, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_stiffness_damping_curve: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_stiffness_damping_curve")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 747537754)!
            }
            
        }
        
    }()
    
    /// Returns the stiffness force damping curve of the bone chain.
    public final func getStiffnessDampingCurve(index: Int32) -> Curve? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_stiffness_damping_curve, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_drag: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_drag")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Sets the drag force of the bone chain. The greater the value, the more suppressed the wiggling.
    /// 
    /// The value is scaled by ``setDragDampingCurve(index:curve:)`` and cached in each joint setting in the joint list.
    /// 
    public final func setDrag(index: Int32, drag: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: drag) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_drag, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_drag: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_drag")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// Returns the drag force damping curve of the bone chain.
    public final func getDrag(index: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_drag, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_drag_damping_curve: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_drag_damping_curve")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1447180063)!
            }
            
        }
        
    }()
    
    /// Sets the drag force damping curve of the bone chain.
    public final func setDragDampingCurve(index: Int32, curve: Curve?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: curve?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_drag_damping_curve, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_drag_damping_curve: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_drag_damping_curve")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 747537754)!
            }
            
        }
        
    }()
    
    /// Returns the drag force damping curve of the bone chain.
    public final func getDragDampingCurve(index: Int32) -> Curve? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_drag_damping_curve, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_gravity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_gravity")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Sets the gravity amount of the bone chain. This value is not an acceleration, but a constant velocity of movement in ``setGravityDirection(index:gravityDirection:)``.
    /// 
    /// If `gravity` is not `0`, the modified pose will not return to the original pose since it is always affected by gravity.
    /// 
    /// The value is scaled by ``setGravityDampingCurve(index:curve:)`` and cached in each joint setting in the joint list.
    /// 
    public final func setGravity(index: Int32, gravity: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: gravity) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_gravity, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_gravity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_gravity")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// Returns the gravity amount of the bone chain.
    public final func getGravity(index: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_gravity, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_gravity_damping_curve: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_gravity_damping_curve")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1447180063)!
            }
            
        }
        
    }()
    
    /// Sets the gravity amount damping curve of the bone chain.
    public final func setGravityDampingCurve(index: Int32, curve: Curve?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: curve?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_gravity_damping_curve, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_gravity_damping_curve: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_gravity_damping_curve")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 747537754)!
            }
            
        }
        
    }()
    
    /// Returns the gravity amount damping curve of the bone chain.
    public final func getGravityDampingCurve(index: Int32) -> Curve? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_gravity_damping_curve, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_gravity_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_gravity_direction")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1530502735)!
            }
            
        }
        
    }()
    
    /// Sets the gravity direction of the bone chain. This value is internally normalized and then multiplied by ``setGravity(index:gravity:)``.
    /// 
    /// The value is cached in each joint setting in the joint list.
    /// 
    public final func setGravityDirection(index: Int32, gravityDirection: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: gravityDirection) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_gravity_direction, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_gravity_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_gravity_direction")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 711720468)!
            }
            
        }
        
    }()
    
    /// Returns the gravity direction of the bone chain.
    public final func getGravityDirection(index: Int32) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_gravity_direction, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_setting_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_setting_count")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_setting_count(_ count: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: count) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_setting_count, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_setting_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_setting_count")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_setting_count() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_setting_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_clear_settings: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_settings")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears all settings.
    public final func clearSettings() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_clear_settings, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_individual_config: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_individual_config")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// If `enabled` is `true`, the config can be edited individually for each joint.
    public final func setIndividualConfig(index: Int32, enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: enabled) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_individual_config, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_config_individual: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_config_individual")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the config can be edited individually for each joint.
    public final func isConfigIndividual(index: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_is_config_individual, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_joint_bone_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_joint_bone_name")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1391810591)!
            }
            
        }
        
    }()
    
    /// Returns the bone name at `joint` in the bone chain's joint list.
    public final func getJointBoneName(index: Int32, joint: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: joint) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_joint_bone_name, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_joint_bone: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_joint_bone")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3175239445)!
            }
            
        }
        
    }()
    
    /// Returns the bone index at `joint` in the bone chain's joint list.
    public final func getJointBone(index: Int32, joint: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: joint) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_joint_bone, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_joint_rotation_axis: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_joint_rotation_axis")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4224018032)!
            }
            
        }
        
    }()
    
    /// Sets the rotation axis at `joint` in the bone chain's joint list when ``isConfigIndividual(index:)`` is `true`.
    public final func setJointRotationAxis(index: Int32, joint: Int32, axis: SpringBoneSimulator3D.RotationAxis) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: joint) { pArg1 in
                withUnsafePointer(to: axis.rawValue) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_joint_rotation_axis, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_joint_rotation_axis: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_joint_rotation_axis")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2488679199)!
            }
            
        }
        
    }()
    
    /// Returns the rotation axis at `joint` in the bone chain's joint list.
    public final func getJointRotationAxis(index: Int32, joint: Int32) -> SpringBoneSimulator3D.RotationAxis {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: joint) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_joint_rotation_axis, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return SpringBoneSimulator3D.RotationAxis (rawValue: _result)!
    }
    
    fileprivate static let method_set_joint_radius: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_joint_radius")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3506521499)!
            }
            
        }
        
    }()
    
    /// Sets the joint radius at `joint` in the bone chain's joint list when ``isConfigIndividual(index:)`` is `true`.
    public final func setJointRadius(index: Int32, joint: Int32, radius: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: joint) { pArg1 in
                withUnsafePointer(to: radius) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_joint_radius, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_joint_radius: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_joint_radius")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3085491603)!
            }
            
        }
        
    }()
    
    /// Returns the radius at `joint` in the bone chain's joint list.
    public final func getJointRadius(index: Int32, joint: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: joint) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_joint_radius, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_joint_stiffness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_joint_stiffness")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3506521499)!
            }
            
        }
        
    }()
    
    /// Sets the stiffness force at `joint` in the bone chain's joint list when ``isConfigIndividual(index:)`` is `true`.
    public final func setJointStiffness(index: Int32, joint: Int32, stiffness: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: joint) { pArg1 in
                withUnsafePointer(to: stiffness) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_joint_stiffness, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_joint_stiffness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_joint_stiffness")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3085491603)!
            }
            
        }
        
    }()
    
    /// Returns the stiffness force at `joint` in the bone chain's joint list.
    public final func getJointStiffness(index: Int32, joint: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: joint) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_joint_stiffness, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_joint_drag: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_joint_drag")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3506521499)!
            }
            
        }
        
    }()
    
    /// Sets the drag force at `joint` in the bone chain's joint list when ``isConfigIndividual(index:)`` is `true`.
    public final func setJointDrag(index: Int32, joint: Int32, drag: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: joint) { pArg1 in
                withUnsafePointer(to: drag) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_joint_drag, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_joint_drag: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_joint_drag")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3085491603)!
            }
            
        }
        
    }()
    
    /// Returns the drag force at `joint` in the bone chain's joint list.
    public final func getJointDrag(index: Int32, joint: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: joint) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_joint_drag, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_joint_gravity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_joint_gravity")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3506521499)!
            }
            
        }
        
    }()
    
    /// Sets the gravity amount at `joint` in the bone chain's joint list when ``isConfigIndividual(index:)`` is `true`.
    public final func setJointGravity(index: Int32, joint: Int32, gravity: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: joint) { pArg1 in
                withUnsafePointer(to: gravity) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_joint_gravity, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_joint_gravity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_joint_gravity")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3085491603)!
            }
            
        }
        
    }()
    
    /// Returns the gravity amount at `joint` in the bone chain's joint list.
    public final func getJointGravity(index: Int32, joint: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: joint) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_joint_gravity, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_joint_gravity_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_joint_gravity_direction")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2866752138)!
            }
            
        }
        
    }()
    
    /// Sets the gravity direction at `joint` in the bone chain's joint list when ``isConfigIndividual(index:)`` is `true`.
    public final func setJointGravityDirection(index: Int32, joint: Int32, gravityDirection: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: joint) { pArg1 in
                withUnsafePointer(to: gravityDirection) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_joint_gravity_direction, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_joint_gravity_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_joint_gravity_direction")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1592972041)!
            }
            
        }
        
    }()
    
    /// Returns the gravity direction at `joint` in the bone chain's joint list.
    public final func getJointGravityDirection(index: Int32, joint: Int32) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: joint) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_joint_gravity_direction, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_joint_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_joint_count")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the joint count of the bone chain's joint list.
    public final func getJointCount(index: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_joint_count, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_enable_all_child_collisions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_enable_all_child_collisions")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// If sets `enabled` to `true`, the all child ``SpringBoneCollision3D``s are collided and ``setExcludeCollisionPath(index:collision:nodePath:)`` is enabled as an exclusion list at `index` in the settings.
    /// 
    /// If sets `enabled` to `false`, you need to manually register all valid collisions with ``setCollisionPath(index:collision:nodePath:)``.
    /// 
    public final func setEnableAllChildCollisions(index: Int32, enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: enabled) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_enable_all_child_collisions, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_are_all_child_collisions_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("are_all_child_collisions_enabled")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the all child ``SpringBoneCollision3D``s are contained in the collision list at `index` in the settings.
    public final func areAllChildCollisionsEnabled(index: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_are_all_child_collisions_enabled, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_exclude_collision_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_exclude_collision_path")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 132481804)!
            }
            
        }
        
    }()
    
    /// Sets the node path of the ``SpringBoneCollision3D`` at `collision` in the bone chain's exclude collision list when ``areAllChildCollisionsEnabled(index:)`` is `true`.
    public final func setExcludeCollisionPath(index: Int32, collision: Int32, nodePath: NodePath) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: collision) { pArg1 in
                withUnsafePointer(to: nodePath.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_exclude_collision_path, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_exclude_collision_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_exclude_collision_path")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 464924783)!
            }
            
        }
        
    }()
    
    /// Returns the node path of the ``SpringBoneCollision3D`` at `collision` in the bone chain's exclude collision list when ``areAllChildCollisionsEnabled(index:)`` is `true`.
    public final func getExcludeCollisionPath(index: Int32, collision: Int32) -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: collision) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_exclude_collision_path, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_exclude_collision_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_exclude_collision_count")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Sets the number of exclude collisions in the exclude collision list at `index` in the settings when ``areAllChildCollisionsEnabled(index:)`` is `true`.
    public final func setExcludeCollisionCount(index: Int32, count: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: count) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_exclude_collision_count, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_exclude_collision_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_exclude_collision_count")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the exclude collision count of the bone chain's exclude collision list when ``areAllChildCollisionsEnabled(index:)`` is `true`.
    public final func getExcludeCollisionCount(index: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_exclude_collision_count, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_clear_exclude_collisions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_exclude_collisions")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Clears all exclude collisions from the collision list at `index` in the settings when ``areAllChildCollisionsEnabled(index:)`` is `true`.
    public final func clearExcludeCollisions(index: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_clear_exclude_collisions, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_collision_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collision_path")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 132481804)!
            }
            
        }
        
    }()
    
    /// Sets the node path of the ``SpringBoneCollision3D`` at `collision` in the bone chain's collision list when ``areAllChildCollisionsEnabled(index:)`` is `false`.
    public final func setCollisionPath(index: Int32, collision: Int32, nodePath: NodePath) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: collision) { pArg1 in
                withUnsafePointer(to: nodePath.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_collision_path, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_collision_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_path")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 464924783)!
            }
            
        }
        
    }()
    
    /// Returns the node path of the ``SpringBoneCollision3D`` at `collision` in the bone chain's collision list when ``areAllChildCollisionsEnabled(index:)`` is `false`.
    public final func getCollisionPath(index: Int32, collision: Int32) -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: collision) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_collision_path, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_collision_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collision_count")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Sets the number of collisions in the collision list at `index` in the settings when ``areAllChildCollisionsEnabled(index:)`` is `false`.
    public final func setCollisionCount(index: Int32, count: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: count) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_set_collision_count, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_collision_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_count")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the collision count of the bone chain's collision list when ``areAllChildCollisionsEnabled(index:)`` is `false`.
    public final func getCollisionCount(index: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_get_collision_count, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_clear_collisions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_collisions")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Clears all collisions from the collision list at `index` in the settings when ``areAllChildCollisionsEnabled(index:)`` is `false`.
    public final func clearCollisions(index: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_clear_collisions, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_reset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("reset")
        return withUnsafePointer(to: &SpringBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Resets a simulating state with respect to the current bone pose.
    /// 
    /// It is useful to prevent the simulation result getting violent. For example, calling this immediately after a call to ``AnimationPlayer/play(name:customBlend:customSpeed:fromEnd:)`` without a fading, or within the previous [signal SkeletonModifier3D.modification_processed] signal if it's condition changes significantly.
    /// 
    public final func reset() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(SpringBoneSimulator3D.method_reset, handle, nil, nil)
        
    }
    
}

