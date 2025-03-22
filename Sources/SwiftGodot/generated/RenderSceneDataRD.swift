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


/// Render scene data implementation for the RenderingDevice based renderers.
/// 
/// Object holds scene data related to rendering a single frame of a viewport.
/// 
/// > Note: This is an internal rendering server object, do not instantiate this from script.
/// 
open class RenderSceneDataRD: RenderSceneData {
    fileprivate static var className = StringName("RenderSceneDataRD")
    override open class var godotClassName: StringName { className }
}

