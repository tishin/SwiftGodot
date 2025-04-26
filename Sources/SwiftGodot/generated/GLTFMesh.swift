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


/// GLTFMesh represents a glTF mesh.
/// 
/// GLTFMesh handles 3D mesh data imported from glTF files. It includes properties for blend channels, blend weights, instance materials, and the mesh itself.
open class GLTFMesh: Resource {
    private static var className = StringName("GLTFMesh")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The original name of the mesh.
    final public var originalName: String {
        get {
            return get_original_name ()
        }
        
        set {
            set_original_name (newValue)
        }
        
    }
    
    /// The ``ImporterMesh`` object representing the mesh itself.
    final public var mesh: ImporterMesh? {
        get {
            return get_mesh ()
        }
        
        set {
            set_mesh (newValue)
        }
        
    }
    
    /// An array of floats representing the blend weights of the mesh.
    final public var blendWeights: PackedFloat32Array {
        get {
            return get_blend_weights ()
        }
        
        set {
            set_blend_weights (newValue)
        }
        
    }
    
    /// An array of Material objects representing the materials used in the mesh.
    final public var instanceMaterials: TypedArray<Material?> {
        get {
            return get_instance_materials ()
        }
        
        set {
            set_instance_materials (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_get_original_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_original_name")
        return withUnsafePointer(to: &GLTFMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2841200299)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_original_name() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(GLTFMesh.method_get_original_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_original_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_original_name")
        return withUnsafePointer(to: &GLTFMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_original_name(_ originalName: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let originalName = GString(originalName)
        withUnsafePointer(to: originalName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFMesh.method_set_original_name, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_mesh: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_mesh")
        return withUnsafePointer(to: &GLTFMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3754628756)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mesh() -> ImporterMesh? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(GLTFMesh.method_get_mesh, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_mesh: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_mesh")
        return withUnsafePointer(to: &GLTFMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2255166972)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mesh(_ mesh: ImporterMesh?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mesh?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFMesh.method_set_mesh, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_blend_weights: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_blend_weights")
        return withUnsafePointer(to: &GLTFMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2445143706)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_blend_weights() -> PackedFloat32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedFloat32Array = PackedFloat32Array ()
        gi.object_method_bind_ptrcall(GLTFMesh.method_get_blend_weights, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_blend_weights: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_blend_weights")
        return withUnsafePointer(to: &GLTFMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2899603908)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_blend_weights(_ blendWeights: PackedFloat32Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: blendWeights.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFMesh.method_set_blend_weights, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_instance_materials: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_instance_materials")
        return withUnsafePointer(to: &GLTFMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_instance_materials() -> TypedArray<Material?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(GLTFMesh.method_get_instance_materials, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<Material?>(takingOver: _result)
    }
    
    fileprivate static let method_set_instance_materials: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_instance_materials")
        return withUnsafePointer(to: &GLTFMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_instance_materials(_ instanceMaterials: TypedArray<Material?>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: instanceMaterials.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFMesh.method_set_instance_materials, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_additional_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_additional_data")
        return withUnsafePointer(to: &GLTFMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2138907829)!
            }
            
        }
        
    }()
    
    /// Gets additional arbitrary data in this ``GLTFMesh`` instance. This can be used to keep per-node state data in ``GLTFDocumentExtension`` classes, which is important because they are stateless.
    /// 
    /// The argument should be the ``GLTFDocumentExtension`` name (does not have to match the extension name in the glTF file), and the return value can be anything you set. If nothing was set, the return value is `null`.
    /// 
    public final func getAdditionalData(extensionName: StringName) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: extensionName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFMesh.method_get_additional_data, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_set_additional_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_additional_data")
        return withUnsafePointer(to: &GLTFMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3776071444)!
            }
            
        }
        
    }()
    
    /// Sets additional arbitrary data in this ``GLTFMesh`` instance. This can be used to keep per-node state data in ``GLTFDocumentExtension`` classes, which is important because they are stateless.
    /// 
    /// The first argument should be the ``GLTFDocumentExtension`` name (does not have to match the extension name in the glTF file), and the second argument can be anything you want.
    /// 
    public final func setAdditionalData(extensionName: StringName, additionalData: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: extensionName.content) { pArg0 in
            withUnsafePointer(to: additionalData.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(GLTFMesh.method_set_additional_data, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
}

