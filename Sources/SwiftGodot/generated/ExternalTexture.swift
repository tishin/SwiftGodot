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


/// Texture which displays the content of an external buffer.
/// 
/// Displays the content of an external buffer provided by the platform.
/// 
/// Requires the <a href="https://registry.khronos.org/OpenGL/extensions/OES/OES_EGL_image_external.txt">OES_EGL_image_external</a> extension (OpenGL) or <a href="https://registry.khronos.org/vulkan/specs/1.1-extensions/html/vkspec.html#VK_ANDROID_external_memory_android_hardware_buffer">VK_ANDROID_external_memory_android_hardware_buffer</a> extension (Vulkan).
/// 
/// > Note: This is currently only supported in Android builds.
/// 
open class ExternalTexture: Texture2D {
    private static var className = StringName("ExternalTexture")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// External texture size.
    final public var size: Vector2 {
        get {
            return getSize ()
        }
        
        set {
            set_size (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_size")
        return withUnsafePointer(to: &ExternalTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_size(_ size: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ExternalTexture.method_set_size, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_external_texture_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_external_texture_id")
        return withUnsafePointer(to: &ExternalTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the external texture ID.
    /// 
    /// Depending on your use case, you may need to pass this to platform APIs, for example, when creating an `android.graphics.SurfaceTexture` on Android.
    /// 
    public final func getExternalTextureId() -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        gi.object_method_bind_ptrcall(ExternalTexture.method_get_external_texture_id, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_external_buffer_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_external_buffer_id")
        return withUnsafePointer(to: &ExternalTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Sets the external buffer ID.
    /// 
    /// Depending on your use case, you may need to call this with data received from a platform API, for example, `SurfaceTexture.getHardwareBuffer()` on Android.
    /// 
    public final func setExternalBufferId(_ externalBufferId: UInt) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: externalBufferId) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ExternalTexture.method_set_external_buffer_id, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}

