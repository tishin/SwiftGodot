// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Point sampler for a ``Path2D``.
/// 
/// This node takes its parent ``Path2D``, and returns the coordinates of a point within it, given a distance from the first vertex.
/// 
/// It is useful for making other nodes follow a path, without coding the movement pattern. For that, the nodes must be children of this node. The descendant nodes will then move accordingly when setting the ``progress`` in this node.
/// 
open class PathFollow2D: Node2D {
    override open class var godotClassName: StringName { "PathFollow2D" }
    
    /* Properties */
    
    /// The distance along the path, in pixels. Changing this value sets this node's position to a point within the path.
    final public var progress: Double {
        get {
            return get_progress ()
        }
        
        set {
            set_progress (newValue)
        }
        
    }
    
    /// The distance along the path as a number in the range 0.0 (for the first vertex) to 1.0 (for the last). This is just another way of expressing the progress within the path, as the offset supplied is multiplied internally by the path's length.
    final public var progressRatio: Double {
        get {
            return get_progress_ratio ()
        }
        
        set {
            set_progress_ratio (newValue)
        }
        
    }
    
    /// The node's offset along the curve.
    final public var hOffset: Double {
        get {
            return get_h_offset ()
        }
        
        set {
            set_h_offset (newValue)
        }
        
    }
    
    /// The node's offset perpendicular to the curve.
    final public var vOffset: Double {
        get {
            return get_v_offset ()
        }
        
        set {
            set_v_offset (newValue)
        }
        
    }
    
    /// If `true`, this node rotates to follow the path, with the +X direction facing forward on the path.
    final public var rotates: Bool {
        get {
            return is_rotating ()
        }
        
        set {
            set_rotates (newValue)
        }
        
    }
    
    /// If `true`, the position between two cached points is interpolated cubically, and linearly otherwise.
    /// 
    /// The points along the ``Curve2D`` of the ``Path2D`` are precomputed before use, for faster calculations. The point at the requested offset is then calculated interpolating between two adjacent cached points. This may present a problem if the curve makes sharp turns, as the cached points may not follow the curve closely enough.
    /// 
    /// There are two answers to this problem: either increase the number of cached points and increase memory consumption, or make a cubic interpolation between two points at the cost of (slightly) slower calculations.
    /// 
    final public var cubicInterp: Bool {
        get {
            return get_cubic_interpolation ()
        }
        
        set {
            set_cubic_interpolation (newValue)
        }
        
    }
    
    /// If `true`, any offset outside the path's length will wrap around, instead of stopping at the ends. Use it for cyclic paths.
    final public var loop: Bool {
        get {
            return has_loop ()
        }
        
        set {
            set_loop (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_progress: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_progress")
        return withUnsafePointer(to: &PathFollow2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_progress(_ progress: Double) {
        withUnsafePointer(to: progress) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PathFollow2D.method_set_progress, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_progress: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_progress")
        return withUnsafePointer(to: &PathFollow2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_progress() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PathFollow2D.method_get_progress, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_h_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_h_offset")
        return withUnsafePointer(to: &PathFollow2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_h_offset(_ hOffset: Double) {
        withUnsafePointer(to: hOffset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PathFollow2D.method_set_h_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_h_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_h_offset")
        return withUnsafePointer(to: &PathFollow2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_h_offset() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PathFollow2D.method_get_h_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_v_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_v_offset")
        return withUnsafePointer(to: &PathFollow2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_v_offset(_ vOffset: Double) {
        withUnsafePointer(to: vOffset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PathFollow2D.method_set_v_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_v_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_v_offset")
        return withUnsafePointer(to: &PathFollow2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_v_offset() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PathFollow2D.method_get_v_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_progress_ratio: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_progress_ratio")
        return withUnsafePointer(to: &PathFollow2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_progress_ratio(_ ratio: Double) {
        withUnsafePointer(to: ratio) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PathFollow2D.method_set_progress_ratio, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_progress_ratio: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_progress_ratio")
        return withUnsafePointer(to: &PathFollow2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_progress_ratio() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PathFollow2D.method_get_progress_ratio, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_rotates: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_rotates")
        return withUnsafePointer(to: &PathFollow2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_rotates(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PathFollow2D.method_set_rotates, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_rotating: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_rotating")
        return withUnsafePointer(to: &PathFollow2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_rotating() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PathFollow2D.method_is_rotating, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_cubic_interpolation: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_cubic_interpolation")
        return withUnsafePointer(to: &PathFollow2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_cubic_interpolation(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PathFollow2D.method_set_cubic_interpolation, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_cubic_interpolation: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_cubic_interpolation")
        return withUnsafePointer(to: &PathFollow2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_cubic_interpolation() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PathFollow2D.method_get_cubic_interpolation, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_loop: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_loop")
        return withUnsafePointer(to: &PathFollow2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_loop(_ loop: Bool) {
        withUnsafePointer(to: loop) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PathFollow2D.method_set_loop, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_has_loop: GDExtensionMethodBindPtr = {
        let methodName = StringName("has_loop")
        return withUnsafePointer(to: &PathFollow2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func has_loop() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(PathFollow2D.method_has_loop, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}
