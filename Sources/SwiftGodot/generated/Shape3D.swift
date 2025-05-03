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


/// Abstract base class for 3D shapes used for physics collision.
/// 
/// Abstract base class for all 3D shapes, intended for use in physics.
/// 
/// **Performance:** Primitive shapes, especially ``SphereShape3D``, are fast to check collisions against. ``ConvexPolygonShape3D`` and ``HeightMapShape3D`` are slower, and ``ConcavePolygonShape3D`` is the slowest.
/// 
open class Shape3D: Resource {
    private static var className = StringName("Shape3D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The shape's custom solver bias. Defines how much bodies react to enforce contact separation when this shape is involved.
    /// 
    /// When set to `0`, the default value from ``ProjectSettings/physics/3d/solver/defaultContactBias`` is used.
    /// 
    final public var customSolverBias: Double {
        get {
            return get_custom_solver_bias ()
        }
        
        set {
            set_custom_solver_bias (newValue)
        }
        
    }
    
    /// The collision margin for the shape. This is not used in Godot Physics.
    /// 
    /// Collision margins allow collision detection to be more efficient by adding an extra shell around shapes. Collision algorithms are more expensive when objects overlap by more than their margin, so a higher value for margins is better for performance, at the cost of accuracy around edges as it makes them less sharp.
    /// 
    final public var margin: Double {
        get {
            return get_margin ()
        }
        
        set {
            set_margin (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_custom_solver_bias: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_custom_solver_bias")
        return withUnsafePointer(to: &Shape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_custom_solver_bias(_ bias: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: bias) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Shape3D.method_set_custom_solver_bias, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_custom_solver_bias: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_custom_solver_bias")
        return withUnsafePointer(to: &Shape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_custom_solver_bias() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Shape3D.method_get_custom_solver_bias, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_margin")
        return withUnsafePointer(to: &Shape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_margin(_ margin: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: margin) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Shape3D.method_set_margin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_margin")
        return withUnsafePointer(to: &Shape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_margin() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Shape3D.method_get_margin, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_debug_mesh: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_debug_mesh")
        return withUnsafePointer(to: &Shape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1605880883)!
            }
            
        }
        
    }()
    
    /// Returns the ``ArrayMesh`` used to draw the debug collision for this ``Shape3D``.
    public final func getDebugMesh() -> ArrayMesh? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(Shape3D.method_get_debug_mesh, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
}

