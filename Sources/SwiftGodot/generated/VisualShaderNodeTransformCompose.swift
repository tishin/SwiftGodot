// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Composes a ``Transform3D`` from four ``Vector3``s within the visual shader graph.
/// 
/// Creates a 4×4 transform matrix using four vectors of type `vec3`. Each vector is one row in the matrix and the last column is a `vec4(0, 0, 0, 1)`.
open class VisualShaderNodeTransformCompose: VisualShaderNode {
    override open class var godotClassName: StringName { "VisualShaderNodeTransformCompose" }
}

