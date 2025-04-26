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


/// A custom global visual shader graph expression written in Godot Shading Language.
/// 
/// Custom Godot Shader Language expression, which is placed on top of the generated shader. You can place various function definitions inside to call later in ``VisualShaderNodeExpression``s (which are injected in the main shader functions). You can also declare varyings, uniforms and global constants.
open class VisualShaderNodeGlobalExpression: VisualShaderNodeExpression {
    private static var className = StringName("VisualShaderNodeGlobalExpression")
    override open class var godotClassName: StringName { className }
}

