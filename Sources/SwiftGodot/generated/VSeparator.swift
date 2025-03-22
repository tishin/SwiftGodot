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


/// A vertical line used for separating other controls.
/// 
/// A vertical separator used for separating other controls that are arranged **horizontally**. ``VSeparator`` is purely visual and normally drawn as a ``StyleBoxLine``.
open class VSeparator: Separator {
    fileprivate static var className = StringName("VSeparator")
    override open class var godotClassName: StringName { className }
}

