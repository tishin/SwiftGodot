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


/// Abstract render data object, holds frame data related to rendering a single frame of a viewport.
/// 
/// Abstract render data object, exists for the duration of rendering a single viewport.
/// 
/// > Note: This is an internal rendering server object, do not instantiate this from script.
/// 
open class RenderData: Object {
    private static var className = StringName("RenderData")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_get_render_scene_buffers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_render_scene_buffers")
        return withUnsafePointer(to: &RenderData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2793216201)!
            }
            
        }
        
    }()
    
    /// Returns the ``RenderSceneBuffers`` object managing the scene buffers for rendering this viewport.
    public final func getRenderSceneBuffers() -> RenderSceneBuffers? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(RenderData.method_get_render_scene_buffers, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_render_scene_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_render_scene_data")
        return withUnsafePointer(to: &RenderData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1288715698)!
            }
            
        }
        
    }()
    
    /// Returns the ``RenderSceneData`` object managing this frames scene data.
    public final func getRenderSceneData() -> RenderSceneData? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(RenderData.method_get_render_scene_data, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_environment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_environment")
        return withUnsafePointer(to: &RenderData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Returns the ``RID`` of the environment object in the ``RenderingServer`` being used to render this viewport.
    public final func getEnvironment() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(RenderData.method_get_environment, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_camera_attributes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_camera_attributes")
        return withUnsafePointer(to: &RenderData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Returns the ``RID`` of the camera attributes object in the ``RenderingServer`` being used to render this viewport.
    public final func getCameraAttributes() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(RenderData.method_get_camera_attributes, handle, nil, &_result.content)
        return _result
    }
    
}

