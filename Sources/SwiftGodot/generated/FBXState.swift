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


/// The FBXState handles the state data imported from FBX files.
open class FBXState: GLTFState {
    private static var className = StringName("FBXState")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// If `true`, the import process used auxiliary nodes called geometry helper nodes. These nodes help preserve the pivots and transformations of the original 3D model during import.
    final public var allowGeometryHelperNodes: Bool {
        get {
            return get_allow_geometry_helper_nodes ()
        }
        
        set {
            set_allow_geometry_helper_nodes (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_get_allow_geometry_helper_nodes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_allow_geometry_helper_nodes")
        return withUnsafePointer(to: &FBXState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_allow_geometry_helper_nodes() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(FBXState.method_get_allow_geometry_helper_nodes, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_allow_geometry_helper_nodes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_allow_geometry_helper_nodes")
        return withUnsafePointer(to: &FBXState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_allow_geometry_helper_nodes(_ allow: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: allow) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FBXState.method_set_allow_geometry_helper_nodes, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}

