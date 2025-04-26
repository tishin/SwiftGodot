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


open class GLTFSkin: Resource {
    private static var className = StringName("GLTFSkin")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    final public var skinRoot: Int32 {
        get {
            return get_skin_root ()
        }
        
        set {
            set_skin_root (newValue)
        }
        
    }
    
    final public var jointsOriginal: PackedInt32Array {
        get {
            return get_joints_original ()
        }
        
        set {
            set_joints_original (newValue)
        }
        
    }
    
    final public var inverseBinds: TypedArray<Transform3D> {
        get {
            return get_inverse_binds ()
        }
        
        set {
            set_inverse_binds (newValue)
        }
        
    }
    
    final public var joints: PackedInt32Array {
        get {
            return get_joints ()
        }
        
        set {
            set_joints (newValue)
        }
        
    }
    
    final public var nonJoints: PackedInt32Array {
        get {
            return get_non_joints ()
        }
        
        set {
            set_non_joints (newValue)
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
    
    final public var skeleton: Int32 {
        get {
            return get_skeleton ()
        }
        
        set {
            set_skeleton (newValue)
        }
        
    }
    
    final public var jointIToBoneI: VariantDictionary {
        get {
            return get_joint_i_to_bone_i ()
        }
        
        set {
            set_joint_i_to_bone_i (newValue)
        }
        
    }
    
    final public var jointIToName: VariantDictionary {
        get {
            return get_joint_i_to_name ()
        }
        
        set {
            set_joint_i_to_name (newValue)
        }
        
    }
    
    final public var godotSkin: Skin? {
        get {
            return get_godot_skin ()
        }
        
        set {
            set_godot_skin (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_get_skin_root: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_skin_root")
        return withUnsafePointer(to: &GLTFSkin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_skin_root() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GLTFSkin.method_get_skin_root, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_skin_root: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_skin_root")
        return withUnsafePointer(to: &GLTFSkin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_skin_root(_ skinRoot: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: skinRoot) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFSkin.method_set_skin_root, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_joints_original: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_joints_original")
        return withUnsafePointer(to: &GLTFSkin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 969006518)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_joints_original() -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall(GLTFSkin.method_get_joints_original, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_joints_original: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_joints_original")
        return withUnsafePointer(to: &GLTFSkin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3614634198)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_joints_original(_ jointsOriginal: PackedInt32Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: jointsOriginal.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFSkin.method_set_joints_original, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_inverse_binds: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_inverse_binds")
        return withUnsafePointer(to: &GLTFSkin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// 
    fileprivate final func get_inverse_binds() -> TypedArray<Transform3D> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(GLTFSkin.method_get_inverse_binds, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<Transform3D>(takingOver: _result)
    }
    
    fileprivate static let method_set_inverse_binds: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_inverse_binds")
        return withUnsafePointer(to: &GLTFSkin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// 
    fileprivate final func set_inverse_binds(_ inverseBinds: TypedArray<Transform3D>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: inverseBinds.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFSkin.method_set_inverse_binds, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_joints: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_joints")
        return withUnsafePointer(to: &GLTFSkin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 969006518)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_joints() -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall(GLTFSkin.method_get_joints, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_joints: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_joints")
        return withUnsafePointer(to: &GLTFSkin.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(GLTFSkin.method_set_joints, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_non_joints: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_non_joints")
        return withUnsafePointer(to: &GLTFSkin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 969006518)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_non_joints() -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall(GLTFSkin.method_get_non_joints, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_non_joints: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_non_joints")
        return withUnsafePointer(to: &GLTFSkin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3614634198)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_non_joints(_ nonJoints: PackedInt32Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: nonJoints.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFSkin.method_set_non_joints, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_roots: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_roots")
        return withUnsafePointer(to: &GLTFSkin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 969006518)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_roots() -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall(GLTFSkin.method_get_roots, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_roots: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_roots")
        return withUnsafePointer(to: &GLTFSkin.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(GLTFSkin.method_set_roots, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_skeleton: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_skeleton")
        return withUnsafePointer(to: &GLTFSkin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_skeleton() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GLTFSkin.method_get_skeleton, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_skeleton: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_skeleton")
        return withUnsafePointer(to: &GLTFSkin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_skeleton(_ skeleton: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: skeleton) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFSkin.method_set_skeleton, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_joint_i_to_bone_i: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_joint_i_to_bone_i")
        return withUnsafePointer(to: &GLTFSkin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2382534195)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// 
    fileprivate final func get_joint_i_to_bone_i() -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        gi.object_method_bind_ptrcall(GLTFSkin.method_get_joint_i_to_bone_i, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_joint_i_to_bone_i: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_joint_i_to_bone_i")
        return withUnsafePointer(to: &GLTFSkin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155329257)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// 
    fileprivate final func set_joint_i_to_bone_i(_ jointIToBoneI: VariantDictionary) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: jointIToBoneI.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFSkin.method_set_joint_i_to_bone_i, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_joint_i_to_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_joint_i_to_name")
        return withUnsafePointer(to: &GLTFSkin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2382534195)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// 
    fileprivate final func get_joint_i_to_name() -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        gi.object_method_bind_ptrcall(GLTFSkin.method_get_joint_i_to_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_joint_i_to_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_joint_i_to_name")
        return withUnsafePointer(to: &GLTFSkin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155329257)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// 
    fileprivate final func set_joint_i_to_name(_ jointIToName: VariantDictionary) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: jointIToName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFSkin.method_set_joint_i_to_name, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_godot_skin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_godot_skin")
        return withUnsafePointer(to: &GLTFSkin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1032037385)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_godot_skin() -> Skin? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(GLTFSkin.method_get_godot_skin, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_godot_skin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_godot_skin")
        return withUnsafePointer(to: &GLTFSkin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3971435618)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_godot_skin(_ godotSkin: Skin?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: godotSkin?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFSkin.method_set_godot_skin, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}

