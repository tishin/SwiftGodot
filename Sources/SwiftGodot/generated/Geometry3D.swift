// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Provides methods for some common 3D geometric operations.
/// 
/// Provides a set of helper functions to create geometric shapes, compute intersections between shapes, and process various other geometric operations in 3D.
open class Geometry3D: Object {
    /// The shared instance of this class
    public static var shared: Geometry3D = {
        return withUnsafePointer (to: &Geometry3D.godotClassName.content) { ptr in
            Geometry3D (nativeHandle: gi.global_get_singleton (ptr)!)
        }
        
    }()
    
    override open class var godotClassName: StringName { "Geometry3D" }
    /* Methods */
    fileprivate static var method_compute_convex_mesh_points: GDExtensionMethodBindPtr = {
        let methodName = StringName("compute_convex_mesh_points")
        return withUnsafePointer(to: &Geometry3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1936902142)!
            }
            
        }
        
    }()
    
    /// Calculates and returns all the vertex points of a convex shape defined by an array of `planes`.
    public static func computeConvexMeshPoints(planes: VariantCollection<Plane>) -> PackedVector3Array {
        let _result: PackedVector3Array = PackedVector3Array ()
        withUnsafePointer(to: planes.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_compute_convex_mesh_points, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_build_box_planes: GDExtensionMethodBindPtr = {
        let methodName = StringName("build_box_planes")
        return withUnsafePointer(to: &Geometry3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3622277145)!
            }
            
        }
        
    }()
    
    /// Returns an array with 6 ``Plane``s that describe the sides of a box centered at the origin. The box size is defined by `extents`, which represents one (positive) corner of the box (i.e. half its actual size).
    public static func buildBoxPlanes(extents: Vector3) -> VariantCollection<Plane> {
        var _result: Int64 = 0
        withUnsafePointer(to: extents) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_build_box_planes, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return VariantCollection<Plane>(content: _result)
    }
    
    fileprivate static var method_build_cylinder_planes: GDExtensionMethodBindPtr = {
        let methodName = StringName("build_cylinder_planes")
        return withUnsafePointer(to: &Geometry3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 449920067)!
            }
            
        }
        
    }()
    
    /// Returns an array of ``Plane``s closely bounding a faceted cylinder centered at the origin with radius `radius` and height `height`. The parameter `sides` defines how many planes will be generated for the round part of the cylinder. The parameter `axis` describes the axis along which the cylinder is oriented (0 for X, 1 for Y, 2 for Z).
    public static func buildCylinderPlanes(radius: Double, height: Double, sides: Int32, axis: Vector3.Axis = .z) -> VariantCollection<Plane> {
        var _result: Int64 = 0
        withUnsafePointer(to: radius) { pArg0 in
            withUnsafePointer(to: height) { pArg1 in
                withUnsafePointer(to: sides) { pArg2 in
                    withUnsafePointer(to: axis.rawValue) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(method_build_cylinder_planes, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return VariantCollection<Plane>(content: _result)
    }
    
    fileprivate static var method_build_capsule_planes: GDExtensionMethodBindPtr = {
        let methodName = StringName("build_capsule_planes")
        return withUnsafePointer(to: &Geometry3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2113592876)!
            }
            
        }
        
    }()
    
    /// Returns an array of ``Plane``s closely bounding a faceted capsule centered at the origin with radius `radius` and height `height`. The parameter `sides` defines how many planes will be generated for the side part of the capsule, whereas `lats` gives the number of latitudinal steps at the bottom and top of the capsule. The parameter `axis` describes the axis along which the capsule is oriented (0 for X, 1 for Y, 2 for Z).
    public static func buildCapsulePlanes(radius: Double, height: Double, sides: Int32, lats: Int32, axis: Vector3.Axis = .z) -> VariantCollection<Plane> {
        var _result: Int64 = 0
        withUnsafePointer(to: radius) { pArg0 in
            withUnsafePointer(to: height) { pArg1 in
                withUnsafePointer(to: sides) { pArg2 in
                    withUnsafePointer(to: lats) { pArg3 in
                        withUnsafePointer(to: axis.rawValue) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(method_build_capsule_planes, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return VariantCollection<Plane>(content: _result)
    }
    
    fileprivate static var method_get_closest_points_between_segments: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_closest_points_between_segments")
        return withUnsafePointer(to: &Geometry3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1056373962)!
            }
            
        }
        
    }()
    
    /// Given the two 3D segments (`p1`, `p2`) and (`q1`, `q2`), finds those two points on the two segments that are closest to each other. Returns a ``PackedVector3Array`` that contains this point on (`p1`, `p2`) as well the accompanying point on (`q1`, `q2`).
    public static func getClosestPointsBetweenSegments(p1: Vector3, p2: Vector3, q1: Vector3, q2: Vector3) -> PackedVector3Array {
        let _result: PackedVector3Array = PackedVector3Array ()
        withUnsafePointer(to: p1) { pArg0 in
            withUnsafePointer(to: p2) { pArg1 in
                withUnsafePointer(to: q1) { pArg2 in
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
    
    fileprivate static var method_get_closest_point_to_segment: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_closest_point_to_segment")
        return withUnsafePointer(to: &Geometry3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2168193209)!
            }
            
        }
        
    }()
    
    /// Returns the 3D point on the 3D segment (`s1`, `s2`) that is closest to `point`. The returned point will always be inside the specified segment.
    public static func getClosestPointToSegment(point: Vector3, s1: Vector3, s2: Vector3) -> Vector3 {
        var _result: Vector3 = Vector3 ()
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
    
    fileprivate static var method_get_closest_point_to_segment_uncapped: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_closest_point_to_segment_uncapped")
        return withUnsafePointer(to: &Geometry3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2168193209)!
            }
            
        }
        
    }()
    
    /// Returns the 3D point on the 3D line defined by (`s1`, `s2`) that is closest to `point`. The returned point can be inside the segment (`s1`, `s2`) or outside of it, i.e. somewhere on the line extending from the segment.
    public static func getClosestPointToSegmentUncapped(point: Vector3, s1: Vector3, s2: Vector3) -> Vector3 {
        var _result: Vector3 = Vector3 ()
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
    
    fileprivate static var method_get_triangle_barycentric_coords: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_triangle_barycentric_coords")
        return withUnsafePointer(to: &Geometry3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1362048029)!
            }
            
        }
        
    }()
    
    /// Returns a ``Vector3`` containing weights based on how close a 3D position (`point`) is to a triangle's different vertices (`a`, `b` and `c`). This is useful for interpolating between the data of different vertices in a triangle. One example use case is using this to smoothly rotate over a mesh instead of relying solely on face normals.
    /// 
    /// <a href="https://en.wikipedia.org/wiki/Barycentric_coordinate_system">Here is a more detailed explanation of barycentric coordinates.</a>
    /// 
    public static func getTriangleBarycentricCoords(point: Vector3, a: Vector3, b: Vector3, c: Vector3) -> Vector3 {
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: a) { pArg1 in
                withUnsafePointer(to: b) { pArg2 in
                    withUnsafePointer(to: c) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(method_get_triangle_barycentric_coords, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_ray_intersects_triangle: GDExtensionMethodBindPtr = {
        let methodName = StringName("ray_intersects_triangle")
        return withUnsafePointer(to: &Geometry3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1718655448)!
            }
            
        }
        
    }()
    
    /// Tests if the 3D ray starting at `from` with the direction of `dir` intersects the triangle specified by `a`, `b` and `c`. If yes, returns the point of intersection as ``Vector3``. If no intersection takes place, returns `null`.
    public static func rayIntersectsTriangle(from: Vector3, dir: Vector3, a: Vector3, b: Vector3, c: Vector3) -> Variant {
        let _result: Variant = Variant ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: dir) { pArg1 in
                withUnsafePointer(to: a) { pArg2 in
                    withUnsafePointer(to: b) { pArg3 in
                        withUnsafePointer(to: c) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(method_ray_intersects_triangle, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result.content)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_segment_intersects_triangle: GDExtensionMethodBindPtr = {
        let methodName = StringName("segment_intersects_triangle")
        return withUnsafePointer(to: &Geometry3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1718655448)!
            }
            
        }
        
    }()
    
    /// Tests if the segment (`from`, `to`) intersects the triangle `a`, `b`, `c`. If yes, returns the point of intersection as ``Vector3``. If no intersection takes place, returns `null`.
    public static func segmentIntersectsTriangle(from: Vector3, to: Vector3, a: Vector3, b: Vector3, c: Vector3) -> Variant {
        let _result: Variant = Variant ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: to) { pArg1 in
                withUnsafePointer(to: a) { pArg2 in
                    withUnsafePointer(to: b) { pArg3 in
                        withUnsafePointer(to: c) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(method_segment_intersects_triangle, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result.content)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_segment_intersects_sphere: GDExtensionMethodBindPtr = {
        let methodName = StringName("segment_intersects_sphere")
        return withUnsafePointer(to: &Geometry3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4080141172)!
            }
            
        }
        
    }()
    
    /// Checks if the segment (`from`, `to`) intersects the sphere that is located at `spherePosition` and has radius `sphereRadius`. If no, returns an empty ``PackedVector3Array``. If yes, returns a ``PackedVector3Array`` containing the point of intersection and the sphere's normal at the point of intersection.
    public static func segmentIntersectsSphere(from: Vector3, to: Vector3, spherePosition: Vector3, sphereRadius: Double) -> PackedVector3Array {
        let _result: PackedVector3Array = PackedVector3Array ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: to) { pArg1 in
                withUnsafePointer(to: spherePosition) { pArg2 in
                    withUnsafePointer(to: sphereRadius) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(method_segment_intersects_sphere, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result.content)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_segment_intersects_cylinder: GDExtensionMethodBindPtr = {
        let methodName = StringName("segment_intersects_cylinder")
        return withUnsafePointer(to: &Geometry3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2361316491)!
            }
            
        }
        
    }()
    
    /// Checks if the segment (`from`, `to`) intersects the cylinder with height `height` that is centered at the origin and has radius `radius`. If no, returns an empty ``PackedVector3Array``. If an intersection takes place, the returned array contains the point of intersection and the cylinder's normal at the point of intersection.
    public static func segmentIntersectsCylinder(from: Vector3, to: Vector3, height: Double, radius: Double) -> PackedVector3Array {
        let _result: PackedVector3Array = PackedVector3Array ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: to) { pArg1 in
                withUnsafePointer(to: height) { pArg2 in
                    withUnsafePointer(to: radius) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(method_segment_intersects_cylinder, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result.content)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_segment_intersects_convex: GDExtensionMethodBindPtr = {
        let methodName = StringName("segment_intersects_convex")
        return withUnsafePointer(to: &Geometry3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 537425332)!
            }
            
        }
        
    }()
    
    /// Given a convex hull defined though the ``Plane``s in the array `planes`, tests if the segment (`from`, `to`) intersects with that hull. If an intersection is found, returns a ``PackedVector3Array`` containing the point the intersection and the hull's normal. Otherwise, returns an empty array.
    public static func segmentIntersectsConvex(from: Vector3, to: Vector3, planes: VariantCollection<Plane>) -> PackedVector3Array {
        let _result: PackedVector3Array = PackedVector3Array ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: to) { pArg1 in
                withUnsafePointer(to: planes.array.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(method_segment_intersects_convex, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_clip_polygon: GDExtensionMethodBindPtr = {
        let methodName = StringName("clip_polygon")
        return withUnsafePointer(to: &Geometry3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2603188319)!
            }
            
        }
        
    }()
    
    /// Clips the polygon defined by the points in `points` against the `plane` and returns the points of the clipped polygon.
    public static func clipPolygon(points: PackedVector3Array, plane: Plane) -> PackedVector3Array {
        let _result: PackedVector3Array = PackedVector3Array ()
        withUnsafePointer(to: points.content) { pArg0 in
            withUnsafePointer(to: plane) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_clip_polygon, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_tetrahedralize_delaunay: GDExtensionMethodBindPtr = {
        let methodName = StringName("tetrahedralize_delaunay")
        return withUnsafePointer(to: &Geometry3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1230191221)!
            }
            
        }
        
    }()
    
    /// Tetrahedralizes the volume specified by a discrete set of `points` in 3D space, ensuring that no point lies within the circumsphere of any resulting tetrahedron. The method returns a ``PackedInt32Array`` where each tetrahedron consists of four consecutive point indices into the `points` array (resulting in an array with `n * 4` elements, where `n` is the number of tetrahedra found). If the tetrahedralization is unsuccessful, an empty ``PackedInt32Array`` is returned.
    public static func tetrahedralizeDelaunay(points: PackedVector3Array) -> PackedInt32Array {
        let _result: PackedInt32Array = PackedInt32Array ()
        withUnsafePointer(to: points.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_tetrahedralize_delaunay, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
}

