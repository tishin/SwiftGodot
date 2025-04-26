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


/// A wrapper class for web native JavaScript objects.
/// 
/// JavaScriptObject is used to interact with JavaScript objects retrieved or created via ``JavaScriptBridge/getInterface(_:)``, ``JavaScriptBridge/createObject(_:)``, or ``JavaScriptBridge/createCallback(callable:)``.
/// 
/// > Note: Only available in the Web platform.
/// 
open class JavaScriptObject: RefCounted {
    private static var className = StringName("JavaScriptObject")
    override open class var godotClassName: StringName { className }
}

