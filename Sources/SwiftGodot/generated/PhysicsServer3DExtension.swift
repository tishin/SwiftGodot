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


/// Provides virtual methods that can be overridden to create custom ``PhysicsServer3D`` implementations.
/// 
/// This class extends ``PhysicsServer3D`` by providing additional virtual methods that can be overridden. When these methods are overridden, they will be called instead of the internal methods of the physics server.
/// 
/// Intended for use with GDExtension to create custom implementations of ``PhysicsServer3D``.
/// 
open class PhysicsServer3DExtension: PhysicsServer3D {
    private static var className = StringName("PhysicsServer3DExtension")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__world_boundary_shape_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_world_boundary_shape_create")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _worldBoundaryShapeCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__world_boundary_shape_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__separation_ray_shape_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_separation_ray_shape_create")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _separationRayShapeCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__separation_ray_shape_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__sphere_shape_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_sphere_shape_create")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _sphereShapeCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__sphere_shape_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__box_shape_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_box_shape_create")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _boxShapeCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__box_shape_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__capsule_shape_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_capsule_shape_create")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _capsuleShapeCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__capsule_shape_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__cylinder_shape_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_cylinder_shape_create")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _cylinderShapeCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__cylinder_shape_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__convex_polygon_shape_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_convex_polygon_shape_create")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _convexPolygonShapeCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__convex_polygon_shape_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__concave_polygon_shape_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_concave_polygon_shape_create")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _concavePolygonShapeCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__concave_polygon_shape_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__heightmap_shape_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_heightmap_shape_create")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _heightmapShapeCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__heightmap_shape_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__custom_shape_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_custom_shape_create")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _customShapeCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__custom_shape_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__shape_set_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shape_set_data")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3175752987)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _shapeSetData(shape: RID, data: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shape.content) { pArg0 in
            withUnsafePointer(to: data.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__shape_set_data, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__shape_set_custom_solver_bias: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shape_set_custom_solver_bias")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1794382983)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _shapeSetCustomSolverBias(shape: RID, bias: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shape.content) { pArg0 in
            withUnsafePointer(to: bias) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__shape_set_custom_solver_bias, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__shape_set_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shape_set_margin")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1794382983)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _shapeSetMargin(shape: RID, margin: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shape.content) { pArg0 in
            withUnsafePointer(to: margin) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__shape_set_margin, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__shape_get_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shape_get_margin")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 866169185)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _shapeGetMargin(shape: RID) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: shape.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__shape_get_margin, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shape_get_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shape_get_type")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3418923367)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _shapeGetType(shape: RID) -> PhysicsServer3D.ShapeType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: shape.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__shape_get_type, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return PhysicsServer3D.ShapeType (rawValue: _result)!
    }
    
    fileprivate static let method__shape_get_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shape_get_data")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4171304767)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _shapeGetData(shape: RID) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: shape.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__shape_get_data, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method__shape_get_custom_solver_bias: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shape_get_custom_solver_bias")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 866169185)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _shapeGetCustomSolverBias(shape: RID) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: shape.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__shape_get_custom_solver_bias, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__space_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_space_create")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _spaceCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__space_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__space_set_active: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_space_set_active")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1265174801)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _spaceSetActive(space: RID, active: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: space.content) { pArg0 in
            withUnsafePointer(to: active) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__space_set_active, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__space_is_active: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_space_is_active")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155700596)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _spaceIsActive(space: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: space.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__space_is_active, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__space_set_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_space_set_param")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2406017470)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _spaceSetParam(space: RID, param: PhysicsServer3D.SpaceParameter, value: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: space.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: value) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__space_set_param, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__space_get_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_space_get_param")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1523206731)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _spaceGetParam(space: RID, param: PhysicsServer3D.SpaceParameter) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: space.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__space_get_param, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__space_get_direct_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_space_get_direct_state")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2048616813)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _spaceGetDirectState(space: RID) -> PhysicsDirectSpaceState3D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: space.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__space_get_direct_state, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__space_set_debug_contacts: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_space_set_debug_contacts")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _spaceSetDebugContacts(space: RID, maxContacts: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: space.content) { pArg0 in
            withUnsafePointer(to: maxContacts) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__space_set_debug_contacts, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__space_get_contacts: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_space_get_contacts")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 808965560)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _spaceGetContacts(space: RID) -> PackedVector3Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedVector3Array = PackedVector3Array ()
        withUnsafePointer(to: space.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__space_get_contacts, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__space_get_contact_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_space_get_contact_count")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _spaceGetContactCount(space: RID) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: space.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__space_get_contact_count, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__area_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_create")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__area_set_space: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_set_space")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 395945892)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaSetSpace(area: RID, space: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: space.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_set_space, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_get_space: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_get_space")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3814569979)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaGetSpace(area: RID) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_get_space, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__area_add_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_add_shape")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2153848567)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaAddShape(area: RID, shape: RID, transform: Transform3D, disabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: shape.content) { pArg1 in
                withUnsafePointer(to: transform) { pArg2 in
                    withUnsafePointer(to: disabled) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_add_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_set_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_set_shape")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2310537182)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaSetShape(area: RID, shapeIdx: Int32, shape: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: shapeIdx) { pArg1 in
                withUnsafePointer(to: shape.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_set_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_set_shape_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_set_shape_transform")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 675327471)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaSetShapeTransform(area: RID, shapeIdx: Int32, transform: Transform3D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: shapeIdx) { pArg1 in
                withUnsafePointer(to: transform) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_set_shape_transform, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_set_shape_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_set_shape_disabled")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2658558584)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaSetShapeDisabled(area: RID, shapeIdx: Int32, disabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: shapeIdx) { pArg1 in
                withUnsafePointer(to: disabled) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_set_shape_disabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_get_shape_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_get_shape_count")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaGetShapeCount(area: RID) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_get_shape_count, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__area_get_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_get_shape")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1066463050)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaGetShape(area: RID, shapeIdx: Int32) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: shapeIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_get_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__area_get_shape_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_get_shape_transform")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1050775521)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaGetShapeTransform(area: RID, shapeIdx: Int32) -> Transform3D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform3D = Transform3D ()
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: shapeIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_get_shape_transform, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__area_remove_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_remove_shape")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaRemoveShape(area: RID, shapeIdx: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: shapeIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_remove_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_clear_shapes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_clear_shapes")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaClearShapes(area: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_clear_shapes, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_attach_object_instance_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_attach_object_instance_id")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaAttachObjectInstanceId(area: RID, id: UInt) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: id) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_attach_object_instance_id, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_get_object_instance_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_get_object_instance_id")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaGetObjectInstanceId(area: RID) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_get_object_instance_id, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__area_set_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_set_param")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2980114638)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaSetParam(area: RID, param: PhysicsServer3D.AreaParameter, value: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: value.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_set_param, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_set_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_set_transform")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3935195649)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaSetTransform(area: RID, transform: Transform3D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: transform) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_set_transform, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_get_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_get_param")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 890056067)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaGetParam(area: RID, param: PhysicsServer3D.AreaParameter) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_get_param, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method__area_get_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_get_transform")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1128465797)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaGetTransform(area: RID) -> Transform3D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform3D = Transform3D ()
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_get_transform, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__area_set_collision_layer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_set_collision_layer")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaSetCollisionLayer(area: RID, layer: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: layer) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_set_collision_layer, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_get_collision_layer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_get_collision_layer")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaGetCollisionLayer(area: RID) -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_get_collision_layer, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__area_set_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_set_collision_mask")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaSetCollisionMask(area: RID, mask: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: mask) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_set_collision_mask, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_get_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_get_collision_mask")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaGetCollisionMask(area: RID) -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_get_collision_mask, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__area_set_monitorable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_set_monitorable")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1265174801)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaSetMonitorable(area: RID, monitorable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: monitorable) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_set_monitorable, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_set_ray_pickable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_set_ray_pickable")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1265174801)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaSetRayPickable(area: RID, enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: enable) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_set_ray_pickable, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_set_monitor_callback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_set_monitor_callback")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3379118538)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaSetMonitorCallback(area: RID, callback: Callable) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: callback.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_set_monitor_callback, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_set_area_monitor_callback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_set_area_monitor_callback")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3379118538)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _areaSetAreaMonitorCallback(area: RID, callback: Callable) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: callback.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__area_set_area_monitor_callback, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_create")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__body_set_space: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_space")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 395945892)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodySetSpace(body: RID, space: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: space.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_set_space, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_space: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_space")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3814569979)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyGetSpace(body: RID) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_get_space, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_set_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_mode")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 606803466)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodySetMode(body: RID, mode: PhysicsServer3D.BodyMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: mode.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_set_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_mode")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2488819728)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyGetMode(body: RID) -> PhysicsServer3D.BodyMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_get_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return PhysicsServer3D.BodyMode (rawValue: _result)!
    }
    
    fileprivate static let method__body_add_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_add_shape")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2153848567)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyAddShape(body: RID, shape: RID, transform: Transform3D, disabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: shape.content) { pArg1 in
                withUnsafePointer(to: transform) { pArg2 in
                    withUnsafePointer(to: disabled) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_add_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_set_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_shape")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2310537182)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodySetShape(body: RID, shapeIdx: Int32, shape: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: shapeIdx) { pArg1 in
                withUnsafePointer(to: shape.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_set_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_set_shape_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_shape_transform")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 675327471)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodySetShapeTransform(body: RID, shapeIdx: Int32, transform: Transform3D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: shapeIdx) { pArg1 in
                withUnsafePointer(to: transform) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_set_shape_transform, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_set_shape_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_shape_disabled")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2658558584)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodySetShapeDisabled(body: RID, shapeIdx: Int32, disabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: shapeIdx) { pArg1 in
                withUnsafePointer(to: disabled) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_set_shape_disabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_shape_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_shape_count")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyGetShapeCount(body: RID) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_get_shape_count, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_get_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_shape")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1066463050)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyGetShape(body: RID, shapeIdx: Int32) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: shapeIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_get_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_get_shape_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_shape_transform")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1050775521)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyGetShapeTransform(body: RID, shapeIdx: Int32) -> Transform3D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform3D = Transform3D ()
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: shapeIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_get_shape_transform, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_remove_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_remove_shape")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyRemoveShape(body: RID, shapeIdx: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: shapeIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_remove_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_clear_shapes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_clear_shapes")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyClearShapes(body: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_clear_shapes, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_attach_object_instance_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_attach_object_instance_id")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyAttachObjectInstanceId(body: RID, id: UInt) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: id) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_attach_object_instance_id, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_object_instance_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_object_instance_id")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyGetObjectInstanceId(body: RID) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_get_object_instance_id, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_set_enable_continuous_collision_detection: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_enable_continuous_collision_detection")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1265174801)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodySetEnableContinuousCollisionDetection(body: RID, enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: enable) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_set_enable_continuous_collision_detection, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_is_continuous_collision_detection_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_is_continuous_collision_detection_enabled")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155700596)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyIsContinuousCollisionDetectionEnabled(body: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_is_continuous_collision_detection_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_set_collision_layer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_collision_layer")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodySetCollisionLayer(body: RID, layer: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: layer) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_set_collision_layer, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_collision_layer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_collision_layer")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyGetCollisionLayer(body: RID) -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_get_collision_layer, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_set_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_collision_mask")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodySetCollisionMask(body: RID, mask: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: mask) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_set_collision_mask, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_collision_mask")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyGetCollisionMask(body: RID) -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_get_collision_mask, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_set_collision_priority: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_collision_priority")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1794382983)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodySetCollisionPriority(body: RID, priority: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: priority) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_set_collision_priority, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_collision_priority: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_collision_priority")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 866169185)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyGetCollisionPriority(body: RID) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_get_collision_priority, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_set_user_flags: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_user_flags")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodySetUserFlags(body: RID, flags: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: flags) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_set_user_flags, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_user_flags: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_user_flags")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyGetUserFlags(body: RID) -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_get_user_flags, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_set_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_param")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 910941953)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodySetParam(body: RID, param: PhysicsServer3D.BodyParameter, value: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: value.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_set_param, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_param")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3385027841)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyGetParam(body: RID, param: PhysicsServer3D.BodyParameter) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_get_param, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method__body_reset_mass_properties: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_reset_mass_properties")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyResetMassProperties(body: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_reset_mass_properties, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_set_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_state")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 599977762)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodySetState(body: RID, state: PhysicsServer3D.BodyState, value: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: state.rawValue) { pArg1 in
                withUnsafePointer(to: value.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_set_state, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_state")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1850449534)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyGetState(body: RID, state: PhysicsServer3D.BodyState) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: state.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_get_state, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method__body_apply_central_impulse: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_apply_central_impulse")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3227306858)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyApplyCentralImpulse(body: RID, impulse: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: impulse) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_apply_central_impulse, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_apply_impulse: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_apply_impulse")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3214966418)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyApplyImpulse(body: RID, impulse: Vector3, position: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: impulse) { pArg1 in
                withUnsafePointer(to: position) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_apply_impulse, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_apply_torque_impulse: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_apply_torque_impulse")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3227306858)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyApplyTorqueImpulse(body: RID, impulse: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: impulse) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_apply_torque_impulse, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_apply_central_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_apply_central_force")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3227306858)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyApplyCentralForce(body: RID, force: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: force) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_apply_central_force, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_apply_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_apply_force")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3214966418)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyApplyForce(body: RID, force: Vector3, position: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: force) { pArg1 in
                withUnsafePointer(to: position) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_apply_force, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_apply_torque: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_apply_torque")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3227306858)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyApplyTorque(body: RID, torque: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: torque) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_apply_torque, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_add_constant_central_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_add_constant_central_force")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3227306858)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyAddConstantCentralForce(body: RID, force: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: force) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_add_constant_central_force, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_add_constant_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_add_constant_force")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3214966418)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyAddConstantForce(body: RID, force: Vector3, position: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: force) { pArg1 in
                withUnsafePointer(to: position) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_add_constant_force, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_add_constant_torque: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_add_constant_torque")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3227306858)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyAddConstantTorque(body: RID, torque: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: torque) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_add_constant_torque, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_set_constant_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_constant_force")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3227306858)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodySetConstantForce(body: RID, force: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: force) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_set_constant_force, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_constant_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_constant_force")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 531438156)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyGetConstantForce(body: RID) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_get_constant_force, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_set_constant_torque: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_constant_torque")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3227306858)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodySetConstantTorque(body: RID, torque: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: torque) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_set_constant_torque, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_constant_torque: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_constant_torque")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 531438156)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyGetConstantTorque(body: RID) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_get_constant_torque, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_set_axis_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_axis_velocity")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3227306858)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodySetAxisVelocity(body: RID, axisVelocity: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: axisVelocity) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_set_axis_velocity, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_set_axis_lock: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_axis_lock")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2020836892)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodySetAxisLock(body: RID, axis: PhysicsServer3D.BodyAxis, lock: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: axis.rawValue) { pArg1 in
                withUnsafePointer(to: lock) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_set_axis_lock, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_is_axis_locked: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_is_axis_locked")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 587853580)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyIsAxisLocked(body: RID, axis: PhysicsServer3D.BodyAxis) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: axis.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_is_axis_locked, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_add_collision_exception: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_add_collision_exception")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 395945892)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyAddCollisionException(body: RID, exceptedBody: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: exceptedBody.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_add_collision_exception, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_remove_collision_exception: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_remove_collision_exception")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 395945892)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyRemoveCollisionException(body: RID, exceptedBody: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: exceptedBody.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_remove_collision_exception, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_collision_exceptions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_collision_exceptions")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2684255073)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyGetCollisionExceptions(body: RID) -> TypedArray<RID> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_get_collision_exceptions, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return TypedArray<RID>(takingOver: _result)
    }
    
    fileprivate static let method__body_set_max_contacts_reported: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_max_contacts_reported")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodySetMaxContactsReported(body: RID, amount: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: amount) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_set_max_contacts_reported, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_max_contacts_reported: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_max_contacts_reported")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyGetMaxContactsReported(body: RID) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_get_max_contacts_reported, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_set_contacts_reported_depth_threshold: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_contacts_reported_depth_threshold")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1794382983)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodySetContactsReportedDepthThreshold(body: RID, threshold: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: threshold) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_set_contacts_reported_depth_threshold, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_contacts_reported_depth_threshold: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_contacts_reported_depth_threshold")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 866169185)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyGetContactsReportedDepthThreshold(body: RID) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_get_contacts_reported_depth_threshold, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_set_omit_force_integration: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_omit_force_integration")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1265174801)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodySetOmitForceIntegration(body: RID, enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: enable) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_set_omit_force_integration, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_is_omitting_force_integration: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_is_omitting_force_integration")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155700596)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyIsOmittingForceIntegration(body: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_is_omitting_force_integration, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_set_state_sync_callback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_state_sync_callback")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3379118538)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodySetStateSyncCallback(body: RID, callable: Callable) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: callable.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_set_state_sync_callback, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_set_force_integration_callback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_force_integration_callback")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2828036238)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodySetForceIntegrationCallback(body: RID, callable: Callable, userdata: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: callable.content) { pArg1 in
                withUnsafePointer(to: userdata.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_set_force_integration_callback, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_set_ray_pickable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_ray_pickable")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1265174801)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodySetRayPickable(body: RID, enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: enable) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_set_ray_pickable, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_direct_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_direct_state")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3029727957)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _bodyGetDirectState(body: RID) -> PhysicsDirectBodyState3D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__body_get_direct_state, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__soft_body_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_create")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodyCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__soft_body_update_rendering_server: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_update_rendering_server")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2218179753)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodyUpdateRenderingServer(body: RID, renderingServerHandler: PhysicsServer3DRenderingServerHandler?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: renderingServerHandler?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_update_rendering_server, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__soft_body_set_space: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_set_space")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 395945892)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodySetSpace(body: RID, space: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: space.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_set_space, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__soft_body_get_space: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_get_space")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3814569979)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodyGetSpace(body: RID) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_get_space, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__soft_body_set_ray_pickable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_set_ray_pickable")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1265174801)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodySetRayPickable(body: RID, enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: enable) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_set_ray_pickable, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__soft_body_set_collision_layer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_set_collision_layer")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodySetCollisionLayer(body: RID, layer: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: layer) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_set_collision_layer, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__soft_body_get_collision_layer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_get_collision_layer")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodyGetCollisionLayer(body: RID) -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_get_collision_layer, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__soft_body_set_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_set_collision_mask")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodySetCollisionMask(body: RID, mask: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: mask) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_set_collision_mask, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__soft_body_get_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_get_collision_mask")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodyGetCollisionMask(body: RID) -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_get_collision_mask, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__soft_body_add_collision_exception: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_add_collision_exception")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 395945892)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodyAddCollisionException(body: RID, bodyB: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: bodyB.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_add_collision_exception, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__soft_body_remove_collision_exception: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_remove_collision_exception")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 395945892)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodyRemoveCollisionException(body: RID, bodyB: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: bodyB.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_remove_collision_exception, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__soft_body_get_collision_exceptions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_get_collision_exceptions")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2684255073)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodyGetCollisionExceptions(body: RID) -> TypedArray<RID> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_get_collision_exceptions, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return TypedArray<RID>(takingOver: _result)
    }
    
    fileprivate static let method__soft_body_set_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_set_state")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 599977762)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodySetState(body: RID, state: PhysicsServer3D.BodyState, variant: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: state.rawValue) { pArg1 in
                withUnsafePointer(to: variant.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_set_state, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__soft_body_get_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_get_state")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1850449534)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodyGetState(body: RID, state: PhysicsServer3D.BodyState) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: state.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_get_state, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method__soft_body_set_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_set_transform")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3935195649)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodySetTransform(body: RID, transform: Transform3D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: transform) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_set_transform, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__soft_body_set_simulation_precision: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_set_simulation_precision")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodySetSimulationPrecision(body: RID, simulationPrecision: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: simulationPrecision) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_set_simulation_precision, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__soft_body_get_simulation_precision: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_get_simulation_precision")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodyGetSimulationPrecision(body: RID) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_get_simulation_precision, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__soft_body_set_total_mass: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_set_total_mass")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1794382983)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodySetTotalMass(body: RID, totalMass: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: totalMass) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_set_total_mass, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__soft_body_get_total_mass: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_get_total_mass")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 866169185)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodyGetTotalMass(body: RID) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_get_total_mass, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__soft_body_set_linear_stiffness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_set_linear_stiffness")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1794382983)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodySetLinearStiffness(body: RID, linearStiffness: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: linearStiffness) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_set_linear_stiffness, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__soft_body_get_linear_stiffness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_get_linear_stiffness")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 866169185)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodyGetLinearStiffness(body: RID) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_get_linear_stiffness, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__soft_body_set_pressure_coefficient: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_set_pressure_coefficient")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1794382983)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodySetPressureCoefficient(body: RID, pressureCoefficient: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: pressureCoefficient) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_set_pressure_coefficient, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__soft_body_get_pressure_coefficient: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_get_pressure_coefficient")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 866169185)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodyGetPressureCoefficient(body: RID) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_get_pressure_coefficient, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__soft_body_set_damping_coefficient: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_set_damping_coefficient")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1794382983)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodySetDampingCoefficient(body: RID, dampingCoefficient: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: dampingCoefficient) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_set_damping_coefficient, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__soft_body_get_damping_coefficient: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_get_damping_coefficient")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 866169185)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodyGetDampingCoefficient(body: RID) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_get_damping_coefficient, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__soft_body_set_drag_coefficient: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_set_drag_coefficient")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1794382983)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodySetDragCoefficient(body: RID, dragCoefficient: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: dragCoefficient) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_set_drag_coefficient, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__soft_body_get_drag_coefficient: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_get_drag_coefficient")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 866169185)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodyGetDragCoefficient(body: RID) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_get_drag_coefficient, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__soft_body_set_mesh: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_set_mesh")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 395945892)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodySetMesh(body: RID, mesh: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: mesh.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_set_mesh, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__soft_body_get_bounds: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_get_bounds")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 974181306)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodyGetBounds(body: RID) -> AABB {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: AABB = AABB ()
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_get_bounds, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__soft_body_move_point: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_move_point")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 831953689)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodyMovePoint(body: RID, pointIndex: Int32, globalPosition: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: pointIndex) { pArg1 in
                withUnsafePointer(to: globalPosition) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_move_point, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__soft_body_get_point_global_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_get_point_global_position")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3440143363)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodyGetPointGlobalPosition(body: RID, pointIndex: Int32) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: pointIndex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_get_point_global_position, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__soft_body_remove_all_pinned_points: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_remove_all_pinned_points")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodyRemoveAllPinnedPoints(body: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_remove_all_pinned_points, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__soft_body_pin_point: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_pin_point")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2658558584)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodyPinPoint(body: RID, pointIndex: Int32, pin: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: pointIndex) { pArg1 in
                withUnsafePointer(to: pin) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_pin_point, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__soft_body_is_point_pinned: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_soft_body_is_point_pinned")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3120086654)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _softBodyIsPointPinned(body: RID, pointIndex: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: pointIndex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__soft_body_is_point_pinned, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__joint_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_joint_create")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _jointCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__joint_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__joint_clear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_joint_clear")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _jointClear(joint: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__joint_clear, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__joint_make_pin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_joint_make_pin")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4280171926)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _jointMakePin(joint: RID, bodyA: RID, localA: Vector3, bodyB: RID, localB: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: bodyA.content) { pArg1 in
                withUnsafePointer(to: localA) { pArg2 in
                    withUnsafePointer(to: bodyB.content) { pArg3 in
                        withUnsafePointer(to: localB) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__joint_make_pin, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__pin_joint_set_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_pin_joint_set_param")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 810685294)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _pinJointSetParam(joint: RID, param: PhysicsServer3D.PinJointParam, value: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: value) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__pin_joint_set_param, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__pin_joint_get_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_pin_joint_get_param")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2817972347)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _pinJointGetParam(joint: RID, param: PhysicsServer3D.PinJointParam) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__pin_joint_get_param, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__pin_joint_set_local_a: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_pin_joint_set_local_a")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3227306858)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _pinJointSetLocalA(joint: RID, localA: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: localA) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__pin_joint_set_local_a, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__pin_joint_get_local_a: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_pin_joint_get_local_a")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 531438156)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _pinJointGetLocalA(joint: RID) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__pin_joint_get_local_a, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__pin_joint_set_local_b: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_pin_joint_set_local_b")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3227306858)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _pinJointSetLocalB(joint: RID, localB: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: localB) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__pin_joint_set_local_b, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__pin_joint_get_local_b: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_pin_joint_get_local_b")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 531438156)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _pinJointGetLocalB(joint: RID) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__pin_joint_get_local_b, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__joint_make_hinge: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_joint_make_hinge")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1684107643)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _jointMakeHinge(joint: RID, bodyA: RID, hingeA: Transform3D, bodyB: RID, hingeB: Transform3D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: bodyA.content) { pArg1 in
                withUnsafePointer(to: hingeA) { pArg2 in
                    withUnsafePointer(to: bodyB.content) { pArg3 in
                        withUnsafePointer(to: hingeB) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__joint_make_hinge, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__joint_make_hinge_simple: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_joint_make_hinge_simple")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4069547571)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _jointMakeHingeSimple(joint: RID, bodyA: RID, pivotA: Vector3, axisA: Vector3, bodyB: RID, pivotB: Vector3, axisB: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: bodyA.content) { pArg1 in
                withUnsafePointer(to: pivotA) { pArg2 in
                    withUnsafePointer(to: axisA) { pArg3 in
                        withUnsafePointer(to: bodyB.content) { pArg4 in
                            withUnsafePointer(to: pivotB) { pArg5 in
                                withUnsafePointer(to: axisB) { pArg6 in
                                    withUnsafePointer(to: UnsafeRawPointersN7(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6)) { pArgs in
                                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 7) { pArgs in
                                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__joint_make_hinge_simple, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__hinge_joint_set_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_hinge_joint_set_param")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3165502333)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _hingeJointSetParam(joint: RID, param: PhysicsServer3D.HingeJointParam, value: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: value) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__hinge_joint_set_param, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__hinge_joint_get_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_hinge_joint_get_param")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2129207581)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _hingeJointGetParam(joint: RID, param: PhysicsServer3D.HingeJointParam) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__hinge_joint_get_param, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__hinge_joint_set_flag: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_hinge_joint_set_flag")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1601626188)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _hingeJointSetFlag(joint: RID, flag: PhysicsServer3D.HingeJointFlag, enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: flag.rawValue) { pArg1 in
                withUnsafePointer(to: enabled) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__hinge_joint_set_flag, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__hinge_joint_get_flag: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_hinge_joint_get_flag")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4165147865)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _hingeJointGetFlag(joint: RID, flag: PhysicsServer3D.HingeJointFlag) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: flag.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__hinge_joint_get_flag, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__joint_make_slider: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_joint_make_slider")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1684107643)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _jointMakeSlider(joint: RID, bodyA: RID, localRefA: Transform3D, bodyB: RID, localRefB: Transform3D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: bodyA.content) { pArg1 in
                withUnsafePointer(to: localRefA) { pArg2 in
                    withUnsafePointer(to: bodyB.content) { pArg3 in
                        withUnsafePointer(to: localRefB) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__joint_make_slider, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__slider_joint_set_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_slider_joint_set_param")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2264833593)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _sliderJointSetParam(joint: RID, param: PhysicsServer3D.SliderJointParam, value: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: value) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__slider_joint_set_param, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__slider_joint_get_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_slider_joint_get_param")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3498644957)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _sliderJointGetParam(joint: RID, param: PhysicsServer3D.SliderJointParam) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__slider_joint_get_param, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__joint_make_cone_twist: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_joint_make_cone_twist")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1684107643)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _jointMakeConeTwist(joint: RID, bodyA: RID, localRefA: Transform3D, bodyB: RID, localRefB: Transform3D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: bodyA.content) { pArg1 in
                withUnsafePointer(to: localRefA) { pArg2 in
                    withUnsafePointer(to: bodyB.content) { pArg3 in
                        withUnsafePointer(to: localRefB) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__joint_make_cone_twist, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__cone_twist_joint_set_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_cone_twist_joint_set_param")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 808587618)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _coneTwistJointSetParam(joint: RID, param: PhysicsServer3D.ConeTwistJointParam, value: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: value) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__cone_twist_joint_set_param, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__cone_twist_joint_get_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_cone_twist_joint_get_param")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1134789658)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _coneTwistJointGetParam(joint: RID, param: PhysicsServer3D.ConeTwistJointParam) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__cone_twist_joint_get_param, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__joint_make_generic_6dof: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_joint_make_generic_6dof")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1684107643)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _jointMakeGeneric6dof(joint: RID, bodyA: RID, localRefA: Transform3D, bodyB: RID, localRefB: Transform3D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: bodyA.content) { pArg1 in
                withUnsafePointer(to: localRefA) { pArg2 in
                    withUnsafePointer(to: bodyB.content) { pArg3 in
                        withUnsafePointer(to: localRefB) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__joint_make_generic_6dof, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__generic_6dof_joint_set_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_generic_6dof_joint_set_param")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2600081391)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _generic6dofJointSetParam(joint: RID, axis: Vector3.Axis, param: PhysicsServer3D.G6DOFJointAxisParam, value: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: axis.rawValue) { pArg1 in
                withUnsafePointer(to: param.rawValue) { pArg2 in
                    withUnsafePointer(to: value) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__generic_6dof_joint_set_param, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__generic_6dof_joint_get_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_generic_6dof_joint_get_param")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 467122058)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _generic6dofJointGetParam(joint: RID, axis: Vector3.Axis, param: PhysicsServer3D.G6DOFJointAxisParam) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: axis.rawValue) { pArg1 in
                withUnsafePointer(to: param.rawValue) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__generic_6dof_joint_get_param, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__generic_6dof_joint_set_flag: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_generic_6dof_joint_set_flag")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3570926903)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _generic6dofJointSetFlag(joint: RID, axis: Vector3.Axis, flag: PhysicsServer3D.G6DOFJointAxisFlag, enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: axis.rawValue) { pArg1 in
                withUnsafePointer(to: flag.rawValue) { pArg2 in
                    withUnsafePointer(to: enable) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__generic_6dof_joint_set_flag, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__generic_6dof_joint_get_flag: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_generic_6dof_joint_get_flag")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4158090196)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _generic6dofJointGetFlag(joint: RID, axis: Vector3.Axis, flag: PhysicsServer3D.G6DOFJointAxisFlag) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: axis.rawValue) { pArg1 in
                withUnsafePointer(to: flag.rawValue) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__generic_6dof_joint_get_flag, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__joint_get_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_joint_get_type")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4290791900)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _jointGetType(joint: RID) -> PhysicsServer3D.JointType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__joint_get_type, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return PhysicsServer3D.JointType (rawValue: _result)!
    }
    
    fileprivate static let method__joint_set_solver_priority: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_joint_set_solver_priority")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _jointSetSolverPriority(joint: RID, priority: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: priority) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__joint_set_solver_priority, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__joint_get_solver_priority: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_joint_get_solver_priority")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _jointGetSolverPriority(joint: RID) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__joint_get_solver_priority, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__joint_disable_collisions_between_bodies: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_joint_disable_collisions_between_bodies")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1265174801)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _jointDisableCollisionsBetweenBodies(joint: RID, disable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: disable) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__joint_disable_collisions_between_bodies, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__joint_is_disabled_collisions_between_bodies: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_joint_is_disabled_collisions_between_bodies")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155700596)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _jointIsDisabledCollisionsBetweenBodies(joint: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__joint_is_disabled_collisions_between_bodies, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__free_rid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_free_rid")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _freeRid(_ rid: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: rid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__free_rid, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__set_active: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_active")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _setActive(_ active: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: active) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__set_active, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__init: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_init")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _init() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__init, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__step: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_step")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _step(_ step: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: step) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__step, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__sync: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_sync")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _sync() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__sync, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__flush_queries: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_flush_queries")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _flushQueries() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__flush_queries, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__end_sync: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_end_sync")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _endSync() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__end_sync, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__finish: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_finish")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _finish() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__finish, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__is_flushing_queries: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_flushing_queries")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _isFlushingQueries() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__is_flushing_queries, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_process_info: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_process_info")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1332958745)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getProcessInfo(_ processInfo: PhysicsServer3D.ProcessInfo) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: processInfo.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method__get_process_info, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_body_test_motion_is_excluding_body: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("body_test_motion_is_excluding_body")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155700596)!
            }
            
        }
        
    }()
    
    /// 
    public final func bodyTestMotionIsExcludingBody(_ body: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method_body_test_motion_is_excluding_body, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_body_test_motion_is_excluding_object: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("body_test_motion_is_excluding_object")
        return withUnsafePointer(to: &PhysicsServer3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// 
    public final func bodyTestMotionIsExcludingObject(_ object: UInt) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: object) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DExtension.method_body_test_motion_is_excluding_object, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_area_add_shape":
                return _PhysicsServer3DExtension_proxy_area_add_shape
            case "_area_attach_object_instance_id":
                return _PhysicsServer3DExtension_proxy_area_attach_object_instance_id
            case "_area_clear_shapes":
                return _PhysicsServer3DExtension_proxy_area_clear_shapes
            case "_area_create":
                return _PhysicsServer3DExtension_proxy_area_create
            case "_area_get_collision_layer":
                return _PhysicsServer3DExtension_proxy_area_get_collision_layer
            case "_area_get_collision_mask":
                return _PhysicsServer3DExtension_proxy_area_get_collision_mask
            case "_area_get_object_instance_id":
                return _PhysicsServer3DExtension_proxy_area_get_object_instance_id
            case "_area_get_param":
                return _PhysicsServer3DExtension_proxy_area_get_param
            case "_area_get_shape":
                return _PhysicsServer3DExtension_proxy_area_get_shape
            case "_area_get_shape_count":
                return _PhysicsServer3DExtension_proxy_area_get_shape_count
            case "_area_get_shape_transform":
                return _PhysicsServer3DExtension_proxy_area_get_shape_transform
            case "_area_get_space":
                return _PhysicsServer3DExtension_proxy_area_get_space
            case "_area_get_transform":
                return _PhysicsServer3DExtension_proxy_area_get_transform
            case "_area_remove_shape":
                return _PhysicsServer3DExtension_proxy_area_remove_shape
            case "_area_set_area_monitor_callback":
                return _PhysicsServer3DExtension_proxy_area_set_area_monitor_callback
            case "_area_set_collision_layer":
                return _PhysicsServer3DExtension_proxy_area_set_collision_layer
            case "_area_set_collision_mask":
                return _PhysicsServer3DExtension_proxy_area_set_collision_mask
            case "_area_set_monitor_callback":
                return _PhysicsServer3DExtension_proxy_area_set_monitor_callback
            case "_area_set_monitorable":
                return _PhysicsServer3DExtension_proxy_area_set_monitorable
            case "_area_set_param":
                return _PhysicsServer3DExtension_proxy_area_set_param
            case "_area_set_ray_pickable":
                return _PhysicsServer3DExtension_proxy_area_set_ray_pickable
            case "_area_set_shape":
                return _PhysicsServer3DExtension_proxy_area_set_shape
            case "_area_set_shape_disabled":
                return _PhysicsServer3DExtension_proxy_area_set_shape_disabled
            case "_area_set_shape_transform":
                return _PhysicsServer3DExtension_proxy_area_set_shape_transform
            case "_area_set_space":
                return _PhysicsServer3DExtension_proxy_area_set_space
            case "_area_set_transform":
                return _PhysicsServer3DExtension_proxy_area_set_transform
            case "_body_add_collision_exception":
                return _PhysicsServer3DExtension_proxy_body_add_collision_exception
            case "_body_add_constant_central_force":
                return _PhysicsServer3DExtension_proxy_body_add_constant_central_force
            case "_body_add_constant_force":
                return _PhysicsServer3DExtension_proxy_body_add_constant_force
            case "_body_add_constant_torque":
                return _PhysicsServer3DExtension_proxy_body_add_constant_torque
            case "_body_add_shape":
                return _PhysicsServer3DExtension_proxy_body_add_shape
            case "_body_apply_central_force":
                return _PhysicsServer3DExtension_proxy_body_apply_central_force
            case "_body_apply_central_impulse":
                return _PhysicsServer3DExtension_proxy_body_apply_central_impulse
            case "_body_apply_force":
                return _PhysicsServer3DExtension_proxy_body_apply_force
            case "_body_apply_impulse":
                return _PhysicsServer3DExtension_proxy_body_apply_impulse
            case "_body_apply_torque":
                return _PhysicsServer3DExtension_proxy_body_apply_torque
            case "_body_apply_torque_impulse":
                return _PhysicsServer3DExtension_proxy_body_apply_torque_impulse
            case "_body_attach_object_instance_id":
                return _PhysicsServer3DExtension_proxy_body_attach_object_instance_id
            case "_body_clear_shapes":
                return _PhysicsServer3DExtension_proxy_body_clear_shapes
            case "_body_create":
                return _PhysicsServer3DExtension_proxy_body_create
            case "_body_get_collision_exceptions":
                return _PhysicsServer3DExtension_proxy_body_get_collision_exceptions
            case "_body_get_collision_layer":
                return _PhysicsServer3DExtension_proxy_body_get_collision_layer
            case "_body_get_collision_mask":
                return _PhysicsServer3DExtension_proxy_body_get_collision_mask
            case "_body_get_collision_priority":
                return _PhysicsServer3DExtension_proxy_body_get_collision_priority
            case "_body_get_constant_force":
                return _PhysicsServer3DExtension_proxy_body_get_constant_force
            case "_body_get_constant_torque":
                return _PhysicsServer3DExtension_proxy_body_get_constant_torque
            case "_body_get_contacts_reported_depth_threshold":
                return _PhysicsServer3DExtension_proxy_body_get_contacts_reported_depth_threshold
            case "_body_get_direct_state":
                return _PhysicsServer3DExtension_proxy_body_get_direct_state
            case "_body_get_max_contacts_reported":
                return _PhysicsServer3DExtension_proxy_body_get_max_contacts_reported
            case "_body_get_mode":
                return _PhysicsServer3DExtension_proxy_body_get_mode
            case "_body_get_object_instance_id":
                return _PhysicsServer3DExtension_proxy_body_get_object_instance_id
            case "_body_get_param":
                return _PhysicsServer3DExtension_proxy_body_get_param
            case "_body_get_shape":
                return _PhysicsServer3DExtension_proxy_body_get_shape
            case "_body_get_shape_count":
                return _PhysicsServer3DExtension_proxy_body_get_shape_count
            case "_body_get_shape_transform":
                return _PhysicsServer3DExtension_proxy_body_get_shape_transform
            case "_body_get_space":
                return _PhysicsServer3DExtension_proxy_body_get_space
            case "_body_get_state":
                return _PhysicsServer3DExtension_proxy_body_get_state
            case "_body_get_user_flags":
                return _PhysicsServer3DExtension_proxy_body_get_user_flags
            case "_body_is_axis_locked":
                return _PhysicsServer3DExtension_proxy_body_is_axis_locked
            case "_body_is_continuous_collision_detection_enabled":
                return _PhysicsServer3DExtension_proxy_body_is_continuous_collision_detection_enabled
            case "_body_is_omitting_force_integration":
                return _PhysicsServer3DExtension_proxy_body_is_omitting_force_integration
            case "_body_remove_collision_exception":
                return _PhysicsServer3DExtension_proxy_body_remove_collision_exception
            case "_body_remove_shape":
                return _PhysicsServer3DExtension_proxy_body_remove_shape
            case "_body_reset_mass_properties":
                return _PhysicsServer3DExtension_proxy_body_reset_mass_properties
            case "_body_set_axis_lock":
                return _PhysicsServer3DExtension_proxy_body_set_axis_lock
            case "_body_set_axis_velocity":
                return _PhysicsServer3DExtension_proxy_body_set_axis_velocity
            case "_body_set_collision_layer":
                return _PhysicsServer3DExtension_proxy_body_set_collision_layer
            case "_body_set_collision_mask":
                return _PhysicsServer3DExtension_proxy_body_set_collision_mask
            case "_body_set_collision_priority":
                return _PhysicsServer3DExtension_proxy_body_set_collision_priority
            case "_body_set_constant_force":
                return _PhysicsServer3DExtension_proxy_body_set_constant_force
            case "_body_set_constant_torque":
                return _PhysicsServer3DExtension_proxy_body_set_constant_torque
            case "_body_set_contacts_reported_depth_threshold":
                return _PhysicsServer3DExtension_proxy_body_set_contacts_reported_depth_threshold
            case "_body_set_enable_continuous_collision_detection":
                return _PhysicsServer3DExtension_proxy_body_set_enable_continuous_collision_detection
            case "_body_set_force_integration_callback":
                return _PhysicsServer3DExtension_proxy_body_set_force_integration_callback
            case "_body_set_max_contacts_reported":
                return _PhysicsServer3DExtension_proxy_body_set_max_contacts_reported
            case "_body_set_mode":
                return _PhysicsServer3DExtension_proxy_body_set_mode
            case "_body_set_omit_force_integration":
                return _PhysicsServer3DExtension_proxy_body_set_omit_force_integration
            case "_body_set_param":
                return _PhysicsServer3DExtension_proxy_body_set_param
            case "_body_set_ray_pickable":
                return _PhysicsServer3DExtension_proxy_body_set_ray_pickable
            case "_body_set_shape":
                return _PhysicsServer3DExtension_proxy_body_set_shape
            case "_body_set_shape_disabled":
                return _PhysicsServer3DExtension_proxy_body_set_shape_disabled
            case "_body_set_shape_transform":
                return _PhysicsServer3DExtension_proxy_body_set_shape_transform
            case "_body_set_space":
                return _PhysicsServer3DExtension_proxy_body_set_space
            case "_body_set_state":
                return _PhysicsServer3DExtension_proxy_body_set_state
            case "_body_set_state_sync_callback":
                return _PhysicsServer3DExtension_proxy_body_set_state_sync_callback
            case "_body_set_user_flags":
                return _PhysicsServer3DExtension_proxy_body_set_user_flags
            case "_box_shape_create":
                return _PhysicsServer3DExtension_proxy_box_shape_create
            case "_capsule_shape_create":
                return _PhysicsServer3DExtension_proxy_capsule_shape_create
            case "_concave_polygon_shape_create":
                return _PhysicsServer3DExtension_proxy_concave_polygon_shape_create
            case "_cone_twist_joint_get_param":
                return _PhysicsServer3DExtension_proxy_cone_twist_joint_get_param
            case "_cone_twist_joint_set_param":
                return _PhysicsServer3DExtension_proxy_cone_twist_joint_set_param
            case "_convex_polygon_shape_create":
                return _PhysicsServer3DExtension_proxy_convex_polygon_shape_create
            case "_custom_shape_create":
                return _PhysicsServer3DExtension_proxy_custom_shape_create
            case "_cylinder_shape_create":
                return _PhysicsServer3DExtension_proxy_cylinder_shape_create
            case "_end_sync":
                return _PhysicsServer3DExtension_proxy_end_sync
            case "_finish":
                return _PhysicsServer3DExtension_proxy_finish
            case "_flush_queries":
                return _PhysicsServer3DExtension_proxy_flush_queries
            case "_free_rid":
                return _PhysicsServer3DExtension_proxy_free_rid
            case "_generic_6dof_joint_get_flag":
                return _PhysicsServer3DExtension_proxy_generic_6dof_joint_get_flag
            case "_generic_6dof_joint_get_param":
                return _PhysicsServer3DExtension_proxy_generic_6dof_joint_get_param
            case "_generic_6dof_joint_set_flag":
                return _PhysicsServer3DExtension_proxy_generic_6dof_joint_set_flag
            case "_generic_6dof_joint_set_param":
                return _PhysicsServer3DExtension_proxy_generic_6dof_joint_set_param
            case "_get_process_info":
                return _PhysicsServer3DExtension_proxy_get_process_info
            case "_heightmap_shape_create":
                return _PhysicsServer3DExtension_proxy_heightmap_shape_create
            case "_hinge_joint_get_flag":
                return _PhysicsServer3DExtension_proxy_hinge_joint_get_flag
            case "_hinge_joint_get_param":
                return _PhysicsServer3DExtension_proxy_hinge_joint_get_param
            case "_hinge_joint_set_flag":
                return _PhysicsServer3DExtension_proxy_hinge_joint_set_flag
            case "_hinge_joint_set_param":
                return _PhysicsServer3DExtension_proxy_hinge_joint_set_param
            case "_init":
                return _PhysicsServer3DExtension_proxy_init
            case "_is_flushing_queries":
                return _PhysicsServer3DExtension_proxy_is_flushing_queries
            case "_joint_clear":
                return _PhysicsServer3DExtension_proxy_joint_clear
            case "_joint_create":
                return _PhysicsServer3DExtension_proxy_joint_create
            case "_joint_disable_collisions_between_bodies":
                return _PhysicsServer3DExtension_proxy_joint_disable_collisions_between_bodies
            case "_joint_get_solver_priority":
                return _PhysicsServer3DExtension_proxy_joint_get_solver_priority
            case "_joint_get_type":
                return _PhysicsServer3DExtension_proxy_joint_get_type
            case "_joint_is_disabled_collisions_between_bodies":
                return _PhysicsServer3DExtension_proxy_joint_is_disabled_collisions_between_bodies
            case "_joint_make_cone_twist":
                return _PhysicsServer3DExtension_proxy_joint_make_cone_twist
            case "_joint_make_generic_6dof":
                return _PhysicsServer3DExtension_proxy_joint_make_generic_6dof
            case "_joint_make_hinge":
                return _PhysicsServer3DExtension_proxy_joint_make_hinge
            case "_joint_make_hinge_simple":
                return _PhysicsServer3DExtension_proxy_joint_make_hinge_simple
            case "_joint_make_pin":
                return _PhysicsServer3DExtension_proxy_joint_make_pin
            case "_joint_make_slider":
                return _PhysicsServer3DExtension_proxy_joint_make_slider
            case "_joint_set_solver_priority":
                return _PhysicsServer3DExtension_proxy_joint_set_solver_priority
            case "_pin_joint_get_local_a":
                return _PhysicsServer3DExtension_proxy_pin_joint_get_local_a
            case "_pin_joint_get_local_b":
                return _PhysicsServer3DExtension_proxy_pin_joint_get_local_b
            case "_pin_joint_get_param":
                return _PhysicsServer3DExtension_proxy_pin_joint_get_param
            case "_pin_joint_set_local_a":
                return _PhysicsServer3DExtension_proxy_pin_joint_set_local_a
            case "_pin_joint_set_local_b":
                return _PhysicsServer3DExtension_proxy_pin_joint_set_local_b
            case "_pin_joint_set_param":
                return _PhysicsServer3DExtension_proxy_pin_joint_set_param
            case "_separation_ray_shape_create":
                return _PhysicsServer3DExtension_proxy_separation_ray_shape_create
            case "_set_active":
                return _PhysicsServer3DExtension_proxy_set_active
            case "_shape_get_custom_solver_bias":
                return _PhysicsServer3DExtension_proxy_shape_get_custom_solver_bias
            case "_shape_get_data":
                return _PhysicsServer3DExtension_proxy_shape_get_data
            case "_shape_get_margin":
                return _PhysicsServer3DExtension_proxy_shape_get_margin
            case "_shape_get_type":
                return _PhysicsServer3DExtension_proxy_shape_get_type
            case "_shape_set_custom_solver_bias":
                return _PhysicsServer3DExtension_proxy_shape_set_custom_solver_bias
            case "_shape_set_data":
                return _PhysicsServer3DExtension_proxy_shape_set_data
            case "_shape_set_margin":
                return _PhysicsServer3DExtension_proxy_shape_set_margin
            case "_slider_joint_get_param":
                return _PhysicsServer3DExtension_proxy_slider_joint_get_param
            case "_slider_joint_set_param":
                return _PhysicsServer3DExtension_proxy_slider_joint_set_param
            case "_soft_body_add_collision_exception":
                return _PhysicsServer3DExtension_proxy_soft_body_add_collision_exception
            case "_soft_body_create":
                return _PhysicsServer3DExtension_proxy_soft_body_create
            case "_soft_body_get_bounds":
                return _PhysicsServer3DExtension_proxy_soft_body_get_bounds
            case "_soft_body_get_collision_exceptions":
                return _PhysicsServer3DExtension_proxy_soft_body_get_collision_exceptions
            case "_soft_body_get_collision_layer":
                return _PhysicsServer3DExtension_proxy_soft_body_get_collision_layer
            case "_soft_body_get_collision_mask":
                return _PhysicsServer3DExtension_proxy_soft_body_get_collision_mask
            case "_soft_body_get_damping_coefficient":
                return _PhysicsServer3DExtension_proxy_soft_body_get_damping_coefficient
            case "_soft_body_get_drag_coefficient":
                return _PhysicsServer3DExtension_proxy_soft_body_get_drag_coefficient
            case "_soft_body_get_linear_stiffness":
                return _PhysicsServer3DExtension_proxy_soft_body_get_linear_stiffness
            case "_soft_body_get_point_global_position":
                return _PhysicsServer3DExtension_proxy_soft_body_get_point_global_position
            case "_soft_body_get_pressure_coefficient":
                return _PhysicsServer3DExtension_proxy_soft_body_get_pressure_coefficient
            case "_soft_body_get_simulation_precision":
                return _PhysicsServer3DExtension_proxy_soft_body_get_simulation_precision
            case "_soft_body_get_space":
                return _PhysicsServer3DExtension_proxy_soft_body_get_space
            case "_soft_body_get_state":
                return _PhysicsServer3DExtension_proxy_soft_body_get_state
            case "_soft_body_get_total_mass":
                return _PhysicsServer3DExtension_proxy_soft_body_get_total_mass
            case "_soft_body_is_point_pinned":
                return _PhysicsServer3DExtension_proxy_soft_body_is_point_pinned
            case "_soft_body_move_point":
                return _PhysicsServer3DExtension_proxy_soft_body_move_point
            case "_soft_body_pin_point":
                return _PhysicsServer3DExtension_proxy_soft_body_pin_point
            case "_soft_body_remove_all_pinned_points":
                return _PhysicsServer3DExtension_proxy_soft_body_remove_all_pinned_points
            case "_soft_body_remove_collision_exception":
                return _PhysicsServer3DExtension_proxy_soft_body_remove_collision_exception
            case "_soft_body_set_collision_layer":
                return _PhysicsServer3DExtension_proxy_soft_body_set_collision_layer
            case "_soft_body_set_collision_mask":
                return _PhysicsServer3DExtension_proxy_soft_body_set_collision_mask
            case "_soft_body_set_damping_coefficient":
                return _PhysicsServer3DExtension_proxy_soft_body_set_damping_coefficient
            case "_soft_body_set_drag_coefficient":
                return _PhysicsServer3DExtension_proxy_soft_body_set_drag_coefficient
            case "_soft_body_set_linear_stiffness":
                return _PhysicsServer3DExtension_proxy_soft_body_set_linear_stiffness
            case "_soft_body_set_mesh":
                return _PhysicsServer3DExtension_proxy_soft_body_set_mesh
            case "_soft_body_set_pressure_coefficient":
                return _PhysicsServer3DExtension_proxy_soft_body_set_pressure_coefficient
            case "_soft_body_set_ray_pickable":
                return _PhysicsServer3DExtension_proxy_soft_body_set_ray_pickable
            case "_soft_body_set_simulation_precision":
                return _PhysicsServer3DExtension_proxy_soft_body_set_simulation_precision
            case "_soft_body_set_space":
                return _PhysicsServer3DExtension_proxy_soft_body_set_space
            case "_soft_body_set_state":
                return _PhysicsServer3DExtension_proxy_soft_body_set_state
            case "_soft_body_set_total_mass":
                return _PhysicsServer3DExtension_proxy_soft_body_set_total_mass
            case "_soft_body_set_transform":
                return _PhysicsServer3DExtension_proxy_soft_body_set_transform
            case "_soft_body_update_rendering_server":
                return _PhysicsServer3DExtension_proxy_soft_body_update_rendering_server
            case "_space_create":
                return _PhysicsServer3DExtension_proxy_space_create
            case "_space_get_contact_count":
                return _PhysicsServer3DExtension_proxy_space_get_contact_count
            case "_space_get_contacts":
                return _PhysicsServer3DExtension_proxy_space_get_contacts
            case "_space_get_direct_state":
                return _PhysicsServer3DExtension_proxy_space_get_direct_state
            case "_space_get_param":
                return _PhysicsServer3DExtension_proxy_space_get_param
            case "_space_is_active":
                return _PhysicsServer3DExtension_proxy_space_is_active
            case "_space_set_active":
                return _PhysicsServer3DExtension_proxy_space_set_active
            case "_space_set_debug_contacts":
                return _PhysicsServer3DExtension_proxy_space_set_debug_contacts
            case "_space_set_param":
                return _PhysicsServer3DExtension_proxy_space_set_param
            case "_sphere_shape_create":
                return _PhysicsServer3DExtension_proxy_sphere_shape_create
            case "_step":
                return _PhysicsServer3DExtension_proxy_step
            case "_sync":
                return _PhysicsServer3DExtension_proxy_sync
            case "_world_boundary_shape_create":
                return _PhysicsServer3DExtension_proxy_world_boundary_shape_create
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _PhysicsServer3DExtension_proxy_area_add_shape (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._areaAddShape (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shape: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee), transform: args [2]!.assumingMemoryBound (to: Transform3D.self).pointee, disabled: args [3]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer3DExtension_proxy_area_attach_object_instance_id (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._areaAttachObjectInstanceId (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), id: args [1]!.assumingMemoryBound (to: UInt.self).pointee)
}

func _PhysicsServer3DExtension_proxy_area_clear_shapes (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._areaClearShapes (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer3DExtension_proxy_area_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._areaCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer3DExtension_proxy_area_get_collision_layer (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._areaGetCollisionLayer (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: UInt32.self)
}

func _PhysicsServer3DExtension_proxy_area_get_collision_mask (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._areaGetCollisionMask (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: UInt32.self)
}

func _PhysicsServer3DExtension_proxy_area_get_object_instance_id (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._areaGetObjectInstanceId (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: UInt.self)
}

func _PhysicsServer3DExtension_proxy_area_get_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._areaGetParam (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer3D.AreaParameter.self).pointee)
    retPtr!.storeBytes(of: ret.content, as: Variant.ContentType.self)
    ret?.content = Variant.zero
}

func _PhysicsServer3DExtension_proxy_area_get_shape (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._areaGetShape (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shapeIdx: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer3DExtension_proxy_area_get_shape_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._areaGetShapeCount (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _PhysicsServer3DExtension_proxy_area_get_shape_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._areaGetShapeTransform (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shapeIdx: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Transform3D.self)
}

func _PhysicsServer3DExtension_proxy_area_get_space (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._areaGetSpace (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer3DExtension_proxy_area_get_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._areaGetTransform (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Transform3D.self)
}

func _PhysicsServer3DExtension_proxy_area_remove_shape (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._areaRemoveShape (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shapeIdx: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
}

func _PhysicsServer3DExtension_proxy_area_set_area_monitor_callback (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._areaSetAreaMonitorCallback (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), callback: Callable (content: args [1]!.assumingMemoryBound (to: (Int64, Int64).self).pointee))
}

func _PhysicsServer3DExtension_proxy_area_set_collision_layer (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._areaSetCollisionLayer (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), layer: args [1]!.assumingMemoryBound (to: UInt32.self).pointee)
}

func _PhysicsServer3DExtension_proxy_area_set_collision_mask (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._areaSetCollisionMask (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), mask: args [1]!.assumingMemoryBound (to: UInt32.self).pointee)
}

func _PhysicsServer3DExtension_proxy_area_set_monitor_callback (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._areaSetMonitorCallback (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), callback: Callable (content: args [1]!.assumingMemoryBound (to: (Int64, Int64).self).pointee))
}

func _PhysicsServer3DExtension_proxy_area_set_monitorable (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._areaSetMonitorable (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), monitorable: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer3DExtension_proxy_area_set_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._areaSetParam (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer3D.AreaParameter.self).pointee, value: args [2]!.assumingMemoryBound (to: Variant.self).pointee)
}

func _PhysicsServer3DExtension_proxy_area_set_ray_pickable (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._areaSetRayPickable (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), enable: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer3DExtension_proxy_area_set_shape (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._areaSetShape (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shapeIdx: args [1]!.assumingMemoryBound (to: Int32.self).pointee, shape: RID (content: args [2]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer3DExtension_proxy_area_set_shape_disabled (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._areaSetShapeDisabled (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shapeIdx: args [1]!.assumingMemoryBound (to: Int32.self).pointee, disabled: args [2]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer3DExtension_proxy_area_set_shape_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._areaSetShapeTransform (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shapeIdx: args [1]!.assumingMemoryBound (to: Int32.self).pointee, transform: args [2]!.assumingMemoryBound (to: Transform3D.self).pointee)
}

func _PhysicsServer3DExtension_proxy_area_set_space (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._areaSetSpace (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), space: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer3DExtension_proxy_area_set_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._areaSetTransform (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), transform: args [1]!.assumingMemoryBound (to: Transform3D.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_add_collision_exception (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodyAddCollisionException (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), exceptedBody: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer3DExtension_proxy_body_add_constant_central_force (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodyAddConstantCentralForce (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), force: args [1]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_add_constant_force (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodyAddConstantForce (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), force: args [1]!.assumingMemoryBound (to: Vector3.self).pointee, position: args [2]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_add_constant_torque (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodyAddConstantTorque (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), torque: args [1]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_add_shape (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodyAddShape (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shape: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee), transform: args [2]!.assumingMemoryBound (to: Transform3D.self).pointee, disabled: args [3]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_apply_central_force (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodyApplyCentralForce (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), force: args [1]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_apply_central_impulse (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodyApplyCentralImpulse (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), impulse: args [1]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_apply_force (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodyApplyForce (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), force: args [1]!.assumingMemoryBound (to: Vector3.self).pointee, position: args [2]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_apply_impulse (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodyApplyImpulse (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), impulse: args [1]!.assumingMemoryBound (to: Vector3.self).pointee, position: args [2]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_apply_torque (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodyApplyTorque (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), torque: args [1]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_apply_torque_impulse (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodyApplyTorqueImpulse (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), impulse: args [1]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_attach_object_instance_id (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodyAttachObjectInstanceId (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), id: args [1]!.assumingMemoryBound (to: UInt.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_clear_shapes (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodyClearShapes (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer3DExtension_proxy_body_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._bodyCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer3DExtension_proxy_body_get_collision_exceptions (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._bodyGetCollisionExceptions (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::RID
}

func _PhysicsServer3DExtension_proxy_body_get_collision_layer (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._bodyGetCollisionLayer (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: UInt32.self)
}

func _PhysicsServer3DExtension_proxy_body_get_collision_mask (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._bodyGetCollisionMask (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: UInt32.self)
}

func _PhysicsServer3DExtension_proxy_body_get_collision_priority (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._bodyGetCollisionPriority (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsServer3DExtension_proxy_body_get_constant_force (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._bodyGetConstantForce (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Vector3.self)
}

func _PhysicsServer3DExtension_proxy_body_get_constant_torque (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._bodyGetConstantTorque (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Vector3.self)
}

func _PhysicsServer3DExtension_proxy_body_get_contacts_reported_depth_threshold (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._bodyGetContactsReportedDepthThreshold (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsServer3DExtension_proxy_body_get_direct_state (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._bodyGetDirectState (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret?.handle, as: UnsafeRawPointer?.self) // PhysicsDirectBodyState3D
}

func _PhysicsServer3DExtension_proxy_body_get_max_contacts_reported (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._bodyGetMaxContactsReported (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _PhysicsServer3DExtension_proxy_body_get_mode (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._bodyGetMode (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _PhysicsServer3DExtension_proxy_body_get_object_instance_id (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._bodyGetObjectInstanceId (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: UInt.self)
}

func _PhysicsServer3DExtension_proxy_body_get_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._bodyGetParam (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer3D.BodyParameter.self).pointee)
    retPtr!.storeBytes(of: ret.content, as: Variant.ContentType.self)
    ret?.content = Variant.zero
}

func _PhysicsServer3DExtension_proxy_body_get_shape (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._bodyGetShape (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shapeIdx: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer3DExtension_proxy_body_get_shape_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._bodyGetShapeCount (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _PhysicsServer3DExtension_proxy_body_get_shape_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._bodyGetShapeTransform (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shapeIdx: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Transform3D.self)
}

func _PhysicsServer3DExtension_proxy_body_get_space (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._bodyGetSpace (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer3DExtension_proxy_body_get_state (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._bodyGetState (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), state: args [1]!.assumingMemoryBound (to: PhysicsServer3D.BodyState.self).pointee)
    retPtr!.storeBytes(of: ret.content, as: Variant.ContentType.self)
    ret?.content = Variant.zero
}

func _PhysicsServer3DExtension_proxy_body_get_user_flags (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._bodyGetUserFlags (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: UInt32.self)
}

func _PhysicsServer3DExtension_proxy_body_is_axis_locked (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._bodyIsAxisLocked (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), axis: args [1]!.assumingMemoryBound (to: PhysicsServer3D.BodyAxis.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _PhysicsServer3DExtension_proxy_body_is_continuous_collision_detection_enabled (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._bodyIsContinuousCollisionDetectionEnabled (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _PhysicsServer3DExtension_proxy_body_is_omitting_force_integration (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._bodyIsOmittingForceIntegration (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _PhysicsServer3DExtension_proxy_body_remove_collision_exception (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodyRemoveCollisionException (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), exceptedBody: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer3DExtension_proxy_body_remove_shape (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodyRemoveShape (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shapeIdx: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_reset_mass_properties (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodyResetMassProperties (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer3DExtension_proxy_body_set_axis_lock (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodySetAxisLock (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), axis: args [1]!.assumingMemoryBound (to: PhysicsServer3D.BodyAxis.self).pointee, lock: args [2]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_set_axis_velocity (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodySetAxisVelocity (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), axisVelocity: args [1]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_set_collision_layer (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodySetCollisionLayer (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), layer: args [1]!.assumingMemoryBound (to: UInt32.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_set_collision_mask (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodySetCollisionMask (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), mask: args [1]!.assumingMemoryBound (to: UInt32.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_set_collision_priority (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodySetCollisionPriority (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), priority: args [1]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_set_constant_force (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodySetConstantForce (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), force: args [1]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_set_constant_torque (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodySetConstantTorque (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), torque: args [1]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_set_contacts_reported_depth_threshold (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodySetContactsReportedDepthThreshold (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), threshold: args [1]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_set_enable_continuous_collision_detection (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodySetEnableContinuousCollisionDetection (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), enable: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_set_force_integration_callback (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodySetForceIntegrationCallback (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), callable: Callable (content: args [1]!.assumingMemoryBound (to: (Int64, Int64).self).pointee), userdata: args [2]!.assumingMemoryBound (to: Variant.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_set_max_contacts_reported (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodySetMaxContactsReported (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), amount: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_set_mode (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodySetMode (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), mode: args [1]!.assumingMemoryBound (to: PhysicsServer3D.BodyMode.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_set_omit_force_integration (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodySetOmitForceIntegration (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), enable: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_set_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodySetParam (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer3D.BodyParameter.self).pointee, value: args [2]!.assumingMemoryBound (to: Variant.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_set_ray_pickable (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodySetRayPickable (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), enable: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_set_shape (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodySetShape (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shapeIdx: args [1]!.assumingMemoryBound (to: Int32.self).pointee, shape: RID (content: args [2]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer3DExtension_proxy_body_set_shape_disabled (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodySetShapeDisabled (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shapeIdx: args [1]!.assumingMemoryBound (to: Int32.self).pointee, disabled: args [2]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_set_shape_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodySetShapeTransform (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shapeIdx: args [1]!.assumingMemoryBound (to: Int32.self).pointee, transform: args [2]!.assumingMemoryBound (to: Transform3D.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_set_space (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodySetSpace (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), space: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer3DExtension_proxy_body_set_state (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodySetState (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), state: args [1]!.assumingMemoryBound (to: PhysicsServer3D.BodyState.self).pointee, value: args [2]!.assumingMemoryBound (to: Variant.self).pointee)
}

func _PhysicsServer3DExtension_proxy_body_set_state_sync_callback (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodySetStateSyncCallback (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), callable: Callable (content: args [1]!.assumingMemoryBound (to: (Int64, Int64).self).pointee))
}

func _PhysicsServer3DExtension_proxy_body_set_user_flags (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._bodySetUserFlags (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), flags: args [1]!.assumingMemoryBound (to: UInt32.self).pointee)
}

func _PhysicsServer3DExtension_proxy_box_shape_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._boxShapeCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer3DExtension_proxy_capsule_shape_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._capsuleShapeCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer3DExtension_proxy_concave_polygon_shape_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._concavePolygonShapeCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer3DExtension_proxy_cone_twist_joint_get_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._coneTwistJointGetParam (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer3D.ConeTwistJointParam.self).pointee)
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsServer3DExtension_proxy_cone_twist_joint_set_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._coneTwistJointSetParam (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer3D.ConeTwistJointParam.self).pointee, value: args [2]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer3DExtension_proxy_convex_polygon_shape_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._convexPolygonShapeCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer3DExtension_proxy_custom_shape_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._customShapeCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer3DExtension_proxy_cylinder_shape_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._cylinderShapeCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer3DExtension_proxy_end_sync (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._endSync ()
}

func _PhysicsServer3DExtension_proxy_finish (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._finish ()
}

func _PhysicsServer3DExtension_proxy_flush_queries (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._flushQueries ()
}

func _PhysicsServer3DExtension_proxy_free_rid (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._freeRid (RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer3DExtension_proxy_generic_6dof_joint_get_flag (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._generic6dofJointGetFlag (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), axis: args [1]!.assumingMemoryBound (to: Vector3.Axis.self).pointee, flag: args [2]!.assumingMemoryBound (to: PhysicsServer3D.G6DOFJointAxisFlag.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _PhysicsServer3DExtension_proxy_generic_6dof_joint_get_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._generic6dofJointGetParam (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), axis: args [1]!.assumingMemoryBound (to: Vector3.Axis.self).pointee, param: args [2]!.assumingMemoryBound (to: PhysicsServer3D.G6DOFJointAxisParam.self).pointee)
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsServer3DExtension_proxy_generic_6dof_joint_set_flag (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._generic6dofJointSetFlag (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), axis: args [1]!.assumingMemoryBound (to: Vector3.Axis.self).pointee, flag: args [2]!.assumingMemoryBound (to: PhysicsServer3D.G6DOFJointAxisFlag.self).pointee, enable: args [3]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer3DExtension_proxy_generic_6dof_joint_set_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._generic6dofJointSetParam (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), axis: args [1]!.assumingMemoryBound (to: Vector3.Axis.self).pointee, param: args [2]!.assumingMemoryBound (to: PhysicsServer3D.G6DOFJointAxisParam.self).pointee, value: args [3]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer3DExtension_proxy_get_process_info (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._getProcessInfo (args [0]!.assumingMemoryBound (to: PhysicsServer3D.ProcessInfo.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _PhysicsServer3DExtension_proxy_heightmap_shape_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._heightmapShapeCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer3DExtension_proxy_hinge_joint_get_flag (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._hingeJointGetFlag (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), flag: args [1]!.assumingMemoryBound (to: PhysicsServer3D.HingeJointFlag.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _PhysicsServer3DExtension_proxy_hinge_joint_get_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._hingeJointGetParam (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer3D.HingeJointParam.self).pointee)
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsServer3DExtension_proxy_hinge_joint_set_flag (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._hingeJointSetFlag (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), flag: args [1]!.assumingMemoryBound (to: PhysicsServer3D.HingeJointFlag.self).pointee, enabled: args [2]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer3DExtension_proxy_hinge_joint_set_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._hingeJointSetParam (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer3D.HingeJointParam.self).pointee, value: args [2]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer3DExtension_proxy_init (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._init ()
}

func _PhysicsServer3DExtension_proxy_is_flushing_queries (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._isFlushingQueries ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _PhysicsServer3DExtension_proxy_joint_clear (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._jointClear (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer3DExtension_proxy_joint_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._jointCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer3DExtension_proxy_joint_disable_collisions_between_bodies (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._jointDisableCollisionsBetweenBodies (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), disable: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer3DExtension_proxy_joint_get_solver_priority (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._jointGetSolverPriority (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _PhysicsServer3DExtension_proxy_joint_get_type (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._jointGetType (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _PhysicsServer3DExtension_proxy_joint_is_disabled_collisions_between_bodies (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._jointIsDisabledCollisionsBetweenBodies (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _PhysicsServer3DExtension_proxy_joint_make_cone_twist (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._jointMakeConeTwist (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), bodyA: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee), localRefA: args [2]!.assumingMemoryBound (to: Transform3D.self).pointee, bodyB: RID (content: args [3]!.assumingMemoryBound (to: Int64.self).pointee), localRefB: args [4]!.assumingMemoryBound (to: Transform3D.self).pointee)
}

func _PhysicsServer3DExtension_proxy_joint_make_generic_6dof (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._jointMakeGeneric6dof (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), bodyA: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee), localRefA: args [2]!.assumingMemoryBound (to: Transform3D.self).pointee, bodyB: RID (content: args [3]!.assumingMemoryBound (to: Int64.self).pointee), localRefB: args [4]!.assumingMemoryBound (to: Transform3D.self).pointee)
}

func _PhysicsServer3DExtension_proxy_joint_make_hinge (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._jointMakeHinge (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), bodyA: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee), hingeA: args [2]!.assumingMemoryBound (to: Transform3D.self).pointee, bodyB: RID (content: args [3]!.assumingMemoryBound (to: Int64.self).pointee), hingeB: args [4]!.assumingMemoryBound (to: Transform3D.self).pointee)
}

func _PhysicsServer3DExtension_proxy_joint_make_hinge_simple (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._jointMakeHingeSimple (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), bodyA: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee), pivotA: args [2]!.assumingMemoryBound (to: Vector3.self).pointee, axisA: args [3]!.assumingMemoryBound (to: Vector3.self).pointee, bodyB: RID (content: args [4]!.assumingMemoryBound (to: Int64.self).pointee), pivotB: args [5]!.assumingMemoryBound (to: Vector3.self).pointee, axisB: args [6]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsServer3DExtension_proxy_joint_make_pin (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._jointMakePin (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), bodyA: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee), localA: args [2]!.assumingMemoryBound (to: Vector3.self).pointee, bodyB: RID (content: args [3]!.assumingMemoryBound (to: Int64.self).pointee), localB: args [4]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsServer3DExtension_proxy_joint_make_slider (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._jointMakeSlider (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), bodyA: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee), localRefA: args [2]!.assumingMemoryBound (to: Transform3D.self).pointee, bodyB: RID (content: args [3]!.assumingMemoryBound (to: Int64.self).pointee), localRefB: args [4]!.assumingMemoryBound (to: Transform3D.self).pointee)
}

func _PhysicsServer3DExtension_proxy_joint_set_solver_priority (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._jointSetSolverPriority (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), priority: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
}

func _PhysicsServer3DExtension_proxy_pin_joint_get_local_a (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._pinJointGetLocalA (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Vector3.self)
}

func _PhysicsServer3DExtension_proxy_pin_joint_get_local_b (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._pinJointGetLocalB (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Vector3.self)
}

func _PhysicsServer3DExtension_proxy_pin_joint_get_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._pinJointGetParam (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer3D.PinJointParam.self).pointee)
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsServer3DExtension_proxy_pin_joint_set_local_a (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._pinJointSetLocalA (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), localA: args [1]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsServer3DExtension_proxy_pin_joint_set_local_b (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._pinJointSetLocalB (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), localB: args [1]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsServer3DExtension_proxy_pin_joint_set_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._pinJointSetParam (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer3D.PinJointParam.self).pointee, value: args [2]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer3DExtension_proxy_separation_ray_shape_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._separationRayShapeCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer3DExtension_proxy_set_active (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._setActive (args [0]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer3DExtension_proxy_shape_get_custom_solver_bias (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._shapeGetCustomSolverBias (shape: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsServer3DExtension_proxy_shape_get_data (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._shapeGetData (shape: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes(of: ret.content, as: Variant.ContentType.self)
    ret?.content = Variant.zero
}

func _PhysicsServer3DExtension_proxy_shape_get_margin (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._shapeGetMargin (shape: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsServer3DExtension_proxy_shape_get_type (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._shapeGetType (shape: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _PhysicsServer3DExtension_proxy_shape_set_custom_solver_bias (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._shapeSetCustomSolverBias (shape: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), bias: args [1]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer3DExtension_proxy_shape_set_data (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._shapeSetData (shape: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), data: args [1]!.assumingMemoryBound (to: Variant.self).pointee)
}

func _PhysicsServer3DExtension_proxy_shape_set_margin (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._shapeSetMargin (shape: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), margin: args [1]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer3DExtension_proxy_slider_joint_get_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._sliderJointGetParam (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer3D.SliderJointParam.self).pointee)
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsServer3DExtension_proxy_slider_joint_set_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._sliderJointSetParam (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer3D.SliderJointParam.self).pointee, value: args [2]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer3DExtension_proxy_soft_body_add_collision_exception (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._softBodyAddCollisionException (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), bodyB: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer3DExtension_proxy_soft_body_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._softBodyCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer3DExtension_proxy_soft_body_get_bounds (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._softBodyGetBounds (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: AABB.self)
}

func _PhysicsServer3DExtension_proxy_soft_body_get_collision_exceptions (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._softBodyGetCollisionExceptions (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::RID
}

func _PhysicsServer3DExtension_proxy_soft_body_get_collision_layer (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._softBodyGetCollisionLayer (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: UInt32.self)
}

func _PhysicsServer3DExtension_proxy_soft_body_get_collision_mask (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._softBodyGetCollisionMask (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: UInt32.self)
}

func _PhysicsServer3DExtension_proxy_soft_body_get_damping_coefficient (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._softBodyGetDampingCoefficient (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsServer3DExtension_proxy_soft_body_get_drag_coefficient (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._softBodyGetDragCoefficient (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsServer3DExtension_proxy_soft_body_get_linear_stiffness (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._softBodyGetLinearStiffness (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsServer3DExtension_proxy_soft_body_get_point_global_position (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._softBodyGetPointGlobalPosition (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), pointIndex: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector3.self)
}

func _PhysicsServer3DExtension_proxy_soft_body_get_pressure_coefficient (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._softBodyGetPressureCoefficient (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsServer3DExtension_proxy_soft_body_get_simulation_precision (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._softBodyGetSimulationPrecision (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _PhysicsServer3DExtension_proxy_soft_body_get_space (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._softBodyGetSpace (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer3DExtension_proxy_soft_body_get_state (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._softBodyGetState (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), state: args [1]!.assumingMemoryBound (to: PhysicsServer3D.BodyState.self).pointee)
    retPtr!.storeBytes(of: ret.content, as: Variant.ContentType.self)
    ret?.content = Variant.zero
}

func _PhysicsServer3DExtension_proxy_soft_body_get_total_mass (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._softBodyGetTotalMass (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsServer3DExtension_proxy_soft_body_is_point_pinned (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._softBodyIsPointPinned (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), pointIndex: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _PhysicsServer3DExtension_proxy_soft_body_move_point (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._softBodyMovePoint (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), pointIndex: args [1]!.assumingMemoryBound (to: Int32.self).pointee, globalPosition: args [2]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsServer3DExtension_proxy_soft_body_pin_point (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._softBodyPinPoint (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), pointIndex: args [1]!.assumingMemoryBound (to: Int32.self).pointee, pin: args [2]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer3DExtension_proxy_soft_body_remove_all_pinned_points (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._softBodyRemoveAllPinnedPoints (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer3DExtension_proxy_soft_body_remove_collision_exception (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._softBodyRemoveCollisionException (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), bodyB: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer3DExtension_proxy_soft_body_set_collision_layer (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._softBodySetCollisionLayer (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), layer: args [1]!.assumingMemoryBound (to: UInt32.self).pointee)
}

func _PhysicsServer3DExtension_proxy_soft_body_set_collision_mask (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._softBodySetCollisionMask (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), mask: args [1]!.assumingMemoryBound (to: UInt32.self).pointee)
}

func _PhysicsServer3DExtension_proxy_soft_body_set_damping_coefficient (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._softBodySetDampingCoefficient (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), dampingCoefficient: args [1]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer3DExtension_proxy_soft_body_set_drag_coefficient (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._softBodySetDragCoefficient (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), dragCoefficient: args [1]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer3DExtension_proxy_soft_body_set_linear_stiffness (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._softBodySetLinearStiffness (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), linearStiffness: args [1]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer3DExtension_proxy_soft_body_set_mesh (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._softBodySetMesh (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), mesh: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer3DExtension_proxy_soft_body_set_pressure_coefficient (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._softBodySetPressureCoefficient (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), pressureCoefficient: args [1]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer3DExtension_proxy_soft_body_set_ray_pickable (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._softBodySetRayPickable (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), enable: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer3DExtension_proxy_soft_body_set_simulation_precision (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._softBodySetSimulationPrecision (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), simulationPrecision: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
}

func _PhysicsServer3DExtension_proxy_soft_body_set_space (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._softBodySetSpace (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), space: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer3DExtension_proxy_soft_body_set_state (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._softBodySetState (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), state: args [1]!.assumingMemoryBound (to: PhysicsServer3D.BodyState.self).pointee, variant: args [2]!.assumingMemoryBound (to: Variant.self).pointee)
}

func _PhysicsServer3DExtension_proxy_soft_body_set_total_mass (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._softBodySetTotalMass (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), totalMass: args [1]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer3DExtension_proxy_soft_body_set_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._softBodySetTransform (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), transform: args [1]!.assumingMemoryBound (to: Transform3D.self).pointee)
}

func _PhysicsServer3DExtension_proxy_soft_body_update_rendering_server (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let resolved_1 = args [1]!.load (as: UnsafeRawPointer?.self)
    
    swiftObject._softBodyUpdateRenderingServer (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), renderingServerHandler: resolved_1 == nil ? nil : lookupObject (nativeHandle: resolved_1!, ownsRef: false) as? PhysicsServer3DRenderingServerHandler)
}

func _PhysicsServer3DExtension_proxy_space_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._spaceCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer3DExtension_proxy_space_get_contact_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._spaceGetContactCount (space: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _PhysicsServer3DExtension_proxy_space_get_contacts (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._spaceGetContacts (space: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedVector3Array
    ret.content = PackedVector3Array.zero
}

func _PhysicsServer3DExtension_proxy_space_get_direct_state (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._spaceGetDirectState (space: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret?.handle, as: UnsafeRawPointer?.self) // PhysicsDirectSpaceState3D
}

func _PhysicsServer3DExtension_proxy_space_get_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._spaceGetParam (space: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer3D.SpaceParameter.self).pointee)
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsServer3DExtension_proxy_space_is_active (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._spaceIsActive (space: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _PhysicsServer3DExtension_proxy_space_set_active (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._spaceSetActive (space: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), active: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer3DExtension_proxy_space_set_debug_contacts (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._spaceSetDebugContacts (space: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), maxContacts: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
}

func _PhysicsServer3DExtension_proxy_space_set_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._spaceSetParam (space: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer3D.SpaceParameter.self).pointee, value: args [2]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer3DExtension_proxy_sphere_shape_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._sphereShapeCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer3DExtension_proxy_step (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._step (args [0]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer3DExtension_proxy_sync (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    swiftObject._sync ()
}

func _PhysicsServer3DExtension_proxy_world_boundary_shape_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DExtension else { return }
    let ret = swiftObject._worldBoundaryShapeCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

