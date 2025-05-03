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


/// A box-shaped attractor that influences particles from ``GPUParticles3D`` nodes.
/// 
/// A box-shaped attractor that influences particles from ``GPUParticles3D`` nodes. Can be used to attract particles towards its origin, or to push them away from its origin.
/// 
/// Particle attractors work in real-time and can be moved, rotated and scaled during gameplay. Unlike collision shapes, non-uniform scaling of attractors is also supported.
/// 
/// > Note: Particle attractors only affect ``GPUParticles3D``, not ``CPUParticles3D``.
/// 
open class GPUParticlesAttractorBox3D: GPUParticlesAttractor3D {
    private static var className = StringName("GPUParticlesAttractorBox3D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The attractor box's size in 3D units.
    final public var size: Vector3 {
        get {
            return get_size ()
        }
        
        set {
            set_size (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_size")
        return withUnsafePointer(to: &GPUParticlesAttractorBox3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_size(_ size: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticlesAttractorBox3D.method_set_size, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_size")
        return withUnsafePointer(to: &GPUParticlesAttractorBox3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_size() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(GPUParticlesAttractorBox3D.method_get_size, handle, nil, &_result)
        return _result
    }
    
}

