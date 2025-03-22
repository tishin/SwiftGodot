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


/// Abstract base class for separators.
/// 
/// Abstract base class for separators, used for separating other controls. ``Separator``s are purely visual and normally drawn as a ``StyleBoxLine``.
open class Separator: Control {
    fileprivate static var className = StringName("Separator")
    override open class var godotClassName: StringName { className }
}

