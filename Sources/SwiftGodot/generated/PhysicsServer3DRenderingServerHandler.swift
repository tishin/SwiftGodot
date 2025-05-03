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


/// A class used to provide ``PhysicsServer3DExtension/_softBodyUpdateRenderingServer(body:renderingServerHandler:)`` with a rendering handler for soft bodies.
open class PhysicsServer3DRenderingServerHandler: Object {
    private static var className = StringName("PhysicsServer3DRenderingServerHandler")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__set_vertex: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_vertex")
        return withUnsafePointer(to: &PhysicsServer3DRenderingServerHandler.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1530502735)!
            }
            
        }
        
    }()
    
    /// Called by the ``PhysicsServer3D`` to set the position for the ``SoftBody3D`` vertex at the index specified by `vertexId`.
    /// 
    /// > Note: The `vertex` parameter used to be of type `const void*` prior to Godot 4.2.
    /// 
    @_documentation(visibility: public)
    open func _setVertex(vertexId: Int32, vertex: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: vertexId) { pArg0 in
            withUnsafePointer(to: vertex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DRenderingServerHandler.method__set_vertex, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__set_normal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_normal")
        return withUnsafePointer(to: &PhysicsServer3DRenderingServerHandler.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1530502735)!
            }
            
        }
        
    }()
    
    /// Called by the ``PhysicsServer3D`` to set the normal for the ``SoftBody3D`` vertex at the index specified by `vertexId`.
    /// 
    /// > Note: The `normal` parameter used to be of type `const void*` prior to Godot 4.2.
    /// 
    @_documentation(visibility: public)
    open func _setNormal(vertexId: Int32, normal: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: vertexId) { pArg0 in
            withUnsafePointer(to: normal) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DRenderingServerHandler.method__set_normal, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__set_aabb: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_aabb")
        return withUnsafePointer(to: &PhysicsServer3DRenderingServerHandler.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 259215842)!
            }
            
        }
        
    }()
    
    /// Called by the ``PhysicsServer3D`` to set the bounding box for the ``SoftBody3D``.
    @_documentation(visibility: public)
    open func _setAabb(_ aabb: AABB) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: aabb) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DRenderingServerHandler.method__set_aabb, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_vertex: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_vertex")
        return withUnsafePointer(to: &PhysicsServer3DRenderingServerHandler.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1530502735)!
            }
            
        }
        
    }()
    
    /// Sets the position for the ``SoftBody3D`` vertex at the index specified by `vertexId`.
    public final func setVertex(vertexId: Int32, vertex: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: vertexId) { pArg0 in
            withUnsafePointer(to: vertex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DRenderingServerHandler.method_set_vertex, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_normal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_normal")
        return withUnsafePointer(to: &PhysicsServer3DRenderingServerHandler.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1530502735)!
            }
            
        }
        
    }()
    
    /// Sets the normal for the ``SoftBody3D`` vertex at the index specified by `vertexId`.
    public final func setNormal(vertexId: Int32, normal: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: vertexId) { pArg0 in
            withUnsafePointer(to: normal) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsServer3DRenderingServerHandler.method_set_normal, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_aabb: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_aabb")
        return withUnsafePointer(to: &PhysicsServer3DRenderingServerHandler.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 259215842)!
            }
            
        }
        
    }()
    
    /// Sets the bounding box for the ``SoftBody3D``.
    public final func setAabb(_ aabb: AABB) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: aabb) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsServer3DRenderingServerHandler.method_set_aabb, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_set_aabb":
                return _PhysicsServer3DRenderingServerHandler_proxy_set_aabb
            case "_set_normal":
                return _PhysicsServer3DRenderingServerHandler_proxy_set_normal
            case "_set_vertex":
                return _PhysicsServer3DRenderingServerHandler_proxy_set_vertex
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _PhysicsServer3DRenderingServerHandler_proxy_set_aabb (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DRenderingServerHandler else { return }
    swiftObject._setAabb (args [0]!.assumingMemoryBound (to: AABB.self).pointee)
}

func _PhysicsServer3DRenderingServerHandler_proxy_set_normal (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DRenderingServerHandler else { return }
    swiftObject._setNormal (vertexId: args [0]!.assumingMemoryBound (to: Int32.self).pointee, normal: args [1]!.assumingMemoryBound (to: Vector3.self).pointee)
}

func _PhysicsServer3DRenderingServerHandler_proxy_set_vertex (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsServer3DRenderingServerHandler else { return }
    swiftObject._setVertex (vertexId: args [0]!.assumingMemoryBound (to: Int32.self).pointee, vertex: args [1]!.assumingMemoryBound (to: Vector3.self).pointee)
}

