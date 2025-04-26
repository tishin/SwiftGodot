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


/// Composes a ``Transform3D`` from four ``Vector3``s within the visual shader graph.
/// 
/// Creates a 4×4 transform matrix using four vectors of type `vec3`. Each vector is one row in the matrix and the last column is a `vec4(0, 0, 0, 1)`.
open class VisualShaderNodeTransformCompose: VisualShaderNode {
    private static var className = StringName("VisualShaderNodeTransformCompose")
    override open class var godotClassName: StringName { className }
}

