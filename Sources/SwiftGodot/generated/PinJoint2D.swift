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


/// A physics joint that attaches two 2D physics bodies at a single point, allowing them to freely rotate.
/// 
/// A physics joint that attaches two 2D physics bodies at a single point, allowing them to freely rotate. For example, a ``RigidBody2D`` can be attached to a ``StaticBody2D`` to create a pendulum or a seesaw.
open class PinJoint2D: Joint2D {
    private static var className = StringName("PinJoint2D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The higher this value, the more the bond to the pinned partner can flex.
    final public var softness: Double {
        get {
            return get_softness ()
        }
        
        set {
            set_softness (newValue)
        }
        
    }
    
    /// If `true`, the pin maximum and minimum rotation, defined by ``angularLimitLower`` and ``angularLimitUpper`` are applied.
    final public var angularLimitEnabled: Bool {
        get {
            return is_angular_limit_enabled ()
        }
        
        set {
            set_angular_limit_enabled (newValue)
        }
        
    }
    
    /// The minimum rotation. Only active if ``angularLimitEnabled`` is `true`.
    final public var angularLimitLower: Double {
        get {
            return get_angular_limit_lower ()
        }
        
        set {
            set_angular_limit_lower (newValue)
        }
        
    }
    
    /// The maximum rotation. Only active if ``angularLimitEnabled`` is `true`.
    final public var angularLimitUpper: Double {
        get {
            return get_angular_limit_upper ()
        }
        
        set {
            set_angular_limit_upper (newValue)
        }
        
    }
    
    /// When activated, a motor turns the pin.
    final public var motorEnabled: Bool {
        get {
            return is_motor_enabled ()
        }
        
        set {
            set_motor_enabled (newValue)
        }
        
    }
    
    /// Target speed for the motor. In radians per second.
    final public var motorTargetVelocity: Double {
        get {
            return get_motor_target_velocity ()
        }
        
        set {
            set_motor_target_velocity (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_softness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_softness")
        return withUnsafePointer(to: &PinJoint2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_softness(_ softness: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: softness) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PinJoint2D.method_set_softness, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_softness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_softness")
        return withUnsafePointer(to: &PinJoint2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_softness() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PinJoint2D.method_get_softness, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_angular_limit_lower: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_angular_limit_lower")
        return withUnsafePointer(to: &PinJoint2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_angular_limit_lower(_ angularLimitLower: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: angularLimitLower) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PinJoint2D.method_set_angular_limit_lower, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_angular_limit_lower: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_angular_limit_lower")
        return withUnsafePointer(to: &PinJoint2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_angular_limit_lower() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PinJoint2D.method_get_angular_limit_lower, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_angular_limit_upper: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_angular_limit_upper")
        return withUnsafePointer(to: &PinJoint2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_angular_limit_upper(_ angularLimitUpper: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: angularLimitUpper) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PinJoint2D.method_set_angular_limit_upper, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_angular_limit_upper: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_angular_limit_upper")
        return withUnsafePointer(to: &PinJoint2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_angular_limit_upper() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PinJoint2D.method_get_angular_limit_upper, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_motor_target_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_motor_target_velocity")
        return withUnsafePointer(to: &PinJoint2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_motor_target_velocity(_ motorTargetVelocity: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: motorTargetVelocity) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PinJoint2D.method_set_motor_target_velocity, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_motor_target_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_motor_target_velocity")
        return withUnsafePointer(to: &PinJoint2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_motor_target_velocity() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PinJoint2D.method_get_motor_target_velocity, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_motor_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_motor_enabled")
        return withUnsafePointer(to: &PinJoint2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_motor_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PinJoint2D.method_set_motor_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_motor_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_motor_enabled")
        return withUnsafePointer(to: &PinJoint2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_motor_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PinJoint2D.method_is_motor_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_angular_limit_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_angular_limit_enabled")
        return withUnsafePointer(to: &PinJoint2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_angular_limit_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PinJoint2D.method_set_angular_limit_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_angular_limit_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_angular_limit_enabled")
        return withUnsafePointer(to: &PinJoint2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_angular_limit_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PinJoint2D.method_is_angular_limit_enabled, handle, nil, &_result)
        return _result
    }
    
}

