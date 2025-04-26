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


/// A material for ``CanvasItem``s.
/// 
/// ``CanvasItemMaterial``s provide a means of modifying the textures associated with a CanvasItem. They specialize in describing blend and lighting behaviors for textures. Use a ``ShaderMaterial`` to more fully customize a material's interactions with a ``CanvasItem``.
open class CanvasItemMaterial: Material {
    private static var className = StringName("CanvasItemMaterial")
    override open class var godotClassName: StringName { className }
    public enum BlendMode: Int64, CaseIterable {
        /// Mix blending mode. Colors are assumed to be independent of the alpha (opacity) value.
        case mix = 0 // BLEND_MODE_MIX
        /// Additive blending mode.
        case add = 1 // BLEND_MODE_ADD
        /// Subtractive blending mode.
        case sub = 2 // BLEND_MODE_SUB
        /// Multiplicative blending mode.
        case mul = 3 // BLEND_MODE_MUL
        /// Mix blending mode. Colors are assumed to be premultiplied by the alpha (opacity) value.
        case premultAlpha = 4 // BLEND_MODE_PREMULT_ALPHA
    }
    
    public enum LightMode: Int64, CaseIterable {
        /// Render the material using both light and non-light sensitive material properties.
        case normal = 0 // LIGHT_MODE_NORMAL
        /// Render the material as if there were no light.
        case unshaded = 1 // LIGHT_MODE_UNSHADED
        /// Render the material as if there were only light.
        case lightOnly = 2 // LIGHT_MODE_LIGHT_ONLY
    }
    
    
    /* Properties */
    
    /// The manner in which a material's rendering is applied to underlying textures.
    final public var blendMode: CanvasItemMaterial.BlendMode {
        get {
            return get_blend_mode ()
        }
        
        set {
            set_blend_mode (newValue)
        }
        
    }
    
    /// The manner in which material reacts to lighting.
    final public var lightMode: CanvasItemMaterial.LightMode {
        get {
            return get_light_mode ()
        }
        
        set {
            set_light_mode (newValue)
        }
        
    }
    
    /// If `true`, enable spritesheet-based animation features when assigned to ``GPUParticles2D`` and ``CPUParticles2D`` nodes. The ``ParticleProcessMaterial/animSpeedMax`` or ``CPUParticles2D/animSpeedMax`` should also be set to a positive value for the animation to play.
    /// 
    /// This property (and other `particles_anim_*` properties that depend on it) has no effect on other types of nodes.
    /// 
    final public var particlesAnimation: Bool {
        get {
            return get_particles_animation ()
        }
        
        set {
            set_particles_animation (newValue)
        }
        
    }
    
    /// The number of columns in the spritesheet assigned as ``Texture2D`` for a ``GPUParticles2D`` or ``CPUParticles2D``.
    /// 
    /// > Note: This property is only used and visible in the editor if ``particlesAnimation`` is `true`.
    /// 
    final public var particlesAnimHFrames: Int32 {
        get {
            return get_particles_anim_h_frames ()
        }
        
        set {
            set_particles_anim_h_frames (newValue)
        }
        
    }
    
    /// The number of rows in the spritesheet assigned as ``Texture2D`` for a ``GPUParticles2D`` or ``CPUParticles2D``.
    /// 
    /// > Note: This property is only used and visible in the editor if ``particlesAnimation`` is `true`.
    /// 
    final public var particlesAnimVFrames: Int32 {
        get {
            return get_particles_anim_v_frames ()
        }
        
        set {
            set_particles_anim_v_frames (newValue)
        }
        
    }
    
    /// If `true`, the particles animation will loop.
    /// 
    /// > Note: This property is only used and visible in the editor if ``particlesAnimation`` is `true`.
    /// 
    final public var particlesAnimLoop: Bool {
        get {
            return get_particles_anim_loop ()
        }
        
        set {
            set_particles_anim_loop (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_blend_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_blend_mode")
        return withUnsafePointer(to: &CanvasItemMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1786054936)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_blend_mode(_ blendMode: CanvasItemMaterial.BlendMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: blendMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasItemMaterial.method_set_blend_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_blend_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_blend_mode")
        return withUnsafePointer(to: &CanvasItemMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3318684035)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_blend_mode() -> CanvasItemMaterial.BlendMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(CanvasItemMaterial.method_get_blend_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return CanvasItemMaterial.BlendMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_light_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_light_mode")
        return withUnsafePointer(to: &CanvasItemMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 628074070)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_light_mode(_ lightMode: CanvasItemMaterial.LightMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: lightMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasItemMaterial.method_set_light_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_light_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_light_mode")
        return withUnsafePointer(to: &CanvasItemMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3863292382)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_light_mode() -> CanvasItemMaterial.LightMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(CanvasItemMaterial.method_get_light_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return CanvasItemMaterial.LightMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_particles_animation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_particles_animation")
        return withUnsafePointer(to: &CanvasItemMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_particles_animation(_ particlesAnim: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: particlesAnim) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasItemMaterial.method_set_particles_animation, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_particles_animation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_particles_animation")
        return withUnsafePointer(to: &CanvasItemMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_particles_animation() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CanvasItemMaterial.method_get_particles_animation, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_particles_anim_h_frames: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_particles_anim_h_frames")
        return withUnsafePointer(to: &CanvasItemMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_particles_anim_h_frames(_ frames: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: frames) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasItemMaterial.method_set_particles_anim_h_frames, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_particles_anim_h_frames: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_particles_anim_h_frames")
        return withUnsafePointer(to: &CanvasItemMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_particles_anim_h_frames() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(CanvasItemMaterial.method_get_particles_anim_h_frames, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_particles_anim_v_frames: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_particles_anim_v_frames")
        return withUnsafePointer(to: &CanvasItemMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_particles_anim_v_frames(_ frames: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: frames) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasItemMaterial.method_set_particles_anim_v_frames, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_particles_anim_v_frames: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_particles_anim_v_frames")
        return withUnsafePointer(to: &CanvasItemMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_particles_anim_v_frames() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(CanvasItemMaterial.method_get_particles_anim_v_frames, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_particles_anim_loop: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_particles_anim_loop")
        return withUnsafePointer(to: &CanvasItemMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_particles_anim_loop(_ loop: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: loop) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasItemMaterial.method_set_particles_anim_loop, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_particles_anim_loop: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_particles_anim_loop")
        return withUnsafePointer(to: &CanvasItemMaterial.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_particles_anim_loop() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CanvasItemMaterial.method_get_particles_anim_loop, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

