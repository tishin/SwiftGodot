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


/// A 2D convex polygon shape used for physics collision.
/// 
/// A 2D convex polygon shape, intended for use in physics. Used internally in ``CollisionPolygon2D`` when it's in ``CollisionPolygon2D/BuildMode/solids`` mode.
/// 
/// ``ConvexPolygonShape2D`` is _solid_, which means it detects collisions from objects that are fully inside it, unlike ``ConcavePolygonShape2D`` which is hollow. This makes it more suitable for both detection and physics.
/// 
/// **Convex decomposition:** A concave polygon can be split up into several convex polygons. This allows dynamic physics bodies to have complex concave collisions (at a performance cost) and can be achieved by using several ``ConvexPolygonShape2D`` nodes or by using the ``CollisionPolygon2D`` node in ``CollisionPolygon2D/BuildMode/solids`` mode. To generate a collision polygon from a sprite, select the ``Sprite2D`` node, go to the **Sprite2D** menu that appears above the viewport, and choose **Create Polygon2D Sibling**.
/// 
/// **Performance:** ``ConvexPolygonShape2D`` is faster to check collisions against compared to ``ConcavePolygonShape2D``, but it is slower than primitive collision shapes such as ``CircleShape2D`` and ``RectangleShape2D``. Its use should generally be limited to medium-sized objects that cannot have their collision accurately represented by primitive shapes.
/// 
open class ConvexPolygonShape2D: Shape2D {
    private static var className = StringName("ConvexPolygonShape2D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The polygon's list of vertices that form a convex hull. Can be in either clockwise or counterclockwise order.
    /// 
    /// > Warning: Only set this property to a list of points that actually form a convex hull. Use ``setPointCloud(_:)`` to generate the convex hull of an arbitrary set of points.
    /// 
    final public var points: PackedVector2Array {
        get {
            return get_points ()
        }
        
        set {
            set_points (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_point_cloud: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_point_cloud")
        return withUnsafePointer(to: &ConvexPolygonShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1509147220)!
            }
            
        }
        
    }()
    
    /// Based on the set of points provided, this assigns the ``points`` property using the convex hull algorithm, removing all unneeded points. See ``Geometry2D/convexHull(points:)`` for details.
    public final func setPointCloud(_ pointCloud: PackedVector2Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pointCloud.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ConvexPolygonShape2D.method_set_point_cloud, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_points: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_points")
        return withUnsafePointer(to: &ConvexPolygonShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1509147220)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_points(_ points: PackedVector2Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: points.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ConvexPolygonShape2D.method_set_points, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_points: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_points")
        return withUnsafePointer(to: &ConvexPolygonShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2961356807)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_points() -> PackedVector2Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedVector2Array = PackedVector2Array ()
        gi.object_method_bind_ptrcall(ConvexPolygonShape2D.method_get_points, handle, nil, &_result.content)
        return _result
    }
    
}

