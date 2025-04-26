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


/// Provides virtual methods that can be overridden to create custom ``PhysicsServer2D`` implementations.
/// 
/// This class extends ``PhysicsServer2D`` by providing additional virtual methods that can be overridden. When these methods are overridden, they will be called instead of the internal methods of the physics server.
/// 
/// Intended for use with GDExtension to create custom implementations of ``PhysicsServer2D``.
/// 
open class PhysicsServer2DExtension: PhysicsServer2D {
    private static var className = StringName("PhysicsServer2DExtension")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__world_boundary_shape_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_world_boundary_shape_create")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/worldBoundaryShapeCreate()``.
    @_documentation(visibility: public)
    open func _worldBoundaryShapeCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__world_boundary_shape_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__separation_ray_shape_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_separation_ray_shape_create")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/separationRayShapeCreate()``.
    @_documentation(visibility: public)
    open func _separationRayShapeCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__separation_ray_shape_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__segment_shape_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_segment_shape_create")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/segmentShapeCreate()``.
    @_documentation(visibility: public)
    open func _segmentShapeCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__segment_shape_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__circle_shape_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_circle_shape_create")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/circleShapeCreate()``.
    @_documentation(visibility: public)
    open func _circleShapeCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__circle_shape_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__rectangle_shape_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_rectangle_shape_create")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/rectangleShapeCreate()``.
    @_documentation(visibility: public)
    open func _rectangleShapeCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__rectangle_shape_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__capsule_shape_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_capsule_shape_create")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/capsuleShapeCreate()``.
    @_documentation(visibility: public)
    open func _capsuleShapeCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__capsule_shape_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__convex_polygon_shape_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_convex_polygon_shape_create")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/convexPolygonShapeCreate()``.
    @_documentation(visibility: public)
    open func _convexPolygonShapeCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__convex_polygon_shape_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__concave_polygon_shape_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_concave_polygon_shape_create")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/concavePolygonShapeCreate()``.
    @_documentation(visibility: public)
    open func _concavePolygonShapeCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__concave_polygon_shape_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__shape_set_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shape_set_data")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3175752987)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/shapeSetData(shape:data:)``.
    @_documentation(visibility: public)
    open func _shapeSetData(shape: RID, data: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shape.content) { pArg0 in
            withUnsafePointer(to: data.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__shape_set_data, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__shape_set_custom_solver_bias: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shape_set_custom_solver_bias")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1794382983)!
            }
            
        }
        
    }()
    
    /// Should set the custom solver bias for the given `shape`. It defines how much bodies are forced to separate on contact.
    /// 
    /// Overridable version of ``PhysicsServer2D``'s internal `shape_get_custom_solver_bias` method. Corresponds to ``Shape2D/customSolverBias``.
    /// 
    @_documentation(visibility: public)
    open func _shapeSetCustomSolverBias(shape: RID, bias: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shape.content) { pArg0 in
            withUnsafePointer(to: bias) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__shape_set_custom_solver_bias, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__shape_get_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shape_get_type")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1240598777)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/shapeGetType(shape:)``.
    @_documentation(visibility: public)
    open func _shapeGetType(shape: RID) -> PhysicsServer2D.ShapeType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: shape.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__shape_get_type, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return PhysicsServer2D.ShapeType (rawValue: _result)!
    }
    
    fileprivate static let method__shape_get_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shape_get_data")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4171304767)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/shapeGetData(shape:)``.
    @_documentation(visibility: public)
    open func _shapeGetData(shape: RID) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: shape.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__shape_get_data, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method__shape_get_custom_solver_bias: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shape_get_custom_solver_bias")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 866169185)!
            }
            
        }
        
    }()
    
    /// Should return the custom solver bias of the given `shape`, which defines how much bodies are forced to separate on contact when this shape is involved.
    /// 
    /// Overridable version of ``PhysicsServer2D``'s internal `shape_get_custom_solver_bias` method. Corresponds to ``Shape2D/customSolverBias``.
    /// 
    @_documentation(visibility: public)
    open func _shapeGetCustomSolverBias(shape: RID) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: shape.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__shape_get_custom_solver_bias, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__space_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_space_create")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/spaceCreate()``.
    @_documentation(visibility: public)
    open func _spaceCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__space_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__space_set_active: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_space_set_active")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1265174801)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/spaceSetActive(space:active:)``.
    @_documentation(visibility: public)
    open func _spaceSetActive(space: RID, active: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: space.content) { pArg0 in
            withUnsafePointer(to: active) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__space_set_active, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__space_is_active: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_space_is_active")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155700596)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/spaceIsActive(space:)``.
    @_documentation(visibility: public)
    open func _spaceIsActive(space: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: space.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__space_is_active, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__space_set_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_space_set_param")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 949194586)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/spaceSetParam(space:param:value:)``.
    @_documentation(visibility: public)
    open func _spaceSetParam(space: RID, param: PhysicsServer2D.SpaceParameter, value: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: space.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: value) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__space_set_param, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__space_get_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_space_get_param")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 874111783)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/spaceGetParam(space:param:)``.
    @_documentation(visibility: public)
    open func _spaceGetParam(space: RID, param: PhysicsServer2D.SpaceParameter) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: space.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__space_get_param, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__space_get_direct_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_space_get_direct_state")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3160173886)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/spaceGetDirectState(space:)``.
    @_documentation(visibility: public)
    open func _spaceGetDirectState(space: RID) -> PhysicsDirectSpaceState2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: space.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__space_get_direct_state, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__space_set_debug_contacts: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_space_set_debug_contacts")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// Used internally to allow the given `space` to store contact points, up to `maxContacts`. This is automatically set for the main ``World2D``'s space when ``SceneTree/debugCollisionsHint`` is `true`, or by checking "Visible Collision Shapes" in the editor. Only works in debug builds.
    /// 
    /// Overridable version of ``PhysicsServer2D``'s internal `space_set_debug_contacts` method.
    /// 
    @_documentation(visibility: public)
    open func _spaceSetDebugContacts(space: RID, maxContacts: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: space.content) { pArg0 in
            withUnsafePointer(to: maxContacts) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__space_set_debug_contacts, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__space_get_contacts: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_space_get_contacts")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2222557395)!
            }
            
        }
        
    }()
    
    /// Should return the positions of all contacts that have occurred during the last physics step in the given `space`. See also ``_spaceGetContactCount(space:)`` and ``_spaceSetDebugContacts(space:maxContacts:)``.
    /// 
    /// Overridable version of ``PhysicsServer2D``'s internal `space_get_contacts` method.
    /// 
    @_documentation(visibility: public)
    open func _spaceGetContacts(space: RID) -> PackedVector2Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedVector2Array = PackedVector2Array ()
        withUnsafePointer(to: space.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__space_get_contacts, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__space_get_contact_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_space_get_contact_count")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// Should return how many contacts have occurred during the last physics step in the given `space`. See also ``_spaceGetContacts(space:)`` and ``_spaceSetDebugContacts(space:maxContacts:)``.
    /// 
    /// Overridable version of ``PhysicsServer2D``'s internal `space_get_contact_count` method.
    /// 
    @_documentation(visibility: public)
    open func _spaceGetContactCount(space: RID) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: space.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__space_get_contact_count, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__area_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_create")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaCreate()``.
    @_documentation(visibility: public)
    open func _areaCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__area_set_space: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_set_space")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 395945892)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaSetSpace(area:space:)``.
    @_documentation(visibility: public)
    open func _areaSetSpace(area: RID, space: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: space.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_set_space, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_get_space: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_get_space")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3814569979)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaGetSpace(area:)``.
    @_documentation(visibility: public)
    open func _areaGetSpace(area: RID) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_get_space, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__area_add_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_add_shape")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 888317420)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaAddShape(area:shape:transform:disabled:)``.
    @_documentation(visibility: public)
    open func _areaAddShape(area: RID, shape: RID, transform: Transform2D, disabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: shape.content) { pArg1 in
                withUnsafePointer(to: transform) { pArg2 in
                    withUnsafePointer(to: disabled) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_add_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_set_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_set_shape")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2310537182)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaSetShape(area:shapeIdx:shape:)``.
    @_documentation(visibility: public)
    open func _areaSetShape(area: RID, shapeIdx: Int32, shape: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: shapeIdx) { pArg1 in
                withUnsafePointer(to: shape.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_set_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_set_shape_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_set_shape_transform")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 736082694)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaSetShapeTransform(area:shapeIdx:transform:)``.
    @_documentation(visibility: public)
    open func _areaSetShapeTransform(area: RID, shapeIdx: Int32, transform: Transform2D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: shapeIdx) { pArg1 in
                withUnsafePointer(to: transform) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_set_shape_transform, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_set_shape_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_set_shape_disabled")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2658558584)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaSetShapeDisabled(area:shapeIdx:disabled:)``.
    @_documentation(visibility: public)
    open func _areaSetShapeDisabled(area: RID, shapeIdx: Int32, disabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: shapeIdx) { pArg1 in
                withUnsafePointer(to: disabled) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_set_shape_disabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_get_shape_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_get_shape_count")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaGetShapeCount(area:)``.
    @_documentation(visibility: public)
    open func _areaGetShapeCount(area: RID) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_get_shape_count, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__area_get_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_get_shape")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1066463050)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaGetShape(area:shapeIdx:)``.
    @_documentation(visibility: public)
    open func _areaGetShape(area: RID, shapeIdx: Int32) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: shapeIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_get_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__area_get_shape_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_get_shape_transform")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1324854622)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaGetShapeTransform(area:shapeIdx:)``.
    @_documentation(visibility: public)
    open func _areaGetShapeTransform(area: RID, shapeIdx: Int32) -> Transform2D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform2D = Transform2D ()
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: shapeIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_get_shape_transform, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__area_remove_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_remove_shape")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaRemoveShape(area:shapeIdx:)``.
    @_documentation(visibility: public)
    open func _areaRemoveShape(area: RID, shapeIdx: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: shapeIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_remove_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_clear_shapes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_clear_shapes")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaClearShapes(area:)``.
    @_documentation(visibility: public)
    open func _areaClearShapes(area: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_clear_shapes, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_attach_object_instance_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_attach_object_instance_id")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaAttachObjectInstanceId(area:id:)``.
    @_documentation(visibility: public)
    open func _areaAttachObjectInstanceId(area: RID, id: UInt) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: id) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_attach_object_instance_id, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_get_object_instance_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_get_object_instance_id")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaGetObjectInstanceId(area:)``.
    @_documentation(visibility: public)
    open func _areaGetObjectInstanceId(area: RID) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_get_object_instance_id, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__area_attach_canvas_instance_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_attach_canvas_instance_id")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaAttachCanvasInstanceId(area:id:)``.
    @_documentation(visibility: public)
    open func _areaAttachCanvasInstanceId(area: RID, id: UInt) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: id) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_attach_canvas_instance_id, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_get_canvas_instance_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_get_canvas_instance_id")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaGetCanvasInstanceId(area:)``.
    @_documentation(visibility: public)
    open func _areaGetCanvasInstanceId(area: RID) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_get_canvas_instance_id, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__area_set_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_set_param")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1257146028)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaSetParam(area:param:value:)``.
    @_documentation(visibility: public)
    open func _areaSetParam(area: RID, param: PhysicsServer2D.AreaParameter, value: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: value.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_set_param, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_set_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_set_transform")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1246044741)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaSetTransform(area:transform:)``.
    @_documentation(visibility: public)
    open func _areaSetTransform(area: RID, transform: Transform2D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: transform) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_set_transform, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_get_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_get_param")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3047435120)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaGetParam(area:param:)``.
    @_documentation(visibility: public)
    open func _areaGetParam(area: RID, param: PhysicsServer2D.AreaParameter) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_get_param, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method__area_get_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_get_transform")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 213527486)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaGetTransform(area:)``.
    @_documentation(visibility: public)
    open func _areaGetTransform(area: RID) -> Transform2D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform2D = Transform2D ()
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_get_transform, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__area_set_collision_layer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_set_collision_layer")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaSetCollisionLayer(area:layer:)``.
    @_documentation(visibility: public)
    open func _areaSetCollisionLayer(area: RID, layer: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: layer) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_set_collision_layer, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_get_collision_layer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_get_collision_layer")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaGetCollisionLayer(area:)``.
    @_documentation(visibility: public)
    open func _areaGetCollisionLayer(area: RID) -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_get_collision_layer, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__area_set_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_set_collision_mask")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaSetCollisionMask(area:mask:)``.
    @_documentation(visibility: public)
    open func _areaSetCollisionMask(area: RID, mask: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: mask) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_set_collision_mask, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_get_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_get_collision_mask")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaGetCollisionMask(area:)``.
    @_documentation(visibility: public)
    open func _areaGetCollisionMask(area: RID) -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_get_collision_mask, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__area_set_monitorable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_set_monitorable")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1265174801)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaSetMonitorable(area:monitorable:)``.
    @_documentation(visibility: public)
    open func _areaSetMonitorable(area: RID, monitorable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: monitorable) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_set_monitorable, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_set_pickable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_set_pickable")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1265174801)!
            }
            
        }
        
    }()
    
    /// If set to `true`, allows the area with the given ``RID`` to detect mouse inputs when the mouse cursor is hovering on it.
    /// 
    /// Overridable version of ``PhysicsServer2D``'s internal `area_set_pickable` method. Corresponds to ``CollisionObject2D/inputPickable``.
    /// 
    @_documentation(visibility: public)
    open func _areaSetPickable(area: RID, pickable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: pickable) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_set_pickable, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_set_monitor_callback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_set_monitor_callback")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3379118538)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaSetMonitorCallback(area:callback:)``.
    @_documentation(visibility: public)
    open func _areaSetMonitorCallback(area: RID, callback: Callable) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: callback.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_set_monitor_callback, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__area_set_area_monitor_callback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_area_set_area_monitor_callback")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3379118538)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/areaSetAreaMonitorCallback(area:callback:)``.
    @_documentation(visibility: public)
    open func _areaSetAreaMonitorCallback(area: RID, callback: Callable) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: area.content) { pArg0 in
            withUnsafePointer(to: callback.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__area_set_area_monitor_callback, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_create")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyCreate()``.
    @_documentation(visibility: public)
    open func _bodyCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__body_set_space: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_space")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 395945892)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodySetSpace(body:space:)``.
    @_documentation(visibility: public)
    open func _bodySetSpace(body: RID, space: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: space.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_set_space, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_space: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_space")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3814569979)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyGetSpace(body:)``.
    @_documentation(visibility: public)
    open func _bodyGetSpace(body: RID) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_get_space, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_set_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_mode")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1658067650)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodySetMode(body:mode:)``.
    @_documentation(visibility: public)
    open func _bodySetMode(body: RID, mode: PhysicsServer2D.BodyMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: mode.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_set_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_mode")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3261702585)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyGetMode(body:)``.
    @_documentation(visibility: public)
    open func _bodyGetMode(body: RID) -> PhysicsServer2D.BodyMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_get_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return PhysicsServer2D.BodyMode (rawValue: _result)!
    }
    
    fileprivate static let method__body_add_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_add_shape")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 888317420)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyAddShape(body:shape:transform:disabled:)``.
    @_documentation(visibility: public)
    open func _bodyAddShape(body: RID, shape: RID, transform: Transform2D, disabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: shape.content) { pArg1 in
                withUnsafePointer(to: transform) { pArg2 in
                    withUnsafePointer(to: disabled) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_add_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_set_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_shape")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2310537182)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodySetShape(body:shapeIdx:shape:)``.
    @_documentation(visibility: public)
    open func _bodySetShape(body: RID, shapeIdx: Int32, shape: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: shapeIdx) { pArg1 in
                withUnsafePointer(to: shape.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_set_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_set_shape_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_shape_transform")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 736082694)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodySetShapeTransform(body:shapeIdx:transform:)``.
    @_documentation(visibility: public)
    open func _bodySetShapeTransform(body: RID, shapeIdx: Int32, transform: Transform2D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: shapeIdx) { pArg1 in
                withUnsafePointer(to: transform) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_set_shape_transform, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_shape_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_shape_count")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyGetShapeCount(body:)``.
    @_documentation(visibility: public)
    open func _bodyGetShapeCount(body: RID) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_get_shape_count, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_get_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_shape")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1066463050)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyGetShape(body:shapeIdx:)``.
    @_documentation(visibility: public)
    open func _bodyGetShape(body: RID, shapeIdx: Int32) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: shapeIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_get_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_get_shape_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_shape_transform")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1324854622)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyGetShapeTransform(body:shapeIdx:)``.
    @_documentation(visibility: public)
    open func _bodyGetShapeTransform(body: RID, shapeIdx: Int32) -> Transform2D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform2D = Transform2D ()
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: shapeIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_get_shape_transform, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_set_shape_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_shape_disabled")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2658558584)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodySetShapeDisabled(body:shapeIdx:disabled:)``.
    @_documentation(visibility: public)
    open func _bodySetShapeDisabled(body: RID, shapeIdx: Int32, disabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: shapeIdx) { pArg1 in
                withUnsafePointer(to: disabled) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_set_shape_disabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_set_shape_as_one_way_collision: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_shape_as_one_way_collision")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2556489974)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodySetShapeAsOneWayCollision(body:shapeIdx:enable:margin:)``.
    @_documentation(visibility: public)
    open func _bodySetShapeAsOneWayCollision(body: RID, shapeIdx: Int32, enable: Bool, margin: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: shapeIdx) { pArg1 in
                withUnsafePointer(to: enable) { pArg2 in
                    withUnsafePointer(to: margin) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_set_shape_as_one_way_collision, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_remove_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_remove_shape")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyRemoveShape(body:shapeIdx:)``.
    @_documentation(visibility: public)
    open func _bodyRemoveShape(body: RID, shapeIdx: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: shapeIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_remove_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_clear_shapes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_clear_shapes")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyClearShapes(body:)``.
    @_documentation(visibility: public)
    open func _bodyClearShapes(body: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_clear_shapes, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_attach_object_instance_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_attach_object_instance_id")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyAttachObjectInstanceId(body:id:)``.
    @_documentation(visibility: public)
    open func _bodyAttachObjectInstanceId(body: RID, id: UInt) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: id) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_attach_object_instance_id, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_object_instance_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_object_instance_id")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyGetObjectInstanceId(body:)``.
    @_documentation(visibility: public)
    open func _bodyGetObjectInstanceId(body: RID) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_get_object_instance_id, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_attach_canvas_instance_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_attach_canvas_instance_id")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyAttachCanvasInstanceId(body:id:)``.
    @_documentation(visibility: public)
    open func _bodyAttachCanvasInstanceId(body: RID, id: UInt) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: id) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_attach_canvas_instance_id, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_canvas_instance_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_canvas_instance_id")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyGetCanvasInstanceId(body:)``.
    @_documentation(visibility: public)
    open func _bodyGetCanvasInstanceId(body: RID) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_get_canvas_instance_id, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_set_continuous_collision_detection_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_continuous_collision_detection_mode")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1882257015)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodySetContinuousCollisionDetectionMode(body:mode:)``.
    @_documentation(visibility: public)
    open func _bodySetContinuousCollisionDetectionMode(body: RID, mode: PhysicsServer2D.CCDMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: mode.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_set_continuous_collision_detection_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_continuous_collision_detection_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_continuous_collision_detection_mode")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2661282217)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyGetContinuousCollisionDetectionMode(body:)``.
    @_documentation(visibility: public)
    open func _bodyGetContinuousCollisionDetectionMode(body: RID) -> PhysicsServer2D.CCDMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_get_continuous_collision_detection_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return PhysicsServer2D.CCDMode (rawValue: _result)!
    }
    
    fileprivate static let method__body_set_collision_layer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_collision_layer")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodySetCollisionLayer(body:layer:)``.
    @_documentation(visibility: public)
    open func _bodySetCollisionLayer(body: RID, layer: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: layer) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_set_collision_layer, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_collision_layer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_collision_layer")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyGetCollisionLayer(body:)``.
    @_documentation(visibility: public)
    open func _bodyGetCollisionLayer(body: RID) -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_get_collision_layer, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_set_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_collision_mask")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodySetCollisionMask(body:mask:)``.
    @_documentation(visibility: public)
    open func _bodySetCollisionMask(body: RID, mask: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: mask) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_set_collision_mask, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_collision_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_collision_mask")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyGetCollisionMask(body:)``.
    @_documentation(visibility: public)
    open func _bodyGetCollisionMask(body: RID) -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_get_collision_mask, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_set_collision_priority: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_collision_priority")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1794382983)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodySetCollisionPriority(body:priority:)``.
    @_documentation(visibility: public)
    open func _bodySetCollisionPriority(body: RID, priority: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: priority) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_set_collision_priority, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_collision_priority: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_collision_priority")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 866169185)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyGetCollisionPriority(body:)``.
    @_documentation(visibility: public)
    open func _bodyGetCollisionPriority(body: RID) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_get_collision_priority, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_set_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_param")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2715630609)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodySetParam(body:param:value:)``.
    @_documentation(visibility: public)
    open func _bodySetParam(body: RID, param: PhysicsServer2D.BodyParameter, value: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: value.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_set_param, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_param")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3208033526)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyGetParam(body:param:)``.
    @_documentation(visibility: public)
    open func _bodyGetParam(body: RID, param: PhysicsServer2D.BodyParameter) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_get_param, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method__body_reset_mass_properties: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_reset_mass_properties")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyResetMassProperties(body:)``.
    @_documentation(visibility: public)
    open func _bodyResetMassProperties(body: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_reset_mass_properties, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_set_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_state")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1706355209)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodySetState(body:state:value:)``.
    @_documentation(visibility: public)
    open func _bodySetState(body: RID, state: PhysicsServer2D.BodyState, value: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: state.rawValue) { pArg1 in
                withUnsafePointer(to: value.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_set_state, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_state")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4036367961)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyGetState(body:state:)``.
    @_documentation(visibility: public)
    open func _bodyGetState(body: RID, state: PhysicsServer2D.BodyState) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: state.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_get_state, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method__body_apply_central_impulse: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_apply_central_impulse")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3201125042)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyApplyCentralImpulse(body:impulse:)``.
    @_documentation(visibility: public)
    open func _bodyApplyCentralImpulse(body: RID, impulse: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: impulse) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_apply_central_impulse, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_apply_torque_impulse: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_apply_torque_impulse")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1794382983)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyApplyTorqueImpulse(body:impulse:)``.
    @_documentation(visibility: public)
    open func _bodyApplyTorqueImpulse(body: RID, impulse: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: impulse) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_apply_torque_impulse, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_apply_impulse: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_apply_impulse")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2762675110)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyApplyImpulse(body:impulse:position:)``.
    @_documentation(visibility: public)
    open func _bodyApplyImpulse(body: RID, impulse: Vector2, position: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: impulse) { pArg1 in
                withUnsafePointer(to: position) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_apply_impulse, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_apply_central_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_apply_central_force")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3201125042)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyApplyCentralForce(body:force:)``.
    @_documentation(visibility: public)
    open func _bodyApplyCentralForce(body: RID, force: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: force) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_apply_central_force, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_apply_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_apply_force")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2762675110)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyApplyForce(body:force:position:)``.
    @_documentation(visibility: public)
    open func _bodyApplyForce(body: RID, force: Vector2, position: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: force) { pArg1 in
                withUnsafePointer(to: position) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_apply_force, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_apply_torque: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_apply_torque")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1794382983)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyApplyTorque(body:torque:)``.
    @_documentation(visibility: public)
    open func _bodyApplyTorque(body: RID, torque: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: torque) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_apply_torque, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_add_constant_central_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_add_constant_central_force")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3201125042)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyAddConstantCentralForce(body:force:)``.
    @_documentation(visibility: public)
    open func _bodyAddConstantCentralForce(body: RID, force: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: force) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_add_constant_central_force, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_add_constant_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_add_constant_force")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2762675110)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyAddConstantForce(body:force:position:)``.
    @_documentation(visibility: public)
    open func _bodyAddConstantForce(body: RID, force: Vector2, position: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: force) { pArg1 in
                withUnsafePointer(to: position) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_add_constant_force, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_add_constant_torque: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_add_constant_torque")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1794382983)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyAddConstantTorque(body:torque:)``.
    @_documentation(visibility: public)
    open func _bodyAddConstantTorque(body: RID, torque: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: torque) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_add_constant_torque, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_set_constant_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_constant_force")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3201125042)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodySetConstantForce(body:force:)``.
    @_documentation(visibility: public)
    open func _bodySetConstantForce(body: RID, force: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: force) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_set_constant_force, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_constant_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_constant_force")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2440833711)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyGetConstantForce(body:)``.
    @_documentation(visibility: public)
    open func _bodyGetConstantForce(body: RID) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_get_constant_force, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_set_constant_torque: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_constant_torque")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1794382983)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodySetConstantTorque(body:torque:)``.
    @_documentation(visibility: public)
    open func _bodySetConstantTorque(body: RID, torque: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: torque) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_set_constant_torque, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_constant_torque: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_constant_torque")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 866169185)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyGetConstantTorque(body:)``.
    @_documentation(visibility: public)
    open func _bodyGetConstantTorque(body: RID) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_get_constant_torque, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_set_axis_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_axis_velocity")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3201125042)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodySetAxisVelocity(body:axisVelocity:)``.
    @_documentation(visibility: public)
    open func _bodySetAxisVelocity(body: RID, axisVelocity: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: axisVelocity) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_set_axis_velocity, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_add_collision_exception: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_add_collision_exception")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 395945892)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyAddCollisionException(body:exceptedBody:)``.
    @_documentation(visibility: public)
    open func _bodyAddCollisionException(body: RID, exceptedBody: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: exceptedBody.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_add_collision_exception, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_remove_collision_exception: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_remove_collision_exception")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 395945892)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyRemoveCollisionException(body:exceptedBody:)``.
    @_documentation(visibility: public)
    open func _bodyRemoveCollisionException(body: RID, exceptedBody: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: exceptedBody.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_remove_collision_exception, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_collision_exceptions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_collision_exceptions")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2684255073)!
            }
            
        }
        
    }()
    
    /// Returns the ``RID``s of all bodies added as collision exceptions for the given `body`. See also ``_bodyAddCollisionException(body:exceptedBody:)`` and ``_bodyRemoveCollisionException(body:exceptedBody:)``.
    /// 
    /// Overridable version of ``PhysicsServer2D``'s internal `body_get_collision_exceptions` method. Corresponds to ``PhysicsBody2D/getCollisionExceptions()``.
    /// 
    @_documentation(visibility: public)
    open func _bodyGetCollisionExceptions(body: RID) -> TypedArray<RID> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_get_collision_exceptions, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return TypedArray<RID>(takingOver: _result)
    }
    
    fileprivate static let method__body_set_max_contacts_reported: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_max_contacts_reported")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodySetMaxContactsReported(body:amount:)``.
    @_documentation(visibility: public)
    open func _bodySetMaxContactsReported(body: RID, amount: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: amount) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_set_max_contacts_reported, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_max_contacts_reported: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_max_contacts_reported")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyGetMaxContactsReported(body:)``.
    @_documentation(visibility: public)
    open func _bodyGetMaxContactsReported(body: RID) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_get_max_contacts_reported, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_set_contacts_reported_depth_threshold: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_contacts_reported_depth_threshold")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1794382983)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D``'s internal `body_set_contacts_reported_depth_threshold` method.
    /// 
    /// > Note: This method is currently unused by Godot's default physics implementation.
    /// 
    @_documentation(visibility: public)
    open func _bodySetContactsReportedDepthThreshold(body: RID, threshold: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: threshold) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_set_contacts_reported_depth_threshold, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_contacts_reported_depth_threshold: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_contacts_reported_depth_threshold")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 866169185)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D``'s internal `body_get_contacts_reported_depth_threshold` method.
    /// 
    /// > Note: This method is currently unused by Godot's default physics implementation.
    /// 
    @_documentation(visibility: public)
    open func _bodyGetContactsReportedDepthThreshold(body: RID) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_get_contacts_reported_depth_threshold, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_set_omit_force_integration: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_omit_force_integration")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1265174801)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodySetOmitForceIntegration(body:enable:)``.
    @_documentation(visibility: public)
    open func _bodySetOmitForceIntegration(body: RID, enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: enable) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_set_omit_force_integration, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_is_omitting_force_integration: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_is_omitting_force_integration")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155700596)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyIsOmittingForceIntegration(body:)``.
    @_documentation(visibility: public)
    open func _bodyIsOmittingForceIntegration(body: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_is_omitting_force_integration, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__body_set_state_sync_callback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_state_sync_callback")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3379118538)!
            }
            
        }
        
    }()
    
    /// Assigns the `body` to call the given `callable` during the synchronization phase of the loop, before ``_step(_:)`` is called. See also ``_sync()``.
    /// 
    /// Overridable version of ``PhysicsServer2D/bodySetStateSyncCallback(body:callable:)``.
    /// 
    @_documentation(visibility: public)
    open func _bodySetStateSyncCallback(body: RID, callable: Callable) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: callable.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_set_state_sync_callback, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_set_force_integration_callback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_force_integration_callback")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2828036238)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodySetForceIntegrationCallback(body:callable:userdata:)``.
    @_documentation(visibility: public)
    open func _bodySetForceIntegrationCallback(body: RID, callable: Callable, userdata: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: callable.content) { pArg1 in
                withUnsafePointer(to: userdata.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_set_force_integration_callback, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_set_pickable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_set_pickable")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1265174801)!
            }
            
        }
        
    }()
    
    /// If set to `true`, allows the body with the given ``RID`` to detect mouse inputs when the mouse cursor is hovering on it.
    /// 
    /// Overridable version of ``PhysicsServer2D``'s internal `body_set_pickable` method. Corresponds to ``CollisionObject2D/inputPickable``.
    /// 
    @_documentation(visibility: public)
    open func _bodySetPickable(body: RID, pickable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: pickable) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_set_pickable, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__body_get_direct_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_body_get_direct_state")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1191931871)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/bodyGetDirectState(body:)``.
    @_documentation(visibility: public)
    open func _bodyGetDirectState(body: RID) -> PhysicsDirectBodyState2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__body_get_direct_state, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__joint_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_joint_create")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/jointCreate()``.
    @_documentation(visibility: public)
    open func _jointCreate() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__joint_create, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__joint_clear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_joint_clear")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/jointClear(joint:)``.
    @_documentation(visibility: public)
    open func _jointClear(joint: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__joint_clear, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__joint_set_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_joint_set_param")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3972556514)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/jointSetParam(joint:param:value:)``.
    @_documentation(visibility: public)
    open func _jointSetParam(joint: RID, param: PhysicsServer2D.JointParam, value: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: value) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__joint_set_param, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__joint_get_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_joint_get_param")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4016448949)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/jointGetParam(joint:param:)``.
    @_documentation(visibility: public)
    open func _jointGetParam(joint: RID, param: PhysicsServer2D.JointParam) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__joint_get_param, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__joint_disable_collisions_between_bodies: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_joint_disable_collisions_between_bodies")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1265174801)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/jointDisableCollisionsBetweenBodies(joint:disable:)``.
    @_documentation(visibility: public)
    open func _jointDisableCollisionsBetweenBodies(joint: RID, disable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: disable) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__joint_disable_collisions_between_bodies, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__joint_is_disabled_collisions_between_bodies: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_joint_is_disabled_collisions_between_bodies")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155700596)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/jointIsDisabledCollisionsBetweenBodies(joint:)``.
    @_documentation(visibility: public)
    open func _jointIsDisabledCollisionsBetweenBodies(joint: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__joint_is_disabled_collisions_between_bodies, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__joint_make_pin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_joint_make_pin")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2607799521)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/jointMakePin(joint:anchor:bodyA:bodyB:)``.
    @_documentation(visibility: public)
    open func _jointMakePin(joint: RID, anchor: Vector2, bodyA: RID, bodyB: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: anchor) { pArg1 in
                withUnsafePointer(to: bodyA.content) { pArg2 in
                    withUnsafePointer(to: bodyB.content) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__joint_make_pin, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__joint_make_groove: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_joint_make_groove")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 438649616)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/jointMakeGroove(joint:groove1A:groove2A:anchorB:bodyA:bodyB:)``.
    @_documentation(visibility: public)
    open func _jointMakeGroove(joint: RID, aGroove1: Vector2, aGroove2: Vector2, bAnchor: Vector2, bodyA: RID, bodyB: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: aGroove1) { pArg1 in
                withUnsafePointer(to: aGroove2) { pArg2 in
                    withUnsafePointer(to: bAnchor) { pArg3 in
                        withUnsafePointer(to: bodyA.content) { pArg4 in
                            withUnsafePointer(to: bodyB.content) { pArg5 in
                                withUnsafePointer(to: UnsafeRawPointersN6(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5)) { pArgs in
                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 6) { pArgs in
                                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__joint_make_groove, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__joint_make_damped_spring: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_joint_make_damped_spring")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1276049561)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/jointMakeDampedSpring(joint:anchorA:anchorB:bodyA:bodyB:)``.
    @_documentation(visibility: public)
    open func _jointMakeDampedSpring(joint: RID, anchorA: Vector2, anchorB: Vector2, bodyA: RID, bodyB: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: anchorA) { pArg1 in
                withUnsafePointer(to: anchorB) { pArg2 in
                    withUnsafePointer(to: bodyA.content) { pArg3 in
                        withUnsafePointer(to: bodyB.content) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__joint_make_damped_spring, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__pin_joint_set_flag: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_pin_joint_set_flag")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3520002352)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/pinJointSetFlag(joint:flag:enabled:)``.
    @_documentation(visibility: public)
    open func _pinJointSetFlag(joint: RID, flag: PhysicsServer2D.PinJointFlag, enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: flag.rawValue) { pArg1 in
                withUnsafePointer(to: enabled) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__pin_joint_set_flag, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__pin_joint_get_flag: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_pin_joint_get_flag")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2647867364)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/pinJointGetFlag(joint:flag:)``.
    @_documentation(visibility: public)
    open func _pinJointGetFlag(joint: RID, flag: PhysicsServer2D.PinJointFlag) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: flag.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__pin_joint_get_flag, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__pin_joint_set_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_pin_joint_set_param")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 550574241)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/pinJointSetParam(joint:param:value:)``.
    @_documentation(visibility: public)
    open func _pinJointSetParam(joint: RID, param: PhysicsServer2D.PinJointParam, value: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: value) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__pin_joint_set_param, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__pin_joint_get_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_pin_joint_get_param")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 348281383)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/pinJointGetParam(joint:param:)``.
    @_documentation(visibility: public)
    open func _pinJointGetParam(joint: RID, param: PhysicsServer2D.PinJointParam) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__pin_joint_get_param, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__damped_spring_joint_set_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_damped_spring_joint_set_param")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 220564071)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/dampedSpringJointSetParam(joint:param:value:)``.
    @_documentation(visibility: public)
    open func _dampedSpringJointSetParam(joint: RID, param: PhysicsServer2D.DampedSpringParam, value: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: value) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__damped_spring_joint_set_param, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__damped_spring_joint_get_param: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_damped_spring_joint_get_param")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2075871277)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/dampedSpringJointGetParam(joint:param:)``.
    @_documentation(visibility: public)
    open func _dampedSpringJointGetParam(joint: RID, param: PhysicsServer2D.DampedSpringParam) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: param.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__damped_spring_joint_get_param, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__joint_get_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_joint_get_type")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4262502231)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/jointGetType(joint:)``.
    @_documentation(visibility: public)
    open func _jointGetType(joint: RID) -> PhysicsServer2D.JointType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: joint.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__joint_get_type, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return PhysicsServer2D.JointType (rawValue: _result)!
    }
    
    fileprivate static let method__free_rid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_free_rid")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/freeRid(_:)``.
    @_documentation(visibility: public)
    open func _freeRid(_ rid: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: rid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__free_rid, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__set_active: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_active")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/setActive(_:)``.
    @_documentation(visibility: public)
    open func _setActive(_ active: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: active) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__set_active, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__init: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_init")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called when the main loop is initialized and creates a new instance of this physics server. See also ``MainLoop/_initialize()`` and ``_finish()``.
    /// 
    /// Overridable version of ``PhysicsServer2D``'s internal `init` method.
    /// 
    @_documentation(visibility: public)
    open func _init() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__init, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__step: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_step")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Called every physics step to process the physics simulation. `step` is the time elapsed since the last physics step, in seconds. It is usually the same as ``Node/getPhysicsProcessDeltaTime()``.
    /// 
    /// Overridable version of ``PhysicsServer2D``'s internal [code skip-lint]step` method.
    /// 
    @_documentation(visibility: public)
    open func _step(_ step: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: step) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__step, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__sync: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_sync")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called to indicate that the physics server is synchronizing and cannot access physics states if running on a separate thread. See also ``_endSync()``.
    /// 
    /// Overridable version of ``PhysicsServer2D``'s internal `sync` method.
    /// 
    @_documentation(visibility: public)
    open func _sync() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__sync, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__flush_queries: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_flush_queries")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called every physics step before ``_step(_:)`` to process all remaining queries.
    /// 
    /// Overridable version of ``PhysicsServer2D``'s internal `flush_queries` method.
    /// 
    @_documentation(visibility: public)
    open func _flushQueries() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__flush_queries, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__end_sync: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_end_sync")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called to indicate that the physics server has stopped synchronizing. It is in the loop's iteration/physics phase, and can access physics objects even if running on a separate thread. See also ``_sync()``.
    /// 
    /// Overridable version of ``PhysicsServer2D``'s internal `end_sync` method.
    /// 
    @_documentation(visibility: public)
    open func _endSync() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__end_sync, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__finish: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_finish")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called when the main loop finalizes to shut down the physics server. See also ``MainLoop/_finalize()`` and ``_init()``.
    /// 
    /// Overridable version of ``PhysicsServer2D``'s internal `finish` method.
    /// 
    @_documentation(visibility: public)
    open func _finish() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__finish, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__is_flushing_queries: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_flushing_queries")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Overridable method that should return `true` when the physics server is processing queries. See also ``_flushQueries()``.
    /// 
    /// Overridable version of ``PhysicsServer2D``'s internal `is_flushing_queries` method.
    /// 
    @_documentation(visibility: public)
    open func _isFlushingQueries() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__is_flushing_queries, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_process_info: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_process_info")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 576496006)!
            }
            
        }
        
    }()
    
    /// Overridable version of ``PhysicsServer2D/getProcessInfo(_:)``.
    @_documentation(visibility: public)
    open func _getProcessInfo(_ processInfo: PhysicsServer2D.ProcessInfo) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: processInfo.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method__get_process_info, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_body_test_motion_is_excluding_body: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("body_test_motion_is_excluding_body")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155700596)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the body with the given ``RID`` is being excluded from ``_bodyTestMotion(body:from:motion:margin:collideSeparationRay:recoveryAsCollision:result:)``. See also ``Object/getInstanceId()``.
    public final func bodyTestMotionIsExcludingBody(_ body: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method_body_test_motion_is_excluding_body, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_body_test_motion_is_excluding_object: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("body_test_motion_is_excluding_object")
        return withUnsafePointer(to: &PhysicsServer2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the object with the given instance ID is being excluded from ``_bodyTestMotion(body:from:motion:margin:collideSeparationRay:recoveryAsCollision:result:)``. See also ``Object/getInstanceId()``.
    public final func bodyTestMotionIsExcludingObject(_ object: UInt) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: object) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer2DExtension.method_body_test_motion_is_excluding_object, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_area_add_shape":
                return _PhysicsServer2DExtension_proxy_area_add_shape
            case "_area_attach_canvas_instance_id":
                return _PhysicsServer2DExtension_proxy_area_attach_canvas_instance_id
            case "_area_attach_object_instance_id":
                return _PhysicsServer2DExtension_proxy_area_attach_object_instance_id
            case "_area_clear_shapes":
                return _PhysicsServer2DExtension_proxy_area_clear_shapes
            case "_area_create":
                return _PhysicsServer2DExtension_proxy_area_create
            case "_area_get_canvas_instance_id":
                return _PhysicsServer2DExtension_proxy_area_get_canvas_instance_id
            case "_area_get_collision_layer":
                return _PhysicsServer2DExtension_proxy_area_get_collision_layer
            case "_area_get_collision_mask":
                return _PhysicsServer2DExtension_proxy_area_get_collision_mask
            case "_area_get_object_instance_id":
                return _PhysicsServer2DExtension_proxy_area_get_object_instance_id
            case "_area_get_param":
                return _PhysicsServer2DExtension_proxy_area_get_param
            case "_area_get_shape":
                return _PhysicsServer2DExtension_proxy_area_get_shape
            case "_area_get_shape_count":
                return _PhysicsServer2DExtension_proxy_area_get_shape_count
            case "_area_get_shape_transform":
                return _PhysicsServer2DExtension_proxy_area_get_shape_transform
            case "_area_get_space":
                return _PhysicsServer2DExtension_proxy_area_get_space
            case "_area_get_transform":
                return _PhysicsServer2DExtension_proxy_area_get_transform
            case "_area_remove_shape":
                return _PhysicsServer2DExtension_proxy_area_remove_shape
            case "_area_set_area_monitor_callback":
                return _PhysicsServer2DExtension_proxy_area_set_area_monitor_callback
            case "_area_set_collision_layer":
                return _PhysicsServer2DExtension_proxy_area_set_collision_layer
            case "_area_set_collision_mask":
                return _PhysicsServer2DExtension_proxy_area_set_collision_mask
            case "_area_set_monitor_callback":
                return _PhysicsServer2DExtension_proxy_area_set_monitor_callback
            case "_area_set_monitorable":
                return _PhysicsServer2DExtension_proxy_area_set_monitorable
            case "_area_set_param":
                return _PhysicsServer2DExtension_proxy_area_set_param
            case "_area_set_pickable":
                return _PhysicsServer2DExtension_proxy_area_set_pickable
            case "_area_set_shape":
                return _PhysicsServer2DExtension_proxy_area_set_shape
            case "_area_set_shape_disabled":
                return _PhysicsServer2DExtension_proxy_area_set_shape_disabled
            case "_area_set_shape_transform":
                return _PhysicsServer2DExtension_proxy_area_set_shape_transform
            case "_area_set_space":
                return _PhysicsServer2DExtension_proxy_area_set_space
            case "_area_set_transform":
                return _PhysicsServer2DExtension_proxy_area_set_transform
            case "_body_add_collision_exception":
                return _PhysicsServer2DExtension_proxy_body_add_collision_exception
            case "_body_add_constant_central_force":
                return _PhysicsServer2DExtension_proxy_body_add_constant_central_force
            case "_body_add_constant_force":
                return _PhysicsServer2DExtension_proxy_body_add_constant_force
            case "_body_add_constant_torque":
                return _PhysicsServer2DExtension_proxy_body_add_constant_torque
            case "_body_add_shape":
                return _PhysicsServer2DExtension_proxy_body_add_shape
            case "_body_apply_central_force":
                return _PhysicsServer2DExtension_proxy_body_apply_central_force
            case "_body_apply_central_impulse":
                return _PhysicsServer2DExtension_proxy_body_apply_central_impulse
            case "_body_apply_force":
                return _PhysicsServer2DExtension_proxy_body_apply_force
            case "_body_apply_impulse":
                return _PhysicsServer2DExtension_proxy_body_apply_impulse
            case "_body_apply_torque":
                return _PhysicsServer2DExtension_proxy_body_apply_torque
            case "_body_apply_torque_impulse":
                return _PhysicsServer2DExtension_proxy_body_apply_torque_impulse
            case "_body_attach_canvas_instance_id":
                return _PhysicsServer2DExtension_proxy_body_attach_canvas_instance_id
            case "_body_attach_object_instance_id":
                return _PhysicsServer2DExtension_proxy_body_attach_object_instance_id
            case "_body_clear_shapes":
                return _PhysicsServer2DExtension_proxy_body_clear_shapes
            case "_body_create":
                return _PhysicsServer2DExtension_proxy_body_create
            case "_body_get_canvas_instance_id":
                return _PhysicsServer2DExtension_proxy_body_get_canvas_instance_id
            case "_body_get_collision_exceptions":
                return _PhysicsServer2DExtension_proxy_body_get_collision_exceptions
            case "_body_get_collision_layer":
                return _PhysicsServer2DExtension_proxy_body_get_collision_layer
            case "_body_get_collision_mask":
                return _PhysicsServer2DExtension_proxy_body_get_collision_mask
            case "_body_get_collision_priority":
                return _PhysicsServer2DExtension_proxy_body_get_collision_priority
            case "_body_get_constant_force":
                return _PhysicsServer2DExtension_proxy_body_get_constant_force
            case "_body_get_constant_torque":
                return _PhysicsServer2DExtension_proxy_body_get_constant_torque
            case "_body_get_contacts_reported_depth_threshold":
                return _PhysicsServer2DExtension_proxy_body_get_contacts_reported_depth_threshold
            case "_body_get_continuous_collision_detection_mode":
                return _PhysicsServer2DExtension_proxy_body_get_continuous_collision_detection_mode
            case "_body_get_direct_state":
                return _PhysicsServer2DExtension_proxy_body_get_direct_state
            case "_body_get_max_contacts_reported":
                return _PhysicsServer2DExtension_proxy_body_get_max_contacts_reported
            case "_body_get_mode":
                return _PhysicsServer2DExtension_proxy_body_get_mode
            case "_body_get_object_instance_id":
                return _PhysicsServer2DExtension_proxy_body_get_object_instance_id
            case "_body_get_param":
                return _PhysicsServer2DExtension_proxy_body_get_param
            case "_body_get_shape":
                return _PhysicsServer2DExtension_proxy_body_get_shape
            case "_body_get_shape_count":
                return _PhysicsServer2DExtension_proxy_body_get_shape_count
            case "_body_get_shape_transform":
                return _PhysicsServer2DExtension_proxy_body_get_shape_transform
            case "_body_get_space":
                return _PhysicsServer2DExtension_proxy_body_get_space
            case "_body_get_state":
                return _PhysicsServer2DExtension_proxy_body_get_state
            case "_body_is_omitting_force_integration":
                return _PhysicsServer2DExtension_proxy_body_is_omitting_force_integration
            case "_body_remove_collision_exception":
                return _PhysicsServer2DExtension_proxy_body_remove_collision_exception
            case "_body_remove_shape":
                return _PhysicsServer2DExtension_proxy_body_remove_shape
            case "_body_reset_mass_properties":
                return _PhysicsServer2DExtension_proxy_body_reset_mass_properties
            case "_body_set_axis_velocity":
                return _PhysicsServer2DExtension_proxy_body_set_axis_velocity
            case "_body_set_collision_layer":
                return _PhysicsServer2DExtension_proxy_body_set_collision_layer
            case "_body_set_collision_mask":
                return _PhysicsServer2DExtension_proxy_body_set_collision_mask
            case "_body_set_collision_priority":
                return _PhysicsServer2DExtension_proxy_body_set_collision_priority
            case "_body_set_constant_force":
                return _PhysicsServer2DExtension_proxy_body_set_constant_force
            case "_body_set_constant_torque":
                return _PhysicsServer2DExtension_proxy_body_set_constant_torque
            case "_body_set_contacts_reported_depth_threshold":
                return _PhysicsServer2DExtension_proxy_body_set_contacts_reported_depth_threshold
            case "_body_set_continuous_collision_detection_mode":
                return _PhysicsServer2DExtension_proxy_body_set_continuous_collision_detection_mode
            case "_body_set_force_integration_callback":
                return _PhysicsServer2DExtension_proxy_body_set_force_integration_callback
            case "_body_set_max_contacts_reported":
                return _PhysicsServer2DExtension_proxy_body_set_max_contacts_reported
            case "_body_set_mode":
                return _PhysicsServer2DExtension_proxy_body_set_mode
            case "_body_set_omit_force_integration":
                return _PhysicsServer2DExtension_proxy_body_set_omit_force_integration
            case "_body_set_param":
                return _PhysicsServer2DExtension_proxy_body_set_param
            case "_body_set_pickable":
                return _PhysicsServer2DExtension_proxy_body_set_pickable
            case "_body_set_shape":
                return _PhysicsServer2DExtension_proxy_body_set_shape
            case "_body_set_shape_as_one_way_collision":
                return _PhysicsServer2DExtension_proxy_body_set_shape_as_one_way_collision
            case "_body_set_shape_disabled":
                return _PhysicsServer2DExtension_proxy_body_set_shape_disabled
            case "_body_set_shape_transform":
                return _PhysicsServer2DExtension_proxy_body_set_shape_transform
            case "_body_set_space":
                return _PhysicsServer2DExtension_proxy_body_set_space
            case "_body_set_state":
                return _PhysicsServer2DExtension_proxy_body_set_state
            case "_body_set_state_sync_callback":
                return _PhysicsServer2DExtension_proxy_body_set_state_sync_callback
            case "_capsule_shape_create":
                return _PhysicsServer2DExtension_proxy_capsule_shape_create
            case "_circle_shape_create":
                return _PhysicsServer2DExtension_proxy_circle_shape_create
            case "_concave_polygon_shape_create":
                return _PhysicsServer2DExtension_proxy_concave_polygon_shape_create
            case "_convex_polygon_shape_create":
                return _PhysicsServer2DExtension_proxy_convex_polygon_shape_create
            case "_damped_spring_joint_get_param":
                return _PhysicsServer2DExtension_proxy_damped_spring_joint_get_param
            case "_damped_spring_joint_set_param":
                return _PhysicsServer2DExtension_proxy_damped_spring_joint_set_param
            case "_end_sync":
                return _PhysicsServer2DExtension_proxy_end_sync
            case "_finish":
                return _PhysicsServer2DExtension_proxy_finish
            case "_flush_queries":
                return _PhysicsServer2DExtension_proxy_flush_queries
            case "_free_rid":
                return _PhysicsServer2DExtension_proxy_free_rid
            case "_get_process_info":
                return _PhysicsServer2DExtension_proxy_get_process_info
            case "_init":
                return _PhysicsServer2DExtension_proxy_init
            case "_is_flushing_queries":
                return _PhysicsServer2DExtension_proxy_is_flushing_queries
            case "_joint_clear":
                return _PhysicsServer2DExtension_proxy_joint_clear
            case "_joint_create":
                return _PhysicsServer2DExtension_proxy_joint_create
            case "_joint_disable_collisions_between_bodies":
                return _PhysicsServer2DExtension_proxy_joint_disable_collisions_between_bodies
            case "_joint_get_param":
                return _PhysicsServer2DExtension_proxy_joint_get_param
            case "_joint_get_type":
                return _PhysicsServer2DExtension_proxy_joint_get_type
            case "_joint_is_disabled_collisions_between_bodies":
                return _PhysicsServer2DExtension_proxy_joint_is_disabled_collisions_between_bodies
            case "_joint_make_damped_spring":
                return _PhysicsServer2DExtension_proxy_joint_make_damped_spring
            case "_joint_make_groove":
                return _PhysicsServer2DExtension_proxy_joint_make_groove
            case "_joint_make_pin":
                return _PhysicsServer2DExtension_proxy_joint_make_pin
            case "_joint_set_param":
                return _PhysicsServer2DExtension_proxy_joint_set_param
            case "_pin_joint_get_flag":
                return _PhysicsServer2DExtension_proxy_pin_joint_get_flag
            case "_pin_joint_get_param":
                return _PhysicsServer2DExtension_proxy_pin_joint_get_param
            case "_pin_joint_set_flag":
                return _PhysicsServer2DExtension_proxy_pin_joint_set_flag
            case "_pin_joint_set_param":
                return _PhysicsServer2DExtension_proxy_pin_joint_set_param
            case "_rectangle_shape_create":
                return _PhysicsServer2DExtension_proxy_rectangle_shape_create
            case "_segment_shape_create":
                return _PhysicsServer2DExtension_proxy_segment_shape_create
            case "_separation_ray_shape_create":
                return _PhysicsServer2DExtension_proxy_separation_ray_shape_create
            case "_set_active":
                return _PhysicsServer2DExtension_proxy_set_active
            case "_shape_get_custom_solver_bias":
                return _PhysicsServer2DExtension_proxy_shape_get_custom_solver_bias
            case "_shape_get_data":
                return _PhysicsServer2DExtension_proxy_shape_get_data
            case "_shape_get_type":
                return _PhysicsServer2DExtension_proxy_shape_get_type
            case "_shape_set_custom_solver_bias":
                return _PhysicsServer2DExtension_proxy_shape_set_custom_solver_bias
            case "_shape_set_data":
                return _PhysicsServer2DExtension_proxy_shape_set_data
            case "_space_create":
                return _PhysicsServer2DExtension_proxy_space_create
            case "_space_get_contact_count":
                return _PhysicsServer2DExtension_proxy_space_get_contact_count
            case "_space_get_contacts":
                return _PhysicsServer2DExtension_proxy_space_get_contacts
            case "_space_get_direct_state":
                return _PhysicsServer2DExtension_proxy_space_get_direct_state
            case "_space_get_param":
                return _PhysicsServer2DExtension_proxy_space_get_param
            case "_space_is_active":
                return _PhysicsServer2DExtension_proxy_space_is_active
            case "_space_set_active":
                return _PhysicsServer2DExtension_proxy_space_set_active
            case "_space_set_debug_contacts":
                return _PhysicsServer2DExtension_proxy_space_set_debug_contacts
            case "_space_set_param":
                return _PhysicsServer2DExtension_proxy_space_set_param
            case "_step":
                return _PhysicsServer2DExtension_proxy_step
            case "_sync":
                return _PhysicsServer2DExtension_proxy_sync
            case "_world_boundary_shape_create":
                return _PhysicsServer2DExtension_proxy_world_boundary_shape_create
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _PhysicsServer2DExtension_proxy_area_add_shape (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._areaAddShape (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shape: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee), transform: args [2]!.assumingMemoryBound (to: Transform2D.self).pointee, disabled: args [3]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer2DExtension_proxy_area_attach_canvas_instance_id (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._areaAttachCanvasInstanceId (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), id: args [1]!.assumingMemoryBound (to: UInt.self).pointee)
}

func _PhysicsServer2DExtension_proxy_area_attach_object_instance_id (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._areaAttachObjectInstanceId (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), id: args [1]!.assumingMemoryBound (to: UInt.self).pointee)
}

func _PhysicsServer2DExtension_proxy_area_clear_shapes (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._areaClearShapes (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer2DExtension_proxy_area_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._areaCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer2DExtension_proxy_area_get_canvas_instance_id (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._areaGetCanvasInstanceId (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: UInt.self)
}

func _PhysicsServer2DExtension_proxy_area_get_collision_layer (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._areaGetCollisionLayer (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: UInt32.self)
}

func _PhysicsServer2DExtension_proxy_area_get_collision_mask (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._areaGetCollisionMask (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: UInt32.self)
}

func _PhysicsServer2DExtension_proxy_area_get_object_instance_id (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._areaGetObjectInstanceId (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: UInt.self)
}

func _PhysicsServer2DExtension_proxy_area_get_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._areaGetParam (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer2D.AreaParameter.self).pointee)
    retPtr!.storeBytes(of: ret.content, as: Variant.ContentType.self)
    ret?.content = Variant.zero
}

func _PhysicsServer2DExtension_proxy_area_get_shape (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._areaGetShape (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shapeIdx: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer2DExtension_proxy_area_get_shape_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._areaGetShapeCount (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _PhysicsServer2DExtension_proxy_area_get_shape_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._areaGetShapeTransform (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shapeIdx: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Transform2D.self)
}

func _PhysicsServer2DExtension_proxy_area_get_space (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._areaGetSpace (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer2DExtension_proxy_area_get_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._areaGetTransform (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Transform2D.self)
}

func _PhysicsServer2DExtension_proxy_area_remove_shape (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._areaRemoveShape (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shapeIdx: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
}

func _PhysicsServer2DExtension_proxy_area_set_area_monitor_callback (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._areaSetAreaMonitorCallback (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), callback: Callable (content: args [1]!.assumingMemoryBound (to: (Int64, Int64).self).pointee))
}

func _PhysicsServer2DExtension_proxy_area_set_collision_layer (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._areaSetCollisionLayer (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), layer: args [1]!.assumingMemoryBound (to: UInt32.self).pointee)
}

func _PhysicsServer2DExtension_proxy_area_set_collision_mask (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._areaSetCollisionMask (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), mask: args [1]!.assumingMemoryBound (to: UInt32.self).pointee)
}

func _PhysicsServer2DExtension_proxy_area_set_monitor_callback (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._areaSetMonitorCallback (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), callback: Callable (content: args [1]!.assumingMemoryBound (to: (Int64, Int64).self).pointee))
}

func _PhysicsServer2DExtension_proxy_area_set_monitorable (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._areaSetMonitorable (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), monitorable: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer2DExtension_proxy_area_set_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._areaSetParam (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer2D.AreaParameter.self).pointee, value: args [2]!.assumingMemoryBound (to: Variant.self).pointee)
}

func _PhysicsServer2DExtension_proxy_area_set_pickable (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._areaSetPickable (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), pickable: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer2DExtension_proxy_area_set_shape (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._areaSetShape (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shapeIdx: args [1]!.assumingMemoryBound (to: Int32.self).pointee, shape: RID (content: args [2]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer2DExtension_proxy_area_set_shape_disabled (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._areaSetShapeDisabled (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shapeIdx: args [1]!.assumingMemoryBound (to: Int32.self).pointee, disabled: args [2]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer2DExtension_proxy_area_set_shape_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._areaSetShapeTransform (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shapeIdx: args [1]!.assumingMemoryBound (to: Int32.self).pointee, transform: args [2]!.assumingMemoryBound (to: Transform2D.self).pointee)
}

func _PhysicsServer2DExtension_proxy_area_set_space (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._areaSetSpace (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), space: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer2DExtension_proxy_area_set_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._areaSetTransform (area: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), transform: args [1]!.assumingMemoryBound (to: Transform2D.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_add_collision_exception (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodyAddCollisionException (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), exceptedBody: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer2DExtension_proxy_body_add_constant_central_force (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodyAddConstantCentralForce (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), force: args [1]!.assumingMemoryBound (to: Vector2.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_add_constant_force (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodyAddConstantForce (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), force: args [1]!.assumingMemoryBound (to: Vector2.self).pointee, position: args [2]!.assumingMemoryBound (to: Vector2.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_add_constant_torque (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodyAddConstantTorque (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), torque: args [1]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_add_shape (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodyAddShape (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shape: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee), transform: args [2]!.assumingMemoryBound (to: Transform2D.self).pointee, disabled: args [3]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_apply_central_force (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodyApplyCentralForce (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), force: args [1]!.assumingMemoryBound (to: Vector2.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_apply_central_impulse (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodyApplyCentralImpulse (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), impulse: args [1]!.assumingMemoryBound (to: Vector2.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_apply_force (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodyApplyForce (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), force: args [1]!.assumingMemoryBound (to: Vector2.self).pointee, position: args [2]!.assumingMemoryBound (to: Vector2.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_apply_impulse (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodyApplyImpulse (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), impulse: args [1]!.assumingMemoryBound (to: Vector2.self).pointee, position: args [2]!.assumingMemoryBound (to: Vector2.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_apply_torque (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodyApplyTorque (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), torque: args [1]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_apply_torque_impulse (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodyApplyTorqueImpulse (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), impulse: args [1]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_attach_canvas_instance_id (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodyAttachCanvasInstanceId (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), id: args [1]!.assumingMemoryBound (to: UInt.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_attach_object_instance_id (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodyAttachObjectInstanceId (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), id: args [1]!.assumingMemoryBound (to: UInt.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_clear_shapes (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodyClearShapes (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer2DExtension_proxy_body_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._bodyCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer2DExtension_proxy_body_get_canvas_instance_id (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._bodyGetCanvasInstanceId (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: UInt.self)
}

func _PhysicsServer2DExtension_proxy_body_get_collision_exceptions (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._bodyGetCollisionExceptions (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::RID
}

func _PhysicsServer2DExtension_proxy_body_get_collision_layer (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._bodyGetCollisionLayer (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: UInt32.self)
}

func _PhysicsServer2DExtension_proxy_body_get_collision_mask (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._bodyGetCollisionMask (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: UInt32.self)
}

func _PhysicsServer2DExtension_proxy_body_get_collision_priority (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._bodyGetCollisionPriority (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsServer2DExtension_proxy_body_get_constant_force (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._bodyGetConstantForce (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Vector2.self)
}

func _PhysicsServer2DExtension_proxy_body_get_constant_torque (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._bodyGetConstantTorque (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsServer2DExtension_proxy_body_get_contacts_reported_depth_threshold (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._bodyGetContactsReportedDepthThreshold (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsServer2DExtension_proxy_body_get_continuous_collision_detection_mode (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._bodyGetContinuousCollisionDetectionMode (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _PhysicsServer2DExtension_proxy_body_get_direct_state (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._bodyGetDirectState (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret?.handle, as: UnsafeRawPointer?.self) // PhysicsDirectBodyState2D
}

func _PhysicsServer2DExtension_proxy_body_get_max_contacts_reported (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._bodyGetMaxContactsReported (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _PhysicsServer2DExtension_proxy_body_get_mode (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._bodyGetMode (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _PhysicsServer2DExtension_proxy_body_get_object_instance_id (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._bodyGetObjectInstanceId (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: UInt.self)
}

func _PhysicsServer2DExtension_proxy_body_get_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._bodyGetParam (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer2D.BodyParameter.self).pointee)
    retPtr!.storeBytes(of: ret.content, as: Variant.ContentType.self)
    ret?.content = Variant.zero
}

func _PhysicsServer2DExtension_proxy_body_get_shape (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._bodyGetShape (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shapeIdx: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer2DExtension_proxy_body_get_shape_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._bodyGetShapeCount (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _PhysicsServer2DExtension_proxy_body_get_shape_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._bodyGetShapeTransform (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shapeIdx: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Transform2D.self)
}

func _PhysicsServer2DExtension_proxy_body_get_space (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._bodyGetSpace (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer2DExtension_proxy_body_get_state (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._bodyGetState (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), state: args [1]!.assumingMemoryBound (to: PhysicsServer2D.BodyState.self).pointee)
    retPtr!.storeBytes(of: ret.content, as: Variant.ContentType.self)
    ret?.content = Variant.zero
}

func _PhysicsServer2DExtension_proxy_body_is_omitting_force_integration (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._bodyIsOmittingForceIntegration (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _PhysicsServer2DExtension_proxy_body_remove_collision_exception (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodyRemoveCollisionException (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), exceptedBody: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer2DExtension_proxy_body_remove_shape (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodyRemoveShape (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shapeIdx: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_reset_mass_properties (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodyResetMassProperties (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer2DExtension_proxy_body_set_axis_velocity (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodySetAxisVelocity (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), axisVelocity: args [1]!.assumingMemoryBound (to: Vector2.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_set_collision_layer (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodySetCollisionLayer (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), layer: args [1]!.assumingMemoryBound (to: UInt32.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_set_collision_mask (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodySetCollisionMask (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), mask: args [1]!.assumingMemoryBound (to: UInt32.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_set_collision_priority (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodySetCollisionPriority (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), priority: args [1]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_set_constant_force (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodySetConstantForce (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), force: args [1]!.assumingMemoryBound (to: Vector2.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_set_constant_torque (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodySetConstantTorque (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), torque: args [1]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_set_contacts_reported_depth_threshold (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodySetContactsReportedDepthThreshold (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), threshold: args [1]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_set_continuous_collision_detection_mode (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodySetContinuousCollisionDetectionMode (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), mode: args [1]!.assumingMemoryBound (to: PhysicsServer2D.CCDMode.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_set_force_integration_callback (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodySetForceIntegrationCallback (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), callable: Callable (content: args [1]!.assumingMemoryBound (to: (Int64, Int64).self).pointee), userdata: args [2]!.assumingMemoryBound (to: Variant.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_set_max_contacts_reported (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodySetMaxContactsReported (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), amount: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_set_mode (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodySetMode (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), mode: args [1]!.assumingMemoryBound (to: PhysicsServer2D.BodyMode.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_set_omit_force_integration (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodySetOmitForceIntegration (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), enable: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_set_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodySetParam (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer2D.BodyParameter.self).pointee, value: args [2]!.assumingMemoryBound (to: Variant.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_set_pickable (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodySetPickable (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), pickable: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_set_shape (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodySetShape (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shapeIdx: args [1]!.assumingMemoryBound (to: Int32.self).pointee, shape: RID (content: args [2]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer2DExtension_proxy_body_set_shape_as_one_way_collision (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodySetShapeAsOneWayCollision (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shapeIdx: args [1]!.assumingMemoryBound (to: Int32.self).pointee, enable: args [2]!.assumingMemoryBound (to: Bool.self).pointee, margin: args [3]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_set_shape_disabled (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodySetShapeDisabled (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shapeIdx: args [1]!.assumingMemoryBound (to: Int32.self).pointee, disabled: args [2]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_set_shape_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodySetShapeTransform (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), shapeIdx: args [1]!.assumingMemoryBound (to: Int32.self).pointee, transform: args [2]!.assumingMemoryBound (to: Transform2D.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_set_space (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodySetSpace (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), space: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer2DExtension_proxy_body_set_state (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodySetState (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), state: args [1]!.assumingMemoryBound (to: PhysicsServer2D.BodyState.self).pointee, value: args [2]!.assumingMemoryBound (to: Variant.self).pointee)
}

func _PhysicsServer2DExtension_proxy_body_set_state_sync_callback (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._bodySetStateSyncCallback (body: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), callable: Callable (content: args [1]!.assumingMemoryBound (to: (Int64, Int64).self).pointee))
}

func _PhysicsServer2DExtension_proxy_capsule_shape_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._capsuleShapeCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer2DExtension_proxy_circle_shape_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._circleShapeCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer2DExtension_proxy_concave_polygon_shape_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._concavePolygonShapeCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer2DExtension_proxy_convex_polygon_shape_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._convexPolygonShapeCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer2DExtension_proxy_damped_spring_joint_get_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._dampedSpringJointGetParam (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer2D.DampedSpringParam.self).pointee)
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsServer2DExtension_proxy_damped_spring_joint_set_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._dampedSpringJointSetParam (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer2D.DampedSpringParam.self).pointee, value: args [2]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer2DExtension_proxy_end_sync (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._endSync ()
}

func _PhysicsServer2DExtension_proxy_finish (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._finish ()
}

func _PhysicsServer2DExtension_proxy_flush_queries (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._flushQueries ()
}

func _PhysicsServer2DExtension_proxy_free_rid (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._freeRid (RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer2DExtension_proxy_get_process_info (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._getProcessInfo (args [0]!.assumingMemoryBound (to: PhysicsServer2D.ProcessInfo.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _PhysicsServer2DExtension_proxy_init (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._init ()
}

func _PhysicsServer2DExtension_proxy_is_flushing_queries (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._isFlushingQueries ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _PhysicsServer2DExtension_proxy_joint_clear (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._jointClear (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer2DExtension_proxy_joint_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._jointCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer2DExtension_proxy_joint_disable_collisions_between_bodies (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._jointDisableCollisionsBetweenBodies (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), disable: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer2DExtension_proxy_joint_get_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._jointGetParam (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer2D.JointParam.self).pointee)
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsServer2DExtension_proxy_joint_get_type (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._jointGetType (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _PhysicsServer2DExtension_proxy_joint_is_disabled_collisions_between_bodies (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._jointIsDisabledCollisionsBetweenBodies (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _PhysicsServer2DExtension_proxy_joint_make_damped_spring (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._jointMakeDampedSpring (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), anchorA: args [1]!.assumingMemoryBound (to: Vector2.self).pointee, anchorB: args [2]!.assumingMemoryBound (to: Vector2.self).pointee, bodyA: RID (content: args [3]!.assumingMemoryBound (to: Int64.self).pointee), bodyB: RID (content: args [4]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer2DExtension_proxy_joint_make_groove (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._jointMakeGroove (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), aGroove1: args [1]!.assumingMemoryBound (to: Vector2.self).pointee, aGroove2: args [2]!.assumingMemoryBound (to: Vector2.self).pointee, bAnchor: args [3]!.assumingMemoryBound (to: Vector2.self).pointee, bodyA: RID (content: args [4]!.assumingMemoryBound (to: Int64.self).pointee), bodyB: RID (content: args [5]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer2DExtension_proxy_joint_make_pin (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._jointMakePin (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), anchor: args [1]!.assumingMemoryBound (to: Vector2.self).pointee, bodyA: RID (content: args [2]!.assumingMemoryBound (to: Int64.self).pointee), bodyB: RID (content: args [3]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _PhysicsServer2DExtension_proxy_joint_set_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._jointSetParam (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer2D.JointParam.self).pointee, value: args [2]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer2DExtension_proxy_pin_joint_get_flag (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._pinJointGetFlag (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), flag: args [1]!.assumingMemoryBound (to: PhysicsServer2D.PinJointFlag.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _PhysicsServer2DExtension_proxy_pin_joint_get_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._pinJointGetParam (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer2D.PinJointParam.self).pointee)
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsServer2DExtension_proxy_pin_joint_set_flag (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._pinJointSetFlag (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), flag: args [1]!.assumingMemoryBound (to: PhysicsServer2D.PinJointFlag.self).pointee, enabled: args [2]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer2DExtension_proxy_pin_joint_set_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._pinJointSetParam (joint: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer2D.PinJointParam.self).pointee, value: args [2]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer2DExtension_proxy_rectangle_shape_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._rectangleShapeCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer2DExtension_proxy_segment_shape_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._segmentShapeCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer2DExtension_proxy_separation_ray_shape_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._separationRayShapeCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer2DExtension_proxy_set_active (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._setActive (args [0]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer2DExtension_proxy_shape_get_custom_solver_bias (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._shapeGetCustomSolverBias (shape: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsServer2DExtension_proxy_shape_get_data (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._shapeGetData (shape: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes(of: ret.content, as: Variant.ContentType.self)
    ret?.content = Variant.zero
}

func _PhysicsServer2DExtension_proxy_shape_get_type (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._shapeGetType (shape: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _PhysicsServer2DExtension_proxy_shape_set_custom_solver_bias (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._shapeSetCustomSolverBias (shape: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), bias: args [1]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer2DExtension_proxy_shape_set_data (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._shapeSetData (shape: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), data: args [1]!.assumingMemoryBound (to: Variant.self).pointee)
}

func _PhysicsServer2DExtension_proxy_space_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._spaceCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsServer2DExtension_proxy_space_get_contact_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._spaceGetContactCount (space: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _PhysicsServer2DExtension_proxy_space_get_contacts (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._spaceGetContacts (space: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedVector2Array
    ret.content = PackedVector2Array.zero
}

func _PhysicsServer2DExtension_proxy_space_get_direct_state (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._spaceGetDirectState (space: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret?.handle, as: UnsafeRawPointer?.self) // PhysicsDirectSpaceState2D
}

func _PhysicsServer2DExtension_proxy_space_get_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._spaceGetParam (space: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer2D.SpaceParameter.self).pointee)
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsServer2DExtension_proxy_space_is_active (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._spaceIsActive (space: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _PhysicsServer2DExtension_proxy_space_set_active (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._spaceSetActive (space: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), active: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsServer2DExtension_proxy_space_set_debug_contacts (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._spaceSetDebugContacts (space: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), maxContacts: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
}

func _PhysicsServer2DExtension_proxy_space_set_param (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._spaceSetParam (space: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), param: args [1]!.assumingMemoryBound (to: PhysicsServer2D.SpaceParameter.self).pointee, value: args [2]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer2DExtension_proxy_step (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._step (args [0]!.assumingMemoryBound (to: Double.self).pointee)
}

func _PhysicsServer2DExtension_proxy_sync (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    swiftObject._sync ()
}

func _PhysicsServer2DExtension_proxy_world_boundary_shape_create (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer2DExtension else { return }
    let ret = swiftObject._worldBoundaryShapeCreate ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

