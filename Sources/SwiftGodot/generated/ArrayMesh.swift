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


/// ``Mesh`` type that provides utility for constructing a surface from arrays.
/// 
/// The ``ArrayMesh`` is used to construct a ``Mesh`` by specifying the attributes as arrays.
/// 
/// The most basic example is the creation of a single triangle:
/// 
/// The ``MeshInstance3D`` is ready to be added to the ``SceneTree`` to be shown.
/// 
/// See also ``ImmediateMesh``, ``MeshDataTool`` and ``SurfaceTool`` for procedural geometry generation.
/// 
/// > Note: Godot uses clockwise <a href="https://learnopengl.com/Advanced-OpenGL/Face-culling">winding order</a> for front faces of triangle primitive modes.
/// 
open class ArrayMesh: Mesh {
    private static var className = StringName("ArrayMesh")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Sets the blend shape mode to one of ``Mesh.BlendShapeMode``.
    final public var blendShapeMode: Mesh.BlendShapeMode {
        get {
            return get_blend_shape_mode ()
        }
        
        set {
            set_blend_shape_mode (newValue)
        }
        
    }
    
    /// Overrides the ``AABB`` with one defined by user for use with frustum culling. Especially useful to avoid unexpected culling when using a shader to offset vertices.
    final public var customAabb: AABB {
        get {
            return get_custom_aabb ()
        }
        
        set {
            set_custom_aabb (newValue)
        }
        
    }
    
    /// An optional mesh which can be used for rendering shadows and the depth prepass. Can be used to increase performance by supplying a mesh with fused vertices and only vertex position data (without normals, UVs, colors, etc.).
    /// 
    /// > Note: This mesh must have exactly the same vertex positions as the source mesh (including the source mesh's LODs, if present). If vertex positions differ, then the mesh will not draw correctly.
    /// 
    final public var shadowMesh: ArrayMesh? {
        get {
            return get_shadow_mesh ()
        }
        
        set {
            set_shadow_mesh (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_add_blend_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_blend_shape")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    /// Adds name for a blend shape that will be added with ``addSurfaceFromArrays(primitive:arrays:blendShapes:lods:flags:)``. Must be called before surface is added.
    public final func addBlendShape(name: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ArrayMesh.method_add_blend_shape, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_blend_shape_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_blend_shape_count")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of blend shapes that the ``ArrayMesh`` holds.
    public final func getBlendShapeCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(ArrayMesh.method_get_blend_shape_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_blend_shape_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_blend_shape_name")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 659327637)!
            }
            
        }
        
    }()
    
    /// Returns the name of the blend shape at this index.
    public final func getBlendShapeName(index: Int32) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ArrayMesh.method_get_blend_shape_name, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_blend_shape_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_blend_shape_name")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3780747571)!
            }
            
        }
        
    }()
    
    /// Sets the name of the blend shape at this index.
    public final func setBlendShapeName(index: Int32, name: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ArrayMesh.method_set_blend_shape_name, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_clear_blend_shapes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_blend_shapes")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all blend shapes from this ``ArrayMesh``.
    public final func clearBlendShapes() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ArrayMesh.method_clear_blend_shapes, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_blend_shape_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_blend_shape_mode")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 227983991)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_blend_shape_mode(_ mode: Mesh.BlendShapeMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ArrayMesh.method_set_blend_shape_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_blend_shape_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_blend_shape_mode")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 836485024)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_blend_shape_mode() -> Mesh.BlendShapeMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(ArrayMesh.method_get_blend_shape_mode, handle, nil, &_result)
        return Mesh.BlendShapeMode (rawValue: _result)!
    }
    
    fileprivate static let method_add_surface_from_arrays: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_surface_from_arrays")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1796411378)!
            }
            
        }
        
    }()
    
    /// Creates a new surface. ``Mesh/getSurfaceCount()`` will become the `surf_idx` for this new surface.
    /// 
    /// Surfaces are created to be rendered using a `primitive`, which may be any of the values defined in ``Mesh.PrimitiveType``.
    /// 
    /// The `arrays` argument is an array of arrays. Each of the ``Mesh/ArrayType/max`` elements contains an array with some of the mesh data for this surface as described by the corresponding member of ``Mesh.ArrayType`` or `null` if it is not used by the surface. For example, `arrays[0]` is the array of vertices. That first vertex sub-array is always required; the others are optional. Adding an index array puts this surface into "index mode" where the vertex and other arrays become the sources of data and the index array defines the vertex order. All sub-arrays must have the same length as the vertex array (or be an exact multiple of the vertex array's length, when multiple elements of a sub-array correspond to a single vertex) or be empty, except for ``Mesh/ArrayType/index`` if it is used.
    /// 
    /// The `blendShapes` argument is an array of vertex data for each blend shape. Each element is an array of the same structure as `arrays`, but ``Mesh/ArrayType/vertex``, ``Mesh/ArrayType/normal``, and ``Mesh/ArrayType/tangent`` are set if and only if they are set in `arrays` and all other entries are `null`.
    /// 
    /// The `lods` argument is a dictionary with float keys and ``PackedInt32Array`` values. Each entry in the dictionary represents an LOD level of the surface, where the value is the ``Mesh/ArrayType/index`` array to use for the LOD level and the key is roughly proportional to the distance at which the LOD stats being used. I.e., increasing the key of an LOD also increases the distance that the objects has to be from the camera before the LOD is used.
    /// 
    /// The `flags` argument is the bitwise OR of, as required: One value of ``Mesh.ArrayCustomFormat`` left shifted by `ARRAY_FORMAT_CUSTOMn_SHIFT` for each custom channel in use, ``Mesh/ArrayFormat/flagUseDynamicUpdate``, ``Mesh/ArrayFormat/flagUse8BoneWeights``, or ``Mesh/ArrayFormat/flagUsesEmptyVertexArray``.
    /// 
    /// > Note: When using indices, it is recommended to only use points, lines, or triangles.
    /// 
    public final func addSurfaceFromArrays(primitive: Mesh.PrimitiveType, arrays: VariantArray, blendShapes: TypedArray<VariantArray> = TypedArray<VariantArray> (), lods: VariantDictionary = VariantDictionary (), flags: Mesh.ArrayFormat = []) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: primitive.rawValue) { pArg0 in
            withUnsafePointer(to: arrays.content) { pArg1 in
                withUnsafePointer(to: blendShapes.array.content) { pArg2 in
                    withUnsafePointer(to: lods.content) { pArg3 in
                        withUnsafePointer(to: flags.rawValue) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(ArrayMesh.method_add_surface_from_arrays, handle, pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_clear_surfaces: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_surfaces")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all surfaces from this ``ArrayMesh``.
    public final func clearSurfaces() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ArrayMesh.method_clear_surfaces, handle, nil, nil)
        
    }
    
    fileprivate static let method_surface_remove: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("surface_remove")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes the surface at the given index from the Mesh, shifting surfaces with higher index down by one.
    public final func surfaceRemove(surfIdx: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: surfIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ArrayMesh.method_surface_remove, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_surface_update_vertex_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("surface_update_vertex_region")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3837166854)!
            }
            
        }
        
    }()
    
    /// 
    public final func surfaceUpdateVertexRegion(surfIdx: Int32, offset: Int32, data: PackedByteArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: surfIdx) { pArg0 in
            withUnsafePointer(to: offset) { pArg1 in
                withUnsafePointer(to: data.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(ArrayMesh.method_surface_update_vertex_region, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_surface_update_attribute_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("surface_update_attribute_region")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3837166854)!
            }
            
        }
        
    }()
    
    /// 
    public final func surfaceUpdateAttributeRegion(surfIdx: Int32, offset: Int32, data: PackedByteArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: surfIdx) { pArg0 in
            withUnsafePointer(to: offset) { pArg1 in
                withUnsafePointer(to: data.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(ArrayMesh.method_surface_update_attribute_region, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_surface_update_skin_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("surface_update_skin_region")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3837166854)!
            }
            
        }
        
    }()
    
    /// 
    public final func surfaceUpdateSkinRegion(surfIdx: Int32, offset: Int32, data: PackedByteArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: surfIdx) { pArg0 in
            withUnsafePointer(to: offset) { pArg1 in
                withUnsafePointer(to: data.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(ArrayMesh.method_surface_update_skin_region, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_surface_get_array_len: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("surface_get_array_len")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the length in vertices of the vertex array in the requested surface (see ``addSurfaceFromArrays(primitive:arrays:blendShapes:lods:flags:)``).
    public final func surfaceGetArrayLen(surfIdx: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: surfIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ArrayMesh.method_surface_get_array_len, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_surface_get_array_index_len: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("surface_get_array_index_len")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the length in indices of the index array in the requested surface (see ``addSurfaceFromArrays(primitive:arrays:blendShapes:lods:flags:)``).
    public final func surfaceGetArrayIndexLen(surfIdx: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: surfIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ArrayMesh.method_surface_get_array_index_len, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_surface_get_format: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("surface_get_format")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3718287884)!
            }
            
        }
        
    }()
    
    /// Returns the format mask of the requested surface (see ``addSurfaceFromArrays(primitive:arrays:blendShapes:lods:flags:)``).
    public final func surfaceGetFormat(surfIdx: Int32) -> Mesh.ArrayFormat {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Mesh.ArrayFormat = Mesh.ArrayFormat ()
        withUnsafePointer(to: surfIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ArrayMesh.method_surface_get_format, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_surface_get_primitive_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("surface_get_primitive_type")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4141943888)!
            }
            
        }
        
    }()
    
    /// Returns the primitive type of the requested surface (see ``addSurfaceFromArrays(primitive:arrays:blendShapes:lods:flags:)``).
    public final func surfaceGetPrimitiveType(surfIdx: Int32) -> Mesh.PrimitiveType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: surfIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ArrayMesh.method_surface_get_primitive_type, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return Mesh.PrimitiveType (rawValue: _result)!
    }
    
    fileprivate static let method_surface_find_by_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("surface_find_by_name")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1321353865)!
            }
            
        }
        
    }()
    
    /// Returns the index of the first surface with this name held within this ``ArrayMesh``. If none are found, -1 is returned.
    public final func surfaceFindByName(_ name: String) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ArrayMesh.method_surface_find_by_name, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_surface_set_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("surface_set_name")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Sets a name for a given surface.
    public final func surfaceSetName(surfIdx: Int32, name: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: surfIdx) { pArg0 in
            let name = GString(name)
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ArrayMesh.method_surface_set_name, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_surface_get_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("surface_get_name")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Gets the name assigned to this surface.
    public final func surfaceGetName(surfIdx: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: surfIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ArrayMesh.method_surface_get_name, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_regen_normal_maps: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("regen_normal_maps")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Regenerates tangents for each of the ``ArrayMesh``'s surfaces.
    public final func regenNormalMaps() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ArrayMesh.method_regen_normal_maps, handle, nil, nil)
        
    }
    
    fileprivate static let method_lightmap_unwrap: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("lightmap_unwrap")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1476641071)!
            }
            
        }
        
    }()
    
    /// Performs a UV unwrap on the ``ArrayMesh`` to prepare the mesh for lightmapping.
    public final func lightmapUnwrap(transform: Transform3D, texelSize: Double) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: transform) { pArg0 in
            withUnsafePointer(to: texelSize) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ArrayMesh.method_lightmap_unwrap, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_set_custom_aabb: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_custom_aabb")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 259215842)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_custom_aabb(_ aabb: AABB) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: aabb) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ArrayMesh.method_set_custom_aabb, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_custom_aabb: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_custom_aabb")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1068685055)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_custom_aabb() -> AABB {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: AABB = AABB ()
        gi.object_method_bind_ptrcall(ArrayMesh.method_get_custom_aabb, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_shadow_mesh: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_shadow_mesh")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3377897901)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shadow_mesh(_ mesh: ArrayMesh?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mesh?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ArrayMesh.method_set_shadow_mesh, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_shadow_mesh: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_shadow_mesh")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3206942465)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_shadow_mesh() -> ArrayMesh? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(ArrayMesh.method_get_shadow_mesh, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
}

