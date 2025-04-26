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


/// A 2D vector using floating-point coordinates.
/// 
/// A 2-element structure that can be used to represent 2D coordinates or any other pair of numeric values.
/// 
/// It uses floating-point coordinates. By default, these floating-point values use 32-bit precision, unlike float which is always 64-bit. If double precision is needed, compile the engine with the option `precision=double`.
/// 
/// See ``Vector2i`` for its integer counterpart.
/// 
/// > Note: In a boolean context, a Vector2 will evaluate to `false` if it's equal to `Vector2(0, 0)`. Otherwise, a Vector2 will always evaluate to `true`.
/// 
public struct Vector2: _GodotBridgeableBuiltin, Equatable, Hashable {
    /// The vector's X component. Also accessible by using the index position `[0]`.
    public var x: Float
    /// The vector's Y component. Also accessible by using the index position `[1]`.
    public var y: Float
    public enum Axis: Int64, CaseIterable {
        /// Enumerated value for the X axis. Returned by ``maxAxisIndex()`` and ``minAxisIndex()``.
        case x = 0 // AXIS_X
        /// Enumerated value for the Y axis. Returned by ``maxAxisIndex()`` and ``minAxisIndex()``.
        case y = 1 // AXIS_Y
    }
    
    /// Zero vector, a vector with all components set to `0`.
    public static var zero: Vector2 { Vector2 (x: 0, y: 0) }
    /// One vector, a vector with all components set to `1`.
    public static var one: Vector2 { Vector2 (x: 1, y: 1) }
    /// Infinity vector, a vector with all components set to ``@GDScript.INF``.
    public static var inf: Vector2 { Vector2 (x: Float.infinity, y: Float.infinity) }
    /// Left unit vector. Represents the direction of left.
    public static var left: Vector2 { Vector2 (x: -1, y: 0) }
    /// Right unit vector. Represents the direction of right.
    public static var right: Vector2 { Vector2 (x: 1, y: 0) }
    /// Up unit vector. Y is down in 2D, so this vector points -Y.
    public static var up: Vector2 { Vector2 (x: 0, y: -1) }
    /// Down unit vector. Y is down in 2D, so this vector points +Y.
    public static var down: Vector2 { Vector2 (x: 0, y: 1) }
    /// Constructs a default-initialized ``Vector2`` with all components set to `0`.
    public init() {
        self.x = Float ()
        self.y = Float ()
    }
    
    /// Constructs a ``Vector2`` as a copy of the given ``Vector2``.
    public init(from: Vector2) {
        self.x = Float ()
        self.y = Float ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForVector2.constructor1(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs a new ``Vector2`` from ``Vector2i``.
    public init(from: Vector2i) {
        self.x = Float ()
        self.y = Float ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForVector2.constructor2(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs a new ``Vector2`` from the given `x` and `y`.
    public init(x: Float, y: Float) {
        self.x = x
        self.y = y
    }
    
    
    /* Methods */
    
    /// Returns this vector's angle with respect to the positive X axis, or `(1, 0)` vector, in radians.
    /// 
    /// For example, `Vector2.RIGHT.angle()` will return zero, `Vector2.DOWN.angle()` will return `PI / 2` (a quarter turn, or 90 degrees), and `Vector2(1, -1).angle()` will return `-PI / 4` (a negative eighth turn, or -45 degrees).
    /// 
    /// <a href="https://raw.githubusercontent.com/godotengine/godot-docs/master/img/vector2_angle.png">Illustration of the returned angle.</a>
    /// 
    /// Equivalent to the result of ``@GlobalScope.atan2`` when called with the vector's ``y`` and ``x`` as parameters: `atan2(y, x)`.
    /// 
    public func angle() -> Double {
        var result: Double = Double()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector2.method_angle(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the signed angle to the given vector, in radians.
    /// 
    /// <a href="https://raw.githubusercontent.com/godotengine/godot-docs/master/img/vector2_angle_to.png">Illustration of the returned angle.</a>
    /// 
    public func angleTo(_ to: Vector2) -> Double {
        var result: Double = Double()
        withUnsafePointer(to: to) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector2.method_angle_to(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the angle between the line connecting the two points and the X axis, in radians.
    /// 
    /// `a.angle_to_point(b)` is equivalent of doing `(b - a).angle()`.
    /// 
    /// <a href="https://raw.githubusercontent.com/godotengine/godot-docs/master/img/vector2_angle_to_point.png">Illustration of the returned angle.</a>
    /// 
    public func angleToPoint(to: Vector2) -> Double {
        var result: Double = Double()
        withUnsafePointer(to: to) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector2.method_angle_to_point(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the normalized vector pointing from this vector to `to`. This is equivalent to using `(b - a).normalized()`.
    public func directionTo(_ to: Vector2) -> Vector2 {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: to) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector2.method_direction_to(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the distance between this vector and `to`.
    public func distanceTo(_ to: Vector2) -> Double {
        var result: Double = Double()
        withUnsafePointer(to: to) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector2.method_distance_to(ptr, pArgs, &result, 1)
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
    public func distanceSquaredTo(_ to: Vector2) -> Double {
        var result: Double = Double()
        withUnsafePointer(to: to) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector2.method_distance_squared_to(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the length (magnitude) of this vector.
    public func length() -> Double {
        var result: Double = Double()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector2.method_length(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the squared length (squared magnitude) of this vector.
    /// 
    /// This method runs faster than ``length()``, so prefer it if you need to compare vectors or need the squared distance for some formula.
    /// 
    public func lengthSquared() -> Double {
        var result: Double = Double()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector2.method_length_squared(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the vector with a maximum length by limiting its length to `length`. If the vector is non-finite, the result is undefined.
    public func limitLength(_ length: Double = 1.0) -> Vector2 {
        var result: Vector2 = Vector2()
        let length = Double(length)
        withUnsafePointer(to: length) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector2.method_limit_length(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the result of scaling the vector to unit length. Equivalent to `v / v.length()`. Returns `(0, 0)` if `v.length() == 0`. See also ``isNormalized()``.
    /// 
    /// > Note: This function may return incorrect values if the input vector length is near zero.
    /// 
    public func normalized() -> Vector2 {
        var result: Vector2 = Vector2()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector2.method_normalized(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if the vector is normalized, i.e. its length is approximately equal to 1.
    public func isNormalized() -> Bool {
        var result: Bool = Bool()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector2.method_is_normalized(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if this vector and `to` are approximately equal, by running ``@GlobalScope.is_equal_approx`` on each component.
    public func isEqualApprox(to: Vector2) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: to) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector2.method_is_equal_approx(ptr, pArgs, &result, 1)
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
           GodotInterfaceForVector2.method_is_zero_approx(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if this vector is finite, by calling ``@GlobalScope.is_finite`` on each component.
    public func isFinite() -> Bool {
        var result: Bool = Bool()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector2.method_is_finite(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a vector composed of the ``@GlobalScope.fposmod`` of this vector's components and `mod`.
    public func posmod(mod: Double) -> Vector2 {
        var result: Vector2 = Vector2()
        let mod = Double(mod)
        withUnsafePointer(to: mod) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector2.method_posmod(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a vector composed of the ``@GlobalScope.fposmod`` of this vector's components and `modv`'s components.
    public func posmodv(modv: Vector2) -> Vector2 {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: modv) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector2.method_posmodv(ptr, pArgs, &result, 1)
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
    public func project(b: Vector2) -> Vector2 {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: b) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector2.method_project(ptr, pArgs, &result, 1)
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
    public func slerp(to: Vector2, weight: Double) -> Vector2 {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: to) { pArg0 in
            let weight = Double(weight)
            withUnsafePointer(to: weight) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForVector2.method_slerp(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Performs a cubic interpolation between this vector and `b` using `preA` and `postB` as handles, and returns the result at position `weight`. `weight` is on the range of 0.0 to 1.0, representing the amount of interpolation.
    public func cubicInterpolate(b: Vector2, preA: Vector2, postB: Vector2, weight: Double) -> Vector2 {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: b) { pArg0 in
            withUnsafePointer(to: preA) { pArg1 in
                withUnsafePointer(to: postB) { pArg2 in
                    let weight = Double(weight)
                    withUnsafePointer(to: weight) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                var mutSelfCopy = self
                                withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                                   GodotInterfaceForVector2.method_cubic_interpolate(ptr, pArgs, &result, 4)
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
    public func cubicInterpolateInTime(b: Vector2, preA: Vector2, postB: Vector2, weight: Double, bT: Double, preAT: Double, postBT: Double) -> Vector2 {
        var result: Vector2 = Vector2()
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
                                               GodotInterfaceForVector2.method_cubic_interpolate_in_time(ptr, pArgs, &result, 7)
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
    public func bezierInterpolate(control1: Vector2, control2: Vector2, end: Vector2, t: Double) -> Vector2 {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: control1) { pArg0 in
            withUnsafePointer(to: control2) { pArg1 in
                withUnsafePointer(to: end) { pArg2 in
                    let t = Double(t)
                    withUnsafePointer(to: t) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                var mutSelfCopy = self
                                withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                                   GodotInterfaceForVector2.method_bezier_interpolate(ptr, pArgs, &result, 4)
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
    public func bezierDerivative(control1: Vector2, control2: Vector2, end: Vector2, t: Double) -> Vector2 {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: control1) { pArg0 in
            withUnsafePointer(to: control2) { pArg1 in
                withUnsafePointer(to: end) { pArg2 in
                    let t = Double(t)
                    withUnsafePointer(to: t) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                var mutSelfCopy = self
                                withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                                   GodotInterfaceForVector2.method_bezier_derivative(ptr, pArgs, &result, 4)
                                }
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the axis of the vector's highest value. See `AXIS_*` constants. If all components are equal, this method returns ``Axis/x``.
    public func maxAxisIndex() -> Int64 {
        var result: Int64 = Int64()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector2.method_max_axis_index(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the axis of the vector's lowest value. See `AXIS_*` constants. If all components are equal, this method returns ``Axis/y``.
    public func minAxisIndex() -> Int64 {
        var result: Int64 = Int64()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector2.method_min_axis_index(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a new vector moved toward `to` by the fixed `delta` amount. Will not go past the final value.
    public func moveToward(to: Vector2, delta: Double) -> Vector2 {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: to) { pArg0 in
            let delta = Double(delta)
            withUnsafePointer(to: delta) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForVector2.method_move_toward(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the result of rotating this vector by `angle` (in radians). See also ``@GlobalScope.deg_to_rad``.
    public func rotated(angle: Double) -> Vector2 {
        var result: Vector2 = Vector2()
        let angle = Double(angle)
        withUnsafePointer(to: angle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector2.method_rotated(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a perpendicular vector rotated 90 degrees counter-clockwise compared to the original, with the same length.
    public func orthogonal() -> Vector2 {
        var result: Vector2 = Vector2()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector2.method_orthogonal(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a new vector with all components rounded down (towards negative infinity).
    public func floor() -> Vector2 {
        var result: Vector2 = Vector2()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector2.method_floor(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a new vector with all components rounded up (towards positive infinity).
    public func ceil() -> Vector2 {
        var result: Vector2 = Vector2()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector2.method_ceil(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a new vector with all components rounded to the nearest integer, with halfway cases rounded away from zero.
    public func round() -> Vector2 {
        var result: Vector2 = Vector2()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector2.method_round(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the aspect ratio of this vector, the ratio of ``x`` to ``y``.
    public func aspect() -> Double {
        var result: Double = Double()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector2.method_aspect(ptr, nil, &result, 0)
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
    public func dot(with: Vector2) -> Double {
        var result: Double = Double()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector2.method_dot(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a new vector resulting from sliding this vector along a line with normal `n`. The resulting new vector is perpendicular to `n`, and is equivalent to this vector minus its projection on `n`. See also ``project(b:)``.
    /// 
    /// > Note: The vector `n` must be normalized. See also ``normalized()``.
    /// 
    public func slide(n: Vector2) -> Vector2 {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: n) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector2.method_slide(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the vector "bounced off" from a line defined by the given normal `n` perpendicular to the line.
    /// 
    /// > Note: ``bounce(n:)`` performs the operation that most engines and frameworks call [code skip-lint]reflect()`.
    /// 
    public func bounce(n: Vector2) -> Vector2 {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: n) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector2.method_bounce(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the result of reflecting the vector from a line defined by the given direction vector `line`.
    /// 
    /// > Note: ``reflect(line:)`` differs from what other engines and frameworks call [code skip-lint]reflect()`. In other engines, [code skip-lint]reflect()` takes a normal direction which is a direction perpendicular to the line. In Godot, you specify the direction of the line directly. See also ``bounce(n:)`` which does what most engines call [code skip-lint]reflect()`.
    /// 
    public func reflect(line: Vector2) -> Vector2 {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector2.method_reflect(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the 2D analog of the cross product for this vector and `with`.
    /// 
    /// This is the signed area of the parallelogram formed by the two vectors. If the second vector is clockwise from the first vector, then the cross product is the positive area. If counter-clockwise, the cross product is the negative area. If the two vectors are parallel this returns zero, making it useful for testing if two vectors are parallel.
    /// 
    /// > Note: Cross product is not defined in 2D mathematically. This method embeds the 2D vectors in the XY plane of 3D space and uses their cross product's Z component as the analog.
    /// 
    public func cross(with: Vector2) -> Double {
        var result: Double = Double()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector2.method_cross(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a new vector with all components in absolute values (i.e. positive).
    public func abs() -> Vector2 {
        var result: Vector2 = Vector2()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector2.method_abs(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a new vector with each component set to `1.0` if it's positive, `-1.0` if it's negative, and `0.0` if it's zero. The result is identical to calling ``@GlobalScope.sign`` on each component.
    public func sign() -> Vector2 {
        var result: Vector2 = Vector2()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector2.method_sign(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a new vector with all components clamped between the components of `min` and `max`, by running ``@GlobalScope.clamp`` on each component.
    public func clamp(min: Vector2, max: Vector2) -> Vector2 {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: min) { pArg0 in
            withUnsafePointer(to: max) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForVector2.method_clamp(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a new vector with all components clamped between `min` and `max`, by running ``@GlobalScope.clamp`` on each component.
    public func clampf(min: Double, max: Double) -> Vector2 {
        var result: Vector2 = Vector2()
        let min = Double(min)
        withUnsafePointer(to: min) { pArg0 in
            let max = Double(max)
            withUnsafePointer(to: max) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForVector2.method_clampf(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a new vector with each component snapped to the nearest multiple of `step`. This can also be used to round the components to an arbitrary number of decimals.
    public func snappedf(step: Double) -> Vector2 {
        var result: Vector2 = Vector2()
        let step = Double(step)
        withUnsafePointer(to: step) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector2.method_snappedf(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the component-wise minimum of this and `with`, equivalent to `Vector2(minf(x, with.x), minf(y, with.y))`.
    public func min(with: Vector2) -> Vector2 {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector2.method_min(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the component-wise minimum of this and `with`, equivalent to `Vector2(minf(x, with), minf(y, with))`.
    public func minf(with: Double) -> Vector2 {
        var result: Vector2 = Vector2()
        let with = Double(with)
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector2.method_minf(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the component-wise maximum of this and `with`, equivalent to `Vector2(maxf(x, with.x), maxf(y, with.y))`.
    public func max(with: Vector2) -> Vector2 {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector2.method_max(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the component-wise maximum of this and `with`, equivalent to `Vector2(maxf(x, with), maxf(y, with))`.
    public func maxf(with: Double) -> Vector2 {
        var result: Vector2 = Vector2()
        let with = Double(with)
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector2.method_maxf(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Creates a unit ``Vector2`` rotated to the given `angle` in radians. This is equivalent to doing `Vector2(cos(angle), sin(angle))` or `Vector2.RIGHT.rotated(angle)`.
    /// 
    public static func fromAngle(_ angle: Double) -> Vector2 {
        var result: Vector2 = Vector2()
        let angle = Double(angle)
        withUnsafePointer(to: angle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForVector2.method_from_angle(nil, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    public subscript(index: Int64) -> Double {
        mutating get {
            var result = Double()
            GodotInterfaceForVector2.indexed_getter (&self, index, &result)
            return result
        }
        
        set {
            var value = newValue
            GodotInterfaceForVector2.indexed_setter (&self, index, &value)
        }
        
    }
    
    /// Multiplies each component of the ``Vector2`` by the given integer.
    public static func *(lhs: Vector2, rhs: Int64) -> Vector2  {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector2.operator_5(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Divides each component of the ``Vector2`` by the given integer.
    public static func /(lhs: Vector2, rhs: Int64) -> Vector2  {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector2.operator_6(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Multiplies each component of the ``Vector2`` by the given float.
    public static func *(lhs: Vector2, rhs: Double) -> Vector2  {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: lhs) { pArg0 in
            let rhs = Double(rhs)
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector2.operator_7(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Divides each component of the ``Vector2`` by the given float.
    public static func /(lhs: Vector2, rhs: Double) -> Vector2  {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: lhs) { pArg0 in
            let rhs = Double(rhs)
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector2.operator_8(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the vectors are exactly equal.
    /// 
    /// > Note: Due to floating-point precision errors, consider using ``isEqualApprox(to:)`` instead, which is more reliable.
    /// 
    /// > Note: Vectors with ``@GDScript.NAN`` elements don't behave the same as other vectors. Therefore, the results from this operator may not be accurate if NaNs are included.
    /// 
    public static func ==(lhs: Vector2, rhs: Vector2) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector2.operator_9(pArg0, pArg1, &result)
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
    public static func !=(lhs: Vector2, rhs: Vector2) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector2.operator_10(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Compares two ``Vector2`` vectors by first checking if the X value of the left vector is less than the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors. This operator is useful for sorting vectors.
    /// 
    /// > Note: Vectors with ``@GDScript.NAN`` elements don't behave the same as other vectors. Therefore, the results from this operator may not be accurate if NaNs are included.
    /// 
    public static func <(lhs: Vector2, rhs: Vector2) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector2.operator_11(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Compares two ``Vector2`` vectors by first checking if the X value of the left vector is less than or equal to the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors. This operator is useful for sorting vectors.
    /// 
    /// > Note: Vectors with ``@GDScript.NAN`` elements don't behave the same as other vectors. Therefore, the results from this operator may not be accurate if NaNs are included.
    /// 
    public static func <=(lhs: Vector2, rhs: Vector2) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector2.operator_12(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Compares two ``Vector2`` vectors by first checking if the X value of the left vector is greater than the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors. This operator is useful for sorting vectors.
    /// 
    /// > Note: Vectors with ``@GDScript.NAN`` elements don't behave the same as other vectors. Therefore, the results from this operator may not be accurate if NaNs are included.
    /// 
    public static func >(lhs: Vector2, rhs: Vector2) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector2.operator_13(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Compares two ``Vector2`` vectors by first checking if the X value of the left vector is greater than or equal to the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors. This operator is useful for sorting vectors.
    /// 
    /// > Note: Vectors with ``@GDScript.NAN`` elements don't behave the same as other vectors. Therefore, the results from this operator may not be accurate if NaNs are included.
    /// 
    public static func >=(lhs: Vector2, rhs: Vector2) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector2.operator_14(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Adds each component of the ``Vector2`` by the components of the given ``Vector2``.
    /// 
    public static func +(lhs: Vector2, rhs: Vector2) -> Vector2  {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector2.operator_15(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Subtracts each component of the ``Vector2`` by the components of the given ``Vector2``.
    /// 
    public static func -(lhs: Vector2, rhs: Vector2) -> Vector2  {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector2.operator_16(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Multiplies each component of the ``Vector2`` by the components of the given ``Vector2``.
    /// 
    public static func *(lhs: Vector2, rhs: Vector2) -> Vector2  {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector2.operator_17(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Divides each component of the ``Vector2`` by the components of the given ``Vector2``.
    /// 
    public static func /(lhs: Vector2, rhs: Vector2) -> Vector2  {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector2.operator_18(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Inversely transforms (multiplies) the ``Vector2`` by the given ``Transform2D`` transformation matrix, under the assumption that the transformation basis is orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).
    /// 
    /// `vector * transform` is equivalent to `transform.inverse() * vector`. See ``Transform2D/inverse()``.
    /// 
    /// For transforming by inverse of an affine transformation (e.g. with scaling) `transform.affine_inverse() * vector` can be used instead. See ``Transform2D/affineInverse()``.
    /// 
    public static func *(lhs: Vector2, rhs: Transform2D) -> Vector2  {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector2.operator_19(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Wrap ``Vector2`` into a ``Variant``
    @inline(__always)
    @inlinable
    public func toVariant() -> Variant {
        Variant(self)
    }
    
    /// Wrap ``Vector2`` into a ``Variant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toVariant() -> Variant? {
        Variant(self)
    }
    
    /// Wrap ``Vector2`` into a ``FastVariant``
    @inline(__always)
    @inlinable
    public func toFastVariant() -> FastVariant {
        FastVariant(self)
    }
    
    /// Wrap ``Vector2`` into a ``FastVariant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toFastVariant() -> FastVariant? {
        FastVariant(self)
    }
    
    /// Extract ``Vector2`` from a ``Variant``. Throws `VariantConversionError` if it's not possible.
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
    
    /// Initialze ``Vector2`` from ``Variant``. Fails if `variant` doesn't contain ``Vector2``
    @inline(__always)                
    public init?(_ variant: Variant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForVector2.selfFromVariant)                        
        }
    }
    
    /// Initialze ``Vector2`` from ``Variant``. Fails if `variant` doesn't contain ``Vector2`` or is `nil`
    @inline(__always)
    @inlinable
    public init?(_ variant: Variant?) {
        guard let variant else { return nil }
        self.init(variant)
    }
    
    /// Initialze ``Vector2`` from ``FastVariant``. Fails if `variant` doesn't contain ``Vector2``
    @inline(__always)                
    public init?(_ variant: borrowing FastVariant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForVector2.selfFromVariant)                        
        }
    }
    
    /// Initialze ``Vector2`` from ``FastVariant``. Fails if `variant` doesn't contain ``Vector2`` or is `nil`
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
    
    /// Internal API. For indicating that Godot `Array` of ``Vector2`` has type `Array[Vector2]`
    @inline(__always)
    @inlinable
    public static var _variantType: Variant.GType {
        .vector2 
    }
}

public extension Variant {
    /// Initialize ``Variant`` by wrapping ``Vector2?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    convenience init?(_ from: Vector2?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``Variant`` by wrapping ``Vector2``
    @inline(__always)
    convenience init(_ from: Vector2) {
        self.init(payload: from, constructor: GodotInterfaceForVector2.variantFromSelf)
    }
    
}

public extension FastVariant {
    /// Initialize ``FastVariant`` by wrapping ``Vector2?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    init?(_ from: Vector2?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``FastVariant`` by wrapping ``Vector2``
    @inline(__always)
    init(_ from: Vector2) {
        self.init(payload: from, constructor: GodotInterfaceForVector2.variantFromSelf)
    }
    
}

/// Static storage for keeping pointers to Godot implementation wrapped by Vector2
enum GodotInterfaceForVector2 {
    // MARK: - Constructors
    static let constructor0: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR2, 0)!
    }()
    
    static let constructor1: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR2, 1)!
    }()
    
    static let constructor2: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR2, 2)!
    }()
    
    static let constructor3: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR2, 3)!
    }()
    
    // MARK: - Methods
    static let method_angle: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("angle")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 466405837)!
    }()
    
    static let method_angle_to: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("angle_to")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 3819070308)!
    }()
    
    static let method_angle_to_point: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("angle_to_point")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 3819070308)!
    }()
    
    static let method_direction_to: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("direction_to")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 2026743667)!
    }()
    
    static let method_distance_to: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("distance_to")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 3819070308)!
    }()
    
    static let method_distance_squared_to: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("distance_squared_to")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 3819070308)!
    }()
    
    static let method_length: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("length")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 466405837)!
    }()
    
    static let method_length_squared: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("length_squared")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 466405837)!
    }()
    
    static let method_limit_length: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("limit_length")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 2544004089)!
    }()
    
    static let method_normalized: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("normalized")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 2428350749)!
    }()
    
    static let method_is_normalized: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_normalized")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 3918633141)!
    }()
    
    static let method_is_equal_approx: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_equal_approx")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 3190634762)!
    }()
    
    static let method_is_zero_approx: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_zero_approx")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 3918633141)!
    }()
    
    static let method_is_finite: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_finite")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 3918633141)!
    }()
    
    static let method_posmod: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("posmod")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 2544004089)!
    }()
    
    static let method_posmodv: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("posmodv")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 2026743667)!
    }()
    
    static let method_project: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("project")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 2026743667)!
    }()
    
    static let method_slerp: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("slerp")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 4250033116)!
    }()
    
    static let method_cubic_interpolate: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("cubic_interpolate")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 193522989)!
    }()
    
    static let method_cubic_interpolate_in_time: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("cubic_interpolate_in_time")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 1957055074)!
    }()
    
    static let method_bezier_interpolate: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("bezier_interpolate")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 193522989)!
    }()
    
    static let method_bezier_derivative: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("bezier_derivative")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 193522989)!
    }()
    
    static let method_max_axis_index: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("max_axis_index")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 3173160232)!
    }()
    
    static let method_min_axis_index: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("min_axis_index")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 3173160232)!
    }()
    
    static let method_move_toward: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("move_toward")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 4250033116)!
    }()
    
    static let method_rotated: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("rotated")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 2544004089)!
    }()
    
    static let method_orthogonal: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("orthogonal")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 2428350749)!
    }()
    
    static let method_floor: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("floor")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 2428350749)!
    }()
    
    static let method_ceil: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("ceil")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 2428350749)!
    }()
    
    static let method_round: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("round")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 2428350749)!
    }()
    
    static let method_aspect: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("aspect")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 466405837)!
    }()
    
    static let method_dot: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("dot")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 3819070308)!
    }()
    
    static let method_slide: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("slide")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 2026743667)!
    }()
    
    static let method_bounce: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("bounce")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 2026743667)!
    }()
    
    static let method_reflect: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("reflect")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 2026743667)!
    }()
    
    static let method_cross: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("cross")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 3819070308)!
    }()
    
    static let method_abs: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("abs")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 2428350749)!
    }()
    
    static let method_sign: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("sign")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 2428350749)!
    }()
    
    static let method_clamp: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("clamp")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 318031021)!
    }()
    
    static let method_clampf: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("clampf")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 3464402636)!
    }()
    
    static let method_snappedf: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("snappedf")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 2544004089)!
    }()
    
    static let method_min: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("min")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 2026743667)!
    }()
    
    static let method_minf: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("minf")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 2544004089)!
    }()
    
    static let method_max: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("max")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 2026743667)!
    }()
    
    static let method_maxf: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("maxf")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 2544004089)!
    }()
    
    static let method_from_angle: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("from_angle")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2, &name.content, 889263119)!
    }()
    
    static let indexed_getter: GDExtensionPtrIndexedGetter = {
        return gi.variant_get_ptr_indexed_getter (GDEXTENSION_VARIANT_TYPE_VECTOR2)!
    }()
    
    static let indexed_setter: GDExtensionPtrIndexedSetter = {
        return gi.variant_get_ptr_indexed_setter (GDEXTENSION_VARIANT_TYPE_VECTOR2)!
    }()
    
    // MARK: - Operators
    static let operator_5: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR2, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    static let operator_6: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR2, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    static let operator_7: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR2, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    
    static let operator_8: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR2, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    
    static let operator_9: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR2, GDEXTENSION_VARIANT_TYPE_VECTOR2)!
    }()
    
    static let operator_10: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR2, GDEXTENSION_VARIANT_TYPE_VECTOR2)!
    }()
    
    static let operator_11: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS, GDEXTENSION_VARIANT_TYPE_VECTOR2, GDEXTENSION_VARIANT_TYPE_VECTOR2)!
    }()
    
    static let operator_12: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR2, GDEXTENSION_VARIANT_TYPE_VECTOR2)!
    }()
    
    static let operator_13: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER, GDEXTENSION_VARIANT_TYPE_VECTOR2, GDEXTENSION_VARIANT_TYPE_VECTOR2)!
    }()
    
    static let operator_14: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR2, GDEXTENSION_VARIANT_TYPE_VECTOR2)!
    }()
    
    static let operator_15: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_VECTOR2, GDEXTENSION_VARIANT_TYPE_VECTOR2)!
    }()
    
    static let operator_16: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_SUBTRACT, GDEXTENSION_VARIANT_TYPE_VECTOR2, GDEXTENSION_VARIANT_TYPE_VECTOR2)!
    }()
    
    static let operator_17: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR2, GDEXTENSION_VARIANT_TYPE_VECTOR2)!
    }()
    
    static let operator_18: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR2, GDEXTENSION_VARIANT_TYPE_VECTOR2)!
    }()
    
    static let operator_19: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR2, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)!
    }()
    
    // MARK: - Variant conversion
    static let variantFromSelf: GDExtensionVariantFromTypeConstructorFunc = {
        gi.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR2)!
    }()
    
    static let selfFromVariant: GDExtensionTypeFromVariantConstructorFunc = {
        gi.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR2)!
    }()
    
    
}

