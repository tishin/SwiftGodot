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


/// A node for driving hand meshes from ``XRHandTracker`` data.
/// 
/// This node uses hand tracking data from an ``XRHandTracker`` to pose the skeleton of a hand mesh.
/// 
/// Positioning of hands is performed by creating an ``XRNode3D`` ancestor of the hand mesh driven by the same ``XRHandTracker``.
/// 
/// The hand tracking position-data is scaled by ``Skeleton3D/motionScale`` when applied to the skeleton, which can be used to adjust the tracked hand to match the scale of the hand model.
/// 
open class XRHandModifier3D: SkeletonModifier3D {
    private static var className = StringName("XRHandModifier3D")
    override open class var godotClassName: StringName { className }
    public enum BoneUpdate: Int64, CaseIterable {
        /// The skeleton's bones are fully updated (both position and rotation) to match the tracked bones.
        case full = 0 // BONE_UPDATE_FULL
        /// The skeleton's bones are only rotated to align with the tracked bones, preserving bone length.
        case rotationOnly = 1 // BONE_UPDATE_ROTATION_ONLY
        /// Represents the size of the ``XRHandModifier3D/BoneUpdate`` enum.
        case max = 2 // BONE_UPDATE_MAX
    }
    
    
    /* Properties */
    
    /// The name of the ``XRHandTracker`` registered with ``XRServer`` to obtain the hand tracking data from.
    final public var handTracker: StringName {
        get {
            return get_hand_tracker ()
        }
        
        set {
            set_hand_tracker (newValue)
        }
        
    }
    
    /// Specifies the type of updates to perform on the bones.
    final public var boneUpdate: XRHandModifier3D.BoneUpdate {
        get {
            return get_bone_update ()
        }
        
        set {
            set_bone_update (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_hand_tracker: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_hand_tracker")
        return withUnsafePointer(to: &XRHandModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_hand_tracker(_ trackerName: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackerName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XRHandModifier3D.method_set_hand_tracker, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_hand_tracker: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_hand_tracker")
        return withUnsafePointer(to: &XRHandModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_hand_tracker() -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(XRHandModifier3D.method_get_hand_tracker, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_bone_update: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bone_update")
        return withUnsafePointer(to: &XRHandModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3635701455)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bone_update(_ boneUpdate: XRHandModifier3D.BoneUpdate) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: boneUpdate.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XRHandModifier3D.method_set_bone_update, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_bone_update: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bone_update")
        return withUnsafePointer(to: &XRHandModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2873665691)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bone_update() -> XRHandModifier3D.BoneUpdate {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(XRHandModifier3D.method_get_bone_update, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return XRHandModifier3D.BoneUpdate (rawValue: _result)!
    }
    
}

