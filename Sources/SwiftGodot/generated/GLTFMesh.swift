// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// GLTFMesh represents a GLTF mesh.
/// 
/// GLTFMesh handles 3D mesh data imported from GLTF files. It includes properties for blend channels, blend weights, instance materials, and the mesh itself.
open class GLTFMesh: Resource {
    override open class var godotClassName: StringName { "GLTFMesh" }
    
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
    final public var instanceMaterials: ObjectCollection<Material> {
        get {
            return get_instance_materials ()
        }
        
        set {
            set_instance_materials (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_get_original_name: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_original_name")
        return withUnsafePointer(to: &GLTFMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2841200299)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_original_name() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(GLTFMesh.method_get_original_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_set_original_name: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_original_name")
        return withUnsafePointer(to: &GLTFMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_original_name(_ originalName: String) {
        let originalName = GString(originalName)
        withUnsafePointer(to: originalName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFMesh.method_set_original_name, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_mesh: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_mesh")
        return withUnsafePointer(to: &GLTFMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3754628756)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mesh() -> ImporterMesh? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(GLTFMesh.method_get_mesh, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_mesh: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_mesh")
        return withUnsafePointer(to: &GLTFMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2255166972)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mesh(_ mesh: ImporterMesh?) {
        withUnsafePointer(to: mesh?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFMesh.method_set_mesh, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_blend_weights: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_blend_weights")
        return withUnsafePointer(to: &GLTFMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2445143706)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_blend_weights() -> PackedFloat32Array {
        let _result: PackedFloat32Array = PackedFloat32Array ()
        gi.object_method_bind_ptrcall(GLTFMesh.method_get_blend_weights, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_blend_weights: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_blend_weights")
        return withUnsafePointer(to: &GLTFMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2899603908)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_blend_weights(_ blendWeights: PackedFloat32Array) {
        withUnsafePointer(to: blendWeights.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFMesh.method_set_blend_weights, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_instance_materials: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_instance_materials")
        return withUnsafePointer(to: &GLTFMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_instance_materials() -> ObjectCollection<Material> {
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(GLTFMesh.method_get_instance_materials, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return ObjectCollection<Material>(content: _result)
    }
    
    fileprivate static var method_set_instance_materials: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_instance_materials")
        return withUnsafePointer(to: &GLTFMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_instance_materials(_ instanceMaterials: ObjectCollection<Material>) {
        withUnsafePointer(to: instanceMaterials.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFMesh.method_set_instance_materials, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_additional_data: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_additional_data")
        return withUnsafePointer(to: &GLTFMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2138907829)!
            }
            
        }
        
    }()
    
    /// Gets additional arbitrary data in this ``GLTFMesh`` instance. This can be used to keep per-node state data in ``GLTFDocumentExtension`` classes, which is important because they are stateless.
    /// 
    /// The argument should be the ``GLTFDocumentExtension`` name (does not have to match the extension name in the GLTF file), and the return value can be anything you set. If nothing was set, the return value is null.
    /// 
    public final func getAdditionalData(extensionName: StringName) -> Variant {
        let _result: Variant = Variant ()
        withUnsafePointer(to: extensionName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFMesh.method_get_additional_data, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_set_additional_data: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_additional_data")
        return withUnsafePointer(to: &GLTFMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3776071444)!
            }
            
        }
        
    }()
    
    /// Sets additional arbitrary data in this ``GLTFMesh`` instance. This can be used to keep per-node state data in ``GLTFDocumentExtension`` classes, which is important because they are stateless.
    /// 
    /// The first argument should be the ``GLTFDocumentExtension`` name (does not have to match the extension name in the GLTF file), and the second argument can be anything you want.
    /// 
    public final func setAdditionalData(extensionName: StringName, additionalData: Variant) {
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

