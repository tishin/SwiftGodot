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


/// This class allows for a RenderData implementation to be made in GDExtension.
/// 
/// This class allows for a RenderData implementation to be made in GDExtension.
open class RenderDataExtension: RenderData {
    private static var className = StringName("RenderDataExtension")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__get_render_scene_buffers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_render_scene_buffers")
        return withUnsafePointer(to: &RenderDataExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2793216201)!
            }
            
        }
        
    }()
    
    /// Implement this in GDExtension to return the implementation's ``RenderSceneBuffers`` object.
    @_documentation(visibility: public)
    open func _getRenderSceneBuffers() -> RenderSceneBuffers? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(RenderDataExtension.method__get_render_scene_buffers, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__get_render_scene_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_render_scene_data")
        return withUnsafePointer(to: &RenderDataExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1288715698)!
            }
            
        }
        
    }()
    
    /// Implement this in GDExtension to return the implementation's ``RenderSceneDataExtension`` object.
    @_documentation(visibility: public)
    open func _getRenderSceneData() -> RenderSceneData? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(RenderDataExtension.method__get_render_scene_data, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__get_environment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_environment")
        return withUnsafePointer(to: &RenderDataExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Implement this in GDExtension to return the ``RID`` of the implementation's environment object.
    @_documentation(visibility: public)
    open func _getEnvironment() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(RenderDataExtension.method__get_environment, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__get_camera_attributes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_camera_attributes")
        return withUnsafePointer(to: &RenderDataExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Implement this in GDExtension to return the ``RID`` for the implementation's camera attributes object.
    @_documentation(visibility: public)
    open func _getCameraAttributes() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(RenderDataExtension.method__get_camera_attributes, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_camera_attributes":
                return _RenderDataExtension_proxy_get_camera_attributes
            case "_get_environment":
                return _RenderDataExtension_proxy_get_environment
            case "_get_render_scene_buffers":
                return _RenderDataExtension_proxy_get_render_scene_buffers
            case "_get_render_scene_data":
                return _RenderDataExtension_proxy_get_render_scene_data
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _RenderDataExtension_proxy_get_camera_attributes (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? RenderDataExtension else { return }
    let ret = swiftObject._getCameraAttributes ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _RenderDataExtension_proxy_get_environment (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? RenderDataExtension else { return }
    let ret = swiftObject._getEnvironment ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _RenderDataExtension_proxy_get_render_scene_buffers (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? RenderDataExtension else { return }
    let ret = swiftObject._getRenderSceneBuffers ()
    retPtr!.storeBytes (of: ret?.handle, as: UnsafeRawPointer?.self) // RenderSceneBuffers
}

func _RenderDataExtension_proxy_get_render_scene_data (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? RenderDataExtension else { return }
    let ret = swiftObject._getRenderSceneData ()
    retPtr!.storeBytes (of: ret?.handle, as: UnsafeRawPointer?.self) // RenderSceneData
}

