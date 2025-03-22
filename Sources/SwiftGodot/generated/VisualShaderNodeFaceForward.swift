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


/// Returns the vector that points in the same direction as a reference vector within the visual shader graph.
/// 
/// Translates to `faceforward(N, I, Nref)` in the shader language. The function has three vector parameters: `N`, the vector to orient, `I`, the incident vector, and `Nref`, the reference vector. If the dot product of `I` and `Nref` is smaller than zero the return value is `N`. Otherwise, `-N` is returned.
open class VisualShaderNodeFaceForward: VisualShaderNodeVectorBase {
    fileprivate static var className = StringName("VisualShaderNodeFaceForward")
    override open class var godotClassName: StringName { className }
}

