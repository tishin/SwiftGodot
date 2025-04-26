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


/// Binding modifier that applies on individual actions related to an interaction profile.
/// 
/// Binding modifier that applies on individual actions related to an interaction profile.
open class OpenXRActionBindingModifier: OpenXRBindingModifier {
    private static var className = StringName("OpenXRActionBindingModifier")
    override open class var godotClassName: StringName { className }
}

