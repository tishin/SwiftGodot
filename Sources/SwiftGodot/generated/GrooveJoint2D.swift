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


/// A physics joint that restricts the movement of two 2D physics bodies to a fixed axis.
/// 
/// A physics joint that restricts the movement of two 2D physics bodies to a fixed axis. For example, a ``StaticBody2D`` representing a piston base can be attached to a ``RigidBody2D`` representing the piston head, moving up and down.
open class GrooveJoint2D: Joint2D {
    private static var className = StringName("GrooveJoint2D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The groove's length. The groove is from the joint's origin towards ``length`` along the joint's local Y axis.
    final public var length: Double {
        get {
            return get_length ()
        }
        
        set {
            set_length (newValue)
        }
        
    }
    
    /// The body B's initial anchor position defined by the joint's origin and a local offset ``initialOffset`` along the joint's Y axis (along the groove).
    final public var initialOffset: Double {
        get {
            return get_initial_offset ()
        }
        
        set {
            set_initial_offset (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_length: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_length")
        return withUnsafePointer(to: &GrooveJoint2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(GrooveJoint2D.method_set_length, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_length: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_length")
        return withUnsafePointer(to: &GrooveJoint2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_length() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GrooveJoint2D.method_get_length, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_initial_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_initial_offset")
        return withUnsafePointer(to: &GrooveJoint2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_initial_offset(_ offset: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GrooveJoint2D.method_set_initial_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_initial_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_initial_offset")
        return withUnsafePointer(to: &GrooveJoint2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_initial_offset() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GrooveJoint2D.method_get_initial_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

