// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

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
    override open class var godotClassName: StringName { "ArrayMesh" }
    
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
    
    /// An optional mesh which is used for rendering shadows and can be used for the depth prepass. Can be used to increase performance of shadow rendering by using a mesh that only contains vertex position data (without normals, UVs, colors, etc.).
    final public var shadowMesh: ArrayMesh? {
        get {
            return get_shadow_mesh ()
        }
        
        set {
            set_shadow_mesh (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_add_blend_shape: GDExtensionMethodBindPtr = {
        let methodName = StringName("add_blend_shape")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    /// Adds name for a blend shape that will be added with ``addSurfaceFromArrays(primitive:arrays:blendShapes:lods:flags:)``. Must be called before surface is added.
    public final func addBlendShape(name: StringName) {
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ArrayMesh.method_add_blend_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_blend_shape_count: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_blend_shape_count")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of blend shapes that the ``ArrayMesh`` holds.
    public final func getBlendShapeCount() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(ArrayMesh.method_get_blend_shape_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_blend_shape_name: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_blend_shape_name")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 659327637)!
            }
            
        }
        
    }()
    
    /// Returns the name of the blend shape at this index.
    public final func getBlendShapeName(index: Int32) -> StringName {
        let _result: StringName = StringName ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ArrayMesh.method_get_blend_shape_name, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_set_blend_shape_name: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_blend_shape_name")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3780747571)!
            }
            
        }
        
    }()
    
    /// Sets the name of the blend shape at this index.
    public final func setBlendShapeName(index: Int32, name: StringName) {
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ArrayMesh.method_set_blend_shape_name, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_clear_blend_shapes: GDExtensionMethodBindPtr = {
        let methodName = StringName("clear_blend_shapes")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all blend shapes from this ``ArrayMesh``.
    public final func clearBlendShapes() {
        gi.object_method_bind_ptrcall(ArrayMesh.method_clear_blend_shapes, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static var method_set_blend_shape_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_blend_shape_mode")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 227983991)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_blend_shape_mode(_ mode: Mesh.BlendShapeMode) {
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ArrayMesh.method_set_blend_shape_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_blend_shape_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_blend_shape_mode")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 836485024)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_blend_shape_mode() -> Mesh.BlendShapeMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(ArrayMesh.method_get_blend_shape_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return Mesh.BlendShapeMode (rawValue: _result)!
    }
    
    fileprivate static var method_add_surface_from_arrays: GDExtensionMethodBindPtr = {
        let methodName = StringName("add_surface_from_arrays")
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
    /// The `arrays` argument is an array of arrays. Each of the ``Mesh/ArrayType/arrayMax`` elements contains an array with some of the mesh data for this surface as described by the corresponding member of ``Mesh.ArrayType`` or `null` if it is not used by the surface. For example, `arrays[0]` is the array of vertices. That first vertex sub-array is always required; the others are optional. Adding an index array puts this surface into "index mode" where the vertex and other arrays become the sources of data and the index array defines the vertex order. All sub-arrays must have the same length as the vertex array (or be an exact multiple of the vertex array's length, when multiple elements of a sub-array correspond to a single vertex) or be empty, except for ``Mesh/ArrayType/arrayIndex`` if it is used.
    /// 
    /// The `blendShapes` argument is an array of vertex data for each blend shape. Each element is an array of the same structure as `arrays`, but ``Mesh/ArrayType/arrayVertex``, ``Mesh/ArrayType/arrayNormal``, and ``Mesh/ArrayType/arrayTangent`` are set if and only if they are set in `arrays` and all other entries are `null`.
    /// 
    /// The `lods` argument is a dictionary with float keys and ``PackedInt32Array`` values. Each entry in the dictionary represents an LOD level of the surface, where the value is the ``Mesh/ArrayType/arrayIndex`` array to use for the LOD level and the key is roughly proportional to the distance at which the LOD stats being used. I.e., increasing the key of an LOD also increases the distance that the objects has to be from the camera before the LOD is used.
    /// 
    /// The `flags` argument is the bitwise or of, as required: One value of ``Mesh.ArrayCustomFormat`` left shifted by `ARRAY_FORMAT_CUSTOMn_SHIFT` for each custom channel in use, ``Mesh/ArrayFormat/arrayFlagUseDynamicUpdate``, ``Mesh/ArrayFormat/arrayFlagUse8BoneWeights``, or ``Mesh/ArrayFormat/arrayFlagUsesEmptyVertexArray``.
    /// 
    /// > Note: When using indices, it is recommended to only use points, lines, or triangles.
    /// 
    public final func addSurfaceFromArrays(primitive: Mesh.PrimitiveType, arrays: GArray, blendShapes: VariantCollection<GArray> = VariantCollection<GArray> (), lods: GDictionary = GDictionary (), flags: Mesh.ArrayFormat = []) {
        withUnsafePointer(to: primitive.rawValue) { pArg0 in
            withUnsafePointer(to: arrays.content) { pArg1 in
                withUnsafePointer(to: blendShapes.array.content) { pArg2 in
                    withUnsafePointer(to: lods.content) { pArg3 in
                        withUnsafePointer(to: flags.rawValue) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(ArrayMesh.method_add_surface_from_arrays, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_clear_surfaces: GDExtensionMethodBindPtr = {
        let methodName = StringName("clear_surfaces")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all surfaces from this ``ArrayMesh``.
    public final func clearSurfaces() {
        gi.object_method_bind_ptrcall(ArrayMesh.method_clear_surfaces, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static var method_surface_update_vertex_region: GDExtensionMethodBindPtr = {
        let methodName = StringName("surface_update_vertex_region")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3837166854)!
            }
            
        }
        
    }()
    
    /// 
    public final func surfaceUpdateVertexRegion(surfIdx: Int32, offset: Int32, data: PackedByteArray) {
        withUnsafePointer(to: surfIdx) { pArg0 in
            withUnsafePointer(to: offset) { pArg1 in
                withUnsafePointer(to: data.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(ArrayMesh.method_surface_update_vertex_region, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_surface_update_attribute_region: GDExtensionMethodBindPtr = {
        let methodName = StringName("surface_update_attribute_region")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3837166854)!
            }
            
        }
        
    }()
    
    /// 
    public final func surfaceUpdateAttributeRegion(surfIdx: Int32, offset: Int32, data: PackedByteArray) {
        withUnsafePointer(to: surfIdx) { pArg0 in
            withUnsafePointer(to: offset) { pArg1 in
                withUnsafePointer(to: data.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(ArrayMesh.method_surface_update_attribute_region, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_surface_update_skin_region: GDExtensionMethodBindPtr = {
        let methodName = StringName("surface_update_skin_region")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3837166854)!
            }
            
        }
        
    }()
    
    /// 
    public final func surfaceUpdateSkinRegion(surfIdx: Int32, offset: Int32, data: PackedByteArray) {
        withUnsafePointer(to: surfIdx) { pArg0 in
            withUnsafePointer(to: offset) { pArg1 in
                withUnsafePointer(to: data.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(ArrayMesh.method_surface_update_skin_region, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_surface_get_array_len: GDExtensionMethodBindPtr = {
        let methodName = StringName("surface_get_array_len")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the length in vertices of the vertex array in the requested surface (see ``addSurfaceFromArrays(primitive:arrays:blendShapes:lods:flags:)``).
    public final func surfaceGetArrayLen(surfIdx: Int32) -> Int32 {
        var _result: Int32 = 0
        withUnsafePointer(to: surfIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ArrayMesh.method_surface_get_array_len, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_surface_get_array_index_len: GDExtensionMethodBindPtr = {
        let methodName = StringName("surface_get_array_index_len")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the length in indices of the index array in the requested surface (see ``addSurfaceFromArrays(primitive:arrays:blendShapes:lods:flags:)``).
    public final func surfaceGetArrayIndexLen(surfIdx: Int32) -> Int32 {
        var _result: Int32 = 0
        withUnsafePointer(to: surfIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ArrayMesh.method_surface_get_array_index_len, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_surface_get_format: GDExtensionMethodBindPtr = {
        let methodName = StringName("surface_get_format")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3718287884)!
            }
            
        }
        
    }()
    
    /// Returns the format mask of the requested surface (see ``addSurfaceFromArrays(primitive:arrays:blendShapes:lods:flags:)``).
    public final func surfaceGetFormat(surfIdx: Int32) -> Mesh.ArrayFormat {
        var _result: Mesh.ArrayFormat = Mesh.ArrayFormat ()
        withUnsafePointer(to: surfIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ArrayMesh.method_surface_get_format, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_surface_get_primitive_type: GDExtensionMethodBindPtr = {
        let methodName = StringName("surface_get_primitive_type")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4141943888)!
            }
            
        }
        
    }()
    
    /// Returns the primitive type of the requested surface (see ``addSurfaceFromArrays(primitive:arrays:blendShapes:lods:flags:)``).
    public final func surfaceGetPrimitiveType(surfIdx: Int32) -> Mesh.PrimitiveType {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: surfIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ArrayMesh.method_surface_get_primitive_type, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return Mesh.PrimitiveType (rawValue: _result)!
    }
    
    fileprivate static var method_surface_find_by_name: GDExtensionMethodBindPtr = {
        let methodName = StringName("surface_find_by_name")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1321353865)!
            }
            
        }
        
    }()
    
    /// Returns the index of the first surface with this name held within this ``ArrayMesh``. If none are found, -1 is returned.
    public final func surfaceFindByName(_ name: String) -> Int32 {
        var _result: Int32 = 0
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ArrayMesh.method_surface_find_by_name, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_surface_set_name: GDExtensionMethodBindPtr = {
        let methodName = StringName("surface_set_name")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Sets a name for a given surface.
    public final func surfaceSetName(surfIdx: Int32, name: String) {
        withUnsafePointer(to: surfIdx) { pArg0 in
            let name = GString(name)
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ArrayMesh.method_surface_set_name, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_surface_get_name: GDExtensionMethodBindPtr = {
        let methodName = StringName("surface_get_name")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Gets the name assigned to this surface.
    public final func surfaceGetName(surfIdx: Int32) -> String {
        let _result = GString ()
        withUnsafePointer(to: surfIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ArrayMesh.method_surface_get_name, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static var method_regen_normal_maps: GDExtensionMethodBindPtr = {
        let methodName = StringName("regen_normal_maps")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Regenerates tangents for each of the ``ArrayMesh``'s surfaces.
    public final func regenNormalMaps() {
        gi.object_method_bind_ptrcall(ArrayMesh.method_regen_normal_maps, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static var method_lightmap_unwrap: GDExtensionMethodBindPtr = {
        let methodName = StringName("lightmap_unwrap")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1476641071)!
            }
            
        }
        
    }()
    
    /// Performs a UV unwrap on the ``ArrayMesh`` to prepare the mesh for lightmapping.
    public final func lightmapUnwrap(transform: Transform3D, texelSize: Double) -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: transform) { pArg0 in
            withUnsafePointer(to: texelSize) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ArrayMesh.method_lightmap_unwrap, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static var method_set_custom_aabb: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_custom_aabb")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 259215842)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_custom_aabb(_ aabb: AABB) {
        withUnsafePointer(to: aabb) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ArrayMesh.method_set_custom_aabb, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_custom_aabb: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_custom_aabb")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1068685055)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_custom_aabb() -> AABB {
        var _result: AABB = AABB ()
        gi.object_method_bind_ptrcall(ArrayMesh.method_get_custom_aabb, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_shadow_mesh: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_shadow_mesh")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3377897901)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shadow_mesh(_ mesh: ArrayMesh?) {
        withUnsafePointer(to: mesh?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ArrayMesh.method_set_shadow_mesh, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_shadow_mesh: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_shadow_mesh")
        return withUnsafePointer(to: &ArrayMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3206942465)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_shadow_mesh() -> ArrayMesh? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(ArrayMesh.method_get_shadow_mesh, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
}
