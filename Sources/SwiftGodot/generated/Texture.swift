// This file is auto-generated, do not edit.
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
#if canImport(Darwin)
import Darwin
#elseif os(Windows)
import ucrt
import WinSDK
#elseif canImport(Glibc)
import Glibc
#elseif canImport(Musl)
import Musl
#else
#error("Unable to identify your C library.")
#endif
#endif


/// Base class for all texture types.
/// 
/// ``Texture`` is the base class for all texture types. Common texture types are ``Texture2D`` and ``ImageTexture``. See also ``Image``.
open class Texture: Resource {
    override open class var godotClassName: StringName { "Texture" }
}

