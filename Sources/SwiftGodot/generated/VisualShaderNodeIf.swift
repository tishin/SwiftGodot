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


/// Outputs a 3D vector based on the result of a floating-point comparison within the visual shader graph.
/// 
/// This visual shader node has six input ports:
/// 
/// - Port **1** and **2** provide the two floating-point numbers `a` and `b` that will be compared.
/// 
/// - Port **3** is the tolerance, which allows similar floating-point numbers to be considered equal.
/// 
/// - Ports **4**, **5**, and **6** are the possible outputs, returned if `a == b`, `a > b`, or `a < b` respectively.
/// 
open class VisualShaderNodeIf: VisualShaderNode {
    fileprivate static var className = StringName("VisualShaderNodeIf")
    override open class var godotClassName: StringName { className }
}

