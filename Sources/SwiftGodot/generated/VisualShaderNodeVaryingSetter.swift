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


/// A visual shader node that sets a value of a varying.
/// 
/// Inputs a value to a varying defined in the shader. You need to first create a varying that can be used in the given function, e.g. varying setter in Fragment shader requires a varying with mode set to ``VisualShader/VaryingMode/fragToLight``.
open class VisualShaderNodeVaryingSetter: VisualShaderNodeVarying {
    fileprivate static var className = StringName("VisualShaderNodeVaryingSetter")
    override open class var godotClassName: StringName { className }
}

