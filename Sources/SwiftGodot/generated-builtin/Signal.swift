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


/// A built-in type representing a signal of an ``Object``.
/// 
/// ``Signal`` is a built-in ``Variant`` type that represents a signal of an ``Object`` instance. Like all ``Variant`` types, it can be stored in variables and passed to functions. Signals allow all connected ``Callable``s (and by extension their respective objects) to listen and react to events, without directly referencing one another. This keeps the code flexible and easier to manage. You can check whether an ``Object`` has a given signal name using ``Object/hasSignal(_:)``.
/// 
/// In GDScript, signals can be declared with the `signal` keyword. In C#, you may use the ```Signal``` attribute on a delegate.
/// 
public final class Signal: _GodotBridgeableBuiltin, Equatable {
    deinit {
        if content != Signal.zero {
            GodotInterfaceForSignal.destructor(&content)
        }
        
    }
    
    // Contains a binary blob where this type information is stored
    public var content: ContentType = Signal.zero
    
    // Used to initialize empty types
    public static var zero: ContentType { (0, 0) }
    // Convenience type that matches the build configuration storage needs
    public typealias ContentType = (Int64, Int64)
    // Used to construct objects on virtual proxies
    public required init(content proxyContent: ContentType) {
        withUnsafePointer(to: proxyContent) { pContent in
            withUnsafePointer(to: pContent) { pArgs in
                GodotInterfaceForSignal.constructor1(&content, pArgs)
            }
        }
    }
    /// Initialize with existing `ContentType` assuming this ``Signal`` owns it since now.
    init(takingOver content: ContentType) {
        self.content = content
    }
    
    /// Constructs an empty ``Signal`` with no object nor signal name bound.
    public required init() {
        GodotInterfaceForSignal.constructor0(&content, nil)
    }
    
    /// Constructs a ``Signal`` as a copy of the given ``Signal``.
    public init(from: Signal) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForSignal.constructor1(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Creates a ``Signal`` object referencing a signal named `signal` in the specified `object`.
    public init(object: Object, signal: StringName) {
        withUnsafePointer(to: object.handle) { pArg0 in
            withUnsafePointer(to: signal.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForSignal.constructor2(&content, pArgs)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
    /* Methods */
    
    /// Returns `true` if this ``Signal`` has no object and the signal name is empty. Equivalent to `signal == Signal()`.
    public final func isNull() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForSignal.method_is_null(&content, nil, &result, 0)
        return result
    }
    
    /// Returns the ID of the object emitting this signal (see ``Object/getInstanceId()``).
    public final func getObjectId() -> Int64 {
        var result: Int64 = Int64()
        GodotInterfaceForSignal.method_get_object_id(&content, nil, &result, 0)
        return result
    }
    
    /// Returns the name of this signal.
    public final func getName() -> StringName {
        let result: StringName = StringName()
        GodotInterfaceForSignal.method_get_name(&content, nil, &result.content, 0)
        return result
    }
    
    /// Connects this signal to the specified `callable`. Optional `flags` can be also added to configure the connection's behavior (see ``Object.ConnectFlags`` constants). You can provide additional arguments to the connected `callable` by using ``Callable/bind()``.
    /// 
    /// A signal can only be connected once to the same ``Callable``. If the signal is already connected, returns ``GodotError/errInvalidParameter`` and pushes an error message, unless the signal is connected with ``Object/ConnectFlags/referenceCounted``. To prevent this, use ``isConnected(callable:)`` first to check for existing connections.
    /// 
    public final func connect(callable: Callable, flags: Int64 = 0) -> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer(to: callable.content) { pArg0 in
            withUnsafePointer(to: flags) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForSignal.method_connect(&content, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Disconnects this signal from the specified ``Callable``. If the connection does not exist, generates an error. Use ``isConnected(callable:)`` to make sure that the connection exists.
    public final func disconnect(callable: Callable) {
        withUnsafePointer(to: callable.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForSignal.method_disconnect(&content, pArgs, nil, 1)
                }
                
            }
            
        }
        
    }
    
    /// Returns `true` if the specified ``Callable`` is connected to this signal.
    public final func isConnected(callable: Callable) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: callable.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForSignal.method_is_connected(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns an ``VariantArray`` of connections for this signal. Each connection is represented as a ``VariantDictionary`` that contains three entries:
    /// 
    /// - `signal` is a reference to this signal;
    /// 
    /// - `callable` is a reference to the connected ``Callable``;
    /// 
    /// - `flags` is a combination of ``Object.ConnectFlags``.
    /// 
    public final func getConnections() -> VariantArray {
        let result: VariantArray = VariantArray()
        GodotInterfaceForSignal.method_get_connections(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns `true` if any ``Callable`` is connected to this signal.
    public final func hasConnections() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForSignal.method_has_connections(&content, nil, &result, 0)
        return result
    }
    
    /// Emits this signal. All ``Callable``s connected to this signal will be triggered. This method supports a variable number of arguments, so parameters can be passed as a comma separated list.
    public final func emit(_ arguments: Variant?...) {
        if arguments.isEmpty {
            GodotInterfaceForSignal.method_emit(&content, nil, nil, 0) // no arguments
        } else {
            // A temporary allocation containing pointers to `Variant.ContentType` of marshaled arguments
            withUnsafeTemporaryAllocation(of: UnsafeRawPointer?.self, capacity: arguments.count) { pArgsBuffer in
                // We use entire buffer so can initialize every element in the end. It's not
                // necessary for UnsafeRawPointer and other POD types (which Variant.ContentType also is)
                // but we'll do it for the sake of correctness
                defer { pArgsBuffer.deinitialize() }
                guard let pArgs = pArgsBuffer.baseAddress else {
                    fatalError("pargsBuffer.baseAddress is nil")
                }
                // A temporary allocation containing `Variant.ContentType` of marshaled arguments
                withUnsafeTemporaryAllocation(of: Variant.ContentType.self, capacity: arguments.count) { contentsBuffer in
                    defer { contentsBuffer.deinitialize() }
                    guard let contentsPtr = contentsBuffer.baseAddress else {
                        fatalError("contentsBuffer.baseAddress is nil")
                    }
        
                    for i in 0..<arguments.count {
                        // Copy `content`s of the variadic `Variant`s into `contentBuffer`
                        contentsBuffer.initializeElement(at: i, to: arguments[i].content)
                        // Initialize `pArgs` elements following mandatory arguments to point at respective contents of `contentsBuffer`
                        pArgsBuffer.initializeElement(at: i, to: contentsPtr + i)
                    }
        
                    GodotInterfaceForSignal.method_emit(&content, pArgs, nil, Int32(arguments.count))
                }
            }
        }
    }
    
    /// Returns `true` if both signals share the same object and name.
    public static func ==(lhs: Signal, rhs: Signal) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForSignal.operator_3(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the signals do not share the same object and name.
    public static func !=(lhs: Signal, rhs: Signal) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForSignal.operator_4(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Wrap ``Signal`` into a ``Variant``
    @inline(__always)
    @inlinable
    public func toVariant() -> Variant {
        Variant(self)
    }
    
    /// Wrap ``Signal`` into a ``Variant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toVariant() -> Variant? {
        Variant(self)
    }
    
    /// Wrap ``Signal`` into a ``FastVariant``
    @inline(__always)
    @inlinable
    public func toFastVariant() -> FastVariant {
        FastVariant(self)
    }
    
    /// Wrap ``Signal`` into a ``FastVariant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toFastVariant() -> FastVariant? {
        FastVariant(self)
    }
    
    /// Extract ``Signal`` from a ``Variant``. Throws `VariantConversionError` if it's not possible.
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
    
    /// Initialze ``Signal`` from ``Variant``. Fails if `variant` doesn't contain ``Signal``
    @inline(__always)                                
    public convenience init?(_ variant: Variant) {
        guard Self._variantType == variant.gtype else { return nil }
        var content = Signal.zero
        withUnsafeMutablePointer(to: &content) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForSignal.selfFromVariant)                        
        }
        self.init(takingOver: content)
    }
    
    /// Initialze ``Signal`` from ``Variant``. Fails if `variant` doesn't contain ``Signal`` or is `nil`
    @inline(__always)
    @inlinable
    public convenience init?(_ variant: Variant?) {
        guard let variant else { return nil }
        self.init(variant)
    }
    
    /// Initialze ``Signal`` from ``FastVariant``. Fails if `variant` doesn't contain ``Signal``
    @inline(__always)                                
    public convenience init?(_ variant: borrowing FastVariant) {
        guard Self._variantType == variant.gtype else { return nil }
        var content = Signal.zero
        withUnsafeMutablePointer(to: &content) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForSignal.selfFromVariant)                        
        }
        self.init(takingOver: content)
    }
    
    /// Initialze ``Signal`` from ``FastVariant``. Fails if `variant` doesn't contain ``Signal`` or is `nil`
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
    /// Internal API. For indicating that Godot `Array` of ``Signal`` has type `Array[Signal]`
    @inline(__always)
    @inlinable
    public static var _variantType: Variant.GType {
        .signal 
    }
}

public extension Variant {
    /// Initialize ``Variant`` by wrapping ``Signal?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    convenience init?(_ from: Signal?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``Variant`` by wrapping ``Signal``
    @inline(__always)
    convenience init(_ from: Signal) {
        self.init(payload: from.content, constructor: GodotInterfaceForSignal.variantFromSelf)
    }
    
}

public extension FastVariant {
    /// Initialize ``FastVariant`` by wrapping ``Signal?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    init?(_ from: Signal?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``FastVariant`` by wrapping ``Signal``
    @inline(__always)
    init(_ from: Signal) {
        self.init(payload: from.content, constructor: GodotInterfaceForSignal.variantFromSelf)
    }
    
}

/// Static storage for keeping pointers to Godot implementation wrapped by Signal
enum GodotInterfaceForSignal {
    // MARK: - Destructor
    static let destructor: GDExtensionPtrDestructor = {
        return gi.variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_SIGNAL)!
    }()
    
    // MARK: - Constructors
    static let constructor0: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_SIGNAL, 0)!
    }()
    
    static let constructor1: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_SIGNAL, 1)!
    }()
    
    static let constructor2: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_SIGNAL, 2)!
    }()
    
    // MARK: - Methods
    static let method_is_null: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_null")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_SIGNAL, &name.content, 3918633141)!
    }()
    
    static let method_get_object_id: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_object_id")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_SIGNAL, &name.content, 3173160232)!
    }()
    
    static let method_get_name: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_name")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_SIGNAL, &name.content, 1825232092)!
    }()
    
    static let method_connect: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("connect")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_SIGNAL, &name.content, 979702392)!
    }()
    
    static let method_disconnect: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("disconnect")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_SIGNAL, &name.content, 3470848906)!
    }()
    
    static let method_is_connected: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_connected")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_SIGNAL, &name.content, 4129521963)!
    }()
    
    static let method_get_connections: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_connections")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_SIGNAL, &name.content, 4144163970)!
    }()
    
    static let method_has_connections: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("has_connections")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_SIGNAL, &name.content, 3918633141)!
    }()
    
    static let method_emit: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("emit")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_SIGNAL, &name.content, 3286317445)!
    }()
    
    // MARK: - Operators
    static let operator_3: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_SIGNAL, GDEXTENSION_VARIANT_TYPE_SIGNAL)!
    }()
    
    static let operator_4: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_SIGNAL, GDEXTENSION_VARIANT_TYPE_SIGNAL)!
    }()
    
    // MARK: - Variant conversion
    static let variantFromSelf: GDExtensionVariantFromTypeConstructorFunc = {
        gi.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_SIGNAL)!
    }()
    
    static let selfFromVariant: GDExtensionTypeFromVariantConstructorFunc = {
        gi.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_SIGNAL)!
    }()
    
    
}

