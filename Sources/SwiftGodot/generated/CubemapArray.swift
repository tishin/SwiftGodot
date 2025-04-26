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


/// An array of ``Cubemap``s, stored together and with a single reference.
/// 
/// ``CubemapArray``s are made of an array of ``Cubemap``s. Like ``Cubemap``s, they are made of multiple textures, the amount of which must be divisible by 6 (one for each face of the cube).
/// 
/// The primary benefit of ``CubemapArray``s is that they can be accessed in shader code using a single texture reference. In other words, you can pass multiple ``Cubemap``s into a shader using a single ``CubemapArray``. ``Cubemap``s are allocated in adjacent cache regions on the GPU, which makes ``CubemapArray``s the most efficient way to store multiple ``Cubemap``s.
/// 
/// Godot uses ``CubemapArray``s internally for many effects, including the ``Sky`` if you set ``ProjectSettings/rendering/reflections/skyReflections/textureArrayReflections`` to `true`.
/// 
/// To create such a texture file yourself, reimport your image files using the Godot Editor import presets. To create a CubemapArray from code, use ``ImageTextureLayered/createFromImages(_:)`` on an instance of the CubemapArray class.
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
/// Multiple layers are stacked on top of each other when using the default vertical import option (with the first layer at the top). Alternatively, you can choose an horizontal layout in the import options (with the first layer at the left).
/// 
/// > Note: ``CubemapArray`` is not supported in the Compatibility renderer due to graphics API limitations.
/// 
open class CubemapArray: ImageTextureLayered {
    private static var className = StringName("CubemapArray")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_create_placeholder: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_placeholder")
        return withUnsafePointer(to: &CubemapArray.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 121922552)!
            }
            
        }
        
    }()
    
    /// Creates a placeholder version of this resource (``PlaceholderCubemapArray``).
    public final func createPlaceholder() -> Resource? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(CubemapArray.method_create_placeholder, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
}

