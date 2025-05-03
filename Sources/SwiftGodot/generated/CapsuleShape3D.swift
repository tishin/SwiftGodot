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


/// A 3D capsule shape used for physics collision.
/// 
/// A 3D capsule shape, intended for use in physics. Usually used to provide a shape for a ``CollisionShape3D``.
/// 
/// **Performance:** ``CapsuleShape3D`` is fast to check collisions against. It is faster than ``CylinderShape3D``, but slower than ``SphereShape3D`` and ``BoxShape3D``.
/// 
open class CapsuleShape3D: Shape3D {
    private static var className = StringName("CapsuleShape3D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The capsule's radius.
    final public var radius: Double {
        get {
            return get_radius ()
        }
        
        set {
            set_radius (newValue)
        }
        
    }
    
    /// The capsule's height.
    final public var height: Double {
        get {
            return get_height ()
        }
        
        set {
            set_height (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_radius: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_radius")
        return withUnsafePointer(to: &CapsuleShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_radius(_ radius: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: radius) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CapsuleShape3D.method_set_radius, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_radius: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_radius")
        return withUnsafePointer(to: &CapsuleShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_radius() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CapsuleShape3D.method_get_radius, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_height: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_height")
        return withUnsafePointer(to: &CapsuleShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_height(_ height: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: height) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CapsuleShape3D.method_set_height, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_height: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_height")
        return withUnsafePointer(to: &CapsuleShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_height() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CapsuleShape3D.method_get_height, handle, nil, &_result)
        return _result
    }
    
}

