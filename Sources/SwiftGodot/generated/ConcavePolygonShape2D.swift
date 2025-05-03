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


/// A 2D polyline shape used for physics collision.
/// 
/// A 2D polyline shape, intended for use in physics. Used internally in ``CollisionPolygon2D`` when it's in ``CollisionPolygon2D/BuildMode/segments`` mode.
/// 
/// Being just a collection of interconnected line segments, ``ConcavePolygonShape2D`` is the most freely configurable single 2D shape. It can be used to form polygons of any nature, or even shapes that don't enclose an area. However, ``ConcavePolygonShape2D`` is _hollow_ even if the interconnected line segments do enclose an area, which often makes it unsuitable for physics or detection.
/// 
/// > Note: When used for collision, ``ConcavePolygonShape2D`` is intended to work with static ``CollisionShape2D`` nodes like ``StaticBody2D`` and will likely not behave well for ``CharacterBody2D``s or ``RigidBody2D``s in a mode other than Static.
/// 
/// > Warning: Physics bodies that are small have a chance to clip through this shape when moving fast. This happens because on one frame, the physics body may be on the "outside" of the shape, and on the next frame it may be "inside" it. ``ConcavePolygonShape2D`` is hollow, so it won't detect a collision.
/// 
/// **Performance:** Due to its complexity, ``ConcavePolygonShape2D`` is the slowest 2D collision shape to check collisions against. Its use should generally be limited to level geometry. If the polyline is closed, ``CollisionPolygon2D``'s ``CollisionPolygon2D/BuildMode/solids`` mode can be used, which decomposes the polygon into convex ones; see ``ConvexPolygonShape2D``'s documentation for instructions.
/// 
open class ConcavePolygonShape2D: Shape2D {
    private static var className = StringName("ConcavePolygonShape2D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The array of points that make up the ``ConcavePolygonShape2D``'s line segments. The array (of length divisible by two) is naturally divided into pairs (one pair for each segment); each pair consists of the starting point of a segment and the endpoint of a segment.
    final public var segments: PackedVector2Array {
        get {
            return get_segments ()
        }
        
        set {
            set_segments (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_segments: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_segments")
        return withUnsafePointer(to: &ConcavePolygonShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1509147220)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_segments(_ segments: PackedVector2Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: segments.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ConcavePolygonShape2D.method_set_segments, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_segments: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_segments")
        return withUnsafePointer(to: &ConcavePolygonShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2961356807)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_segments() -> PackedVector2Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedVector2Array = PackedVector2Array ()
        gi.object_method_bind_ptrcall(ConcavePolygonShape2D.method_get_segments, handle, nil, &_result.content)
        return _result
    }
    
}

