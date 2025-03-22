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


/// A visual shader node that makes particles emitted in a sphere shape.
/// 
/// ``VisualShaderNodeParticleEmitter`` that makes the particles emitted in sphere shape with the specified inner and outer radii.
open class VisualShaderNodeParticleSphereEmitter: VisualShaderNodeParticleEmitter {
    fileprivate static var className = StringName("VisualShaderNodeParticleSphereEmitter")
    override open class var godotClassName: StringName { className }
}

