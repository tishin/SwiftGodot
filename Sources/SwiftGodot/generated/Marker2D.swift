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


/// Generic 2D position hint for editing.
/// 
/// Generic 2D position hint for editing. It's just like a plain ``Node2D``, but it displays as a cross in the 2D editor at all times. You can set the cross' visual size by using the gizmo in the 2D editor while the node is selected.
open class Marker2D: Node2D {
    private static var className = StringName("Marker2D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Size of the gizmo cross that appears in the editor.
    final public var gizmoExtents: Double {
        get {
            return get_gizmo_extents ()
        }
        
        set {
            set_gizmo_extents (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_gizmo_extents: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_gizmo_extents")
        return withUnsafePointer(to: &Marker2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_gizmo_extents(_ extents: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: extents) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Marker2D.method_set_gizmo_extents, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_gizmo_extents: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_gizmo_extents")
        return withUnsafePointer(to: &Marker2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_gizmo_extents() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Marker2D.method_get_gizmo_extents, handle, nil, &_result)
        return _result
    }
    
}

