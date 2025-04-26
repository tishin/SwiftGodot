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


/// A 3×3 matrix for representing 3D rotation and scale.
/// 
/// The ``Basis`` built-in ``Variant`` type is a 3×3 <a href="https://en.wikipedia.org/wiki/Matrix_(mathematics)">matrix</a> used to represent 3D rotation, scale, and shear. It is frequently used within a ``Transform3D``.
/// 
/// A ``Basis`` is composed by 3 axis vectors, each representing a column of the matrix: ``x``, ``y``, and ``z``. The length of each axis (``Vector3/length()``) influences the basis's scale, while the direction of all axes influence the rotation. Usually, these axes are perpendicular to one another. However, when you rotate any axis individually, the basis becomes sheared. Applying a sheared basis to a 3D model will make the model appear distorted.
/// 
/// A ``Basis`` is:
/// 
/// - **Orthogonal** if its axes are perpendicular to each other.
/// 
/// - **Normalized** if the length of every axis is `1.0`.
/// 
/// - **Uniform** if all axes share the same length (see ``getScale()``).
/// 
/// - **Orthonormal** if it is both orthogonal and normalized, which allows it to only represent rotations (see ``orthonormalized()``).
/// 
/// - **Conformal** if it is both orthogonal and uniform, which ensures it is not distorted.
/// 
/// For a general introduction, see the <a href="https://docs.godotengine.org/en//tutorials/math/matrices_and_transforms.html">Matrices and transforms</a> tutorial.
/// 
/// > Note: Godot uses a <a href="https://en.wikipedia.org/wiki/Right-hand_rule">right-handed coordinate system</a>, which is a common standard. For directions, the convention for built-in types like ``Camera3D`` is for -Z to point forward (+X is right, +Y is up, and +Z is back). Other objects may use different direction conventions. For more information, see the <a href="https://docs.godotengine.org/en//tutorials/assets_pipeline/importing_3d_scenes/model_export_considerations.html#d-asset-direction-conventions">3D asset direction conventions</a> tutorial.
/// 
/// > Note: The basis matrices are exposed as <a href="https://www.mindcontrol.org/~hplus/graphics/matrix-layout.html">column-major</a> order, which is the same as OpenGL. However, they are stored internally in row-major order, which is the same as DirectX.
/// 
public struct Basis: _GodotBridgeableBuiltin, Equatable, Hashable {
    /// The basis's X axis, and the column `0` of the matrix.
    /// 
    /// On the identity basis, this vector points right (``Vector3/right``).
    /// 
    public var x: Vector3
    /// The basis's Y axis, and the column `1` of the matrix.
    /// 
    /// On the identity basis, this vector points up (``Vector3/up``).
    /// 
    public var y: Vector3
    /// The basis's Z axis, and the column `2` of the matrix.
    /// 
    /// On the identity basis, this vector points back (``Vector3/back``).
    /// 
    public var z: Vector3
    /// The identity ``Basis``. This is an orthonormal basis with no rotation, no shear, and a scale of ``Vector3/one``. This also means that:
    /// 
    /// - The ``x`` points right (``Vector3/right``);
    /// 
    /// - The ``y`` points up (``Vector3/up``);
    /// 
    /// - The ``z`` points back (``Vector3/back``).
    /// 
    /// If a ``Vector3`` or another ``Basis`` is transformed (multiplied) by this constant, no transformation occurs.
    /// 
    /// > Note: In GDScript, this constant is equivalent to creating a [constructor Basis] without any arguments. It can be used to make your code clearer, and for consistency with C#.
    /// 
    public static var identity: Basis { Basis (xAxis: Vector3 (x: 1, y: 0, z: 0), yAxis: Vector3 (x: 0, y: 1, z: 0), zAxis: Vector3 (x: 0, y: 0, z: 1)) }
    /// When any basis is multiplied by ``flipX``, it negates all components of the ``x`` axis (the X column).
    /// 
    /// When ``flipX`` is multiplied by any basis, it negates the ``Vector3/x`` component of all axes (the X row).
    /// 
    public static var flipX: Basis { Basis (xAxis: Vector3 (x: -1, y: 0, z: 0), yAxis: Vector3 (x: 0, y: 1, z: 0), zAxis: Vector3 (x: 0, y: 0, z: 1)) }
    /// When any basis is multiplied by ``flipY``, it negates all components of the ``y`` axis (the Y column).
    /// 
    /// When ``flipY`` is multiplied by any basis, it negates the ``Vector3/y`` component of all axes (the Y row).
    /// 
    public static var flipY: Basis { Basis (xAxis: Vector3 (x: 1, y: 0, z: 0), yAxis: Vector3 (x: 0, y: -1, z: 0), zAxis: Vector3 (x: 0, y: 0, z: 1)) }
    /// When any basis is multiplied by ``flipZ``, it negates all components of the ``z`` axis (the Z column).
    /// 
    /// When ``flipZ`` is multiplied by any basis, it negates the ``Vector3/z`` component of all axes (the Z row).
    /// 
    public static var flipZ: Basis { Basis (xAxis: Vector3 (x: 1, y: 0, z: 0), yAxis: Vector3 (x: 0, y: 1, z: 0), zAxis: Vector3 (x: 0, y: 0, z: -1)) }
    /// Constructs a ``Basis`` identical to ``identity``.
    /// 
    /// > Note: In C#, this constructs a ``Basis`` with all of its components set to ``Vector3/zero``.
    /// 
    public init() {
        self.x = Vector3 (x: 1, y: 0, z: 0)
        self.y = Vector3 (x: 0, y: 1, z: 0)
        self.z = Vector3 (x: 0, y: 0, z: 1)
    }
    
    /// Constructs a ``Basis`` as a copy of the given ``Basis``.
    public init(from: Basis) {
        self.x = Vector3 ()
        self.y = Vector3 ()
        self.z = Vector3 ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForBasis.constructor1(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs a ``Basis`` that only represents rotation from the given ``Quaternion``.
    /// 
    /// > Note: Quaternions _only_ store rotation, not scale. Because of this, conversions from ``Basis`` to ``Quaternion`` cannot always be reversed.
    /// 
    public init(from: Quaternion) {
        self.x = Vector3 ()
        self.y = Vector3 ()
        self.z = Vector3 ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForBasis.constructor2(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs a ``Basis`` that only represents rotation, rotated around the `axis` by the given `angle`, in radians. The axis must be a normalized vector.
    /// 
    /// > Note: This is the same as using ``rotated(axis:angle:)`` on the ``identity`` basis. With more than one angle consider using ``fromEuler(euler:order:)``, instead.
    /// 
    public init(axis: Vector3, angle: Float) {
        self.x = Vector3 ()
        self.y = Vector3 ()
        self.z = Vector3 ()
        withUnsafePointer(to: axis) { pArg0 in
            let angle = Double(angle)
            withUnsafePointer(to: angle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForBasis.constructor3(&self, pArgs)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Constructs a ``Basis`` from 3 axis vectors. These are the columns of the basis matrix.
    public init(xAxis: Vector3, yAxis: Vector3, zAxis: Vector3) {
        self.x = xAxis
        self.y = yAxis
        self.z = zAxis
    }
    
    
    /* Methods */
    
    /// Returns the <a href="https://en.wikipedia.org/wiki/Invertible_matrix">inverse of this basis's matrix</a>.
    public func inverse() -> Basis {
        var result: Basis = Basis()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForBasis.method_inverse(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the transposed version of this basis. This turns the basis matrix's columns into rows, and its rows into columns.
    /// 
    public func transposed() -> Basis {
        var result: Basis = Basis()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForBasis.method_transposed(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the orthonormalized version of this basis. An orthonormal basis is both _orthogonal_ (the axes are perpendicular to each other) and _normalized_ (the axes have a length of `1.0`), which also means it can only represent a rotation.
    /// 
    /// It is often useful to call this method to avoid rounding errors on a rotating basis:
    /// 
    public func orthonormalized() -> Basis {
        var result: Basis = Basis()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForBasis.method_orthonormalized(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the <a href="https://en.wikipedia.org/wiki/Determinant">determinant</a> of this basis's matrix. For advanced math, this number can be used to determine a few attributes:
    /// 
    /// - If the determinant is exactly `0.0`, the basis is not invertible (see ``inverse()``).
    /// 
    /// - If the determinant is a negative number, the basis represents a negative scale.
    /// 
    /// > Note: If the basis's scale is the same for every axis, its determinant is always that scale by the power of 2.
    /// 
    public func determinant() -> Double {
        var result: Double = Double()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForBasis.method_determinant(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a copy of this basis rotated around the given `axis` by the given `angle` (in radians).
    /// 
    /// The `axis` must be a normalized vector (see ``Vector3/normalized()``). If `angle` is positive, the basis is rotated counter-clockwise around the axis.
    /// 
    public func rotated(axis: Vector3, angle: Double) -> Basis {
        var result: Basis = Basis()
        withUnsafePointer(to: axis) { pArg0 in
            let angle = Double(angle)
            withUnsafePointer(to: angle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForBasis.method_rotated(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns this basis with each axis's components scaled by the given `scale`'s components.
    /// 
    /// The basis matrix's rows are multiplied by `scale`'s components. This operation is a global scale (relative to the parent).
    /// 
    public func scaled(scale: Vector3) -> Basis {
        var result: Basis = Basis()
        withUnsafePointer(to: scale) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForBasis.method_scaled(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the length of each axis of this basis, as a ``Vector3``. If the basis is not sheared, this value is the scaling factor. It is not affected by rotation.
    /// 
    /// > Note: If the value returned by ``determinant()`` is negative, the scale is also negative.
    /// 
    public func getScale() -> Vector3 {
        var result: Vector3 = Vector3()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForBasis.method_get_scale(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns this basis's rotation as a ``Vector3`` of <a href="https://en.wikipedia.org/wiki/Euler_angles">Euler angles</a>, in radians. For the returned value:
    /// 
    /// - The ``Vector3/x`` contains the angle around the ``x`` axis (pitch);
    /// 
    /// - The ``Vector3/y`` contains the angle around the ``y`` axis (yaw);
    /// 
    /// - The ``Vector3/z`` contains the angle around the ``z`` axis (roll).
    /// 
    /// The order of each consecutive rotation can be changed with `order` (see ``EulerOrder`` constants). By default, the YXZ convention is used (``EulerOrder/yxz``): Z (roll) is calculated first, then X (pitch), and lastly Y (yaw). When using the opposite method ``fromEuler(euler:order:)``, this order is reversed.
    /// 
    /// > Note: For this method to return correctly, the basis needs to be _orthonormal_ (see ``orthonormalized()``).
    /// 
    /// > Note: Euler angles are much more intuitive but are not suitable for 3D math. Because of this, consider using the ``getRotationQuaternion()`` method instead, which returns a ``Quaternion``.
    /// 
    /// > Note: In the Inspector dock, a basis's rotation is often displayed in Euler angles (in degrees), as is the case with the ``Node3D/rotation`` property.
    /// 
    public func getEuler(order: Int64 = 2) -> Vector3 {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: order) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForBasis.method_get_euler(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the transposed dot product between `with` and the ``x`` axis (see ``transposed()``).
    /// 
    /// This is equivalent to `basis.x.dot(vector)`.
    /// 
    public func tdotx(with: Vector3) -> Double {
        var result: Double = Double()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForBasis.method_tdotx(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the transposed dot product between `with` and the ``y`` axis (see ``transposed()``).
    /// 
    /// This is equivalent to `basis.y.dot(vector)`.
    /// 
    public func tdoty(with: Vector3) -> Double {
        var result: Double = Double()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForBasis.method_tdoty(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the transposed dot product between `with` and the ``z`` axis (see ``transposed()``).
    /// 
    /// This is equivalent to `basis.z.dot(vector)`.
    /// 
    public func tdotz(with: Vector3) -> Double {
        var result: Double = Double()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForBasis.method_tdotz(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Performs a spherical-linear interpolation with the `to` basis, given a `weight`. Both this basis and `to` should represent a rotation.
    /// 
    /// **Example:** Smoothly rotate a ``Node3D`` to the target basis over time, with a ``Tween``:
    /// 
    public func slerp(to: Basis, weight: Double) -> Basis {
        var result: Basis = Basis()
        withUnsafePointer(to: to) { pArg0 in
            let weight = Double(weight)
            withUnsafePointer(to: weight) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForBasis.method_slerp(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if this basis is conformal. A conformal basis is both _orthogonal_ (the axes are perpendicular to each other) and _uniform_ (the axes share the same length). This method can be especially useful during physics calculations.
    public func isConformal() -> Bool {
        var result: Bool = Bool()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForBasis.method_is_conformal(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if this basis and `b` are approximately equal, by calling ``@GlobalScope.is_equal_approx`` on all vector components.
    public func isEqualApprox(b: Basis) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: b) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForBasis.method_is_equal_approx(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if this basis is finite, by calling ``@GlobalScope.is_finite`` on all vector components.
    public func isFinite() -> Bool {
        var result: Bool = Bool()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForBasis.method_is_finite(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns this basis's rotation as a ``Quaternion``.
    /// 
    /// > Note: Quaternions are much more suitable for 3D math but are less intuitive. For user interfaces, consider using the ``getEuler(order:)`` method, which returns Euler angles.
    /// 
    public func getRotationQuaternion() -> Quaternion {
        var result: Quaternion = Quaternion()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForBasis.method_get_rotation_quaternion(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Creates a new ``Basis`` with a rotation such that the forward axis (-Z) points towards the `target` position.
    /// 
    /// By default, the -Z axis (camera forward) is treated as forward (implies +X is right). If `useModelFront` is `true`, the +Z axis (asset front) is treated as forward (implies +X is left) and points toward the `target` position.
    /// 
    /// The up axis (+Y) points as close to the `up` vector as possible while staying perpendicular to the forward axis. The returned basis is orthonormalized (see ``orthonormalized()``).
    /// 
    /// The `target` and the `up` cannot be ``Vector3/zero``, and shouldn't be colinear to avoid unintended rotation around local Z axis.
    /// 
    public static func lookingAt(target: Vector3, up: Vector3 = Vector3 (x: 0, y: 1, z: 0), useModelFront: Bool = false) -> Basis {
        var result: Basis = Basis()
        withUnsafePointer(to: target) { pArg0 in
            withUnsafePointer(to: up) { pArg1 in
                withUnsafePointer(to: useModelFront) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            GodotInterfaceForBasis.method_looking_at(nil, pArgs, &result, 3)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Constructs a new ``Basis`` that only represents scale, with no rotation or shear, from the given `scale` vector.
    /// 
    /// > Note: In linear algebra, the matrix of this basis is also known as a <a href="https://en.wikipedia.org/wiki/Diagonal_matrix">diagonal matrix</a>.
    /// 
    public static func fromScale(_ scale: Vector3) -> Basis {
        var result: Basis = Basis()
        withUnsafePointer(to: scale) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForBasis.method_from_scale(nil, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Constructs a new ``Basis`` that only represents rotation from the given ``Vector3`` of <a href="https://en.wikipedia.org/wiki/Euler_angles">Euler angles</a>, in radians.
    /// 
    /// - The ``Vector3/x`` should contain the angle around the ``x`` axis (pitch);
    /// 
    /// - The ``Vector3/y`` should contain the angle around the ``y`` axis (yaw);
    /// 
    /// - The ``Vector3/z`` should contain the angle around the ``z`` axis (roll).
    /// 
    /// The order of each consecutive rotation can be changed with `order` (see ``EulerOrder`` constants). By default, the YXZ convention is used (``EulerOrder/yxz``): the basis rotates first around the Y axis (yaw), then X (pitch), and lastly Z (roll). When using the opposite method ``getEuler(order:)``, this order is reversed.
    /// 
    public static func fromEuler(_ euler: Vector3, order: Int64 = 2) -> Basis {
        var result: Basis = Basis()
        withUnsafePointer(to: euler) { pArg0 in
            withUnsafePointer(to: order) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForBasis.method_from_euler(nil, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    public subscript(index: Int64) -> Vector3 {
        mutating get {
            var result = Vector3()
            GodotInterfaceForBasis.indexed_getter (&self, index, &result)
            return result
        }
        
        set {
            var value = newValue
            GodotInterfaceForBasis.indexed_setter (&self, index, &value)
        }
        
    }
    
    /// Multiplies all components of the ``Basis`` by the given integer. This affects the basis's scale uniformly, resizing all 3 axes by the `right` value.
    public static func *(lhs: Basis, rhs: Int64) -> Basis  {
        var result: Basis = Basis()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForBasis.operator_3(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Divides all components of the ``Basis`` by the given integer. This affects the basis's scale uniformly, resizing all 3 axes by the `right` value.
    public static func /(lhs: Basis, rhs: Int64) -> Basis  {
        var result: Basis = Basis()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForBasis.operator_4(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Multiplies all components of the ``Basis`` by the given float. This affects the basis's scale uniformly, resizing all 3 axes by the `right` value.
    public static func *(lhs: Basis, rhs: Double) -> Basis  {
        var result: Basis = Basis()
        withUnsafePointer(to: lhs) { pArg0 in
            let rhs = Double(rhs)
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForBasis.operator_5(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Divides all components of the ``Basis`` by the given float. This affects the basis's scale uniformly, resizing all 3 axes by the `right` value.
    public static func /(lhs: Basis, rhs: Double) -> Basis  {
        var result: Basis = Basis()
        withUnsafePointer(to: lhs) { pArg0 in
            let rhs = Double(rhs)
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForBasis.operator_6(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Transforms (multiplies) the `right` vector by this basis, returning a ``Vector3``.
    /// 
    public static func *(lhs: Basis, rhs: Vector3) -> Vector3  {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForBasis.operator_7(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the components of both ``Basis`` matrices are exactly equal.
    /// 
    /// > Note: Due to floating-point precision errors, consider using ``isEqualApprox(b:)`` instead, which is more reliable.
    /// 
    public static func ==(lhs: Basis, rhs: Basis) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForBasis.operator_8(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the components of both ``Basis`` matrices are not equal.
    /// 
    /// > Note: Due to floating-point precision errors, consider using ``isEqualApprox(b:)`` instead, which is more reliable.
    /// 
    public static func !=(lhs: Basis, rhs: Basis) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForBasis.operator_9(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Transforms (multiplies) the `right` basis by this basis.
    /// 
    /// This is the operation performed between parent and child ``Node3D``s.
    /// 
    public static func *(lhs: Basis, rhs: Basis) -> Basis  {
        var result: Basis = Basis()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForBasis.operator_10(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Wrap ``Basis`` into a ``Variant``
    @inline(__always)
    @inlinable
    public func toVariant() -> Variant {
        Variant(self)
    }
    
    /// Wrap ``Basis`` into a ``Variant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toVariant() -> Variant? {
        Variant(self)
    }
    
    /// Wrap ``Basis`` into a ``FastVariant``
    @inline(__always)
    @inlinable
    public func toFastVariant() -> FastVariant {
        FastVariant(self)
    }
    
    /// Wrap ``Basis`` into a ``FastVariant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toFastVariant() -> FastVariant? {
        FastVariant(self)
    }
    
    /// Extract ``Basis`` from a ``Variant``. Throws `VariantConversionError` if it's not possible.
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
    
    /// Initialze ``Basis`` from ``Variant``. Fails if `variant` doesn't contain ``Basis``
    @inline(__always)                
    public init?(_ variant: Variant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForBasis.selfFromVariant)                        
        }
    }
    
    /// Initialze ``Basis`` from ``Variant``. Fails if `variant` doesn't contain ``Basis`` or is `nil`
    @inline(__always)
    @inlinable
    public init?(_ variant: Variant?) {
        guard let variant else { return nil }
        self.init(variant)
    }
    
    /// Initialze ``Basis`` from ``FastVariant``. Fails if `variant` doesn't contain ``Basis``
    @inline(__always)                
    public init?(_ variant: borrowing FastVariant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForBasis.selfFromVariant)                        
        }
    }
    
    /// Initialze ``Basis`` from ``FastVariant``. Fails if `variant` doesn't contain ``Basis`` or is `nil`
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
    
    /// Internal API. For indicating that Godot `Array` of ``Basis`` has type `Array[Basis]`
    @inline(__always)
    @inlinable
    public static var _variantType: Variant.GType {
        .basis 
    }
}

public extension Variant {
    /// Initialize ``Variant`` by wrapping ``Basis?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    convenience init?(_ from: Basis?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``Variant`` by wrapping ``Basis``
    @inline(__always)
    convenience init(_ from: Basis) {
        self.init(payload: from, constructor: GodotInterfaceForBasis.variantFromSelf)
    }
    
}

public extension FastVariant {
    /// Initialize ``FastVariant`` by wrapping ``Basis?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    init?(_ from: Basis?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``FastVariant`` by wrapping ``Basis``
    @inline(__always)
    init(_ from: Basis) {
        self.init(payload: from, constructor: GodotInterfaceForBasis.variantFromSelf)
    }
    
}

/// Static storage for keeping pointers to Godot implementation wrapped by Basis
enum GodotInterfaceForBasis {
    // MARK: - Constructors
    static let constructor0: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_BASIS, 0)!
    }()
    
    static let constructor1: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_BASIS, 1)!
    }()
    
    static let constructor2: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_BASIS, 2)!
    }()
    
    static let constructor3: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_BASIS, 3)!
    }()
    
    static let constructor4: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_BASIS, 4)!
    }()
    
    // MARK: - Methods
    static let method_inverse: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("inverse")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, &name.content, 594669093)!
    }()
    
    static let method_transposed: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("transposed")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, &name.content, 594669093)!
    }()
    
    static let method_orthonormalized: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("orthonormalized")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, &name.content, 594669093)!
    }()
    
    static let method_determinant: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("determinant")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, &name.content, 466405837)!
    }()
    
    static let method_rotated: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("rotated")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, &name.content, 1998708965)!
    }()
    
    static let method_scaled: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("scaled")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, &name.content, 3934786792)!
    }()
    
    static let method_get_scale: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_scale")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, &name.content, 1776574132)!
    }()
    
    static let method_get_euler: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_euler")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, &name.content, 1394941017)!
    }()
    
    static let method_tdotx: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("tdotx")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, &name.content, 1047977935)!
    }()
    
    static let method_tdoty: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("tdoty")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, &name.content, 1047977935)!
    }()
    
    static let method_tdotz: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("tdotz")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, &name.content, 1047977935)!
    }()
    
    static let method_slerp: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("slerp")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, &name.content, 3118673011)!
    }()
    
    static let method_is_conformal: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_conformal")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, &name.content, 3918633141)!
    }()
    
    static let method_is_equal_approx: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_equal_approx")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, &name.content, 3165333982)!
    }()
    
    static let method_is_finite: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_finite")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, &name.content, 3918633141)!
    }()
    
    static let method_get_rotation_quaternion: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_rotation_quaternion")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, &name.content, 4274879941)!
    }()
    
    static let method_looking_at: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("looking_at")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, &name.content, 3728732505)!
    }()
    
    static let method_from_scale: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("from_scale")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, &name.content, 3703240166)!
    }()
    
    static let method_from_euler: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("from_euler")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, &name.content, 2802321791)!
    }()
    
    static let indexed_getter: GDExtensionPtrIndexedGetter = {
        return gi.variant_get_ptr_indexed_getter (GDEXTENSION_VARIANT_TYPE_BASIS)!
    }()
    
    static let indexed_setter: GDExtensionPtrIndexedSetter = {
        return gi.variant_get_ptr_indexed_setter (GDEXTENSION_VARIANT_TYPE_BASIS)!
    }()
    
    // MARK: - Operators
    static let operator_3: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    static let operator_4: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    static let operator_5: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    
    static let operator_6: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    
    static let operator_7: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    
    static let operator_8: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_BASIS)!
    }()
    
    static let operator_9: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_BASIS)!
    }()
    
    static let operator_10: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_BASIS)!
    }()
    
    // MARK: - Variant conversion
    static let variantFromSelf: GDExtensionVariantFromTypeConstructorFunc = {
        gi.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_BASIS)!
    }()
    
    static let selfFromVariant: GDExtensionTypeFromVariantConstructorFunc = {
        gi.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_BASIS)!
    }()
    
    
}

