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


/// Container for parsed source geometry data used in navigation mesh baking.
/// 
/// Container for parsed source geometry data used in navigation mesh baking.
open class NavigationMeshSourceGeometryData3D: Resource {
    private static var className = StringName("NavigationMeshSourceGeometryData3D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    final public var vertices: PackedFloat32Array {
        get {
            return get_vertices ()
        }
        
        set {
            set_vertices (newValue)
        }
        
    }
    
    final public var indices: PackedInt32Array {
        get {
            return get_indices ()
        }
        
        set {
            set_indices (newValue)
        }
        
    }
    
    final public var projectedObstructions: VariantArray {
        get {
            return get_projected_obstructions ()
        }
        
        set {
            set_projected_obstructions (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_vertices: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_vertices")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2899603908)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the parsed source geometry data vertices. The vertices need to be matched with appropriated indices.
    /// 
    /// > Warning: Inappropriate data can crash the baking process of the involved third-party libraries.
    /// 
    fileprivate final func set_vertices(_ vertices: PackedFloat32Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: vertices.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData3D.method_set_vertices, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_vertices: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_vertices")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 675695659)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns the parsed source geometry data vertices array.
    fileprivate final func get_vertices() -> PackedFloat32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedFloat32Array = PackedFloat32Array ()
        gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData3D.method_get_vertices, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_indices: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_indices")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3614634198)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the parsed source geometry data indices. The indices need to be matched with appropriated vertices.
    /// 
    /// > Warning: Inappropriate data can crash the baking process of the involved third-party libraries.
    /// 
    fileprivate final func set_indices(_ indices: PackedInt32Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: indices.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData3D.method_set_indices, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_indices: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_indices")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1930428628)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns the parsed source geometry data indices array.
    fileprivate final func get_indices() -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData3D.method_get_indices, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_append_arrays: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("append_arrays")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3117535015)!
            }
            
        }
        
    }()
    
    /// Appends arrays of `vertices` and `indices` at the end of the existing arrays. Adds the existing index as an offset to the appended indices.
    public final func appendArrays(vertices: PackedFloat32Array, indices: PackedInt32Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: vertices.content) { pArg0 in
            withUnsafePointer(to: indices.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData3D.method_append_arrays, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_clear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears the internal data.
    public final func clear() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData3D.method_clear, handle, nil, nil)
        
    }
    
    fileprivate static let method_has_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_data")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Returns `true` when parsed source geometry data exists.
    public final func hasData() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData3D.method_has_data, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_add_mesh: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_mesh")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 975462459)!
            }
            
        }
        
    }()
    
    /// Adds the geometry data of a ``Mesh`` resource to the navigation mesh baking data. The mesh must have valid triangulated mesh data to be considered. Since ``NavigationMesh`` resources have no transform, all vertex positions need to be offset by the node's transform using `xform`.
    public final func addMesh(_ mesh: Mesh?, xform: Transform3D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mesh?.handle) { pArg0 in
            withUnsafePointer(to: xform) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData3D.method_add_mesh, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_mesh_array: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_mesh_array")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4235710913)!
            }
            
        }
        
    }()
    
    /// Adds an ``VariantArray`` the size of ``Mesh/ArrayType/max`` and with vertices at index ``Mesh/ArrayType/vertex`` and indices at index ``Mesh/ArrayType/index`` to the navigation mesh baking data. The array must have valid triangulated mesh data to be considered. Since ``NavigationMesh`` resources have no transform, all vertex positions need to be offset by the node's transform using `xform`.
    public final func addMeshArray(_ meshArray: VariantArray, xform: Transform3D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: meshArray.content) { pArg0 in
            withUnsafePointer(to: xform) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData3D.method_add_mesh_array, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_faces: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_faces")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1440358797)!
            }
            
        }
        
    }()
    
    /// Adds an array of vertex positions to the geometry data for navigation mesh baking to form triangulated faces. For each face the array must have three vertex positions in clockwise winding order. Since ``NavigationMesh`` resources have no transform, all vertex positions need to be offset by the node's transform using `xform`.
    public final func addFaces(_ faces: PackedVector3Array, xform: Transform3D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: faces.content) { pArg0 in
            withUnsafePointer(to: xform) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData3D.method_add_faces, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_merge: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("merge")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 655828145)!
            }
            
        }
        
    }()
    
    /// Adds the geometry data of another ``NavigationMeshSourceGeometryData3D`` to the navigation mesh baking data.
    public final func merge(otherGeometry: NavigationMeshSourceGeometryData3D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: otherGeometry?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData3D.method_merge, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_projected_obstruction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_projected_obstruction")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3351846707)!
            }
            
        }
        
    }()
    
    /// Adds a projected obstruction shape to the source geometry. The `vertices` are considered projected on a xz-axes plane, placed at the global y-axis `elevation` and extruded by `height`. If `carve` is `true` the carved shape will not be affected by additional offsets (e.g. agent radius) of the navigation mesh baking process.
    public final func addProjectedObstruction(vertices: PackedVector3Array, elevation: Double, height: Double, carve: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: vertices.content) { pArg0 in
            withUnsafePointer(to: elevation) { pArg1 in
                withUnsafePointer(to: height) { pArg2 in
                    withUnsafePointer(to: carve) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData3D.method_add_projected_obstruction, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_clear_projected_obstructions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_projected_obstructions")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears all projected obstructions.
    public final func clearProjectedObstructions() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData3D.method_clear_projected_obstructions, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_projected_obstructions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_projected_obstructions")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the projected obstructions with an Array of Dictionaries with the following key value pairs:
    /// 
    fileprivate final func set_projected_obstructions(_ projectedObstructions: VariantArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: projectedObstructions.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData3D.method_set_projected_obstructions, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_projected_obstructions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_projected_obstructions")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns the projected obstructions as an ``VariantArray`` of dictionaries. Each ``VariantDictionary`` contains the following entries:
    /// 
    /// - `vertices` - A ``PackedFloat32Array`` that defines the outline points of the projected shape.
    /// 
    /// - `elevation` - A float that defines the projected shape placement on the y-axis.
    /// 
    /// - `height` - A float that defines how much the projected shape is extruded along the y-axis.
    /// 
    /// - `carve` - A [bool] that defines how the obstacle affects the navigation mesh baking. If `true` the projected shape will not be affected by addition offsets, e.g. agent radius.
    /// 
    fileprivate final func get_projected_obstructions() -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData3D.method_get_projected_obstructions, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_bounds: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bounds")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1021181044)!
            }
            
        }
        
    }()
    
    /// Returns an axis-aligned bounding box that covers all the stored geometry data. The bounds are calculated when calling this function with the result cached until further geometry changes are made.
    public final func getBounds() -> AABB {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: AABB = AABB ()
        gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData3D.method_get_bounds, handle, nil, &_result)
        return _result
    }
    
}

