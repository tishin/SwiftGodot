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


/// Blends two of three animations additively inside of an ``AnimationNodeBlendTree``.
/// 
/// A resource to add to an ``AnimationNodeBlendTree``. Blends two animations out of three additively out of three based on the amount value.
/// 
/// This animation node has three inputs:
/// 
/// - The base animation to add to
/// 
/// - A "-add" animation to blend with when the blend amount is negative
/// 
/// - A "+add" animation to blend with when the blend amount is positive
/// 
/// If the absolute value of the amount is greater than `1.0`, the animation connected to "in" port is blended with the amplified animation connected to "-add"/"+add" port.
/// 
open class AnimationNodeAdd3: AnimationNodeSync {
    fileprivate static var className = StringName("AnimationNodeAdd3")
    override open class var godotClassName: StringName { className }
}

