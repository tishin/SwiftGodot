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


open class GLTFSkeleton: Resource {
    private static var className = StringName("GLTFSkeleton")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    final public var joints: PackedInt32Array {
        get {
            return get_joints ()
        }
        
        set {
            set_joints (newValue)
        }
        
    }
    
    final public var roots: PackedInt32Array {
        get {
            return get_roots ()
        }
        
        set {
            set_roots (newValue)
        }
        
    }
    
    final public var uniqueNames: TypedArray<String> {
        get {
            return get_unique_names ()
        }
        
        set {
            set_unique_names (newValue)
        }
        
    }
    
    final public var godotBoneNode: VariantDictionary {
        get {
            return get_godot_bone_node ()
        }
        
        set {
            set_godot_bone_node (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_get_joints: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_joints")
        return withUnsafePointer(to: &GLTFSkeleton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 969006518)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_joints() -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall(GLTFSkeleton.method_get_joints, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_joints: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_joints")
        return withUnsafePointer(to: &GLTFSkeleton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3614634198)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_joints(_ joints: PackedInt32Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joints.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFSkeleton.method_set_joints, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_roots: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_roots")
        return withUnsafePointer(to: &GLTFSkeleton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 969006518)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_roots() -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall(GLTFSkeleton.method_get_roots, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_roots: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_roots")
        return withUnsafePointer(to: &GLTFSkeleton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3614634198)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_roots(_ roots: PackedInt32Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: roots.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFSkeleton.method_set_roots, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_godot_skeleton: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_godot_skeleton")
        return withUnsafePointer(to: &GLTFSkeleton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1814733083)!
            }
            
        }
        
    }()
    
    /// 
    public final func getGodotSkeleton() -> Skeleton3D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(GLTFSkeleton.method_get_godot_skeleton, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_unique_names: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_unique_names")
        return withUnsafePointer(to: &GLTFSkeleton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// 
    fileprivate final func get_unique_names() -> TypedArray<String> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(GLTFSkeleton.method_get_unique_names, handle, nil, &_result)
        return TypedArray<String>(takingOver: _result)
    }
    
    fileprivate static let method_set_unique_names: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_unique_names")
        return withUnsafePointer(to: &GLTFSkeleton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// 
    fileprivate final func set_unique_names(_ uniqueNames: TypedArray<String>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: uniqueNames.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFSkeleton.method_set_unique_names, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_godot_bone_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_godot_bone_node")
        return withUnsafePointer(to: &GLTFSkeleton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2382534195)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns a ``VariantDictionary`` that maps skeleton bone indices to the indices of glTF nodes. This property is unused during import, and only set during export. In a glTF file, a bone is a node, so Godot converts skeleton bones to glTF nodes.
    fileprivate final func get_godot_bone_node() -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        gi.object_method_bind_ptrcall(GLTFSkeleton.method_get_godot_bone_node, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_godot_bone_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_godot_bone_node")
        return withUnsafePointer(to: &GLTFSkeleton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155329257)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets a ``VariantDictionary`` that maps skeleton bone indices to the indices of glTF nodes. This property is unused during import, and only set during export. In a glTF file, a bone is a node, so Godot converts skeleton bones to glTF nodes.
    fileprivate final func set_godot_bone_node(_ godotBoneNode: VariantDictionary) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: godotBoneNode.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFSkeleton.method_set_godot_bone_node, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_bone_attachment_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bone_attachment_count")
        return withUnsafePointer(to: &GLTFSkeleton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// 
    public final func getBoneAttachmentCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GLTFSkeleton.method_get_bone_attachment_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_bone_attachment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bone_attachment")
        return withUnsafePointer(to: &GLTFSkeleton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 945440495)!
            }
            
        }
        
    }()
    
    /// 
    public final func getBoneAttachment(idx: Int32) -> BoneAttachment3D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFSkeleton.method_get_bone_attachment, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
}

