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


/// Stores information about the audio buses.
/// 
/// Stores position, muting, solo, bypass, effects, effect position, volume, and the connections between buses. See ``AudioServer`` for usage.
open class AudioBusLayout: Resource {
    private static var className = StringName("AudioBusLayout")
    override open class var godotClassName: StringName { className }
}

