// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
/// A plane in Hessian normal form.
/// 
/// Represents a normalized plane equation. ``normal`` is the normal of the plane (a, b, c normalized), and ``d`` is the distance from the origin to the plane (in the direction of "normal"). "Over" or "Above" the plane is considered the side of the plane towards where the normal is pointing.
public struct Plane: Equatable, Hashable {
    /// The normal of the plane, typically a unit vector. Shouldn't be a zero vector as ``Plane`` with such ``normal`` does not represent a valid plane.
    /// 
    /// In the scalar equation of the plane `ax + by + cz = d`, this is the vector `(a, b, c)`, where [code skip-lint]d` is the ``d`` property.
    /// 
    public var normal: Vector3
    /// The distance from the origin to the plane, expressed in terms of ``normal`` (according to its direction and magnitude). Actual absolute distance from the origin to the plane can be calculated as `abs(d) / normal.length()` (if ``normal`` has zero length then this ``Plane`` does not represent a valid plane).
    /// 
    /// In the scalar equation of the plane `ax + by + cz = d`, this is [code skip-lint]d`, while the `(a, b, c)` coordinates are represented by the ``normal`` property.
    /// 
    public var d: Float
    static var constructor0: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_PLANE, 0)!
    
    /// Constructs a default-initialized ``Plane`` with all components set to `0`.
    public init () {
        self.normal = Vector3 ()
        self.d = Float ()
    }
    
    static var constructor1: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_PLANE, 1)!
    
    /// Constructs a ``Plane`` as a copy of the given ``Plane``.
    public init (from: Plane) {
        self.normal = Vector3 ()
        self.d = Float ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    Plane.constructor1(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    static var constructor2: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_PLANE, 2)!
    
    /// Creates a plane from the normal vector. The plane will intersect the origin.
    /// 
    /// The `normal` of the plane must be a unit vector.
    /// 
    public init (normal: Vector3) {
        self.normal = Vector3 ()
        self.d = Float ()
        withUnsafePointer(to: normal) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    Plane.constructor2(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    static var constructor3: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_PLANE, 3)!
    
    /// Creates a plane from the normal vector and the plane's distance from the origin.
    /// 
    /// The `normal` of the plane must be a unit vector.
    /// 
    public init (normal: Vector3, d: Float) {
        self.normal = normal
        self.d = d
    }
    
    static var constructor4: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_PLANE, 4)!
    
    /// Creates a plane from the normal vector and a point on the plane.
    /// 
    /// The `normal` of the plane must be a unit vector.
    /// 
    public init (normal: Vector3, point: Vector3) {
        self.normal = Vector3 ()
        self.d = Float ()
        withUnsafePointer(to: normal) { pArg0 in
            withUnsafePointer(to: point) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        Plane.constructor4(&self, pArgs)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    static var constructor5: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_PLANE, 5)!
    
    /// Creates a plane from the three points, given in clockwise order.
    public init (point1: Vector3, point2: Vector3, point3: Vector3) {
        self.normal = Vector3 ()
        self.d = Float ()
        withUnsafePointer(to: point1) { pArg0 in
            withUnsafePointer(to: point2) { pArg1 in
                withUnsafePointer(to: point3) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            Plane.constructor5(&self, pArgs)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    static var constructor6: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_PLANE, 6)!
    
    /// Creates a plane from the four parameters. The three components of the resulting plane's ``normal`` are `a`, `b` and `c`, and the plane has a distance of `d` from the origin.
    public init (a: Float, b: Float, c: Float, d: Float) {
        self.normal = Vector3 ()
        self.d = Float ()
        let a = Double(a)
        withUnsafePointer(to: a) { pArg0 in
            let b = Double(b)
            withUnsafePointer(to: b) { pArg1 in
                let c = Double(c)
                withUnsafePointer(to: c) { pArg2 in
                    let d = Double(d)
                    withUnsafePointer(to: d) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                Plane.constructor6(&self, pArgs)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
    /* Methods */
    
    static var method_normalized: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("normalized")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PLANE, &name.content, 1051796340)!
    }()
    
    /// Returns a copy of the plane, with normalized ``normal`` (so it's a unit vector). Returns `Plane(0, 0, 0, 0)` if ``normal`` can't be normalized (it has zero length).
    public func normalized()-> Plane {
        var result: Plane = Plane()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           Plane.method_normalized(ptr, nil, &result, 0)
        }
        return result
    }
    
    static var method_get_center: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("get_center")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PLANE, &name.content, 1776574132)!
    }()
    
    /// Returns the center of the plane.
    public func getCenter()-> Vector3 {
        var result: Vector3 = Vector3()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           Plane.method_get_center(ptr, nil, &result, 0)
        }
        return result
    }
    
    static var method_is_equal_approx: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("is_equal_approx")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PLANE, &name.content, 1150170233)!
    }()
    
    /// Returns `true` if this plane and `toPlane` are approximately equal, by running ``@GlobalScope.is_equal_approx`` on each component.
    public func isEqualApprox(toPlane: Plane)-> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: toPlane) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       Plane.method_is_equal_approx(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_is_finite: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("is_finite")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PLANE, &name.content, 3918633141)!
    }()
    
    /// Returns `true` if this plane is finite, by calling ``@GlobalScope.is_finite`` on each component.
    public func isFinite()-> Bool {
        var result: Bool = Bool()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           Plane.method_is_finite(ptr, nil, &result, 0)
        }
        return result
    }
    
    static var method_is_point_over: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("is_point_over")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PLANE, &name.content, 1749054343)!
    }()
    
    /// Returns `true` if `point` is located above the plane.
    public func isPointOver(point: Vector3)-> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       Plane.method_is_point_over(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_distance_to: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("distance_to")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PLANE, &name.content, 1047977935)!
    }()
    
    /// Returns the shortest distance from the plane to the position `point`. If the point is above the plane, the distance will be positive. If below, the distance will be negative.
    public func distanceTo(point: Vector3)-> Double {
        var result: Double = Double()
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       Plane.method_distance_to(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_has_point: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("has_point")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PLANE, &name.content, 1258189072)!
    }()
    
    /// Returns `true` if `point` is inside the plane. Comparison uses a custom minimum `tolerance` threshold.
    public func hasPoint(_ point: Vector3, tolerance: Double = 1e-05)-> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: point) { pArg0 in
            let tolerance = Double(tolerance)
            withUnsafePointer(to: tolerance) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           Plane.method_has_point(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_project: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("project")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PLANE, &name.content, 2923479887)!
    }()
    
    /// Returns the orthogonal projection of `point` into a point in the plane.
    public func project(point: Vector3)-> Vector3 {
        var result: Vector3 = Vector3()
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       Plane.method_project(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_intersect_3: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("intersect_3")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PLANE, &name.content, 2012052692)!
    }()
    
    /// Returns the intersection point of the three planes `b`, `c` and this plane. If no intersection is found, `null` is returned.
    public func intersect3(b: Plane, c: Plane)-> Variant {
        let result: Variant = Variant()
        withUnsafePointer(to: b) { pArg0 in
            withUnsafePointer(to: c) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           Plane.method_intersect_3(ptr, pArgs, &result.content, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_intersects_ray: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("intersects_ray")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PLANE, &name.content, 2048133369)!
    }()
    
    /// Returns the intersection point of a ray consisting of the position `from` and the direction normal `dir` with this plane. If no intersection is found, `null` is returned.
    public func intersectsRay(from: Vector3, dir: Vector3)-> Variant {
        let result: Variant = Variant()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: dir) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           Plane.method_intersects_ray(ptr, pArgs, &result.content, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    static var method_intersects_segment: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("intersects_segment")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_PLANE, &name.content, 2048133369)!
    }()
    
    /// Returns the intersection point of a segment from position `from` to position `to` with this plane. If no intersection is found, `null` is returned.
    public func intersectsSegment(from: Vector3, to: Vector3)-> Variant {
        let result: Variant = Variant()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: to) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           Plane.method_intersects_segment(ptr, pArgs, &result.content, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    static var operator_5: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_PLANE, GDEXTENSION_VARIANT_TYPE_PLANE)!
    }()
    
    /// Returns `true` if the planes are exactly equal.
    /// 
    /// > Note: Due to floating-point precision errors, consider using ``isEqualApprox(toPlane:)`` instead, which is more reliable.
    /// 
    public static func == (lhs: Plane, rhs: Plane) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                Plane.operator_5(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    static var operator_6: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_PLANE, GDEXTENSION_VARIANT_TYPE_PLANE)!
    }()
    
    /// Returns `true` if the planes are not equal.
    /// 
    /// > Note: Due to floating-point precision errors, consider using ``isEqualApprox(toPlane:)`` instead, which is more reliable.
    /// 
    public static func != (lhs: Plane, rhs: Plane) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                Plane.operator_6(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    static var operator_7: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_PLANE, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)!
    }()
    
    /// Inversely transforms (multiplies) the ``Plane`` by the given ``Transform3D`` transformation matrix.
    /// 
    /// `plane * transform` is equivalent to `transform.affine_inverse() * plane`. See ``Transform3D/affineInverse()``.
    /// 
    public static func * (lhs: Plane, rhs: Transform3D) -> Plane  {
        var result: Plane = Plane()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                Plane.operator_7(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// A plane that extends in the Y and Z axes (normal vector points +X).
    public static let planeYz = Plane (a: 1, b: 0, c: 0, d: 0)
    /// A plane that extends in the X and Z axes (normal vector points +Y).
    public static let planeXz = Plane (a: 0, b: 1, c: 0, d: 0)
    /// A plane that extends in the X and Y axes (normal vector points +Z).
    public static let planeXy = Plane (a: 0, b: 0, c: 1, d: 0)
}

