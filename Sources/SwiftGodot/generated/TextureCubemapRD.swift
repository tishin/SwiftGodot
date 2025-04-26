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


/// Texture for Cubemap that is bound to a texture created on the ``RenderingDevice``.
/// 
/// This texture class allows you to use a cubemap texture created directly on the ``RenderingDevice`` as a texture for materials, meshes, etc.
open class TextureCubemapRD: TextureLayeredRD {
    private static var className = StringName("TextureCubemapRD")
    override open class var godotClassName: StringName { className }
}

