// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A ``Resource`` that contains vertex array-based geometry during the import process.
/// 
/// ImporterMesh is a type of ``Resource`` analogous to ``ArrayMesh``. It contains vertex array-based geometry, divided in _surfaces_. Each surface contains a completely separate array and a material used to draw it. Design wise, a mesh with multiple surfaces is preferred to a single surface, because objects created in 3D editing software commonly contain multiple materials.
/// 
/// Unlike its runtime counterpart, ``ImporterMesh`` contains mesh data before various import steps, such as lod and shadow mesh generation, have taken place. Modify surface data by calling ``clear()``, followed by ``addSurface(primitive:arrays:blendShapes:lods:material:name:flags:)`` for each surface.
/// 
open class ImporterMesh: Resource {
    override open class var godotClassName: StringName { "ImporterMesh" }
    /* Methods */
    fileprivate static var method_add_blend_shape: GDExtensionMethodBindPtr = {
        let methodName = StringName("add_blend_shape")
        return withUnsafePointer(to: &ImporterMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Adds name for a blend shape that will be added with ``addSurface(primitive:arrays:blendShapes:lods:material:name:flags:)``. Must be called before surface is added.
    public final func addBlendShape(name: String) {
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImporterMesh.method_add_blend_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_blend_shape_count: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_blend_shape_count")
        return withUnsafePointer(to: &ImporterMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of blend shapes that the mesh holds.
    public final func getBlendShapeCount() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(ImporterMesh.method_get_blend_shape_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_blend_shape_name: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_blend_shape_name")
        return withUnsafePointer(to: &ImporterMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the name of the blend shape at this index.
    public final func getBlendShapeName(blendShapeIdx: Int32) -> String {
        let _result = GString ()
        withUnsafePointer(to: blendShapeIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImporterMesh.method_get_blend_shape_name, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static var method_set_blend_shape_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_blend_shape_mode")
        return withUnsafePointer(to: &ImporterMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 227983991)!
            }
            
        }
        
    }()
    
    /// Sets the blend shape mode to one of ``Mesh.BlendShapeMode``.
    public final func setBlendShapeMode(_ mode: Mesh.BlendShapeMode) {
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImporterMesh.method_set_blend_shape_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_blend_shape_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_blend_shape_mode")
        return withUnsafePointer(to: &ImporterMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 836485024)!
            }
            
        }
        
    }()
    
    /// Returns the blend shape mode for this Mesh.
    public final func getBlendShapeMode() -> Mesh.BlendShapeMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(ImporterMesh.method_get_blend_shape_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return Mesh.BlendShapeMode (rawValue: _result)!
    }
    
    fileprivate static var method_add_surface: GDExtensionMethodBindPtr = {
        let methodName = StringName("add_surface")
        return withUnsafePointer(to: &ImporterMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740448849)!
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
    public final func addSurface(primitive: Mesh.PrimitiveType, arrays: GArray, blendShapes: VariantCollection<GArray> = VariantCollection<GArray> (), lods: GDictionary = GDictionary (), material: Material? = nil, name: String = "", flags: UInt = 0) {
        withUnsafePointer(to: primitive.rawValue) { pArg0 in
            withUnsafePointer(to: arrays.content) { pArg1 in
                withUnsafePointer(to: blendShapes.array.content) { pArg2 in
                    withUnsafePointer(to: lods.content) { pArg3 in
                        withUnsafePointer(to: material?.handle) { pArg4 in
                            let name = GString(name)
                            withUnsafePointer(to: name.content) { pArg5 in
                                withUnsafePointer(to: flags) { pArg6 in
                                    withUnsafePointer(to: UnsafeRawPointersN7(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6)) { pArgs in
                                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 7) { pArgs in
                                            gi.object_method_bind_ptrcall(ImporterMesh.method_add_surface, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_surface_count: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_surface_count")
        return withUnsafePointer(to: &ImporterMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of surfaces that the mesh holds.
    public final func getSurfaceCount() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(ImporterMesh.method_get_surface_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_surface_primitive_type: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_surface_primitive_type")
        return withUnsafePointer(to: &ImporterMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3552571330)!
            }
            
        }
        
    }()
    
    /// Returns the primitive type of the requested surface (see ``addSurface(primitive:arrays:blendShapes:lods:material:name:flags:)``).
    public final func getSurfacePrimitiveType(surfaceIdx: Int32) -> Mesh.PrimitiveType {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: surfaceIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImporterMesh.method_get_surface_primitive_type, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return Mesh.PrimitiveType (rawValue: _result)!
    }
    
    fileprivate static var method_get_surface_name: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_surface_name")
        return withUnsafePointer(to: &ImporterMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Gets the name assigned to this surface.
    public final func getSurfaceName(surfaceIdx: Int32) -> String {
        let _result = GString ()
        withUnsafePointer(to: surfaceIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImporterMesh.method_get_surface_name, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static var method_get_surface_arrays: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_surface_arrays")
        return withUnsafePointer(to: &ImporterMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 663333327)!
            }
            
        }
        
    }()
    
    /// Returns the arrays for the vertices, normals, UVs, etc. that make up the requested surface. See ``addSurface(primitive:arrays:blendShapes:lods:material:name:flags:)``.
    public final func getSurfaceArrays(surfaceIdx: Int32) -> GArray {
        let _result: GArray = GArray ()
        withUnsafePointer(to: surfaceIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImporterMesh.method_get_surface_arrays, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_surface_blend_shape_arrays: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_surface_blend_shape_arrays")
        return withUnsafePointer(to: &ImporterMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2345056839)!
            }
            
        }
        
    }()
    
    /// Returns a single set of blend shape arrays for the requested blend shape index for a surface.
    public final func getSurfaceBlendShapeArrays(surfaceIdx: Int32, blendShapeIdx: Int32) -> GArray {
        let _result: GArray = GArray ()
        withUnsafePointer(to: surfaceIdx) { pArg0 in
            withUnsafePointer(to: blendShapeIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ImporterMesh.method_get_surface_blend_shape_arrays, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_surface_lod_count: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_surface_lod_count")
        return withUnsafePointer(to: &ImporterMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the number of lods that the mesh holds on a given surface.
    public final func getSurfaceLodCount(surfaceIdx: Int32) -> Int32 {
        var _result: Int32 = 0
        withUnsafePointer(to: surfaceIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImporterMesh.method_get_surface_lod_count, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_surface_lod_size: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_surface_lod_size")
        return withUnsafePointer(to: &ImporterMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3085491603)!
            }
            
        }
        
    }()
    
    /// Returns the screen ratio which activates a lod for a surface.
    public final func getSurfaceLodSize(surfaceIdx: Int32, lodIdx: Int32) -> Double {
        var _result: Double = 0.0
        withUnsafePointer(to: surfaceIdx) { pArg0 in
            withUnsafePointer(to: lodIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ImporterMesh.method_get_surface_lod_size, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_surface_lod_indices: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_surface_lod_indices")
        return withUnsafePointer(to: &ImporterMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1265128013)!
            }
            
        }
        
    }()
    
    /// Returns the index buffer of a lod for a surface.
    public final func getSurfaceLodIndices(surfaceIdx: Int32, lodIdx: Int32) -> PackedInt32Array {
        let _result: PackedInt32Array = PackedInt32Array ()
        withUnsafePointer(to: surfaceIdx) { pArg0 in
            withUnsafePointer(to: lodIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ImporterMesh.method_get_surface_lod_indices, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_surface_material: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_surface_material")
        return withUnsafePointer(to: &ImporterMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2897466400)!
            }
            
        }
        
    }()
    
    /// Returns a ``Material`` in a given surface. Surface is rendered using this material.
    public final func getSurfaceMaterial(surfaceIdx: Int32) -> Material? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: surfaceIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImporterMesh.method_get_surface_material, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_get_surface_format: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_surface_format")
        return withUnsafePointer(to: &ImporterMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the format of the surface that the mesh holds.
    public final func getSurfaceFormat(surfaceIdx: Int32) -> UInt {
        var _result: UInt = 0
        withUnsafePointer(to: surfaceIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImporterMesh.method_get_surface_format, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_set_surface_name: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_surface_name")
        return withUnsafePointer(to: &ImporterMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Sets a name for a given surface.
    public final func setSurfaceName(surfaceIdx: Int32, name: String) {
        withUnsafePointer(to: surfaceIdx) { pArg0 in
            let name = GString(name)
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ImporterMesh.method_set_surface_name, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_surface_material: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_surface_material")
        return withUnsafePointer(to: &ImporterMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3671737478)!
            }
            
        }
        
    }()
    
    /// Sets a ``Material`` for a given surface. Surface will be rendered using this material.
    public final func setSurfaceMaterial(surfaceIdx: Int32, material: Material?) {
        withUnsafePointer(to: surfaceIdx) { pArg0 in
            withUnsafePointer(to: material?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ImporterMesh.method_set_surface_material, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_generate_lods: GDExtensionMethodBindPtr = {
        let methodName = StringName("generate_lods")
        return withUnsafePointer(to: &ImporterMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2491878677)!
            }
            
        }
        
    }()
    
    /// Generates all lods for this ImporterMesh.
    /// 
    /// `normalMergeAngle` and `normalSplitAngle` are in degrees and used in the same way as the importer settings in `lods`. As a good default, use 25 and 60 respectively.
    /// 
    /// The number of generated lods can be accessed using ``getSurfaceLodCount(surfaceIdx:)``, and each LOD is available in ``getSurfaceLodSize(surfaceIdx:lodIdx:)`` and ``getSurfaceLodIndices(surfaceIdx:lodIdx:)``.
    /// 
    /// `boneTransformArray` is an ``GArray`` which can be either empty or contain ``Transform3D``s which, for each of the mesh's bone IDs, will apply mesh skinning when generating the LOD mesh variations. This is usually used to account for discrepancies in scale between the mesh itself and its skinning data.
    /// 
    public final func generateLods(normalMergeAngle: Double, normalSplitAngle: Double, boneTransformArray: GArray) {
        withUnsafePointer(to: normalMergeAngle) { pArg0 in
            withUnsafePointer(to: normalSplitAngle) { pArg1 in
                withUnsafePointer(to: boneTransformArray.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(ImporterMesh.method_generate_lods, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_mesh: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_mesh")
        return withUnsafePointer(to: &ImporterMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1457573577)!
            }
            
        }
        
    }()
    
    /// Returns the mesh data represented by this ``ImporterMesh`` as a usable ``ArrayMesh``.
    /// 
    /// This method caches the returned mesh, and subsequent calls will return the cached data until ``clear()`` is called.
    /// 
    /// If not yet cached and `baseMesh` is provided, `baseMesh` will be used and mutated.
    /// 
    public final func getMesh(baseMesh: ArrayMesh? = nil) -> ArrayMesh? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: baseMesh?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImporterMesh.method_get_mesh, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_clear: GDExtensionMethodBindPtr = {
        let methodName = StringName("clear")
        return withUnsafePointer(to: &ImporterMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all surfaces and blend shapes from this ``ImporterMesh``.
    public final func clear() {
        gi.object_method_bind_ptrcall(ImporterMesh.method_clear, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static var method_set_lightmap_size_hint: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_lightmap_size_hint")
        return withUnsafePointer(to: &ImporterMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1130785943)!
            }
            
        }
        
    }()
    
    /// Sets the size hint of this mesh for lightmap-unwrapping in UV-space.
    public final func setLightmapSizeHint(size: Vector2i) {
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImporterMesh.method_set_lightmap_size_hint, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_lightmap_size_hint: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_lightmap_size_hint")
        return withUnsafePointer(to: &ImporterMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3690982128)!
            }
            
        }
        
    }()
    
    /// Returns the size hint of this mesh for lightmap-unwrapping in UV-space.
    public final func getLightmapSizeHint() -> Vector2i {
        var _result: Vector2i = Vector2i ()
        gi.object_method_bind_ptrcall(ImporterMesh.method_get_lightmap_size_hint, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

