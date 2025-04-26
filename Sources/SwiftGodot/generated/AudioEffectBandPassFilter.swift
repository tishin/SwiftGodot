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


/// Adds a band pass filter to the audio bus.
/// 
/// Attenuates the frequencies inside of a range around the ``AudioEffectFilter/cutoffHz`` and cuts frequencies outside of this band.
open class AudioEffectBandPassFilter: AudioEffectFilter {
    private static var className = StringName("AudioEffectBandPassFilter")
    override open class var godotClassName: StringName { className }
}

