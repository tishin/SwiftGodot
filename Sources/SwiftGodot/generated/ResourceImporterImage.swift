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


/// Imports a image for use in scripting, with no rendering capabilities.
/// 
/// This importer imports ``Image`` resources, as opposed to ``CompressedTexture2D``. If you need to render the image in 2D or 3D, use ``ResourceImporterTexture`` instead.
open class ResourceImporterImage: ResourceImporter {
    private static var className = StringName("ResourceImporterImage")
    override open class var godotClassName: StringName { className }
}

