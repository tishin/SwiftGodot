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


/// Render scene buffer implementation for the RenderingDevice based renderers.
/// 
/// This object manages all 3D rendering buffers for the rendering device based renderers. An instance of this object is created for every viewport that has 3D rendering enabled.
/// 
/// All buffers are organized in **contexts**. The default context is called **render_buffers** and can contain amongst others the color buffer, depth buffer, velocity buffers, VRS density map and MSAA variants of these buffers.
/// 
/// Buffers are only guaranteed to exist during rendering of the viewport.
/// 
/// > Note: This is an internal rendering server object, do not instantiate this from script.
/// 
open class RenderSceneBuffersRD: RenderSceneBuffers {
    private static var className = StringName("RenderSceneBuffersRD")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_has_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_texture")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 471820014)!
            }
            
        }
        
    }()
    
    /// Returns `true` if a cached texture exists for this name.
    public final func hasTexture(context: StringName, name: StringName) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: context.content) { pArg0 in
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_has_texture, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_create_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_texture")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2950875024)!
            }
            
        }
        
    }()
    
    /// Create a new texture with the given definition and cache this under the given name. Will return the existing texture if it already exists.
    public final func createTexture(context: StringName, name: StringName, dataFormat: RenderingDevice.DataFormat, usageBits: UInt32, textureSamples: RenderingDevice.TextureSamples, size: Vector2i, layers: UInt32, mipmaps: UInt32, unique: Bool, discardable: Bool) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: context.content) { pArg0 in
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: dataFormat.rawValue) { pArg2 in
                    withUnsafePointer(to: usageBits) { pArg3 in
                        withUnsafePointer(to: textureSamples.rawValue) { pArg4 in
                            withUnsafePointer(to: size) { pArg5 in
                                withUnsafePointer(to: layers) { pArg6 in
                                    withUnsafePointer(to: mipmaps) { pArg7 in
                                        withUnsafePointer(to: unique) { pArg8 in
                                            withUnsafePointer(to: discardable) { pArg9 in
                                                withUnsafePointer(to: UnsafeRawPointersN10(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6, pArg7, pArg8, pArg9)) { pArgs in
                                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 10) { pArgs in
                                                        gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_create_texture, handle, pArgs, &_result.content)
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_create_texture_from_format: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_texture_from_format")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3344669382)!
            }
            
        }
        
    }()
    
    /// Create a new texture using the given format and view and cache this under the given name. Will return the existing texture if it already exists.
    public final func createTextureFromFormat(context: StringName, name: StringName, format: RDTextureFormat?, view: RDTextureView?, unique: Bool) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: context.content) { pArg0 in
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: format?.handle) { pArg2 in
                    withUnsafePointer(to: view?.handle) { pArg3 in
                        withUnsafePointer(to: unique) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_create_texture_from_format, handle, pArgs, &_result.content)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_create_texture_view: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_texture_view")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 283055834)!
            }
            
        }
        
    }()
    
    /// Create a new texture view for an existing texture and cache this under the given `viewName`. Will return the existing texture view if it already exists. Will error if the source texture doesn't exist.
    public final func createTextureView(context: StringName, name: StringName, viewName: StringName, view: RDTextureView?) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: context.content) { pArg0 in
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: viewName.content) { pArg2 in
                    withUnsafePointer(to: view?.handle) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_create_texture_view, handle, pArgs, &_result.content)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 750006389)!
            }
            
        }
        
    }()
    
    /// Returns a cached texture with this name.
    public final func getTexture(context: StringName, name: StringName) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: context.content) { pArg0 in
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_get_texture, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_texture_format: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture_format")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 371461758)!
            }
            
        }
        
    }()
    
    /// Returns the texture format information with which a cached texture was created.
    public final func getTextureFormat(context: StringName, name: StringName) -> RDTextureFormat? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: context.content) { pArg0 in
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_get_texture_format, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_texture_slice: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture_slice")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 588440706)!
            }
            
        }
        
    }()
    
    /// Returns a specific slice (layer or mipmap) for a cached texture.
    public final func getTextureSlice(context: StringName, name: StringName, layer: UInt32, mipmap: UInt32, layers: UInt32, mipmaps: UInt32) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: context.content) { pArg0 in
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: layer) { pArg2 in
                    withUnsafePointer(to: mipmap) { pArg3 in
                        withUnsafePointer(to: layers) { pArg4 in
                            withUnsafePointer(to: mipmaps) { pArg5 in
                                withUnsafePointer(to: UnsafeRawPointersN6(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5)) { pArgs in
                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 6) { pArgs in
                                        gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_get_texture_slice, handle, pArgs, &_result.content)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_texture_slice_view: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture_slice_view")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 682451778)!
            }
            
        }
        
    }()
    
    /// Returns a specific view of a slice (layer or mipmap) for a cached texture.
    public final func getTextureSliceView(context: StringName, name: StringName, layer: UInt32, mipmap: UInt32, layers: UInt32, mipmaps: UInt32, view: RDTextureView?) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: context.content) { pArg0 in
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: layer) { pArg2 in
                    withUnsafePointer(to: mipmap) { pArg3 in
                        withUnsafePointer(to: layers) { pArg4 in
                            withUnsafePointer(to: mipmaps) { pArg5 in
                                withUnsafePointer(to: view?.handle) { pArg6 in
                                    withUnsafePointer(to: UnsafeRawPointersN7(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6)) { pArgs in
                                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 7) { pArgs in
                                            gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_get_texture_slice_view, handle, pArgs, &_result.content)
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_texture_slice_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture_slice_size")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2617625368)!
            }
            
        }
        
    }()
    
    /// Returns the texture size of a given slice of a cached texture.
    public final func getTextureSliceSize(context: StringName, name: StringName, mipmap: UInt32) -> Vector2i {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2i = Vector2i ()
        withUnsafePointer(to: context.content) { pArg0 in
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: mipmap) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_get_texture_slice_size, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_clear_context: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_context")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    /// Frees all buffers related to this context.
    public final func clearContext(_ context: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: context.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_clear_context, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_color_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_color_texture")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3050822880)!
            }
            
        }
        
    }()
    
    /// Returns the color texture we are rendering 3D content to. If multiview is used this will be a texture array with all views.
    /// 
    /// If `msaa` is `true` and MSAA is enabled, this returns the MSAA variant of the buffer.
    /// 
    public final func getColorTexture(msaa: Bool = false) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: msaa) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_get_color_texture, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_color_layer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_color_layer")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3087988589)!
            }
            
        }
        
    }()
    
    /// Returns the specified layer from the color texture we are rendering 3D content to.
    /// 
    /// If `msaa` is `true` and MSAA is enabled, this returns the MSAA variant of the buffer.
    /// 
    public final func getColorLayer(_ layer: UInt32, msaa: Bool = false) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: layer) { pArg0 in
            withUnsafePointer(to: msaa) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_get_color_layer, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_depth_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_depth_texture")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3050822880)!
            }
            
        }
        
    }()
    
    /// Returns the depth texture we are rendering 3D content to. If multiview is used this will be a texture array with all views.
    /// 
    /// If `msaa` is `true` and MSAA is enabled, this returns the MSAA variant of the buffer.
    /// 
    public final func getDepthTexture(msaa: Bool = false) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: msaa) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_get_depth_texture, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_depth_layer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_depth_layer")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3087988589)!
            }
            
        }
        
    }()
    
    /// Returns the specified layer from the depth texture we are rendering 3D content to.
    /// 
    /// If `msaa` is `true` and MSAA is enabled, this returns the MSAA variant of the buffer.
    /// 
    public final func getDepthLayer(_ layer: UInt32, msaa: Bool = false) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: layer) { pArg0 in
            withUnsafePointer(to: msaa) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_get_depth_layer, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_velocity_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_velocity_texture")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3050822880)!
            }
            
        }
        
    }()
    
    /// Returns the velocity texture we are rendering 3D content to. If multiview is used this will be a texture array with all views.
    /// 
    /// If `msaa` is **true** and MSAA is enabled, this returns the MSAA variant of the buffer.
    /// 
    public final func getVelocityTexture(msaa: Bool = false) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: msaa) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_get_velocity_texture, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_velocity_layer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_velocity_layer")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3087988589)!
            }
            
        }
        
    }()
    
    /// Returns the specified layer from the velocity texture we are rendering 3D content to.
    public final func getVelocityLayer(_ layer: UInt32, msaa: Bool = false) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: layer) { pArg0 in
            withUnsafePointer(to: msaa) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_get_velocity_layer, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_render_target: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_render_target")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Returns the render target associated with this buffers object.
    public final func getRenderTarget() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_get_render_target, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_view_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_view_count")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the view count for the associated viewport.
    public final func getViewCount() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_get_view_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_internal_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_internal_size")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3690982128)!
            }
            
        }
        
    }()
    
    /// Returns the internal size of the render buffer (size before upscaling) with which textures are created by default.
    public final func getInternalSize() -> Vector2i {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2i = Vector2i ()
        gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_get_internal_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_target_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_target_size")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3690982128)!
            }
            
        }
        
    }()
    
    /// Returns the target size of the render buffer (size after upscaling).
    public final func getTargetSize() -> Vector2i {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2i = Vector2i ()
        gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_get_target_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_scaling_3d_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_scaling_3d_mode")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 976778074)!
            }
            
        }
        
    }()
    
    /// Returns the scaling mode used for upscaling.
    public final func getScaling3dMode() -> RenderingServer.ViewportScaling3DMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_get_scaling_3d_mode, handle, nil, &_result)
        return RenderingServer.ViewportScaling3DMode (rawValue: _result)!
    }
    
    fileprivate static let method_get_fsr_sharpness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_fsr_sharpness")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the FSR sharpness value used while rendering the 3D content (if ``getScaling3dMode()`` is an FSR mode).
    public final func getFsrSharpness() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_get_fsr_sharpness, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_msaa_3d: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_msaa_3d")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3109158617)!
            }
            
        }
        
    }()
    
    /// Returns the applied 3D MSAA mode for this viewport.
    public final func getMsaa3d() -> RenderingServer.ViewportMSAA {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_get_msaa_3d, handle, nil, &_result)
        return RenderingServer.ViewportMSAA (rawValue: _result)!
    }
    
    fileprivate static let method_get_texture_samples: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture_samples")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 407791724)!
            }
            
        }
        
    }()
    
    /// Returns the number of MSAA samples used.
    public final func getTextureSamples() -> RenderingDevice.TextureSamples {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_get_texture_samples, handle, nil, &_result)
        return RenderingDevice.TextureSamples (rawValue: _result)!
    }
    
    fileprivate static let method_get_screen_space_aa: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_screen_space_aa")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 641513172)!
            }
            
        }
        
    }()
    
    /// Returns the screen-space antialiasing method applied.
    public final func getScreenSpaceAa() -> RenderingServer.ViewportScreenSpaceAA {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_get_screen_space_aa, handle, nil, &_result)
        return RenderingServer.ViewportScreenSpaceAA (rawValue: _result)!
    }
    
    fileprivate static let method_get_use_taa: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_use_taa")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if TAA is enabled.
    public final func getUseTaa() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_get_use_taa, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_use_debanding: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_use_debanding")
        return withUnsafePointer(to: &RenderSceneBuffersRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if debanding is enabled.
    public final func getUseDebanding() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RenderSceneBuffersRD.method_get_use_debanding, handle, nil, &_result)
        return _result
    }
    
}

