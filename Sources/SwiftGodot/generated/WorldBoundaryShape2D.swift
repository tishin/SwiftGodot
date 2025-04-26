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


/// A 2D world boundary (half-plane) shape used for physics collision.
/// 
/// A 2D world boundary shape, intended for use in physics. ``WorldBoundaryShape2D`` works like an infinite straight line that forces all physics bodies to stay above it. The line's normal determines which direction is considered as "above" and in the editor, the smaller line over it represents this direction. It can for example be used for endless flat floors.
open class WorldBoundaryShape2D: Shape2D {
    private static var className = StringName("WorldBoundaryShape2D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The line's normal, typically a unit vector. Its direction indicates the non-colliding half-plane. Can be of any length but zero. Defaults to ``Vector2/up``.
    final public var normal: Vector2 {
        get {
            return get_normal ()
        }
        
        set {
            set_normal (newValue)
        }
        
    }
    
    /// The distance from the origin to the line, expressed in terms of ``normal`` (according to its direction and magnitude). Actual absolute distance from the origin to the line can be calculated as `abs(distance) / normal.length()`.
    /// 
    /// In the scalar equation of the line `ax + by = d`, this is `d`, while the `(a, b)` coordinates are represented by the ``normal`` property.
    /// 
    final public var distance: Double {
        get {
            return get_distance ()
        }
        
        set {
            set_distance (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_normal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_normal")
        return withUnsafePointer(to: &WorldBoundaryShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_normal(_ normal: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: normal) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(WorldBoundaryShape2D.method_set_normal, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_normal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_normal")
        return withUnsafePointer(to: &WorldBoundaryShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_normal() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(WorldBoundaryShape2D.method_get_normal, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_distance: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_distance")
        return withUnsafePointer(to: &WorldBoundaryShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_distance(_ distance: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: distance) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(WorldBoundaryShape2D.method_set_distance, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_distance: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_distance")
        return withUnsafePointer(to: &WorldBoundaryShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_distance() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(WorldBoundaryShape2D.method_get_distance, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

