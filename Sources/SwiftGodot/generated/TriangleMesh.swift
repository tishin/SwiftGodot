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


/// Internal mesh type.
/// 
/// Mesh type used internally for collision calculations.
open class TriangleMesh: RefCounted {
    fileprivate static var className = StringName("TriangleMesh")
    override open class var godotClassName: StringName { className }
}

