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


/// A 4D vector using floating-point coordinates.
/// 
/// A 4-element structure that can be used to represent 4D coordinates or any other quadruplet of numeric values.
/// 
/// It uses floating-point coordinates. By default, these floating-point values use 32-bit precision, unlike float which is always 64-bit. If double precision is needed, compile the engine with the option `precision=double`.
/// 
/// See ``Vector4i`` for its integer counterpart.
/// 
/// > Note: In a boolean context, a Vector4 will evaluate to `false` if it's equal to `Vector4(0, 0, 0, 0)`. Otherwise, a Vector4 will always evaluate to `true`.
/// 
public struct Vector4: _GodotBridgeableBuiltin, Equatable, Hashable {
    /// The vector's X component. Also accessible by using the index position `[0]`.
    public var x: Float
    /// The vector's Y component. Also accessible by using the index position `[1]`.
    public var y: Float
    /// The vector's Z component. Also accessible by using the index position `[2]`.
    public var z: Float
    /// The vector's W component. Also accessible by using the index position `[3]`.
    public var w: Float
    public enum Axis: Int64, CaseIterable {
        /// Enumerated value for the X axis. Returned by ``maxAxisIndex()`` and ``minAxisIndex()``.
        case x = 0 // AXIS_X
        /// Enumerated value for the Y axis. Returned by ``maxAxisIndex()`` and ``minAxisIndex()``.
        case y = 1 // AXIS_Y
        /// Enumerated value for the Z axis. Returned by ``maxAxisIndex()`` and ``minAxisIndex()``.
        case z = 2 // AXIS_Z
        /// Enumerated value for the W axis. Returned by ``maxAxisIndex()`` and ``minAxisIndex()``.
        case w = 3 // AXIS_W
    }
    
    /// Zero vector, a vector with all components set to `0`.
    public static var zero: Vector4 { Vector4 (x: 0, y: 0, z: 0, w: 0) }
    /// One vector, a vector with all components set to `1`.
    public static var one: Vector4 { Vector4 (x: 1, y: 1, z: 1, w: 1) }
    /// Infinity vector, a vector with all components set to ``@GDScript.INF``.
    public static var inf: Vector4 { Vector4 (x: Float.infinity, y: Float.infinity, z: Float.infinity, w: Float.infinity) }
    /// Constructs a default-initialized ``Vector4`` with all components set to `0`.
    public init() {
        self.x = Float ()
        self.y = Float ()
        self.z = Float ()
        self.w = Float ()
    }
    
    /// Constructs a ``Vector4`` as a copy of the given ``Vector4``.
    public init(from: Vector4) {
        self.x = Float ()
        self.y = Float ()
        self.z = Float ()
        self.w = Float ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForVector4.constructor1(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs a new ``Vector4`` from the given ``Vector4i``.
    public init(from: Vector4i) {
        self.x = Float ()
        self.y = Float ()
        self.z = Float ()
        self.w = Float ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForVector4.constructor2(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Returns a ``Vector4`` with the given components.
    public init(x: Float, y: Float, z: Float, w: Float) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
    
    
    /* Methods */
    
    /// Returns the axis of the vector's lowest value. See `AXIS_*` constants. If all components are equal, this method returns ``Axis/w``.
    public func minAxisIndex() -> Int64 {
        var result: Int64 = Int64()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector4.method_min_axis_index(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the axis of the vector's highest value. See `AXIS_*` constants. If all components are equal, this method returns ``Axis/x``.
    public func maxAxisIndex() -> Int64 {
        var result: Int64 = Int64()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector4.method_max_axis_index(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the length (magnitude) of this vector.
    public func length() -> Double {
        var result: Double = Double()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector4.method_length(ptr, nil, &result, 0)
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
           GodotInterfaceForVector4.method_length_squared(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a new vector with all components in absolute values (i.e. positive).
    public func abs() -> Vector4 {
        var result: Vector4 = Vector4()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector4.method_abs(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a new vector with each component set to `1.0` if it's positive, `-1.0` if it's negative, and `0.0` if it's zero. The result is identical to calling ``@GlobalScope.sign`` on each component.
    public func sign() -> Vector4 {
        var result: Vector4 = Vector4()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector4.method_sign(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a new vector with all components rounded down (towards negative infinity).
    public func floor() -> Vector4 {
        var result: Vector4 = Vector4()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector4.method_floor(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a new vector with all components rounded up (towards positive infinity).
    public func ceil() -> Vector4 {
        var result: Vector4 = Vector4()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector4.method_ceil(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a new vector with all components rounded to the nearest integer, with halfway cases rounded away from zero.
    public func round() -> Vector4 {
        var result: Vector4 = Vector4()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector4.method_round(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Performs a cubic interpolation between this vector and `b` using `preA` and `postB` as handles, and returns the result at position `weight`. `weight` is on the range of 0.0 to 1.0, representing the amount of interpolation.
    public func cubicInterpolate(b: Vector4, preA: Vector4, postB: Vector4, weight: Double) -> Vector4 {
        var result: Vector4 = Vector4()
        withUnsafePointer(to: b) { pArg0 in
            withUnsafePointer(to: preA) { pArg1 in
                withUnsafePointer(to: postB) { pArg2 in
                    let weight = Double(weight)
                    withUnsafePointer(to: weight) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                var mutSelfCopy = self
                                withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                                   GodotInterfaceForVector4.method_cubic_interpolate(ptr, pArgs, &result, 4)
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
    public func cubicInterpolateInTime(b: Vector4, preA: Vector4, postB: Vector4, weight: Double, bT: Double, preAT: Double, postBT: Double) -> Vector4 {
        var result: Vector4 = Vector4()
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
                                               GodotInterfaceForVector4.method_cubic_interpolate_in_time(ptr, pArgs, &result, 7)
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
    
    /// Returns a vector composed of the ``@GlobalScope.fposmod`` of this vector's components and `mod`.
    public func posmod(mod: Double) -> Vector4 {
        var result: Vector4 = Vector4()
        let mod = Double(mod)
        withUnsafePointer(to: mod) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector4.method_posmod(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a vector composed of the ``@GlobalScope.fposmod`` of this vector's components and `modv`'s components.
    public func posmodv(modv: Vector4) -> Vector4 {
        var result: Vector4 = Vector4()
        withUnsafePointer(to: modv) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector4.method_posmodv(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a new vector with each component snapped to the nearest multiple of `step`. This can also be used to round the components to an arbitrary number of decimals.
    public func snappedf(step: Double) -> Vector4 {
        var result: Vector4 = Vector4()
        let step = Double(step)
        withUnsafePointer(to: step) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector4.method_snappedf(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a new vector with all components clamped between the components of `min` and `max`, by running ``@GlobalScope.clamp`` on each component.
    public func clamp(min: Vector4, max: Vector4) -> Vector4 {
        var result: Vector4 = Vector4()
        withUnsafePointer(to: min) { pArg0 in
            withUnsafePointer(to: max) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForVector4.method_clamp(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a new vector with all components clamped between `min` and `max`, by running ``@GlobalScope.clamp`` on each component.
    public func clampf(min: Double, max: Double) -> Vector4 {
        var result: Vector4 = Vector4()
        let min = Double(min)
        withUnsafePointer(to: min) { pArg0 in
            let max = Double(max)
            withUnsafePointer(to: max) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForVector4.method_clampf(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the result of scaling the vector to unit length. Equivalent to `v / v.length()`. Returns `(0, 0, 0, 0)` if `v.length() == 0`. See also ``isNormalized()``.
    /// 
    /// > Note: This function may return incorrect values if the input vector length is near zero.
    /// 
    public func normalized() -> Vector4 {
        var result: Vector4 = Vector4()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector4.method_normalized(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if the vector is normalized, i.e. its length is approximately equal to 1.
    public func isNormalized() -> Bool {
        var result: Bool = Bool()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector4.method_is_normalized(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the normalized vector pointing from this vector to `to`. This is equivalent to using `(b - a).normalized()`.
    public func directionTo(_ to: Vector4) -> Vector4 {
        var result: Vector4 = Vector4()
        withUnsafePointer(to: to) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector4.method_direction_to(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the distance between this vector and `to`.
    public func distanceTo(_ to: Vector4) -> Double {
        var result: Double = Double()
        withUnsafePointer(to: to) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector4.method_distance_to(ptr, pArgs, &result, 1)
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
    public func distanceSquaredTo(_ to: Vector4) -> Double {
        var result: Double = Double()
        withUnsafePointer(to: to) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector4.method_distance_squared_to(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the dot product of this vector and `with`.
    public func dot(with: Vector4) -> Double {
        var result: Double = Double()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector4.method_dot(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the inverse of the vector. This is the same as `Vector4(1.0 / v.x, 1.0 / v.y, 1.0 / v.z, 1.0 / v.w)`.
    public func inverse() -> Vector4 {
        var result: Vector4 = Vector4()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector4.method_inverse(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if this vector and `to` are approximately equal, by running ``@GlobalScope.is_equal_approx`` on each component.
    public func isEqualApprox(to: Vector4) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: to) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector4.method_is_equal_approx(ptr, pArgs, &result, 1)
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
           GodotInterfaceForVector4.method_is_zero_approx(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if this vector is finite, by calling ``@GlobalScope.is_finite`` on each component.
    public func isFinite() -> Bool {
        var result: Bool = Bool()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector4.method_is_finite(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the component-wise minimum of this and `with`, equivalent to `Vector4(minf(x, with.x), minf(y, with.y), minf(z, with.z), minf(w, with.w))`.
    public func min(with: Vector4) -> Vector4 {
        var result: Vector4 = Vector4()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector4.method_min(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the component-wise minimum of this and `with`, equivalent to `Vector4(minf(x, with), minf(y, with), minf(z, with), minf(w, with))`.
    public func minf(with: Double) -> Vector4 {
        var result: Vector4 = Vector4()
        let with = Double(with)
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector4.method_minf(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the component-wise maximum of this and `with`, equivalent to `Vector4(maxf(x, with.x), maxf(y, with.y), maxf(z, with.z), maxf(w, with.w))`.
    public func max(with: Vector4) -> Vector4 {
        var result: Vector4 = Vector4()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector4.method_max(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the component-wise maximum of this and `with`, equivalent to `Vector4(maxf(x, with), maxf(y, with), maxf(z, with), maxf(w, with))`.
    public func maxf(with: Double) -> Vector4 {
        var result: Vector4 = Vector4()
        let with = Double(with)
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector4.method_maxf(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    public subscript(index: Int64) -> Double {
        mutating get {
            var result = Double()
            GodotInterfaceForVector4.indexed_getter (&self, index, &result)
            return result
        }
        
        set {
            var value = newValue
            GodotInterfaceForVector4.indexed_setter (&self, index, &value)
        }
        
    }
    
    /// Multiplies each component of the ``Vector4`` by the given integer.
    public static func *(lhs: Vector4, rhs: Int64) -> Vector4  {
        var result: Vector4 = Vector4()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4.operator_5(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Divides each component of the ``Vector4`` by the given integer.
    public static func /(lhs: Vector4, rhs: Int64) -> Vector4  {
        var result: Vector4 = Vector4()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4.operator_6(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Multiplies each component of the ``Vector4`` by the given float.
    /// 
    public static func *(lhs: Vector4, rhs: Double) -> Vector4  {
        var result: Vector4 = Vector4()
        withUnsafePointer(to: lhs) { pArg0 in
            let rhs = Double(rhs)
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4.operator_7(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Divides each component of the ``Vector4`` by the given float.
    /// 
    public static func /(lhs: Vector4, rhs: Double) -> Vector4  {
        var result: Vector4 = Vector4()
        withUnsafePointer(to: lhs) { pArg0 in
            let rhs = Double(rhs)
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4.operator_8(pArg0, pArg1, &result)
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
    public static func ==(lhs: Vector4, rhs: Vector4) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4.operator_9(pArg0, pArg1, &result)
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
    public static func !=(lhs: Vector4, rhs: Vector4) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4.operator_10(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Compares two ``Vector4`` vectors by first checking if the X value of the left vector is less than the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, Z values of the two vectors, and then with the W values. This operator is useful for sorting vectors.
    /// 
    /// > Note: Vectors with ``@GDScript.NAN`` elements don't behave the same as other vectors. Therefore, the results from this operator may not be accurate if NaNs are included.
    /// 
    public static func <(lhs: Vector4, rhs: Vector4) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4.operator_11(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Compares two ``Vector4`` vectors by first checking if the X value of the left vector is less than or equal to the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, Z values of the two vectors, and then with the W values. This operator is useful for sorting vectors.
    /// 
    /// > Note: Vectors with ``@GDScript.NAN`` elements don't behave the same as other vectors. Therefore, the results from this operator may not be accurate if NaNs are included.
    /// 
    public static func <=(lhs: Vector4, rhs: Vector4) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4.operator_12(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Compares two ``Vector4`` vectors by first checking if the X value of the left vector is greater than the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, Z values of the two vectors, and then with the W values. This operator is useful for sorting vectors.
    /// 
    /// > Note: Vectors with ``@GDScript.NAN`` elements don't behave the same as other vectors. Therefore, the results from this operator may not be accurate if NaNs are included.
    /// 
    public static func >(lhs: Vector4, rhs: Vector4) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4.operator_13(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Compares two ``Vector4`` vectors by first checking if the X value of the left vector is greater than or equal to the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, Z values of the two vectors, and then with the W values. This operator is useful for sorting vectors.
    /// 
    /// > Note: Vectors with ``@GDScript.NAN`` elements don't behave the same as other vectors. Therefore, the results from this operator may not be accurate if NaNs are included.
    /// 
    public static func >=(lhs: Vector4, rhs: Vector4) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4.operator_14(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Adds each component of the ``Vector4`` by the components of the given ``Vector4``.
    /// 
    public static func +(lhs: Vector4, rhs: Vector4) -> Vector4  {
        var result: Vector4 = Vector4()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4.operator_15(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Subtracts each component of the ``Vector4`` by the components of the given ``Vector4``.
    /// 
    public static func -(lhs: Vector4, rhs: Vector4) -> Vector4  {
        var result: Vector4 = Vector4()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4.operator_16(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Multiplies each component of the ``Vector4`` by the components of the given ``Vector4``.
    /// 
    public static func *(lhs: Vector4, rhs: Vector4) -> Vector4  {
        var result: Vector4 = Vector4()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4.operator_17(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Divides each component of the ``Vector4`` by the components of the given ``Vector4``.
    /// 
    public static func /(lhs: Vector4, rhs: Vector4) -> Vector4  {
        var result: Vector4 = Vector4()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4.operator_18(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Transforms (multiplies) the ``Vector4`` by the transpose of the given ``Projection`` matrix.
    /// 
    /// For transforming by inverse of a projection `projection.inverse() * vector` can be used instead. See ``Projection/inverse()``.
    /// 
    public static func *(lhs: Vector4, rhs: Projection) -> Vector4  {
        var result: Vector4 = Vector4()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4.operator_19(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Wrap ``Vector4`` into a ``Variant``
    @inline(__always)
    @inlinable
    public func toVariant() -> Variant {
        Variant(self)
    }
    
    /// Wrap ``Vector4`` into a ``Variant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toVariant() -> Variant? {
        Variant(self)
    }
    
    /// Wrap ``Vector4`` into a ``FastVariant``
    @inline(__always)
    @inlinable
    public func toFastVariant() -> FastVariant {
        FastVariant(self)
    }
    
    /// Wrap ``Vector4`` into a ``FastVariant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toFastVariant() -> FastVariant? {
        FastVariant(self)
    }
    
    /// Extract ``Vector4`` from a ``Variant``. Throws `VariantConversionError` if it's not possible.
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
    
    /// Initialze ``Vector4`` from ``Variant``. Fails if `variant` doesn't contain ``Vector4``
    @inline(__always)                
    public init?(_ variant: Variant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForVector4.selfFromVariant)                        
        }
    }
    
    /// Initialze ``Vector4`` from ``Variant``. Fails if `variant` doesn't contain ``Vector4`` or is `nil`
    @inline(__always)
    @inlinable
    public init?(_ variant: Variant?) {
        guard let variant else { return nil }
        self.init(variant)
    }
    
    /// Initialze ``Vector4`` from ``FastVariant``. Fails if `variant` doesn't contain ``Vector4``
    @inline(__always)                
    public init?(_ variant: borrowing FastVariant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForVector4.selfFromVariant)                        
        }
    }
    
    /// Initialze ``Vector4`` from ``FastVariant``. Fails if `variant` doesn't contain ``Vector4`` or is `nil`
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
    
    /// Internal API. For indicating that Godot `Array` of ``Vector4`` has type `Array[Vector4]`
    @inline(__always)
    @inlinable
    public static var _variantType: Variant.GType {
        .vector4 
    }
}

public extension Variant {
    /// Initialize ``Variant`` by wrapping ``Vector4?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    convenience init?(_ from: Vector4?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``Variant`` by wrapping ``Vector4``
    @inline(__always)
    convenience init(_ from: Vector4) {
        self.init(payload: from, constructor: GodotInterfaceForVector4.variantFromSelf)
    }
    
}

public extension FastVariant {
    /// Initialize ``FastVariant`` by wrapping ``Vector4?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    init?(_ from: Vector4?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``FastVariant`` by wrapping ``Vector4``
    @inline(__always)
    init(_ from: Vector4) {
        self.init(payload: from, constructor: GodotInterfaceForVector4.variantFromSelf)
    }
    
}

/// Static storage for keeping pointers to Godot implementation wrapped by Vector4
enum GodotInterfaceForVector4 {
    // MARK: - Constructors
    static let constructor0: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4, 0)!
    }()
    
    static let constructor1: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4, 1)!
    }()
    
    static let constructor2: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4, 2)!
    }()
    
    static let constructor3: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4, 3)!
    }()
    
    // MARK: - Methods
    static let method_min_axis_index: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("min_axis_index")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 3173160232)!
    }()
    
    static let method_max_axis_index: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("max_axis_index")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 3173160232)!
    }()
    
    static let method_length: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("length")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 466405837)!
    }()
    
    static let method_length_squared: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("length_squared")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 466405837)!
    }()
    
    static let method_abs: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("abs")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 80860099)!
    }()
    
    static let method_sign: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("sign")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 80860099)!
    }()
    
    static let method_floor: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("floor")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 80860099)!
    }()
    
    static let method_ceil: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("ceil")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 80860099)!
    }()
    
    static let method_round: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("round")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 80860099)!
    }()
    
    static let method_cubic_interpolate: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("cubic_interpolate")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 726768410)!
    }()
    
    static let method_cubic_interpolate_in_time: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("cubic_interpolate_in_time")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 681631873)!
    }()
    
    static let method_posmod: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("posmod")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 3129671720)!
    }()
    
    static let method_posmodv: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("posmodv")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 2031281584)!
    }()
    
    static let method_snappedf: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("snappedf")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 3129671720)!
    }()
    
    static let method_clamp: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("clamp")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 823915692)!
    }()
    
    static let method_clampf: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("clampf")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 4072091586)!
    }()
    
    static let method_normalized: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("normalized")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 80860099)!
    }()
    
    static let method_is_normalized: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_normalized")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 3918633141)!
    }()
    
    static let method_direction_to: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("direction_to")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 2031281584)!
    }()
    
    static let method_distance_to: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("distance_to")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 3770801042)!
    }()
    
    static let method_distance_squared_to: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("distance_squared_to")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 3770801042)!
    }()
    
    static let method_dot: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("dot")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 3770801042)!
    }()
    
    static let method_inverse: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("inverse")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 80860099)!
    }()
    
    static let method_is_equal_approx: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_equal_approx")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 88913544)!
    }()
    
    static let method_is_zero_approx: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_zero_approx")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 3918633141)!
    }()
    
    static let method_is_finite: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_finite")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 3918633141)!
    }()
    
    static let method_min: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("min")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 2031281584)!
    }()
    
    static let method_minf: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("minf")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 3129671720)!
    }()
    
    static let method_max: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("max")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 2031281584)!
    }()
    
    static let method_maxf: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("maxf")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4, &name.content, 3129671720)!
    }()
    
    static let indexed_getter: GDExtensionPtrIndexedGetter = {
        return gi.variant_get_ptr_indexed_getter (GDEXTENSION_VARIANT_TYPE_VECTOR4)!
    }()
    
    static let indexed_setter: GDExtensionPtrIndexedSetter = {
        return gi.variant_get_ptr_indexed_setter (GDEXTENSION_VARIANT_TYPE_VECTOR4)!
    }()
    
    // MARK: - Operators
    static let operator_5: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR4, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    static let operator_6: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR4, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    static let operator_7: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR4, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    
    static let operator_8: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR4, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    
    static let operator_9: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR4, GDEXTENSION_VARIANT_TYPE_VECTOR4)!
    }()
    
    static let operator_10: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR4, GDEXTENSION_VARIANT_TYPE_VECTOR4)!
    }()
    
    static let operator_11: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS, GDEXTENSION_VARIANT_TYPE_VECTOR4, GDEXTENSION_VARIANT_TYPE_VECTOR4)!
    }()
    
    static let operator_12: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR4, GDEXTENSION_VARIANT_TYPE_VECTOR4)!
    }()
    
    static let operator_13: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER, GDEXTENSION_VARIANT_TYPE_VECTOR4, GDEXTENSION_VARIANT_TYPE_VECTOR4)!
    }()
    
    static let operator_14: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR4, GDEXTENSION_VARIANT_TYPE_VECTOR4)!
    }()
    
    static let operator_15: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_VECTOR4, GDEXTENSION_VARIANT_TYPE_VECTOR4)!
    }()
    
    static let operator_16: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_SUBTRACT, GDEXTENSION_VARIANT_TYPE_VECTOR4, GDEXTENSION_VARIANT_TYPE_VECTOR4)!
    }()
    
    static let operator_17: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR4, GDEXTENSION_VARIANT_TYPE_VECTOR4)!
    }()
    
    static let operator_18: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR4, GDEXTENSION_VARIANT_TYPE_VECTOR4)!
    }()
    
    static let operator_19: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR4, GDEXTENSION_VARIANT_TYPE_PROJECTION)!
    }()
    
    // MARK: - Variant conversion
    static let variantFromSelf: GDExtensionVariantFromTypeConstructorFunc = {
        gi.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4)!
    }()
    
    static let selfFromVariant: GDExtensionTypeFromVariantConstructorFunc = {
        gi.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4)!
    }()
    
    
}

