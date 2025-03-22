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


/// A visual shader node for shader parameter (uniform) of type ``Texture2DArray``.
/// 
/// This parameter allows to provide a collection of textures for the shader. You can use ``VisualShaderNodeTexture2DArray`` to extract the textures from array.
open class VisualShaderNodeTexture2DArrayParameter: VisualShaderNodeTextureParameter {
    fileprivate static var className = StringName("VisualShaderNodeTexture2DArrayParameter")
    override open class var godotClassName: StringName { className }
}

