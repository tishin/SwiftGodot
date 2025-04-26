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


/// A visual shader node representing distance fade effect.
/// 
/// The distance fade effect fades out each pixel based on its distance to another object.
open class VisualShaderNodeDistanceFade: VisualShaderNode {
    private static var className = StringName("VisualShaderNodeDistanceFade")
    override open class var godotClassName: StringName { className }
}

