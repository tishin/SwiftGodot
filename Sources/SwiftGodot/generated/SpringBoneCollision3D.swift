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


/// A base class of the collision that interacts with ``SpringBoneSimulator3D``.
/// 
/// A collision can be a child of ``SpringBoneSimulator3D``. If it is not a child of ``SpringBoneSimulator3D``, it has no effect.
/// 
/// The colliding and sliding are done in the ``SpringBoneSimulator3D``'s modification process in order of its collision list which is set by ``SpringBoneSimulator3D/setCollisionPath(index:collision:nodePath:)``. If ``SpringBoneSimulator3D/areAllChildCollisionsEnabled(index:)`` is `true`, the order matches ``SceneTree``.
/// 
/// If ``bone`` is set, it synchronizes with the bone pose of the ancestor ``Skeleton3D``, which is done in before the ``SpringBoneSimulator3D``'s modification process as the pre-process.
/// 
/// > Warning: A scaled ``SpringBoneCollision3D`` will likely not behave as expected. Make sure that the parent ``Skeleton3D`` and its bones are not scaled.
/// 
open class SpringBoneCollision3D: Node3D {
    private static var className = StringName("SpringBoneCollision3D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The name of the attached bone.
    final public var boneName: String {
        get {
            return get_bone_name ()
        }
        
        set {
            set_bone_name (newValue)
        }
        
    }
    
    /// The index of the attached bone.
    final public var bone: Int32 {
        get {
            return get_bone ()
        }
        
        set {
            set_bone (newValue)
        }
        
    }
    
    /// The offset of the position from ``Skeleton3D``'s ``bone`` pose position.
    final public var positionOffset: Vector3 {
        get {
            return get_position_offset ()
        }
        
        set {
            set_position_offset (newValue)
        }
        
    }
    
    /// The offset of the rotation from ``Skeleton3D``'s ``bone`` pose rotation.
    final public var rotationOffset: Quaternion {
        get {
            return get_rotation_offset ()
        }
        
        set {
            set_rotation_offset (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_get_skeleton: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_skeleton")
        return withUnsafePointer(to: &SpringBoneCollision3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1488626673)!
            }
            
        }
        
    }()
    
    /// Get parent ``Skeleton3D`` node of the parent ``SpringBoneSimulator3D`` if found.
    public final func getSkeleton() -> Skeleton3D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(SpringBoneCollision3D.method_get_skeleton, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_bone_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bone_name")
        return withUnsafePointer(to: &SpringBoneCollision3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bone_name(_ boneName: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let boneName = GString(boneName)
        withUnsafePointer(to: boneName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneCollision3D.method_set_bone_name, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_bone_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bone_name")
        return withUnsafePointer(to: &SpringBoneCollision3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bone_name() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(SpringBoneCollision3D.method_get_bone_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_bone: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bone")
        return withUnsafePointer(to: &SpringBoneCollision3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bone(_ bone: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: bone) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneCollision3D.method_set_bone, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_bone: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bone")
        return withUnsafePointer(to: &SpringBoneCollision3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bone() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(SpringBoneCollision3D.method_get_bone, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_position_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_position_offset")
        return withUnsafePointer(to: &SpringBoneCollision3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_position_offset(_ offset: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneCollision3D.method_set_position_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_position_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_position_offset")
        return withUnsafePointer(to: &SpringBoneCollision3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_position_offset() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(SpringBoneCollision3D.method_get_position_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_rotation_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_rotation_offset")
        return withUnsafePointer(to: &SpringBoneCollision3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1727505552)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_rotation_offset(_ offset: Quaternion) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpringBoneCollision3D.method_set_rotation_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_rotation_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_rotation_offset")
        return withUnsafePointer(to: &SpringBoneCollision3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1222331677)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_rotation_offset() -> Quaternion {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Quaternion = Quaternion ()
        gi.object_method_bind_ptrcall(SpringBoneCollision3D.method_get_rotation_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

