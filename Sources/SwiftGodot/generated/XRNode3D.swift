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


/// A 3D node that has its position automatically updated by the ``XRServer``.
/// 
/// This node can be bound to a specific pose of a ``XRPositionalTracker`` and will automatically have its ``Node3D/transform`` updated by the ``XRServer``. Nodes of this type must be added as children of the ``XROrigin3D`` node.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``trackingChanged``
open class XRNode3D: Node3D {
    private static var className = StringName("XRNode3D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The name of the tracker we're bound to. Which trackers are available is not known during design time.
    /// 
    /// Godot defines a number of standard trackers such as `left_hand` and `right_hand` but others may be configured within a given ``XRInterface``.
    /// 
    final public var tracker: StringName {
        get {
            return get_tracker ()
        }
        
        set {
            set_tracker (newValue)
        }
        
    }
    
    /// The name of the pose we're bound to. Which poses a tracker supports is not known during design time.
    /// 
    /// Godot defines number of standard pose names such as `aim` and `grip` but other may be configured within a given ``XRInterface``.
    /// 
    final public var pose: StringName {
        get {
            return get_pose_name ()
        }
        
        set {
            set_pose_name (newValue)
        }
        
    }
    
    /// Enables showing the node when tracking starts, and hiding the node when tracking is lost.
    final public var showWhenTracked: Bool {
        get {
            return get_show_when_tracked ()
        }
        
        set {
            set_show_when_tracked (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_tracker: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tracker")
        return withUnsafePointer(to: &XRNode3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tracker(_ trackerName: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackerName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XRNode3D.method_set_tracker, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tracker: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tracker")
        return withUnsafePointer(to: &XRNode3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tracker() -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(XRNode3D.method_get_tracker, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_pose_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_pose_name")
        return withUnsafePointer(to: &XRNode3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pose_name(_ pose: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pose.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XRNode3D.method_set_pose_name, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_pose_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_pose_name")
        return withUnsafePointer(to: &XRNode3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pose_name() -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(XRNode3D.method_get_pose_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_show_when_tracked: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_show_when_tracked")
        return withUnsafePointer(to: &XRNode3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_show_when_tracked(_ show: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: show) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XRNode3D.method_set_show_when_tracked, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_show_when_tracked: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_show_when_tracked")
        return withUnsafePointer(to: &XRNode3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_show_when_tracked() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(XRNode3D.method_get_show_when_tracked, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_is_active: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_is_active")
        return withUnsafePointer(to: &XRNode3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the ``tracker`` has been registered and the ``pose`` is being tracked.
    public final func getIsActive() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(XRNode3D.method_get_is_active, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_has_tracking_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_has_tracking_data")
        return withUnsafePointer(to: &XRNode3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the ``tracker`` has current tracking data for the ``pose`` being tracked.
    public final func getHasTrackingData() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(XRNode3D.method_get_has_tracking_data, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_pose: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_pose")
        return withUnsafePointer(to: &XRNode3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2806551826)!
            }
            
        }
        
    }()
    
    /// Returns the ``XRPose`` containing the current state of the pose being tracked. This gives access to additional properties of this pose.
    public final func getPose() -> XRPose? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(XRNode3D.method_get_pose, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_trigger_haptic_pulse: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("trigger_haptic_pulse")
        return withUnsafePointer(to: &XRNode3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 508576839)!
            }
            
        }
        
    }()
    
    /// Triggers a haptic pulse on a device associated with this interface.
    /// 
    /// `actionName` is the name of the action for this pulse.
    /// 
    /// `frequency` is the frequency of the pulse, set to `0.0` to have the system use a default frequency.
    /// 
    /// `amplitude` is the amplitude of the pulse between `0.0` and `1.0`.
    /// 
    /// `durationSec` is the duration of the pulse in seconds.
    /// 
    /// `delaySec` is a delay in seconds before the pulse is given.
    /// 
    public final func triggerHapticPulse(actionName: String, frequency: Double, amplitude: Double, durationSec: Double, delaySec: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let actionName = GString(actionName)
        withUnsafePointer(to: actionName.content) { pArg0 in
            withUnsafePointer(to: frequency) { pArg1 in
                withUnsafePointer(to: amplitude) { pArg2 in
                    withUnsafePointer(to: durationSec) { pArg3 in
                        withUnsafePointer(to: delaySec) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(XRNode3D.method_trigger_haptic_pulse, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    // Signals 
    /// Emitted when the ``tracker`` starts or stops receiving updated tracking data for the ``pose`` being tracked. The `tracking` argument indicates whether the tracker is getting updated tracking data.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.trackingChanged.connect { tracking in
    ///    print ("caught signal")
    /// }
    /// ```
    public var trackingChanged: SignalWithArguments<Bool> { SignalWithArguments<Bool> (target: self, signalName: "tracking_changed") }
    
}

