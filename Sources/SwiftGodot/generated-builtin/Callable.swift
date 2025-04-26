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


/// A built-in type representing a method or a standalone function.
/// 
/// ``Callable`` is a built-in ``Variant`` type that represents a function. It can either be a method within an ``Object`` instance, or a custom callable used for different purposes (see ``isCustom()``). Like all ``Variant`` types, it can be stored in variables and passed to other functions. It is most commonly used for signal callbacks.
/// 
/// In GDScript, it's possible to create lambda functions within a method. Lambda functions are custom callables that are not associated with an ``Object`` instance. Optionally, lambda functions can also be named. The name will be displayed in the debugger, or when calling ``getMethod()``.
/// 
/// In GDScript, you can access methods and global functions as ``Callable``s:
/// 
/// > Note: ``VariantDictionary`` does not support the above due to ambiguity with keys.
/// 
public final class Callable: _GodotBridgeableBuiltin, Equatable, Hashable {
    /// Creates a Callable instance from a Swift function
    /// - Parameter callback: the swift function that receives `Arguments`, and returns a `Variant`
    public init(_ callback: @escaping (borrowing Arguments) -> Variant?) {
        content = CallableWrapper.callableVariantContent(wrapping: callback)
    }
    
    deinit {
        if content != Callable.zero {
            GodotInterfaceForCallable.destructor(&content)
        }
        
    }
    
    // Contains a binary blob where this type information is stored
    public var content: ContentType = Callable.zero
    
    // Used to initialize empty types
    public static var zero: ContentType { (0, 0) }
    // Convenience type that matches the build configuration storage needs
    public typealias ContentType = (Int64, Int64)
    // Used to construct objects on virtual proxies
    public required init(content proxyContent: ContentType) {
        withUnsafePointer(to: proxyContent) { pContent in
            withUnsafePointer(to: pContent) { pArgs in
                GodotInterfaceForCallable.constructor1(&content, pArgs)
            }
        }
    }
    /// Initialize with existing `ContentType` assuming this ``Callable`` owns it since now.
    init(takingOver content: ContentType) {
        self.content = content
    }
    
    /// Constructs an empty ``Callable``, with no object nor method bound.
    public required init() {
        GodotInterfaceForCallable.constructor0(&content, nil)
    }
    
    /// Constructs a ``Callable`` as a copy of the given ``Callable``.
    public init(from: Callable) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForCallable.constructor1(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Creates a new ``Callable`` for the method named `method` in the specified `object`.
    /// 
    /// > Note: For methods of built-in ``Variant`` types, use ``create(variant:method:)`` instead.
    /// 
    public init(object: Object, method: StringName) {
        withUnsafePointer(to: object.handle) { pArg0 in
            withUnsafePointer(to: method.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForCallable.constructor2(&content, pArgs)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
    /* Methods */
    
    /// Creates a new ``Callable`` for the method named `method` in the specified `variant`. To represent a method of a built-in ``Variant`` type, a custom callable is used (see ``isCustom()``). If `variant` is ``Object``, then a standard callable will be created instead.
    /// 
    /// > Note: This method is always necessary for the ``VariantDictionary`` type, as property syntax is used to access its entries. You may also use this method when `variant`'s type is not known in advance (for polymorphism).
    /// 
    public static func create(variant: Variant?, method: StringName) -> Callable {
        let result: Callable = Callable()
        withUnsafePointer(to: variant.content) { pArg0 in
            withUnsafePointer(to: method.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForCallable.method_create(nil, pArgs, &result.content, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Calls the method represented by this ``Callable``. Unlike ``call()``, this method expects all arguments to be contained inside the `arguments` ``VariantArray``.
    public final func callv(arguments: VariantArray) -> Variant? {
        var result = Variant.zero
        withUnsafePointer(to: arguments.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForCallable.method_callv(&content, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return Variant(takingOver: result)
    }
    
    /// Returns `true` if this ``Callable`` has no target to call the method on. Equivalent to `callable == Callable()`.
    /// 
    /// > Note: This is _not_ the same as `not is_valid()` and using `not is_null()` will _not_ guarantee that this callable can be called. Use ``isValid()`` instead.
    /// 
    public final func isNull() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForCallable.method_is_null(&content, nil, &result, 0)
        return result
    }
    
    /// Returns `true` if this ``Callable`` is a custom callable. Custom callables are used:
    /// 
    /// - for binding/unbinding arguments (see ``bind()`` and ``unbind(argcount:)``);
    /// 
    /// - for representing methods of built-in ``Variant`` types (see ``create(variant:method:)``);
    /// 
    /// - for representing global, lambda, and RPC functions in GDScript;
    /// 
    /// - for other purposes in the core, GDExtension, and C#.
    /// 
    public final func isCustom() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForCallable.method_is_custom(&content, nil, &result, 0)
        return result
    }
    
    /// Returns `true` if this ``Callable`` is a standard callable. This method is the opposite of ``isCustom()``. Returns `false` if this callable is a lambda function.
    public final func isStandard() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForCallable.method_is_standard(&content, nil, &result, 0)
        return result
    }
    
    /// Returns `true` if the callable's object exists and has a valid method name assigned, or is a custom callable.
    public final func isValid() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForCallable.method_is_valid(&content, nil, &result, 0)
        return result
    }
    
    /// Returns the ID of this ``Callable``'s object (see ``Object/getInstanceId()``).
    public final func getObjectId() -> Int64 {
        var result: Int64 = Int64()
        GodotInterfaceForCallable.method_get_object_id(&content, nil, &result, 0)
        return result
    }
    
    /// Returns the name of the method represented by this ``Callable``. If the callable is a GDScript lambda function, returns the function's name or `"<anonymous lambda>"`.
    public final func getMethod() -> StringName {
        let result: StringName = StringName()
        GodotInterfaceForCallable.method_get_method(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns the total number of arguments this ``Callable`` should take, including optional arguments. This means that any arguments bound with ``bind()`` are _subtracted_ from the result, and any arguments unbound with ``unbind(argcount:)`` are _added_ to the result.
    public final func getArgumentCount() -> Int64 {
        var result: Int64 = Int64()
        GodotInterfaceForCallable.method_get_argument_count(&content, nil, &result, 0)
        return result
    }
    
    /// Returns the total amount of arguments bound via successive ``bind()`` or ``unbind(argcount:)`` calls. This is the same as the size of the array returned by ``getBoundArguments()``. See ``getBoundArguments()`` for details.
    /// 
    /// > Note: The ``getBoundArgumentsCount()`` and ``getUnboundArgumentsCount()`` methods can both return positive values.
    /// 
    public final func getBoundArgumentsCount() -> Int64 {
        var result: Int64 = Int64()
        GodotInterfaceForCallable.method_get_bound_arguments_count(&content, nil, &result, 0)
        return result
    }
    
    /// Returns the array of arguments bound via successive ``bind()`` or ``unbind(argcount:)`` calls. These arguments will be added _after_ the arguments passed to the call, from which ``getUnboundArgumentsCount()`` arguments on the right have been previously excluded.
    /// 
    public final func getBoundArguments() -> VariantArray {
        let result: VariantArray = VariantArray()
        GodotInterfaceForCallable.method_get_bound_arguments(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns the total amount of arguments unbound via successive ``bind()`` or ``unbind(argcount:)`` calls. See ``getBoundArguments()`` for details.
    /// 
    /// > Note: The ``getBoundArgumentsCount()`` and ``getUnboundArgumentsCount()`` methods can both return positive values.
    /// 
    public final func getUnboundArgumentsCount() -> Int64 {
        var result: Int64 = Int64()
        GodotInterfaceForCallable.method_get_unbound_arguments_count(&content, nil, &result, 0)
        return result
    }
    
    /// Returns the 32-bit hash value of this ``Callable``'s object.
    /// 
    /// > Note: ``Callable``s with equal content will always produce identical hash values. However, the reverse is not true. Returning identical hash values does _not_ imply the callables are equal, because different callables can have identical hash values due to hash collisions. The engine uses a 32-bit hash algorithm for ``hash()``.
    /// 
    public final func hash() -> Int64 {
        var result: Int64 = Int64()
        GodotInterfaceForCallable.method_hash(&content, nil, &result, 0)
        return result
    }
    
    /// Returns a copy of this ``Callable`` with one or more arguments bound, reading them from an array. When called, the bound arguments are passed _after_ the arguments supplied by ``call()``. See also ``unbind(argcount:)``.
    /// 
    /// > Note: When this method is chained with other similar methods, the order in which the argument list is modified is read from right to left.
    /// 
    public final func bindv(arguments: VariantArray) -> Callable {
        let result: Callable = Callable()
        withUnsafePointer(to: arguments.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForCallable.method_bindv(&content, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of this ``Callable`` with a number of arguments unbound. In other words, when the new callable is called the last few arguments supplied by the user are ignored, according to `argcount`. The remaining arguments are passed to the callable. This allows to use the original callable in a context that attempts to pass more arguments than this callable can handle, e.g. a signal with a fixed number of arguments. See also ``bind()``.
    /// 
    /// > Note: When this method is chained with other similar methods, the order in which the argument list is modified is read from right to left.
    /// 
    public final func unbind(argcount: Int64) -> Callable {
        let result: Callable = Callable()
        withUnsafePointer(to: argcount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForCallable.method_unbind(&content, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Calls the method represented by this ``Callable``. Arguments can be passed and should match the method's signature.
    public final func call(_ arguments: Variant?...) -> Variant? {
        var result = Variant.zero
        if arguments.isEmpty {
            GodotInterfaceForCallable.method_call(&content, nil, &result, 0) // no arguments
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
        
                    GodotInterfaceForCallable.method_call(&content, pArgs, &result, Int32(arguments.count))
                }
            }
        }
        return Variant(takingOver: result)
    }
    
    /// Calls the method represented by this ``Callable`` in deferred mode, i.e. at the end of the current frame. Arguments can be passed and should match the method's signature.
    /// 
    /// > Note: Deferred calls are processed at idle time. Idle time happens mainly at the end of process and physics frames. In it, deferred calls will be run until there are none left, which means you can defer calls from other deferred calls and they'll still be run in the current idle time cycle. This means you should not call a method deferred from itself (or from a method called by it), as this causes infinite recursion the same way as if you had called the method directly.
    /// 
    /// See also ``Object/callDeferred(method:)``.
    /// 
    public final func callDeferred(_ arguments: Variant?...) {
        if arguments.isEmpty {
            GodotInterfaceForCallable.method_call_deferred(&content, nil, nil, 0) // no arguments
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
        
                    GodotInterfaceForCallable.method_call_deferred(&content, pArgs, nil, Int32(arguments.count))
                }
            }
        }
    }
    
    /// Perform an RPC (Remote Procedure Call) on all connected peers. This is used for multiplayer and is normally not available, unless the function being called has been marked as _RPC_ (using [annotation @GDScript.@rpc] or ``Node/rpcConfig(method:config:)``). Calling this method on unsupported functions will result in an error. See ``Node/rpc(method:)``.
    public final func rpc(_ arguments: Variant?...) {
        if arguments.isEmpty {
            GodotInterfaceForCallable.method_rpc(&content, nil, nil, 0) // no arguments
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
        
                    GodotInterfaceForCallable.method_rpc(&content, pArgs, nil, Int32(arguments.count))
                }
            }
        }
    }
    
    /// Perform an RPC (Remote Procedure Call) on a specific peer ID (see multiplayer documentation for reference). This is used for multiplayer and is normally not available unless the function being called has been marked as _RPC_ (using [annotation @GDScript.@rpc] or ``Node/rpcConfig(method:config:)``). Calling this method on unsupported functions will result in an error. See ``Node/rpcId(peerId:method:)``.
    public final func rpcId(peerId: Int64, _ arguments: Variant?...) {
        let peerId = peerId.toVariant()
        withUnsafePointer(to: peerId.content) { pArg0 in
            if arguments.isEmpty {
                withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                        GodotInterfaceForCallable.method_rpc_id(&content, pArgs, nil, 1)
                    }
                    
                }
                
            } else {
                // A temporary allocation containing pointers to `Variant.ContentType` of marshaled arguments
                withUnsafeTemporaryAllocation(of: UnsafeRawPointer?.self, capacity: 1 + arguments.count) { pArgsBuffer in
                    defer { pArgsBuffer.deinitialize() }
                    guard let pArgs = pArgsBuffer.baseAddress else {
                        fatalError("pArgsBuffer.baseAddress is nil")
                    }
                    pArgsBuffer.initializeElement(at: 0, to: pArg0)
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
                            pArgsBuffer.initializeElement(at: 1 + i, to: contentsPtr + i)
                        }
                    
                        GodotInterfaceForCallable.method_rpc_id(&content, pArgs, nil, Int32(1 + arguments.count))
                    }                           
                }
                
            }
        }
        
    }
    
    /// Returns a copy of this ``Callable`` with one or more arguments bound. When called, the bound arguments are passed _after_ the arguments supplied by ``call()``. See also ``unbind(argcount:)``.
    /// 
    /// > Note: When this method is chained with other similar methods, the order in which the argument list is modified is read from right to left.
    /// 
    public final func bind(_ arguments: Variant?...) -> Callable {
        let result: Callable = Callable()
        if arguments.isEmpty {
            GodotInterfaceForCallable.method_bind(&content, nil, &result.content, 0) // no arguments
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
        
                    GodotInterfaceForCallable.method_bind(&content, pArgs, &result.content, Int32(arguments.count))
                }
            }
        }
        return result
    }
    
    /// Returns `true` if both ``Callable``s invoke the same custom target.
    public static func ==(lhs: Callable, rhs: Callable) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForCallable.operator_3(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if both ``Callable``s invoke different targets.
    public static func !=(lhs: Callable, rhs: Callable) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForCallable.operator_4(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(hash())
    }
    /// Wrap ``Callable`` into a ``Variant``
    @inline(__always)
    @inlinable
    public func toVariant() -> Variant {
        Variant(self)
    }
    
    /// Wrap ``Callable`` into a ``Variant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toVariant() -> Variant? {
        Variant(self)
    }
    
    /// Wrap ``Callable`` into a ``FastVariant``
    @inline(__always)
    @inlinable
    public func toFastVariant() -> FastVariant {
        FastVariant(self)
    }
    
    /// Wrap ``Callable`` into a ``FastVariant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toFastVariant() -> FastVariant? {
        FastVariant(self)
    }
    
    /// Extract ``Callable`` from a ``Variant``. Throws `VariantConversionError` if it's not possible.
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
    
    /// Initialze ``Callable`` from ``Variant``. Fails if `variant` doesn't contain ``Callable``
    @inline(__always)                                
    public convenience init?(_ variant: Variant) {
        guard Self._variantType == variant.gtype else { return nil }
        var content = Callable.zero
        withUnsafeMutablePointer(to: &content) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForCallable.selfFromVariant)                        
        }
        self.init(takingOver: content)
    }
    
    /// Initialze ``Callable`` from ``Variant``. Fails if `variant` doesn't contain ``Callable`` or is `nil`
    @inline(__always)
    @inlinable
    public convenience init?(_ variant: Variant?) {
        guard let variant else { return nil }
        self.init(variant)
    }
    
    /// Initialze ``Callable`` from ``FastVariant``. Fails if `variant` doesn't contain ``Callable``
    @inline(__always)                                
    public convenience init?(_ variant: borrowing FastVariant) {
        guard Self._variantType == variant.gtype else { return nil }
        var content = Callable.zero
        withUnsafeMutablePointer(to: &content) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForCallable.selfFromVariant)                        
        }
        self.init(takingOver: content)
    }
    
    /// Initialze ``Callable`` from ``FastVariant``. Fails if `variant` doesn't contain ``Callable`` or is `nil`
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
    /// Internal API. For indicating that Godot `Array` of ``Callable`` has type `Array[Callable]`
    @inline(__always)
    @inlinable
    public static var _variantType: Variant.GType {
        .callable 
    }
}

public extension Variant {
    /// Initialize ``Variant`` by wrapping ``Callable?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    convenience init?(_ from: Callable?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``Variant`` by wrapping ``Callable``
    @inline(__always)
    convenience init(_ from: Callable) {
        self.init(payload: from.content, constructor: GodotInterfaceForCallable.variantFromSelf)
    }
    
}

public extension FastVariant {
    /// Initialize ``FastVariant`` by wrapping ``Callable?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    init?(_ from: Callable?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``FastVariant`` by wrapping ``Callable``
    @inline(__always)
    init(_ from: Callable) {
        self.init(payload: from.content, constructor: GodotInterfaceForCallable.variantFromSelf)
    }
    
}

/// Static storage for keeping pointers to Godot implementation wrapped by Callable
enum GodotInterfaceForCallable {
    // MARK: - Destructor
    static let destructor: GDExtensionPtrDestructor = {
        return gi.variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_CALLABLE)!
    }()
    
    // MARK: - Constructors
    static let constructor0: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_CALLABLE, 0)!
    }()
    
    static let constructor1: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_CALLABLE, 1)!
    }()
    
    static let constructor2: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_CALLABLE, 2)!
    }()
    
    // MARK: - Methods
    static let method_create: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("create")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 1709381114)!
    }()
    
    static let method_callv: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("callv")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 413578926)!
    }()
    
    static let method_is_null: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_null")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3918633141)!
    }()
    
    static let method_is_custom: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_custom")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3918633141)!
    }()
    
    static let method_is_standard: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_standard")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3918633141)!
    }()
    
    static let method_is_valid: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_valid")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3918633141)!
    }()
    
    static let method_get_object_id: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_object_id")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3173160232)!
    }()
    
    static let method_get_method: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_method")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 1825232092)!
    }()
    
    static let method_get_argument_count: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_argument_count")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3173160232)!
    }()
    
    static let method_get_bound_arguments_count: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_bound_arguments_count")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3173160232)!
    }()
    
    static let method_get_bound_arguments: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_bound_arguments")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 4144163970)!
    }()
    
    static let method_get_unbound_arguments_count: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_unbound_arguments_count")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3173160232)!
    }()
    
    static let method_hash: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("hash")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3173160232)!
    }()
    
    static let method_bindv: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("bindv")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3564560322)!
    }()
    
    static let method_unbind: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("unbind")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 755001590)!
    }()
    
    static let method_call: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("call")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3643564216)!
    }()
    
    static let method_call_deferred: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("call_deferred")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3286317445)!
    }()
    
    static let method_rpc: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("rpc")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3286317445)!
    }()
    
    static let method_rpc_id: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("rpc_id")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 2270047679)!
    }()
    
    static let method_bind: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("bind")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, &name.content, 3224143119)!
    }()
    
    // MARK: - Operators
    static let operator_3: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_CALLABLE, GDEXTENSION_VARIANT_TYPE_CALLABLE)!
    }()
    
    static let operator_4: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_CALLABLE, GDEXTENSION_VARIANT_TYPE_CALLABLE)!
    }()
    
    // MARK: - Variant conversion
    static let variantFromSelf: GDExtensionVariantFromTypeConstructorFunc = {
        gi.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_CALLABLE)!
    }()
    
    static let selfFromVariant: GDExtensionTypeFromVariantConstructorFunc = {
        gi.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_CALLABLE)!
    }()
    
    
}

