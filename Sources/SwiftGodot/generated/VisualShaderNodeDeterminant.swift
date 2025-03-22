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


/// Calculates the determinant of a ``Transform3D`` within the visual shader graph.
/// 
/// Translates to `determinant(x)` in the shader language.
open class VisualShaderNodeDeterminant: VisualShaderNode {
    fileprivate static var className = StringName("VisualShaderNodeDeterminant")
    override open class var godotClassName: StringName { className }
}

