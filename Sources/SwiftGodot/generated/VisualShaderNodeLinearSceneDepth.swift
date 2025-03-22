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


/// A visual shader node that returns the depth value of the DEPTH_TEXTURE node in a linear space.
/// 
/// This node can be used in fragment shaders.
open class VisualShaderNodeLinearSceneDepth: VisualShaderNode {
    fileprivate static var className = StringName("VisualShaderNodeLinearSceneDepth")
    override open class var godotClassName: StringName { className }
}

