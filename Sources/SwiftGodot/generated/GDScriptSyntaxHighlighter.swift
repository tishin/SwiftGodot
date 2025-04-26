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


/// A GDScript syntax highlighter that can be used with ``TextEdit`` and ``CodeEdit`` nodes.
/// 
/// > Note: This class can only be used for editor plugins because it relies on editor settings.
/// 
open class GDScriptSyntaxHighlighter: EditorSyntaxHighlighter {
    private static var className = StringName("GDScriptSyntaxHighlighter")
    override open class var godotClassName: StringName { className }
}

