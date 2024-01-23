// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Provides direct access to a physics space in the ``PhysicsServer3D``.
/// 
/// Provides direct access to a physics space in the ``PhysicsServer3D``. It's used mainly to do queries against objects and areas residing in a given space.
open class PhysicsDirectSpaceState3D: Object {
    override open class var godotClassName: StringName { "PhysicsDirectSpaceState3D" }
    /* Methods */
    fileprivate static var method_intersect_point: GDExtensionMethodBindPtr = {
        let methodName = StringName ("intersect_point")
        return withUnsafePointer (to: &PhysicsDirectSpaceState3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 975173756)!
            }
            
        }
        
    }()
    
    /// Checks whether a point is inside any solid shape. Position and other parameters are defined through ``PhysicsPointQueryParameters3D``. The shapes the point is inside of are returned in an array containing dictionaries with the following fields:
    /// 
    /// `collider`: The colliding object.
    /// 
    /// `collider_id`: The colliding object's ID.
    /// 
    /// `rid`: The intersecting object's ``RID``.
    /// 
    /// `shape`: The shape index of the colliding shape.
    /// 
    /// The number of intersections can be limited with the `maxResults` parameter, to reduce the processing time.
    /// 
    public final func intersectPoint (parameters: PhysicsPointQueryParameters3D?, maxResults: Int32 = 32)-> VariantCollection<GDictionary> {
        var _result: Int64 = 0
        #if true
        
        var copy_max_results: Int = Int (maxResults)
        var copy_parameters_handle = parameters?.handle
        
        gi.object_method_bind_ptrcall_v (PhysicsDirectSpaceState3D.method_intersect_point, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_parameters_handle, &copy_max_results)
        return VariantCollection<GDictionary>(content: _result)
        #else
        
        var copy_max_results: Int = Int (maxResults)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: parameters?.handle) { p0 in
        _args.append (parameters == nil ? nil : p0)
            return withUnsafePointer (to: &copy_max_results) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (PhysicsDirectSpaceState3D.method_intersect_point, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return VariantCollection<GDictionary>(content: _result)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_intersect_ray: GDExtensionMethodBindPtr = {
        let methodName = StringName ("intersect_ray")
        return withUnsafePointer (to: &PhysicsDirectSpaceState3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3957970750)!
            }
            
        }
        
    }()
    
    /// Intersects a ray in a given space. Ray position and other parameters are defined through ``PhysicsRayQueryParameters3D``. The returned object is a dictionary with the following fields:
    /// 
    /// `collider`: The colliding object.
    /// 
    /// `collider_id`: The colliding object's ID.
    /// 
    /// `normal`: The object's surface normal at the intersection point, or `Vector3(0, 0, 0)` if the ray starts inside the shape and ``PhysicsRayQueryParameters3D/hitFromInside`` is `true`.
    /// 
    /// `position`: The intersection point.
    /// 
    /// `face_index`: The face index at the intersection point.
    /// 
    /// > Note: Returns a valid number only if the intersected shape is a ``ConcavePolygonShape3D``. Otherwise, `-1` is returned.
    /// 
    /// `rid`: The intersecting object's ``RID``.
    /// 
    /// `shape`: The shape index of the colliding shape.
    /// 
    /// If the ray did not intersect anything, then an empty dictionary is returned instead.
    /// 
    public final func intersectRay (parameters: PhysicsRayQueryParameters3D?)-> GDictionary {
        let _result: GDictionary = GDictionary ()
        #if true
        
        var copy_parameters_handle = parameters?.handle
        
        gi.object_method_bind_ptrcall_v (PhysicsDirectSpaceState3D.method_intersect_ray, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_parameters_handle)
        return _result
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: parameters?.handle) { p0 in
        _args.append (parameters == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (PhysicsDirectSpaceState3D.method_intersect_ray, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_intersect_shape: GDExtensionMethodBindPtr = {
        let methodName = StringName ("intersect_shape")
        return withUnsafePointer (to: &PhysicsDirectSpaceState3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3762137681)!
            }
            
        }
        
    }()
    
    /// Checks the intersections of a shape, given through a ``PhysicsShapeQueryParameters3D`` object, against the space. The intersected shapes are returned in an array containing dictionaries with the following fields:
    /// 
    /// `collider`: The colliding object.
    /// 
    /// `collider_id`: The colliding object's ID.
    /// 
    /// `rid`: The intersecting object's ``RID``.
    /// 
    /// `shape`: The shape index of the colliding shape.
    /// 
    /// The number of intersections can be limited with the `maxResults` parameter, to reduce the processing time.
    /// 
    /// > Note: This method does not take into account the `motion` property of the object.
    /// 
    public final func intersectShape (parameters: PhysicsShapeQueryParameters3D?, maxResults: Int32 = 32)-> VariantCollection<GDictionary> {
        var _result: Int64 = 0
        #if true
        
        var copy_max_results: Int = Int (maxResults)
        var copy_parameters_handle = parameters?.handle
        
        gi.object_method_bind_ptrcall_v (PhysicsDirectSpaceState3D.method_intersect_shape, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_parameters_handle, &copy_max_results)
        return VariantCollection<GDictionary>(content: _result)
        #else
        
        var copy_max_results: Int = Int (maxResults)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: parameters?.handle) { p0 in
        _args.append (parameters == nil ? nil : p0)
            return withUnsafePointer (to: &copy_max_results) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (PhysicsDirectSpaceState3D.method_intersect_shape, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return VariantCollection<GDictionary>(content: _result)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_cast_motion: GDExtensionMethodBindPtr = {
        let methodName = StringName ("cast_motion")
        return withUnsafePointer (to: &PhysicsDirectSpaceState3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1778757334)!
            }
            
        }
        
    }()
    
    /// Checks how far a ``Shape3D`` can move without colliding. All the parameters for the query, including the shape, are supplied through a ``PhysicsShapeQueryParameters3D`` object.
    /// 
    /// Returns an array with the safe and unsafe proportions (between 0 and 1) of the motion. The safe proportion is the maximum fraction of the motion that can be made without a collision. The unsafe proportion is the minimum fraction of the distance that must be moved for a collision. If no collision is detected a result of `[1.0, 1.0]` will be returned.
    /// 
    /// > Note: Any ``Shape3D``s that the shape is already colliding with e.g. inside of, will be ignored. Use ``collideShape(parameters:maxResults:)`` to determine the ``Shape3D``s that the shape is already colliding with.
    /// 
    public final func castMotion (parameters: PhysicsShapeQueryParameters3D?)-> PackedFloat32Array {
        let _result: PackedFloat32Array = PackedFloat32Array ()
        #if true
        
        var copy_parameters_handle = parameters?.handle
        
        gi.object_method_bind_ptrcall_v (PhysicsDirectSpaceState3D.method_cast_motion, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_parameters_handle)
        return _result
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: parameters?.handle) { p0 in
        _args.append (parameters == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (PhysicsDirectSpaceState3D.method_cast_motion, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_collide_shape: GDExtensionMethodBindPtr = {
        let methodName = StringName ("collide_shape")
        return withUnsafePointer (to: &PhysicsDirectSpaceState3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3762137681)!
            }
            
        }
        
    }()
    
    /// Checks the intersections of a shape, given through a ``PhysicsShapeQueryParameters3D`` object, against the space. The resulting array contains a list of points where the shape intersects another. Like with ``intersectShape(parameters:maxResults:)``, the number of returned results can be limited to save processing time.
    /// 
    /// Returned points are a list of pairs of contact points. For each pair the first one is in the shape passed in ``PhysicsShapeQueryParameters3D`` object, second one is in the collided shape from the physics space.
    /// 
    /// > Note: This method does not take into account the `motion` property of the object.
    /// 
    public final func collideShape (parameters: PhysicsShapeQueryParameters3D?, maxResults: Int32 = 32)-> VariantCollection<Vector3> {
        var _result: Int64 = 0
        #if true
        
        var copy_max_results: Int = Int (maxResults)
        var copy_parameters_handle = parameters?.handle
        
        gi.object_method_bind_ptrcall_v (PhysicsDirectSpaceState3D.method_collide_shape, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_parameters_handle, &copy_max_results)
        return VariantCollection<Vector3>(content: _result)
        #else
        
        var copy_max_results: Int = Int (maxResults)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: parameters?.handle) { p0 in
        _args.append (parameters == nil ? nil : p0)
            return withUnsafePointer (to: &copy_max_results) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (PhysicsDirectSpaceState3D.method_collide_shape, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return VariantCollection<Vector3>(content: _result)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_rest_info: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_rest_info")
        return withUnsafePointer (to: &PhysicsDirectSpaceState3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1376751592)!
            }
            
        }
        
    }()
    
    /// Checks the intersections of a shape, given through a ``PhysicsShapeQueryParameters3D`` object, against the space. If it collides with more than one shape, the nearest one is selected. The returned object is a dictionary containing the following fields:
    /// 
    /// `collider_id`: The colliding object's ID.
    /// 
    /// `linear_velocity`: The colliding object's velocity ``Vector3``. If the object is an ``Area3D``, the result is `(0, 0, 0)`.
    /// 
    /// `normal`: The object's surface normal at the intersection point.
    /// 
    /// `point`: The intersection point.
    /// 
    /// `rid`: The intersecting object's ``RID``.
    /// 
    /// `shape`: The shape index of the colliding shape.
    /// 
    /// If the shape did not intersect anything, then an empty dictionary is returned instead.
    /// 
    /// > Note: This method does not take into account the `motion` property of the object.
    /// 
    public final func getRestInfo (parameters: PhysicsShapeQueryParameters3D?)-> GDictionary {
        let _result: GDictionary = GDictionary ()
        #if true
        
        var copy_parameters_handle = parameters?.handle
        
        gi.object_method_bind_ptrcall_v (PhysicsDirectSpaceState3D.method_get_rest_info, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_parameters_handle)
        return _result
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: parameters?.handle) { p0 in
        _args.append (parameters == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (PhysicsDirectSpaceState3D.method_get_rest_info, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
}

