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


/// A handle for a ``Resource``'s unique identifier.
/// 
/// The RID ``Variant`` type is used to access a low-level resource by its unique ID. RIDs are opaque, which means they do not grant access to the resource by themselves. They are used by the low-level server classes, such as ``DisplayServer``, ``RenderingServer``, ``TextServer``, etc.
/// 
/// A low-level resource may correspond to a high-level ``Resource``, such as ``Texture`` or ``Mesh``.
/// 
/// > Note: RIDs are only useful during the current session. It won't correspond to a similar resource if sent over a network, or loaded from a file at a later time.
/// 
public final class RID: _GodotBridgeableBuiltin, Equatable {
    // Contains a binary blob where this type information is stored
    public var content: ContentType = RID.zero
    
    // Used to initialize empty types
    public static var zero: ContentType { 0 }
    // Convenience type that matches the build configuration storage needs
    public typealias ContentType = Int64
    // Used to construct objects on virtual proxies
    public required init(content proxyContent: ContentType) {
        withUnsafePointer(to: proxyContent) { pContent in
            withUnsafePointer(to: pContent) { pArgs in
                GodotInterfaceForRID.constructor1(&content, pArgs)
            }
        }
    }
    /// Initialize with existing `ContentType` assuming this ``RID`` owns it since now.
    init(takingOver content: ContentType) {
        self.content = content
    }
    
    /// Constructs an empty ``RID`` with the invalid ID `0`.
    public required init() {
        GodotInterfaceForRID.constructor0(&content, nil)
    }
    
    /// Constructs a ``RID`` as a copy of the given ``RID``.
    public init(from: RID) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForRID.constructor1(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    
    /* Methods */
    
    /// Returns `true` if the ``RID`` is not `0`.
    public final func isValid() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForRID.method_is_valid(&content, nil, &result, 0)
        return result
    }
    
    /// Returns the ID of the referenced low-level resource.
    public final func getId() -> Int64 {
        var result: Int64 = Int64()
        GodotInterfaceForRID.method_get_id(&content, nil, &result, 0)
        return result
    }
    
    /// Returns `true` if both ``RID``s are equal, which means they both refer to the same low-level resource.
    public static func ==(lhs: RID, rhs: RID) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForRID.operator_3(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the ``RID``s are not equal.
    public static func !=(lhs: RID, rhs: RID) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForRID.operator_4(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the ``RID``'s ID is less than `right`'s ID.
    public static func <(lhs: RID, rhs: RID) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForRID.operator_5(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the ``RID``'s ID is less than or equal to `right`'s ID.
    public static func <=(lhs: RID, rhs: RID) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForRID.operator_6(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the ``RID``'s ID is greater than `right`'s ID.
    public static func >(lhs: RID, rhs: RID) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForRID.operator_7(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the ``RID``'s ID is greater than or equal to `right`'s ID.
    public static func >=(lhs: RID, rhs: RID) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForRID.operator_8(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Wrap ``RID`` into a ``Variant``
    @inline(__always)
    @inlinable
    public func toVariant() -> Variant {
        Variant(self)
    }
    
    /// Wrap ``RID`` into a ``Variant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toVariant() -> Variant? {
        Variant(self)
    }
    
    /// Wrap ``RID`` into a ``FastVariant``
    @inline(__always)
    @inlinable
    public func toFastVariant() -> FastVariant {
        FastVariant(self)
    }
    
    /// Wrap ``RID`` into a ``FastVariant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toFastVariant() -> FastVariant? {
        FastVariant(self)
    }
    
    /// Extract ``RID`` from a ``Variant``. Throws `VariantConversionError` if it's not possible.
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
    
    /// Initialze ``RID`` from ``Variant``. Fails if `variant` doesn't contain ``RID``
    @inline(__always)                                
    public convenience init?(_ variant: Variant) {
        guard Self._variantType == variant.gtype else { return nil }
        var content = RID.zero
        withUnsafeMutablePointer(to: &content) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForRID.selfFromVariant)                        
        }
        self.init(takingOver: content)
    }
    
    /// Initialze ``RID`` from ``Variant``. Fails if `variant` doesn't contain ``RID`` or is `nil`
    @inline(__always)
    @inlinable
    public convenience init?(_ variant: Variant?) {
        guard let variant else { return nil }
        self.init(variant)
    }
    
    /// Initialze ``RID`` from ``FastVariant``. Fails if `variant` doesn't contain ``RID``
    @inline(__always)                                
    public convenience init?(_ variant: borrowing FastVariant) {
        guard Self._variantType == variant.gtype else { return nil }
        var content = RID.zero
        withUnsafeMutablePointer(to: &content) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForRID.selfFromVariant)                        
        }
        self.init(takingOver: content)
    }
    
    /// Initialze ``RID`` from ``FastVariant``. Fails if `variant` doesn't contain ``RID`` or is `nil`
    @inline(__always)
    @inlinable
    public convenience init?(_ variant: borrowing FastVariant?) {                    
        switch variant {
        case .some(let variant):
            self.init(variant)
        case .none:
            return nil
        }
    }
    /// Internal API. For indicating that Godot `Array` of ``RID`` has type `Array[RID]`
    @inline(__always)
    @inlinable
    public static var _variantType: Variant.GType {
        .rid 
    }
}

public extension Variant {
    /// Initialize ``Variant`` by wrapping ``RID?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    convenience init?(_ from: RID?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``Variant`` by wrapping ``RID``
    @inline(__always)
    convenience init(_ from: RID) {
        self.init(payload: from.content, constructor: GodotInterfaceForRID.variantFromSelf)
    }
    
}

public extension FastVariant {
    /// Initialize ``FastVariant`` by wrapping ``RID?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    init?(_ from: RID?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``FastVariant`` by wrapping ``RID``
    @inline(__always)
    init(_ from: RID) {
        self.init(payload: from.content, constructor: GodotInterfaceForRID.variantFromSelf)
    }
    
}

/// Static storage for keeping pointers to Godot implementation wrapped by RID
enum GodotInterfaceForRID {
    // MARK: - Constructors
    static let constructor0: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RID, 0)!
    }()
    
    static let constructor1: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RID, 1)!
    }()
    
    // MARK: - Methods
    static let method_is_valid: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_valid")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RID, &name.content, 3918633141)!
    }()
    
    static let method_get_id: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_id")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RID, &name.content, 3173160232)!
    }()
    
    // MARK: - Operators
    static let operator_3: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
    }()
    
    static let operator_4: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
    }()
    
    static let operator_5: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
    }()
    
    static let operator_6: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
    }()
    
    static let operator_7: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
    }()
    
    static let operator_8: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
    }()
    
    // MARK: - Variant conversion
    static let variantFromSelf: GDExtensionVariantFromTypeConstructorFunc = {
        gi.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_RID)!
    }()
    
    static let selfFromVariant: GDExtensionTypeFromVariantConstructorFunc = {
        gi.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_RID)!
    }()
    
    
}

