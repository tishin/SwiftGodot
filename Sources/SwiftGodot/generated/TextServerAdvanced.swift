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


/// An advanced text server with support for BiDi, complex text layout, and contextual OpenType features. Used in Godot by default.
/// 
/// An implementation of ``TextServer`` that uses HarfBuzz, ICU and SIL Graphite to support BiDi, complex text layouts and contextual OpenType features. This is Godot's default primary ``TextServer`` interface.
open class TextServerAdvanced: TextServerExtension {
    private static var className = StringName("TextServerAdvanced")
    override open class var godotClassName: StringName { className }
}

