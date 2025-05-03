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


/// A 2D line segment shape used for physics collision.
/// 
/// A 2D line segment shape, intended for use in physics. Usually used to provide a shape for a ``CollisionShape2D``.
open class SegmentShape2D: Shape2D {
    private static var className = StringName("SegmentShape2D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The segment's first point position.
    final public var a: Vector2 {
        get {
            return get_a ()
        }
        
        set {
            set_a (newValue)
        }
        
    }
    
    /// The segment's second point position.
    final public var b: Vector2 {
        get {
            return get_b ()
        }
        
        set {
            set_b (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_a: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_a")
        return withUnsafePointer(to: &SegmentShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_a(_ a: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: a) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SegmentShape2D.method_set_a, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_a: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_a")
        return withUnsafePointer(to: &SegmentShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_a() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(SegmentShape2D.method_get_a, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_b: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_b")
        return withUnsafePointer(to: &SegmentShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_b(_ b: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: b) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SegmentShape2D.method_set_b, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_b: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_b")
        return withUnsafePointer(to: &SegmentShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_b() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(SegmentShape2D.method_get_b, handle, nil, &_result)
        return _result
    }
    
}

