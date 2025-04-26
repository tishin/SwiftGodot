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


/// Imports a bitmap font where all glyphs have the same width and height.
/// 
/// This image-based workflow can be easier to use than ``ResourceImporterBMFont``, but it requires all glyphs to have the same width and height, glyph advances and drawing offsets can be customized. This makes ``ResourceImporterImageFont`` most suited to fixed-width fonts.
/// 
/// See also ``ResourceImporterDynamicFont``.
/// 
open class ResourceImporterImageFont: ResourceImporter {
    private static var className = StringName("ResourceImporterImageFont")
    override open class var godotClassName: StringName { className }
}

