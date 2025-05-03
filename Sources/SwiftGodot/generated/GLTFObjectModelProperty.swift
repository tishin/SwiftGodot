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


/// Describes how to access a property as defined in the glTF object model.
/// 
/// GLTFObjectModelProperty defines a mapping between a property in the glTF object model and a NodePath in the Godot scene tree. This can be used to animate properties in a glTF file using the `KHR_animation_pointer` extension, or to access them through an engine-agnostic script such as a behavior graph as defined by the `KHR_interactivity` extension.
/// 
/// The glTF property is identified by JSON pointer(s) stored in ``jsonPointers``, while the Godot property it maps to is defined by ``nodePaths``. In most cases ``jsonPointers`` and ``nodePaths`` will each only have one item, but in some cases a single glTF JSON pointer will map to multiple Godot properties, or a single Godot property will be mapped to multiple glTF JSON pointers, or it might be a many-to-many relationship.
/// 
/// ``Expression`` objects can be used to define conversions between the data, such as when glTF defines an angle in radians and Godot uses degrees. The ``objectModelType`` property defines the type of data stored in the glTF file as defined by the object model, see ``GLTFObjectModelProperty/GLTFObjectModelType`` for possible values.
/// 
open class GLTFObjectModelProperty: RefCounted {
    private static var className = StringName("GLTFObjectModelProperty")
    override open class var godotClassName: StringName { className }
    public enum GLTFObjectModelType: Int64, CaseIterable {
        /// Unknown or not set object model type. If the object model type is set to this value, the real type still needs to be determined.
        case unknown = 0 // GLTF_OBJECT_MODEL_TYPE_UNKNOWN
        /// Object model type "bool". Represented in the glTF JSON as a boolean, and encoded in a ``GLTFAccessor`` as "SCALAR". When encoded in an accessor, a value of `0` is `false`, and any other value is `true`.
        case bool = 1 // GLTF_OBJECT_MODEL_TYPE_BOOL
        /// Object model type "float". Represented in the glTF JSON as a number, and encoded in a ``GLTFAccessor`` as "SCALAR".
        case float = 2 // GLTF_OBJECT_MODEL_TYPE_FLOAT
        /// Object model type "float[lb][rb]". Represented in the glTF JSON as an array of numbers, and encoded in a ``GLTFAccessor`` as "SCALAR".
        case floatArray = 3 // GLTF_OBJECT_MODEL_TYPE_FLOAT_ARRAY
        /// Object model type "float2". Represented in the glTF JSON as an array of two numbers, and encoded in a ``GLTFAccessor`` as "VEC2".
        case float2 = 4 // GLTF_OBJECT_MODEL_TYPE_FLOAT2
        /// Object model type "float3". Represented in the glTF JSON as an array of three numbers, and encoded in a ``GLTFAccessor`` as "VEC3".
        case float3 = 5 // GLTF_OBJECT_MODEL_TYPE_FLOAT3
        /// Object model type "float4". Represented in the glTF JSON as an array of four numbers, and encoded in a ``GLTFAccessor`` as "VEC4".
        case float4 = 6 // GLTF_OBJECT_MODEL_TYPE_FLOAT4
        /// Object model type "float2x2". Represented in the glTF JSON as an array of four numbers, and encoded in a ``GLTFAccessor`` as "MAT2".
        case float2x2 = 7 // GLTF_OBJECT_MODEL_TYPE_FLOAT2X2
        /// Object model type "float3x3". Represented in the glTF JSON as an array of nine numbers, and encoded in a ``GLTFAccessor`` as "MAT3".
        case float3x3 = 8 // GLTF_OBJECT_MODEL_TYPE_FLOAT3X3
        /// Object model type "float4x4". Represented in the glTF JSON as an array of sixteen numbers, and encoded in a ``GLTFAccessor`` as "MAT4".
        case float4x4 = 9 // GLTF_OBJECT_MODEL_TYPE_FLOAT4X4
        /// Object model type "int". Represented in the glTF JSON as a number, and encoded in a ``GLTFAccessor`` as "SCALAR". The range of values is limited to signed integers. For `KHR_interactivity`, only 32-bit integers are supported.
        case int = 10 // GLTF_OBJECT_MODEL_TYPE_INT
    }
    
    
    /* Properties */
    
    /// If set, this ``Expression`` will be used to convert the property value from the glTF object model to the value expected by the Godot property. This is useful when the glTF object model uses a different unit system, or when the data needs to be transformed in some way. If `null`, the value will be copied as-is.
    final public var gltfToGodotExpression: Expression? {
        get {
            return get_gltf_to_godot_expression ()
        }
        
        set {
            set_gltf_to_godot_expression (newValue)
        }
        
    }
    
    /// If set, this ``Expression`` will be used to convert the property value from the Godot property to the value expected by the glTF object model. This is useful when the glTF object model uses a different unit system, or when the data needs to be transformed in some way. If `null`, the value will be copied as-is.
    final public var godotToGltfExpression: Expression? {
        get {
            return get_godot_to_gltf_expression ()
        }
        
        set {
            set_godot_to_gltf_expression (newValue)
        }
        
    }
    
    /// An array of ``NodePath``s that point to a property, or multiple properties, in the Godot scene tree. On import, this will either be set by ``GLTFDocument``, or by a ``GLTFDocumentExtension`` class. For simple cases, use ``appendPathToProperty(nodePath:propName:)`` to add properties to this array.
    /// 
    /// In most cases ``nodePaths`` will only have one item, but in some cases a single glTF JSON pointer will map to multiple Godot properties. For example, a ``GLTFCamera`` or ``GLTFLight`` used on multiple glTF nodes will be represented by multiple Godot nodes.
    /// 
    final public var nodePaths: TypedArray<NodePath> {
        get {
            return get_node_paths ()
        }
        
        set {
            set_node_paths (newValue)
        }
        
    }
    
    /// The type of data stored in the glTF file as defined by the object model. This is a superset of the available accessor types, and determines the accessor type. See ``GLTFObjectModelProperty/GLTFObjectModelType`` for possible values.
    final public var objectModelType: GLTFObjectModelProperty.GLTFObjectModelType {
        get {
            return get_object_model_type ()
        }
        
        set {
            set_object_model_type (newValue)
        }
        
    }
    
    /// The glTF object model JSON pointers used to identify the property in the glTF object model. In most cases, there will be only one item in this array, but niche cases may require multiple pointers. The items are themselves arrays which represent the JSON pointer split into its components.
    final public var jsonPointers: TypedArray<PackedStringArray> {
        get {
            return get_json_pointers ()
        }
        
        set {
            set_json_pointers (newValue)
        }
        
    }
    
    /// The type of data stored in the Godot property. This is the type of the property that the ``nodePaths`` point to.
    final public var variantType: Variant.GType {
        get {
            return get_variant_type ()
        }
        
        set {
            set_variant_type (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_append_node_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("append_node_path")
        return withUnsafePointer(to: &GLTFObjectModelProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    /// Appends a ``NodePath`` to ``nodePaths``. This can be used by ``GLTFDocumentExtension`` classes to define how a glTF object model property maps to a Godot property, or multiple Godot properties. Prefer using ``appendPathToProperty(nodePath:propName:)`` for simple cases. Be sure to also call ``setTypes(variantType:objModelType:)`` once (the order does not matter).
    public final func appendNodePath(_ nodePath: NodePath) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: nodePath.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFObjectModelProperty.method_append_node_path, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_append_path_to_property: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("append_path_to_property")
        return withUnsafePointer(to: &GLTFObjectModelProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1331931644)!
            }
            
        }
        
    }()
    
    /// High-level wrapper over ``appendNodePath(_:)`` that handles the most common cases. It constructs a new ``NodePath`` using `nodePath` as a base and appends `propName` to the subpath. Be sure to also call ``setTypes(variantType:objModelType:)`` once (the order does not matter).
    public final func appendPathToProperty(nodePath: NodePath, propName: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: nodePath.content) { pArg0 in
            withUnsafePointer(to: propName.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(GLTFObjectModelProperty.method_append_path_to_property, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_accessor_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_accessor_type")
        return withUnsafePointer(to: &GLTFObjectModelProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1998183368)!
            }
            
        }
        
    }()
    
    /// The GLTF accessor type associated with this property's ``objectModelType``. See ``GLTFAccessor/accessorType`` for possible values, and see ``GLTFObjectModelProperty/GLTFObjectModelType`` for how the object model type maps to accessor types.
    public final func getAccessorType() -> GLTFAccessor.GLTFAccessorType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(GLTFObjectModelProperty.method_get_accessor_type, handle, nil, &_result)
        return GLTFAccessor.GLTFAccessorType (rawValue: _result)!
    }
    
    fileprivate static let method_get_gltf_to_godot_expression: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_gltf_to_godot_expression")
        return withUnsafePointer(to: &GLTFObjectModelProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240072449)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_gltf_to_godot_expression() -> Expression? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(GLTFObjectModelProperty.method_get_gltf_to_godot_expression, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_gltf_to_godot_expression: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_gltf_to_godot_expression")
        return withUnsafePointer(to: &GLTFObjectModelProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1815845073)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_gltf_to_godot_expression(_ gltfToGodotExpr: Expression?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: gltfToGodotExpr?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFObjectModelProperty.method_set_gltf_to_godot_expression, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_godot_to_gltf_expression: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_godot_to_gltf_expression")
        return withUnsafePointer(to: &GLTFObjectModelProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240072449)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_godot_to_gltf_expression() -> Expression? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(GLTFObjectModelProperty.method_get_godot_to_gltf_expression, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_godot_to_gltf_expression: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_godot_to_gltf_expression")
        return withUnsafePointer(to: &GLTFObjectModelProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1815845073)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_godot_to_gltf_expression(_ godotToGltfExpr: Expression?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: godotToGltfExpr?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFObjectModelProperty.method_set_godot_to_gltf_expression, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_node_paths: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_node_paths")
        return withUnsafePointer(to: &GLTFObjectModelProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_node_paths() -> TypedArray<NodePath> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(GLTFObjectModelProperty.method_get_node_paths, handle, nil, &_result)
        return TypedArray<NodePath>(takingOver: _result)
    }
    
    fileprivate static let method_has_node_paths: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_node_paths")
        return withUnsafePointer(to: &GLTFObjectModelProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if ``nodePaths`` is not empty. This is used during import to determine if a ``GLTFObjectModelProperty`` can handle converting a glTF object model property to a Godot property.
    public final func hasNodePaths() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GLTFObjectModelProperty.method_has_node_paths, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_node_paths: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_node_paths")
        return withUnsafePointer(to: &GLTFObjectModelProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_node_paths(_ nodePaths: TypedArray<NodePath>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: nodePaths.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFObjectModelProperty.method_set_node_paths, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_object_model_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_object_model_type")
        return withUnsafePointer(to: &GLTFObjectModelProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1094778507)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_object_model_type() -> GLTFObjectModelProperty.GLTFObjectModelType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(GLTFObjectModelProperty.method_get_object_model_type, handle, nil, &_result)
        return GLTFObjectModelProperty.GLTFObjectModelType (rawValue: _result)!
    }
    
    fileprivate static let method_set_object_model_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_object_model_type")
        return withUnsafePointer(to: &GLTFObjectModelProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4108684086)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_object_model_type(_ type: GLTFObjectModelProperty.GLTFObjectModelType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFObjectModelProperty.method_set_object_model_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_json_pointers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_json_pointers")
        return withUnsafePointer(to: &GLTFObjectModelProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_json_pointers() -> TypedArray<PackedStringArray> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(GLTFObjectModelProperty.method_get_json_pointers, handle, nil, &_result)
        return TypedArray<PackedStringArray>(takingOver: _result)
    }
    
    fileprivate static let method_has_json_pointers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_json_pointers")
        return withUnsafePointer(to: &GLTFObjectModelProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if ``jsonPointers`` is not empty. This is used during export to determine if a ``GLTFObjectModelProperty`` can handle converting a Godot property to a glTF object model property.
    public final func hasJsonPointers() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GLTFObjectModelProperty.method_has_json_pointers, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_json_pointers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_json_pointers")
        return withUnsafePointer(to: &GLTFObjectModelProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_json_pointers(_ jsonPointers: TypedArray<PackedStringArray>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: jsonPointers.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFObjectModelProperty.method_set_json_pointers, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_variant_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_variant_type")
        return withUnsafePointer(to: &GLTFObjectModelProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3416842102)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_variant_type() -> Variant.GType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(GLTFObjectModelProperty.method_get_variant_type, handle, nil, &_result)
        return Variant.GType (rawValue: _result)!
    }
    
    fileprivate static let method_set_variant_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_variant_type")
        return withUnsafePointer(to: &GLTFObjectModelProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2887708385)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_variant_type(_ variantType: Variant.GType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: variantType.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFObjectModelProperty.method_set_variant_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_types: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_types")
        return withUnsafePointer(to: &GLTFObjectModelProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4150728237)!
            }
            
        }
        
    }()
    
    /// Sets the ``variantType`` and ``objectModelType`` properties. This is a convenience method to set both properties at once, since they are almost always known at the same time. This method should be called once. Calling it again with the same values will have no effect.
    public final func setTypes(variantType: Variant.GType, objModelType: GLTFObjectModelProperty.GLTFObjectModelType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: variantType.rawValue) { pArg0 in
            withUnsafePointer(to: objModelType.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(GLTFObjectModelProperty.method_set_types, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
}

