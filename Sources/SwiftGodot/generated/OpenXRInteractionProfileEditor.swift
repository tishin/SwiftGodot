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


/// Default OpenXR interaction profile editor.
/// 
/// This is the default OpenXR interaction profile editor that provides a generic interface for editing any interaction profile for which no custom editor has been defined.
open class OpenXRInteractionProfileEditor: OpenXRInteractionProfileEditorBase {
    private static var className = StringName("OpenXRInteractionProfileEditor")
    override open class var godotClassName: StringName { className }
}

