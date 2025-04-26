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


/// A infinite plane collision that interacts with ``SpringBoneSimulator3D``.
/// 
/// A infinite plane collision that interacts with ``SpringBoneSimulator3D``. It is an infinite size XZ plane, and the +Y direction is treated as normal.
open class SpringBoneCollisionPlane3D: SpringBoneCollision3D {
    private static var className = StringName("SpringBoneCollisionPlane3D")
    override open class var godotClassName: StringName { className }
}

