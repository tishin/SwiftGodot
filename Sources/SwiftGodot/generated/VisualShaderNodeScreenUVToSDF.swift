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


/// A function to convert screen UV to an SDF (signed-distance field), to be used within the visual shader graph.
/// 
/// Translates to `screen_uv_to_sdf(uv)` in the shader language. If the UV port isn't connected, `SCREEN_UV` is used instead.
open class VisualShaderNodeScreenUVToSDF: VisualShaderNode {
    fileprivate static var className = StringName("VisualShaderNodeScreenUVToSDF")
    override open class var godotClassName: StringName { className }
}

