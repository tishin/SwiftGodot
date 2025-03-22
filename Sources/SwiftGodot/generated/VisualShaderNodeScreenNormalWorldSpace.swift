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


/// A visual shader node that unpacks the screen normal texture in World Space.
/// 
/// The ScreenNormalWorldSpace node allows to create outline effects.
open class VisualShaderNodeScreenNormalWorldSpace: VisualShaderNode {
    fileprivate static var className = StringName("VisualShaderNodeScreenNormalWorldSpace")
    override open class var godotClassName: StringName { className }
}

