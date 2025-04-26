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


/// Exporter for the Web.
/// 
/// The Web exporter customizes how a web build is handled. In the editor's "Export" window, it is created when adding a new "Web" preset.
/// 
/// > Note: Godot on Web is rendered inside a `<canvas>` tag. Normally, the canvas cannot be positioned or resized manually, but otherwise acts as the main ``Window`` of the application.
/// 
open class EditorExportPlatformWeb: EditorExportPlatform {
    private static var className = StringName("EditorExportPlatformWeb")
    override open class var godotClassName: StringName { className }
}

