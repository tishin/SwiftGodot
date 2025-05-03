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


/// Base class for a profile of a virtual skeleton used as a target for retargeting.
/// 
/// This resource is used in ``EditorScenePostImport``. Some parameters are referring to bones in ``Skeleton3D``, ``Skin``, ``Animation``, and some other nodes are rewritten based on the parameters of ``SkeletonProfile``.
/// 
/// > Note: These parameters need to be set only when creating a custom profile. In ``SkeletonProfileHumanoid``, they are defined internally as read-only values.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``profileUpdated``
open class SkeletonProfile: Resource {
    private static var className = StringName("SkeletonProfile")
    override open class var godotClassName: StringName { className }
    public enum TailDirection: Int64, CaseIterable {
        /// Direction to the average coordinates of bone children.
        case averageChildren = 0 // TAIL_DIRECTION_AVERAGE_CHILDREN
        /// Direction to the coordinates of specified bone child.
        case specificChild = 1 // TAIL_DIRECTION_SPECIFIC_CHILD
        /// Direction is not calculated.
        case end = 2 // TAIL_DIRECTION_END
    }
    
    
    /* Properties */
    
    /// A bone name that will be used as the root bone in ``AnimationTree``. This should be the bone of the parent of hips that exists at the world origin.
    final public var rootBone: StringName {
        get {
            return get_root_bone ()
        }
        
        set {
            set_root_bone (newValue)
        }
        
    }
    
    /// A bone name which will use model's height as the coefficient for normalization. For example, ``SkeletonProfileHumanoid`` defines it as `Hips`.
    final public var scaleBaseBone: StringName {
        get {
            return get_scale_base_bone ()
        }
        
        set {
            set_scale_base_bone (newValue)
        }
        
    }
    
    /// The amount of groups of bones in retargeting section's ``BoneMap`` editor. For example, ``SkeletonProfileHumanoid`` has 4 groups.
    /// 
    /// This property exists to separate the bone list into several sections in the editor.
    /// 
    final public var groupSize: Int32 {
        get {
            return get_group_size ()
        }
        
        set {
            set_group_size (newValue)
        }
        
    }
    
    /// The amount of bones in retargeting section's ``BoneMap`` editor. For example, ``SkeletonProfileHumanoid`` has 56 bones.
    /// 
    /// The size of elements in ``BoneMap`` updates when changing this property in it's assigned ``SkeletonProfile``.
    /// 
    final public var boneSize: Int32 {
        get {
            return get_bone_size ()
        }
        
        set {
            set_bone_size (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_root_bone: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_root_bone")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_root_bone(_ boneName: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: boneName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonProfile.method_set_root_bone, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_root_bone: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_root_bone")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2737447660)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_root_bone() -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(SkeletonProfile.method_get_root_bone, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_scale_base_bone: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_scale_base_bone")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_scale_base_bone(_ boneName: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: boneName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonProfile.method_set_scale_base_bone, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_scale_base_bone: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_scale_base_bone")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2737447660)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_scale_base_bone() -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(SkeletonProfile.method_get_scale_base_bone, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_group_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_group_size")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_group_size(_ size: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonProfile.method_set_group_size, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_group_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_group_size")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_group_size() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(SkeletonProfile.method_get_group_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_group_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_group_name")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 659327637)!
            }
            
        }
        
    }()
    
    /// Returns the name of the group at `groupIdx` that will be the drawing group in the ``BoneMap`` editor.
    public final func getGroupName(groupIdx: Int32) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: groupIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonProfile.method_get_group_name, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_group_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_group_name")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3780747571)!
            }
            
        }
        
    }()
    
    /// Sets the name of the group at `groupIdx` that will be the drawing group in the ``BoneMap`` editor.
    public final func setGroupName(groupIdx: Int32, groupName: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: groupIdx) { pArg0 in
            withUnsafePointer(to: groupName.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SkeletonProfile.method_set_group_name, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3536238170)!
            }
            
        }
        
    }()
    
    /// Returns the texture of the group at `groupIdx` that will be the drawing group background image in the ``BoneMap`` editor.
    public final func getTexture(groupIdx: Int32) -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: groupIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonProfile.method_get_texture, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_texture")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 666127730)!
            }
            
        }
        
    }()
    
    /// Sets the texture of the group at `groupIdx` that will be the drawing group background image in the ``BoneMap`` editor.
    public final func setTexture(groupIdx: Int32, texture: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: groupIdx) { pArg0 in
            withUnsafePointer(to: texture?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SkeletonProfile.method_set_texture, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_bone_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bone_size")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bone_size(_ size: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonProfile.method_set_bone_size, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_bone_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bone_size")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bone_size() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(SkeletonProfile.method_get_bone_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_find_bone: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("find_bone")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2458036349)!
            }
            
        }
        
    }()
    
    /// Returns the bone index that matches `boneName` as its name.
    public final func findBone(boneName: StringName) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: boneName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonProfile.method_find_bone, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_bone_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bone_name")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 659327637)!
            }
            
        }
        
    }()
    
    /// Returns the name of the bone at `boneIdx` that will be the key name in the ``BoneMap``.
    /// 
    /// In the retargeting process, the returned bone name is the bone name of the target skeleton.
    /// 
    public final func getBoneName(boneIdx: Int32) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: boneIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonProfile.method_get_bone_name, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_bone_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bone_name")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3780747571)!
            }
            
        }
        
    }()
    
    /// Sets the name of the bone at `boneIdx` that will be the key name in the ``BoneMap``.
    /// 
    /// In the retargeting process, the setting bone name is the bone name of the target skeleton.
    /// 
    public final func setBoneName(boneIdx: Int32, boneName: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: boneIdx) { pArg0 in
            withUnsafePointer(to: boneName.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SkeletonProfile.method_set_bone_name, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_bone_parent: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bone_parent")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 659327637)!
            }
            
        }
        
    }()
    
    /// Returns the name of the bone which is the parent to the bone at `boneIdx`. The result is empty if the bone has no parent.
    public final func getBoneParent(boneIdx: Int32) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: boneIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonProfile.method_get_bone_parent, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_bone_parent: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bone_parent")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3780747571)!
            }
            
        }
        
    }()
    
    /// Sets the bone with name `boneParent` as the parent of the bone at `boneIdx`. If an empty string is passed, then the bone has no parent.
    public final func setBoneParent(boneIdx: Int32, boneParent: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: boneIdx) { pArg0 in
            withUnsafePointer(to: boneParent.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SkeletonProfile.method_set_bone_parent, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tail_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tail_direction")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2675997574)!
            }
            
        }
        
    }()
    
    /// Returns the tail direction of the bone at `boneIdx`.
    public final func getTailDirection(boneIdx: Int32) -> SkeletonProfile.TailDirection {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: boneIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonProfile.method_get_tail_direction, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return SkeletonProfile.TailDirection (rawValue: _result)!
    }
    
    fileprivate static let method_set_tail_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tail_direction")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1231951015)!
            }
            
        }
        
    }()
    
    /// Sets the tail direction of the bone at `boneIdx`.
    /// 
    /// > Note: This only specifies the method of calculation. The actual coordinates required should be stored in an external skeleton, so the calculation itself needs to be done externally.
    /// 
    public final func setTailDirection(boneIdx: Int32, tailDirection: SkeletonProfile.TailDirection) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: boneIdx) { pArg0 in
            withUnsafePointer(to: tailDirection.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SkeletonProfile.method_set_tail_direction, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_bone_tail: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bone_tail")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 659327637)!
            }
            
        }
        
    }()
    
    /// Returns the name of the bone which is the tail of the bone at `boneIdx`.
    public final func getBoneTail(boneIdx: Int32) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: boneIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonProfile.method_get_bone_tail, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_bone_tail: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bone_tail")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3780747571)!
            }
            
        }
        
    }()
    
    /// Sets the bone with name `boneTail` as the tail of the bone at `boneIdx`.
    public final func setBoneTail(boneIdx: Int32, boneTail: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: boneIdx) { pArg0 in
            withUnsafePointer(to: boneTail.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SkeletonProfile.method_set_bone_tail, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_reference_pose: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_reference_pose")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1965739696)!
            }
            
        }
        
    }()
    
    /// Returns the reference pose transform for bone `boneIdx`.
    public final func getReferencePose(boneIdx: Int32) -> Transform3D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform3D = Transform3D ()
        withUnsafePointer(to: boneIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonProfile.method_get_reference_pose, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_reference_pose: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_reference_pose")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3616898986)!
            }
            
        }
        
    }()
    
    /// Sets the reference pose transform for bone `boneIdx`.
    public final func setReferencePose(boneIdx: Int32, boneName: Transform3D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: boneIdx) { pArg0 in
            withUnsafePointer(to: boneName) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SkeletonProfile.method_set_reference_pose, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_handle_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_handle_offset")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2299179447)!
            }
            
        }
        
    }()
    
    /// Returns the offset of the bone at `boneIdx` that will be the button position in the ``BoneMap`` editor.
    /// 
    /// This is the offset with origin at the top left corner of the square.
    /// 
    public final func getHandleOffset(boneIdx: Int32) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: boneIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonProfile.method_get_handle_offset, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_handle_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_handle_offset")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 163021252)!
            }
            
        }
        
    }()
    
    /// Sets the offset of the bone at `boneIdx` that will be the button position in the ``BoneMap`` editor.
    /// 
    /// This is the offset with origin at the top left corner of the square.
    /// 
    public final func setHandleOffset(boneIdx: Int32, handleOffset: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: boneIdx) { pArg0 in
            withUnsafePointer(to: handleOffset) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SkeletonProfile.method_set_handle_offset, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_group: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_group")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 659327637)!
            }
            
        }
        
    }()
    
    /// Returns the group of the bone at `boneIdx`.
    public final func getGroup(boneIdx: Int32) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: boneIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonProfile.method_get_group, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_group: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_group")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3780747571)!
            }
            
        }
        
    }()
    
    /// Sets the group of the bone at `boneIdx`.
    public final func setGroup(boneIdx: Int32, group: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: boneIdx) { pArg0 in
            withUnsafePointer(to: group.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SkeletonProfile.method_set_group, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_required: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_required")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns whether the bone at `boneIdx` is required for retargeting.
    /// 
    /// This value is used by the bone map editor. If this method returns `true`, and no bone is assigned, the handle color will be red on the bone map editor.
    /// 
    public final func isRequired(boneIdx: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: boneIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonProfile.method_is_required, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_required: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_required")
        return withUnsafePointer(to: &SkeletonProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Sets the required status for bone `boneIdx` to `required`.
    public final func setRequired(boneIdx: Int32, required: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: boneIdx) { pArg0 in
            withUnsafePointer(to: required) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SkeletonProfile.method_set_required, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    // Signals 
    /// This signal is emitted when change the value in profile. This is used to update key name in the ``BoneMap`` and to redraw the ``BoneMap`` editor.
    /// 
    /// > Note: This signal is not connected directly to editor to simplify the reference, instead it is passed on to editor through the ``BoneMap``.
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
    /// obj.profileUpdated.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var profileUpdated: SimpleSignal { SimpleSignal (target: self, signalName: "profile_updated") }
    
}

