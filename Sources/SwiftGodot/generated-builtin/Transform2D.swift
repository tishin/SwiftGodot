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


/// A 2×3 matrix representing a 2D transformation.
/// 
/// The ``Transform2D`` built-in ``Variant`` type is a 2×3 <a href="https://en.wikipedia.org/wiki/Matrix_(mathematics)">matrix</a> representing a transformation in 2D space. It contains three ``Vector2`` values: ``x``, ``y``, and ``origin``. Together, they can represent translation, rotation, scale, and skew.
/// 
/// The ``x`` and ``y`` axes form a 2×2 matrix, known as the transform's **basis**. The length of each axis (``Vector2/length()``) influences the transform's scale, while the direction of all axes influence the rotation. Usually, both axes are perpendicular to one another. However, when you rotate one axis individually, the transform becomes skewed. Applying a skewed transform to a 2D sprite will make the sprite appear distorted.
/// 
/// For a general introduction, see the <a href="https://docs.godotengine.org/en//tutorials/math/matrices_and_transforms.html">Matrices and transforms</a> tutorial.
/// 
/// > Note: Unlike ``Transform3D``, there is no 2D equivalent to the ``Basis`` type. All mentions of "basis" refer to the ``x`` and ``y`` components of ``Transform2D``.
/// 
public struct Transform2D: _GodotBridgeableBuiltin, Equatable, Hashable {
    /// The transform basis's X axis, and the column `0` of the matrix. Combined with ``y``, this represents the transform's rotation, scale, and skew.
    /// 
    /// On the identity transform, this vector points right (``Vector2/right``).
    /// 
    public var x: Vector2
    /// The transform basis's Y axis, and the column `1` of the matrix. Combined with ``x``, this represents the transform's rotation, scale, and skew.
    /// 
    /// On the identity transform, this vector points down (``Vector2/down``).
    /// 
    public var y: Vector2
    /// The translation offset of this transform, and the column `2` of the matrix. In 2D space, this can be seen as the position.
    public var origin: Vector2
    /// The identity ``Transform2D``. This is a transform with no translation, no rotation, and a scale of ``Vector2/one``. This also means that:
    /// 
    /// - The ``x`` points right (``Vector2/right``);
    /// 
    /// - The ``y`` points down (``Vector2/down``).
    /// 
    /// If a ``Vector2``, a ``Rect2``, a ``PackedVector2Array``, or another ``Transform2D`` is transformed (multiplied) by this constant, no transformation occurs.
    /// 
    /// > Note: In GDScript, this constant is equivalent to creating a [constructor Transform2D] without any arguments. It can be used to make your code clearer, and for consistency with C#.
    /// 
    public static var identity: Transform2D { Transform2D (xAxis: Vector2 (x: 1, y: 0), yAxis: Vector2 (x: 0, y: 1), origin: Vector2 (x: 0, y: 0)) }
    /// When any transform is multiplied by ``flipX``, it negates all components of the ``x`` axis (the X column).
    /// 
    /// When ``flipX`` is multiplied by any transform, it negates the ``Vector2/x`` component of all axes (the X row).
    /// 
    public static var flipX: Transform2D { Transform2D (xAxis: Vector2 (x: -1, y: 0), yAxis: Vector2 (x: 0, y: 1), origin: Vector2 (x: 0, y: 0)) }
    /// When any transform is multiplied by ``flipY``, it negates all components of the ``y`` axis (the Y column).
    /// 
    /// When ``flipY`` is multiplied by any transform, it negates the ``Vector2/y`` component of all axes (the Y row).
    /// 
    public static var flipY: Transform2D { Transform2D (xAxis: Vector2 (x: 1, y: 0), yAxis: Vector2 (x: 0, y: -1), origin: Vector2 (x: 0, y: 0)) }
    /// Constructs a ``Transform2D`` identical to ``identity``.
    /// 
    /// > Note: In C#, this constructs a ``Transform2D`` with all of its components set to ``Vector2/zero``.
    /// 
    public init() {
        self.x = Vector2 (x: 1, y: 0)
        self.y = Vector2 (x: 0, y: 1)
        self.origin = Vector2 ()
    }
    
    /// Constructs a ``Transform2D`` as a copy of the given ``Transform2D``.
    public init(from: Transform2D) {
        self.x = Vector2 ()
        self.y = Vector2 ()
        self.origin = Vector2 ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForTransform2D.constructor1(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs a ``Transform2D`` from a given angle (in radians) and position.
    public init(rotation: Float, position: Vector2) {
        self.x = Vector2 ()
        self.y = Vector2 ()
        self.origin = Vector2 ()
        let rotation = Double(rotation)
        withUnsafePointer(to: rotation) { pArg0 in
            withUnsafePointer(to: position) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForTransform2D.constructor2(&self, pArgs)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Constructs a ``Transform2D`` from a given angle (in radians), scale, skew (in radians), and position.
    public init(rotation: Float, scale: Vector2, skew: Float, position: Vector2) {
        self.x = Vector2 ()
        self.y = Vector2 ()
        self.origin = Vector2 ()
        let rotation = Double(rotation)
        withUnsafePointer(to: rotation) { pArg0 in
            withUnsafePointer(to: scale) { pArg1 in
                let skew = Double(skew)
                withUnsafePointer(to: skew) { pArg2 in
                    withUnsafePointer(to: position) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                GodotInterfaceForTransform2D.constructor3(&self, pArgs)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Constructs a ``Transform2D`` from 3 ``Vector2`` values representing ``x``, ``y``, and the ``origin`` (the three matrix columns).
    public init(xAxis: Vector2, yAxis: Vector2, origin: Vector2) {
        self.x = xAxis
        self.y = yAxis
        self.origin = origin
    }
    
    
    /* Methods */
    
    /// Returns the <a href="https://en.wikipedia.org/wiki/Invertible_matrix">inverted version of this transform</a>.
    /// 
    /// > Note: For this method to return correctly, the transform's basis needs to be _orthonormal_ (see ``orthonormalized()``). That means the basis should only represent a rotation. If it does not, use ``affineInverse()`` instead.
    /// 
    public func inverse() -> Transform2D {
        var result: Transform2D = Transform2D()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForTransform2D.method_inverse(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the inverted version of this transform. Unlike ``inverse()``, this method works with almost any basis, including non-uniform ones, but is slower.
    /// 
    /// > Note: For this method to return correctly, the transform's basis needs to have a determinant that is not exactly `0.0` (see ``determinant()``).
    /// 
    public func affineInverse() -> Transform2D {
        var result: Transform2D = Transform2D()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForTransform2D.method_affine_inverse(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns this transform's rotation (in radians). This is equivalent to ``x``'s angle (see ``Vector2/angle()``).
    public func getRotation() -> Double {
        var result: Double = Double()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForTransform2D.method_get_rotation(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns this transform's translation. Equivalent to ``origin``.
    public func getOrigin() -> Vector2 {
        var result: Vector2 = Vector2()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForTransform2D.method_get_origin(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the length of both ``x`` and ``y``, as a ``Vector2``. If this transform's basis is not skewed, this value is the scaling factor. It is not affected by rotation.
    /// 
    /// > Note: If the value returned by ``determinant()`` is negative, the scale is also negative.
    /// 
    public func getScale() -> Vector2 {
        var result: Vector2 = Vector2()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForTransform2D.method_get_scale(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns this transform's skew (in radians).
    public func getSkew() -> Double {
        var result: Double = Double()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForTransform2D.method_get_skew(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a copy of this transform with its basis orthonormalized. An orthonormal basis is both _orthogonal_ (the axes are perpendicular to each other) and _normalized_ (the axes have a length of `1.0`), which also means it can only represent a rotation.
    public func orthonormalized() -> Transform2D {
        var result: Transform2D = Transform2D()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForTransform2D.method_orthonormalized(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a copy of this transform rotated by the given `angle` (in radians).
    /// 
    /// If `angle` is positive, the transform is rotated clockwise.
    /// 
    /// This method is an optimized version of multiplying the given transform `X` with a corresponding rotation transform `R` from the left, i.e., `R * X`.
    /// 
    /// This can be seen as transforming with respect to the global/parent frame.
    /// 
    public func rotated(angle: Double) -> Transform2D {
        var result: Transform2D = Transform2D()
        let angle = Double(angle)
        withUnsafePointer(to: angle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForTransform2D.method_rotated(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of the transform rotated by the given `angle` (in radians).
    /// 
    /// This method is an optimized version of multiplying the given transform `X` with a corresponding rotation transform `R` from the right, i.e., `X * R`.
    /// 
    /// This can be seen as transforming with respect to the local frame.
    /// 
    public func rotatedLocal(angle: Double) -> Transform2D {
        var result: Transform2D = Transform2D()
        let angle = Double(angle)
        withUnsafePointer(to: angle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForTransform2D.method_rotated_local(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of the transform scaled by the given `scale` factor.
    /// 
    /// This method is an optimized version of multiplying the given transform `X` with a corresponding scaling transform `S` from the left, i.e., `S * X`.
    /// 
    /// This can be seen as transforming with respect to the global/parent frame.
    /// 
    public func scaled(scale: Vector2) -> Transform2D {
        var result: Transform2D = Transform2D()
        withUnsafePointer(to: scale) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForTransform2D.method_scaled(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of the transform scaled by the given `scale` factor.
    /// 
    /// This method is an optimized version of multiplying the given transform `X` with a corresponding scaling transform `S` from the right, i.e., `X * S`.
    /// 
    /// This can be seen as transforming with respect to the local frame.
    /// 
    public func scaledLocal(scale: Vector2) -> Transform2D {
        var result: Transform2D = Transform2D()
        withUnsafePointer(to: scale) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForTransform2D.method_scaled_local(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of the transform translated by the given `offset`.
    /// 
    /// This method is an optimized version of multiplying the given transform `X` with a corresponding translation transform `T` from the left, i.e., `T * X`.
    /// 
    /// This can be seen as transforming with respect to the global/parent frame.
    /// 
    public func translated(offset: Vector2) -> Transform2D {
        var result: Transform2D = Transform2D()
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForTransform2D.method_translated(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of the transform translated by the given `offset`.
    /// 
    /// This method is an optimized version of multiplying the given transform `X` with a corresponding translation transform `T` from the right, i.e., `X * T`.
    /// 
    /// This can be seen as transforming with respect to the local frame.
    /// 
    public func translatedLocal(offset: Vector2) -> Transform2D {
        var result: Transform2D = Transform2D()
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForTransform2D.method_translated_local(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the <a href="https://en.wikipedia.org/wiki/Determinant">determinant</a> of this transform basis's matrix. For advanced math, this number can be used to determine a few attributes:
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
           GodotInterfaceForTransform2D.method_determinant(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a copy of the `v` vector, transformed (multiplied) by the transform basis's matrix. Unlike the multiplication operator (`*`), this method ignores the ``origin``.
    public func basisXform(v: Vector2) -> Vector2 {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: v) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForTransform2D.method_basis_xform(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of the `v` vector, transformed (multiplied) by the inverse transform basis's matrix (see ``inverse()``). This method ignores the ``origin``.
    /// 
    /// > Note: This method assumes that this transform's basis is _orthonormal_ (see ``orthonormalized()``). If the basis is not orthonormal, `transform.affine_inverse().basis_xform(vector)` should be used instead (see ``affineInverse()``).
    /// 
    public func basisXformInv(v: Vector2) -> Vector2 {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: v) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForTransform2D.method_basis_xform_inv(ptr, pArgs, &result, 1)
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
    public func interpolateWith(xform: Transform2D, weight: Double) -> Transform2D {
        var result: Transform2D = Transform2D()
        withUnsafePointer(to: xform) { pArg0 in
            let weight = Double(weight)
            withUnsafePointer(to: weight) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForTransform2D.method_interpolate_with(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if this transform's basis is conformal. A conformal basis is both _orthogonal_ (the axes are perpendicular to each other) and _uniform_ (the axes share the same length). This method can be especially useful during physics calculations.
    public func isConformal() -> Bool {
        var result: Bool = Bool()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForTransform2D.method_is_conformal(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if this transform and `xform` are approximately equal, by running ``@GlobalScope.is_equal_approx`` on each component.
    public func isEqualApprox(xform: Transform2D) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: xform) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForTransform2D.method_is_equal_approx(ptr, pArgs, &result, 1)
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
           GodotInterfaceForTransform2D.method_is_finite(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a copy of the transform rotated such that the rotated X-axis points towards the `target` position, in global space.
    public func lookingAt(target: Vector2 = Vector2 (x: 0, y: 0)) -> Transform2D {
        var result: Transform2D = Transform2D()
        withUnsafePointer(to: target) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForTransform2D.method_looking_at(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    public subscript(index: Int64) -> Vector2 {
        mutating get {
            var result = Vector2()
            GodotInterfaceForTransform2D.indexed_getter (&self, index, &result)
            return result
        }
        
        set {
            var value = newValue
            GodotInterfaceForTransform2D.indexed_setter (&self, index, &value)
        }
        
    }
    
    /// Multiplies all components of the ``Transform2D`` by the given integer, including the ``origin``. This affects the transform's scale uniformly.
    public static func *(lhs: Transform2D, rhs: Int64) -> Transform2D  {
        var result: Transform2D = Transform2D()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForTransform2D.operator_3(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Divides all components of the ``Transform2D`` by the given integer, including the ``origin``. This affects the transform's scale uniformly.
    public static func /(lhs: Transform2D, rhs: Int64) -> Transform2D  {
        var result: Transform2D = Transform2D()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForTransform2D.operator_4(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Multiplies all components of the ``Transform2D`` by the given float, including the ``origin``. This affects the transform's scale uniformly.
    public static func *(lhs: Transform2D, rhs: Double) -> Transform2D  {
        var result: Transform2D = Transform2D()
        withUnsafePointer(to: lhs) { pArg0 in
            let rhs = Double(rhs)
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForTransform2D.operator_5(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Divides all components of the ``Transform2D`` by the given float, including the ``origin``. This affects the transform's scale uniformly.
    public static func /(lhs: Transform2D, rhs: Double) -> Transform2D  {
        var result: Transform2D = Transform2D()
        withUnsafePointer(to: lhs) { pArg0 in
            let rhs = Double(rhs)
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForTransform2D.operator_6(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Transforms (multiplies) the ``Vector2`` by this transformation matrix.
    public static func *(lhs: Transform2D, rhs: Vector2) -> Vector2  {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForTransform2D.operator_7(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Transforms (multiplies) the ``Rect2`` by this transformation matrix.
    public static func *(lhs: Transform2D, rhs: Rect2) -> Rect2  {
        var result: Rect2 = Rect2()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForTransform2D.operator_8(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the components of both transforms are exactly equal.
    /// 
    /// > Note: Due to floating-point precision errors, consider using ``isEqualApprox(xform:)`` instead, which is more reliable.
    /// 
    public static func ==(lhs: Transform2D, rhs: Transform2D) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForTransform2D.operator_9(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the components of both transforms are not equal.
    /// 
    /// > Note: Due to floating-point precision errors, consider using ``isEqualApprox(xform:)`` instead, which is more reliable.
    /// 
    public static func !=(lhs: Transform2D, rhs: Transform2D) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForTransform2D.operator_10(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Transforms (multiplies) this transform by the `right` transform.
    /// 
    /// This is the operation performed between parent and child ``CanvasItem`` nodes.
    /// 
    /// > Note: If you need to only modify one attribute of this transform, consider using one of the following methods, instead:
    /// 
    /// - For translation, see ``translated(offset:)`` or ``translatedLocal(offset:)``.
    /// 
    /// - For rotation, see ``rotated(angle:)`` or ``rotatedLocal(angle:)``.
    /// 
    /// - For scale, see ``scaled(scale:)`` or ``scaledLocal(scale:)``.
    /// 
    public static func *(lhs: Transform2D, rhs: Transform2D) -> Transform2D  {
        var result: Transform2D = Transform2D()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForTransform2D.operator_11(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Transforms (multiplies) every ``Vector2`` element of the given ``PackedVector2Array`` by this transformation matrix.
    /// 
    /// On larger arrays, this operation is much faster than transforming each ``Vector2`` individually.
    /// 
    public static func *(lhs: Transform2D, rhs: PackedVector2Array) -> PackedVector2Array  {
        let result: PackedVector2Array = PackedVector2Array()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForTransform2D.operator_14(pArg0, pArg1, &result.content)
            }
            
        }
        
        return result
    }
    
    /// Wrap ``Transform2D`` into a ``Variant``
    @inline(__always)
    @inlinable
    public func toVariant() -> Variant {
        Variant(self)
    }
    
    /// Wrap ``Transform2D`` into a ``Variant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toVariant() -> Variant? {
        Variant(self)
    }
    
    /// Wrap ``Transform2D`` into a ``FastVariant``
    @inline(__always)
    @inlinable
    public func toFastVariant() -> FastVariant {
        FastVariant(self)
    }
    
    /// Wrap ``Transform2D`` into a ``FastVariant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toFastVariant() -> FastVariant? {
        FastVariant(self)
    }
    
    /// Extract ``Transform2D`` from a ``Variant``. Throws `VariantConversionError` if it's not possible.
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
    
    /// Initialze ``Transform2D`` from ``Variant``. Fails if `variant` doesn't contain ``Transform2D``
    @inline(__always)                
    public init?(_ variant: Variant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForTransform2D.selfFromVariant)                        
        }
    }
    
    /// Initialze ``Transform2D`` from ``Variant``. Fails if `variant` doesn't contain ``Transform2D`` or is `nil`
    @inline(__always)
    @inlinable
    public init?(_ variant: Variant?) {
        guard let variant else { return nil }
        self.init(variant)
    }
    
    /// Initialze ``Transform2D`` from ``FastVariant``. Fails if `variant` doesn't contain ``Transform2D``
    @inline(__always)                
    public init?(_ variant: borrowing FastVariant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForTransform2D.selfFromVariant)                        
        }
    }
    
    /// Initialze ``Transform2D`` from ``FastVariant``. Fails if `variant` doesn't contain ``Transform2D`` or is `nil`
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
    
    /// Internal API. For indicating that Godot `Array` of ``Transform2D`` has type `Array[Transform2D]`
    @inline(__always)
    @inlinable
    public static var _variantType: Variant.GType {
        .transform2d 
    }
}

public extension Variant {
    /// Initialize ``Variant`` by wrapping ``Transform2D?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    convenience init?(_ from: Transform2D?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``Variant`` by wrapping ``Transform2D``
    @inline(__always)
    convenience init(_ from: Transform2D) {
        self.init(payload: from, constructor: GodotInterfaceForTransform2D.variantFromSelf)
    }
    
}

public extension FastVariant {
    /// Initialize ``FastVariant`` by wrapping ``Transform2D?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    init?(_ from: Transform2D?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``FastVariant`` by wrapping ``Transform2D``
    @inline(__always)
    init(_ from: Transform2D) {
        self.init(payload: from, constructor: GodotInterfaceForTransform2D.variantFromSelf)
    }
    
}

/// Static storage for keeping pointers to Godot implementation wrapped by Transform2D
enum GodotInterfaceForTransform2D {
    // MARK: - Constructors
    static let constructor0: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, 0)!
    }()
    
    static let constructor1: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, 1)!
    }()
    
    static let constructor2: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, 2)!
    }()
    
    static let constructor3: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, 3)!
    }()
    
    static let constructor4: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, 4)!
    }()
    
    // MARK: - Methods
    static let method_inverse: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("inverse")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, &name.content, 1420440541)!
    }()
    
    static let method_affine_inverse: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("affine_inverse")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, &name.content, 1420440541)!
    }()
    
    static let method_get_rotation: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_rotation")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, &name.content, 466405837)!
    }()
    
    static let method_get_origin: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_origin")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, &name.content, 2428350749)!
    }()
    
    static let method_get_scale: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_scale")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, &name.content, 2428350749)!
    }()
    
    static let method_get_skew: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_skew")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, &name.content, 466405837)!
    }()
    
    static let method_orthonormalized: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("orthonormalized")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, &name.content, 1420440541)!
    }()
    
    static let method_rotated: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("rotated")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, &name.content, 729597514)!
    }()
    
    static let method_rotated_local: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("rotated_local")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, &name.content, 729597514)!
    }()
    
    static let method_scaled: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("scaled")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, &name.content, 1446323263)!
    }()
    
    static let method_scaled_local: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("scaled_local")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, &name.content, 1446323263)!
    }()
    
    static let method_translated: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("translated")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, &name.content, 1446323263)!
    }()
    
    static let method_translated_local: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("translated_local")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, &name.content, 1446323263)!
    }()
    
    static let method_determinant: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("determinant")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, &name.content, 466405837)!
    }()
    
    static let method_basis_xform: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("basis_xform")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, &name.content, 2026743667)!
    }()
    
    static let method_basis_xform_inv: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("basis_xform_inv")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, &name.content, 2026743667)!
    }()
    
    static let method_interpolate_with: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("interpolate_with")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, &name.content, 359399686)!
    }()
    
    static let method_is_conformal: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_conformal")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, &name.content, 3918633141)!
    }()
    
    static let method_is_equal_approx: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_equal_approx")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, &name.content, 3837431929)!
    }()
    
    static let method_is_finite: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_finite")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, &name.content, 3918633141)!
    }()
    
    static let method_looking_at: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("looking_at")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, &name.content, 1446323263)!
    }()
    
    static let indexed_getter: GDExtensionPtrIndexedGetter = {
        return gi.variant_get_ptr_indexed_getter (GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)!
    }()
    
    static let indexed_setter: GDExtensionPtrIndexedSetter = {
        return gi.variant_get_ptr_indexed_setter (GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)!
    }()
    
    // MARK: - Operators
    static let operator_3: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    static let operator_4: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    static let operator_5: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    
    static let operator_6: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    
    static let operator_7: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, GDEXTENSION_VARIANT_TYPE_VECTOR2)!
    }()
    
    static let operator_8: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, GDEXTENSION_VARIANT_TYPE_RECT2)!
    }()
    
    static let operator_9: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)!
    }()
    
    static let operator_10: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)!
    }()
    
    static let operator_11: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)!
    }()
    
    static let operator_14: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY)!
    }()
    
    // MARK: - Variant conversion
    static let variantFromSelf: GDExtensionVariantFromTypeConstructorFunc = {
        gi.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)!
    }()
    
    static let selfFromVariant: GDExtensionTypeFromVariantConstructorFunc = {
        gi.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)!
    }()
    
    
}

