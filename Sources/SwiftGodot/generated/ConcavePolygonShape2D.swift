// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A 2D polyline shape used for physics collision.
/// 
/// A 2D polyline shape, intended for use in physics. Used internally in ``CollisionPolygon2D`` when it's in ``CollisionPolygon2D/BuildMode/buildSegments`` mode.
/// 
/// Being just a collection of interconnected line segments, ``ConcavePolygonShape2D`` is the most freely configurable single 2D shape. It can be used to form polygons of any nature, or even shapes that don't enclose an area. However, ``ConcavePolygonShape2D`` is _hollow_ even if the interconnected line segments do enclose an area, which often makes it unsuitable for physics or detection.
/// 
/// > Note: When used for collision, ``ConcavePolygonShape2D`` is intended to work with static ``CollisionShape2D`` nodes like ``StaticBody2D`` and will likely not behave well for ``CharacterBody2D``s or ``RigidBody2D``s in a mode other than Static.
/// 
/// > Warning: Physics bodies that are small have a chance to clip through this shape when moving fast. This happens because on one frame, the physics body may be on the "outside" of the shape, and on the next frame it may be "inside" it. ``ConcavePolygonShape2D`` is hollow, so it won't detect a collision.
/// 
/// **Performance:** Due to its complexity, ``ConcavePolygonShape2D`` is the slowest 2D collision shape to check collisions against. Its use should generally be limited to level geometry. If the polyline is closed, ``CollisionPolygon2D``'s ``CollisionPolygon2D/BuildMode/buildSolids`` mode can be used, which decomposes the polygon into convex ones; see ``ConvexPolygonShape2D``'s documentation for instructions.
/// 
open class ConcavePolygonShape2D: Shape2D {
    override open class var godotClassName: StringName { "ConcavePolygonShape2D" }
    
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
    fileprivate static var method_set_segments: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_segments")
        return withUnsafePointer (to: &ConcavePolygonShape2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1509147220)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_segments (_ segments: PackedVector2Array) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (ConcavePolygonShape2D.method_set_segments, UnsafeMutableRawPointer (mutating: handle), nil, &segments.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &segments.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ConcavePolygonShape2D.method_set_segments, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_segments: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_segments")
        return withUnsafePointer (to: &ConcavePolygonShape2D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2961356807)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_segments ()-> PackedVector2Array {
        let _result: PackedVector2Array = PackedVector2Array ()
        gi.object_method_bind_ptrcall (ConcavePolygonShape2D.method_get_segments, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
}

