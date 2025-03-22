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


/// A container that arranges its child controls vertically.
/// 
/// A variant of ``BoxContainer`` that can only arrange its child controls vertically. Child controls are rearranged automatically when their minimum size changes.
open class VBoxContainer: BoxContainer {
    fileprivate static var className = StringName("VBoxContainer")
    override open class var godotClassName: StringName { className }
}

