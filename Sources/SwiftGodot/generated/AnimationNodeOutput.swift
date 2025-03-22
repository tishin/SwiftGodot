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


/// The animation output node of an ``AnimationNodeBlendTree``.
/// 
/// A node created automatically in an ``AnimationNodeBlendTree`` that outputs the final animation.
open class AnimationNodeOutput: AnimationNode {
    fileprivate static var className = StringName("AnimationNodeOutput")
    override open class var godotClassName: StringName { className }
}

