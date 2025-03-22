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


/// Decomposes a ``Transform3D`` into four ``Vector3``s within the visual shader graph.
/// 
/// Takes a 4×4 transform matrix and decomposes it into four `vec3` values, one from each row of the matrix.
open class VisualShaderNodeTransformDecompose: VisualShaderNode {
    fileprivate static var className = StringName("VisualShaderNodeTransformDecompose")
    override open class var godotClassName: StringName { className }
}

