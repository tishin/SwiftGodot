// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A real-time heightmap-shaped 3D particle collision shape affecting ``GPUParticles3D`` nodes.
/// 
/// A real-time heightmap-shaped 3D particle collision shape affecting ``GPUParticles3D`` nodes.
/// 
/// Heightmap shapes allow for efficiently representing collisions for convex and concave objects with a single "floor" (such as terrain). This is less flexible than ``GPUParticlesCollisionSDF3D``, but it doesn't require a baking step.
/// 
/// ``GPUParticlesCollisionHeightField3D`` can also be regenerated in real-time when it is moved, when the camera moves, or even continuously. This makes ``GPUParticlesCollisionHeightField3D`` a good choice for weather effects such as rain and snow and games with highly dynamic geometry. However, this class is limited since heightmaps cannot represent overhangs (e.g. indoors or caves).
/// 
/// > Note: ``ParticleProcessMaterial/collisionMode`` must be `true` on the ``GPUParticles3D``'s process material for collision to work.
/// 
/// > Note: Particle collision only affects ``GPUParticles3D``, not ``CPUParticles3D``.
/// 
open class GPUParticlesCollisionHeightField3D: GPUParticlesCollision3D {
    override open class var godotClassName: StringName { "GPUParticlesCollisionHeightField3D" }
    public enum Resolution: Int64, CaseIterable, CustomDebugStringConvertible {
        /// Generate a 256×256 heightmap. Intended for small-scale scenes, or larger scenes with no distant particles.
        case resolution256 = 0 // RESOLUTION_256
        /// Generate a 512×512 heightmap. Intended for medium-scale scenes, or larger scenes with no distant particles.
        case resolution512 = 1 // RESOLUTION_512
        /// Generate a 1024×1024 heightmap. Intended for large scenes with distant particles.
        case resolution1024 = 2 // RESOLUTION_1024
        /// Generate a 2048×2048 heightmap. Intended for very large scenes with distant particles.
        case resolution2048 = 3 // RESOLUTION_2048
        /// Generate a 4096×4096 heightmap. Intended for huge scenes with distant particles.
        case resolution4096 = 4 // RESOLUTION_4096
        /// Generate a 8192×8192 heightmap. Intended for gigantic scenes with distant particles.
        case resolution8192 = 5 // RESOLUTION_8192
        /// Represents the size of the ``GPUParticlesCollisionHeightField3D/Resolution`` enum.
        case max = 6 // RESOLUTION_MAX
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .resolution256: return ".resolution256"
                case .resolution512: return ".resolution512"
                case .resolution1024: return ".resolution1024"
                case .resolution2048: return ".resolution2048"
                case .resolution4096: return ".resolution4096"
                case .resolution8192: return ".resolution8192"
                case .max: return ".max"
            }
            
        }
        
    }
    
    public enum UpdateMode: Int64, CaseIterable, CustomDebugStringConvertible {
        /// Only update the heightmap when the ``GPUParticlesCollisionHeightField3D`` node is moved, or when the camera moves if ``followCameraEnabled`` is `true`. An update can be forced by slightly moving the ``GPUParticlesCollisionHeightField3D`` in any direction, or by calling ``RenderingServer/particlesCollisionHeightFieldUpdate(particlesCollision:)``.
        case whenMoved = 0 // UPDATE_MODE_WHEN_MOVED
        /// Update the heightmap every frame. This has a significant performance cost. This update should only be used when geometry that particles can collide with changes significantly during gameplay.
        case always = 1 // UPDATE_MODE_ALWAYS
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .whenMoved: return ".whenMoved"
                case .always: return ".always"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// The collision heightmap's size in 3D units. To improve heightmap quality, ``size`` should be set as small as possible while covering the parts of the scene you need.
    final public var size: Vector3 {
        get {
            return get_size ()
        }
        
        set {
            set_size (newValue)
        }
        
    }
    
    /// Higher resolutions can represent small details more accurately in large scenes, at the cost of lower performance. If ``updateMode`` is .always, consider using the lowest resolution possible.
    final public var resolution: GPUParticlesCollisionHeightField3D.Resolution {
        get {
            return get_resolution ()
        }
        
        set {
            set_resolution (newValue)
        }
        
    }
    
    /// The update policy to use for the generated heightmap.
    final public var updateMode: GPUParticlesCollisionHeightField3D.UpdateMode {
        get {
            return get_update_mode ()
        }
        
        set {
            set_update_mode (newValue)
        }
        
    }
    
    /// If `true`, the ``GPUParticlesCollisionHeightField3D`` will follow the current camera in global space. The ``GPUParticlesCollisionHeightField3D`` does not need to be a child of the ``Camera3D`` node for this to work.
    /// 
    /// Following the camera has a performance cost, as it will force the heightmap to update whenever the camera moves. Consider lowering ``resolution`` to improve performance if ``followCameraEnabled`` is `true`.
    /// 
    final public var followCameraEnabled: Bool {
        get {
            return is_follow_camera_enabled ()
        }
        
        set {
            set_follow_camera_enabled (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_size: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_size")
        return withUnsafePointer(to: &GPUParticlesCollisionHeightField3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_size(_ size: Vector3) {
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticlesCollisionHeightField3D.method_set_size, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_size: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_size")
        return withUnsafePointer(to: &GPUParticlesCollisionHeightField3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_size() -> Vector3 {
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(GPUParticlesCollisionHeightField3D.method_get_size, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_resolution: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_resolution")
        return withUnsafePointer(to: &GPUParticlesCollisionHeightField3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1009996517)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_resolution(_ resolution: GPUParticlesCollisionHeightField3D.Resolution) {
        withUnsafePointer(to: resolution.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticlesCollisionHeightField3D.method_set_resolution, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_resolution: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_resolution")
        return withUnsafePointer(to: &GPUParticlesCollisionHeightField3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1156065644)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_resolution() -> GPUParticlesCollisionHeightField3D.Resolution {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(GPUParticlesCollisionHeightField3D.method_get_resolution, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return GPUParticlesCollisionHeightField3D.Resolution (rawValue: _result)!
    }
    
    fileprivate static var method_set_update_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_update_mode")
        return withUnsafePointer(to: &GPUParticlesCollisionHeightField3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 673680859)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_update_mode(_ updateMode: GPUParticlesCollisionHeightField3D.UpdateMode) {
        withUnsafePointer(to: updateMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticlesCollisionHeightField3D.method_set_update_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_update_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_update_mode")
        return withUnsafePointer(to: &GPUParticlesCollisionHeightField3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1998141380)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_update_mode() -> GPUParticlesCollisionHeightField3D.UpdateMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(GPUParticlesCollisionHeightField3D.method_get_update_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return GPUParticlesCollisionHeightField3D.UpdateMode (rawValue: _result)!
    }
    
    fileprivate static var method_set_follow_camera_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_follow_camera_enabled")
        return withUnsafePointer(to: &GPUParticlesCollisionHeightField3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_follow_camera_enabled(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticlesCollisionHeightField3D.method_set_follow_camera_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_follow_camera_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_follow_camera_enabled")
        return withUnsafePointer(to: &GPUParticlesCollisionHeightField3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_follow_camera_enabled() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GPUParticlesCollisionHeightField3D.method_is_follow_camera_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

