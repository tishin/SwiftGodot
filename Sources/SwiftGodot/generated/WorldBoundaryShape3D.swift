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


/// A 3D world boundary (half-space) shape used for physics collision.
/// 
/// A 3D world boundary shape, intended for use in physics. ``WorldBoundaryShape3D`` works like an infinite plane that forces all physics bodies to stay above it. The ``plane``'s normal determines which direction is considered as "above" and in the editor, the line over the plane represents this direction. It can for example be used for endless flat floors.
/// 
/// > Note: When the physics engine is set to **Jolt Physics** in the project settings (``ProjectSettings/physics/3d/physicsEngine``), ``WorldBoundaryShape3D`` has a finite size (centered at the shape's origin). It can be adjusted by changing ``ProjectSettings/physics/joltPhysics3d/limits/worldBoundaryShapeSize``.
/// 
open class WorldBoundaryShape3D: Shape3D {
    private static var className = StringName("WorldBoundaryShape3D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The ``Plane`` used by the ``WorldBoundaryShape3D`` for collision.
    final public var plane: Plane {
        get {
            return get_plane ()
        }
        
        set {
            set_plane (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_plane: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_plane")
        return withUnsafePointer(to: &WorldBoundaryShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3505987427)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_plane(_ plane: Plane) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: plane) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(WorldBoundaryShape3D.method_set_plane, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_plane: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_plane")
        return withUnsafePointer(to: &WorldBoundaryShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2753500971)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_plane() -> Plane {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Plane = Plane ()
        gi.object_method_bind_ptrcall(WorldBoundaryShape3D.method_get_plane, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

