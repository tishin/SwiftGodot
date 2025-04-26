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


/// Node that instances meshes into a scenario.
/// 
/// MeshInstance3D is a node that takes a ``Mesh`` resource and adds it to the current scenario by creating an instance of it. This is the class most often used render 3D geometry and can be used to instance a single ``Mesh`` in many places. This allows reusing geometry, which can save on resources. When a ``Mesh`` has to be instantiated more than thousands of times at close proximity, consider using a ``MultiMesh`` in a ``MultiMeshInstance3D`` instead.
open class MeshInstance3D: GeometryInstance3D {
    private static var className = StringName("MeshInstance3D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The ``Mesh`` resource for the instance.
    final public var mesh: Mesh? {
        get {
            return get_mesh ()
        }
        
        set {
            set_mesh (newValue)
        }
        
    }
    
    /// The ``Skin`` to be used by this instance.
    final public var skin: Skin? {
        get {
            return get_skin ()
        }
        
        set {
            set_skin (newValue)
        }
        
    }
    
    /// ``NodePath`` to the ``Skeleton3D`` associated with the instance.
    final public var skeleton: NodePath {
        get {
            return get_skeleton_path ()
        }
        
        set {
            set_skeleton_path (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_mesh: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_mesh")
        return withUnsafePointer(to: &MeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 194775623)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mesh(_ mesh: Mesh?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mesh?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshInstance3D.method_set_mesh, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_mesh: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_mesh")
        return withUnsafePointer(to: &MeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1808005922)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mesh() -> Mesh? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(MeshInstance3D.method_get_mesh, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_skeleton_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_skeleton_path")
        return withUnsafePointer(to: &MeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_skeleton_path(_ skeletonPath: NodePath) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: skeletonPath.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshInstance3D.method_set_skeleton_path, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_skeleton_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_skeleton_path")
        return withUnsafePointer(to: &MeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 277076166)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_skeleton_path() -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(MeshInstance3D.method_get_skeleton_path, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_skin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_skin")
        return withUnsafePointer(to: &MeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3971435618)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_skin(_ skin: Skin?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: skin?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshInstance3D.method_set_skin, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_skin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_skin")
        return withUnsafePointer(to: &MeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2074563878)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_skin() -> Skin? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(MeshInstance3D.method_get_skin, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_skin_reference: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_skin_reference")
        return withUnsafePointer(to: &MeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2060603409)!
            }
            
        }
        
    }()
    
    /// Returns the internal ``SkinReference`` containing the skeleton's ``RID`` attached to this RID. See also ``Resource/getRid()``, ``SkinReference/getSkeleton()``, and ``RenderingServer/instanceAttachSkeleton(instance:skeleton:)``.
    public final func getSkinReference() -> SkinReference? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(MeshInstance3D.method_get_skin_reference, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_surface_override_material_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_surface_override_material_count")
        return withUnsafePointer(to: &MeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of surface override materials. This is equivalent to ``Mesh/getSurfaceCount()``. See also ``getSurfaceOverrideMaterial(surface:)``.
    public final func getSurfaceOverrideMaterialCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(MeshInstance3D.method_get_surface_override_material_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_surface_override_material: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_surface_override_material")
        return withUnsafePointer(to: &MeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3671737478)!
            }
            
        }
        
    }()
    
    /// Sets the override `material` for the specified `surface` of the ``Mesh`` resource. This material is associated with this ``MeshInstance3D`` rather than with ``mesh``.
    /// 
    /// > Note: This assigns the ``Material`` associated to the ``MeshInstance3D``'s Surface Material Override properties, not the material within the ``Mesh`` resource. To set the material within the ``Mesh`` resource, use ``Mesh/surfaceSetMaterial(surfIdx:material:)`` instead.
    /// 
    public final func setSurfaceOverrideMaterial(surface: Int32, material: Material?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: surface) { pArg0 in
            withUnsafePointer(to: material?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MeshInstance3D.method_set_surface_override_material, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_surface_override_material: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_surface_override_material")
        return withUnsafePointer(to: &MeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2897466400)!
            }
            
        }
        
    }()
    
    /// Returns the override ``Material`` for the specified `surface` of the ``Mesh`` resource. See also ``getSurfaceOverrideMaterialCount()``.
    /// 
    /// > Note: This returns the ``Material`` associated to the ``MeshInstance3D``'s Surface Material Override properties, not the material within the ``Mesh`` resource. To get the material within the ``Mesh`` resource, use ``Mesh/surfaceGetMaterial(surfIdx:)`` instead.
    /// 
    public final func getSurfaceOverrideMaterial(surface: Int32) -> Material? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: surface) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshInstance3D.method_get_surface_override_material, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_active_material: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_active_material")
        return withUnsafePointer(to: &MeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2897466400)!
            }
            
        }
        
    }()
    
    /// Returns the ``Material`` that will be used by the ``Mesh`` when drawing. This can return the ``GeometryInstance3D/materialOverride``, the surface override ``Material`` defined in this ``MeshInstance3D``, or the surface ``Material`` defined in the ``mesh``. For example, if ``GeometryInstance3D/materialOverride`` is used, all surfaces will return the override material.
    /// 
    /// Returns `null` if no material is active, including when ``mesh`` is `null`.
    /// 
    public final func getActiveMaterial(surface: Int32) -> Material? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: surface) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshInstance3D.method_get_active_material, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_create_trimesh_collision: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_trimesh_collision")
        return withUnsafePointer(to: &MeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// This helper creates a ``StaticBody3D`` child node with a ``ConcavePolygonShape3D`` collision shape calculated from the mesh geometry. It's mainly used for testing.
    public final func createTrimeshCollision() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(MeshInstance3D.method_create_trimesh_collision, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_create_convex_collision: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_convex_collision")
        return withUnsafePointer(to: &MeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2751962654)!
            }
            
        }
        
    }()
    
    /// This helper creates a ``StaticBody3D`` child node with a ``ConvexPolygonShape3D`` collision shape calculated from the mesh geometry. It's mainly used for testing.
    /// 
    /// If `clean` is `true` (default), duplicate and interior vertices are removed automatically. You can set it to `false` to make the process faster if not needed.
    /// 
    /// If `simplify` is `true`, the geometry can be further simplified to reduce the number of vertices. Disabled by default.
    /// 
    public final func createConvexCollision(clean: Bool = true, simplify: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: clean) { pArg0 in
            withUnsafePointer(to: simplify) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MeshInstance3D.method_create_convex_collision, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_create_multiple_convex_collisions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_multiple_convex_collisions")
        return withUnsafePointer(to: &MeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 628789669)!
            }
            
        }
        
    }()
    
    /// This helper creates a ``StaticBody3D`` child node with multiple ``ConvexPolygonShape3D`` collision shapes calculated from the mesh geometry via convex decomposition. The convex decomposition operation can be controlled with parameters from the optional `settings`.
    public final func createMultipleConvexCollisions(settings: MeshConvexDecompositionSettings? = nil) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: settings?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshInstance3D.method_create_multiple_convex_collisions, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_blend_shape_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_blend_shape_count")
        return withUnsafePointer(to: &MeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of blend shapes available. Produces an error if ``mesh`` is `null`.
    public final func getBlendShapeCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(MeshInstance3D.method_get_blend_shape_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_find_blend_shape_by_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("find_blend_shape_by_name")
        return withUnsafePointer(to: &MeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4150868206)!
            }
            
        }
        
    }()
    
    /// Returns the index of the blend shape with the given `name`. Returns `-1` if no blend shape with this name exists, including when ``mesh`` is `null`.
    public final func findBlendShapeByName(_ name: StringName) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshInstance3D.method_find_blend_shape_by_name, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_blend_shape_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_blend_shape_value")
        return withUnsafePointer(to: &MeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// Returns the value of the blend shape at the given `blendShapeIdx`. Returns `0.0` and produces an error if ``mesh`` is `null` or doesn't have a blend shape at that index.
    public final func getBlendShapeValue(blendShapeIdx: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: blendShapeIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshInstance3D.method_get_blend_shape_value, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_blend_shape_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_blend_shape_value")
        return withUnsafePointer(to: &MeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Sets the value of the blend shape at `blendShapeIdx` to `value`. Produces an error if ``mesh`` is `null` or doesn't have a blend shape at that index.
    public final func setBlendShapeValue(blendShapeIdx: Int32, value: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: blendShapeIdx) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(MeshInstance3D.method_set_blend_shape_value, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_create_debug_tangents: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_debug_tangents")
        return withUnsafePointer(to: &MeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// This helper creates a ``MeshInstance3D`` child node with gizmos at every vertex calculated from the mesh geometry. It's mainly used for testing.
    public final func createDebugTangents() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(MeshInstance3D.method_create_debug_tangents, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_bake_mesh_from_current_blend_shape_mix: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("bake_mesh_from_current_blend_shape_mix")
        return withUnsafePointer(to: &MeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1457573577)!
            }
            
        }
        
    }()
    
    /// Takes a snapshot from the current ``ArrayMesh`` with all blend shapes applied according to their current weights and bakes it to the provided `existing` mesh. If no `existing` mesh is provided a new ``ArrayMesh`` is created, baked and returned. Mesh surface materials are not copied.
    /// 
    /// **Performance:** ``Mesh`` data needs to be received from the GPU, stalling the ``RenderingServer`` in the process.
    /// 
    public final func bakeMeshFromCurrentBlendShapeMix(existing: ArrayMesh? = nil) -> ArrayMesh? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: existing?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshInstance3D.method_bake_mesh_from_current_blend_shape_mix, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_bake_mesh_from_current_skeleton_pose: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("bake_mesh_from_current_skeleton_pose")
        return withUnsafePointer(to: &MeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1457573577)!
            }
            
        }
        
    }()
    
    /// Takes a snapshot of the current animated skeleton pose of the skinned mesh and bakes it to the provided `existing` mesh. If no `existing` mesh is provided a new ``ArrayMesh`` is created, baked, and returned. Requires a skeleton with a registered skin to work. Blendshapes are ignored. Mesh surface materials are not copied.
    /// 
    /// **Performance:** ``Mesh`` data needs to be retrieved from the GPU, stalling the ``RenderingServer`` in the process.
    /// 
    public final func bakeMeshFromCurrentSkeletonPose(existing: ArrayMesh? = nil) -> ArrayMesh? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: existing?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MeshInstance3D.method_bake_mesh_from_current_skeleton_pose, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
}

