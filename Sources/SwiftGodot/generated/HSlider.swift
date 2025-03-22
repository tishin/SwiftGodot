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


/// A horizontal slider that goes from left (min) to right (max).
/// 
/// A horizontal slider, used to adjust a value by moving a grabber along a horizontal axis. It is a ``Range``-based control and goes from left (min) to right (max).
open class HSlider: Slider {
    fileprivate static var className = StringName("HSlider")
    override open class var godotClassName: StringName { className }
}

