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


/// A visual shader node that gets a value of a varying.
/// 
/// Outputs a value of a varying defined in the shader. You need to first create a varying that can be used in the given function, e.g. varying getter in Fragment shader requires a varying with mode set to ``VisualShader/VaryingMode/vertexToFragLight``.
open class VisualShaderNodeVaryingGetter: VisualShaderNodeVarying {
    private static var className = StringName("VisualShaderNodeVaryingGetter")
    override open class var godotClassName: StringName { className }
}

