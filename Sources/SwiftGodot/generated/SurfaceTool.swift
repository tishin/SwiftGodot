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


/// Helper tool to create geometry.
/// 
/// The ``SurfaceTool`` is used to construct a ``Mesh`` by specifying vertex attributes individually. It can be used to construct a ``Mesh`` from a script. All properties except indices need to be added before calling ``addVertex(_:)``. For example, to add vertex colors and UVs:
/// 
/// The above ``SurfaceTool`` now contains one vertex of a triangle which has a UV coordinate and a specified ``Color``. If another vertex were added without calling ``setUv(_:)`` or ``setColor(_:)``, then the last values would be used.
/// 
/// Vertex attributes must be passed **before** calling ``addVertex(_:)``. Failure to do so will result in an error when committing the vertex information to a mesh.
/// 
/// Additionally, the attributes used before the first vertex is added determine the format of the mesh. For example, if you only add UVs to the first vertex, you cannot add color to any of the subsequent vertices.
/// 
/// See also ``ArrayMesh``, ``ImmediateMesh`` and ``MeshDataTool`` for procedural geometry generation.
/// 
/// > Note: Godot uses clockwise <a href="https://learnopengl.com/Advanced-OpenGL/Face-culling">winding order</a> for front faces of triangle primitive modes.
/// 
open class SurfaceTool: RefCounted {
    private static var className = StringName("SurfaceTool")
    override open class var godotClassName: StringName { className }
    public enum CustomFormat: Int64, CaseIterable {
        /// Limits range of data passed to ``setCustom(channelIndex:customColor:)`` to unsigned normalized 0 to 1 stored in 8 bits per channel. See ``Mesh/ArrayCustomFormat/rgba8Unorm``.
        case rgba8Unorm = 0 // CUSTOM_RGBA8_UNORM
        /// Limits range of data passed to ``setCustom(channelIndex:customColor:)`` to signed normalized -1 to 1 stored in 8 bits per channel. See ``Mesh/ArrayCustomFormat/rgba8Snorm``.
        case rgba8Snorm = 1 // CUSTOM_RGBA8_SNORM
        /// Stores data passed to ``setCustom(channelIndex:customColor:)`` as half precision floats, and uses only red and green color channels. See ``Mesh/ArrayCustomFormat/rgHalf``.
        case rgHalf = 2 // CUSTOM_RG_HALF
        /// Stores data passed to ``setCustom(channelIndex:customColor:)`` as half precision floats and uses all color channels. See ``Mesh/ArrayCustomFormat/rgbaHalf``.
        case rgbaHalf = 3 // CUSTOM_RGBA_HALF
        /// Stores data passed to ``setCustom(channelIndex:customColor:)`` as full precision floats, and uses only red color channel. See ``Mesh/ArrayCustomFormat/rFloat``.
        case rFloat = 4 // CUSTOM_R_FLOAT
        /// Stores data passed to ``setCustom(channelIndex:customColor:)`` as full precision floats, and uses only red and green color channels. See ``Mesh/ArrayCustomFormat/rgFloat``.
        case rgFloat = 5 // CUSTOM_RG_FLOAT
        /// Stores data passed to ``setCustom(channelIndex:customColor:)`` as full precision floats, and uses only red, green and blue color channels. See ``Mesh/ArrayCustomFormat/rgbFloat``.
        case rgbFloat = 6 // CUSTOM_RGB_FLOAT
        /// Stores data passed to ``setCustom(channelIndex:customColor:)`` as full precision floats, and uses all color channels. See ``Mesh/ArrayCustomFormat/rgbaFloat``.
        case rgbaFloat = 7 // CUSTOM_RGBA_FLOAT
        /// Used to indicate a disabled custom channel.
        case max = 8 // CUSTOM_MAX
    }
    
    public enum SkinWeightCount: Int64, CaseIterable {
        /// Each individual vertex can be influenced by only 4 bone weights.
        case skin4Weights = 0 // SKIN_4_WEIGHTS
        /// Each individual vertex can be influenced by up to 8 bone weights.
        case skin8Weights = 1 // SKIN_8_WEIGHTS
    }
    
    /* Methods */
    fileprivate static let method_set_skin_weight_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_skin_weight_count")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 618679515)!
            }
            
        }
        
    }()
    
    /// Set to ``SkinWeightCount/skin8Weights`` to indicate that up to 8 bone influences per vertex may be used.
    /// 
    /// By default, only 4 bone influences are used (``SkinWeightCount/skin4Weights``).
    /// 
    /// > Note: This function takes an enum, not the exact number of weights.
    /// 
    public final func setSkinWeightCount(_ count: SurfaceTool.SkinWeightCount) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: count.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SurfaceTool.method_set_skin_weight_count, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_skin_weight_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_skin_weight_count")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1072401130)!
            }
            
        }
        
    }()
    
    /// By default, returns ``SkinWeightCount/skin4Weights`` to indicate only 4 bone influences per vertex are used.
    /// 
    /// Returns ``SkinWeightCount/skin8Weights`` if up to 8 influences are used.
    /// 
    /// > Note: This function returns an enum, not the exact number of weights.
    /// 
    public final func getSkinWeightCount() -> SurfaceTool.SkinWeightCount {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(SurfaceTool.method_get_skin_weight_count, handle, nil, &_result)
        return SurfaceTool.SkinWeightCount (rawValue: _result)!
    }
    
    fileprivate static let method_set_custom_format: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_custom_format")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4087759856)!
            }
            
        }
        
    }()
    
    /// Sets the color format for this custom `channelIndex`. Use ``CustomFormat/max`` to disable.
    /// 
    /// Must be invoked after ``begin(primitive:)`` and should be set before ``commit(existing:flags:)`` or ``commitToArrays()``.
    /// 
    public final func setCustomFormat(channelIndex: Int32, format: SurfaceTool.CustomFormat) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: channelIndex) { pArg0 in
            withUnsafePointer(to: format.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SurfaceTool.method_set_custom_format, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_custom_format: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_custom_format")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 839863283)!
            }
            
        }
        
    }()
    
    /// Returns the format for custom `channelIndex` (currently up to 4). Returns ``CustomFormat/max`` if this custom channel is unused.
    public final func getCustomFormat(channelIndex: Int32) -> SurfaceTool.CustomFormat {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: channelIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SurfaceTool.method_get_custom_format, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return SurfaceTool.CustomFormat (rawValue: _result)!
    }
    
    fileprivate static let method_begin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("begin")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2230304113)!
            }
            
        }
        
    }()
    
    /// Called before adding any vertices. Takes the primitive type as an argument (e.g. ``Mesh/PrimitiveType/triangles``).
    public final func begin(primitive: Mesh.PrimitiveType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: primitive.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SurfaceTool.method_begin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_vertex: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_vertex")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// Specifies the position of current vertex. Should be called after specifying other vertex properties (e.g. Color, UV).
    public final func addVertex(_ vertex: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: vertex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SurfaceTool.method_add_vertex, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_color")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    /// Specifies a ``Color`` to use for the _next_ vertex. If every vertex needs to have this information set and you fail to submit it for the first vertex, this information may not be used at all.
    /// 
    /// > Note: The material must have ``BaseMaterial3D/vertexColorUseAsAlbedo`` enabled for the vertex color to be visible.
    /// 
    public final func setColor(_ color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SurfaceTool.method_set_color, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_normal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_normal")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// Specifies a normal to use for the _next_ vertex. If every vertex needs to have this information set and you fail to submit it for the first vertex, this information may not be used at all.
    public final func setNormal(_ normal: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: normal) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SurfaceTool.method_set_normal, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_tangent: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tangent")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3505987427)!
            }
            
        }
        
    }()
    
    /// Specifies a tangent to use for the _next_ vertex. If every vertex needs to have this information set and you fail to submit it for the first vertex, this information may not be used at all.
    public final func setTangent(_ tangent: Plane) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: tangent) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SurfaceTool.method_set_tangent, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_uv: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_uv")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    /// Specifies a set of UV coordinates to use for the _next_ vertex. If every vertex needs to have this information set and you fail to submit it for the first vertex, this information may not be used at all.
    public final func setUv(_ uv: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: uv) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SurfaceTool.method_set_uv, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_uv2: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_uv2")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    /// Specifies an optional second set of UV coordinates to use for the _next_ vertex. If every vertex needs to have this information set and you fail to submit it for the first vertex, this information may not be used at all.
    public final func setUv2(_ uv2: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: uv2) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SurfaceTool.method_set_uv2, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_bones: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bones")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3614634198)!
            }
            
        }
        
    }()
    
    /// Specifies an array of bones to use for the _next_ vertex. `bones` must contain 4 integers.
    public final func setBones(_ bones: PackedInt32Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: bones.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SurfaceTool.method_set_bones, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_weights: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_weights")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2899603908)!
            }
            
        }
        
    }()
    
    /// Specifies weight values to use for the _next_ vertex. `weights` must contain 4 values. If every vertex needs to have this information set and you fail to submit it for the first vertex, this information may not be used at all.
    public final func setWeights(_ weights: PackedFloat32Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: weights.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SurfaceTool.method_set_weights, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_custom: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_custom")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2878471219)!
            }
            
        }
        
    }()
    
    /// Sets the custom value on this vertex for `channelIndex`.
    /// 
    /// ``setCustomFormat(channelIndex:format:)`` must be called first for this `channelIndex`. Formats which are not RGBA will ignore other color channels.
    /// 
    public final func setCustom(channelIndex: Int32, customColor: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: channelIndex) { pArg0 in
            withUnsafePointer(to: customColor) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SurfaceTool.method_set_custom, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_smooth_group: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_smooth_group")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Specifies the smooth group to use for the _next_ vertex. If this is never called, all vertices will have the default smooth group of `0` and will be smoothed with adjacent vertices of the same group. To produce a mesh with flat normals, set the smooth group to `-1`.
    /// 
    /// > Note: This function actually takes a `uint32_t`, so C# users should use `uint32.MaxValue` instead of `-1` to produce a mesh with flat normals.
    /// 
    public final func setSmoothGroup(index: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SurfaceTool.method_set_smooth_group, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_triangle_fan: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_triangle_fan")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2235017613)!
            }
            
        }
        
    }()
    
    /// Inserts a triangle fan made of array data into ``Mesh`` being constructed.
    /// 
    /// Requires the primitive type be set to ``Mesh/PrimitiveType/triangles``.
    /// 
    public final func addTriangleFan(vertices: PackedVector3Array, uvs: PackedVector2Array = PackedVector2Array(), colors: PackedColorArray = PackedColorArray(), uv2s: PackedVector2Array = PackedVector2Array(), normals: PackedVector3Array = PackedVector3Array(), tangents: TypedArray<Plane> = TypedArray<Plane> ()) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: vertices.content) { pArg0 in
            withUnsafePointer(to: uvs.content) { pArg1 in
                withUnsafePointer(to: colors.content) { pArg2 in
                    withUnsafePointer(to: uv2s.content) { pArg3 in
                        withUnsafePointer(to: normals.content) { pArg4 in
                            withUnsafePointer(to: tangents.array.content) { pArg5 in
                                withUnsafePointer(to: UnsafeRawPointersN6(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5)) { pArgs in
                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 6) { pArgs in
                                        gi.object_method_bind_ptrcall(SurfaceTool.method_add_triangle_fan, handle, pArgs, nil)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_index")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Adds a vertex to index array if you are using indexed vertices. Does not need to be called before adding vertices.
    public final func addIndex(_ index: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SurfaceTool.method_add_index, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("index")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Shrinks the vertex array by creating an index array. This can improve performance by avoiding vertex reuse.
    public final func index() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(SurfaceTool.method_index, handle, nil, nil)
        
    }
    
    fileprivate static let method_deindex: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("deindex")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes the index array by expanding the vertex array.
    public final func deindex() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(SurfaceTool.method_deindex, handle, nil, nil)
        
    }
    
    fileprivate static let method_generate_normals: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("generate_normals")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 107499316)!
            }
            
        }
        
    }()
    
    /// Generates normals from vertices so you do not have to do it manually. If `flip` is `true`, the resulting normals will be inverted. ``generateNormals(flip:)`` should be called _after_ generating geometry and _before_ committing the mesh using ``commit(existing:flags:)`` or ``commitToArrays()``. For correct display of normal-mapped surfaces, you will also have to generate tangents using ``generateTangents()``.
    /// 
    /// > Note: ``generateNormals(flip:)`` only works if the primitive type is set to ``Mesh/PrimitiveType/triangles``.
    /// 
    /// > Note: ``generateNormals(flip:)`` takes smooth groups into account. To generate smooth normals, set the smooth group to a value greater than or equal to `0` using ``setSmoothGroup(index:)`` or leave the smooth group at the default of `0`. To generate flat normals, set the smooth group to `-1` using ``setSmoothGroup(index:)`` prior to adding vertices.
    /// 
    public final func generateNormals(flip: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: flip) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SurfaceTool.method_generate_normals, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_generate_tangents: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("generate_tangents")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Generates a tangent vector for each vertex. Requires that each vertex already has UVs and normals set (see ``generateNormals(flip:)``).
    public final func generateTangents() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(SurfaceTool.method_generate_tangents, handle, nil, nil)
        
    }
    
    fileprivate static let method_optimize_indices_for_cache: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("optimize_indices_for_cache")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Optimizes triangle sorting for performance. Requires that ``getPrimitiveType()`` is ``Mesh/PrimitiveType/triangles``.
    public final func optimizeIndicesForCache() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(SurfaceTool.method_optimize_indices_for_cache, handle, nil, nil)
        
    }
    
    fileprivate static let method_get_aabb: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_aabb")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1068685055)!
            }
            
        }
        
    }()
    
    /// Returns the axis-aligned bounding box of the vertex positions.
    public final func getAabb() -> AABB {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: AABB = AABB ()
        gi.object_method_bind_ptrcall(SurfaceTool.method_get_aabb, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_generate_lod: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("generate_lod")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1938056459)!
            }
            
        }
        
    }()
    
    /// Generates an LOD for a given `ndThreshold` in linear units (square root of quadric error metric), using at most `targetIndexCount` indices.
    public final func generateLod(ndThreshold: Double, targetIndexCount: Int32 = 3) -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt32Array = PackedInt32Array ()
        withUnsafePointer(to: ndThreshold) { pArg0 in
            withUnsafePointer(to: targetIndexCount) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SurfaceTool.method_generate_lod, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_material: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_material")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2757459619)!
            }
            
        }
        
    }()
    
    /// Sets ``Material`` to be used by the ``Mesh`` you are constructing.
    public final func setMaterial(_ material: Material?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: material?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SurfaceTool.method_set_material, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_primitive_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_primitive_type")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 768822145)!
            }
            
        }
        
    }()
    
    /// Returns the type of mesh geometry, such as ``Mesh/PrimitiveType/triangles``.
    public final func getPrimitiveType() -> Mesh.PrimitiveType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(SurfaceTool.method_get_primitive_type, handle, nil, &_result)
        return Mesh.PrimitiveType (rawValue: _result)!
    }
    
    fileprivate static let method_clear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clear all information passed into the surface tool so far.
    public final func clear() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(SurfaceTool.method_clear, handle, nil, nil)
        
    }
    
    fileprivate static let method_create_from: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_from")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1767024570)!
            }
            
        }
        
    }()
    
    /// Creates a vertex array from an existing ``Mesh``.
    public final func createFrom(existing: Mesh?, surface: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: existing?.handle) { pArg0 in
            withUnsafePointer(to: surface) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SurfaceTool.method_create_from, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_create_from_arrays: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_from_arrays")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1894639680)!
            }
            
        }
        
    }()
    
    /// Creates this SurfaceTool from existing vertex arrays such as returned by ``commitToArrays()``, ``Mesh/surfaceGetArrays(surfIdx:)``, ``Mesh/surfaceGetBlendShapeArrays(surfIdx:)``, ``ImporterMesh/getSurfaceArrays(surfaceIdx:)``, and ``ImporterMesh/getSurfaceBlendShapeArrays(surfaceIdx:blendShapeIdx:)``. `primitiveType` controls the type of mesh data, defaulting to ``Mesh/PrimitiveType/triangles``.
    public final func createFromArrays(_ arrays: VariantArray, primitiveType: Mesh.PrimitiveType = .triangles) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: arrays.content) { pArg0 in
            withUnsafePointer(to: primitiveType.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SurfaceTool.method_create_from_arrays, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_create_from_blend_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_from_blend_shape")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1306185582)!
            }
            
        }
        
    }()
    
    /// Creates a vertex array from the specified blend shape of an existing ``Mesh``. This can be used to extract a specific pose from a blend shape.
    public final func createFromBlendShape(existing: Mesh?, surface: Int32, blendShape: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: existing?.handle) { pArg0 in
            withUnsafePointer(to: surface) { pArg1 in
                let blendShape = GString(blendShape)
                withUnsafePointer(to: blendShape.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(SurfaceTool.method_create_from_blend_shape, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_append_from: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("append_from")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2217967155)!
            }
            
        }
        
    }()
    
    /// Append vertices from a given ``Mesh`` surface onto the current vertex array with specified ``Transform3D``.
    public final func appendFrom(existing: Mesh?, surface: Int32, transform: Transform3D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: existing?.handle) { pArg0 in
            withUnsafePointer(to: surface) { pArg1 in
                withUnsafePointer(to: transform) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(SurfaceTool.method_append_from, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_commit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("commit")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4107864055)!
            }
            
        }
        
    }()
    
    /// Returns a constructed ``ArrayMesh`` from current information passed in. If an existing ``ArrayMesh`` is passed in as an argument, will add an extra surface to the existing ``ArrayMesh``.
    /// 
    /// The `flags` argument can be the bitwise OR of ``Mesh/ArrayFormat/flagUseDynamicUpdate``, ``Mesh/ArrayFormat/flagUse8BoneWeights``, or ``Mesh/ArrayFormat/flagUsesEmptyVertexArray``.
    /// 
    public final func commit(existing: ArrayMesh? = nil, flags: UInt = 0) -> ArrayMesh? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: existing?.handle) { pArg0 in
            withUnsafePointer(to: flags) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(SurfaceTool.method_commit, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_commit_to_arrays: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("commit_to_arrays")
        return withUnsafePointer(to: &SurfaceTool.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Commits the data to the same format used by ``ArrayMesh/addSurfaceFromArrays(primitive:arrays:blendShapes:lods:flags:)``, ``ImporterMesh/addSurface(primitive:arrays:blendShapes:lods:material:name:flags:)``, and ``createFromArrays(_:primitiveType:)``. This way you can further process the mesh data using the ``ArrayMesh`` or ``ImporterMesh`` APIs.
    public final func commitToArrays() -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        gi.object_method_bind_ptrcall(SurfaceTool.method_commit_to_arrays, handle, nil, &_result.content)
        return _result
    }
    
}

