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


/// A container that keeps a margin around its child controls.
/// 
/// ``MarginContainer`` adds an adjustable margin on each side of its child controls. The margins are added around all children, not around each individual one. To control the ``MarginContainer``'s margins, use the `margin_*` theme properties listed below.
/// 
/// > Note: The margin sizes are theme overrides, not normal properties. This is an example of how to change them in code:
/// 
open class MarginContainer: Container {
    fileprivate static var className = StringName("MarginContainer")
    override open class var godotClassName: StringName { className }
}

