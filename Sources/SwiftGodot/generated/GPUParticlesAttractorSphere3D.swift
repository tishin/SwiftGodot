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


/// A spheroid-shaped attractor that influences particles from ``GPUParticles3D`` nodes.
/// 
/// A spheroid-shaped attractor that influences particles from ``GPUParticles3D`` nodes. Can be used to attract particles towards its origin, or to push them away from its origin.
/// 
/// Particle attractors work in real-time and can be moved, rotated and scaled during gameplay. Unlike collision shapes, non-uniform scaling of attractors is also supported.
/// 
/// > Note: Particle attractors only affect ``GPUParticles3D``, not ``CPUParticles3D``.
/// 
open class GPUParticlesAttractorSphere3D: GPUParticlesAttractor3D {
    private static var className = StringName("GPUParticlesAttractorSphere3D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The attractor sphere's radius in 3D units.
    /// 
    /// > Note: Stretched ellipses can be obtained by using non-uniform scaling on the ``GPUParticlesAttractorSphere3D`` node.
    /// 
    final public var radius: Double {
        get {
            return get_radius ()
        }
        
        set {
            set_radius (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_radius: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_radius")
        return withUnsafePointer(to: &GPUParticlesAttractorSphere3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(GPUParticlesAttractorSphere3D.method_set_radius, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_radius: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_radius")
        return withUnsafePointer(to: &GPUParticlesAttractorSphere3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_radius() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GPUParticlesAttractorSphere3D.method_get_radius, handle, nil, &_result)
        return _result
    }
    
}

