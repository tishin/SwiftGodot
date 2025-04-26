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


/// A 4D vector using integer coordinates.
/// 
/// A 4-element structure that can be used to represent 4D grid coordinates or any other quadruplet of integers.
/// 
/// It uses integer coordinates and is therefore preferable to ``Vector4`` when exact precision is required. Note that the values are limited to 32 bits, and unlike ``Vector4`` this cannot be configured with an engine build option. Use integer or ``PackedInt64Array`` if 64-bit values are needed.
/// 
/// > Note: In a boolean context, a Vector4i will evaluate to `false` if it's equal to `Vector4i(0, 0, 0, 0)`. Otherwise, a Vector4i will always evaluate to `true`.
/// 
public struct Vector4i: _GodotBridgeableBuiltin, Equatable, Hashable {
    /// The vector's X component. Also accessible by using the index position `[0]`.
    public var x: Int32
    /// The vector's Y component. Also accessible by using the index position `[1]`.
    public var y: Int32
    /// The vector's Z component. Also accessible by using the index position `[2]`.
    public var z: Int32
    /// The vector's W component. Also accessible by using the index position `[3]`.
    public var w: Int32
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
    public static var zero: Vector4i { Vector4i (x: 0, y: 0, z: 0, w: 0) }
    /// One vector, a vector with all components set to `1`.
    public static var one: Vector4i { Vector4i (x: 1, y: 1, z: 1, w: 1) }
    /// Min vector, a vector with all components equal to `INT32_MIN`. Can be used as a negative integer equivalent of ``Vector4/inf``.
    public static var min: Vector4i { Vector4i (x: -2147483648, y: -2147483648, z: -2147483648, w: -2147483648) }
    /// Max vector, a vector with all components equal to `INT32_MAX`. Can be used as an integer equivalent of ``Vector4/inf``.
    public static var max: Vector4i { Vector4i (x: 2147483647, y: 2147483647, z: 2147483647, w: 2147483647) }
    /// Constructs a default-initialized ``Vector4i`` with all components set to `0`.
    public init() {
        self.x = Int32 ()
        self.y = Int32 ()
        self.z = Int32 ()
        self.w = Int32 ()
    }
    
    /// Constructs a ``Vector4i`` as a copy of the given ``Vector4i``.
    public init(from: Vector4i) {
        self.x = Int32 ()
        self.y = Int32 ()
        self.z = Int32 ()
        self.w = Int32 ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForVector4i.constructor1(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs a new ``Vector4i`` from the given ``Vector4`` by truncating components' fractional parts (rounding towards zero). For a different behavior consider passing the result of ``Vector4/ceil()``, ``Vector4/floor()`` or ``Vector4/round()`` to this constructor instead.
    public init(from: Vector4) {
        self.x = Int32 ()
        self.y = Int32 ()
        self.z = Int32 ()
        self.w = Int32 ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForVector4i.constructor2(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Returns a ``Vector4i`` with the given components.
    public init(x: Int32, y: Int32, z: Int32, w: Int32) {
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
           GodotInterfaceForVector4i.method_min_axis_index(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the axis of the vector's highest value. See `AXIS_*` constants. If all components are equal, this method returns ``Axis/x``.
    public func maxAxisIndex() -> Int64 {
        var result: Int64 = Int64()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector4i.method_max_axis_index(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the length (magnitude) of this vector.
    public func length() -> Double {
        var result: Double = Double()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector4i.method_length(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the squared length (squared magnitude) of this vector.
    /// 
    /// This method runs faster than ``length()``, so prefer it if you need to compare vectors or need the squared distance for some formula.
    /// 
    public func lengthSquared() -> Int64 {
        var result: Int64 = Int64()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector4i.method_length_squared(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a new vector with each component set to `1` if it's positive, `-1` if it's negative, and `0` if it's zero. The result is identical to calling ``@GlobalScope.sign`` on each component.
    public func sign() -> Vector4i {
        var result: Vector4i = Vector4i()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector4i.method_sign(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a new vector with all components in absolute values (i.e. positive).
    public func abs() -> Vector4i {
        var result: Vector4i = Vector4i()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForVector4i.method_abs(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a new vector with all components clamped between the components of `min` and `max`, by running ``@GlobalScope.clamp`` on each component.
    public func clamp(min: Vector4i, max: Vector4i) -> Vector4i {
        var result: Vector4i = Vector4i()
        withUnsafePointer(to: min) { pArg0 in
            withUnsafePointer(to: max) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForVector4i.method_clamp(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a new vector with all components clamped between `min` and `max`, by running ``@GlobalScope.clamp`` on each component.
    public func clampi(min: Int64, max: Int64) -> Vector4i {
        var result: Vector4i = Vector4i()
        withUnsafePointer(to: min) { pArg0 in
            withUnsafePointer(to: max) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForVector4i.method_clampi(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a new vector with each component snapped to the closest multiple of `step`.
    public func snappedi(step: Int64) -> Vector4i {
        var result: Vector4i = Vector4i()
        withUnsafePointer(to: step) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector4i.method_snappedi(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the component-wise minimum of this and `with`, equivalent to `Vector4i(mini(x, with.x), mini(y, with.y), mini(z, with.z), mini(w, with.w))`.
    public func min(with: Vector4i) -> Vector4i {
        var result: Vector4i = Vector4i()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector4i.method_min(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the component-wise minimum of this and `with`, equivalent to `Vector4i(mini(x, with), mini(y, with), mini(z, with), mini(w, with))`.
    public func mini(with: Int64) -> Vector4i {
        var result: Vector4i = Vector4i()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector4i.method_mini(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the component-wise maximum of this and `with`, equivalent to `Vector4i(maxi(x, with.x), maxi(y, with.y), maxi(z, with.z), maxi(w, with.w))`.
    public func max(with: Vector4i) -> Vector4i {
        var result: Vector4i = Vector4i()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector4i.method_max(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the component-wise maximum of this and `with`, equivalent to `Vector4i(maxi(x, with), maxi(y, with), maxi(z, with), maxi(w, with))`.
    public func maxi(with: Int64) -> Vector4i {
        var result: Vector4i = Vector4i()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector4i.method_maxi(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the distance between this vector and `to`.
    public func distanceTo(_ to: Vector4i) -> Double {
        var result: Double = Double()
        withUnsafePointer(to: to) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector4i.method_distance_to(ptr, pArgs, &result, 1)
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
    public func distanceSquaredTo(_ to: Vector4i) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: to) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForVector4i.method_distance_squared_to(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    public subscript(index: Int64) -> Int64 {
        mutating get {
            var result = Int64()
            GodotInterfaceForVector4i.indexed_getter (&self, index, &result)
            return result
        }
        
        set {
            var value = newValue
            GodotInterfaceForVector4i.indexed_setter (&self, index, &value)
        }
        
    }
    
    /// Multiplies each component of the ``Vector4i`` by the given integer.
    public static func *(lhs: Vector4i, rhs: Int64) -> Vector4i  {
        var result: Vector4i = Vector4i()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4i.operator_5(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Divides each component of the ``Vector4i`` by the given integer.
    public static func /(lhs: Vector4i, rhs: Int64) -> Vector4i  {
        var result: Vector4i = Vector4i()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4i.operator_6(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Gets the remainder of each component of the ``Vector4i`` with the given integer. This operation uses truncated division, which is often not desired as it does not work well with negative numbers. Consider using ``@GlobalScope.posmod`` instead if you want to handle negative numbers.
    /// 
    public static func %(lhs: Vector4i, rhs: Int64) -> Vector4i  {
        var result: Vector4i = Vector4i()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4i.operator_7(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Multiplies each component of the ``Vector4i`` by the given float.
    /// 
    /// Returns a Vector4 value due to floating-point operations.
    /// 
    public static func *(lhs: Vector4i, rhs: Double) -> Vector4  {
        var result: Vector4 = Vector4()
        withUnsafePointer(to: lhs) { pArg0 in
            let rhs = Double(rhs)
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4i.operator_8(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Divides each component of the ``Vector4i`` by the given float.
    /// 
    /// Returns a Vector4 value due to floating-point operations.
    /// 
    public static func /(lhs: Vector4i, rhs: Double) -> Vector4  {
        var result: Vector4 = Vector4()
        withUnsafePointer(to: lhs) { pArg0 in
            let rhs = Double(rhs)
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4i.operator_9(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the vectors are exactly equal.
    public static func ==(lhs: Vector4i, rhs: Vector4i) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4i.operator_10(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the vectors are not equal.
    public static func !=(lhs: Vector4i, rhs: Vector4i) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4i.operator_11(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Compares two ``Vector4i`` vectors by first checking if the X value of the left vector is less than the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, Z values of the two vectors, and then with the W values. This operator is useful for sorting vectors.
    public static func <(lhs: Vector4i, rhs: Vector4i) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4i.operator_12(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Compares two ``Vector4i`` vectors by first checking if the X value of the left vector is less than or equal to the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, Z values of the two vectors, and then with the W values. This operator is useful for sorting vectors.
    public static func <=(lhs: Vector4i, rhs: Vector4i) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4i.operator_13(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Compares two ``Vector4i`` vectors by first checking if the X value of the left vector is greater than the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, Z values of the two vectors, and then with the W values. This operator is useful for sorting vectors.
    public static func >(lhs: Vector4i, rhs: Vector4i) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4i.operator_14(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Compares two ``Vector4i`` vectors by first checking if the X value of the left vector is greater than or equal to the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, Z values of the two vectors, and then with the W values. This operator is useful for sorting vectors.
    public static func >=(lhs: Vector4i, rhs: Vector4i) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4i.operator_15(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Adds each component of the ``Vector4i`` by the components of the given ``Vector4i``.
    /// 
    public static func +(lhs: Vector4i, rhs: Vector4i) -> Vector4i  {
        var result: Vector4i = Vector4i()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4i.operator_16(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Subtracts each component of the ``Vector4i`` by the components of the given ``Vector4i``.
    /// 
    public static func -(lhs: Vector4i, rhs: Vector4i) -> Vector4i  {
        var result: Vector4i = Vector4i()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4i.operator_17(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Multiplies each component of the ``Vector4i`` by the components of the given ``Vector4i``.
    /// 
    public static func *(lhs: Vector4i, rhs: Vector4i) -> Vector4i  {
        var result: Vector4i = Vector4i()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4i.operator_18(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Divides each component of the ``Vector4i`` by the components of the given ``Vector4i``.
    /// 
    public static func /(lhs: Vector4i, rhs: Vector4i) -> Vector4i  {
        var result: Vector4i = Vector4i()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4i.operator_19(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Gets the remainder of each component of the ``Vector4i`` with the components of the given ``Vector4i``. This operation uses truncated division, which is often not desired as it does not work well with negative numbers. Consider using ``@GlobalScope.posmod`` instead if you want to handle negative numbers.
    /// 
    public static func %(lhs: Vector4i, rhs: Vector4i) -> Vector4i  {
        var result: Vector4i = Vector4i()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForVector4i.operator_20(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Wrap ``Vector4i`` into a ``Variant``
    @inline(__always)
    @inlinable
    public func toVariant() -> Variant {
        Variant(self)
    }
    
    /// Wrap ``Vector4i`` into a ``Variant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toVariant() -> Variant? {
        Variant(self)
    }
    
    /// Wrap ``Vector4i`` into a ``FastVariant``
    @inline(__always)
    @inlinable
    public func toFastVariant() -> FastVariant {
        FastVariant(self)
    }
    
    /// Wrap ``Vector4i`` into a ``FastVariant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toFastVariant() -> FastVariant? {
        FastVariant(self)
    }
    
    /// Extract ``Vector4i`` from a ``Variant``. Throws `VariantConversionError` if it's not possible.
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
    
    /// Initialze ``Vector4i`` from ``Variant``. Fails if `variant` doesn't contain ``Vector4i``
    @inline(__always)                
    public init?(_ variant: Variant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForVector4i.selfFromVariant)                        
        }
    }
    
    /// Initialze ``Vector4i`` from ``Variant``. Fails if `variant` doesn't contain ``Vector4i`` or is `nil`
    @inline(__always)
    @inlinable
    public init?(_ variant: Variant?) {
        guard let variant else { return nil }
        self.init(variant)
    }
    
    /// Initialze ``Vector4i`` from ``FastVariant``. Fails if `variant` doesn't contain ``Vector4i``
    @inline(__always)                
    public init?(_ variant: borrowing FastVariant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForVector4i.selfFromVariant)                        
        }
    }
    
    /// Initialze ``Vector4i`` from ``FastVariant``. Fails if `variant` doesn't contain ``Vector4i`` or is `nil`
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
    
    /// Internal API. For indicating that Godot `Array` of ``Vector4i`` has type `Array[Vector4i]`
    @inline(__always)
    @inlinable
    public static var _variantType: Variant.GType {
        .vector4i 
    }
}

public extension Variant {
    /// Initialize ``Variant`` by wrapping ``Vector4i?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    convenience init?(_ from: Vector4i?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``Variant`` by wrapping ``Vector4i``
    @inline(__always)
    convenience init(_ from: Vector4i) {
        self.init(payload: from, constructor: GodotInterfaceForVector4i.variantFromSelf)
    }
    
}

public extension FastVariant {
    /// Initialize ``FastVariant`` by wrapping ``Vector4i?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    init?(_ from: Vector4i?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``FastVariant`` by wrapping ``Vector4i``
    @inline(__always)
    init(_ from: Vector4i) {
        self.init(payload: from, constructor: GodotInterfaceForVector4i.variantFromSelf)
    }
    
}

/// Static storage for keeping pointers to Godot implementation wrapped by Vector4i
enum GodotInterfaceForVector4i {
    // MARK: - Constructors
    static let constructor0: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4I, 0)!
    }()
    
    static let constructor1: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4I, 1)!
    }()
    
    static let constructor2: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4I, 2)!
    }()
    
    static let constructor3: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4I, 3)!
    }()
    
    // MARK: - Methods
    static let method_min_axis_index: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("min_axis_index")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4I, &name.content, 3173160232)!
    }()
    
    static let method_max_axis_index: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("max_axis_index")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4I, &name.content, 3173160232)!
    }()
    
    static let method_length: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("length")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4I, &name.content, 466405837)!
    }()
    
    static let method_length_squared: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("length_squared")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4I, &name.content, 3173160232)!
    }()
    
    static let method_sign: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("sign")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4I, &name.content, 4134919947)!
    }()
    
    static let method_abs: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("abs")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4I, &name.content, 4134919947)!
    }()
    
    static let method_clamp: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("clamp")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4I, &name.content, 3046490913)!
    }()
    
    static let method_clampi: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("clampi")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4I, &name.content, 2994578256)!
    }()
    
    static let method_snappedi: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("snappedi")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4I, &name.content, 1476494415)!
    }()
    
    static let method_min: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("min")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4I, &name.content, 1181693102)!
    }()
    
    static let method_mini: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("mini")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4I, &name.content, 1476494415)!
    }()
    
    static let method_max: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("max")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4I, &name.content, 1181693102)!
    }()
    
    static let method_maxi: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("maxi")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4I, &name.content, 1476494415)!
    }()
    
    static let method_distance_to: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("distance_to")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4I, &name.content, 3446086573)!
    }()
    
    static let method_distance_squared_to: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("distance_squared_to")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4I, &name.content, 346708794)!
    }()
    
    static let indexed_getter: GDExtensionPtrIndexedGetter = {
        return gi.variant_get_ptr_indexed_getter (GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    
    static let indexed_setter: GDExtensionPtrIndexedSetter = {
        return gi.variant_get_ptr_indexed_setter (GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    
    // MARK: - Operators
    static let operator_5: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    static let operator_6: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    static let operator_7: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    static let operator_8: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    
    static let operator_9: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    
    static let operator_10: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    
    static let operator_11: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    
    static let operator_12: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    
    static let operator_13: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    
    static let operator_14: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    
    static let operator_15: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    
    static let operator_16: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    
    static let operator_17: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_SUBTRACT, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    
    static let operator_18: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    
    static let operator_19: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    
    static let operator_20: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    
    // MARK: - Variant conversion
    static let variantFromSelf: GDExtensionVariantFromTypeConstructorFunc = {
        gi.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    
    static let selfFromVariant: GDExtensionTypeFromVariantConstructorFunc = {
        gi.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    
    
}

