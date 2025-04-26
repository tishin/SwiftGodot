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


/// A node that may modify Skeleton3D's bone.
/// 
/// ``SkeletonModifier3D`` retrieves a target ``Skeleton3D`` by having a ``Skeleton3D`` parent.
/// 
/// If there is ``AnimationMixer``, modification always performs after playback process of the ``AnimationMixer``.
/// 
/// This node should be used to implement custom IK solvers, constraints, or skeleton physics.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``modificationProcessed``
open class SkeletonModifier3D: Node3D {
    private static var className = StringName("SkeletonModifier3D")
    override open class var godotClassName: StringName { className }
    public enum BoneAxis: Int64, CaseIterable {
        /// Enumerated value for the +X axis.
        case plusX = 0 // BONE_AXIS_PLUS_X
        /// Enumerated value for the -X axis.
        case minusX = 1 // BONE_AXIS_MINUS_X
        /// Enumerated value for the +Y axis.
        case plusY = 2 // BONE_AXIS_PLUS_Y
        /// Enumerated value for the -Y axis.
        case minusY = 3 // BONE_AXIS_MINUS_Y
        /// Enumerated value for the +Z axis.
        case plusZ = 4 // BONE_AXIS_PLUS_Z
        /// Enumerated value for the -Z axis.
        case minusZ = 5 // BONE_AXIS_MINUS_Z
    }
    
    
    /* Properties */
    
    /// If `true`, the ``SkeletonModifier3D`` will be processing.
    final public var active: Bool {
        get {
            return is_active ()
        }
        
        set {
            set_active (newValue)
        }
        
    }
    
    /// Sets the influence of the modification.
    /// 
    /// > Note: This value is used by ``Skeleton3D`` to blend, so the ``SkeletonModifier3D`` should always apply only 100% of the result without interpolation.
    /// 
    final public var influence: Double {
        get {
            return get_influence ()
        }
        
        set {
            set_influence (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method__process_modification: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_process_modification")
        return withUnsafePointer(to: &SkeletonModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Override this virtual method to implement a custom skeleton modifier. You should do things like get the ``Skeleton3D``'s current pose and apply the pose here.
    /// 
    /// ``_processModification()`` must not apply ``influence`` to bone poses because the ``Skeleton3D`` automatically applies influence to all bone poses set by the modifier.
    /// 
    @_documentation(visibility: public)
    open func _processModification() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(SkeletonModifier3D.method__process_modification, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_get_skeleton: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_skeleton")
        return withUnsafePointer(to: &SkeletonModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1488626673)!
            }
            
        }
        
    }()
    
    /// Get parent ``Skeleton3D`` node if found.
    public final func getSkeleton() -> Skeleton3D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(SkeletonModifier3D.method_get_skeleton, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_active: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_active")
        return withUnsafePointer(to: &SkeletonModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_active(_ active: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: active) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModifier3D.method_set_active, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_active: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_active")
        return withUnsafePointer(to: &SkeletonModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_active() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(SkeletonModifier3D.method_is_active, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_influence: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_influence")
        return withUnsafePointer(to: &SkeletonModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_influence(_ influence: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: influence) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModifier3D.method_set_influence, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_influence: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_influence")
        return withUnsafePointer(to: &SkeletonModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_influence() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(SkeletonModifier3D.method_get_influence, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_process_modification":
                return _SkeletonModifier3D_proxy_process_modification
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
    // Signals 
    /// Notifies when the modification have been finished.
    /// 
    /// > Note: If you want to get the modified bone pose by the modifier, you must use ``Skeleton3D/getBonePose(boneIdx:)`` or ``Skeleton3D/getBoneGlobalPose(boneIdx:)`` at the moment this signal is fired.
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
    /// obj.modificationProcessed.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var modificationProcessed: SimpleSignal { SimpleSignal (target: self, signalName: "modification_processed") }
    
}

// Support methods for proxies
func _SkeletonModifier3D_proxy_process_modification (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? SkeletonModifier3D else { return }
    swiftObject._processModification ()
}

