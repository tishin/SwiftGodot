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


/// Returns the vector that points in the direction of refraction. For use within the visual shader graph.
/// 
/// Translated to `refract(I, N, eta)` in the shader language, where `I` is the incident vector, `N` is the normal vector and `eta` is the ratio of the indices of the refraction.
open class VisualShaderNodeVectorRefract: VisualShaderNodeVectorBase {
    private static var className = StringName("VisualShaderNodeVectorRefract")
    override open class var godotClassName: StringName { className }
}

