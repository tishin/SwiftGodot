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


/// Adds a band limit filter to the audio bus.
/// 
/// Limits the frequencies in a range around the ``AudioEffectFilter/cutoffHz`` and allows frequencies outside of this range to pass.
open class AudioEffectBandLimitFilter: AudioEffectFilter {
    fileprivate static var className = StringName("AudioEffectBandLimitFilter")
    override open class var godotClassName: StringName { className }
}

