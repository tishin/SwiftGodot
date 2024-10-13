// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A joint used with ``Skeleton2D`` to control and animate other nodes.
/// 
/// A hierarchy of ``Bone2D``s can be bound to a ``Skeleton2D`` to control and animate other ``Node2D`` nodes.
/// 
/// You can use ``Bone2D`` and ``Skeleton2D`` nodes to animate 2D meshes created with the ``Polygon2D`` UV editor.
/// 
/// Each bone has a ``rest`` transform that you can reset to with ``applyRest()``. These rest poses are relative to the bone's parent.
/// 
/// If in the editor, you can set the rest pose of an entire skeleton using a menu option, from the code, you need to iterate over the bones to set their individual rest poses.
/// 
open class Bone2D: Node2D {
    override open class var godotClassName: StringName { "Bone2D" }
    
    /* Properties */
    
    /// Rest transform of the bone. You can reset the node's transforms to this value using ``applyRest()``.
    final public var rest: Transform2D {
        get {
            return get_rest ()
        }
        
        set {
            set_rest (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_rest: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_rest")
        return withUnsafePointer(to: &Bone2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2761652528)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_rest(_ rest: Transform2D) {
        withUnsafePointer(to: rest) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Bone2D.method_set_rest, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_rest: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_rest")
        return withUnsafePointer(to: &Bone2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3814499831)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_rest() -> Transform2D {
        var _result: Transform2D = Transform2D ()
        gi.object_method_bind_ptrcall(Bone2D.method_get_rest, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_apply_rest: GDExtensionMethodBindPtr = {
        let methodName = StringName("apply_rest")
        return withUnsafePointer(to: &Bone2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Resets the bone to the rest pose. This is equivalent to setting ``Node2D/transform`` to ``rest``.
    public final func applyRest() {
        gi.object_method_bind_ptrcall(Bone2D.method_apply_rest, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static var method_get_skeleton_rest: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_skeleton_rest")
        return withUnsafePointer(to: &Bone2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3814499831)!
            }
            
        }
        
    }()
    
    /// Returns the node's ``rest`` ``Transform2D`` if it doesn't have a parent, or its rest pose relative to its parent.
    public final func getSkeletonRest() -> Transform2D {
        var _result: Transform2D = Transform2D ()
        gi.object_method_bind_ptrcall(Bone2D.method_get_skeleton_rest, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_index_in_skeleton: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_index_in_skeleton")
        return withUnsafePointer(to: &Bone2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the node's index as part of the entire skeleton. See ``Skeleton2D``.
    public final func getIndexInSkeleton() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Bone2D.method_get_index_in_skeleton, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_autocalculate_length_and_angle: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_autocalculate_length_and_angle")
        return withUnsafePointer(to: &Bone2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// When set to `true`, the ``Bone2D`` node will attempt to automatically calculate the bone angle and length using the first child ``Bone2D`` node, if one exists. If none exist, the ``Bone2D`` cannot automatically calculate these values and will print a warning.
    public final func setAutocalculateLengthAndAngle(autoCalculate: Bool) {
        withUnsafePointer(to: autoCalculate) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Bone2D.method_set_autocalculate_length_and_angle, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_autocalculate_length_and_angle: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_autocalculate_length_and_angle")
        return withUnsafePointer(to: &Bone2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns whether this ``Bone2D`` is going to autocalculate its length and bone angle using its first ``Bone2D`` child node, if one exists. If there are no ``Bone2D`` children, then it cannot autocalculate these values and will print a warning.
    public final func getAutocalculateLengthAndAngle() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Bone2D.method_get_autocalculate_length_and_angle, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_length: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_length")
        return withUnsafePointer(to: &Bone2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Sets the length of the bone in the ``Bone2D``.
    public final func setLength(_ length: Double) {
        withUnsafePointer(to: length) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Bone2D.method_set_length, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_length: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_length")
        return withUnsafePointer(to: &Bone2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the length of the bone in the ``Bone2D`` node.
    public final func getLength() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Bone2D.method_get_length, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_bone_angle: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_bone_angle")
        return withUnsafePointer(to: &Bone2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Sets the bone angle for the ``Bone2D``. This is typically set to the rotation from the ``Bone2D`` to a child ``Bone2D`` node.
    /// 
    /// > Note: This is different from the ``Bone2D``'s rotation. The bone's angle is the rotation of the bone shown by the gizmo, which is unaffected by the ``Bone2D``'s ``Node2D/transform``.
    /// 
    public final func setBoneAngle(_ angle: Double) {
        withUnsafePointer(to: angle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Bone2D.method_set_bone_angle, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_bone_angle: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_bone_angle")
        return withUnsafePointer(to: &Bone2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the angle of the bone in the ``Bone2D``.
    /// 
    /// > Note: This is different from the ``Bone2D``'s rotation. The bone's angle is the rotation of the bone shown by the gizmo, which is unaffected by the ``Bone2D``'s ``Node2D/transform``.
    /// 
    public final func getBoneAngle() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Bone2D.method_get_bone_angle, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

