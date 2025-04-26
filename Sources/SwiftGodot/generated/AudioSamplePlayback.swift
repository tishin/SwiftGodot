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


/// Meta class for playing back audio samples.
/// 
/// Meta class for playing back audio samples.
open class AudioSamplePlayback: RefCounted {
    private static var className = StringName("AudioSamplePlayback")
    override open class var godotClassName: StringName { className }
}

