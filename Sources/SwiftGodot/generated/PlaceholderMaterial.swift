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


/// Placeholder class for a material.
/// 
/// This class is used when loading a project that uses a ``Material`` subclass in 2 conditions:
/// 
/// - When running the project exported in dedicated server mode, only the texture's dimensions are kept (as they may be relied upon for gameplay purposes or positioning of other elements). This allows reducing the exported PCK's size significantly.
/// 
/// - When this subclass is missing due to using a different engine version or build (e.g. modules disabled).
/// 
open class PlaceholderMaterial: Material {
    private static var className = StringName("PlaceholderMaterial")
    override open class var godotClassName: StringName { className }
}

