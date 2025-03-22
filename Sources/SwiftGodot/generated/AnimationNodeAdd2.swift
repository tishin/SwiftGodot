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


/// Blends two animations additively inside of an ``AnimationNodeBlendTree``.
/// 
/// A resource to add to an ``AnimationNodeBlendTree``. Blends two animations additively based on the amount value.
/// 
/// If the amount is greater than `1.0`, the animation connected to "in" port is blended with the amplified animation connected to "add" port.
/// 
/// If the amount is less than `0.0`, the animation connected to "in" port is blended with the inverted animation connected to "add" port.
/// 
open class AnimationNodeAdd2: AnimationNodeSync {
    fileprivate static var className = StringName("AnimationNodeAdd2")
    override open class var godotClassName: StringName { className }
}

