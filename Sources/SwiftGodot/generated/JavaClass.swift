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


/// Represents an object from the Java Native Interface.
/// 
/// Represents an object from the Java Native Interface. It is returned from ``JavaClassWrapper/wrap(name:)``.
/// 
/// > Note: This class only works on Android. For any other build, this class does nothing.
/// 
/// > Note: This class is not to be confused with ``JavaScriptObject``.
/// 
open class JavaClass: RefCounted {
    fileprivate static var className = StringName("JavaClass")
    override open class var godotClassName: StringName { className }
}

