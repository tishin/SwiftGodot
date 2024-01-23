// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// The built-in GPU-based lightmapper for use with ``LightmapGI``.
/// 
/// LightmapperRD ("RD" stands for ``RenderingDevice``) is the built-in GPU-based lightmapper for use with ``LightmapGI``. On most dedicated GPUs, it can bake lightmaps much faster than most CPU-based lightmappers. LightmapperRD uses compute shaders to bake lightmaps, so it does not require CUDA or OpenCL libraries to be installed to be usable.
/// 
/// > Note: Only usable when using the Vulkan backend (Forward+ or Mobile), not OpenGL.
/// 
open class LightmapperRD: Lightmapper {
    override open class var godotClassName: StringName { "LightmapperRD" }
}

