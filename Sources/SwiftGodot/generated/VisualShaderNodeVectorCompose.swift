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


/// Composes a ``Vector2``, ``Vector3`` or 4D vector (represented as a ``Quaternion``) from scalars within the visual shader graph.
/// 
/// Creates a `vec2`, `vec3` or `vec4` using scalar values that can be provided from separate inputs.
open class VisualShaderNodeVectorCompose: VisualShaderNodeVectorBase {
    fileprivate static var className = StringName("VisualShaderNodeVectorCompose")
    override open class var godotClassName: StringName { className }
}

