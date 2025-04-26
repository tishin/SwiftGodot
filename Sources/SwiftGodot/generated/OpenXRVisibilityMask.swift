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


/// Draws a stereo correct visibility mask.
/// 
/// The visibility mask allows us to black out the part of the render result that is invisible due to lens distortion.
/// 
/// As this is rendered first, it prevents fragments with expensive lighting calculations to be processed as they are discarded through z-checking.
/// 
open class OpenXRVisibilityMask: VisualInstance3D {
    private static var className = StringName("OpenXRVisibilityMask")
    override open class var godotClassName: StringName { className }
}

