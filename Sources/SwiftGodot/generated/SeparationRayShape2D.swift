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


/// A 2D ray shape used for physics collision that tries to separate itself from any collider.
/// 
/// A 2D ray shape, intended for use in physics. Usually used to provide a shape for a ``CollisionShape2D``. When a ``SeparationRayShape2D`` collides with an object, it tries to separate itself from it by moving its endpoint to the collision point. For example, a ``SeparationRayShape2D`` next to a character can allow it to instantly move up when touching stairs.
open class SeparationRayShape2D: Shape2D {
    private static var className = StringName("SeparationRayShape2D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The ray's length.
    final public var length: Double {
        get {
            return get_length ()
        }
        
        set {
            set_length (newValue)
        }
        
    }
    
    /// If `false` (default), the shape always separates and returns a normal along its own direction.
    /// 
    /// If `true`, the shape can return the correct normal and separate in any direction, allowing sliding motion on slopes.
    /// 
    final public var slideOnSlope: Bool {
        get {
            return get_slide_on_slope ()
        }
        
        set {
            set_slide_on_slope (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_length: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_length")
        return withUnsafePointer(to: &SeparationRayShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_length(_ length: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: length) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SeparationRayShape2D.method_set_length, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_length: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_length")
        return withUnsafePointer(to: &SeparationRayShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_length() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(SeparationRayShape2D.method_get_length, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_slide_on_slope: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_slide_on_slope")
        return withUnsafePointer(to: &SeparationRayShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_slide_on_slope(_ active: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: active) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SeparationRayShape2D.method_set_slide_on_slope, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_slide_on_slope: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_slide_on_slope")
        return withUnsafePointer(to: &SeparationRayShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_slide_on_slope() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(SeparationRayShape2D.method_get_slide_on_slope, handle, nil, &_result)
        return _result
    }
    
}

