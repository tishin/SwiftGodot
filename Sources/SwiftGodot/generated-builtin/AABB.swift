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


/// A 3D axis-aligned bounding box.
/// 
/// The ``AABB`` built-in ``Variant`` type represents an axis-aligned bounding box in a 3D space. It is defined by its ``position`` and ``size``, which are ``Vector3``. It is frequently used for fast overlap tests (see ``intersects(with:)``). Although ``AABB`` itself is axis-aligned, it can be combined with ``Transform3D`` to represent a rotated or skewed bounding box.
/// 
/// It uses floating-point coordinates. The 2D counterpart to ``AABB`` is ``Rect2``. There is no version of ``AABB`` that uses integer coordinates.
/// 
/// > Note: Negative values for ``size`` are not supported. With negative size, most ``AABB`` methods do not work correctly. Use ``abs()`` to get an equivalent ``AABB`` with a non-negative size.
/// 
/// > Note: In a boolean context, a ``AABB`` evaluates to `false` if both ``position`` and ``size`` are zero (equal to ``Vector3/zero``). Otherwise, it always evaluates to `true`.
/// 
public struct AABB: _GodotBridgeableBuiltin, Equatable, Hashable {
    /// The origin point. This is usually the corner on the bottom-left and forward of the bounding box.
    public var position: Vector3
    /// The bounding box's width, height, and depth starting from ``position``. Setting this value also affects the ``end`` point.
    /// 
    /// > Note: It's recommended setting the width, height, and depth to non-negative values. This is because most methods in Godot assume that the ``position`` is the bottom-left-forward corner, and the ``end`` is the top-right-back corner. To get an equivalent bounding box with non-negative size, use ``abs()``.
    /// 
    public var size: Vector3
    /// Constructs an ``AABB`` with its ``position`` and ``size`` set to ``Vector3/zero``.
    public init() {
        self.position = Vector3 ()
        self.size = Vector3 ()
    }
    
    /// Constructs an ``AABB`` as a copy of the given ``AABB``.
    public init(from: AABB) {
        self.position = Vector3 ()
        self.size = Vector3 ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForAABB.constructor1(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs an ``AABB`` by `position` and `size`.
    public init(position: Vector3, size: Vector3) {
        self.position = position
        self.size = size
    }
    
    
    /* Methods */
    
    /// Returns an ``AABB`` equivalent to this bounding box, with its width, height, and depth modified to be non-negative values.
    /// 
    /// > Note: It's recommended to use this method when ``size`` is negative, as most other methods in Godot assume that the ``size``'s components are greater than `0`.
    /// 
    public func abs() -> AABB {
        var result: AABB = AABB()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForAABB.method_abs(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the center point of the bounding box. This is the same as `position + (size / 2.0)`.
    public func getCenter() -> Vector3 {
        var result: Vector3 = Vector3()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForAABB.method_get_center(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the bounding box's volume. This is equivalent to `size.x * size.y * size.z`. See also ``hasVolume()``.
    public func getVolume() -> Double {
        var result: Double = Double()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForAABB.method_get_volume(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if this bounding box's width, height, and depth are all positive. See also ``getVolume()``.
    public func hasVolume() -> Bool {
        var result: Bool = Bool()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForAABB.method_has_volume(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if this bounding box has a surface or a length, that is, at least one component of ``size`` is greater than `0`. Otherwise, returns `false`.
    public func hasSurface() -> Bool {
        var result: Bool = Bool()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForAABB.method_has_surface(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if the bounding box contains the given `point`. By convention, points exactly on the right, top, and front sides are **not** included.
    /// 
    /// > Note: This method is not reliable for ``AABB`` with a _negative_ ``size``. Use ``abs()`` first to get a valid bounding box.
    /// 
    public func hasPoint(_ point: Vector3) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForAABB.method_has_point(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if this bounding box and `aabb` are approximately equal, by calling ``Vector3/isEqualApprox(to:)`` on the ``position`` and the ``size``.
    public func isEqualApprox(aabb: AABB) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: aabb) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForAABB.method_is_equal_approx(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if this bounding box's values are finite, by calling ``Vector3/isFinite()`` on the ``position`` and the ``size``.
    public func isFinite() -> Bool {
        var result: Bool = Bool()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForAABB.method_is_finite(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if this bounding box overlaps with the box `with`. The edges of both boxes are _always_ excluded.
    public func intersects(with: AABB) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForAABB.method_intersects(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if this bounding box _completely_ encloses the `with` box. The edges of both boxes are included.
    /// 
    public func encloses(with: AABB) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForAABB.method_encloses(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if this bounding box is on both sides of the given `plane`.
    public func intersectsPlane(_ plane: Plane) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: plane) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForAABB.method_intersects_plane(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the intersection between this bounding box and `with`. If the boxes do not intersect, returns an empty ``AABB``. If the boxes intersect at the edge, returns a flat ``AABB`` with no volume (see ``hasSurface()`` and ``hasVolume()``).
    /// 
    /// > Note: If you only need to know whether two bounding boxes are intersecting, use ``intersects(with:)``, instead.
    /// 
    public func intersection(with: AABB) -> AABB {
        var result: AABB = AABB()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForAABB.method_intersection(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns an ``AABB`` that encloses both this bounding box and `with` around the edges. See also ``encloses(with:)``.
    public func merge(with: AABB) -> AABB {
        var result: AABB = AABB()
        withUnsafePointer(to: with) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForAABB.method_merge(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of this bounding box expanded to align the edges with the given `toPoint`, if necessary.
    /// 
    public func expand(toPoint: Vector3) -> AABB {
        var result: AABB = AABB()
        withUnsafePointer(to: toPoint) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForAABB.method_expand(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of this bounding box extended on all sides by the given amount `by`. A negative amount shrinks the box instead.
    /// 
    public func grow(by: Double) -> AABB {
        var result: AABB = AABB()
        let by = Double(by)
        withUnsafePointer(to: by) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForAABB.method_grow(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the vertex's position of this bounding box that's the farthest in the given direction. This point is commonly known as the support point in collision detection algorithms.
    public func getSupport(direction: Vector3) -> Vector3 {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: direction) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForAABB.method_get_support(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the longest normalized axis of this bounding box's ``size``, as a ``Vector3`` (``Vector3/right``, ``Vector3/up``, or ``Vector3/back``).
    /// 
    /// See also ``getLongestAxisIndex()`` and ``getLongestAxisSize()``.
    /// 
    public func getLongestAxis() -> Vector3 {
        var result: Vector3 = Vector3()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForAABB.method_get_longest_axis(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the index to the longest axis of this bounding box's ``size`` (see ``Vector3/Axis/x``, ``Vector3/Axis/y``, and ``Vector3/Axis/z``).
    /// 
    /// For an example, see ``getLongestAxis()``.
    /// 
    public func getLongestAxisIndex() -> Int64 {
        var result: Int64 = Int64()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForAABB.method_get_longest_axis_index(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the longest dimension of this bounding box's ``size``.
    /// 
    /// For an example, see ``getLongestAxis()``.
    /// 
    public func getLongestAxisSize() -> Double {
        var result: Double = Double()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForAABB.method_get_longest_axis_size(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the shortest normalized axis of this bounding box's ``size``, as a ``Vector3`` (``Vector3/right``, ``Vector3/up``, or ``Vector3/back``).
    /// 
    /// See also ``getShortestAxisIndex()`` and ``getShortestAxisSize()``.
    /// 
    public func getShortestAxis() -> Vector3 {
        var result: Vector3 = Vector3()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForAABB.method_get_shortest_axis(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the index to the shortest axis of this bounding box's ``size`` (see ``Vector3/Axis/x``, ``Vector3/Axis/y``, and ``Vector3/Axis/z``).
    /// 
    /// For an example, see ``getShortestAxis()``.
    /// 
    public func getShortestAxisIndex() -> Int64 {
        var result: Int64 = Int64()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForAABB.method_get_shortest_axis_index(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the shortest dimension of this bounding box's ``size``.
    /// 
    /// For an example, see ``getShortestAxis()``.
    /// 
    public func getShortestAxisSize() -> Double {
        var result: Double = Double()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForAABB.method_get_shortest_axis_size(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the position of one of the 8 vertices that compose this bounding box. With a `idx` of `0` this is the same as ``position``, and a `idx` of `7` is the same as ``end``.
    public func getEndpoint(idx: Int64) -> Vector3 {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForAABB.method_get_endpoint(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the first point where this bounding box and the given segment intersect, as a ``Vector3``. If no intersection occurs, returns `null`.
    /// 
    /// The segment begins at `from` and ends at `to`.
    /// 
    public func intersectsSegment(from: Vector3, to: Vector3) -> Variant? {
        var result = Variant.zero
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: to) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForAABB.method_intersects_segment(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: result)
    }
    
    /// Returns the first point where this bounding box and the given ray intersect, as a ``Vector3``. If no intersection occurs, returns `null`.
    /// 
    /// The ray begin at `from`, faces `dir` and extends towards infinity.
    /// 
    public func intersectsRay(from: Vector3, dir: Vector3) -> Variant? {
        var result = Variant.zero
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: dir) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForAABB.method_intersects_ray(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: result)
    }
    
    /// Returns `true` if both ``position`` and ``size`` of the bounding boxes are exactly equal, respectively.
    /// 
    /// > Note: Due to floating-point precision errors, consider using ``isEqualApprox(aabb:)`` instead, which is more reliable.
    /// 
    public static func ==(lhs: AABB, rhs: AABB) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForAABB.operator_3(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the ``position`` or ``size`` of both bounding boxes are not equal.
    /// 
    /// > Note: Due to floating-point precision errors, consider using ``isEqualApprox(aabb:)`` instead, which is more reliable.
    /// 
    public static func !=(lhs: AABB, rhs: AABB) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForAABB.operator_4(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Inversely transforms (multiplies) the ``AABB`` by the given ``Transform3D`` transformation matrix, under the assumption that the transformation basis is orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).
    /// 
    /// `aabb * transform` is equivalent to `transform.inverse() * aabb`. See ``Transform3D/inverse()``.
    /// 
    /// For transforming by inverse of an affine transformation (e.g. with scaling) `transform.affine_inverse() * aabb` can be used instead. See ``Transform3D/affineInverse()``.
    /// 
    public static func *(lhs: AABB, rhs: Transform3D) -> AABB  {
        var result: AABB = AABB()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForAABB.operator_5(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Wrap ``AABB`` into a ``Variant``
    @inline(__always)
    @inlinable
    public func toVariant() -> Variant {
        Variant(self)
    }
    
    /// Wrap ``AABB`` into a ``Variant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toVariant() -> Variant? {
        Variant(self)
    }
    
    /// Wrap ``AABB`` into a ``FastVariant``
    @inline(__always)
    @inlinable
    public func toFastVariant() -> FastVariant {
        FastVariant(self)
    }
    
    /// Wrap ``AABB`` into a ``FastVariant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toFastVariant() -> FastVariant? {
        FastVariant(self)
    }
    
    /// Extract ``AABB`` from a ``Variant``. Throws `VariantConversionError` if it's not possible.
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
    
    /// Initialze ``AABB`` from ``Variant``. Fails if `variant` doesn't contain ``AABB``
    @inline(__always)                
    public init?(_ variant: Variant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForAABB.selfFromVariant)                        
        }
    }
    
    /// Initialze ``AABB`` from ``Variant``. Fails if `variant` doesn't contain ``AABB`` or is `nil`
    @inline(__always)
    @inlinable
    public init?(_ variant: Variant?) {
        guard let variant else { return nil }
        self.init(variant)
    }
    
    /// Initialze ``AABB`` from ``FastVariant``. Fails if `variant` doesn't contain ``AABB``
    @inline(__always)                
    public init?(_ variant: borrowing FastVariant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForAABB.selfFromVariant)                        
        }
    }
    
    /// Initialze ``AABB`` from ``FastVariant``. Fails if `variant` doesn't contain ``AABB`` or is `nil`
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
    
    /// Internal API. For indicating that Godot `Array` of ``AABB`` has type `Array[AABB]`
    @inline(__always)
    @inlinable
    public static var _variantType: Variant.GType {
        .aabb 
    }
    /// The ending point. This is usually the corner on the top-right and back of the bounding box, and is equivalent to `position + size`. Setting this point affects the ``size``.
    public var end: Vector3 {
        set {
            size = newValue - position
        }
        
        get {
            position + size
        }
        
    }
    
}

public extension Variant {
    /// Initialize ``Variant`` by wrapping ``AABB?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    convenience init?(_ from: AABB?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``Variant`` by wrapping ``AABB``
    @inline(__always)
    convenience init(_ from: AABB) {
        self.init(payload: from, constructor: GodotInterfaceForAABB.variantFromSelf)
    }
    
}

public extension FastVariant {
    /// Initialize ``FastVariant`` by wrapping ``AABB?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    init?(_ from: AABB?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``FastVariant`` by wrapping ``AABB``
    @inline(__always)
    init(_ from: AABB) {
        self.init(payload: from, constructor: GodotInterfaceForAABB.variantFromSelf)
    }
    
}

/// Static storage for keeping pointers to Godot implementation wrapped by AABB
enum GodotInterfaceForAABB {
    // MARK: - Constructors
    static let constructor0: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_AABB, 0)!
    }()
    
    static let constructor1: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_AABB, 1)!
    }()
    
    static let constructor2: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_AABB, 2)!
    }()
    
    // MARK: - Methods
    static let method_abs: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("abs")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_AABB, &name.content, 1576868580)!
    }()
    
    static let method_get_center: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_center")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_AABB, &name.content, 1776574132)!
    }()
    
    static let method_get_volume: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_volume")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_AABB, &name.content, 466405837)!
    }()
    
    static let method_has_volume: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("has_volume")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_AABB, &name.content, 3918633141)!
    }()
    
    static let method_has_surface: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("has_surface")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_AABB, &name.content, 3918633141)!
    }()
    
    static let method_has_point: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("has_point")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_AABB, &name.content, 1749054343)!
    }()
    
    static let method_is_equal_approx: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_equal_approx")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_AABB, &name.content, 299946684)!
    }()
    
    static let method_is_finite: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_finite")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_AABB, &name.content, 3918633141)!
    }()
    
    static let method_intersects: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("intersects")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_AABB, &name.content, 299946684)!
    }()
    
    static let method_encloses: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("encloses")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_AABB, &name.content, 299946684)!
    }()
    
    static let method_intersects_plane: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("intersects_plane")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_AABB, &name.content, 1150170233)!
    }()
    
    static let method_intersection: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("intersection")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_AABB, &name.content, 1271470306)!
    }()
    
    static let method_merge: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("merge")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_AABB, &name.content, 1271470306)!
    }()
    
    static let method_expand: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("expand")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_AABB, &name.content, 2851643018)!
    }()
    
    static let method_grow: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("grow")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_AABB, &name.content, 239217291)!
    }()
    
    static let method_get_support: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_support")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_AABB, &name.content, 2923479887)!
    }()
    
    static let method_get_longest_axis: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_longest_axis")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_AABB, &name.content, 1776574132)!
    }()
    
    static let method_get_longest_axis_index: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_longest_axis_index")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_AABB, &name.content, 3173160232)!
    }()
    
    static let method_get_longest_axis_size: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_longest_axis_size")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_AABB, &name.content, 466405837)!
    }()
    
    static let method_get_shortest_axis: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_shortest_axis")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_AABB, &name.content, 1776574132)!
    }()
    
    static let method_get_shortest_axis_index: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_shortest_axis_index")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_AABB, &name.content, 3173160232)!
    }()
    
    static let method_get_shortest_axis_size: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_shortest_axis_size")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_AABB, &name.content, 466405837)!
    }()
    
    static let method_get_endpoint: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_endpoint")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_AABB, &name.content, 1394941017)!
    }()
    
    static let method_intersects_segment: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("intersects_segment")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_AABB, &name.content, 2048133369)!
    }()
    
    static let method_intersects_ray: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("intersects_ray")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_AABB, &name.content, 2048133369)!
    }()
    
    // MARK: - Operators
    static let operator_3: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_AABB, GDEXTENSION_VARIANT_TYPE_AABB)!
    }()
    
    static let operator_4: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_AABB, GDEXTENSION_VARIANT_TYPE_AABB)!
    }()
    
    static let operator_5: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_AABB, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)!
    }()
    
    // MARK: - Variant conversion
    static let variantFromSelf: GDExtensionVariantFromTypeConstructorFunc = {
        gi.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_AABB)!
    }()
    
    static let selfFromVariant: GDExtensionTypeFromVariantConstructorFunc = {
        gi.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_AABB)!
    }()
    
    
}

