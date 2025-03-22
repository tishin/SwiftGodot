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


/// A physics joint that restricts the rotation of a 3D physics body around an axis relative to another physics body.
/// 
/// A physics joint that restricts the rotation of a 3D physics body around an axis relative to another physics body. For example, Body A can be a ``StaticBody3D`` representing a door hinge that a ``RigidBody3D`` rotates around.
open class HingeJoint3D: Joint3D {
    fileprivate static var className = StringName("HingeJoint3D")
    override open class var godotClassName: StringName { className }
    public enum Param: Int64, CaseIterable {
        /// The speed with which the two bodies get pulled together when they move in different directions.
        case bias = 0 // PARAM_BIAS
        /// The maximum rotation. Only active if ``angularLimit/enable`` is `true`.
        case limitUpper = 1 // PARAM_LIMIT_UPPER
        /// The minimum rotation. Only active if ``angularLimit/enable`` is `true`.
        case limitLower = 2 // PARAM_LIMIT_LOWER
        /// The speed with which the rotation across the axis perpendicular to the hinge gets corrected.
        case limitBias = 3 // PARAM_LIMIT_BIAS
        /// 
        case limitSoftness = 4 // PARAM_LIMIT_SOFTNESS
        /// The lower this value, the more the rotation gets slowed down.
        case limitRelaxation = 5 // PARAM_LIMIT_RELAXATION
        /// Target speed for the motor.
        case motorTargetVelocity = 6 // PARAM_MOTOR_TARGET_VELOCITY
        /// Maximum acceleration for the motor.
        case motorMaxImpulse = 7 // PARAM_MOTOR_MAX_IMPULSE
        /// Represents the size of the ``HingeJoint3D/Param`` enum.
        case max = 8 // PARAM_MAX
    }
    
    public enum Flag: Int64, CaseIterable {
        /// If `true`, the hinges maximum and minimum rotation, defined by ``angularLimit/lower`` and ``angularLimit/upper`` has effects.
        case useLimit = 0 // FLAG_USE_LIMIT
        /// When activated, a motor turns the hinge.
        case enableMotor = 1 // FLAG_ENABLE_MOTOR
        /// Represents the size of the ``HingeJoint3D/Flag`` enum.
        case max = 2 // FLAG_MAX
    }
    
    /* Methods */
    fileprivate static var method_set_param: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_param")
        return withUnsafePointer(to: &HingeJoint3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3082977519)!
            }
            
        }
        
    }()
    
    /// Sets the value of the specified parameter.
    public final func setParam(_ param: HingeJoint3D.Param, value: Double) {
        withUnsafePointer(to: param.rawValue) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(HingeJoint3D.method_set_param, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_param: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_param")
        return withUnsafePointer(to: &HingeJoint3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4066002676)!
            }
            
        }
        
    }()
    
    /// Returns the value of the specified parameter.
    public final func getParam(_ param: HingeJoint3D.Param) -> Double {
        var _result: Double = 0.0
        withUnsafePointer(to: param.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(HingeJoint3D.method_get_param, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_set_flag: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_flag")
        return withUnsafePointer(to: &HingeJoint3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1083494620)!
            }
            
        }
        
    }()
    
    /// If `true`, enables the specified flag.
    public final func setFlag(_ flag: HingeJoint3D.Flag, enabled: Bool) {
        withUnsafePointer(to: flag.rawValue) { pArg0 in
            withUnsafePointer(to: enabled) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(HingeJoint3D.method_set_flag, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_flag: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_flag")
        return withUnsafePointer(to: &HingeJoint3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2841369610)!
            }
            
        }
        
    }()
    
    /// Returns the value of the specified flag.
    public final func getFlag(_ flag: HingeJoint3D.Flag) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: flag.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(HingeJoint3D.method_get_flag, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
}

