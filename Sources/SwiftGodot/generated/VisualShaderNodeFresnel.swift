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


/// A Fresnel effect to be used within the visual shader graph.
/// 
/// Returns falloff based on the dot product of surface normal and view direction of camera (pass associated inputs to it).
open class VisualShaderNodeFresnel: VisualShaderNode {
    private static var className = StringName("VisualShaderNodeFresnel")
    override open class var godotClassName: StringName { className }
}

