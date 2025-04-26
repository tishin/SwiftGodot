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


/// Texture Array for 2D that is bound to a texture created on the ``RenderingDevice``.
/// 
/// This texture array class allows you to use a 2D array texture created directly on the ``RenderingDevice`` as a texture for materials, meshes, etc.
open class Texture2DArrayRD: TextureLayeredRD {
    private static var className = StringName("Texture2DArrayRD")
    override open class var godotClassName: StringName { className }
}

