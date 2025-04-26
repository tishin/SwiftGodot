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


/// A PBR (Physically Based Rendering) material to be used on 3D objects. Uses an ORM texture.
/// 
/// ORMMaterial3D's properties are inherited from ``BaseMaterial3D``. Unlike ``StandardMaterial3D``, ORMMaterial3D uses a single texture for ambient occlusion, roughness and metallic maps, known as an ORM texture.
open class ORMMaterial3D: BaseMaterial3D {
    private static var className = StringName("ORMMaterial3D")
    override open class var godotClassName: StringName { className }
}

