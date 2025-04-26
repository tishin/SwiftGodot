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


/// A 3D vector using floating-point coordinates.
/// 
/// A 3-element structure that can be used to represent 3D coordinates or any other triplet of numeric values.
/// 
/// It uses floating-point coordinates. By default, these floating-point values use 32-bit precision, unlike float which is always 64-bit. If double precision is needed, compile the engine with the option `precision=double`.
/// 
/// See ``Vector3i`` for its integer counterpart.
/// 
/// > Note: In a boolean context, a Vector3 will evaluate to `false` if it's equal to `Vector3(0, 0, 0)`. Otherwise, a Vector3 will always evaluate to `true`.
/// 
public struct Vector3: _GodotBridgeableBuiltin, Equatable, Hashable {
    /// The vector's X component. Also accessible by using the index position `[0]`.
    public var x: Float
    /// The vector's Y component. Also accessible by using the index position `[1]`.
    public var y: Float
    /// The vector's Z component. Also accessible by using the index position `[2]`.
    public var z: Float
    public enum Axis: Int64, CaseIterable {
        /// Enumerated value for the X axis. Returned by ``maxAxisIndex()`` and ``minAxisIndex()``.
        case x = 0 // AXIS_X
        /// Enumerated value for the Y axis. Returned by ``maxAxisIndex()`` and ``minAxisIndex()``.
        case y = 1 // AXIS_Y
        /// Enumerated value for the Z axis. Returned by ``maxAxisIndex()`` and ``minAxisIndex()``.
        case z = 2 // AXIS_Z
    }
    
    /// Zero vector, a vector with all components set to `0`.
    public static var zero: Vector3 { Vector3 (x: 0, y: 0, z: 0) }
    /// One vector, a vector with all components set to `1`.
    public static var one: Vector3 { Vector3 (x: 1, y: 1, z: 1) }
    /// Infinity vector, a vector with all components set to ``@GDScript.INF``.
    public static var inf: Vector3 { Vector3 (x: Float.infinity, y: Float.infinity, z: Float.infinity) }
    /// Left unit vector. Represents the local direction of left, and the global direction of west.
    public static var left: Vector3 { Vector3 (x: -1, y: 0, z: 0) }
    /// Right unit vector. Represents the local direction of right, and the global direction of east.
    public static var right: Vector3 { Vector3 (x: 1, y: 0, z: 0) }
    /// Up unit vector.
    public static var up: Vector3 { Vector3 (x: 0, y: 1, z: 0) }
    /// Down unit vector.
    public static var down: Vector3 { Vector3 (x: 0, y: -1, z: 0) }
    /// Forward unit vector. Represents the local direction of forward, and the global direction of north. Keep in mind that the forward direction for lights, cameras, etc is different from 3D assets like characters, which face towards the camera by convention. Use ``Vector3/modelFront`` and similar constants when working in 3D asset space.
    public static var forward: Vector3 { Vector3 (x: 0, y: 0, z: -1) }
    /// Back unit vector. Represents the local direction of back, and the global direction of south.
    public static var back: Vector3 { Vector3 (x: 0, y: 0, z: 1) }
    /// Unit vector pointing towards the left side of imported 3D assets.
    public static var modelLeft: Vector3 { Vector3 (x: 1, y: 0, z: 0) }
    /// Unit vector pointing towards the right side of imported 3D assets.
    public static var modelRight: Vector3 { Vector3 (x: -1, y: 0, z: 0) }
    /// Unit vector pointing towards the top side (up) of imported 3D assets.
    public static var modelTop: Vector3 { Vector3 (x: 0, y: 1, z: 0) }
    /// Unit vector pointing towards the bottom side (down) of imported 3D assets.
    public static var modelBottom: Vector3 { Vector3 (x: 0, y: -1, z: 0) }
    /// Unit vector pointing towards the front side (facing forward) of imported 3D assets.
    public static var modelFront: Vector3 { Vector3 (x: 0, y: 0, z: 1) }
    /// Unit vector pointing towards the rear side (back) of imported 3D assets.
    public static var modelRear: Vector3 { Vector3 (x: 0, y: 0, z: -1) }
    /// Constructs a default-initialized ``Vector3`` with all components set to `0`.
    public init() {
        self.x = Float ()
        self.y = Float ()
        self.z = Float ()
    }
    
    /// Constructs a ``Vector3`` as a copy of the given ``Vector3``.
    public init(from: Vector3) {
        self.x = Float ()
        self.y = Float ()
        self.z = Float ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForVector3.constructor1(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs a new ``Vector3`` from ``Vector3i``.
    public init(from: Vector3i) {
        self.x = Float ()
        self.y = Float ()
        self.z = Float ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForVector3.constructor2(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Returns a ``Vector3`` with the given components.
    public init(x: Float, y: Float, z: Float) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    
    /* Methods */
    
    /// Returns the axis of the vector's lowest value. See `AXIS_*` constants. If all components are equal, this method returns ``Axis/z``.
    public func minAxisIndex() -> Int64 {
        var result: Int64 = Int64()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector3.method_min_axis_index(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the axis of the vector's highest value. See `AXIS_*` constants. If all components are equal, this method returns ``Axis/x``.
    public func maxAxisIndex() -> Int64 {
        var result: Int64 = Int64()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector3.method_max_axis_index(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the unsigned minimum angle to the given vector, in radians.
    public func angleTo(_ to: Vector3) -> Double {
        var result: Double = Double()
        withUnsafePointer(to: to) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector3.method_angle_to(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the signed angle to the given vector, in radians. The sign of the angle is positive in a counter-clockwise direction and negative in a clockwise direction when viewed from the side specified by the `axis`.
    public func signedAngleTo(_ to: Vector3, axis: Vector3) -> Double {
        var result: Double = Double()
        withUnsafePointer(to: to) { pArg0 in
            withUnsafePointer(to: axis) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForVector3.method_signed_angle_to(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the normalized vector pointing from this vector to `to`. This is equivalent to using `(b - a).normalized()`.
    public func directionTo(_ to: Vector3) -> Vector3 {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: to) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector3.method_direction_to(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the distance between this vector and `to`.
    public func distanceTo(_ to: Vector3) -> Double {
        var result: Double = Double()
        withUnsafePointer(to: to) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector3.method_distance_to(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the squared distance between this vector and `to`.
    /// 
    /// This method runs faster than ``distanceTo(to:)``, so prefer it if you need to compare vectors or need the squared distance for some formula.
    /// 
    public func distanceSquaredTo(_ to: Vector3) -> Double {
        var result: Double = Double()
        withUnsafePointer(to: to) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector3.method_distance_squared_to(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the length (magnitude) of this vector.
    public func length() -> Double {
        #if !CUSTOM_BUILTIN_IMPLEMENTATIONS
        var result: Double = Double()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector3.method_length(ptr, nil, &result, 0)
        }
        return result
        #else // CUSTOM_BUILTIN_IMPLEMENTATIONS
        // https://github.com/godotengine/godot/blob/f7c567e2f56d6e63f4749387a67e5ea4903c4696/core/math/vector3.h#L476-L481
        return sqrt(Double(x * x + y * y + z * z))   
        #endif
    }
    
    /// Returns the squared length (squared magnitude) of this vector.
    /// 
    /// This method runs faster than ``length()``, so prefer it if you need to compare vectors or need the squared distance for some formula.
    /// 
    public func lengthSquared() -> Double {
        #if !CUSTOM_BUILTIN_IMPLEMENTATIONS
        var result: Double = Double()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector3.method_length_squared(ptr, nil, &result, 0)
        }
        return result
        #else // CUSTOM_BUILTIN_IMPLEMENTATIONS
        // https://github.com/godotengine/godot/blob/f7c567e2f56d6e63f4749387a67e5ea4903c4696/core/math/vector3.h#L484-L489
        return Double(x * x + y * y + z * z)
        #endif
    }
    
    /// Returns the vector with a maximum length by limiting its length to `length`. If the vector is non-finite, the result is undefined.
    public func limitLength(_ length: Double = 1.0) -> Vector3 {
        var result: Vector3 = Vector3()
        let length = Double(length)
        withUnsafePointer(to: length) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector3.method_limit_length(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the result of scaling the vector to unit length. Equivalent to `v / v.length()`. Returns `(0, 0, 0)` if `v.length() == 0`. See also ``isNormalized()``.
    /// 
    /// > Note: This function may return incorrect values if the input vector length is near zero.
    /// 
    public func normalized() -> Vector3 {
        var result: Vector3 = Vector3()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector3.method_normalized(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if the vector is normalized, i.e. its length is approximately equal to 1.
    public func isNormalized() -> Bool {
        var result: Bool = Bool()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector3.method_is_normalized(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if this vector and `to` are approximately equal, by running ``@GlobalScope.is_equal_approx`` on each component.
    public func isEqualApprox(to: Vector3) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: to) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector3.method_is_equal_approx(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if this vector's values are approximately zero, by running ``@GlobalScope.is_zero_approx`` on each component.
    /// 
    /// This method is faster than using ``isEqualApprox(to:)`` with one value as a zero vector.
    /// 
    public func isZeroApprox() -> Bool {
        var result: Bool = Bool()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector3.method_is_zero_approx(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if this vector is finite, by calling ``@GlobalScope.is_finite`` on each component.
    public func isFinite() -> Bool {
        var result: Bool = Bool()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector3.method_is_finite(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the inverse of the vector. This is the same as `Vector3(1.0 / v.x, 1.0 / v.y, 1.0 / v.z)`.
    public func inverse() -> Vector3 {
        var result: Vector3 = Vector3()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector3.method_inverse(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a new vector with all components clamped between the components of `min` and `max`, by running ``@GlobalScope.clamp`` on each component.
    public func clamp(min: Vector3, max: Vector3) -> Vector3 {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: min) { pArg0 in
            withUnsafePointer(to: max) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForVector3.method_clamp(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a new vector with all components clamped between `min` and `max`, by running ``@GlobalScope.clamp`` on each component.
    public func clampf(min: Double, max: Double) -> Vector3 {
        var result: Vector3 = Vector3()
        let min = Double(min)
        withUnsafePointer(to: min) { pArg0 in
            let max = Double(max)
            withUnsafePointer(to: max) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForVector3.method_clampf(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a new vector with each component snapped to the nearest multiple of `step`. This can also be used to round the components to an arbitrary number of decimals.
    public func snappedf(step: Double) -> Vector3 {
        var result: Vector3 = Vector3()
        let step = Double(step)
        withUnsafePointer(to: step) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector3.method_snappedf(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the result of rotating this vector around a given axis by `angle` (in radians). The axis must be a normalized vector. See also ``@GlobalScope.deg_to_rad``.
    public func rotated(axis: Vector3, angle: Double) -> Vector3 {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: axis) { pArg0 in
            let angle = Double(angle)
            withUnsafePointer(to: angle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForVector3.method_rotated(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the result of spherical linear interpolation between this vector and `to`, by amount `weight`. `weight` is on the range of 0.0 to 1.0, representing the amount of interpolation.
    /// 
    /// This method also handles interpolating the lengths if the input vectors have different lengths. For the special case of one or both input vectors having zero length, this method behaves like ``lerp(to:weight:)``.
    /// 
    public func slerp(to: Vector3, weight: Double) -> Vector3 {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: to) { pArg0 in
            let weight = Double(weight)
            withUnsafePointer(to: weight) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForVector3.method_slerp(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Performs a cubic interpolation between this vector and `b` using `preA` and `postB` as handles, and returns the result at position `weight`. `weight` is on the range of 0.0 to 1.0, representing the amount of interpolation.
    public func cubicInterpolate(b: Vector3, preA: Vector3, postB: Vector3, weight: Double) -> Vector3 {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: b) { pArg0 in
            withUnsafePointer(to: preA) { pArg1 in
                withUnsafePointer(to: postB) { pArg2 in
                    let weight = Double(weight)
                    withUnsafePointer(to: weight) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                var mutSelfCopy = self
                                withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                                   GodotInterfaceForVector3.method_cubic_interpolate(ptr, pArgs, &result, 4)
                                }
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Performs a cubic interpolation between this vector and `b` using `preA` and `postB` as handles, and returns the result at position `weight`. `weight` is on the range of 0.0 to 1.0, representing the amount of interpolation.
    /// 
    /// It can perform smoother interpolation than ``cubicInterpolate(b:preA:postB:weight:)`` by the time values.
    /// 
    public func cubicInterpolateInTime(b: Vector3, preA: Vector3, postB: Vector3, weight: Double, bT: Double, preAT: Double, postBT: Double) -> Vector3 {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: b) { pArg0 in
            withUnsafePointer(to: preA) { pArg1 in
                withUnsafePointer(to: postB) { pArg2 in
                    let weight = Double(weight)
                    withUnsafePointer(to: weight) { pArg3 in
                        let bT = Double(bT)
                        withUnsafePointer(to: bT) { pArg4 in
                            let preAT = Double(preAT)
                            withUnsafePointer(to: preAT) { pArg5 in
                                let postBT = Double(postBT)
                                withUnsafePointer(to: postBT) { pArg6 in
                                    withUnsafePointer(to: UnsafeRawPointersN7(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6)) { pArgs in
                                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 7) { pArgs in
                                            var mutSelfCopy = self
                                            withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                                               GodotInterfaceForVector3.method_cubic_interpolate_in_time(ptr, pArgs, &result, 7)
                                            }
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the point at the given `t` on the <a href="https://en.wikipedia.org/wiki/B%C3%A9zier_curve">Bézier curve</a> defined by this vector and the given `control1`, `control2`, and `end` points.
    public func bezierInterpolate(control1: Vector3, control2: Vector3, end: Vector3, t: Double) -> Vector3 {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: control1) { pArg0 in
            withUnsafePointer(to: control2) { pArg1 in
                withUnsafePointer(to: end) { pArg2 in
                    let t = Double(t)
                    withUnsafePointer(to: t) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                var mutSelfCopy = self
                                withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                                   GodotInterfaceForVector3.method_bezier_interpolate(ptr, pArgs, &result, 4)
                                }
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the derivative at the given `t` on the <a href="https://en.wikipedia.org/wiki/B%C3%A9zier_curve">Bézier curve</a> defined by this vector and the given `control1`, `control2`, and `end` points.
    public func bezierDerivative(control1: Vector3, control2: Vector3, end: Vector3, t: Double) -> Vector3 {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: control1) { pArg0 in
            withUnsafePointer(to: control2) { pArg1 in
                withUnsafePointer(to: end) { pArg2 in
                    let t = Double(t)
                    withUnsafePointer(to: t) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                var mutSelfCopy = self
                                withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                                   GodotInterfaceForVector3.method_bezier_derivative(ptr, pArgs, &result, 4)
                                }
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a new vector moved toward `to` by the fixed `delta` amount. Will not go past the final value.
    public func moveToward(to: Vector3, delta: Double) -> Vector3 {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: to) { pArg0 in
            let delta = Double(delta)
            withUnsafePointer(to: delta) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForVector3.method_move_toward(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the dot product of this vector and `with`. This can be used to compare the angle between two vectors. For example, this can be used to determine whether an enemy is facing the player.
    /// 
    /// The dot product will be `0` for a right angle (90 degrees), greater than 0 for angles narrower than 90 degrees and lower than 0 for angles wider than 90 degrees.
    /// 
    /// When using unit (normalized) vectors, the result will always be between `-1.0` (180 degree angle) when the vectors are facing opposite directions, and `1.0` (0 degree angle) when the vectors are aligned.
    /// 
    /// > Note: `a.dot(b)` is equivalent to `b.dot(a)`.
    /// 
    public func dot(with: Vector3) -> Double {
        #if !CUSTOM_BUILTIN_IMPLEMENTATIONS
        var result: Double = Double()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector3.method_dot(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
        #else // CUSTOM_BUILTIN_IMPLEMENTATIONS
        // https://github.com/godotengine/godot/blob/f7c567e2f56d6e63f4749387a67e5ea4903c4696/core/math/vector3.h#L206-L208
        return Double(x * with.x + y * with.y + z * with.z)        
        #endif
    }
    
    /// Returns the cross product of this vector and `with`.
    /// 
    /// This returns a vector perpendicular to both this and `with`, which would be the normal vector of the plane defined by the two vectors. As there are two such vectors, in opposite directions, this method returns the vector defined by a right-handed coordinate system. If the two vectors are parallel this returns an empty vector, making it useful for testing if two vectors are parallel.
    /// 
    public func cross(with: Vector3) -> Vector3 {
        #if !CUSTOM_BUILTIN_IMPLEMENTATIONS
        var result: Vector3 = Vector3()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector3.method_cross(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
        #else // CUSTOM_BUILTIN_IMPLEMENTATIONS
        // https://github.com/godotengine/godot/blob/f7c567e2f56d6e63f4749387a67e5ea4903c4696/core/math/vector3.h#L197-L204
        return Vector3(
            x: (y * with.z) - (z * with.y),
            y: (z * with.x) - (x * with.z),
            z: (x * with.y) - (y * with.x)
        )
        #endif
    }
    
    /// Returns the outer product with `with`.
    public func outer(with: Vector3) -> Basis {
        var result: Basis = Basis()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector3.method_outer(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a new vector with all components in absolute values (i.e. positive).
    public func abs() -> Vector3 {
        var result: Vector3 = Vector3()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector3.method_abs(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a new vector with all components rounded down (towards negative infinity).
    public func floor() -> Vector3 {
        var result: Vector3 = Vector3()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector3.method_floor(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a new vector with all components rounded up (towards positive infinity).
    public func ceil() -> Vector3 {
        var result: Vector3 = Vector3()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector3.method_ceil(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a new vector with all components rounded to the nearest integer, with halfway cases rounded away from zero.
    public func round() -> Vector3 {
        var result: Vector3 = Vector3()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector3.method_round(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a vector composed of the ``@GlobalScope.fposmod`` of this vector's components and `mod`.
    public func posmod(mod: Double) -> Vector3 {
        var result: Vector3 = Vector3()
        let mod = Double(mod)
        withUnsafePointer(to: mod) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector3.method_posmod(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a vector composed of the ``@GlobalScope.fposmod`` of this vector's components and `modv`'s components.
    public func posmodv(modv: Vector3) -> Vector3 {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: modv) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector3.method_posmodv(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a new vector resulting from projecting this vector onto the given vector `b`. The resulting new vector is parallel to `b`. See also ``slide(n:)``.
    /// 
    /// > Note: If the vector `b` is a zero vector, the components of the resulting new vector will be ``@GDScript.NAN``.
    /// 
    public func project(b: Vector3) -> Vector3 {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: b) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector3.method_project(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a new vector resulting from sliding this vector along a plane with normal `n`. The resulting new vector is perpendicular to `n`, and is equivalent to this vector minus its projection on `n`. See also ``project(b:)``.
    /// 
    /// > Note: The vector `n` must be normalized. See also ``normalized()``.
    /// 
    public func slide(n: Vector3) -> Vector3 {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: n) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector3.method_slide(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the vector "bounced off" from a plane defined by the given normal `n`.
    /// 
    /// > Note: ``bounce(n:)`` performs the operation that most engines and frameworks call [code skip-lint]reflect()`.
    /// 
    public func bounce(n: Vector3) -> Vector3 {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: n) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector3.method_bounce(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the result of reflecting the vector through a plane defined by the given normal vector `n`.
    /// 
    /// > Note: ``reflect(n:)`` differs from what other engines and frameworks call [code skip-lint]reflect()`. In other engines, [code skip-lint]reflect()` returns the result of the vector reflected by the given plane. The reflection thus passes through the given normal. While in Godot the reflection passes through the plane and can be thought of as bouncing off the normal. See also ``bounce(n:)`` which does what most engines call [code skip-lint]reflect()`.
    /// 
    public func reflect(n: Vector3) -> Vector3 {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: n) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector3.method_reflect(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a new vector with each component set to `1.0` if it's positive, `-1.0` if it's negative, and `0.0` if it's zero. The result is identical to calling ``@GlobalScope.sign`` on each component.
    public func sign() -> Vector3 {
        var result: Vector3 = Vector3()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector3.method_sign(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the octahedral-encoded (oct32) form of this ``Vector3`` as a ``Vector2``. Since a ``Vector2`` occupies 1/3 less memory compared to ``Vector3``, this form of compression can be used to pass greater amounts of ``normalized()`` ``Vector3``s without increasing storage or memory requirements. See also ``octahedronDecode(uv:)``.
    /// 
    /// > Note: ``octahedronEncode()`` can only be used for ``normalized()`` vectors. ``octahedronEncode()`` does _not_ check whether this ``Vector3`` is normalized, and will return a value that does not decompress to the original value if the ``Vector3`` is not normalized.
    /// 
    /// > Note: Octahedral compression is _lossy_, although visual differences are rarely perceptible in real world scenarios.
    /// 
    public func octahedronEncode() -> Vector2 {
        var result: Vector2 = Vector2()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector3.method_octahedron_encode(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the component-wise minimum of this and `with`, equivalent to `Vector3(minf(x, with.x), minf(y, with.y), minf(z, with.z))`.
    public func min(with: Vector3) -> Vector3 {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector3.method_min(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the component-wise minimum of this and `with`, equivalent to `Vector3(minf(x, with), minf(y, with), minf(z, with))`.
    public func minf(with: Double) -> Vector3 {
        var result: Vector3 = Vector3()
        let with = Double(with)
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector3.method_minf(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the component-wise maximum of this and `with`, equivalent to `Vector3(maxf(x, with.x), maxf(y, with.y), maxf(z, with.z))`.
    public func max(with: Vector3) -> Vector3 {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector3.method_max(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the component-wise maximum of this and `with`, equivalent to `Vector3(maxf(x, with), maxf(y, with), maxf(z, with))`.
    public func maxf(with: Double) -> Vector3 {
        var result: Vector3 = Vector3()
        let with = Double(with)
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector3.method_maxf(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the ``Vector3`` from an octahedral-compressed form created using ``octahedronEncode()`` (stored as a ``Vector2``).
    public static func octahedronDecode(uv: Vector2) -> Vector3 {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: uv) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForVector3.method_octahedron_decode(nil, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    public subscript(index: Int64) -> Double {
        mutating get {
            var result = Double()
            GodotInterfaceForVector3.indexed_getter (&self, index, &result)
            return result
        }
        
        set {
            var value = newValue
            GodotInterfaceForVector3.indexed_setter (&self, index, &value)
        }
        
    }
    
    /// Multiplies each component of the ``Vector3`` by the given integer.
    public static func *(lhs: Vector3, rhs: Int64) -> Vector3  {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector3.operator_5(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Divides each component of the ``Vector3`` by the given integer.
    public static func /(lhs: Vector3, rhs: Int64) -> Vector3  {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector3.operator_6(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Multiplies each component of the ``Vector3`` by the given float.
    public static func *(lhs: Vector3, rhs: Double) -> Vector3  {
        #if !CUSTOM_BUILTIN_IMPLEMENTATIONS
        var result: Vector3 = Vector3()
        withUnsafePointer(to: lhs) { pArg0 in
            let rhs = Double(rhs)
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector3.operator_7(pArg0, pArg1, &result)
            }
            
        }
        
        return result
        #else // CUSTOM_BUILTIN_IMPLEMENTATIONS
        let rhs = Float(rhs)
        return Vector3(x: lhs.x * rhs, y: lhs.y * rhs, z: lhs.z * rhs)
        #endif
    }
    
    /// Divides each component of the ``Vector3`` by the given float.
    public static func /(lhs: Vector3, rhs: Double) -> Vector3  {
        #if !CUSTOM_BUILTIN_IMPLEMENTATIONS
        var result: Vector3 = Vector3()
        withUnsafePointer(to: lhs) { pArg0 in
            let rhs = Double(rhs)
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector3.operator_8(pArg0, pArg1, &result)
            }
            
        }
        
        return result
        #else // CUSTOM_BUILTIN_IMPLEMENTATIONS
        let rhs = Float(rhs)
        return Vector3(x: lhs.x / rhs, y: lhs.y / rhs, z: lhs.z / rhs)
        #endif
    }
    
    /// Returns `true` if the vectors are exactly equal.
    /// 
    /// > Note: Due to floating-point precision errors, consider using ``isEqualApprox(to:)`` instead, which is more reliable.
    /// 
    /// > Note: Vectors with ``@GDScript.NAN`` elements don't behave the same as other vectors. Therefore, the results from this operator may not be accurate if NaNs are included.
    /// 
    public static func ==(lhs: Vector3, rhs: Vector3) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector3.operator_9(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the vectors are not equal.
    /// 
    /// > Note: Due to floating-point precision errors, consider using ``isEqualApprox(to:)`` instead, which is more reliable.
    /// 
    /// > Note: Vectors with ``@GDScript.NAN`` elements don't behave the same as other vectors. Therefore, the results from this operator may not be accurate if NaNs are included.
    /// 
    public static func !=(lhs: Vector3, rhs: Vector3) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector3.operator_10(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Compares two ``Vector3`` vectors by first checking if the X value of the left vector is less than the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, and then with the Z values. This operator is useful for sorting vectors.
    /// 
    /// > Note: Vectors with ``@GDScript.NAN`` elements don't behave the same as other vectors. Therefore, the results from this operator may not be accurate if NaNs are included.
    /// 
    public static func <(lhs: Vector3, rhs: Vector3) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector3.operator_11(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Compares two ``Vector3`` vectors by first checking if the X value of the left vector is less than or equal to the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, and then with the Z values. This operator is useful for sorting vectors.
    /// 
    /// > Note: Vectors with ``@GDScript.NAN`` elements don't behave the same as other vectors. Therefore, the results from this operator may not be accurate if NaNs are included.
    /// 
    public static func <=(lhs: Vector3, rhs: Vector3) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector3.operator_12(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Compares two ``Vector3`` vectors by first checking if the X value of the left vector is greater than the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, and then with the Z values. This operator is useful for sorting vectors.
    /// 
    /// > Note: Vectors with ``@GDScript.NAN`` elements don't behave the same as other vectors. Therefore, the results from this operator may not be accurate if NaNs are included.
    /// 
    public static func >(lhs: Vector3, rhs: Vector3) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector3.operator_13(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Compares two ``Vector3`` vectors by first checking if the X value of the left vector is greater than or equal to the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, and then with the Z values. This operator is useful for sorting vectors.
    /// 
    /// > Note: Vectors with ``@GDScript.NAN`` elements don't behave the same as other vectors. Therefore, the results from this operator may not be accurate if NaNs are included.
    /// 
    public static func >=(lhs: Vector3, rhs: Vector3) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector3.operator_14(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Adds each component of the ``Vector3`` by the components of the given ``Vector3``.
    /// 
    public static func +(lhs: Vector3, rhs: Vector3) -> Vector3  {
        #if !CUSTOM_BUILTIN_IMPLEMENTATIONS
        var result: Vector3 = Vector3()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector3.operator_15(pArg0, pArg1, &result)
            }
            
        }
        
        return result
        #else // CUSTOM_BUILTIN_IMPLEMENTATIONS
        return Vector3(x: lhs.x + rhs.x, y: lhs.y + rhs.y, z: lhs.z + rhs.z)
        #endif
    }
    
    /// Subtracts each component of the ``Vector3`` by the components of the given ``Vector3``.
    /// 
    public static func -(lhs: Vector3, rhs: Vector3) -> Vector3  {
        #if !CUSTOM_BUILTIN_IMPLEMENTATIONS
        var result: Vector3 = Vector3()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector3.operator_16(pArg0, pArg1, &result)
            }
            
        }
        
        return result
        #else // CUSTOM_BUILTIN_IMPLEMENTATIONS
        return Vector3(x: lhs.x - rhs.x, y: lhs.y - rhs.y, z: lhs.z - rhs.z)
        #endif
    }
    
    /// Multiplies each component of the ``Vector3`` by the components of the given ``Vector3``.
    /// 
    public static func *(lhs: Vector3, rhs: Vector3) -> Vector3  {
        #if !CUSTOM_BUILTIN_IMPLEMENTATIONS
        var result: Vector3 = Vector3()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector3.operator_17(pArg0, pArg1, &result)
            }
            
        }
        
        return result
        #else // CUSTOM_BUILTIN_IMPLEMENTATIONS
        return Vector3(x: lhs.x * rhs.x, y: lhs.y * rhs.y, z: lhs.z * rhs.z)
        #endif
    }
    
    /// Divides each component of the ``Vector3`` by the components of the given ``Vector3``.
    /// 
    public static func /(lhs: Vector3, rhs: Vector3) -> Vector3  {
        #if !CUSTOM_BUILTIN_IMPLEMENTATIONS
        var result: Vector3 = Vector3()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector3.operator_18(pArg0, pArg1, &result)
            }
            
        }
        
        return result
        #else // CUSTOM_BUILTIN_IMPLEMENTATIONS
        return Vector3(x: lhs.x / rhs.x, y: lhs.y / rhs.y, z: lhs.z / rhs.z)
        #endif
    }
    
    /// Inversely transforms (multiplies) the ``Vector3`` by the given ``Quaternion``.
    /// 
    /// `vector * quaternion` is equivalent to `quaternion.inverse() * vector`. See ``Quaternion/inverse()``.
    /// 
    public static func *(lhs: Vector3, rhs: Quaternion) -> Vector3  {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector3.operator_19(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Inversely transforms (multiplies) the ``Vector3`` by the given ``Basis`` matrix, under the assumption that the basis is orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).
    /// 
    /// `vector * basis` is equivalent to `basis.transposed() * vector`. See ``Basis/transposed()``.
    /// 
    /// For transforming by inverse of a non-orthonormal basis (e.g. with scaling) `basis.inverse() * vector` can be used instead. See ``Basis/inverse()``.
    /// 
    public static func *(lhs: Vector3, rhs: Basis) -> Vector3  {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector3.operator_20(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Inversely transforms (multiplies) the ``Vector3`` by the given ``Transform3D`` transformation matrix, under the assumption that the transformation basis is orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).
    /// 
    /// `vector * transform` is equivalent to `transform.inverse() * vector`. See ``Transform3D/inverse()``.
    /// 
    /// For transforming by inverse of an affine transformation (e.g. with scaling) `transform.affine_inverse() * vector` can be used instead. See ``Transform3D/affineInverse()``.
    /// 
    public static func *(lhs: Vector3, rhs: Transform3D) -> Vector3  {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector3.operator_21(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Wrap ``Vector3`` into a ``Variant``
    @inline(__always)
    @inlinable
    public func toVariant() -> Variant {
        Variant(self)
    }
    
    /// Wrap ``Vector3`` into a ``Variant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toVariant() -> Variant? {
        Variant(self)
    }
    
    /// Wrap ``Vector3`` into a ``FastVariant``
    @inline(__always)
    @inlinable
    public func toFastVariant() -> FastVariant {
        FastVariant(self)
    }
    
    /// Wrap ``Vector3`` into a ``FastVariant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toFastVariant() -> FastVariant? {
        FastVariant(self)
    }
    
    /// Extract ``Vector3`` from a ``Variant``. Throws `VariantConversionError` if it's not possible.
    @inline(__always)
    @inlinable
    public static func fromVariantOrThrow(_ variant: Variant) throws(VariantConversionError) -> Self {                
        guard let value = Self(variant) else {
            throw .unexpectedContent(parsing: self, from: variant)
        }
        return value                
    }
    
    @inline(__always)
    @inlinable
    public static func fromFastVariantOrThrow(_ variant: borrowing FastVariant) throws(VariantConversionError) -> Self {                
        guard let value = Self(variant) else {
            throw .unexpectedContent(parsing: self, from: variant)
        }
        return value                
    }
    
    /// Initialze ``Vector3`` from ``Variant``. Fails if `variant` doesn't contain ``Vector3``
    @inline(__always)                
    public init?(_ variant: Variant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForVector3.selfFromVariant)                        
        }
    }
    
    /// Initialze ``Vector3`` from ``Variant``. Fails if `variant` doesn't contain ``Vector3`` or is `nil`
    @inline(__always)
    @inlinable
    public init?(_ variant: Variant?) {
        guard let variant else { return nil }
        self.init(variant)
    }
    
    /// Initialze ``Vector3`` from ``FastVariant``. Fails if `variant` doesn't contain ``Vector3``
    @inline(__always)                
    public init?(_ variant: borrowing FastVariant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForVector3.selfFromVariant)                        
        }
    }
    
    /// Initialze ``Vector3`` from ``FastVariant``. Fails if `variant` doesn't contain ``Vector3`` or is `nil`
    @inline(__always)
    @inlinable
    public init?(_ variant: borrowing FastVariant?) {
        switch variant {
        case .some(let variant):
            self.init(variant)
        case .none:
            return nil
        }
    }
    
    /// Internal API. For indicating that Godot `Array` of ``Vector3`` has type `Array[Vector3]`
    @inline(__always)
    @inlinable
    public static var _variantType: Variant.GType {
        .vector3 
    }
}

public extension Variant {
    /// Initialize ``Variant`` by wrapping ``Vector3?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    convenience init?(_ from: Vector3?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``Variant`` by wrapping ``Vector3``
    @inline(__always)
    convenience init(_ from: Vector3) {
        self.init(payload: from, constructor: GodotInterfaceForVector3.variantFromSelf)
    }
    
}

public extension FastVariant {
    /// Initialize ``FastVariant`` by wrapping ``Vector3?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    init?(_ from: Vector3?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``FastVariant`` by wrapping ``Vector3``
    @inline(__always)
    init(_ from: Vector3) {
        self.init(payload: from, constructor: GodotInterfaceForVector3.variantFromSelf)
    }
    
}

/// Static storage for keeping pointers to Godot implementation wrapped by Vector3
enum GodotInterfaceForVector3 {
    // MARK: - Constructors
    static let constructor0: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR3, 0)!
    }()
    
    static let constructor1: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR3, 1)!
    }()
    
    static let constructor2: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR3, 2)!
    }()
    
    static let constructor3: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR3, 3)!
    }()
    
    // MARK: - Methods
    static let method_min_axis_index: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("min_axis_index")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 3173160232)!
    }()
    
    static let method_max_axis_index: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("max_axis_index")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 3173160232)!
    }()
    
    static let method_angle_to: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("angle_to")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 1047977935)!
    }()
    
    static let method_signed_angle_to: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("signed_angle_to")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 2781412522)!
    }()
    
    static let method_direction_to: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("direction_to")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 2923479887)!
    }()
    
    static let method_distance_to: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("distance_to")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 1047977935)!
    }()
    
    static let method_distance_squared_to: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("distance_squared_to")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 1047977935)!
    }()
    
    static let method_length: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("length")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 466405837)!
    }()
    
    static let method_length_squared: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("length_squared")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 466405837)!
    }()
    
    static let method_limit_length: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("limit_length")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 514930144)!
    }()
    
    static let method_normalized: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("normalized")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 1776574132)!
    }()
    
    static let method_is_normalized: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_normalized")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 3918633141)!
    }()
    
    static let method_is_equal_approx: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_equal_approx")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 1749054343)!
    }()
    
    static let method_is_zero_approx: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_zero_approx")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 3918633141)!
    }()
    
    static let method_is_finite: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_finite")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 3918633141)!
    }()
    
    static let method_inverse: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("inverse")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 1776574132)!
    }()
    
    static let method_clamp: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("clamp")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 4145107892)!
    }()
    
    static let method_clampf: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("clampf")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 2329594628)!
    }()
    
    static let method_snappedf: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("snappedf")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 514930144)!
    }()
    
    static let method_rotated: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("rotated")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 1682608829)!
    }()
    
    static let method_slerp: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("slerp")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 1682608829)!
    }()
    
    static let method_cubic_interpolate: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("cubic_interpolate")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 2597922253)!
    }()
    
    static let method_cubic_interpolate_in_time: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("cubic_interpolate_in_time")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 3256682901)!
    }()
    
    static let method_bezier_interpolate: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("bezier_interpolate")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 2597922253)!
    }()
    
    static let method_bezier_derivative: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("bezier_derivative")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 2597922253)!
    }()
    
    static let method_move_toward: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("move_toward")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 1682608829)!
    }()
    
    static let method_dot: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("dot")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 1047977935)!
    }()
    
    static let method_cross: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("cross")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 2923479887)!
    }()
    
    static let method_outer: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("outer")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 3934786792)!
    }()
    
    static let method_abs: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("abs")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 1776574132)!
    }()
    
    static let method_floor: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("floor")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 1776574132)!
    }()
    
    static let method_ceil: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("ceil")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 1776574132)!
    }()
    
    static let method_round: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("round")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 1776574132)!
    }()
    
    static let method_posmod: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("posmod")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 514930144)!
    }()
    
    static let method_posmodv: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("posmodv")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 2923479887)!
    }()
    
    static let method_project: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("project")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 2923479887)!
    }()
    
    static let method_slide: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("slide")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 2923479887)!
    }()
    
    static let method_bounce: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("bounce")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 2923479887)!
    }()
    
    static let method_reflect: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("reflect")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 2923479887)!
    }()
    
    static let method_sign: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("sign")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 1776574132)!
    }()
    
    static let method_octahedron_encode: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("octahedron_encode")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 2428350749)!
    }()
    
    static let method_min: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("min")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 2923479887)!
    }()
    
    static let method_minf: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("minf")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 514930144)!
    }()
    
    static let method_max: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("max")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 2923479887)!
    }()
    
    static let method_maxf: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("maxf")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 514930144)!
    }()
    
    static let method_octahedron_decode: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("octahedron_decode")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, &name.content, 3991820552)!
    }()
    
    static let indexed_getter: GDExtensionPtrIndexedGetter = {
        return gi.variant_get_ptr_indexed_getter (GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    
    static let indexed_setter: GDExtensionPtrIndexedSetter = {
        return gi.variant_get_ptr_indexed_setter (GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    
    // MARK: - Operators
    static let operator_5: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    static let operator_6: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    static let operator_7: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    
    static let operator_8: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    
    static let operator_9: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    
    static let operator_10: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    
    static let operator_11: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    
    static let operator_12: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    
    static let operator_13: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    
    static let operator_14: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    
    static let operator_15: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    
    static let operator_16: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_SUBTRACT, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    
    static let operator_17: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    
    static let operator_18: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    
    static let operator_19: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_QUATERNION)!
    }()
    
    static let operator_20: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_BASIS)!
    }()
    
    static let operator_21: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)!
    }()
    
    // MARK: - Variant conversion
    static let variantFromSelf: GDExtensionVariantFromTypeConstructorFunc = {
        gi.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    
    static let selfFromVariant: GDExtensionTypeFromVariantConstructorFunc = {
        gi.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    
    
}

