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


/// OpenXR Haptic feedback base class.
/// 
/// This is a base class for haptic feedback resources.
open class OpenXRHapticBase: Resource {
    private static var className = StringName("OpenXRHapticBase")
    override open class var godotClassName: StringName { className }
}

