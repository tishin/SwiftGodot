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


/// A 3×4 matrix representing a 3D transformation.
/// 
/// The ``Transform3D`` built-in ``Variant`` type is a 3×4 matrix representing a transformation in 3D space. It contains a ``Basis``, which on its own can represent rotation, scale, and shear. Additionally, combined with its own ``origin``, the transform can also represent a translation.
/// 
/// For a general introduction, see the <a href="https://docs.godotengine.org/en//tutorials/math/matrices_and_transforms.html">Matrices and transforms</a> tutorial.
/// 
/// > Note: Godot uses a <a href="https://en.wikipedia.org/wiki/Right-hand_rule">right-handed coordinate system</a>, which is a common standard. For directions, the convention for built-in types like ``Camera3D`` is for -Z to point forward (+X is right, +Y is up, and +Z is back). Other objects may use different direction conventions. For more information, see the <a href="https://docs.godotengine.org/en//tutorials/assets_pipeline/importing_3d_scenes/model_export_considerations.html#d-asset-direction-conventions">3D asset direction conventions</a> tutorial.
/// 
public struct Transform3D: _GodotBridgeableBuiltin, Equatable, Hashable {
    /// The ``Basis`` of this transform. It is composed by 3 axes (``Basis/x``, ``Basis/y``, and ``Basis/z``). Together, these represent the transform's rotation, scale, and shear.
    public var basis: Basis
    /// The translation offset of this transform. In 3D space, this can be seen as the position.
    public var origin: Vector3
    /// The identity ``Transform3D``. This is a transform with no translation, no rotation, and a scale of ``Vector3/one``. Its ``basis`` is equal to ``Basis/identity``. This also means that:
    /// 
    /// - Its ``Basis/x`` points right (``Vector3/right``);
    /// 
    /// - Its ``Basis/y`` points up (``Vector3/up``);
    /// 
    /// - Its ``Basis/z`` points back (``Vector3/back``).
    /// 
    /// If a ``Vector3``, an ``AABB``, a ``Plane``, a ``PackedVector3Array``, or another ``Transform3D`` is transformed (multiplied) by this constant, no transformation occurs.
    /// 
    /// > Note: In GDScript, this constant is equivalent to creating a [constructor Transform3D] without any arguments. It can be used to make your code clearer, and for consistency with C#.
    /// 
    public static var identity: Transform3D { Transform3D (basis: Basis (xAxis: Vector3 (x: 1, y: 0, z: 0), yAxis: Vector3 (x: 0, y: 1, z: 0), zAxis: Vector3 (x: 0, y: 0, z: 1)), origin: Vector3(x: 0, y: 0, z: 0)) }
    /// ``Transform3D`` with mirroring applied perpendicular to the YZ plane. Its ``basis`` is equal to ``Basis/flipX``.
    public static var flipX: Transform3D { Transform3D (basis: Basis (xAxis: Vector3 (x: -1, y: 0, z: 0), yAxis: Vector3 (x: 0, y: 1, z: 0), zAxis: Vector3 (x: 0, y: 0, z: 1)), origin: Vector3(x: 0, y: 0, z: 0)) }
    /// ``Transform3D`` with mirroring applied perpendicular to the XZ plane. Its ``basis`` is equal to ``Basis/flipY``.
    public static var flipY: Transform3D { Transform3D (basis: Basis (xAxis: Vector3 (x: 1, y: 0, z: 0), yAxis: Vector3 (x: 0, y: -1, z: 0), zAxis: Vector3 (x: 0, y: 0, z: 1)), origin: Vector3(x: 0, y: 0, z: 0)) }
    /// ``Transform3D`` with mirroring applied perpendicular to the XY plane. Its ``basis`` is equal to ``Basis/flipZ``.
    public static var flipZ: Transform3D { Transform3D (basis: Basis (xAxis: Vector3 (x: 1, y: 0, z: 0), yAxis: Vector3 (x: 0, y: 1, z: 0), zAxis: Vector3 (x: 0, y: 0, z: -1)), origin: Vector3(x: 0, y: 0, z: 0)) }
    /// Constructs a ``Transform3D`` identical to ``identity``.
    /// 
    /// > Note: In C#, this constructs a ``Transform3D`` with its ``origin`` and the components of its ``basis`` set to ``Vector3/zero``.
    /// 
    public init() {
        self.basis = Basis ()
        self.origin = Vector3 ()
    }
    
    /// Constructs a ``Transform3D`` as a copy of the given ``Transform3D``.
    public init(from: Transform3D) {
        self.basis = Basis ()
        self.origin = Vector3 ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForTransform3D.constructor1(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs a ``Transform3D`` from a ``Basis`` and ``Vector3``.
    public init(basis: Basis, origin: Vector3) {
        self.basis = basis
        self.origin = origin
    }
    
    /// Constructs a ``Transform3D`` from four ``Vector3`` values (also called matrix columns).
    /// 
    /// The first three arguments are the ``basis``'s axes (``Basis/x``, ``Basis/y``, and ``Basis/z``).
    /// 
    public init(xAxis: Vector3, yAxis: Vector3, zAxis: Vector3, origin: Vector3) {
        self.basis = Basis ()
        self.origin = Vector3 ()
        withUnsafePointer(to: xAxis) { pArg0 in
            withUnsafePointer(to: yAxis) { pArg1 in
                withUnsafePointer(to: zAxis) { pArg2 in
                    withUnsafePointer(to: origin) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                GodotInterfaceForTransform3D.constructor3(&self, pArgs)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Constructs a ``Transform3D`` from a ``Projection``. Because ``Transform3D`` is a 3×4 matrix and ``Projection`` is a 4×4 matrix, this operation trims the last row of the projection matrix (`from.x.w`, `from.y.w`, `from.z.w`, and `from.w.w` are not included in the new transform).
    public init(from: Projection) {
        self.basis = Basis ()
        self.origin = Vector3 ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForTransform3D.constructor4(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    
    /* Methods */
    
    /// Returns the <a href="https://en.wikipedia.org/wiki/Invertible_matrix">inverted version of this transform</a>. See also ``Basis/inverse()``.
    /// 
    /// > Note: For this method to return correctly, the transform's ``basis`` needs to be _orthonormal_ (see ``orthonormalized()``). That means the basis should only represent a rotation. If it does not, use ``affineInverse()`` instead.
    /// 
    public func inverse() -> Transform3D {
        var result: Transform3D = Transform3D()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForTransform3D.method_inverse(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the inverted version of this transform. Unlike ``inverse()``, this method works with almost any ``basis``, including non-uniform ones, but is slower. See also ``Basis/inverse()``.
    /// 
    /// > Note: For this method to return correctly, the transform's ``basis`` needs to have a determinant that is not exactly `0.0` (see ``Basis/determinant()``).
    /// 
    public func affineInverse() -> Transform3D {
        var result: Transform3D = Transform3D()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForTransform3D.method_affine_inverse(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a copy of this transform with its ``basis`` orthonormalized. An orthonormal basis is both _orthogonal_ (the axes are perpendicular to each other) and _normalized_ (the axes have a length of `1.0`), which also means it can only represent a rotation. See also ``Basis/orthonormalized()``.
    public func orthonormalized() -> Transform3D {
        var result: Transform3D = Transform3D()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForTransform3D.method_orthonormalized(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a copy of this transform rotated around the given `axis` by the given `angle` (in radians).
    /// 
    /// The `axis` must be a normalized vector (see ``Vector3/normalized()``). If `angle` is positive, the basis is rotated counter-clockwise around the axis.
    /// 
    /// This method is an optimized version of multiplying the given transform `X` with a corresponding rotation transform `R` from the left, i.e., `R * X`.
    /// 
    /// This can be seen as transforming with respect to the global/parent frame.
    /// 
    public func rotated(axis: Vector3, angle: Double) -> Transform3D {
        var result: Transform3D = Transform3D()
        withUnsafePointer(to: axis) { pArg0 in
            let angle = Double(angle)
            withUnsafePointer(to: angle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForTransform3D.method_rotated(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of this transform rotated around the given `axis` by the given `angle` (in radians).
    /// 
    /// The `axis` must be a normalized vector in the transform's local coordinate system. For example, to rotate around the local X-axis, use ``Vector3/right``.
    /// 
    /// This method is an optimized version of multiplying the given transform `X` with a corresponding rotation transform `R` from the right, i.e., `X * R`.
    /// 
    /// This can be seen as transforming with respect to the local frame.
    /// 
    public func rotatedLocal(axis: Vector3, angle: Double) -> Transform3D {
        var result: Transform3D = Transform3D()
        withUnsafePointer(to: axis) { pArg0 in
            let angle = Double(angle)
            withUnsafePointer(to: angle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForTransform3D.method_rotated_local(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of this transform scaled by the given `scale` factor.
    /// 
    /// This method is an optimized version of multiplying the given transform `X` with a corresponding scaling transform `S` from the left, i.e., `S * X`.
    /// 
    /// This can be seen as transforming with respect to the global/parent frame.
    /// 
    public func scaled(scale: Vector3) -> Transform3D {
        var result: Transform3D = Transform3D()
        withUnsafePointer(to: scale) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForTransform3D.method_scaled(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of this transform scaled by the given `scale` factor.
    /// 
    /// This method is an optimized version of multiplying the given transform `X` with a corresponding scaling transform `S` from the right, i.e., `X * S`.
    /// 
    /// This can be seen as transforming with respect to the local frame.
    /// 
    public func scaledLocal(scale: Vector3) -> Transform3D {
        var result: Transform3D = Transform3D()
        withUnsafePointer(to: scale) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForTransform3D.method_scaled_local(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of this transform translated by the given `offset`.
    /// 
    /// This method is an optimized version of multiplying the given transform `X` with a corresponding translation transform `T` from the left, i.e., `T * X`.
    /// 
    /// This can be seen as transforming with respect to the global/parent frame.
    /// 
    public func translated(offset: Vector3) -> Transform3D {
        var result: Transform3D = Transform3D()
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForTransform3D.method_translated(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of this transform translated by the given `offset`.
    /// 
    /// This method is an optimized version of multiplying the given transform `X` with a corresponding translation transform `T` from the right, i.e., `X * T`.
    /// 
    /// This can be seen as transforming with respect to the local frame.
    /// 
    public func translatedLocal(offset: Vector3) -> Transform3D {
        var result: Transform3D = Transform3D()
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForTransform3D.method_translated_local(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of this transform rotated so that the forward axis (-Z) points towards the `target` position.
    /// 
    /// The up axis (+Y) points as close to the `up` vector as possible while staying perpendicular to the forward axis. The resulting transform is orthonormalized. The existing rotation, scale, and skew information from the original transform is discarded. The `target` and `up` vectors cannot be zero, cannot be parallel to each other, and are defined in global/parent space.
    /// 
    /// If `useModelFront` is `true`, the +Z axis (asset front) is treated as forward (implies +X is left) and points toward the `target` position. By default, the -Z axis (camera forward) is treated as forward (implies +X is right).
    /// 
    public func lookingAt(target: Vector3, up: Vector3 = Vector3 (x: 0, y: 1, z: 0), useModelFront: Bool = false) -> Transform3D {
        var result: Transform3D = Transform3D()
        withUnsafePointer(to: target) { pArg0 in
            withUnsafePointer(to: up) { pArg1 in
                withUnsafePointer(to: useModelFront) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            var mutSelfCopy = self
                            withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                               GodotInterfaceForTransform3D.method_looking_at(ptr, pArgs, &result, 3)
                            }
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the result of the linear interpolation between this transform and `xform` by the given `weight`.
    /// 
    /// The `weight` should be between `0.0` and `1.0` (inclusive). Values outside this range are allowed and can be used to perform _extrapolation_ instead.
    /// 
    public func interpolateWith(xform: Transform3D, weight: Double) -> Transform3D {
        var result: Transform3D = Transform3D()
        withUnsafePointer(to: xform) { pArg0 in
            let weight = Double(weight)
            withUnsafePointer(to: weight) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForTransform3D.method_interpolate_with(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if this transform and `xform` are approximately equal, by running ``@GlobalScope.is_equal_approx`` on each component.
    public func isEqualApprox(xform: Transform3D) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: xform) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForTransform3D.method_is_equal_approx(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if this transform is finite, by calling ``@GlobalScope.is_finite`` on each component.
    public func isFinite() -> Bool {
        var result: Bool = Bool()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForTransform3D.method_is_finite(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Multiplies all components of the ``Transform3D`` by the given integer, including the ``origin``. This affects the transform's scale uniformly, scaling the ``basis``.
    public static func *(lhs: Transform3D, rhs: Int64) -> Transform3D  {
        var result: Transform3D = Transform3D()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForTransform3D.operator_3(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Divides all components of the ``Transform3D`` by the given integer, including the ``origin``. This affects the transform's scale uniformly, scaling the ``basis``.
    public static func /(lhs: Transform3D, rhs: Int64) -> Transform3D  {
        var result: Transform3D = Transform3D()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForTransform3D.operator_4(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Multiplies all components of the ``Transform3D`` by the given float, including the ``origin``. This affects the transform's scale uniformly, scaling the ``basis``.
    public static func *(lhs: Transform3D, rhs: Double) -> Transform3D  {
        var result: Transform3D = Transform3D()
        withUnsafePointer(to: lhs) { pArg0 in
            let rhs = Double(rhs)
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForTransform3D.operator_5(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Divides all components of the ``Transform3D`` by the given float, including the ``origin``. This affects the transform's scale uniformly, scaling the ``basis``.
    public static func /(lhs: Transform3D, rhs: Double) -> Transform3D  {
        var result: Transform3D = Transform3D()
        withUnsafePointer(to: lhs) { pArg0 in
            let rhs = Double(rhs)
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForTransform3D.operator_6(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Transforms (multiplies) the ``Vector3`` by this transformation matrix.
    public static func *(lhs: Transform3D, rhs: Vector3) -> Vector3  {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForTransform3D.operator_7(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Transforms (multiplies) the ``Plane`` by this transformation matrix.
    public static func *(lhs: Transform3D, rhs: Plane) -> Plane  {
        var result: Plane = Plane()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForTransform3D.operator_8(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Transforms (multiplies) the ``AABB`` by this transformation matrix.
    public static func *(lhs: Transform3D, rhs: AABB) -> AABB  {
        var result: AABB = AABB()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForTransform3D.operator_9(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the components of both transforms are exactly equal.
    /// 
    /// > Note: Due to floating-point precision errors, consider using ``isEqualApprox(xform:)`` instead, which is more reliable.
    /// 
    public static func ==(lhs: Transform3D, rhs: Transform3D) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForTransform3D.operator_10(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the components of both transforms are not equal.
    /// 
    /// > Note: Due to floating-point precision errors, consider using ``isEqualApprox(xform:)`` instead, which is more reliable.
    /// 
    public static func !=(lhs: Transform3D, rhs: Transform3D) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForTransform3D.operator_11(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Transforms (multiplies) this transform by the `right` transform.
    /// 
    /// This is the operation performed between parent and child ``Node3D``s.
    /// 
    /// > Note: If you need to only modify one attribute of this transform, consider using one of the following methods, instead:
    /// 
    /// - For translation, see ``translated(offset:)`` or ``translatedLocal(offset:)``.
    /// 
    /// - For rotation, see ``rotated(axis:angle:)`` or ``rotatedLocal(axis:angle:)``.
    /// 
    /// - For scale, see ``scaled(scale:)`` or ``scaledLocal(scale:)``.
    /// 
    public static func *(lhs: Transform3D, rhs: Transform3D) -> Transform3D  {
        var result: Transform3D = Transform3D()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForTransform3D.operator_12(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Transforms (multiplies) every ``Vector3`` element of the given ``PackedVector3Array`` by this transformation matrix.
    /// 
    /// On larger arrays, this operation is much faster than transforming each ``Vector3`` individually.
    /// 
    public static func *(lhs: Transform3D, rhs: PackedVector3Array) -> PackedVector3Array  {
        let result: PackedVector3Array = PackedVector3Array()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForTransform3D.operator_15(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    /// Wrap ``Transform3D`` into a ``Variant``
    @inline(__always)
    @inlinable
    public func toVariant() -> Variant {
        Variant(self)
    }
    
    /// Wrap ``Transform3D`` into a ``Variant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toVariant() -> Variant? {
        Variant(self)
    }
    
    /// Wrap ``Transform3D`` into a ``FastVariant``
    @inline(__always)
    @inlinable
    public func toFastVariant() -> FastVariant {
        FastVariant(self)
    }
    
    /// Wrap ``Transform3D`` into a ``FastVariant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toFastVariant() -> FastVariant? {
        FastVariant(self)
    }
    
    /// Extract ``Transform3D`` from a ``Variant``. Throws `VariantConversionError` if it's not possible.
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
    
    /// Initialze ``Transform3D`` from ``Variant``. Fails if `variant` doesn't contain ``Transform3D``
    @inline(__always)                
    public init?(_ variant: Variant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForTransform3D.selfFromVariant)                        
        }
    }
    
    /// Initialze ``Transform3D`` from ``Variant``. Fails if `variant` doesn't contain ``Transform3D`` or is `nil`
    @inline(__always)
    @inlinable
    public init?(_ variant: Variant?) {
        guard let variant else { return nil }
        self.init(variant)
    }
    
    /// Initialze ``Transform3D`` from ``FastVariant``. Fails if `variant` doesn't contain ``Transform3D``
    @inline(__always)                
    public init?(_ variant: borrowing FastVariant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForTransform3D.selfFromVariant)                        
        }
    }
    
    /// Initialze ``Transform3D`` from ``FastVariant``. Fails if `variant` doesn't contain ``Transform3D`` or is `nil`
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
    
    /// Internal API. For indicating that Godot `Array` of ``Transform3D`` has type `Array[Transform3D]`
    @inline(__always)
    @inlinable
    public static var _variantType: Variant.GType {
        .transform3d 
    }
}

public extension Variant {
    /// Initialize ``Variant`` by wrapping ``Transform3D?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    convenience init?(_ from: Transform3D?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``Variant`` by wrapping ``Transform3D``
    @inline(__always)
    convenience init(_ from: Transform3D) {
        self.init(payload: from, constructor: GodotInterfaceForTransform3D.variantFromSelf)
    }
    
}

public extension FastVariant {
    /// Initialize ``FastVariant`` by wrapping ``Transform3D?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    init?(_ from: Transform3D?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``FastVariant`` by wrapping ``Transform3D``
    @inline(__always)
    init(_ from: Transform3D) {
        self.init(payload: from, constructor: GodotInterfaceForTransform3D.variantFromSelf)
    }
    
}

/// Static storage for keeping pointers to Godot implementation wrapped by Transform3D
enum GodotInterfaceForTransform3D {
    // MARK: - Constructors
    static let constructor0: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, 0)!
    }()
    
    static let constructor1: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, 1)!
    }()
    
    static let constructor2: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, 2)!
    }()
    
    static let constructor3: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, 3)!
    }()
    
    static let constructor4: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, 4)!
    }()
    
    // MARK: - Methods
    static let method_inverse: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("inverse")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, &name.content, 3816817146)!
    }()
    
    static let method_affine_inverse: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("affine_inverse")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, &name.content, 3816817146)!
    }()
    
    static let method_orthonormalized: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("orthonormalized")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, &name.content, 3816817146)!
    }()
    
    static let method_rotated: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("rotated")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, &name.content, 1563203923)!
    }()
    
    static let method_rotated_local: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("rotated_local")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, &name.content, 1563203923)!
    }()
    
    static let method_scaled: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("scaled")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, &name.content, 1405596198)!
    }()
    
    static let method_scaled_local: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("scaled_local")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, &name.content, 1405596198)!
    }()
    
    static let method_translated: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("translated")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, &name.content, 1405596198)!
    }()
    
    static let method_translated_local: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("translated_local")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, &name.content, 1405596198)!
    }()
    
    static let method_looking_at: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("looking_at")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, &name.content, 90889270)!
    }()
    
    static let method_interpolate_with: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("interpolate_with")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, &name.content, 1786453358)!
    }()
    
    static let method_is_equal_approx: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_equal_approx")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, &name.content, 696001652)!
    }()
    
    static let method_is_finite: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_finite")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, &name.content, 3918633141)!
    }()
    
    // MARK: - Operators
    static let operator_3: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    static let operator_4: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    static let operator_5: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    
    static let operator_6: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    
    static let operator_7: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    
    static let operator_8: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, GDEXTENSION_VARIANT_TYPE_PLANE)!
    }()
    
    static let operator_9: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, GDEXTENSION_VARIANT_TYPE_AABB)!
    }()
    
    static let operator_10: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)!
    }()
    
    static let operator_11: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)!
    }()
    
    static let operator_12: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)!
    }()
    
    static let operator_15: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)!
    }()
    
    // MARK: - Variant conversion
    static let variantFromSelf: GDExtensionVariantFromTypeConstructorFunc = {
        gi.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)!
    }()
    
    static let selfFromVariant: GDExtensionTypeFromVariantConstructorFunc = {
        gi.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)!
    }()
    
    
}

