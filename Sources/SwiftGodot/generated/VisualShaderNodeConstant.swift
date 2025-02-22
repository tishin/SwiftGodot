// This file is auto-generated, do not edit.
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
#if canImport(Darwin)
import Darwin
#elseif os(Windows)
import ucrt
import WinSDK
#elseif canImport(Glibc)
import Glibc
#elseif canImport(Musl)
import Musl
#else
#error("Unable to identify your C library.")
#endif
#endif


/// A base type for the constants within the visual shader graph.
/// 
/// This is an abstract class. See the derived types for descriptions of the possible values.
open class VisualShaderNodeConstant: VisualShaderNode {
    override open class var godotClassName: StringName { "VisualShaderNodeConstant" }
}

