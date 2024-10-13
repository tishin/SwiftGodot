// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A physics joint that connects two 3D physics bodies in a way that simulates a ball-and-socket joint.
/// 
/// A physics joint that connects two 3D physics bodies in a way that simulates a ball-and-socket joint. The twist axis is initiated as the X axis of the ``ConeTwistJoint3D``. Once the physics bodies swing, the twist axis is calculated as the middle of the X axes of the joint in the local space of the two physics bodies. Useful for limbs like shoulders and hips, lamps hanging off a ceiling, etc.
open class ConeTwistJoint3D: Joint3D {
    override open class var godotClassName: StringName { "ConeTwistJoint3D" }
    public enum Param: Int64, CaseIterable, CustomDebugStringConvertible {
        /// Swing is rotation from side to side, around the axis perpendicular to the twist axis.
        /// 
        /// The swing span defines, how much rotation will not get corrected along the swing axis.
        /// 
        /// Could be defined as looseness in the ``ConeTwistJoint3D``.
        /// 
        /// If below 0.05, this behavior is locked.
        /// 
        case swingSpan = 0 // PARAM_SWING_SPAN
        /// Twist is the rotation around the twist axis, this value defined how far the joint can twist.
        /// 
        /// Twist is locked if below 0.05.
        /// 
        case twistSpan = 1 // PARAM_TWIST_SPAN
        /// The speed with which the swing or twist will take place.
        /// 
        /// The higher, the faster.
        /// 
        case bias = 2 // PARAM_BIAS
        /// The ease with which the joint starts to twist. If it's too low, it takes more force to start twisting the joint.
        case softness = 3 // PARAM_SOFTNESS
        /// Defines, how fast the swing- and twist-speed-difference on both sides gets synced.
        case relaxation = 4 // PARAM_RELAXATION
        /// Represents the size of the ``ConeTwistJoint3D/Param`` enum.
        case max = 5 // PARAM_MAX
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .swingSpan: return ".swingSpan"
                case .twistSpan: return ".twistSpan"
                case .bias: return ".bias"
                case .softness: return ".softness"
                case .relaxation: return ".relaxation"
                case .max: return ".max"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// Swing is rotation from side to side, around the axis perpendicular to the twist axis.
    /// 
    /// The swing span defines, how much rotation will not get corrected along the swing axis.
    /// 
    /// Could be defined as looseness in the ``ConeTwistJoint3D``.
    /// 
    /// If below 0.05, this behavior is locked.
    /// 
    final public var swingSpan: Double {
        get {
            return get_param (ConeTwistJoint3D.Param (rawValue: 0)!)
        }
        
        set {
            set_param (ConeTwistJoint3D.Param (rawValue: 0)!, newValue)
        }
        
    }
    
    /// Twist is the rotation around the twist axis, this value defined how far the joint can twist.
    /// 
    /// Twist is locked if below 0.05.
    /// 
    final public var twistSpan: Double {
        get {
            return get_param (ConeTwistJoint3D.Param (rawValue: 1)!)
        }
        
        set {
            set_param (ConeTwistJoint3D.Param (rawValue: 1)!, newValue)
        }
        
    }
    
    /// The speed with which the swing or twist will take place.
    /// 
    /// The higher, the faster.
    /// 
    final public var bias: Double {
        get {
            return get_param (ConeTwistJoint3D.Param (rawValue: 2)!)
        }
        
        set {
            set_param (ConeTwistJoint3D.Param (rawValue: 2)!, newValue)
        }
        
    }
    
    /// The ease with which the joint starts to twist. If it's too low, it takes more force to start twisting the joint.
    final public var softness: Double {
        get {
            return get_param (ConeTwistJoint3D.Param (rawValue: 3)!)
        }
        
        set {
            set_param (ConeTwistJoint3D.Param (rawValue: 3)!, newValue)
        }
        
    }
    
    /// Defines, how fast the swing- and twist-speed-difference on both sides gets synced.
    final public var relaxation: Double {
        get {
            return get_param (ConeTwistJoint3D.Param (rawValue: 4)!)
        }
        
        set {
            set_param (ConeTwistJoint3D.Param (rawValue: 4)!, newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_param: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_param")
        return withUnsafePointer(to: &ConeTwistJoint3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1062470226)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the value of the specified parameter.
    final func set_param(_ param: ConeTwistJoint3D.Param, _ value: Double) {
        withUnsafePointer(to: param.rawValue) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ConeTwistJoint3D.method_set_param, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_param: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_param")
        return withUnsafePointer(to: &ConeTwistJoint3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2928790850)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns the value of the specified parameter.
    final func get_param(_ param: ConeTwistJoint3D.Param) -> Double {
        var _result: Double = 0.0
        withUnsafePointer(to: param.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ConeTwistJoint3D.method_get_param, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
}

