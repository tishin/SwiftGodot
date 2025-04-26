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


/// A time-scaling animation node used in ``AnimationTree``.
/// 
/// Allows to scale the speed of the animation (or reverse it) in any child ``AnimationNode``s. Setting it to `0.0` will pause the animation.
open class AnimationNodeTimeScale: AnimationNode {
    private static var className = StringName("AnimationNodeTimeScale")
    override open class var godotClassName: StringName { className }
}

