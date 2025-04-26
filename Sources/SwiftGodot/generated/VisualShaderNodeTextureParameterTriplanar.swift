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


/// Performs a uniform texture lookup with triplanar within the visual shader graph.
/// 
/// Performs a lookup operation on the texture provided as a uniform for the shader, with support for triplanar mapping.
open class VisualShaderNodeTextureParameterTriplanar: VisualShaderNodeTextureParameter {
    private static var className = StringName("VisualShaderNodeTextureParameterTriplanar")
    override open class var godotClassName: StringName { className }
}

