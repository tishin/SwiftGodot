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


/// A horizontal scrollbar that goes from left (min) to right (max).
/// 
/// A horizontal scrollbar, typically used to navigate through content that extends beyond the visible width of a control. It is a ``Range``-based control and goes from left (min) to right (max).
open class HScrollBar: ScrollBar {
    private static var className = StringName("HScrollBar")
    override open class var godotClassName: StringName { className }
}

