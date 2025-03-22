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


/// A visual shader node representing proximity fade effect.
/// 
/// The proximity fade effect fades out each pixel based on its distance to another object.
open class VisualShaderNodeProximityFade: VisualShaderNode {
    fileprivate static var className = StringName("VisualShaderNodeProximityFade")
    override open class var godotClassName: StringName { className }
}

