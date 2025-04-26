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


/// Render data implementation for the RenderingDevice based renderers.
/// 
/// > Note: This is an internal rendering server object, do not instantiate this from script.
/// 
/// 
/// This object manages all render data for the rendering device based renderers.
/// 
/// > Note: This is an internal rendering server object only exposed for GDExtension plugins.
/// 
open class RenderDataRD: RenderData {
    private static var className = StringName("RenderDataRD")
    override open class var godotClassName: StringName { className }
}

