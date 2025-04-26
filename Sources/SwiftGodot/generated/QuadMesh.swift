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


/// Class representing a square mesh facing the camera.
/// 
/// Class representing a square ``PrimitiveMesh``. This flat mesh does not have a thickness. By default, this mesh is aligned on the X and Y axes; this rotation is more suited for use with billboarded materials. A ``QuadMesh`` is equivalent to a ``PlaneMesh`` except its default ``PlaneMesh/orientation`` is ``PlaneMesh/Orientation/z``.
open class QuadMesh: PlaneMesh {
    private static var className = StringName("QuadMesh")
    override open class var godotClassName: StringName { className }
}

