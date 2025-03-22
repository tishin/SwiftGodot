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


/// A visual shader node for remap function.
/// 
/// Remap will transform the input range into output range, e.g. you can change a `0..1` value to `-2..2` etc. See ``@GlobalScope.remap`` for more details.
open class VisualShaderNodeRemap: VisualShaderNode {
    fileprivate static var className = StringName("VisualShaderNodeRemap")
    override open class var godotClassName: StringName { className }
}

