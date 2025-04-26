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


/// A 2D axis-aligned bounding box using integer coordinates.
/// 
/// The ``Rect2i`` built-in ``Variant`` type represents an axis-aligned rectangle in a 2D space, using integer coordinates. It is defined by its ``position`` and ``size``, which are ``Vector2i``. Because it does not rotate, it is frequently used for fast overlap tests (see ``intersects(b:)``).
/// 
/// For floating-point coordinates, see ``Rect2``.
/// 
/// > Note: Negative values for ``size`` are not supported. With negative size, most ``Rect2i`` methods do not work correctly. Use ``abs()`` to get an equivalent ``Rect2i`` with a non-negative size.
/// 
/// > Note: In a boolean context, a ``Rect2i`` evaluates to `false` if both ``position`` and ``size`` are zero (equal to ``Vector2i/zero``). Otherwise, it always evaluates to `true`.
/// 
public struct Rect2i: _GodotBridgeableBuiltin, Equatable, Hashable {
    /// The origin point. This is usually the top-left corner of the rectangle.
    public var position: Vector2i
    /// The rectangle's width and height, starting from ``position``. Setting this value also affects the ``end`` point.
    /// 
    /// > Note: It's recommended setting the width and height to non-negative values, as most methods in Godot assume that the ``position`` is the top-left corner, and the ``end`` is the bottom-right corner. To get an equivalent rectangle with non-negative size, use ``abs()``.
    /// 
    public var size: Vector2i
    /// Constructs a ``Rect2i`` with its ``position`` and ``size`` set to ``Vector2i/zero``.
    public init() {
        self.position = Vector2i ()
        self.size = Vector2i ()
    }
    
    /// Constructs a ``Rect2i`` as a copy of the given ``Rect2i``.
    public init(from: Rect2i) {
        self.position = Vector2i ()
        self.size = Vector2i ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForRect2i.constructor1(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs a ``Rect2i`` from a ``Rect2``. The floating-point coordinates are truncated.
    public init(from: Rect2) {
        self.position = Vector2i ()
        self.size = Vector2i ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForRect2i.constructor2(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs a ``Rect2i`` by `position` and `size`.
    public init(position: Vector2i, size: Vector2i) {
        self.position = position
        self.size = size
    }
    
    /// Constructs a ``Rect2i`` by setting its ``position`` to (`x`, `y`), and its ``size`` to (`width`, `height`).
    public init(x: Int32, y: Int32, width: Int32, height: Int32) {
        self.position = Vector2i ()
        self.size = Vector2i ()
        withUnsafePointer(to: x) { pArg0 in
            withUnsafePointer(to: y) { pArg1 in
                withUnsafePointer(to: width) { pArg2 in
                    withUnsafePointer(to: height) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                GodotInterfaceForRect2i.constructor4(&self, pArgs)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
    /* Methods */
    
    /// Returns the center point of the rectangle. This is the same as `position + (size / 2)`.
    /// 
    /// > Note: If the ``size`` is odd, the result will be rounded towards ``position``.
    /// 
    public func getCenter() -> Vector2i {
        var result: Vector2i = Vector2i()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForRect2i.method_get_center(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the rectangle's area. This is equivalent to `size.x * size.y`. See also ``hasArea()``.
    public func getArea() -> Int64 {
        var result: Int64 = Int64()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForRect2i.method_get_area(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if this rectangle has positive width and height. See also ``getArea()``.
    public func hasArea() -> Bool {
        var result: Bool = Bool()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForRect2i.method_has_area(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if the rectangle contains the given `point`. By convention, points on the right and bottom edges are **not** included.
    /// 
    /// > Note: This method is not reliable for ``Rect2i`` with a _negative_ ``size``. Use ``abs()`` first to get a valid rectangle.
    /// 
    public func hasPoint(_ point: Vector2i) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForRect2i.method_has_point(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if this rectangle overlaps with the `b` rectangle. The edges of both rectangles are excluded.
    public func intersects(b: Rect2i) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: b) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForRect2i.method_intersects(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if this ``Rect2i`` completely encloses another one.
    public func encloses(b: Rect2i) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: b) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForRect2i.method_encloses(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the intersection between this rectangle and `b`. If the rectangles do not intersect, returns an empty ``Rect2i``.
    /// 
    /// > Note: If you only need to know whether two rectangles are overlapping, use ``intersects(b:)``, instead.
    /// 
    public func intersection(b: Rect2i) -> Rect2i {
        var result: Rect2i = Rect2i()
        withUnsafePointer(to: b) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForRect2i.method_intersection(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a ``Rect2i`` that encloses both this rectangle and `b` around the edges. See also ``encloses(b:)``.
    public func merge(b: Rect2i) -> Rect2i {
        var result: Rect2i = Rect2i()
        withUnsafePointer(to: b) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForRect2i.method_merge(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of this rectangle expanded to align the edges with the given `to` point, if necessary.
    /// 
    public func expand(to: Vector2i) -> Rect2i {
        var result: Rect2i = Rect2i()
        withUnsafePointer(to: to) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForRect2i.method_expand(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of this rectangle extended on all sides by the given `amount`. A negative `amount` shrinks the rectangle instead. See also ``growIndividual(left:top:right:bottom:)`` and ``growSide(side:amount:)``.
    /// 
    public func grow(amount: Int64) -> Rect2i {
        var result: Rect2i = Rect2i()
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForRect2i.method_grow(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of this rectangle with its `side` extended by the given `amount` (see ``Side`` constants). A negative `amount` shrinks the rectangle, instead. See also ``grow(amount:)`` and ``growIndividual(left:top:right:bottom:)``.
    public func growSide(_ side: Int64, amount: Int64) -> Rect2i {
        var result: Rect2i = Rect2i()
        withUnsafePointer(to: side) { pArg0 in
            withUnsafePointer(to: amount) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForRect2i.method_grow_side(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of this rectangle with its `left`, `top`, `right`, and `bottom` sides extended by the given amounts. Negative values shrink the sides, instead. See also ``grow(amount:)`` and ``growSide(side:amount:)``.
    public func growIndividual(left: Int64, top: Int64, right: Int64, bottom: Int64) -> Rect2i {
        var result: Rect2i = Rect2i()
        withUnsafePointer(to: left) { pArg0 in
            withUnsafePointer(to: top) { pArg1 in
                withUnsafePointer(to: right) { pArg2 in
                    withUnsafePointer(to: bottom) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                var mutSelfCopy = self
                                withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                                   GodotInterfaceForRect2i.method_grow_individual(ptr, pArgs, &result, 4)
                                }
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a ``Rect2i`` equivalent to this rectangle, with its width and height modified to be non-negative values, and with its ``position`` being the top-left corner of the rectangle.
    /// 
    /// > Note: It's recommended to use this method when ``size`` is negative, as most other methods in Godot assume that the ``position`` is the top-left corner, and the ``end`` is the bottom-right corner.
    /// 
    public func abs() -> Rect2i {
        var result: Rect2i = Rect2i()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForRect2i.method_abs(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if both ``position`` and ``size`` of the rectangles are equal, respectively.
    public static func ==(lhs: Rect2i, rhs: Rect2i) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForRect2i.operator_3(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the ``position`` or ``size`` of both rectangles are not equal.
    public static func !=(lhs: Rect2i, rhs: Rect2i) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForRect2i.operator_4(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Wrap ``Rect2i`` into a ``Variant``
    @inline(__always)
    @inlinable
    public func toVariant() -> Variant {
        Variant(self)
    }
    
    /// Wrap ``Rect2i`` into a ``Variant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toVariant() -> Variant? {
        Variant(self)
    }
    
    /// Wrap ``Rect2i`` into a ``FastVariant``
    @inline(__always)
    @inlinable
    public func toFastVariant() -> FastVariant {
        FastVariant(self)
    }
    
    /// Wrap ``Rect2i`` into a ``FastVariant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toFastVariant() -> FastVariant? {
        FastVariant(self)
    }
    
    /// Extract ``Rect2i`` from a ``Variant``. Throws `VariantConversionError` if it's not possible.
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
    
    /// Initialze ``Rect2i`` from ``Variant``. Fails if `variant` doesn't contain ``Rect2i``
    @inline(__always)                
    public init?(_ variant: Variant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForRect2i.selfFromVariant)                        
        }
    }
    
    /// Initialze ``Rect2i`` from ``Variant``. Fails if `variant` doesn't contain ``Rect2i`` or is `nil`
    @inline(__always)
    @inlinable
    public init?(_ variant: Variant?) {
        guard let variant else { return nil }
        self.init(variant)
    }
    
    /// Initialze ``Rect2i`` from ``FastVariant``. Fails if `variant` doesn't contain ``Rect2i``
    @inline(__always)                
    public init?(_ variant: borrowing FastVariant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForRect2i.selfFromVariant)                        
        }
    }
    
    /// Initialze ``Rect2i`` from ``FastVariant``. Fails if `variant` doesn't contain ``Rect2i`` or is `nil`
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
    
    /// Internal API. For indicating that Godot `Array` of ``Rect2i`` has type `Array[Rect2i]`
    @inline(__always)
    @inlinable
    public static var _variantType: Variant.GType {
        .rect2i 
    }
    /// The ending point. This is usually the bottom-right corner of the rectangle, and is equivalent to `position + size`. Setting this point affects the ``size``.
    public var end: Vector2i {
        set {
            size = newValue - position
        }
        
        get {
            position + size
        }
        
    }
    
}

public extension Variant {
    /// Initialize ``Variant`` by wrapping ``Rect2i?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    convenience init?(_ from: Rect2i?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``Variant`` by wrapping ``Rect2i``
    @inline(__always)
    convenience init(_ from: Rect2i) {
        self.init(payload: from, constructor: GodotInterfaceForRect2i.variantFromSelf)
    }
    
}

public extension FastVariant {
    /// Initialize ``FastVariant`` by wrapping ``Rect2i?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    init?(_ from: Rect2i?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``FastVariant`` by wrapping ``Rect2i``
    @inline(__always)
    init(_ from: Rect2i) {
        self.init(payload: from, constructor: GodotInterfaceForRect2i.variantFromSelf)
    }
    
}

/// Static storage for keeping pointers to Godot implementation wrapped by Rect2i
enum GodotInterfaceForRect2i {
    // MARK: - Constructors
    static let constructor0: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RECT2I, 0)!
    }()
    
    static let constructor1: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RECT2I, 1)!
    }()
    
    static let constructor2: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RECT2I, 2)!
    }()
    
    static let constructor3: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RECT2I, 3)!
    }()
    
    static let constructor4: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RECT2I, 4)!
    }()
    
    // MARK: - Methods
    static let method_get_center: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_center")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, &name.content, 3444277866)!
    }()
    
    static let method_get_area: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_area")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, &name.content, 3173160232)!
    }()
    
    static let method_has_area: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("has_area")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, &name.content, 3918633141)!
    }()
    
    static let method_has_point: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("has_point")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, &name.content, 328189994)!
    }()
    
    static let method_intersects: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("intersects")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, &name.content, 3434691493)!
    }()
    
    static let method_encloses: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("encloses")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, &name.content, 3434691493)!
    }()
    
    static let method_intersection: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("intersection")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, &name.content, 717431873)!
    }()
    
    static let method_merge: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("merge")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, &name.content, 717431873)!
    }()
    
    static let method_expand: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("expand")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, &name.content, 1355196872)!
    }()
    
    static let method_grow: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("grow")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, &name.content, 1578070074)!
    }()
    
    static let method_grow_side: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("grow_side")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, &name.content, 3191154199)!
    }()
    
    static let method_grow_individual: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("grow_individual")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, &name.content, 1893743416)!
    }()
    
    static let method_abs: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("abs")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, &name.content, 1469025700)!
    }()
    
    // MARK: - Operators
    static let operator_3: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_RECT2I, GDEXTENSION_VARIANT_TYPE_RECT2I)!
    }()
    
    static let operator_4: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_RECT2I, GDEXTENSION_VARIANT_TYPE_RECT2I)!
    }()
    
    // MARK: - Variant conversion
    static let variantFromSelf: GDExtensionVariantFromTypeConstructorFunc = {
        gi.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_RECT2I)!
    }()
    
    static let selfFromVariant: GDExtensionTypeFromVariantConstructorFunc = {
        gi.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_RECT2I)!
    }()
    
    
}

