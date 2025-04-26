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


/// Base class for all primitive meshes. Handles applying a ``Material`` to a primitive mesh.
/// 
/// Base class for all primitive meshes. Handles applying a ``Material`` to a primitive mesh. Examples include ``BoxMesh``, ``CapsuleMesh``, ``CylinderMesh``, ``PlaneMesh``, ``PrismMesh``, and ``SphereMesh``.
open class PrimitiveMesh: Mesh {
    private static var className = StringName("PrimitiveMesh")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The current ``Material`` of the primitive mesh.
    final public var material: Material? {
        get {
            return get_material ()
        }
        
        set {
            set_material (newValue)
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
    
    /// If set, the order of the vertices in each triangle are reversed resulting in the backside of the mesh being drawn.
    /// 
    /// This gives the same result as using ``BaseMaterial3D/CullMode/front`` in ``BaseMaterial3D/cullMode``.
    /// 
    final public var flipFaces: Bool {
        get {
            return get_flip_faces ()
        }
        
        set {
            set_flip_faces (newValue)
        }
        
    }
    
    /// If set, generates UV2 UV coordinates applying a padding using the ``uv2Padding`` setting. UV2 is needed for lightmapping.
    final public var addUv2: Bool {
        get {
            return get_add_uv2 ()
        }
        
        set {
            set_add_uv2 (newValue)
        }
        
    }
    
    /// If ``addUv2`` is set, specifies the padding in pixels applied along seams of the mesh. Lower padding values allow making better use of the lightmap texture (resulting in higher texel density), but may introduce visible lightmap bleeding along edges.
    /// 
    /// If the size of the lightmap texture can't be determined when generating the mesh, UV2 is calculated assuming a texture size of 1024x1024.
    /// 
    final public var uv2Padding: Double {
        get {
            return get_uv2_padding ()
        }
        
        set {
            set_uv2_padding (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method__create_mesh_array: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_create_mesh_array")
        return withUnsafePointer(to: &PrimitiveMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Override this method to customize how this primitive mesh should be generated. Should return an ``VariantArray`` where each element is another Array of values required for the mesh (see the ``Mesh.ArrayType`` constants).
    @_documentation(visibility: public)
    open func _createMeshArray() -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: VariantArray = VariantArray ()
        gi.object_method_bind_ptrcall(PrimitiveMesh.method__create_mesh_array, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_material: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_material")
        return withUnsafePointer(to: &PrimitiveMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2757459619)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_material(_ material: Material?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: material?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PrimitiveMesh.method_set_material, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_material: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_material")
        return withUnsafePointer(to: &PrimitiveMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 5934680)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_material() -> Material? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(PrimitiveMesh.method_get_material, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_mesh_arrays: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_mesh_arrays")
        return withUnsafePointer(to: &PrimitiveMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns the mesh arrays used to make up the surface of this primitive mesh.
    /// 
    /// **Example:** Pass the result to ``ArrayMesh/addSurfaceFromArrays(primitive:arrays:blendShapes:lods:flags:)`` to create a new surface:
    /// 
    public final func getMeshArrays() -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        gi.object_method_bind_ptrcall(PrimitiveMesh.method_get_mesh_arrays, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_custom_aabb: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_custom_aabb")
        return withUnsafePointer(to: &PrimitiveMesh.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(PrimitiveMesh.method_set_custom_aabb, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_custom_aabb: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_custom_aabb")
        return withUnsafePointer(to: &PrimitiveMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1068685055)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_custom_aabb() -> AABB {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: AABB = AABB ()
        gi.object_method_bind_ptrcall(PrimitiveMesh.method_get_custom_aabb, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_flip_faces: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_flip_faces")
        return withUnsafePointer(to: &PrimitiveMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_flip_faces(_ flipFaces: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: flipFaces) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PrimitiveMesh.method_set_flip_faces, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_flip_faces: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_flip_faces")
        return withUnsafePointer(to: &PrimitiveMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_flip_faces() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PrimitiveMesh.method_get_flip_faces, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_add_uv2: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_add_uv2")
        return withUnsafePointer(to: &PrimitiveMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_add_uv2(_ addUv2: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: addUv2) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PrimitiveMesh.method_set_add_uv2, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_add_uv2: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_add_uv2")
        return withUnsafePointer(to: &PrimitiveMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_add_uv2() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PrimitiveMesh.method_get_add_uv2, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_uv2_padding: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_uv2_padding")
        return withUnsafePointer(to: &PrimitiveMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_uv2_padding(_ uv2Padding: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: uv2Padding) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PrimitiveMesh.method_set_uv2_padding, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_uv2_padding: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_uv2_padding")
        return withUnsafePointer(to: &PrimitiveMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_uv2_padding() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PrimitiveMesh.method_get_uv2_padding, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_request_update: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("request_update")
        return withUnsafePointer(to: &PrimitiveMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Request an update of this primitive mesh based on its properties.
    public final func requestUpdate() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(PrimitiveMesh.method_request_update, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_create_mesh_array":
                return _PrimitiveMesh_proxy_create_mesh_array
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _PrimitiveMesh_proxy_create_mesh_array (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PrimitiveMesh else { return }
    let ret = swiftObject._createMeshArray ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Array
    ret.content = VariantArray.zero
}

