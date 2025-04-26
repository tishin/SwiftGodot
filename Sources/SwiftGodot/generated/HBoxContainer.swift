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


/// A container that arranges its child controls horizontally.
/// 
/// A variant of ``BoxContainer`` that can only arrange its child controls horizontally. Child controls are rearranged automatically when their minimum size changes.
open class HBoxContainer: BoxContainer {
    private static var className = StringName("HBoxContainer")
    override open class var godotClassName: StringName { className }
}

