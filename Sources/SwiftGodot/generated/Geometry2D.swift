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


/// Provides methods for some common 2D geometric operations.
/// 
/// Provides a set of helper functions to create geometric shapes, compute intersections between shapes, and process various other geometric operations in 2D.
open class Geometry2D: Object {
    /// The shared instance of this class
    public static var shared: Geometry2D {
        return withUnsafePointer(to: &Geometry2D.godotClassName.content) { ptr in
            lookupObject(nativeHandle: gi.global_get_singleton(ptr)!, ownsRef: false)!
        }
        
    }
    
    private static var className = StringName("Geometry2D")
    override open class var godotClassName: StringName { className }
    public enum PolyBooleanOperation: Int64, CaseIterable {
        /// Create regions where either subject or clip polygons (or both) are filled.
        case union = 0 // OPERATION_UNION
        /// Create regions where subject polygons are filled except where clip polygons are filled.
        case difference = 1 // OPERATION_DIFFERENCE
        /// Create regions where both subject and clip polygons are filled.
        case intersection = 2 // OPERATION_INTERSECTION
        /// Create regions where either subject or clip polygons are filled but not where both are filled.
        case xor = 3 // OPERATION_XOR
    }
    
    public enum PolyJoinType: Int64, CaseIterable {
        /// Squaring is applied uniformally at all convex edge joins at `1 * delta`.
        case square = 0 // JOIN_SQUARE
        /// While flattened paths can never perfectly trace an arc, they are approximated by a series of arc chords.
        case round = 1 // JOIN_ROUND
        /// There's a necessary limit to mitered joins since offsetting edges that join at very acute angles will produce excessively long and narrow "spikes". For any given edge join, when miter offsetting would exceed that maximum distance, "square" joining is applied.
        case miter = 2 // JOIN_MITER
    }
    
    public enum PolyEndType: Int64, CaseIterable {
        /// Endpoints are joined using the ``Geometry2D/PolyJoinType`` value and the path filled as a polygon.
        case polygon = 0 // END_POLYGON
        /// Endpoints are joined using the ``Geometry2D/PolyJoinType`` value and the path filled as a polyline.
        case joined = 1 // END_JOINED
        /// Endpoints are squared off with no extension.
        case butt = 2 // END_BUTT
        /// Endpoints are squared off and extended by `delta` units.
        case square = 3 // END_SQUARE
        /// Endpoints are rounded off and extended by `delta` units.
        case round = 4 // END_ROUND
    }
    
    /* Methods */
    fileprivate static let method_is_point_in_circle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_point_in_circle")
        return withUnsafePointer(to: &Geometry2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2929491703)!
            }
            
        }
        
    }()
    
    /// Returns `true` if `point` is inside the circle or if it's located exactly _on_ the circle's boundary, otherwise returns `false`.
    public static func isPointInCircle(point: Vector2, circlePosition: Vector2, circleRadius: Double) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: circlePosition) { pArg1 in
                withUnsafePointer(to: circleRadius) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(method_is_point_in_circle, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_segment_intersects_circle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("segment_intersects_circle")
        return withUnsafePointer(to: &Geometry2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1356928167)!
            }
            
        }
        
    }()
    
    /// Given the 2D segment (`segmentFrom`, `segmentTo`), returns the position on the segment (as a number between 0 and 1) at which the segment hits the circle that is located at position `circlePosition` and has radius `circleRadius`. If the segment does not intersect the circle, -1 is returned (this is also the case if the line extending the segment would intersect the circle, but the segment does not).
    public static func segmentIntersectsCircle(segmentFrom: Vector2, segmentTo: Vector2, circlePosition: Vector2, circleRadius: Double) -> Double {
        var _result: Double = 0.0
        withUnsafePointer(to: segmentFrom) { pArg0 in
            withUnsafePointer(to: segmentTo) { pArg1 in
                withUnsafePointer(to: circlePosition) { pArg2 in
                    withUnsafePointer(to: circleRadius) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(method_segment_intersects_circle, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_segment_intersects_segment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("segment_intersects_segment")
        return withUnsafePointer(to: &Geometry2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2058025344)!
            }
            
        }
        
    }()
    
    /// Checks if the two segments (`fromA`, `toA`) and (`fromB`, `toB`) intersect. If yes, return the point of intersection as ``Vector2``. If no intersection takes place, returns `null`.
    public static func segmentIntersectsSegment(fromA: Vector2, toA: Vector2, fromB: Vector2, toB: Vector2) -> Variant? {
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: fromA) { pArg0 in
            withUnsafePointer(to: toA) { pArg1 in
                withUnsafePointer(to: fromB) { pArg2 in
                    withUnsafePointer(to: toB) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(method_segment_intersects_segment, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_line_intersects_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("line_intersects_line")
        return withUnsafePointer(to: &Geometry2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2058025344)!
            }
            
        }
        
    }()
    
    /// Returns the point of intersection between the two lines (`fromA`, `dirA`) and (`fromB`, `dirB`). Returns a ``Vector2``, or `null` if the lines are parallel.
    /// 
    /// `from` and `dir` are _not_ endpoints of a line segment or ray but the slope (`dir`) and a known point (`from`) on that line.
    /// 
    public static func lineIntersectsLine(fromA: Vector2, dirA: Vector2, fromB: Vector2, dirB: Vector2) -> Variant? {
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: fromA) { pArg0 in
            withUnsafePointer(to: dirA) { pArg1 in
                withUnsafePointer(to: fromB) { pArg2 in
                    withUnsafePointer(to: dirB) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(method_line_intersects_line, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_get_closest_points_between_segments: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_closest_points_between_segments")
        return withUnsafePointer(to: &Geometry2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3344690961)!
            }
            
        }
        
    }()
    
    /// Given the two 2D segments (`p1`, `q1`) and (`p2`, `q2`), finds those two points on the two segments that are closest to each other. Returns a ``PackedVector2Array`` that contains this point on (`p1`, `q1`) as well the accompanying point on (`p2`, `q2`).
    public static func getClosestPointsBetweenSegments(p1: Vector2, q1: Vector2, p2: Vector2, q2: Vector2) -> PackedVector2Array {
        let _result: PackedVector2Array = PackedVector2Array ()
        withUnsafePointer(to: p1) { pArg0 in
            withUnsafePointer(to: q1) { pArg1 in
                withUnsafePointer(to: p2) { pArg2 in
                    withUnsafePointer(to: q2) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(method_get_closest_points_between_segments, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result.content)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_closest_point_to_segment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_closest_point_to_segment")
        return withUnsafePointer(to: &Geometry2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4172901909)!
            }
            
        }
        
    }()
    
    /// Returns the 2D point on the 2D segment (`s1`, `s2`) that is closest to `point`. The returned point will always be inside the specified segment.
    public static func getClosestPointToSegment(point: Vector2, s1: Vector2, s2: Vector2) -> Vector2 {
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: s1) { pArg1 in
                withUnsafePointer(to: s2) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(method_get_closest_point_to_segment, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_closest_point_to_segment_uncapped: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_closest_point_to_segment_uncapped")
        return withUnsafePointer(to: &Geometry2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4172901909)!
            }
            
        }
        
    }()
    
    /// Returns the 2D point on the 2D line defined by (`s1`, `s2`) that is closest to `point`. The returned point can be inside the segment (`s1`, `s2`) or outside of it, i.e. somewhere on the line extending from the segment.
    public static func getClosestPointToSegmentUncapped(point: Vector2, s1: Vector2, s2: Vector2) -> Vector2 {
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: s1) { pArg1 in
                withUnsafePointer(to: s2) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(method_get_closest_point_to_segment_uncapped, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_point_is_inside_triangle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("point_is_inside_triangle")
        return withUnsafePointer(to: &Geometry2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1025948137)!
            }
            
        }
        
    }()
    
    /// Returns if `point` is inside the triangle specified by `a`, `b` and `c`.
    public static func pointIsInsideTriangle(point: Vector2, a: Vector2, b: Vector2, c: Vector2) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: a) { pArg1 in
                withUnsafePointer(to: b) { pArg2 in
                    withUnsafePointer(to: c) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(method_point_is_inside_triangle, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_polygon_clockwise: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_polygon_clockwise")
        return withUnsafePointer(to: &Geometry2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1361156557)!
            }
            
        }
        
    }()
    
    /// Returns `true` if `polygon`'s vertices are ordered in clockwise order, otherwise returns `false`.
    /// 
    /// > Note: Assumes a Cartesian coordinate system where `+x` is right and `+y` is up. If using screen coordinates (`+y` is down), the result will need to be flipped (i.e. a `true` result will indicate counter-clockwise).
    /// 
    public static func isPolygonClockwise(polygon: PackedVector2Array) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: polygon.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_is_polygon_clockwise, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_point_in_polygon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_point_in_polygon")
        return withUnsafePointer(to: &Geometry2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 738277916)!
            }
            
        }
        
    }()
    
    /// Returns `true` if `point` is inside `polygon` or if it's located exactly _on_ polygon's boundary, otherwise returns `false`.
    public static func isPointInPolygon(point: Vector2, polygon: PackedVector2Array) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: polygon.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_is_point_in_polygon, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_triangulate_polygon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("triangulate_polygon")
        return withUnsafePointer(to: &Geometry2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1389921771)!
            }
            
        }
        
    }()
    
    /// Triangulates the polygon specified by the points in `polygon`. Returns a ``PackedInt32Array`` where each triangle consists of three consecutive point indices into `polygon` (i.e. the returned array will have `n * 3` elements, with `n` being the number of found triangles). Output triangles will always be counter clockwise, and the contour will be flipped if it's clockwise. If the triangulation did not succeed, an empty ``PackedInt32Array`` is returned.
    public static func triangulatePolygon(_ polygon: PackedVector2Array) -> PackedInt32Array {
        let _result: PackedInt32Array = PackedInt32Array ()
        withUnsafePointer(to: polygon.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_triangulate_polygon, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_triangulate_delaunay: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("triangulate_delaunay")
        return withUnsafePointer(to: &Geometry2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1389921771)!
            }
            
        }
        
    }()
    
    /// Triangulates the area specified by discrete set of `points` such that no point is inside the circumcircle of any resulting triangle. Returns a ``PackedInt32Array`` where each triangle consists of three consecutive point indices into `points` (i.e. the returned array will have `n * 3` elements, with `n` being the number of found triangles). If the triangulation did not succeed, an empty ``PackedInt32Array`` is returned.
    public static func triangulateDelaunay(points: PackedVector2Array) -> PackedInt32Array {
        let _result: PackedInt32Array = PackedInt32Array ()
        withUnsafePointer(to: points.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_triangulate_delaunay, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_convex_hull: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("convex_hull")
        return withUnsafePointer(to: &Geometry2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2004331998)!
            }
            
        }
        
    }()
    
    /// Given an array of ``Vector2``s, returns the convex hull as a list of points in counterclockwise order. The last point is the same as the first one.
    public static func convexHull(points: PackedVector2Array) -> PackedVector2Array {
        let _result: PackedVector2Array = PackedVector2Array ()
        withUnsafePointer(to: points.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_convex_hull, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_decompose_polygon_in_convex: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("decompose_polygon_in_convex")
        return withUnsafePointer(to: &Geometry2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3982393695)!
            }
            
        }
        
    }()
    
    /// Decomposes the `polygon` into multiple convex hulls and returns an array of ``PackedVector2Array``.
    public static func decomposePolygonInConvex(polygon: PackedVector2Array) -> TypedArray<PackedVector2Array> {
        var _result: Int64 = 0
        withUnsafePointer(to: polygon.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_decompose_polygon_in_convex, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return TypedArray<PackedVector2Array>(takingOver: _result)
    }
    
    fileprivate static let method_merge_polygons: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("merge_polygons")
        return withUnsafePointer(to: &Geometry2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3637387053)!
            }
            
        }
        
    }()
    
    /// Merges (combines) `polygonA` and `polygonB` and returns an array of merged polygons. This performs ``PolyBooleanOperation/union`` between polygons.
    /// 
    /// The operation may result in an outer polygon (boundary) and multiple inner polygons (holes) produced which could be distinguished by calling ``isPolygonClockwise(polygon:)``.
    /// 
    public static func mergePolygons(polygonA: PackedVector2Array, polygonB: PackedVector2Array) -> TypedArray<PackedVector2Array> {
        var _result: Int64 = 0
        withUnsafePointer(to: polygonA.content) { pArg0 in
            withUnsafePointer(to: polygonB.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_merge_polygons, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return TypedArray<PackedVector2Array>(takingOver: _result)
    }
    
    fileprivate static let method_clip_polygons: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clip_polygons")
        return withUnsafePointer(to: &Geometry2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3637387053)!
            }
            
        }
        
    }()
    
    /// Clips `polygonA` against `polygonB` and returns an array of clipped polygons. This performs ``PolyBooleanOperation/difference`` between polygons. Returns an empty array if `polygonB` completely overlaps `polygonA`.
    /// 
    /// If `polygonB` is enclosed by `polygonA`, returns an outer polygon (boundary) and inner polygon (hole) which could be distinguished by calling ``isPolygonClockwise(polygon:)``.
    /// 
    public static func clipPolygons(polygonA: PackedVector2Array, polygonB: PackedVector2Array) -> TypedArray<PackedVector2Array> {
        var _result: Int64 = 0
        withUnsafePointer(to: polygonA.content) { pArg0 in
            withUnsafePointer(to: polygonB.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_clip_polygons, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return TypedArray<PackedVector2Array>(takingOver: _result)
    }
    
    fileprivate static let method_intersect_polygons: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("intersect_polygons")
        return withUnsafePointer(to: &Geometry2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3637387053)!
            }
            
        }
        
    }()
    
    /// Intersects `polygonA` with `polygonB` and returns an array of intersected polygons. This performs ``PolyBooleanOperation/intersection`` between polygons. In other words, returns common area shared by polygons. Returns an empty array if no intersection occurs.
    /// 
    /// The operation may result in an outer polygon (boundary) and inner polygon (hole) produced which could be distinguished by calling ``isPolygonClockwise(polygon:)``.
    /// 
    public static func intersectPolygons(polygonA: PackedVector2Array, polygonB: PackedVector2Array) -> TypedArray<PackedVector2Array> {
        var _result: Int64 = 0
        withUnsafePointer(to: polygonA.content) { pArg0 in
            withUnsafePointer(to: polygonB.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_intersect_polygons, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return TypedArray<PackedVector2Array>(takingOver: _result)
    }
    
    fileprivate static let method_exclude_polygons: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("exclude_polygons")
        return withUnsafePointer(to: &Geometry2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3637387053)!
            }
            
        }
        
    }()
    
    /// Mutually excludes common area defined by intersection of `polygonA` and `polygonB` (see ``intersectPolygons(polygonA:polygonB:)``) and returns an array of excluded polygons. This performs ``PolyBooleanOperation/xor`` between polygons. In other words, returns all but common area between polygons.
    /// 
    /// The operation may result in an outer polygon (boundary) and inner polygon (hole) produced which could be distinguished by calling ``isPolygonClockwise(polygon:)``.
    /// 
    public static func excludePolygons(polygonA: PackedVector2Array, polygonB: PackedVector2Array) -> TypedArray<PackedVector2Array> {
        var _result: Int64 = 0
        withUnsafePointer(to: polygonA.content) { pArg0 in
            withUnsafePointer(to: polygonB.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_exclude_polygons, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return TypedArray<PackedVector2Array>(takingOver: _result)
    }
    
    fileprivate static let method_clip_polyline_with_polygon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clip_polyline_with_polygon")
        return withUnsafePointer(to: &Geometry2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3637387053)!
            }
            
        }
        
    }()
    
    /// Clips `polyline` against `polygon` and returns an array of clipped polylines. This performs ``PolyBooleanOperation/difference`` between the polyline and the polygon. This operation can be thought of as cutting a line with a closed shape.
    public static func clipPolylineWithPolygon(polyline: PackedVector2Array, polygon: PackedVector2Array) -> TypedArray<PackedVector2Array> {
        var _result: Int64 = 0
        withUnsafePointer(to: polyline.content) { pArg0 in
            withUnsafePointer(to: polygon.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_clip_polyline_with_polygon, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return TypedArray<PackedVector2Array>(takingOver: _result)
    }
    
    fileprivate static let method_intersect_polyline_with_polygon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("intersect_polyline_with_polygon")
        return withUnsafePointer(to: &Geometry2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3637387053)!
            }
            
        }
        
    }()
    
    /// Intersects `polyline` with `polygon` and returns an array of intersected polylines. This performs ``PolyBooleanOperation/intersection`` between the polyline and the polygon. This operation can be thought of as chopping a line with a closed shape.
    public static func intersectPolylineWithPolygon(polyline: PackedVector2Array, polygon: PackedVector2Array) -> TypedArray<PackedVector2Array> {
        var _result: Int64 = 0
        withUnsafePointer(to: polyline.content) { pArg0 in
            withUnsafePointer(to: polygon.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_intersect_polyline_with_polygon, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return TypedArray<PackedVector2Array>(takingOver: _result)
    }
    
    fileprivate static let method_offset_polygon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("offset_polygon")
        return withUnsafePointer(to: &Geometry2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1275354010)!
            }
            
        }
        
    }()
    
    /// Inflates or deflates `polygon` by `delta` units (pixels). If `delta` is positive, makes the polygon grow outward. If `delta` is negative, shrinks the polygon inward. Returns an array of polygons because inflating/deflating may result in multiple discrete polygons. Returns an empty array if `delta` is negative and the absolute value of it approximately exceeds the minimum bounding rectangle dimensions of the polygon.
    /// 
    /// Each polygon's vertices will be rounded as determined by `joinType`, see ``Geometry2D/PolyJoinType``.
    /// 
    /// The operation may result in an outer polygon (boundary) and inner polygon (hole) produced which could be distinguished by calling ``isPolygonClockwise(polygon:)``.
    /// 
    /// > Note: To translate the polygon's vertices specifically, multiply them to a ``Transform2D``:
    /// 
    public static func offsetPolygon(_ polygon: PackedVector2Array, delta: Double, joinType: Geometry2D.PolyJoinType = .square) -> TypedArray<PackedVector2Array> {
        var _result: Int64 = 0
        withUnsafePointer(to: polygon.content) { pArg0 in
            withUnsafePointer(to: delta) { pArg1 in
                withUnsafePointer(to: joinType.rawValue) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(method_offset_polygon, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return TypedArray<PackedVector2Array>(takingOver: _result)
    }
    
    fileprivate static let method_offset_polyline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("offset_polyline")
        return withUnsafePointer(to: &Geometry2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2328231778)!
            }
            
        }
        
    }()
    
    /// Inflates or deflates `polyline` by `delta` units (pixels), producing polygons. If `delta` is positive, makes the polyline grow outward. Returns an array of polygons because inflating/deflating may result in multiple discrete polygons. If `delta` is negative, returns an empty array.
    /// 
    /// Each polygon's vertices will be rounded as determined by `joinType`, see ``Geometry2D/PolyJoinType``.
    /// 
    /// Each polygon's endpoints will be rounded as determined by `endType`, see ``Geometry2D/PolyEndType``.
    /// 
    /// The operation may result in an outer polygon (boundary) and inner polygon (hole) produced which could be distinguished by calling ``isPolygonClockwise(polygon:)``.
    /// 
    public static func offsetPolyline(_ polyline: PackedVector2Array, delta: Double, joinType: Geometry2D.PolyJoinType = .square, endType: Geometry2D.PolyEndType = .square) -> TypedArray<PackedVector2Array> {
        var _result: Int64 = 0
        withUnsafePointer(to: polyline.content) { pArg0 in
            withUnsafePointer(to: delta) { pArg1 in
                withUnsafePointer(to: joinType.rawValue) { pArg2 in
                    withUnsafePointer(to: endType.rawValue) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(method_offset_polyline, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return TypedArray<PackedVector2Array>(takingOver: _result)
    }
    
    fileprivate static let method_make_atlas: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("make_atlas")
        return withUnsafePointer(to: &Geometry2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1337682371)!
            }
            
        }
        
    }()
    
    /// Given an array of ``Vector2``s representing tiles, builds an atlas. The returned dictionary has two keys: `points` is a ``PackedVector2Array`` that specifies the positions of each tile, `size` contains the overall size of the whole atlas as ``Vector2i``.
    public static func makeAtlas(sizes: PackedVector2Array) -> VariantDictionary {
        let _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: sizes.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_make_atlas, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_bresenham_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("bresenham_line")
        return withUnsafePointer(to: &Geometry2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1989391000)!
            }
            
        }
        
    }()
    
    /// Returns the <a href="https://en.wikipedia.org/wiki/Bresenham%27s_line_algorithm">Bresenham line</a> between the `from` and `to` points. A Bresenham line is a series of pixels that draws a line and is always 1-pixel thick on every row and column of the drawing (never more, never less).
    /// 
    /// Example code to draw a line between two ``Marker2D`` nodes using a series of ``CanvasItem/drawRect(_:color:filled:width:antialiased:)`` calls:
    /// 
    public static func bresenhamLine(from: Vector2i, to: Vector2i) -> TypedArray<Vector2i> {
        var _result: Int64 = 0
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: to) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_bresenham_line, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return TypedArray<Vector2i>(takingOver: _result)
    }
    
}

