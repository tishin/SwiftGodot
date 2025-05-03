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


/// This class allows for a RenderSceneData implementation to be made in GDExtension.
/// 
/// This class allows for a RenderSceneData implementation to be made in GDExtension.
open class RenderSceneDataExtension: RenderSceneData {
    private static var className = StringName("RenderSceneDataExtension")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__get_cam_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_cam_transform")
        return withUnsafePointer(to: &RenderSceneDataExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3229777777)!
            }
            
        }
        
    }()
    
    /// Implement this in GDExtension to return the camera ``Transform3D``.
    @_documentation(visibility: public)
    open func _getCamTransform() -> Transform3D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform3D = Transform3D ()
        gi.object_method_bind_ptrcall(RenderSceneDataExtension.method__get_cam_transform, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_cam_projection: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_cam_projection")
        return withUnsafePointer(to: &RenderSceneDataExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2910717950)!
            }
            
        }
        
    }()
    
    /// Implement this in GDExtension to return the camera ``Projection``.
    @_documentation(visibility: public)
    open func _getCamProjection() -> Projection {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Projection = Projection ()
        gi.object_method_bind_ptrcall(RenderSceneDataExtension.method__get_cam_projection, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_view_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_view_count")
        return withUnsafePointer(to: &RenderSceneDataExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Implement this in GDExtension to return the view count.
    @_documentation(visibility: public)
    open func _getViewCount() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(RenderSceneDataExtension.method__get_view_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_view_eye_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_view_eye_offset")
        return withUnsafePointer(to: &RenderSceneDataExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 711720468)!
            }
            
        }
        
    }()
    
    /// Implement this in GDExtension to return the eye offset for the given `view`.
    @_documentation(visibility: public)
    open func _getViewEyeOffset(view: UInt32) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: view) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderSceneDataExtension.method__get_view_eye_offset, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_view_projection: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_view_projection")
        return withUnsafePointer(to: &RenderSceneDataExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3179846605)!
            }
            
        }
        
    }()
    
    /// Implement this in GDExtension to return the view ``Projection`` for the given `view`.
    @_documentation(visibility: public)
    open func _getViewProjection(view: UInt32) -> Projection {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Projection = Projection ()
        withUnsafePointer(to: view) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderSceneDataExtension.method__get_view_projection, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_uniform_buffer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_uniform_buffer")
        return withUnsafePointer(to: &RenderSceneDataExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Implement this in GDExtension to return the ``RID`` of the uniform buffer containing the scene data as a UBO.
    @_documentation(visibility: public)
    open func _getUniformBuffer() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(RenderSceneDataExtension.method__get_uniform_buffer, handle, nil, &_result.content)
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_cam_projection":
                return _RenderSceneDataExtension_proxy_get_cam_projection
            case "_get_cam_transform":
                return _RenderSceneDataExtension_proxy_get_cam_transform
            case "_get_uniform_buffer":
                return _RenderSceneDataExtension_proxy_get_uniform_buffer
            case "_get_view_count":
                return _RenderSceneDataExtension_proxy_get_view_count
            case "_get_view_eye_offset":
                return _RenderSceneDataExtension_proxy_get_view_eye_offset
            case "_get_view_projection":
                return _RenderSceneDataExtension_proxy_get_view_projection
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _RenderSceneDataExtension_proxy_get_cam_projection (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? RenderSceneDataExtension else { return }
    let ret = swiftObject._getCamProjection ()
    retPtr!.storeBytes (of: ret, as: Projection.self)
}

func _RenderSceneDataExtension_proxy_get_cam_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? RenderSceneDataExtension else { return }
    let ret = swiftObject._getCamTransform ()
    retPtr!.storeBytes (of: ret, as: Transform3D.self)
}

func _RenderSceneDataExtension_proxy_get_uniform_buffer (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? RenderSceneDataExtension else { return }
    let ret = swiftObject._getUniformBuffer ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _RenderSceneDataExtension_proxy_get_view_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? RenderSceneDataExtension else { return }
    let ret = swiftObject._getViewCount ()
    retPtr!.storeBytes (of: ret, as: UInt32.self)
}

func _RenderSceneDataExtension_proxy_get_view_eye_offset (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? RenderSceneDataExtension else { return }
    let ret = swiftObject._getViewEyeOffset (view: args [0]!.assumingMemoryBound (to: UInt32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector3.self)
}

func _RenderSceneDataExtension_proxy_get_view_projection (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? RenderSceneDataExtension else { return }
    let ret = swiftObject._getViewProjection (view: args [0]!.assumingMemoryBound (to: UInt32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Projection.self)
}

