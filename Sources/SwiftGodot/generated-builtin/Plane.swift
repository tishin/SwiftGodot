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


/// A plane in Hessian normal form.
/// 
/// Represents a normalized plane equation. ``normal`` is the normal of the plane (a, b, c normalized), and ``d`` is the distance from the origin to the plane (in the direction of "normal"). "Over" or "Above" the plane is considered the side of the plane towards where the normal is pointing.
public struct Plane: _GodotBridgeableBuiltin, Equatable, Hashable {
    /// The normal of the plane, typically a unit vector. Shouldn't be a zero vector as ``Plane`` with such ``normal`` does not represent a valid plane.
    /// 
    /// In the scalar equation of the plane `ax + by + cz = d`, this is the vector `(a, b, c)`, where [code skip-lint]d` is the ``d`` property.
    /// 
    public var normal: Vector3
    /// The distance from the origin to the plane, expressed in terms of ``normal`` (according to its direction and magnitude). Actual absolute distance from the origin to the plane can be calculated as `abs(d) / normal.length()` (if ``normal`` has zero length then this ``Plane`` does not represent a valid plane).
    /// 
    /// In the scalar equation of the plane `ax + by + cz = d`, this is [code skip-lint]d`, while the `(a, b, c)` coordinates are represented by the ``normal`` property.
    /// 
    public var d: Float
    /// A plane that extends in the Y and Z axes (normal vector points +X).
    public static var planeYz: Plane { Plane (a: 1, b: 0, c: 0, d: 0) }
    /// A plane that extends in the X and Z axes (normal vector points +Y).
    public static var planeXz: Plane { Plane (a: 0, b: 1, c: 0, d: 0) }
    /// A plane that extends in the X and Y axes (normal vector points +Z).
    public static var planeXy: Plane { Plane (a: 0, b: 0, c: 1, d: 0) }
    /// Constructs a default-initialized ``Plane`` with all components set to `0`.
    public init() {
        self.normal = Vector3 ()
        self.d = Float ()
    }
    
    /// Constructs a ``Plane`` as a copy of the given ``Plane``.
    public init(from: Plane) {
        self.normal = Vector3 ()
        self.d = Float ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPlane.constructor1(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Creates a plane from the normal vector. The plane will intersect the origin.
    /// 
    /// The `normal` of the plane must be a unit vector.
    /// 
    public init(normal: Vector3) {
        self.normal = Vector3 ()
        self.d = Float ()
        withUnsafePointer(to: normal) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForPlane.constructor2(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Creates a plane from the normal vector and the plane's distance from the origin.
    /// 
    /// The `normal` of the plane must be a unit vector.
    /// 
    public init(normal: Vector3, d: Float) {
        self.normal = normal
        self.d = d
    }
    
    /// Creates a plane from the normal vector and a point on the plane.
    /// 
    /// The `normal` of the plane must be a unit vector.
    /// 
    public init(normal: Vector3, point: Vector3) {
        self.normal = Vector3 ()
        self.d = Float ()
        withUnsafePointer(to: normal) { pArg0 in
            withUnsafePointer(to: point) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForPlane.constructor4(&self, pArgs)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Creates a plane from the three points, given in clockwise order.
    public init(point1: Vector3, point2: Vector3, point3: Vector3) {
        self.normal = Vector3 ()
        self.d = Float ()
        withUnsafePointer(to: point1) { pArg0 in
            withUnsafePointer(to: point2) { pArg1 in
                withUnsafePointer(to: point3) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            GodotInterfaceForPlane.constructor5(&self, pArgs)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Creates a plane from the four parameters. The three components of the resulting plane's ``normal`` are `a`, `b` and `c`, and the plane has a distance of `d` from the origin.
    public init(a: Float, b: Float, c: Float, d: Float) {
        self.normal = Vector3 ()
        self.d = Float ()
        let a = Double(a)
        withUnsafePointer(to: a) { pArg0 in
            let b = Double(b)
            withUnsafePointer(to: b) { pArg1 in
                let c = Double(c)
                withUnsafePointer(to: c) { pArg2 in
                    let d = Double(d)
                    withUnsafePointer(to: d) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                GodotInterfaceForPlane.constructor6(&self, pArgs)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
    /* Methods */
    
    /// Returns a copy of the plane, with normalized ``normal`` (so it's a unit vector). Returns `Plane(0, 0, 0, 0)` if ``normal`` can't be normalized (it has zero length).
    public func normalized() -> Plane {
        var result: Plane = Plane()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForPlane.method_normalized(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the center of the plane.
    public func getCenter() -> Vector3 {
        var result: Vector3 = Vector3()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForPlane.method_get_center(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if this plane and `toPlane` are approximately equal, by running ``@GlobalScope.is_equal_approx`` on each component.
    public func isEqualApprox(toPlane: Plane) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: toPlane) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForPlane.method_is_equal_approx(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if this plane is finite, by calling ``@GlobalScope.is_finite`` on each component.
    public func isFinite() -> Bool {
        var result: Bool = Bool()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForPlane.method_is_finite(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if `point` is located above the plane.
    public func isPointOver(point: Vector3) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForPlane.method_is_point_over(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the shortest distance from the plane to the position `point`. If the point is above the plane, the distance will be positive. If below, the distance will be negative.
    public func distanceTo(point: Vector3) -> Double {
        var result: Double = Double()
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForPlane.method_distance_to(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if `point` is inside the plane. Comparison uses a custom minimum `tolerance` threshold.
    public func hasPoint(_ point: Vector3, tolerance: Double = 1e-05) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: point) { pArg0 in
            let tolerance = Double(tolerance)
            withUnsafePointer(to: tolerance) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForPlane.method_has_point(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the orthogonal projection of `point` into a point in the plane.
    public func project(point: Vector3) -> Vector3 {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForPlane.method_project(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the intersection point of the three planes `b`, `c` and this plane. If no intersection is found, `null` is returned.
    public func intersect3(b: Plane, c: Plane) -> Variant? {
        var result = Variant.zero
        withUnsafePointer(to: b) { pArg0 in
            withUnsafePointer(to: c) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForPlane.method_intersect_3(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: result)
    }
    
    /// Returns the intersection point of a ray consisting of the position `from` and the direction normal `dir` with this plane. If no intersection is found, `null` is returned.
    public func intersectsRay(from: Vector3, dir: Vector3) -> Variant? {
        var result = Variant.zero
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: dir) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForPlane.method_intersects_ray(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: result)
    }
    
    /// Returns the intersection point of a segment from position `from` to position `to` with this plane. If no intersection is found, `null` is returned.
    public func intersectsSegment(from: Vector3, to: Vector3) -> Variant? {
        var result = Variant.zero
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: to) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForPlane.method_intersects_segment(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: result)
    }
    
    /// Returns `true` if the planes are exactly equal.
    /// 
    /// > Note: Due to floating-point precision errors, consider using ``isEqualApprox(toPlane:)`` instead, which is more reliable.
    /// 
    public static func ==(lhs: Plane, rhs: Plane) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForPlane.operator_5(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the planes are not equal.
    /// 
    /// > Note: Due to floating-point precision errors, consider using ``isEqualApprox(toPlane:)`` instead, which is more reliable.
    /// 
    public static func !=(lhs: Plane, rhs: Plane) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForPlane.operator_6(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Inversely transforms (multiplies) the ``Plane`` by the given ``Transform3D`` transformation matrix.
    /// 
    /// `plane * transform` is equivalent to `transform.affine_inverse() * plane`. See ``Transform3D/affineInverse()``.
    /// 
    public static func *(lhs: Plane, rhs: Transform3D) -> Plane  {
        var result: Plane = Plane()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForPlane.operator_7(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Wrap ``Plane`` into a ``Variant``
    @inline(__always)
    @inlinable
    public func toVariant() -> Variant {
        Variant(self)
    }
    
    /// Wrap ``Plane`` into a ``Variant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toVariant() -> Variant? {
        Variant(self)
    }
    
    /// Wrap ``Plane`` into a ``FastVariant``
    @inline(__always)
    @inlinable
    public func toFastVariant() -> FastVariant {
        FastVariant(self)
    }
    
    /// Wrap ``Plane`` into a ``FastVariant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toFastVariant() -> FastVariant? {
        FastVariant(self)
    }
    
    /// Extract ``Plane`` from a ``Variant``. Throws `VariantConversionError` if it's not possible.
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
    
    /// Initialze ``Plane`` from ``Variant``. Fails if `variant` doesn't contain ``Plane``
    @inline(__always)                
    public init?(_ variant: Variant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForPlane.selfFromVariant)                        
        }
    }
    
    /// Initialze ``Plane`` from ``Variant``. Fails if `variant` doesn't contain ``Plane`` or is `nil`
    @inline(__always)
    @inlinable
    public init?(_ variant: Variant?) {
        guard let variant else { return nil }
        self.init(variant)
    }
    
    /// Initialze ``Plane`` from ``FastVariant``. Fails if `variant` doesn't contain ``Plane``
    @inline(__always)                
    public init?(_ variant: borrowing FastVariant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForPlane.selfFromVariant)                        
        }
    }
    
    /// Initialze ``Plane`` from ``FastVariant``. Fails if `variant` doesn't contain ``Plane`` or is `nil`
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
    
    /// Internal API. For indicating that Godot `Array` of ``Plane`` has type `Array[Plane]`
    @inline(__always)
    @inlinable
    public static var _variantType: Variant.GType {
        .plane 
    }
}

public extension Variant {
    /// Initialize ``Variant`` by wrapping ``Plane?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    convenience init?(_ from: Plane?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``Variant`` by wrapping ``Plane``
    @inline(__always)
    convenience init(_ from: Plane) {
        self.init(payload: from, constructor: GodotInterfaceForPlane.variantFromSelf)
    }
    
}

public extension FastVariant {
    /// Initialize ``FastVariant`` by wrapping ``Plane?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    init?(_ from: Plane?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``FastVariant`` by wrapping ``Plane``
    @inline(__always)
    init(_ from: Plane) {
        self.init(payload: from, constructor: GodotInterfaceForPlane.variantFromSelf)
    }
    
}

/// Static storage for keeping pointers to Godot implementation wrapped by Plane
enum GodotInterfaceForPlane {
    // MARK: - Constructors
    static let constructor0: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PLANE, 0)!
    }()
    
    static let constructor1: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PLANE, 1)!
    }()
    
    static let constructor2: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PLANE, 2)!
    }()
    
    static let constructor3: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PLANE, 3)!
    }()
    
    static let constructor4: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PLANE, 4)!
    }()
    
    static let constructor5: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PLANE, 5)!
    }()
    
    static let constructor6: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PLANE, 6)!
    }()
    
    // MARK: - Methods
    static let method_normalized: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("normalized")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PLANE, &name.content, 1051796340)!
    }()
    
    static let method_get_center: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_center")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PLANE, &name.content, 1776574132)!
    }()
    
    static let method_is_equal_approx: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_equal_approx")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PLANE, &name.content, 1150170233)!
    }()
    
    static let method_is_finite: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_finite")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PLANE, &name.content, 3918633141)!
    }()
    
    static let method_is_point_over: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_point_over")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PLANE, &name.content, 1749054343)!
    }()
    
    static let method_distance_to: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("distance_to")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PLANE, &name.content, 1047977935)!
    }()
    
    static let method_has_point: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("has_point")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PLANE, &name.content, 1258189072)!
    }()
    
    static let method_project: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("project")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PLANE, &name.content, 2923479887)!
    }()
    
    static let method_intersect_3: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("intersect_3")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PLANE, &name.content, 2012052692)!
    }()
    
    static let method_intersects_ray: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("intersects_ray")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PLANE, &name.content, 2048133369)!
    }()
    
    static let method_intersects_segment: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("intersects_segment")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PLANE, &name.content, 2048133369)!
    }()
    
    // MARK: - Operators
    static let operator_5: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_PLANE, GDEXTENSION_VARIANT_TYPE_PLANE)!
    }()
    
    static let operator_6: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_PLANE, GDEXTENSION_VARIANT_TYPE_PLANE)!
    }()
    
    static let operator_7: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_PLANE, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)!
    }()
    
    // MARK: - Variant conversion
    static let variantFromSelf: GDExtensionVariantFromTypeConstructorFunc = {
        gi.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PLANE)!
    }()
    
    static let selfFromVariant: GDExtensionTypeFromVariantConstructorFunc = {
        gi.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PLANE)!
    }()
    
    
}

