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


/// Generic 3D position hint for editing.
/// 
/// Generic 3D position hint for editing. It's just like a plain ``Node3D``, but it displays as a cross in the 3D editor at all times.
open class Marker3D: Node3D {
    private static var className = StringName("Marker3D")
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
        return withUnsafePointer(to: &Marker3D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(Marker3D.method_set_gizmo_extents, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_gizmo_extents: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_gizmo_extents")
        return withUnsafePointer(to: &Marker3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_gizmo_extents() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Marker3D.method_get_gizmo_extents, handle, nil, &_result)
        return _result
    }
    
}

