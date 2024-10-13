// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Abstract class extended by lightmappers, for use in ``LightmapGI``.
/// 
/// This class should be extended by custom lightmapper classes. Lightmappers can then be used with ``LightmapGI`` to provide fast baked global illumination in 3D.
/// 
/// Godot contains a built-in GPU-based lightmapper ``LightmapperRD`` that uses compute shaders, but custom lightmappers can be implemented by C++ modules.
/// 
open class Lightmapper: RefCounted {
    override open class var godotClassName: StringName { "Lightmapper" }
}

