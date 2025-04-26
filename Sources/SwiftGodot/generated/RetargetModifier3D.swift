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


/// A modifier to transfer parent skeleton poses (or global poses) to child skeletons in model space with different rests.
/// 
/// Retrieves the pose (or global pose) relative to the parent Skeleton's rest in model space and transfers it to the child Skeleton.
/// 
/// This modifier rewrites the pose of the child skeleton directly in the parent skeleton's update process. This means that it overwrites the mapped bone pose set in the normal process on the target skeleton. If you want to set the target skeleton bone pose after retargeting, you will need to add a ``SkeletonModifier3D`` child to the target skeleton and thereby modify the pose.
/// 
/// > Note: When the ``useGlobalPose`` is enabled, even if it is an unmapped bone, it can cause visual problems because the global pose is applied ignoring the parent bone's pose **if it has mapped bone children**. See also ``useGlobalPose``.
/// 
open class RetargetModifier3D: SkeletonModifier3D {
    private static var className = StringName("RetargetModifier3D")
    override open class var godotClassName: StringName { className }
    public struct TransformFlag: OptionSet, CustomDebugStringConvertible {
        public let rawValue: Int
        public init (rawValue: Int) {
            self.rawValue = rawValue
        }
        
        /// If set, allows to retarget the position.
        public static let position = TransformFlag (rawValue: 1)
        /// If set, allows to retarget the rotation.
        public static let rotation = TransformFlag (rawValue: 2)
        /// If set, allows to retarget the scale.
        public static let scale = TransformFlag (rawValue: 4)
        /// If set, allows to retarget the position/rotation/scale.
        public static let all = TransformFlag (rawValue: 7)
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            var result = ""
            if self.contains (.position) { result += "position, " }
            if self.contains (.rotation) { result += "rotation, " }
            if self.contains (.scale) { result += "scale, " }
            if self.contains (.all) { result += "all, " }
            if result.hasSuffix (", ") { result.removeLast (2) }
            return result
        }
        
    }
    
    
    /* Properties */
    
    /// ``SkeletonProfile`` for retargeting bones with names matching the bone list.
    final public var profile: SkeletonProfile? {
        get {
            return get_profile ()
        }
        
        set {
            set_profile (newValue)
        }
        
    }
    
    /// If `false`, in case the target skeleton has fewer bones than the source skeleton, the source bone parent's transform will be ignored.
    /// 
    /// Instead, it is possible to retarget between models with different body shapes, and position, rotation, and scale can be retargeted separately.
    /// 
    /// If `true`, retargeting is performed taking into account global pose.
    /// 
    /// In case the target skeleton has fewer bones than the source skeleton, the source bone parent's transform is taken into account. However, bone length between skeletons must match exactly, if not, the bones will be forced to expand or shrink.
    /// 
    /// This is useful for using dummy bone with length `0` to match postures when retargeting between models with different number of bones.
    /// 
    final public var useGlobalPose: Bool {
        get {
            return is_using_global_pose ()
        }
        
        set {
            set_use_global_pose (newValue)
        }
        
    }
    
    /// Flags to control the process of the transform elements individually when ``useGlobalPose`` is disabled.
    final public var enable: RetargetModifier3D.TransformFlag {
        get {
            return get_enable_flags ()
        }
        
        set {
            set_enable_flags (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_profile: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_profile")
        return withUnsafePointer(to: &RetargetModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3870374136)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_profile(_ profile: SkeletonProfile?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: profile?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RetargetModifier3D.method_set_profile, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_profile: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_profile")
        return withUnsafePointer(to: &RetargetModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4291782652)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_profile() -> SkeletonProfile? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(RetargetModifier3D.method_get_profile, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_use_global_pose: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_global_pose")
        return withUnsafePointer(to: &RetargetModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_global_pose(_ useGlobalPose: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: useGlobalPose) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RetargetModifier3D.method_set_use_global_pose, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_using_global_pose: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_using_global_pose")
        return withUnsafePointer(to: &RetargetModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_using_global_pose() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RetargetModifier3D.method_is_using_global_pose, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_enable_flags: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_enable_flags")
        return withUnsafePointer(to: &RetargetModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2687954213)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_enable_flags(_ enableFlags: RetargetModifier3D.TransformFlag) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enableFlags.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RetargetModifier3D.method_set_enable_flags, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_enable_flags: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_enable_flags")
        return withUnsafePointer(to: &RetargetModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 358995420)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_enable_flags() -> RetargetModifier3D.TransformFlag {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RetargetModifier3D.TransformFlag = RetargetModifier3D.TransformFlag ()
        gi.object_method_bind_ptrcall(RetargetModifier3D.method_get_enable_flags, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_position_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_position_enabled")
        return withUnsafePointer(to: &RetargetModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Sets ``TransformFlag/position`` into ``enable``.
    public final func setPositionEnabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RetargetModifier3D.method_set_position_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_position_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_position_enabled")
        return withUnsafePointer(to: &RetargetModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if ``enable`` has ``TransformFlag/position``.
    public final func isPositionEnabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RetargetModifier3D.method_is_position_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_rotation_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_rotation_enabled")
        return withUnsafePointer(to: &RetargetModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Sets ``TransformFlag/rotation`` into ``enable``.
    public final func setRotationEnabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RetargetModifier3D.method_set_rotation_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_rotation_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_rotation_enabled")
        return withUnsafePointer(to: &RetargetModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if ``enable`` has ``TransformFlag/rotation``.
    public final func isRotationEnabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RetargetModifier3D.method_is_rotation_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_scale_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_scale_enabled")
        return withUnsafePointer(to: &RetargetModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Sets ``TransformFlag/scale`` into ``enable``.
    public final func setScaleEnabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RetargetModifier3D.method_set_scale_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_scale_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_scale_enabled")
        return withUnsafePointer(to: &RetargetModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if ``enable`` has ``TransformFlag/scale``.
    public final func isScaleEnabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RetargetModifier3D.method_is_scale_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

