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


/// An empty ``StyleBox`` (does not display anything).
/// 
/// An empty ``StyleBox`` that can be used to display nothing instead of the default style (e.g. it can "disable" `focus` styles).
open class StyleBoxEmpty: StyleBox {
    fileprivate static var className = StringName("StyleBoxEmpty")
    override open class var godotClassName: StringName { className }
}

