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
    private static var className = StringName("GPUParticlesCollisionHeightField3D")
    override open class var godotClassName: StringName { className }
    public enum Resolution: Int64, CaseIterable {
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
    }
    
    public enum UpdateMode: Int64, CaseIterable {
        /// Only update the heightmap when the ``GPUParticlesCollisionHeightField3D`` node is moved, or when the camera moves if ``followCameraEnabled`` is `true`. An update can be forced by slightly moving the ``GPUParticlesCollisionHeightField3D`` in any direction, or by calling ``RenderingServer/particlesCollisionHeightFieldUpdate(particlesCollision:)``.
        case whenMoved = 0 // UPDATE_MODE_WHEN_MOVED
        /// Update the heightmap every frame. This has a significant performance cost. This update should only be used when geometry that particles can collide with changes significantly during gameplay.
        case always = 1 // UPDATE_MODE_ALWAYS
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
    
    /// Higher resolutions can represent small details more accurately in large scenes, at the cost of lower performance. If ``updateMode`` is ``UpdateMode/always``, consider using the lowest resolution possible.
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
    
    /// The visual layers to account for when updating the heightmap. Only ``MeshInstance3D``s whose ``VisualInstance3D/layers`` match with this ``heightfieldMask`` will be included in the heightmap collision update. By default, all 20 user-visible layers are taken into account for updating the heightmap collision.
    /// 
    /// > Note: Since the ``heightfieldMask`` allows for 32 layers to be stored in total, there are an additional 12 layers that are only used internally by the engine and aren't exposed in the editor. Setting ``heightfieldMask`` using a script allows you to toggle those reserved layers, which can be useful for editor plugins.
    /// 
    /// To adjust ``heightfieldMask`` more easily using a script, use ``getHeightfieldMaskValue(layerNumber:)`` and ``setHeightfieldMaskValue(layerNumber:value:)``.
    /// 
    final public var heightfieldMask: UInt32 {
        get {
            return get_heightfield_mask ()
        }
        
        set {
            set_heightfield_mask (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_size")
        return withUnsafePointer(to: &GPUParticlesCollisionHeightField3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(GPUParticlesCollisionHeightField3D.method_set_size, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_size")
        return withUnsafePointer(to: &GPUParticlesCollisionHeightField3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_size() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(GPUParticlesCollisionHeightField3D.method_get_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_resolution: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_resolution")
        return withUnsafePointer(to: &GPUParticlesCollisionHeightField3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1009996517)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_resolution(_ resolution: GPUParticlesCollisionHeightField3D.Resolution) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: resolution.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticlesCollisionHeightField3D.method_set_resolution, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_resolution: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_resolution")
        return withUnsafePointer(to: &GPUParticlesCollisionHeightField3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1156065644)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_resolution() -> GPUParticlesCollisionHeightField3D.Resolution {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(GPUParticlesCollisionHeightField3D.method_get_resolution, handle, nil, &_result)
        return GPUParticlesCollisionHeightField3D.Resolution (rawValue: _result)!
    }
    
    fileprivate static let method_set_update_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_update_mode")
        return withUnsafePointer(to: &GPUParticlesCollisionHeightField3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 673680859)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_update_mode(_ updateMode: GPUParticlesCollisionHeightField3D.UpdateMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: updateMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticlesCollisionHeightField3D.method_set_update_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_update_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_update_mode")
        return withUnsafePointer(to: &GPUParticlesCollisionHeightField3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1998141380)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_update_mode() -> GPUParticlesCollisionHeightField3D.UpdateMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(GPUParticlesCollisionHeightField3D.method_get_update_mode, handle, nil, &_result)
        return GPUParticlesCollisionHeightField3D.UpdateMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_heightfield_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_heightfield_mask")
        return withUnsafePointer(to: &GPUParticlesCollisionHeightField3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_heightfield_mask(_ heightfieldMask: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: heightfieldMask) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticlesCollisionHeightField3D.method_set_heightfield_mask, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_heightfield_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_heightfield_mask")
        return withUnsafePointer(to: &GPUParticlesCollisionHeightField3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_heightfield_mask() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(GPUParticlesCollisionHeightField3D.method_get_heightfield_mask, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_heightfield_mask_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_heightfield_mask_value")
        return withUnsafePointer(to: &GPUParticlesCollisionHeightField3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Based on `value`, enables or disables the specified layer in the ``heightfieldMask``, given a `layerNumber` between `1` and `20`, inclusive.
    public final func setHeightfieldMaskValue(layerNumber: Int32, value: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layerNumber) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(GPUParticlesCollisionHeightField3D.method_set_heightfield_mask_value, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_heightfield_mask_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_heightfield_mask_value")
        return withUnsafePointer(to: &GPUParticlesCollisionHeightField3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the specified layer of the ``heightfieldMask`` is enabled, given a `layerNumber` between `1` and `20`, inclusive.
    public final func getHeightfieldMaskValue(layerNumber: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: layerNumber) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticlesCollisionHeightField3D.method_get_heightfield_mask_value, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_follow_camera_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_follow_camera_enabled")
        return withUnsafePointer(to: &GPUParticlesCollisionHeightField3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_follow_camera_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GPUParticlesCollisionHeightField3D.method_set_follow_camera_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_follow_camera_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_follow_camera_enabled")
        return withUnsafePointer(to: &GPUParticlesCollisionHeightField3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_follow_camera_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GPUParticlesCollisionHeightField3D.method_is_follow_camera_enabled, handle, nil, &_result)
        return _result
    }
    
}

