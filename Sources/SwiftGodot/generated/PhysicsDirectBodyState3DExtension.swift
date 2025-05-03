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


/// Provides virtual methods that can be overridden to create custom ``PhysicsDirectBodyState3D`` implementations.
/// 
/// This class extends ``PhysicsDirectBodyState3D`` by providing additional virtual methods that can be overridden. When these methods are overridden, they will be called instead of the internal methods of the physics server.
/// 
/// Intended for use with GDExtension to create custom implementations of ``PhysicsDirectBodyState3D``.
/// 
open class PhysicsDirectBodyState3DExtension: PhysicsDirectBodyState3D {
    private static var className = StringName("PhysicsDirectBodyState3DExtension")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__get_total_gravity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_total_gravity")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getTotalGravity() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_total_gravity, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_total_linear_damp: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_total_linear_damp")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getTotalLinearDamp() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_total_linear_damp, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_total_angular_damp: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_total_angular_damp")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getTotalAngularDamp() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_total_angular_damp, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_center_of_mass: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_center_of_mass")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getCenterOfMass() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_center_of_mass, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_center_of_mass_local: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_center_of_mass_local")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getCenterOfMassLocal() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_center_of_mass_local, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_principal_inertia_axes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_principal_inertia_axes")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2716978435)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getPrincipalInertiaAxes() -> Basis {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Basis = Basis ()
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_principal_inertia_axes, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_inverse_mass: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_inverse_mass")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getInverseMass() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_inverse_mass, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_inverse_inertia: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_inverse_inertia")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getInverseInertia() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_inverse_inertia, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_inverse_inertia_tensor: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_inverse_inertia_tensor")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2716978435)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getInverseInertiaTensor() -> Basis {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Basis = Basis ()
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_inverse_inertia_tensor, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__set_linear_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_linear_velocity")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _setLinearVelocity(_ velocity: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: velocity) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__set_linear_velocity, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_linear_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_linear_velocity")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getLinearVelocity() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_linear_velocity, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__set_angular_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_angular_velocity")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _setAngularVelocity(_ velocity: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: velocity) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__set_angular_velocity, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_angular_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_angular_velocity")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getAngularVelocity() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_angular_velocity, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__set_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_transform")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2952846383)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _setTransform(_ transform: Transform3D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: transform) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__set_transform, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_transform")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3229777777)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getTransform() -> Transform3D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform3D = Transform3D ()
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_transform, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_velocity_at_local_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_velocity_at_local_position")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 192990374)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getVelocityAtLocalPosition(_ localPosition: Vector3) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: localPosition) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_velocity_at_local_position, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__apply_central_impulse: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_apply_central_impulse")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _applyCentralImpulse(_ impulse: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: impulse) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__apply_central_impulse, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__apply_impulse: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_apply_impulse")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1714681797)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _applyImpulse(_ impulse: Vector3, position: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: impulse) { pArg0 in
            withUnsafePointer(to: position) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__apply_impulse, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__apply_torque_impulse: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_apply_torque_impulse")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _applyTorqueImpulse(_ impulse: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: impulse) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__apply_torque_impulse, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__apply_central_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_apply_central_force")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _applyCentralForce(_ force: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: force) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__apply_central_force, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__apply_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_apply_force")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1714681797)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _applyForce(_ force: Vector3, position: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: force) { pArg0 in
            withUnsafePointer(to: position) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__apply_force, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__apply_torque: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_apply_torque")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _applyTorque(_ torque: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: torque) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__apply_torque, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__add_constant_central_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_add_constant_central_force")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _addConstantCentralForce(_ force: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: force) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__add_constant_central_force, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__add_constant_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_add_constant_force")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1714681797)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _addConstantForce(_ force: Vector3, position: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: force) { pArg0 in
            withUnsafePointer(to: position) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__add_constant_force, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__add_constant_torque: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_add_constant_torque")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _addConstantTorque(_ torque: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: torque) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__add_constant_torque, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__set_constant_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_constant_force")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _setConstantForce(_ force: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: force) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__set_constant_force, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_constant_force: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_constant_force")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getConstantForce() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_constant_force, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__set_constant_torque: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_constant_torque")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _setConstantTorque(_ torque: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: torque) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__set_constant_torque, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_constant_torque: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_constant_torque")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getConstantTorque() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_constant_torque, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__set_sleep_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_sleep_state")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _setSleepState(enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__set_sleep_state, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__is_sleeping: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_sleeping")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _isSleeping() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__is_sleeping, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_contact_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_contact_count")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getContactCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_contact_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_contact_local_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_contact_local_position")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 711720468)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getContactLocalPosition(contactIdx: Int32) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: contactIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_contact_local_position, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_contact_local_normal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_contact_local_normal")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 711720468)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getContactLocalNormal(contactIdx: Int32) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: contactIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_contact_local_normal, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_contact_impulse: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_contact_impulse")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 711720468)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getContactImpulse(contactIdx: Int32) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: contactIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_contact_impulse, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_contact_local_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_contact_local_shape")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getContactLocalShape(contactIdx: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: contactIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_contact_local_shape, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_contact_local_velocity_at_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_contact_local_velocity_at_position")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 711720468)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getContactLocalVelocityAtPosition(contactIdx: Int32) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: contactIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_contact_local_velocity_at_position, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_contact_collider: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_contact_collider")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 495598643)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getContactCollider(contactIdx: Int32) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        withUnsafePointer(to: contactIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_contact_collider, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_contact_collider_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_contact_collider_position")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 711720468)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getContactColliderPosition(contactIdx: Int32) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: contactIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_contact_collider_position, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_contact_collider_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_contact_collider_id")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getContactColliderId(contactIdx: Int32) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: contactIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_contact_collider_id, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_contact_collider_object: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_contact_collider_object")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3332903315)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getContactColliderObject(contactIdx: Int32) -> Object? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: contactIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_contact_collider_object, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__get_contact_collider_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_contact_collider_shape")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getContactColliderShape(contactIdx: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: contactIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_contact_collider_shape, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_contact_collider_velocity_at_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_contact_collider_velocity_at_position")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 711720468)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getContactColliderVelocityAtPosition(contactIdx: Int32) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: contactIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_contact_collider_velocity_at_position, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_step: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_step")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getStep() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_step, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__integrate_forces: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_integrate_forces")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _integrateForces() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__integrate_forces, handle, nil, nil)
        
    }
    
    fileprivate static let method__get_space_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_space_state")
        return withUnsafePointer(to: &PhysicsDirectBodyState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2069328350)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getSpaceState() -> PhysicsDirectSpaceState3D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(PhysicsDirectBodyState3DExtension.method__get_space_state, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_add_constant_central_force":
                return _PhysicsDirectBodyState3DExtension_proxy_add_constant_central_force
            case "_add_constant_force":
                return _PhysicsDirectBodyState3DExtension_proxy_add_constant_force
            case "_add_constant_torque":
                return _PhysicsDirectBodyState3DExtension_proxy_add_constant_torque
            case "_apply_central_force":
                return _PhysicsDirectBodyState3DExtension_proxy_apply_central_force
            case "_apply_central_impulse":
                return _PhysicsDirectBodyState3DExtension_proxy_apply_central_impulse
            case "_apply_force":
                return _PhysicsDirectBodyState3DExtension_proxy_apply_force
            case "_apply_impulse":
                return _PhysicsDirectBodyState3DExtension_proxy_apply_impulse
            case "_apply_torque":
                return _PhysicsDirectBodyState3DExtension_proxy_apply_torque
            case "_apply_torque_impulse":
                return _PhysicsDirectBodyState3DExtension_proxy_apply_torque_impulse
            case "_get_angular_velocity":
                return _PhysicsDirectBodyState3DExtension_proxy_get_angular_velocity
            case "_get_center_of_mass":
                return _PhysicsDirectBodyState3DExtension_proxy_get_center_of_mass
            case "_get_center_of_mass_local":
                return _PhysicsDirectBodyState3DExtension_proxy_get_center_of_mass_local
            case "_get_constant_force":
                return _PhysicsDirectBodyState3DExtension_proxy_get_constant_force
            case "_get_constant_torque":
                return _PhysicsDirectBodyState3DExtension_proxy_get_constant_torque
            case "_get_contact_collider":
                return _PhysicsDirectBodyState3DExtension_proxy_get_contact_collider
            case "_get_contact_collider_id":
                return _PhysicsDirectBodyState3DExtension_proxy_get_contact_collider_id
            case "_get_contact_collider_object":
                return _PhysicsDirectBodyState3DExtension_proxy_get_contact_collider_object
            case "_get_contact_collider_position":
                return _PhysicsDirectBodyState3DExtension_proxy_get_contact_collider_position
            case "_get_contact_collider_shape":
                return _PhysicsDirectBodyState3DExtension_proxy_get_contact_collider_shape
            case "_get_contact_collider_velocity_at_position":
                return _PhysicsDirectBodyState3DExtension_proxy_get_contact_collider_velocity_at_position
            case "_get_contact_count":
                return _PhysicsDirectBodyState3DExtension_proxy_get_contact_count
            case "_get_contact_impulse":
                return _PhysicsDirectBodyState3DExtension_proxy_get_contact_impulse
            case "_get_contact_local_normal":
                return _PhysicsDirectBodyState3DExtension_proxy_get_contact_local_normal
            case "_get_contact_local_position":
                return _PhysicsDirectBodyState3DExtension_proxy_get_contact_local_position
            case "_get_contact_local_shape":
                return _PhysicsDirectBodyState3DExtension_proxy_get_contact_local_shape
            case "_get_contact_local_velocity_at_position":
                return _PhysicsDirectBodyState3DExtension_proxy_get_contact_local_velocity_at_position
            case "_get_inverse_inertia":
                return _PhysicsDirectBodyState3DExtension_proxy_get_inverse_inertia
            case "_get_inverse_inertia_tensor":
                return _PhysicsDirectBodyState3DExtension_proxy_get_inverse_inertia_tensor
            case "_get_inverse_mass":
                return _PhysicsDirectBodyState3DExtension_proxy_get_inverse_mass
            case "_get_linear_velocity":
                return _PhysicsDirectBodyState3DExtension_proxy_get_linear_velocity
            case "_get_principal_inertia_axes":
                return _PhysicsDirectBodyState3DExtension_proxy_get_principal_inertia_axes
            case "_get_space_state":
                return _PhysicsDirectBodyState3DExtension_proxy_get_space_state
            case "_get_step":
                return _PhysicsDirectBodyState3DExtension_proxy_get_step
            case "_get_total_angular_damp":
                return _PhysicsDirectBodyState3DExtension_proxy_get_total_angular_damp
            case "_get_total_gravity":
                return _PhysicsDirectBodyState3DExtension_proxy_get_total_gravity
            case "_get_total_linear_damp":
                return _PhysicsDirectBodyState3DExtension_proxy_get_total_linear_damp
            case "_get_transform":
                return _PhysicsDirectBodyState3DExtension_proxy_get_transform
            case "_get_velocity_at_local_position":
                return _PhysicsDirectBodyState3DExtension_proxy_get_velocity_at_local_position
            case "_integrate_forces":
                return _PhysicsDirectBodyState3DExtension_proxy_integrate_forces
            case "_is_sleeping":
                return _PhysicsDirectBodyState3DExtension_proxy_is_sleeping
            case "_set_angular_velocity":
                return _PhysicsDirectBodyState3DExtension_proxy_set_angular_velocity
            case "_set_constant_force":
                return _PhysicsDirectBodyState3DExtension_proxy_set_constant_force
            case "_set_constant_torque":
                return _PhysicsDirectBodyState3DExtension_proxy_set_constant_torque
            case "_set_linear_velocity":
                return _PhysicsDirectBodyState3DExtension_proxy_set_linear_velocity
            case "_set_sleep_state":
                return _PhysicsDirectBodyState3DExtension_proxy_set_sleep_state
            case "_set_transform":
                return _PhysicsDirectBodyState3DExtension_proxy_set_transform
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _PhysicsDirectBodyState3DExtension_proxy_add_constant_central_force (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    swiftObject._addConstantCentralForce (args [0]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsDirectBodyState3DExtension_proxy_add_constant_force (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    swiftObject._addConstantForce (args [0]!.assumingMemoryBound (to: Vector3.self).pointee, position: args [1]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsDirectBodyState3DExtension_proxy_add_constant_torque (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    swiftObject._addConstantTorque (args [0]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsDirectBodyState3DExtension_proxy_apply_central_force (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    swiftObject._applyCentralForce (args [0]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsDirectBodyState3DExtension_proxy_apply_central_impulse (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    swiftObject._applyCentralImpulse (args [0]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsDirectBodyState3DExtension_proxy_apply_force (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    swiftObject._applyForce (args [0]!.assumingMemoryBound (to: Vector3.self).pointee, position: args [1]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsDirectBodyState3DExtension_proxy_apply_impulse (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    swiftObject._applyImpulse (args [0]!.assumingMemoryBound (to: Vector3.self).pointee, position: args [1]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsDirectBodyState3DExtension_proxy_apply_torque (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    swiftObject._applyTorque (args [0]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsDirectBodyState3DExtension_proxy_apply_torque_impulse (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    swiftObject._applyTorqueImpulse (args [0]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_angular_velocity (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getAngularVelocity ()
    retPtr!.storeBytes (of: ret, as: Vector3.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_center_of_mass (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getCenterOfMass ()
    retPtr!.storeBytes (of: ret, as: Vector3.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_center_of_mass_local (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getCenterOfMassLocal ()
    retPtr!.storeBytes (of: ret, as: Vector3.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_constant_force (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getConstantForce ()
    retPtr!.storeBytes (of: ret, as: Vector3.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_constant_torque (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getConstantTorque ()
    retPtr!.storeBytes (of: ret, as: Vector3.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_contact_collider (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getContactCollider (contactIdx: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _PhysicsDirectBodyState3DExtension_proxy_get_contact_collider_id (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getContactColliderId (contactIdx: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: UInt.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_contact_collider_object (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getContactColliderObject (contactIdx: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret?.handle, as:  GodotNativeObjectPointer?.self) // Object
}

func _PhysicsDirectBodyState3DExtension_proxy_get_contact_collider_position (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getContactColliderPosition (contactIdx: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector3.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_contact_collider_shape (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getContactColliderShape (contactIdx: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_contact_collider_velocity_at_position (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getContactColliderVelocityAtPosition (contactIdx: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector3.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_contact_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getContactCount ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_contact_impulse (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getContactImpulse (contactIdx: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector3.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_contact_local_normal (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getContactLocalNormal (contactIdx: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector3.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_contact_local_position (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getContactLocalPosition (contactIdx: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector3.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_contact_local_shape (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getContactLocalShape (contactIdx: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_contact_local_velocity_at_position (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getContactLocalVelocityAtPosition (contactIdx: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector3.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_inverse_inertia (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getInverseInertia ()
    retPtr!.storeBytes (of: ret, as: Vector3.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_inverse_inertia_tensor (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getInverseInertiaTensor ()
    retPtr!.storeBytes (of: ret, as: Basis.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_inverse_mass (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getInverseMass ()
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_linear_velocity (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getLinearVelocity ()
    retPtr!.storeBytes (of: ret, as: Vector3.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_principal_inertia_axes (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getPrincipalInertiaAxes ()
    retPtr!.storeBytes (of: ret, as: Basis.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_space_state (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getSpaceState ()
    retPtr!.storeBytes (of: ret?.handle, as:  GodotNativeObjectPointer?.self) // PhysicsDirectSpaceState3D
}

func _PhysicsDirectBodyState3DExtension_proxy_get_step (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getStep ()
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_total_angular_damp (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getTotalAngularDamp ()
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_total_gravity (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getTotalGravity ()
    retPtr!.storeBytes (of: ret, as: Vector3.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_total_linear_damp (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getTotalLinearDamp ()
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getTransform ()
    retPtr!.storeBytes (of: ret, as: Transform3D.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_get_velocity_at_local_position (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._getVelocityAtLocalPosition (args [0]!.assumingMemoryBound (to: Vector3.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector3.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_integrate_forces (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    swiftObject._integrateForces ()
}

func _PhysicsDirectBodyState3DExtension_proxy_is_sleeping (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    let ret = swiftObject._isSleeping ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _PhysicsDirectBodyState3DExtension_proxy_set_angular_velocity (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    swiftObject._setAngularVelocity (args [0]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsDirectBodyState3DExtension_proxy_set_constant_force (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    swiftObject._setConstantForce (args [0]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsDirectBodyState3DExtension_proxy_set_constant_torque (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    swiftObject._setConstantTorque (args [0]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsDirectBodyState3DExtension_proxy_set_linear_velocity (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    swiftObject._setLinearVelocity (args [0]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsDirectBodyState3DExtension_proxy_set_sleep_state (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    swiftObject._setSleepState (enabled: args [0]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _PhysicsDirectBodyState3DExtension_proxy_set_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectBodyState3DExtension else { return }
    swiftObject._setTransform (args [0]!.assumingMemoryBound (to: Transform3D.self).pointee)
}

