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


/// Six square textures representing the faces of a cube. Commonly used as a skybox.
/// 
/// A cubemap is made of 6 textures organized in layers. They are typically used for faking reflections in 3D rendering (see ``ReflectionProbe``). It can be used to make an object look as if it's reflecting its surroundings. This usually delivers much better performance than other reflection methods.
/// 
/// This resource is typically used as a uniform in custom shaders. Few core Godot methods make use of ``Cubemap`` resources.
/// 
/// To create such a texture file yourself, reimport your image files using the Godot Editor import presets. To create a Cubemap from code, use ``ImageTextureLayered/createFromImages(_:)`` on an instance of the Cubemap class.
/// 
/// The expected image order is X+, X-, Y+, Y-, Z+, Z- (in Godot's coordinate system, so Y+ is "up" and Z- is "forward"). You can use one of the following templates as a base:
/// 
/// - <a href="https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_2x3.webp">2×3 cubemap template (default layout option)</a>
/// 
/// - <a href="https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_3x2.webp">3×2 cubemap template</a>
/// 
/// - <a href="https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_1x6.webp">1×6 cubemap template</a>
/// 
/// - <a href="https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_6x1.webp">6×1 cubemap template</a>
/// 
/// > Note: Godot doesn't support using cubemaps in a ``PanoramaSkyMaterial``. To use a cubemap as a skybox, convert the default ``PanoramaSkyMaterial`` to a ``ShaderMaterial`` using the **Convert to ShaderMaterial** resource dropdown option, then replace its code with the following:
/// 
/// After replacing the shader code and saving, specify the imported Cubemap resource in the Shader Parameters section of the ShaderMaterial in the inspector.
/// 
/// Alternatively, you can use <a href="https://danilw.github.io/GLSL-howto/cubemap_to_panorama_js/cubemap_to_panorama.html">this tool</a> to convert a cubemap to an equirectangular sky map and use ``PanoramaSkyMaterial`` as usual.
/// 
open class Cubemap: ImageTextureLayered {
    private static var className = StringName("Cubemap")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_create_placeholder: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_placeholder")
        return withUnsafePointer(to: &Cubemap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 121922552)!
            }
            
        }
        
    }()
    
    /// Creates a placeholder version of this resource (``PlaceholderCubemap``).
    public final func createPlaceholder() -> Resource? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(Cubemap.method_create_placeholder, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
}

