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


/// Imports native GLSL shaders (not Godot shaders) as a ``RDShaderFile``.
/// 
/// This imports native GLSL shaders as ``RDShaderFile`` resources, for use with low-level ``RenderingDevice`` operations. This importer does _not_ handle `.gdshader` files.
open class ResourceImporterShaderFile: ResourceImporter {
    private static var className = StringName("ResourceImporterShaderFile")
    override open class var godotClassName: StringName { className }
}

