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


/// Provides a 2D texture parameter within the visual shader graph.
/// 
/// Translated to `uniform sampler2D` in the shader language.
open class VisualShaderNodeTexture2DParameter: VisualShaderNodeTextureParameter {
    private static var className = StringName("VisualShaderNodeTexture2DParameter")
    override open class var godotClassName: StringName { className }
}

