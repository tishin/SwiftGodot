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


/// Decomposes a ``Vector2``, ``Vector3`` or 4D vector (represented as a ``Quaternion``) into scalars within the visual shader graph.
/// 
/// Takes a `vec2`, `vec3` or `vec4` and decomposes it into scalar values that can be used as separate outputs.
open class VisualShaderNodeVectorDecompose: VisualShaderNodeVectorBase {
    private static var className = StringName("VisualShaderNodeVectorDecompose")
    override open class var godotClassName: StringName { className }
}

