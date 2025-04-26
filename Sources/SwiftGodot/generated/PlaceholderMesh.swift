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


/// Placeholder class for a mesh.
/// 
/// This class is used when loading a project that uses a ``Mesh`` subclass in 2 conditions:
/// 
/// - When running the project exported in dedicated server mode, only the texture's dimensions are kept (as they may be relied upon for gameplay purposes or positioning of other elements). This allows reducing the exported PCK's size significantly.
/// 
/// - When this subclass is missing due to using a different engine version or build (e.g. modules disabled).
/// 
open class PlaceholderMesh: Mesh {
    private static var className = StringName("PlaceholderMesh")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The smallest ``AABB`` enclosing this mesh in local space.
    final public var aabb: AABB {
        get {
            return getAabb ()
        }
        
        set {
            set_aabb (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_aabb: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_aabb")
        return withUnsafePointer(to: &PlaceholderMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 259215842)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_aabb(_ aabb: AABB) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: aabb) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PlaceholderMesh.method_set_aabb, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}

