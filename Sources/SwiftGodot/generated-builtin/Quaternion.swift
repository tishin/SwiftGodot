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


/// A unit quaternion used for representing 3D rotations.
/// 
/// The ``Quaternion`` built-in ``Variant`` type is a 4D data structure that represents rotation in the form of a <a href="https://en.wikipedia.org/wiki/Quaternions_and_spatial_rotation">Hamilton convention quaternion</a>. Compared to the ``Basis`` type which can store both rotation and scale, quaternions can _only_ store rotation.
/// 
/// A ``Quaternion`` is composed by 4 floating-point components: ``w``, ``x``, ``y``, and ``z``. These components are very compact in memory, and because of this some operations are more efficient and less likely to cause floating-point errors. Methods such as ``getAngle()``, ``getAxis()``, and ``slerp(to:weight:)`` are faster than their ``Basis`` counterparts.
/// 
/// For a great introduction to quaternions, see <a href="https://www.youtube.com/watch?v=d4EgbgTm0Bg">this video by 3Blue1Brown</a>. You do not need to know the math behind quaternions, as Godot provides several helper methods that handle it for you. These include ``slerp(to:weight:)`` and ``sphericalCubicInterpolate(b:preA:postB:weight:)``, as well as the `*` operator.
/// 
/// > Note: Quaternions must be normalized before being used for rotation (see ``normalized()``).
/// 
/// > Note: Similarly to ``Vector2`` and ``Vector3``, the components of a quaternion use 32-bit precision by default, unlike float which is always 64-bit. If double precision is needed, compile the engine with the option `precision=double`.
/// 
public struct Quaternion: _GodotBridgeableBuiltin, Equatable, Hashable {
    /// X component of the quaternion. This is the value along the "imaginary" `i` axis.
    /// 
    /// > Note: Quaternion components should usually not be manipulated directly.
    /// 
    public var x: Float
    /// Y component of the quaternion. This is the value along the "imaginary" `j` axis.
    /// 
    /// > Note: Quaternion components should usually not be manipulated directly.
    /// 
    public var y: Float
    /// Z component of the quaternion. This is the value along the "imaginary" `k` axis.
    /// 
    /// > Note: Quaternion components should usually not be manipulated directly.
    /// 
    public var z: Float
    /// W component of the quaternion. This is the "real" part.
    /// 
    /// > Note: Quaternion components should usually not be manipulated directly.
    /// 
    public var w: Float
    /// The identity quaternion, representing no rotation. This has the same rotation as ``Basis/identity``.
    /// 
    /// If a ``Vector3`` is rotated (multiplied) by this quaternion, it does not change.
    /// 
    /// > Note: In GDScript, this constant is equivalent to creating a [constructor Quaternion] without any arguments. It can be used to make your code clearer, and for consistency with C#.
    /// 
    public static var identity: Quaternion { Quaternion (x: 0, y: 0, z: 0, w: 1) }
    /// Constructs a ``Quaternion`` identical to ``identity``.
    /// 
    /// > Note: In C#, this constructs a ``Quaternion`` with all of its components set to `0.0`.
    /// 
    public init() {
        self.x = 0
        self.y = 0
        self.z = 0
        self.w = 1
    }
    
    /// Constructs a ``Quaternion`` as a copy of the given ``Quaternion``.
    public init(from: Quaternion) {
        self.x = Float ()
        self.y = Float ()
        self.z = Float ()
        self.w = Float ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForQuaternion.constructor1(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs a ``Quaternion`` from the given rotation ``Basis``.
    /// 
    /// This constructor is faster than ``Basis/getRotationQuaternion()``, but the given basis must be _orthonormalized_ (see ``Basis/orthonormalized()``). Otherwise, the constructor fails and returns ``identity``.
    /// 
    public init(from: Basis) {
        self.x = Float ()
        self.y = Float ()
        self.z = Float ()
        self.w = Float ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForQuaternion.constructor2(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs a ``Quaternion`` representing rotation around the `axis` by the given `angle`, in radians. The axis must be a normalized vector.
    public init(axis: Vector3, angle: Float) {
        self.x = Float ()
        self.y = Float ()
        self.z = Float ()
        self.w = Float ()
        withUnsafePointer(to: axis) { pArg0 in
            let angle = Double(angle)
            withUnsafePointer(to: angle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForQuaternion.constructor3(&self, pArgs)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Constructs a ``Quaternion`` representing the shortest arc between `arcFrom` and `arcTo`. These can be imagined as two points intersecting a sphere's surface, with a radius of `1.0`.
    public init(arcFrom: Vector3, arcTo: Vector3) {
        self.x = Float ()
        self.y = Float ()
        self.z = Float ()
        self.w = Float ()
        withUnsafePointer(to: arcFrom) { pArg0 in
            withUnsafePointer(to: arcTo) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForQuaternion.constructor4(&self, pArgs)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Constructs a ``Quaternion`` defined by the given values.
    /// 
    /// > Note: Only normalized quaternions represent rotation; if these values are not normalized, the new ``Quaternion`` will not be a valid rotation.
    /// 
    public init(x: Float, y: Float, z: Float, w: Float) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
    
    
    /* Methods */
    
    /// Returns this quaternion's length, also called magnitude.
    public func length() -> Double {
        var result: Double = Double()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForQuaternion.method_length(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns this quaternion's length, squared.
    /// 
    /// > Note: This method is faster than ``length()``, so prefer it if you only need to compare quaternion lengths.
    /// 
    public func lengthSquared() -> Double {
        var result: Double = Double()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForQuaternion.method_length_squared(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a copy of this quaternion, normalized so that its length is `1.0`. See also ``isNormalized()``.
    public func normalized() -> Quaternion {
        var result: Quaternion = Quaternion()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForQuaternion.method_normalized(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if this quaternion is normalized. See also ``normalized()``.
    public func isNormalized() -> Bool {
        var result: Bool = Bool()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForQuaternion.method_is_normalized(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if this quaternion and `to` are approximately equal, by calling ``@GlobalScope.is_equal_approx`` on each component.
    public func isEqualApprox(to: Quaternion) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: to) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForQuaternion.method_is_equal_approx(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if this quaternion is finite, by calling ``@GlobalScope.is_finite`` on each component.
    public func isFinite() -> Bool {
        var result: Bool = Bool()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForQuaternion.method_is_finite(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the inverse version of this quaternion, inverting the sign of every component except ``w``.
    public func inverse() -> Quaternion {
        var result: Quaternion = Quaternion()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForQuaternion.method_inverse(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the logarithm of this quaternion. Multiplies this quaternion's rotation axis by its rotation angle, and stores the result in the returned quaternion's vector part (``x``, ``y``, and ``z``). The returned quaternion's real part (``w``) is always `0.0`.
    public func log() -> Quaternion {
        var result: Quaternion = Quaternion()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForQuaternion.method_log(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the exponential of this quaternion. The rotation axis of the result is the normalized rotation axis of this quaternion, the angle of the result is the length of the vector part of this quaternion.
    public func exp() -> Quaternion {
        var result: Quaternion = Quaternion()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForQuaternion.method_exp(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the angle between this quaternion and `to`. This is the magnitude of the angle you would need to rotate by to get from one to the other.
    /// 
    /// > Note: The magnitude of the floating-point error for this method is abnormally high, so methods such as `is_zero_approx` will not work reliably.
    /// 
    public func angleTo(_ to: Quaternion) -> Double {
        var result: Double = Double()
        withUnsafePointer(to: to) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForQuaternion.method_angle_to(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the dot product between this quaternion and `with`.
    /// 
    /// This is equivalent to `(quat.x * with.x) + (quat.y * with.y) + (quat.z * with.z) + (quat.w * with.w)`.
    /// 
    public func dot(with: Quaternion) -> Double {
        var result: Double = Double()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForQuaternion.method_dot(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Performs a spherical-linear interpolation with the `to` quaternion, given a `weight` and returns the result. Both this quaternion and `to` must be normalized.
    public func slerp(to: Quaternion, weight: Double) -> Quaternion {
        var result: Quaternion = Quaternion()
        withUnsafePointer(to: to) { pArg0 in
            let weight = Double(weight)
            withUnsafePointer(to: weight) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForQuaternion.method_slerp(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Performs a spherical-linear interpolation with the `to` quaternion, given a `weight` and returns the result. Unlike ``slerp(to:weight:)``, this method does not check if the rotation path is smaller than 90 degrees. Both this quaternion and `to` must be normalized.
    public func slerpni(to: Quaternion, weight: Double) -> Quaternion {
        var result: Quaternion = Quaternion()
        withUnsafePointer(to: to) { pArg0 in
            let weight = Double(weight)
            withUnsafePointer(to: weight) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForQuaternion.method_slerpni(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Performs a spherical cubic interpolation between quaternions `preA`, this vector, `b`, and `postB`, by the given amount `weight`.
    public func sphericalCubicInterpolate(b: Quaternion, preA: Quaternion, postB: Quaternion, weight: Double) -> Quaternion {
        var result: Quaternion = Quaternion()
        withUnsafePointer(to: b) { pArg0 in
            withUnsafePointer(to: preA) { pArg1 in
                withUnsafePointer(to: postB) { pArg2 in
                    let weight = Double(weight)
                    withUnsafePointer(to: weight) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                var mutSelfCopy = self
                                withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                                   GodotInterfaceForQuaternion.method_spherical_cubic_interpolate(ptr, pArgs, &result, 4)
                                }
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Performs a spherical cubic interpolation between quaternions `preA`, this vector, `b`, and `postB`, by the given amount `weight`.
    /// 
    /// It can perform smoother interpolation than ``sphericalCubicInterpolate(b:preA:postB:weight:)`` by the time values.
    /// 
    public func sphericalCubicInterpolateInTime(b: Quaternion, preA: Quaternion, postB: Quaternion, weight: Double, bT: Double, preAT: Double, postBT: Double) -> Quaternion {
        var result: Quaternion = Quaternion()
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
                                               GodotInterfaceForQuaternion.method_spherical_cubic_interpolate_in_time(ptr, pArgs, &result, 7)
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
    
    /// Returns this quaternion's rotation as a ``Vector3`` of <a href="https://en.wikipedia.org/wiki/Euler_angles">Euler angles</a>, in radians.
    /// 
    /// The order of each consecutive rotation can be changed with `order` (see ``EulerOrder`` constants). By default, the YXZ convention is used (``EulerOrder/yxz``): Z (roll) is calculated first, then X (pitch), and lastly Y (yaw). When using the opposite method ``fromEuler(euler:)``, this order is reversed.
    /// 
    public func getEuler(order: Int64 = 2) -> Vector3 {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: order) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForQuaternion.method_get_euler(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Constructs a new ``Quaternion`` from the given ``Vector3`` of <a href="https://en.wikipedia.org/wiki/Euler_angles">Euler angles</a>, in radians. This method always uses the YXZ convention (``EulerOrder/yxz``).
    public static func fromEuler(_ euler: Vector3) -> Quaternion {
        var result: Quaternion = Quaternion()
        withUnsafePointer(to: euler) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForQuaternion.method_from_euler(nil, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the rotation axis of the rotation represented by this quaternion.
    public func getAxis() -> Vector3 {
        var result: Vector3 = Vector3()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForQuaternion.method_get_axis(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the angle of the rotation represented by this quaternion.
    /// 
    /// > Note: The quaternion must be normalized.
    /// 
    public func getAngle() -> Double {
        var result: Double = Double()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForQuaternion.method_get_angle(ptr, nil, &result, 0)
        }
        return result
    }
    
    public subscript(index: Int64) -> Double {
        mutating get {
            var result = Double()
            GodotInterfaceForQuaternion.indexed_getter (&self, index, &result)
            return result
        }
        
        set {
            var value = newValue
            GodotInterfaceForQuaternion.indexed_setter (&self, index, &value)
        }
        
    }
    
    /// Multiplies each component of the ``Quaternion`` by the right integer value.
    /// 
    /// This operation is not meaningful on its own, but it can be used as a part of a larger expression.
    /// 
    public static func *(lhs: Quaternion, rhs: Int64) -> Quaternion  {
        var result: Quaternion = Quaternion()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForQuaternion.operator_5(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Divides each component of the ``Quaternion`` by the right integer value.
    /// 
    /// This operation is not meaningful on its own, but it can be used as a part of a larger expression.
    /// 
    public static func /(lhs: Quaternion, rhs: Int64) -> Quaternion  {
        var result: Quaternion = Quaternion()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForQuaternion.operator_6(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Multiplies each component of the ``Quaternion`` by the right float value.
    /// 
    /// This operation is not meaningful on its own, but it can be used as a part of a larger expression.
    /// 
    public static func *(lhs: Quaternion, rhs: Double) -> Quaternion  {
        var result: Quaternion = Quaternion()
        withUnsafePointer(to: lhs) { pArg0 in
            let rhs = Double(rhs)
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForQuaternion.operator_7(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Divides each component of the ``Quaternion`` by the right float value.
    /// 
    /// This operation is not meaningful on its own, but it can be used as a part of a larger expression.
    /// 
    public static func /(lhs: Quaternion, rhs: Double) -> Quaternion  {
        var result: Quaternion = Quaternion()
        withUnsafePointer(to: lhs) { pArg0 in
            let rhs = Double(rhs)
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForQuaternion.operator_8(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Rotates (multiplies) the `right` vector by this quaternion, returning a ``Vector3``.
    public static func *(lhs: Quaternion, rhs: Vector3) -> Vector3  {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForQuaternion.operator_9(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the components of both quaternions are exactly equal.
    /// 
    /// > Note: Due to floating-point precision errors, consider using ``isEqualApprox(to:)`` instead, which is more reliable.
    /// 
    public static func ==(lhs: Quaternion, rhs: Quaternion) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForQuaternion.operator_10(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the components of both quaternions are not exactly equal.
    /// 
    /// > Note: Due to floating-point precision errors, consider using ``isEqualApprox(to:)`` instead, which is more reliable.
    /// 
    public static func !=(lhs: Quaternion, rhs: Quaternion) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForQuaternion.operator_11(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Adds each component of the left ``Quaternion`` to the right ``Quaternion``.
    /// 
    /// This operation is not meaningful on its own, but it can be used as a part of a larger expression, such as approximating an intermediate rotation between two nearby rotations.
    /// 
    public static func +(lhs: Quaternion, rhs: Quaternion) -> Quaternion  {
        var result: Quaternion = Quaternion()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForQuaternion.operator_12(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Subtracts each component of the left ``Quaternion`` by the right ``Quaternion``.
    /// 
    /// This operation is not meaningful on its own, but it can be used as a part of a larger expression.
    /// 
    public static func -(lhs: Quaternion, rhs: Quaternion) -> Quaternion  {
        var result: Quaternion = Quaternion()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForQuaternion.operator_13(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Composes (multiplies) two quaternions. This rotates the `right` quaternion (the child) by this quaternion (the parent).
    public static func *(lhs: Quaternion, rhs: Quaternion) -> Quaternion  {
        var result: Quaternion = Quaternion()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForQuaternion.operator_14(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Wrap ``Quaternion`` into a ``Variant``
    @inline(__always)
    @inlinable
    public func toVariant() -> Variant {
        Variant(self)
    }
    
    /// Wrap ``Quaternion`` into a ``Variant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toVariant() -> Variant? {
        Variant(self)
    }
    
    /// Wrap ``Quaternion`` into a ``FastVariant``
    @inline(__always)
    @inlinable
    public func toFastVariant() -> FastVariant {
        FastVariant(self)
    }
    
    /// Wrap ``Quaternion`` into a ``FastVariant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toFastVariant() -> FastVariant? {
        FastVariant(self)
    }
    
    /// Extract ``Quaternion`` from a ``Variant``. Throws `VariantConversionError` if it's not possible.
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
    
    /// Initialze ``Quaternion`` from ``Variant``. Fails if `variant` doesn't contain ``Quaternion``
    @inline(__always)                
    public init?(_ variant: Variant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForQuaternion.selfFromVariant)                        
        }
    }
    
    /// Initialze ``Quaternion`` from ``Variant``. Fails if `variant` doesn't contain ``Quaternion`` or is `nil`
    @inline(__always)
    @inlinable
    public init?(_ variant: Variant?) {
        guard let variant else { return nil }
        self.init(variant)
    }
    
    /// Initialze ``Quaternion`` from ``FastVariant``. Fails if `variant` doesn't contain ``Quaternion``
    @inline(__always)                
    public init?(_ variant: borrowing FastVariant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForQuaternion.selfFromVariant)                        
        }
    }
    
    /// Initialze ``Quaternion`` from ``FastVariant``. Fails if `variant` doesn't contain ``Quaternion`` or is `nil`
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
    
    /// Internal API. For indicating that Godot `Array` of ``Quaternion`` has type `Array[Quaternion]`
    @inline(__always)
    @inlinable
    public static var _variantType: Variant.GType {
        .quaternion 
    }
}

public extension Variant {
    /// Initialize ``Variant`` by wrapping ``Quaternion?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    convenience init?(_ from: Quaternion?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``Variant`` by wrapping ``Quaternion``
    @inline(__always)
    convenience init(_ from: Quaternion) {
        self.init(payload: from, constructor: GodotInterfaceForQuaternion.variantFromSelf)
    }
    
}

public extension FastVariant {
    /// Initialize ``FastVariant`` by wrapping ``Quaternion?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    init?(_ from: Quaternion?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``FastVariant`` by wrapping ``Quaternion``
    @inline(__always)
    init(_ from: Quaternion) {
        self.init(payload: from, constructor: GodotInterfaceForQuaternion.variantFromSelf)
    }
    
}

/// Static storage for keeping pointers to Godot implementation wrapped by Quaternion
enum GodotInterfaceForQuaternion {
    // MARK: - Constructors
    static let constructor0: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_QUATERNION, 0)!
    }()
    
    static let constructor1: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_QUATERNION, 1)!
    }()
    
    static let constructor2: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_QUATERNION, 2)!
    }()
    
    static let constructor3: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_QUATERNION, 3)!
    }()
    
    static let constructor4: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_QUATERNION, 4)!
    }()
    
    static let constructor5: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_QUATERNION, 5)!
    }()
    
    // MARK: - Methods
    static let method_length: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("length")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, &name.content, 466405837)!
    }()
    
    static let method_length_squared: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("length_squared")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, &name.content, 466405837)!
    }()
    
    static let method_normalized: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("normalized")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, &name.content, 4274879941)!
    }()
    
    static let method_is_normalized: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_normalized")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, &name.content, 3918633141)!
    }()
    
    static let method_is_equal_approx: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_equal_approx")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, &name.content, 1682156903)!
    }()
    
    static let method_is_finite: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_finite")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, &name.content, 3918633141)!
    }()
    
    static let method_inverse: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("inverse")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, &name.content, 4274879941)!
    }()
    
    static let method_log: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("log")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, &name.content, 4274879941)!
    }()
    
    static let method_exp: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("exp")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, &name.content, 4274879941)!
    }()
    
    static let method_angle_to: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("angle_to")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, &name.content, 3244682419)!
    }()
    
    static let method_dot: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("dot")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, &name.content, 3244682419)!
    }()
    
    static let method_slerp: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("slerp")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, &name.content, 1773590316)!
    }()
    
    static let method_slerpni: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("slerpni")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, &name.content, 1773590316)!
    }()
    
    static let method_spherical_cubic_interpolate: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("spherical_cubic_interpolate")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, &name.content, 2150967576)!
    }()
    
    static let method_spherical_cubic_interpolate_in_time: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("spherical_cubic_interpolate_in_time")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, &name.content, 1436023539)!
    }()
    
    static let method_get_euler: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_euler")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, &name.content, 1394941017)!
    }()
    
    static let method_from_euler: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("from_euler")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, &name.content, 4053467903)!
    }()
    
    static let method_get_axis: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_axis")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, &name.content, 1776574132)!
    }()
    
    static let method_get_angle: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_angle")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, &name.content, 466405837)!
    }()
    
    static let indexed_getter: GDExtensionPtrIndexedGetter = {
        return gi.variant_get_ptr_indexed_getter (GDEXTENSION_VARIANT_TYPE_QUATERNION)!
    }()
    
    static let indexed_setter: GDExtensionPtrIndexedSetter = {
        return gi.variant_get_ptr_indexed_setter (GDEXTENSION_VARIANT_TYPE_QUATERNION)!
    }()
    
    // MARK: - Operators
    static let operator_5: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    static let operator_6: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    static let operator_7: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    
    static let operator_8: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    
    static let operator_9: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    
    static let operator_10: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_QUATERNION)!
    }()
    
    static let operator_11: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_QUATERNION)!
    }()
    
    static let operator_12: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_QUATERNION)!
    }()
    
    static let operator_13: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_SUBTRACT, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_QUATERNION)!
    }()
    
    static let operator_14: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_QUATERNION)!
    }()
    
    // MARK: - Variant conversion
    static let variantFromSelf: GDExtensionVariantFromTypeConstructorFunc = {
        gi.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_QUATERNION)!
    }()
    
    static let selfFromVariant: GDExtensionTypeFromVariantConstructorFunc = {
        gi.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_QUATERNION)!
    }()
    
    
}

