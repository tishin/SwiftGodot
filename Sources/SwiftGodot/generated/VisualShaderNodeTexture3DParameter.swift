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


/// Provides a 3D texture parameter within the visual shader graph.
/// 
/// Translated to `uniform sampler3D` in the shader language.
open class VisualShaderNodeTexture3DParameter: VisualShaderNodeTextureParameter {
    fileprivate static var className = StringName("VisualShaderNodeTexture3DParameter")
    override open class var godotClassName: StringName { className }
}

