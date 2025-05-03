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


/// Represents a glTF accessor.
/// 
/// GLTFAccessor is a data structure representing a glTF `accessor` that would be found in the `"accessors"` array. A buffer is a blob of binary data. A buffer view is a slice of a buffer. An accessor is a typed interpretation of the data in a buffer view.
/// 
/// Most custom data stored in glTF does not need accessors, only buffer views (see ``GLTFBufferView``). Accessors are for more advanced use cases such as interleaved mesh data encoded for the GPU.
/// 
open class GLTFAccessor: Resource {
    private static var className = StringName("GLTFAccessor")
    override open class var godotClassName: StringName { className }
    public enum GLTFAccessorType: Int64, CaseIterable {
        /// Accessor type "SCALAR". For the glTF object model, this can be used to map to a single float, int, or bool value, or a float array.
        case scalar = 0 // TYPE_SCALAR
        /// Accessor type "VEC2". For the glTF object model, this maps to "float2", represented in the glTF JSON as an array of two floats.
        case vec2 = 1 // TYPE_VEC2
        /// Accessor type "VEC3". For the glTF object model, this maps to "float3", represented in the glTF JSON as an array of three floats.
        case vec3 = 2 // TYPE_VEC3
        /// Accessor type "VEC4". For the glTF object model, this maps to "float4", represented in the glTF JSON as an array of four floats.
        case vec4 = 3 // TYPE_VEC4
        /// Accessor type "MAT2". For the glTF object model, this maps to "float2x2", represented in the glTF JSON as an array of four floats.
        case mat2 = 4 // TYPE_MAT2
        /// Accessor type "MAT3". For the glTF object model, this maps to "float3x3", represented in the glTF JSON as an array of nine floats.
        case mat3 = 5 // TYPE_MAT3
        /// Accessor type "MAT4". For the glTF object model, this maps to "float4x4", represented in the glTF JSON as an array of sixteen floats.
        case mat4 = 6 // TYPE_MAT4
    }
    
    public enum GLTFComponentType: Int64, CaseIterable {
        /// Component type "NONE". This is not a valid component type, and is used to indicate that the component type is not set.
        case none = 0 // COMPONENT_TYPE_NONE
        /// Component type "BYTE". The value is `0x1400` which comes from OpenGL. This indicates data is stored in 1-byte or 8-bit signed integers. This is a core part of the glTF specification.
        case signedByte = 5120 // COMPONENT_TYPE_SIGNED_BYTE
        /// Component type "UNSIGNED_BYTE". The value is `0x1401` which comes from OpenGL. This indicates data is stored in 1-byte or 8-bit unsigned integers. This is a core part of the glTF specification.
        case unsignedByte = 5121 // COMPONENT_TYPE_UNSIGNED_BYTE
        /// Component type "SHORT". The value is `0x1402` which comes from OpenGL. This indicates data is stored in 2-byte or 16-bit signed integers. This is a core part of the glTF specification.
        case signedShort = 5122 // COMPONENT_TYPE_SIGNED_SHORT
        /// Component type "UNSIGNED_SHORT". The value is `0x1403` which comes from OpenGL. This indicates data is stored in 2-byte or 16-bit unsigned integers. This is a core part of the glTF specification.
        case unsignedShort = 5123 // COMPONENT_TYPE_UNSIGNED_SHORT
        /// Component type "INT". The value is `0x1404` which comes from OpenGL. This indicates data is stored in 4-byte or 32-bit signed integers. This is NOT a core part of the glTF specification, and may not be supported by all glTF importers. May be used by some extensions including `KHR_interactivity`.
        case signedInt = 5124 // COMPONENT_TYPE_SIGNED_INT
        /// Component type "UNSIGNED_INT". The value is `0x1405` which comes from OpenGL. This indicates data is stored in 4-byte or 32-bit unsigned integers. This is a core part of the glTF specification.
        case unsignedInt = 5125 // COMPONENT_TYPE_UNSIGNED_INT
        /// Component type "FLOAT". The value is `0x1406` which comes from OpenGL. This indicates data is stored in 4-byte or 32-bit floating-point numbers. This is a core part of the glTF specification.
        case singleFloat = 5126 // COMPONENT_TYPE_SINGLE_FLOAT
        /// Component type "DOUBLE". The value is `0x140A` which comes from OpenGL. This indicates data is stored in 8-byte or 64-bit floating-point numbers. This is NOT a core part of the glTF specification, and may not be supported by all glTF importers. May be used by some extensions including `KHR_interactivity`.
        case doubleFloat = 5130 // COMPONENT_TYPE_DOUBLE_FLOAT
        /// Component type "HALF_FLOAT". The value is `0x140B` which comes from OpenGL. This indicates data is stored in 2-byte or 16-bit floating-point numbers. This is NOT a core part of the glTF specification, and may not be supported by all glTF importers. May be used by some extensions including `KHR_interactivity`.
        case halfFloat = 5131 // COMPONENT_TYPE_HALF_FLOAT
        /// Component type "LONG". The value is `0x140E` which comes from OpenGL. This indicates data is stored in 8-byte or 64-bit signed integers. This is NOT a core part of the glTF specification, and may not be supported by all glTF importers. May be used by some extensions including `KHR_interactivity`.
        case signedLong = 5134 // COMPONENT_TYPE_SIGNED_LONG
        /// Component type "UNSIGNED_LONG". The value is `0x140F` which comes from OpenGL. This indicates data is stored in 8-byte or 64-bit unsigned integers. This is NOT a core part of the glTF specification, and may not be supported by all glTF importers. May be used by some extensions including `KHR_interactivity`.
        case unsignedLong = 5135 // COMPONENT_TYPE_UNSIGNED_LONG
    }
    
    
    /* Properties */
    
    /// The index of the buffer view this accessor is referencing. If `-1`, this accessor is not referencing any buffer view.
    final public var bufferView: Int32 {
        get {
            return get_buffer_view ()
        }
        
        set {
            set_buffer_view (newValue)
        }
        
    }
    
    /// The offset relative to the start of the buffer view in bytes.
    final public var byteOffset: Int32 {
        get {
            return get_byte_offset ()
        }
        
        set {
            set_byte_offset (newValue)
        }
        
    }
    
    /// The glTF component type as an enum. See ``GLTFAccessor/GLTFComponentType`` for possible values. Within the core glTF specification, a value of 5125 or "UNSIGNED_INT" must not be used for any accessor that is not referenced by mesh.primitive.indices.
    final public var componentType: Int32 {
        get {
            return get_component_type ()
        }
        
        set {
            set_component_type (newValue)
        }
        
    }
    
    /// Specifies whether integer data values are normalized before usage.
    final public var normalized: Bool {
        get {
            return get_normalized ()
        }
        
        set {
            set_normalized (newValue)
        }
        
    }
    
    /// The number of elements referenced by this accessor.
    final public var count: Int32 {
        get {
            return get_count ()
        }
        
        set {
            set_count (newValue)
        }
        
    }
    
    /// The glTF accessor type as an enum. Possible values are 0 for "SCALAR", 1 for "VEC2", 2 for "VEC3", 3 for "VEC4", 4 for "MAT2", 5 for "MAT3", and 6 for "MAT4".
    final public var accessorType: GLTFAccessor.GLTFAccessorType {
        get {
            return get_accessor_type ()
        }
        
        set {
            set_accessor_type (newValue)
        }
        
    }
    
    /// The glTF accessor type as an enum. Use ``accessorType`` instead.
    final public var type: Int32 {
        get {
            return get_type ()
        }
        
        set {
            set_type (newValue)
        }
        
    }
    
    /// Minimum value of each component in this accessor.
    final public var min: PackedFloat64Array {
        get {
            return get_min ()
        }
        
        set {
            set_min (newValue)
        }
        
    }
    
    /// Maximum value of each component in this accessor.
    final public var max: PackedFloat64Array {
        get {
            return get_max ()
        }
        
        set {
            set_max (newValue)
        }
        
    }
    
    /// Number of deviating accessor values stored in the sparse array.
    final public var sparseCount: Int32 {
        get {
            return get_sparse_count ()
        }
        
        set {
            set_sparse_count (newValue)
        }
        
    }
    
    /// The index of the buffer view with sparse indices. The referenced buffer view MUST NOT have its target or byteStride properties defined. The buffer view and the optional byteOffset MUST be aligned to the componentType byte length.
    final public var sparseIndicesBufferView: Int32 {
        get {
            return get_sparse_indices_buffer_view ()
        }
        
        set {
            set_sparse_indices_buffer_view (newValue)
        }
        
    }
    
    /// The offset relative to the start of the buffer view in bytes.
    final public var sparseIndicesByteOffset: Int32 {
        get {
            return get_sparse_indices_byte_offset ()
        }
        
        set {
            set_sparse_indices_byte_offset (newValue)
        }
        
    }
    
    /// The indices component data type as an enum. Possible values are 5121 for "UNSIGNED_BYTE", 5123 for "UNSIGNED_SHORT", and 5125 for "UNSIGNED_INT".
    final public var sparseIndicesComponentType: Int32 {
        get {
            return get_sparse_indices_component_type ()
        }
        
        set {
            set_sparse_indices_component_type (newValue)
        }
        
    }
    
    /// The index of the bufferView with sparse values. The referenced buffer view MUST NOT have its target or byteStride properties defined.
    final public var sparseValuesBufferView: Int32 {
        get {
            return get_sparse_values_buffer_view ()
        }
        
        set {
            set_sparse_values_buffer_view (newValue)
        }
        
    }
    
    /// The offset relative to the start of the bufferView in bytes.
    final public var sparseValuesByteOffset: Int32 {
        get {
            return get_sparse_values_byte_offset ()
        }
        
        set {
            set_sparse_values_byte_offset (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_get_buffer_view: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_buffer_view")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_buffer_view() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GLTFAccessor.method_get_buffer_view, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_buffer_view: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_buffer_view")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_buffer_view(_ bufferView: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: bufferView) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFAccessor.method_set_buffer_view, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_byte_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_byte_offset")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_byte_offset() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GLTFAccessor.method_get_byte_offset, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_byte_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_byte_offset")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_byte_offset(_ byteOffset: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: byteOffset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFAccessor.method_set_byte_offset, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_component_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_component_type")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_component_type() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GLTFAccessor.method_get_component_type, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_component_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_component_type")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_component_type(_ componentType: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: componentType) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFAccessor.method_set_component_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_normalized: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_normalized")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_normalized() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GLTFAccessor.method_get_normalized, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_normalized: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_normalized")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_normalized(_ normalized: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: normalized) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFAccessor.method_set_normalized, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_count")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_count() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GLTFAccessor.method_get_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_count")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_count(_ count: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: count) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFAccessor.method_set_count, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_accessor_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_accessor_type")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 679305214)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_accessor_type() -> GLTFAccessor.GLTFAccessorType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(GLTFAccessor.method_get_accessor_type, handle, nil, &_result)
        return GLTFAccessor.GLTFAccessorType (rawValue: _result)!
    }
    
    fileprivate static let method_set_accessor_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_accessor_type")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2347728198)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_accessor_type(_ accessorType: GLTFAccessor.GLTFAccessorType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: accessorType.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFAccessor.method_set_accessor_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_type")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_type() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GLTFAccessor.method_get_type, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_type")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_type(_ type: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: type) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFAccessor.method_set_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_min: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_min")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 148677866)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_min() -> PackedFloat64Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedFloat64Array = PackedFloat64Array ()
        gi.object_method_bind_ptrcall(GLTFAccessor.method_get_min, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_min: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_min")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2576592201)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_min(_ min: PackedFloat64Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: min.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFAccessor.method_set_min, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_max: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_max")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 148677866)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max() -> PackedFloat64Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedFloat64Array = PackedFloat64Array ()
        gi.object_method_bind_ptrcall(GLTFAccessor.method_get_max, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_max: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_max")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2576592201)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max(_ max: PackedFloat64Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: max.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFAccessor.method_set_max, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sparse_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sparse_count")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sparse_count() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GLTFAccessor.method_get_sparse_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_sparse_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sparse_count")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sparse_count(_ sparseCount: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: sparseCount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFAccessor.method_set_sparse_count, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sparse_indices_buffer_view: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sparse_indices_buffer_view")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sparse_indices_buffer_view() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GLTFAccessor.method_get_sparse_indices_buffer_view, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_sparse_indices_buffer_view: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sparse_indices_buffer_view")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sparse_indices_buffer_view(_ sparseIndicesBufferView: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: sparseIndicesBufferView) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFAccessor.method_set_sparse_indices_buffer_view, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sparse_indices_byte_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sparse_indices_byte_offset")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sparse_indices_byte_offset() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GLTFAccessor.method_get_sparse_indices_byte_offset, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_sparse_indices_byte_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sparse_indices_byte_offset")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sparse_indices_byte_offset(_ sparseIndicesByteOffset: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: sparseIndicesByteOffset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFAccessor.method_set_sparse_indices_byte_offset, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sparse_indices_component_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sparse_indices_component_type")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sparse_indices_component_type() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GLTFAccessor.method_get_sparse_indices_component_type, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_sparse_indices_component_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sparse_indices_component_type")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sparse_indices_component_type(_ sparseIndicesComponentType: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: sparseIndicesComponentType) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFAccessor.method_set_sparse_indices_component_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sparse_values_buffer_view: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sparse_values_buffer_view")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sparse_values_buffer_view() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GLTFAccessor.method_get_sparse_values_buffer_view, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_sparse_values_buffer_view: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sparse_values_buffer_view")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sparse_values_buffer_view(_ sparseValuesBufferView: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: sparseValuesBufferView) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFAccessor.method_set_sparse_values_buffer_view, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sparse_values_byte_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sparse_values_byte_offset")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sparse_values_byte_offset() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GLTFAccessor.method_get_sparse_values_byte_offset, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_sparse_values_byte_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sparse_values_byte_offset")
        return withUnsafePointer(to: &GLTFAccessor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sparse_values_byte_offset(_ sparseValuesByteOffset: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: sparseValuesByteOffset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFAccessor.method_set_sparse_values_byte_offset, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}

