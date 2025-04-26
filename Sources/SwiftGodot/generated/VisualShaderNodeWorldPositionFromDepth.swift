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


/// A visual shader node that calculates the position of the pixel in world space using the depth texture.
/// 
/// The WorldPositionFromDepth node reconstructs the depth position of the pixel in world space. This can be used to obtain world space UVs for projection mapping like Caustics.
open class VisualShaderNodeWorldPositionFromDepth: VisualShaderNode {
    private static var className = StringName("VisualShaderNodeWorldPositionFromDepth")
    override open class var godotClassName: StringName { className }
}

