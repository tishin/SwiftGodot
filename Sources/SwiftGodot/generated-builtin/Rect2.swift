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


/// A 2D axis-aligned bounding box using floating-point coordinates.
/// 
/// The ``Rect2`` built-in ``Variant`` type represents an axis-aligned rectangle in a 2D space. It is defined by its ``position`` and ``size``, which are ``Vector2``. It is frequently used for fast overlap tests (see ``intersects(b:includeBorders:)``). Although ``Rect2`` itself is axis-aligned, it can be combined with ``Transform2D`` to represent a rotated or skewed rectangle.
/// 
/// For integer coordinates, use ``Rect2i``. The 3D equivalent to ``Rect2`` is ``AABB``.
/// 
/// > Note: Negative values for ``size`` are not supported. With negative size, most ``Rect2`` methods do not work correctly. Use ``abs()`` to get an equivalent ``Rect2`` with a non-negative size.
/// 
/// > Note: In a boolean context, a ``Rect2`` evaluates to `false` if both ``position`` and ``size`` are zero (equal to ``Vector2/zero``). Otherwise, it always evaluates to `true`.
/// 
public struct Rect2: _GodotBridgeableBuiltin, Equatable, Hashable {
    /// The origin point. This is usually the top-left corner of the rectangle.
    public var position: Vector2
    /// The rectangle's width and height, starting from ``position``. Setting this value also affects the ``end`` point.
    /// 
    /// > Note: It's recommended setting the width and height to non-negative values, as most methods in Godot assume that the ``position`` is the top-left corner, and the ``end`` is the bottom-right corner. To get an equivalent rectangle with non-negative size, use ``abs()``.
    /// 
    public var size: Vector2
    /// Constructs a ``Rect2`` with its ``position`` and ``size`` set to ``Vector2/zero``.
    public init() {
        self.position = Vector2 ()
        self.size = Vector2 ()
    }
    
    /// Constructs a ``Rect2`` as a copy of the given ``Rect2``.
    public init(from: Rect2) {
        self.position = Vector2 ()
        self.size = Vector2 ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForRect2.constructor1(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs a ``Rect2`` from a ``Rect2i``.
    public init(from: Rect2i) {
        self.position = Vector2 ()
        self.size = Vector2 ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForRect2.constructor2(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs a ``Rect2`` by `position` and `size`.
    public init(position: Vector2, size: Vector2) {
        self.position = position
        self.size = size
    }
    
    /// Constructs a ``Rect2`` by setting its ``position`` to (`x`, `y`), and its ``size`` to (`width`, `height`).
    public init(x: Float, y: Float, width: Float, height: Float) {
        self.position = Vector2 ()
        self.size = Vector2 ()
        let x = Double(x)
        withUnsafePointer(to: x) { pArg0 in
            let y = Double(y)
            withUnsafePointer(to: y) { pArg1 in
                let width = Double(width)
                withUnsafePointer(to: width) { pArg2 in
                    let height = Double(height)
                    withUnsafePointer(to: height) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                GodotInterfaceForRect2.constructor4(&self, pArgs)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
    /* Methods */
    
    /// Returns the center point of the rectangle. This is the same as `position + (size / 2.0)`.
    public func getCenter() -> Vector2 {
        var result: Vector2 = Vector2()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForRect2.method_get_center(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the rectangle's area. This is equivalent to `size.x * size.y`. See also ``hasArea()``.
    public func getArea() -> Double {
        var result: Double = Double()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForRect2.method_get_area(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if this rectangle has positive width and height. See also ``getArea()``.
    public func hasArea() -> Bool {
        var result: Bool = Bool()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForRect2.method_has_area(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if the rectangle contains the given `point`. By convention, points on the right and bottom edges are **not** included.
    /// 
    /// > Note: This method is not reliable for ``Rect2`` with a _negative_ ``size``. Use ``abs()`` first to get a valid rectangle.
    /// 
    public func hasPoint(_ point: Vector2) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForRect2.method_has_point(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if this rectangle and `rect` are approximately equal, by calling ``Vector2/isEqualApprox(to:)`` on the ``position`` and the ``size``.
    public func isEqualApprox(rect: Rect2) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: rect) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForRect2.method_is_equal_approx(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if this rectangle's values are finite, by calling ``Vector2/isFinite()`` on the ``position`` and the ``size``.
    public func isFinite() -> Bool {
        var result: Bool = Bool()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForRect2.method_is_finite(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if this rectangle overlaps with the `b` rectangle. The edges of both rectangles are excluded, unless `includeBorders` is `true`.
    public func intersects(b: Rect2, includeBorders: Bool = false) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: b) { pArg0 in
            withUnsafePointer(to: includeBorders) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForRect2.method_intersects(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if this rectangle _completely_ encloses the `b` rectangle.
    public func encloses(b: Rect2) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: b) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForRect2.method_encloses(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the intersection between this rectangle and `b`. If the rectangles do not intersect, returns an empty ``Rect2``.
    /// 
    /// > Note: If you only need to know whether two rectangles are overlapping, use ``intersects(b:includeBorders:)``, instead.
    /// 
    public func intersection(b: Rect2) -> Rect2 {
        var result: Rect2 = Rect2()
        withUnsafePointer(to: b) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForRect2.method_intersection(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a ``Rect2`` that encloses both this rectangle and `b` around the edges. See also ``encloses(b:)``.
    public func merge(b: Rect2) -> Rect2 {
        var result: Rect2 = Rect2()
        withUnsafePointer(to: b) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForRect2.method_merge(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of this rectangle expanded to align the edges with the given `to` point, if necessary.
    /// 
    public func expand(to: Vector2) -> Rect2 {
        var result: Rect2 = Rect2()
        withUnsafePointer(to: to) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForRect2.method_expand(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the vertex's position of this rect that's the farthest in the given direction. This point is commonly known as the support point in collision detection algorithms.
    public func getSupport(direction: Vector2) -> Vector2 {
        var result: Vector2 = Vector2()
        withUnsafePointer(to: direction) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForRect2.method_get_support(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of this rectangle extended on all sides by the given `amount`. A negative `amount` shrinks the rectangle instead. See also ``growIndividual(left:top:right:bottom:)`` and ``growSide(side:amount:)``.
    /// 
    public func grow(amount: Double) -> Rect2 {
        var result: Rect2 = Rect2()
        let amount = Double(amount)
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForRect2.method_grow(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of this rectangle with its `side` extended by the given `amount` (see ``Side`` constants). A negative `amount` shrinks the rectangle, instead. See also ``grow(amount:)`` and ``growIndividual(left:top:right:bottom:)``.
    public func growSide(_ side: Int64, amount: Double) -> Rect2 {
        var result: Rect2 = Rect2()
        withUnsafePointer(to: side) { pArg0 in
            let amount = Double(amount)
            withUnsafePointer(to: amount) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForRect2.method_grow_side(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of this rectangle with its `left`, `top`, `right`, and `bottom` sides extended by the given amounts. Negative values shrink the sides, instead. See also ``grow(amount:)`` and ``growSide(side:amount:)``.
    public func growIndividual(left: Double, top: Double, right: Double, bottom: Double) -> Rect2 {
        var result: Rect2 = Rect2()
        let left = Double(left)
        withUnsafePointer(to: left) { pArg0 in
            let top = Double(top)
            withUnsafePointer(to: top) { pArg1 in
                let right = Double(right)
                withUnsafePointer(to: right) { pArg2 in
                    let bottom = Double(bottom)
                    withUnsafePointer(to: bottom) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                var mutSelfCopy = self
                                withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                                   GodotInterfaceForRect2.method_grow_individual(ptr, pArgs, &result, 4)
                                }
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a ``Rect2`` equivalent to this rectangle, with its width and height modified to be non-negative values, and with its ``position`` being the top-left corner of the rectangle.
    /// 
    /// > Note: It's recommended to use this method when ``size`` is negative, as most other methods in Godot assume that the ``position`` is the top-left corner, and the ``end`` is the bottom-right corner.
    /// 
    public func abs() -> Rect2 {
        var result: Rect2 = Rect2()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForRect2.method_abs(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if both ``position`` and ``size`` of the rectangles are exactly equal, respectively.
    /// 
    /// > Note: Due to floating-point precision errors, consider using ``isEqualApprox(rect:)`` instead, which is more reliable.
    /// 
    public static func ==(lhs: Rect2, rhs: Rect2) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForRect2.operator_3(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the ``position`` or ``size`` of both rectangles are not equal.
    /// 
    /// > Note: Due to floating-point precision errors, consider using ``isEqualApprox(rect:)`` instead, which is more reliable.
    /// 
    public static func !=(lhs: Rect2, rhs: Rect2) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForRect2.operator_4(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Inversely transforms (multiplies) the ``Rect2`` by the given ``Transform2D`` transformation matrix, under the assumption that the transformation basis is orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).
    /// 
    /// `rect * transform` is equivalent to `transform.inverse() * rect`. See ``Transform2D/inverse()``.
    /// 
    /// For transforming by inverse of an affine transformation (e.g. with scaling) `transform.affine_inverse() * rect` can be used instead. See ``Transform2D/affineInverse()``.
    /// 
    public static func *(lhs: Rect2, rhs: Transform2D) -> Rect2  {
        var result: Rect2 = Rect2()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForRect2.operator_5(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Wrap ``Rect2`` into a ``Variant``
    @inline(__always)
    @inlinable
    public func toVariant() -> Variant {
        Variant(self)
    }
    
    /// Wrap ``Rect2`` into a ``Variant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toVariant() -> Variant? {
        Variant(self)
    }
    
    /// Wrap ``Rect2`` into a ``FastVariant``
    @inline(__always)
    @inlinable
    public func toFastVariant() -> FastVariant {
        FastVariant(self)
    }
    
    /// Wrap ``Rect2`` into a ``FastVariant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toFastVariant() -> FastVariant? {
        FastVariant(self)
    }
    
    /// Extract ``Rect2`` from a ``Variant``. Throws `VariantConversionError` if it's not possible.
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
    
    /// Initialze ``Rect2`` from ``Variant``. Fails if `variant` doesn't contain ``Rect2``
    @inline(__always)                
    public init?(_ variant: Variant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForRect2.selfFromVariant)                        
        }
    }
    
    /// Initialze ``Rect2`` from ``Variant``. Fails if `variant` doesn't contain ``Rect2`` or is `nil`
    @inline(__always)
    @inlinable
    public init?(_ variant: Variant?) {
        guard let variant else { return nil }
        self.init(variant)
    }
    
    /// Initialze ``Rect2`` from ``FastVariant``. Fails if `variant` doesn't contain ``Rect2``
    @inline(__always)                
    public init?(_ variant: borrowing FastVariant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForRect2.selfFromVariant)                        
        }
    }
    
    /// Initialze ``Rect2`` from ``FastVariant``. Fails if `variant` doesn't contain ``Rect2`` or is `nil`
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
    
    /// Internal API. For indicating that Godot `Array` of ``Rect2`` has type `Array[Rect2]`
    @inline(__always)
    @inlinable
    public static var _variantType: Variant.GType {
        .rect2 
    }
    /// The ending point. This is usually the bottom-right corner of the rectangle, and is equivalent to `position + size`. Setting this point affects the ``size``.
    public var end: Vector2 {
        set {
            size = newValue - position
        }
        
        get {
            position + size
        }
        
    }
    
}

public extension Variant {
    /// Initialize ``Variant`` by wrapping ``Rect2?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    convenience init?(_ from: Rect2?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``Variant`` by wrapping ``Rect2``
    @inline(__always)
    convenience init(_ from: Rect2) {
        self.init(payload: from, constructor: GodotInterfaceForRect2.variantFromSelf)
    }
    
}

public extension FastVariant {
    /// Initialize ``FastVariant`` by wrapping ``Rect2?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    init?(_ from: Rect2?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``FastVariant`` by wrapping ``Rect2``
    @inline(__always)
    init(_ from: Rect2) {
        self.init(payload: from, constructor: GodotInterfaceForRect2.variantFromSelf)
    }
    
}

/// Static storage for keeping pointers to Godot implementation wrapped by Rect2
enum GodotInterfaceForRect2 {
    // MARK: - Constructors
    static let constructor0: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RECT2, 0)!
    }()
    
    static let constructor1: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RECT2, 1)!
    }()
    
    static let constructor2: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RECT2, 2)!
    }()
    
    static let constructor3: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RECT2, 3)!
    }()
    
    static let constructor4: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RECT2, 4)!
    }()
    
    // MARK: - Methods
    static let method_get_center: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_center")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, &name.content, 2428350749)!
    }()
    
    static let method_get_area: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_area")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, &name.content, 466405837)!
    }()
    
    static let method_has_area: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("has_area")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, &name.content, 3918633141)!
    }()
    
    static let method_has_point: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("has_point")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, &name.content, 3190634762)!
    }()
    
    static let method_is_equal_approx: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_equal_approx")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, &name.content, 1908192260)!
    }()
    
    static let method_is_finite: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_finite")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, &name.content, 3918633141)!
    }()
    
    static let method_intersects: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("intersects")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, &name.content, 819294880)!
    }()
    
    static let method_encloses: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("encloses")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, &name.content, 1908192260)!
    }()
    
    static let method_intersection: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("intersection")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, &name.content, 2282977743)!
    }()
    
    static let method_merge: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("merge")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, &name.content, 2282977743)!
    }()
    
    static let method_expand: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("expand")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, &name.content, 293272265)!
    }()
    
    static let method_get_support: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_support")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, &name.content, 2026743667)!
    }()
    
    static let method_grow: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("grow")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, &name.content, 39664498)!
    }()
    
    static let method_grow_side: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("grow_side")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, &name.content, 4177736158)!
    }()
    
    static let method_grow_individual: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("grow_individual")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, &name.content, 3203390369)!
    }()
    
    static let method_abs: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("abs")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, &name.content, 3107653634)!
    }()
    
    // MARK: - Operators
    static let operator_3: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_RECT2, GDEXTENSION_VARIANT_TYPE_RECT2)!
    }()
    
    static let operator_4: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_RECT2, GDEXTENSION_VARIANT_TYPE_RECT2)!
    }()
    
    static let operator_5: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_RECT2, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)!
    }()
    
    // MARK: - Variant conversion
    static let variantFromSelf: GDExtensionVariantFromTypeConstructorFunc = {
        gi.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_RECT2)!
    }()
    
    static let selfFromVariant: GDExtensionTypeFromVariantConstructorFunc = {
        gi.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_RECT2)!
    }()
    
    
}

