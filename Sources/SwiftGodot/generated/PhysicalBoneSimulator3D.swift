// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Node that can be the parent of ``PhysicalBone3D`` and can apply the simulation results to ``Skeleton3D``.
/// 
/// Node that can be the parent of ``PhysicalBone3D`` and can apply the simulation results to ``Skeleton3D``.
open class PhysicalBoneSimulator3D: SkeletonModifier3D {
    override open class var godotClassName: StringName { "PhysicalBoneSimulator3D" }
    /* Methods */
    fileprivate static var method_is_simulating_physics: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_simulating_physics")
        return withUnsafePointer(to: &PhysicalBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns a boolean that indicates whether the ``PhysicalBoneSimulator3D`` is running and simulating.
    public final func isSimulatingPhysics() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PhysicalBoneSimulator3D.method_is_simulating_physics, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_physical_bones_stop_simulation: GDExtensionMethodBindPtr = {
        let methodName = StringName("physical_bones_stop_simulation")
        return withUnsafePointer(to: &PhysicalBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Tells the ``PhysicalBone3D`` nodes in the Skeleton to stop simulating.
    public final func physicalBonesStopSimulation() {
        gi.object_method_bind_ptrcall(PhysicalBoneSimulator3D.method_physical_bones_stop_simulation, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static var method_physical_bones_start_simulation: GDExtensionMethodBindPtr = {
        let methodName = StringName("physical_bones_start_simulation")
        return withUnsafePointer(to: &PhysicalBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2787316981)!
            }
            
        }
        
    }()
    
    /// Tells the ``PhysicalBone3D`` nodes in the Skeleton to start simulating and reacting to the physics world.
    /// 
    /// Optionally, a list of bone names can be passed-in, allowing only the passed-in bones to be simulated.
    /// 
    public final func physicalBonesStartSimulation(bones: VariantCollection<StringName> = VariantCollection<StringName> ()) {
        withUnsafePointer(to: bones.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicalBoneSimulator3D.method_physical_bones_start_simulation, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_physical_bones_add_collision_exception: GDExtensionMethodBindPtr = {
        let methodName = StringName("physical_bones_add_collision_exception")
        return withUnsafePointer(to: &PhysicalBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// Adds a collision exception to the physical bone.
    /// 
    /// Works just like the ``RigidBody3D`` node.
    /// 
    public final func physicalBonesAddCollisionException(_ exception: RID) {
        withUnsafePointer(to: exception.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicalBoneSimulator3D.method_physical_bones_add_collision_exception, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_physical_bones_remove_collision_exception: GDExtensionMethodBindPtr = {
        let methodName = StringName("physical_bones_remove_collision_exception")
        return withUnsafePointer(to: &PhysicalBoneSimulator3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// Removes a collision exception to the physical bone.
    /// 
    /// Works just like the ``RigidBody3D`` node.
    /// 
    public final func physicalBonesRemoveCollisionException(_ exception: RID) {
        withUnsafePointer(to: exception.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicalBoneSimulator3D.method_physical_bones_remove_collision_exception, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}

