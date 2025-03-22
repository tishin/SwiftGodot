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


/// Calculates a dot product of two vectors within the visual shader graph.
/// 
/// Translates to `dot(a, b)` in the shader language.
open class VisualShaderNodeDotProduct: VisualShaderNode {
    fileprivate static var className = StringName("VisualShaderNodeDotProduct")
    override open class var godotClassName: StringName { className }
}

