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


/// A 2D physics body that can't be moved by external forces. When moved manually, it affects other bodies in its path.
/// 
/// An animatable 2D physics body. It can't be moved by external forces or contacts, but can be moved manually by other means such as code, ``AnimationMixer``s (with ``AnimationMixer/callbackModeProcess`` set to ``AnimationMixer/AnimationCallbackModeProcess/physics``), and ``RemoteTransform2D``.
/// 
/// When ``AnimatableBody2D`` is moved, its linear and angular velocity are estimated and used to affect other physics bodies in its path. This makes it useful for moving platforms, doors, and other moving objects.
/// 
open class AnimatableBody2D: StaticBody2D {
    private static var className = StringName("AnimatableBody2D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// If `true`, the body's movement will be synchronized to the physics frame. This is useful when animating movement via ``AnimationPlayer``, for example on moving platforms. Do **not** use together with ``PhysicsBody2D/moveAndCollide(motion:testOnly:safeMargin:recoveryAsCollision:)``.
    final public var syncToPhysics: Bool {
        get {
            return is_sync_to_physics_enabled ()
        }
        
        set {
            set_sync_to_physics (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_sync_to_physics: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_sync_to_physics")
        return withUnsafePointer(to: &AnimatableBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sync_to_physics(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimatableBody2D.method_set_sync_to_physics, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_sync_to_physics_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_sync_to_physics_enabled")
        return withUnsafePointer(to: &AnimatableBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_sync_to_physics_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimatableBody2D.method_is_sync_to_physics_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

