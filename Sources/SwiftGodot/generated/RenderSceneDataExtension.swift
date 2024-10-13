// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// This class allows for a RenderSceneData implementation to be made in GDExtension.
/// 
/// This class allows for a RenderSceneData implementation to be made in GDExtension.
open class RenderSceneDataExtension: RenderSceneData {
    override open class var godotClassName: StringName { "RenderSceneDataExtension" }
    /* Methods */
    /// Implement this in GDExtension to return the camera ``Transform3D``.
    @_documentation(visibility: public)
    open func _getCamTransform() -> Transform3D {
        return Transform3D ()
    }
    
    /// Implement this in GDExtension to return the camera ``Projection``.
    @_documentation(visibility: public)
    open func _getCamProjection() -> Projection {
        return Projection ()
    }
    
    /// Implement this in GDExtension to return the view count.
    @_documentation(visibility: public)
    open func _getViewCount() -> UInt32 {
        return 0
    }
    
    /// Implement this in GDExtension to return the eye offset for the given `view`.
    @_documentation(visibility: public)
    open func _getViewEyeOffset(view: UInt32) -> Vector3 {
        return Vector3 ()
    }
    
    /// Implement this in GDExtension to return the view ``Projection`` for the given `view`.
    @_documentation(visibility: public)
    open func _getViewProjection(view: UInt32) -> Projection {
        return Projection ()
    }
    
    /// Implement this in GDExtension to return the ``RID`` of the uniform buffer containing the scene data as a UBO.
    @_documentation(visibility: public)
    open func _getUniformBuffer() -> RID {
        return RID ()
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
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
    let swiftObject = Unmanaged<RenderSceneDataExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getCamProjection ()
    retPtr!.storeBytes (of: ret, as: Projection.self)
}

func _RenderSceneDataExtension_proxy_get_cam_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<RenderSceneDataExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getCamTransform ()
    retPtr!.storeBytes (of: ret, as: Transform3D.self)
}

func _RenderSceneDataExtension_proxy_get_uniform_buffer (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<RenderSceneDataExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getUniformBuffer ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _RenderSceneDataExtension_proxy_get_view_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<RenderSceneDataExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getViewCount ()
    retPtr!.storeBytes (of: ret, as: UInt32.self)
}

func _RenderSceneDataExtension_proxy_get_view_eye_offset (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<RenderSceneDataExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getViewEyeOffset (view: args [0]!.assumingMemoryBound (to: UInt32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector3.self)
}

func _RenderSceneDataExtension_proxy_get_view_projection (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<RenderSceneDataExtension>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getViewProjection (view: args [0]!.assumingMemoryBound (to: UInt32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Projection.self)
}

