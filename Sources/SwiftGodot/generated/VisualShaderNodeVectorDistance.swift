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


/// Returns the distance between two points. To be used within the visual shader graph.
/// 
/// Calculates distance from point represented by vector `p0` to vector `p1`.
/// 
/// Translated to `distance(p0, p1)` in the shader language.
/// 
open class VisualShaderNodeVectorDistance: VisualShaderNodeVectorBase {
    private static var className = StringName("VisualShaderNodeVectorDistance")
    override open class var godotClassName: StringName { className }
}

