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


/// Abstract base class for 2D game objects affected by physics.
/// 
/// ``PhysicsBody2D`` is an abstract base class for 2D game objects affected by physics. All 2D physics bodies inherit from it.
open class PhysicsBody2D: CollisionObject2D {
    private static var className = StringName("PhysicsBody2D")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_move_and_collide: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("move_and_collide")
        return withUnsafePointer(to: &PhysicsBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3681923724)!
            }
            
        }
        
    }()
    
    /// Moves the body along the vector `motion`. In order to be frame rate independent in ``Node/_physicsProcess(delta:)`` or ``Node/_process(delta:)``, `motion` should be computed using `delta`.
    /// 
    /// Returns a ``KinematicCollision2D``, which contains information about the collision when stopped, or when touching another body along the motion.
    /// 
    /// If `testOnly` is `true`, the body does not move but the would-be collision information is given.
    /// 
    /// `safeMargin` is the extra margin used for collision recovery (see ``CharacterBody2D/safeMargin`` for more details).
    /// 
    /// If `recoveryAsCollision` is `true`, any depenetration from the recovery phase is also reported as a collision; this is used e.g. by ``CharacterBody2D`` for improving floor detection during floor snapping.
    /// 
    public final func moveAndCollide(motion: Vector2, testOnly: Bool = false, safeMargin: Double = 0.08, recoveryAsCollision: Bool = false) -> KinematicCollision2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: motion) { pArg0 in
            withUnsafePointer(to: testOnly) { pArg1 in
                withUnsafePointer(to: safeMargin) { pArg2 in
                    withUnsafePointer(to: recoveryAsCollision) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(PhysicsBody2D.method_move_and_collide, handle, pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_test_move: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("test_move")
        return withUnsafePointer(to: &PhysicsBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3324464701)!
            }
            
        }
        
    }()
    
    /// Checks for collisions without moving the body. In order to be frame rate independent in ``Node/_physicsProcess(delta:)`` or ``Node/_process(delta:)``, `motion` should be computed using `delta`.
    /// 
    /// Virtually sets the node's position, scale and rotation to that of the given ``Transform2D``, then tries to move the body along the vector `motion`. Returns `true` if a collision would stop the body from moving along the whole path.
    /// 
    /// `collision` is an optional object of type ``KinematicCollision2D``, which contains additional information about the collision when stopped, or when touching another body along the motion.
    /// 
    /// `safeMargin` is the extra margin used for collision recovery (see ``CharacterBody2D/safeMargin`` for more details).
    /// 
    /// If `recoveryAsCollision` is `true`, any depenetration from the recovery phase is also reported as a collision; this is useful for checking whether the body would _touch_ any other bodies.
    /// 
    public final func testMove(from: Transform2D, motion: Vector2, collision: KinematicCollision2D? = nil, safeMargin: Double = 0.08, recoveryAsCollision: Bool = false) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: motion) { pArg1 in
                withUnsafePointer(to: collision?.handle) { pArg2 in
                    withUnsafePointer(to: safeMargin) { pArg3 in
                        withUnsafePointer(to: recoveryAsCollision) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(PhysicsBody2D.method_test_move, handle, pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_gravity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_gravity")
        return withUnsafePointer(to: &PhysicsBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    /// Returns the gravity vector computed from all sources that can affect the body, including all gravity overrides from ``Area2D`` nodes and the global world gravity.
    public final func getGravity() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(PhysicsBody2D.method_get_gravity, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_collision_exceptions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_exceptions")
        return withUnsafePointer(to: &PhysicsBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Returns an array of nodes that were added as collision exceptions for this body.
    public final func getCollisionExceptions() -> TypedArray<PhysicsBody2D?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(PhysicsBody2D.method_get_collision_exceptions, handle, nil, &_result)
        return TypedArray<PhysicsBody2D?>(takingOver: _result)
    }
    
    fileprivate static let method_add_collision_exception_with: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_collision_exception_with")
        return withUnsafePointer(to: &PhysicsBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1078189570)!
            }
            
        }
        
    }()
    
    /// Adds a body to the list of bodies that this body can't collide with.
    public final func addCollisionExceptionWith(body: Node?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsBody2D.method_add_collision_exception_with, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_collision_exception_with: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_collision_exception_with")
        return withUnsafePointer(to: &PhysicsBody2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1078189570)!
            }
            
        }
        
    }()
    
    /// Removes a body from the list of bodies that this body can't collide with.
    public final func removeCollisionExceptionWith(body: Node?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsBody2D.method_remove_collision_exception_with, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}

