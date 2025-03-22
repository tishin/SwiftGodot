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


/// Adds a high-shelf filter to the audio bus.
/// 
/// Reduces all frequencies above the ``AudioEffectFilter/cutoffHz``.
open class AudioEffectHighShelfFilter: AudioEffectFilter {
    fileprivate static var className = StringName("AudioEffectHighShelfFilter")
    override open class var godotClassName: StringName { className }
}

