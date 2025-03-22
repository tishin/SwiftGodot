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


/// A horizontal line used for separating other controls.
/// 
/// A horizontal separator used for separating other controls that are arranged **vertically**. ``HSeparator`` is purely visual and normally drawn as a ``StyleBoxLine``.
open class HSeparator: Separator {
    fileprivate static var className = StringName("HSeparator")
    override open class var godotClassName: StringName { className }
}

