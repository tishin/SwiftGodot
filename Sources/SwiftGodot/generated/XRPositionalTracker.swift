// This file is auto-generated, do not edit.
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
#if canImport(Darwin)
import Darwin
#elseif os(Windows)
import ucrt
import WinSDK
#elseif canImport(Glibc)
import Glibc
#elseif canImport(Musl)
import Musl
#else
#error("Unable to identify your C library.")
#endif
#endif


/// A tracked object.
/// 
/// An instance of this object represents a device that is tracked, such as a controller or anchor point. HMDs aren't represented here as they are handled internally.
/// 
/// As controllers are turned on and the ``XRInterface`` detects them, instances of this object are automatically added to this list of active tracking objects accessible through the ``XRServer``.
/// 
/// The ``XRNode3D`` and ``XRAnchor3D`` both consume objects of this type and should be used in your project. The positional trackers are just under-the-hood objects that make this all work. These are mostly exposed so that GDExtension-based interfaces can interact with them.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``poseChanged``
/// - ``poseLostTracking``
/// - ``buttonPressed``
/// - ``buttonReleased``
/// - ``inputFloatChanged``
/// - ``inputVector2Changed``
/// - ``profileChanged``
open class XRPositionalTracker: XRTracker {
    override open class var godotClassName: StringName { "XRPositionalTracker" }
    public enum TrackerHand: Int64, CaseIterable {
        /// The hand this tracker is held in is unknown or not applicable.
        case unknown = 0 // TRACKER_HAND_UNKNOWN
        /// This tracker is the left hand controller.
        case left = 1 // TRACKER_HAND_LEFT
        /// This tracker is the right hand controller.
        case right = 2 // TRACKER_HAND_RIGHT
        /// Represents the size of the ``XRPositionalTracker/TrackerHand`` enum.
        case max = 3 // TRACKER_HAND_MAX
    }
    
    
    /* Properties */
    
    /// The profile associated with this tracker, interface dependent but will indicate the type of controller being tracked.
    final public var profile: String {
        get {
            return get_tracker_profile ()
        }
        
        set {
            set_tracker_profile (newValue)
        }
        
    }
    
    /// Defines which hand this tracker relates to.
    final public var hand: XRPositionalTracker.TrackerHand {
        get {
            return get_tracker_hand ()
        }
        
        set {
            set_tracker_hand (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_get_tracker_profile: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_tracker_profile")
        return withUnsafePointer(to: &XRPositionalTracker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tracker_profile() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(XRPositionalTracker.method_get_tracker_profile, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_set_tracker_profile: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_tracker_profile")
        return withUnsafePointer(to: &XRPositionalTracker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tracker_profile(_ profile: String) {
        let profile = GString(profile)
        withUnsafePointer(to: profile.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XRPositionalTracker.method_set_tracker_profile, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_tracker_hand: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_tracker_hand")
        return withUnsafePointer(to: &XRPositionalTracker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4181770860)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tracker_hand() -> XRPositionalTracker.TrackerHand {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(XRPositionalTracker.method_get_tracker_hand, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return XRPositionalTracker.TrackerHand (rawValue: _result)!
    }
    
    fileprivate static var method_set_tracker_hand: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_tracker_hand")
        return withUnsafePointer(to: &XRPositionalTracker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3904108980)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tracker_hand(_ hand: XRPositionalTracker.TrackerHand) {
        withUnsafePointer(to: hand.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XRPositionalTracker.method_set_tracker_hand, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_has_pose: GDExtensionMethodBindPtr = {
        let methodName = StringName("has_pose")
        return withUnsafePointer(to: &XRPositionalTracker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2619796661)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the tracker is available and is currently tracking the bound `name` pose.
    public final func hasPose(name: StringName) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XRPositionalTracker.method_has_pose, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_pose: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_pose")
        return withUnsafePointer(to: &XRPositionalTracker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4099720006)!
            }
            
        }
        
    }()
    
    /// Returns the current ``XRPose`` state object for the bound `name` pose.
    public final func getPose(name: StringName) -> XRPose? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XRPositionalTracker.method_get_pose, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_invalidate_pose: GDExtensionMethodBindPtr = {
        let methodName = StringName("invalidate_pose")
        return withUnsafePointer(to: &XRPositionalTracker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    /// Marks this pose as invalid, we don't clear the last reported state but it allows users to decide if trackers need to be hidden if we lose tracking or just remain at their last known position.
    public final func invalidatePose(name: StringName) {
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XRPositionalTracker.method_invalidate_pose, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_pose: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_pose")
        return withUnsafePointer(to: &XRPositionalTracker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3451230163)!
            }
            
        }
        
    }()
    
    /// Sets the transform, linear velocity, angular velocity and tracking confidence for the given pose. This method is called by a ``XRInterface`` implementation and should not be used directly.
    public final func setPose(name: StringName, transform: Transform3D, linearVelocity: Vector3, angularVelocity: Vector3, trackingConfidence: XRPose.TrackingConfidence) {
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: transform) { pArg1 in
                withUnsafePointer(to: linearVelocity) { pArg2 in
                    withUnsafePointer(to: angularVelocity) { pArg3 in
                        withUnsafePointer(to: trackingConfidence.rawValue) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(XRPositionalTracker.method_set_pose, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_input: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_input")
        return withUnsafePointer(to: &XRPositionalTracker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2760726917)!
            }
            
        }
        
    }()
    
    /// Returns an input for this tracker. It can return a boolean, float or ``Vector2`` value depending on whether the input is a button, trigger or thumbstick/thumbpad.
    public final func getInput(name: StringName) -> Variant? {
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XRPositionalTracker.method_get_input, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static var method_set_input: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_input")
        return withUnsafePointer(to: &XRPositionalTracker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3776071444)!
            }
            
        }
        
    }()
    
    /// Changes the value for the given input. This method is called by a ``XRInterface`` implementation and should not be used directly.
    public final func setInput(name: StringName, value: Variant?) {
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: value.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(XRPositionalTracker.method_set_input, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    // Signals 
    /// Emitted when the state of a pose tracked by this tracker changes.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.poseChanged.connect { pose in
    ///    print ("caught signal")
    /// }
    /// ```
    public var poseChanged: SignalWithArguments<XRPose?> { SignalWithArguments<XRPose?> (target: self, signalName: "pose_changed") }
    
    /// Emitted when a pose tracked by this tracker stops getting updated tracking data.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.poseLostTracking.connect { pose in
    ///    print ("caught signal")
    /// }
    /// ```
    public var poseLostTracking: SignalWithArguments<XRPose?> { SignalWithArguments<XRPose?> (target: self, signalName: "pose_lost_tracking") }
    
    /// Emitted when a button on this tracker is pressed. Note that many XR runtimes allow other inputs to be mapped to buttons.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.buttonPressed.connect { name in
    ///    print ("caught signal")
    /// }
    /// ```
    public var buttonPressed: SignalWithArguments<String> { SignalWithArguments<String> (target: self, signalName: "button_pressed") }
    
    /// Emitted when a button on this tracker is released.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.buttonReleased.connect { name in
    ///    print ("caught signal")
    /// }
    /// ```
    public var buttonReleased: SignalWithArguments<String> { SignalWithArguments<String> (target: self, signalName: "button_released") }
    
    /// Emitted when a trigger or similar input on this tracker changes value.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.inputFloatChanged.connect { name, value in
    ///    print ("caught signal")
    /// }
    /// ```
    public var inputFloatChanged: SignalWithArguments<String, Double> { SignalWithArguments<String, Double> (target: self, signalName: "input_float_changed") }
    
    /// Emitted when a thumbstick or thumbpad on this tracker moves.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.inputVector2Changed.connect { name, vector in
    ///    print ("caught signal")
    /// }
    /// ```
    public var inputVector2Changed: SignalWithArguments<String, Vector2> { SignalWithArguments<String, Vector2> (target: self, signalName: "input_vector2_changed") }
    
    /// Emitted when the profile of our tracker changes.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.profileChanged.connect { role in
    ///    print ("caught signal")
    /// }
    /// ```
    public var profileChanged: SignalWithArguments<String> { SignalWithArguments<String> (target: self, signalName: "profile_changed") }
    
}

