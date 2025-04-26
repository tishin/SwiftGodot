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


/// A pre-parsed scene tree path.
/// 
/// The ``NodePath`` built-in ``Variant`` type represents a path to a node or property in a hierarchy of nodes. It is designed to be efficiently passed into many built-in methods (such as ``Node/getNode(path:)``, ``Object/setIndexed(propertyPath:value:)``, ``Tween/tweenProperty(object:property:finalVal:duration:)``, etc.) without a hard dependence on the node or property they point to.
/// 
/// A node path is represented as a ``String`` composed of slash-separated (`/`) node names and colon-separated (`:`) property names (also called "subnames"). Similar to a filesystem path, `".."` and `"."` are special node names. They refer to the parent node and the current node, respectively.
/// 
/// The following examples are paths relative to the current node:
/// 
/// A leading slash means the path is absolute, and begins from the ``SceneTree``:
/// 
/// Despite their name, node paths may also point to a property:
/// 
/// In some situations, it's possible to omit the leading `:` when pointing to an object's property. As an example, this is the case with ``Object/setIndexed(propertyPath:value:)`` and ``Tween/tweenProperty(object:property:finalVal:duration:)``, as those methods call ``NodePath/getAsPropertyPath()`` under the hood. However, it's generally recommended to keep the `:` prefix.
/// 
/// Node paths cannot check whether they are valid and may point to nodes or properties that do not exist. Their meaning depends entirely on the context in which they're used.
/// 
/// You usually do not have to worry about the ``NodePath`` type, as strings are automatically converted to the type when necessary. There are still times when defining node paths is useful. For example, exported ``NodePath`` properties allow you to easily select any node within the currently edited scene. They are also automatically updated when moving, renaming or deleting nodes in the scene tree editor. See also [annotation @GDScript.@export_node_path].
/// 
/// See also ``StringName``, which is a similar type designed for optimized strings.
/// 
/// > Note: In a boolean context, a ``NodePath`` will evaluate to `false` if it is empty (`NodePath("")`). Otherwise, a ``NodePath`` will always evaluate to `true`.
/// 
public final class NodePath: _GodotBridgeableBuiltin, Equatable, Hashable, ExpressibleByStringLiteral, ExpressibleByStringInterpolation, LosslessStringConvertible {
    /// ExpressibleByStringLiteral conformance
    public required init(stringLiteral value: String) {
        let gstring = GString(value)
        withUnsafePointer(to: &gstring.content) { pContent in
            withUnsafePointer(to: pContent) { pArgs in
                GodotInterfaceForNodePath.constructor2(&content, pArgs)
            }
        }
    }
    /// LosslessStringConvertible conformance
    public required init(_ value: String) {
        let gstring = GString(value)
        withUnsafePointer(to: &gstring.content) { pContent in
            withUnsafePointer(to: pContent) { pArgs in
                GodotInterfaceForNodePath.constructor2(&content, pArgs)
            }
        }
    }
    /// Produces a string representation of this NodePath
    public var description: String {
        let sub = getSubnameCount () > 0 ? getConcatenatedSubnames ().description : ""
        return (isAbsolute() ? "/" : "") + (getNameCount () > 0 ? getConcatenatedNames ().description : "") + (sub == "" ? sub : ":\(sub)")
    }
    
    deinit {
        if content != NodePath.zero {
            GodotInterfaceForNodePath.destructor(&content)
        }
        
    }
    
    // Contains a binary blob where this type information is stored
    public var content: ContentType = NodePath.zero
    
    // Used to initialize empty types
    public static var zero: ContentType { 0 }
    // Convenience type that matches the build configuration storage needs
    public typealias ContentType = Int64
    // Used to construct objects on virtual proxies
    public required init(content proxyContent: ContentType) {
        withUnsafePointer(to: proxyContent) { pContent in
            withUnsafePointer(to: pContent) { pArgs in
                GodotInterfaceForNodePath.constructor1(&content, pArgs)
            }
        }
    }
    /// Initialize with existing `ContentType` assuming this ``NodePath`` owns it since now.
    init(takingOver content: ContentType) {
        self.content = content
    }
    
    /// Constructs an empty ``NodePath``.
    public required init() {
        GodotInterfaceForNodePath.constructor0(&content, nil)
    }
    
    /// Constructs a ``NodePath`` as a copy of the given ``NodePath``.
    public init(from: NodePath) {
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForNodePath.constructor1(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs a ``NodePath`` from a ``String``. The created path is absolute if prefixed with a slash (see ``isAbsolute()``).
    /// 
    /// The "subnames" optionally included after the path to the target node can point to properties, and can also be nested.
    /// 
    /// The following strings can be valid node paths:
    /// 
    /// > Note: In GDScript, it's also possible to convert a constant string into a node path by prefixing it with `^`. `^"path/to/node"` is equivalent to `NodePath("path/to/node")`.
    /// 
    public init(from: String) {
        let from = GString(from)
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForNodePath.constructor2(&content, pArgs)
                }
                
            }
            
        }
        
    }
    
    
    /* Methods */
    
    /// Returns `true` if the node path is absolute. Unlike a relative path, an absolute path is represented by a leading slash character (`/`) and always begins from the ``SceneTree``. It can be used to reliably access nodes from the root node (e.g. `"/root/Global"` if an autoload named "Global" exists).
    public final func isAbsolute() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForNodePath.method_is_absolute(&content, nil, &result, 0)
        return result
    }
    
    /// Returns the number of node names in the path. Property subnames are not included.
    /// 
    /// For example, `"../RigidBody2D/Sprite2D:texture"` contains 3 node names.
    /// 
    public final func getNameCount() -> Int64 {
        var result: Int64 = Int64()
        GodotInterfaceForNodePath.method_get_name_count(&content, nil, &result, 0)
        return result
    }
    
    /// Returns the node name indicated by `idx`, starting from 0. If `idx` is out of bounds, an error is generated. See also ``getSubnameCount()`` and ``getNameCount()``.
    /// 
    public final func getName(idx: Int64) -> StringName {
        let result: StringName = StringName()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForNodePath.method_get_name(&content, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the number of property names ("subnames") in the path. Each subname in the node path is listed after a colon character (`:`).
    /// 
    /// For example, `"Level/RigidBody2D/Sprite2D:texture:resource_name"` contains 2 subnames.
    /// 
    public final func getSubnameCount() -> Int64 {
        var result: Int64 = Int64()
        GodotInterfaceForNodePath.method_get_subname_count(&content, nil, &result, 0)
        return result
    }
    
    /// Returns the 32-bit hash value representing the node path's contents.
    /// 
    /// > Note: Node paths with equal hash values are _not_ guaranteed to be the same, as a result of hash collisions. Node paths with different hash values are guaranteed to be different.
    /// 
    public final func hash() -> Int64 {
        var result: Int64 = Int64()
        GodotInterfaceForNodePath.method_hash(&content, nil, &result, 0)
        return result
    }
    
    /// Returns the property name indicated by `idx`, starting from 0. If `idx` is out of bounds, an error is generated. See also ``getSubnameCount()``.
    /// 
    public final func getSubname(idx: Int64) -> StringName {
        let result: StringName = StringName()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForNodePath.method_get_subname(&content, pArgs, &result.content, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns all node names concatenated with a slash character (`/`) as a single ``StringName``.
    public final func getConcatenatedNames() -> StringName {
        let result: StringName = StringName()
        GodotInterfaceForNodePath.method_get_concatenated_names(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns all property subnames concatenated with a colon character (`:`) as a single ``StringName``.
    /// 
    public final func getConcatenatedSubnames() -> StringName {
        let result: StringName = StringName()
        GodotInterfaceForNodePath.method_get_concatenated_subnames(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns the slice of the ``NodePath``, from `begin` (inclusive) to `end` (exclusive), as a new ``NodePath``.
    /// 
    /// The absolute value of `begin` and `end` will be clamped to the sum of ``getNameCount()`` and ``getSubnameCount()``, so the default value for `end` makes it slice to the end of the ``NodePath`` by default (i.e. `path.slice(1)` is a shorthand for `path.slice(1, path.get_name_count() + path.get_subname_count())`).
    /// 
    /// If either `begin` or `end` are negative, they will be relative to the end of the ``NodePath`` (i.e. `path.slice(0, -2)` is a shorthand for `path.slice(0, path.get_name_count() + path.get_subname_count() - 2)`).
    /// 
    public final func slice(begin: Int64, end: Int64 = 2147483647) -> NodePath {
        let result: NodePath = NodePath()
        withUnsafePointer(to: begin) { pArg0 in
            withUnsafePointer(to: end) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForNodePath.method_slice(&content, pArgs, &result.content, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a copy of this node path with a colon character (`:`) prefixed, transforming it to a pure property path with no node names (relative to the current node).
    /// 
    public final func getAsPropertyPath() -> NodePath {
        let result: NodePath = NodePath()
        GodotInterfaceForNodePath.method_get_as_property_path(&content, nil, &result.content, 0)
        return result
    }
    
    /// Returns `true` if the node path has been constructed from an empty ``String`` (`""`).
    public final func isEmpty() -> Bool {
        var result: Bool = Bool()
        GodotInterfaceForNodePath.method_is_empty(&content, nil, &result, 0)
        return result
    }
    
    /// Returns `true` if two node paths are equal, that is, they are composed of the same node names and subnames in the same order.
    public static func ==(lhs: NodePath, rhs: NodePath) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForNodePath.operator_3(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if two node paths are not equal.
    public static func !=(lhs: NodePath, rhs: NodePath) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs.content) { pArg0 in
            withUnsafePointer(to: rhs.content) { pArg1 in
                GodotInterfaceForNodePath.operator_4(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(hash())
    }
    /// Wrap ``NodePath`` into a ``Variant``
    @inline(__always)
    @inlinable
    public func toVariant() -> Variant {
        Variant(self)
    }
    
    /// Wrap ``NodePath`` into a ``Variant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toVariant() -> Variant? {
        Variant(self)
    }
    
    /// Wrap ``NodePath`` into a ``FastVariant``
    @inline(__always)
    @inlinable
    public func toFastVariant() -> FastVariant {
        FastVariant(self)
    }
    
    /// Wrap ``NodePath`` into a ``FastVariant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toFastVariant() -> FastVariant? {
        FastVariant(self)
    }
    
    /// Extract ``NodePath`` from a ``Variant``. Throws `VariantConversionError` if it's not possible.
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
    
    /// Initialze ``NodePath`` from ``Variant``. Fails if `variant` doesn't contain ``NodePath``
    @inline(__always)                                
    public convenience init?(_ variant: Variant) {
        guard Self._variantType == variant.gtype else { return nil }
        var content = NodePath.zero
        withUnsafeMutablePointer(to: &content) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForNodePath.selfFromVariant)                        
        }
        self.init(takingOver: content)
    }
    
    /// Initialze ``NodePath`` from ``Variant``. Fails if `variant` doesn't contain ``NodePath`` or is `nil`
    @inline(__always)
    @inlinable
    public convenience init?(_ variant: Variant?) {
        guard let variant else { return nil }
        self.init(variant)
    }
    
    /// Initialze ``NodePath`` from ``FastVariant``. Fails if `variant` doesn't contain ``NodePath``
    @inline(__always)                                
    public convenience init?(_ variant: borrowing FastVariant) {
        guard Self._variantType == variant.gtype else { return nil }
        var content = NodePath.zero
        withUnsafeMutablePointer(to: &content) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForNodePath.selfFromVariant)                        
        }
        self.init(takingOver: content)
    }
    
    /// Initialze ``NodePath`` from ``FastVariant``. Fails if `variant` doesn't contain ``NodePath`` or is `nil`
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
    /// Internal API. For indicating that Godot `Array` of ``NodePath`` has type `Array[NodePath]`
    @inline(__always)
    @inlinable
    public static var _variantType: Variant.GType {
        .nodePath 
    }
}

public extension Variant {
    /// Initialize ``Variant`` by wrapping ``NodePath?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    convenience init?(_ from: NodePath?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``Variant`` by wrapping ``NodePath``
    @inline(__always)
    convenience init(_ from: NodePath) {
        self.init(payload: from.content, constructor: GodotInterfaceForNodePath.variantFromSelf)
    }
    
}

public extension FastVariant {
    /// Initialize ``FastVariant`` by wrapping ``NodePath?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    init?(_ from: NodePath?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``FastVariant`` by wrapping ``NodePath``
    @inline(__always)
    init(_ from: NodePath) {
        self.init(payload: from.content, constructor: GodotInterfaceForNodePath.variantFromSelf)
    }
    
}

/// Static storage for keeping pointers to Godot implementation wrapped by NodePath
enum GodotInterfaceForNodePath {
    // MARK: - Destructor
    static let destructor: GDExtensionPtrDestructor = {
        return gi.variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_NODE_PATH)!
    }()
    
    // MARK: - Constructors
    static let constructor0: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_NODE_PATH, 0)!
    }()
    
    static let constructor1: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_NODE_PATH, 1)!
    }()
    
    static let constructor2: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_NODE_PATH, 2)!
    }()
    
    // MARK: - Methods
    static let method_is_absolute: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_absolute")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_NODE_PATH, &name.content, 3918633141)!
    }()
    
    static let method_get_name_count: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_name_count")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_NODE_PATH, &name.content, 3173160232)!
    }()
    
    static let method_get_name: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_name")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_NODE_PATH, &name.content, 2948586938)!
    }()
    
    static let method_get_subname_count: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_subname_count")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_NODE_PATH, &name.content, 3173160232)!
    }()
    
    static let method_hash: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("hash")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_NODE_PATH, &name.content, 3173160232)!
    }()
    
    static let method_get_subname: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_subname")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_NODE_PATH, &name.content, 2948586938)!
    }()
    
    static let method_get_concatenated_names: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_concatenated_names")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_NODE_PATH, &name.content, 1825232092)!
    }()
    
    static let method_get_concatenated_subnames: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_concatenated_subnames")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_NODE_PATH, &name.content, 1825232092)!
    }()
    
    static let method_slice: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("slice")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_NODE_PATH, &name.content, 421628484)!
    }()
    
    static let method_get_as_property_path: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_as_property_path")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_NODE_PATH, &name.content, 1598598043)!
    }()
    
    static let method_is_empty: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_empty")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_NODE_PATH, &name.content, 3918633141)!
    }()
    
    // MARK: - Operators
    static let operator_3: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_NODE_PATH, GDEXTENSION_VARIANT_TYPE_NODE_PATH)!
    }()
    
    static let operator_4: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_NODE_PATH, GDEXTENSION_VARIANT_TYPE_NODE_PATH)!
    }()
    
    // MARK: - Variant conversion
    static let variantFromSelf: GDExtensionVariantFromTypeConstructorFunc = {
        gi.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_NODE_PATH)!
    }()
    
    static let selfFromVariant: GDExtensionTypeFromVariantConstructorFunc = {
        gi.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_NODE_PATH)!
    }()
    
    
}

