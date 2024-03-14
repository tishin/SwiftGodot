// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Imports a collection of textures from a PNG image into an optimized ``AtlasTexture`` for 2D rendering.
/// 
/// This imports a collection of textures from a PNG image into an ``AtlasTexture`` or 2D ``ArrayMesh``. This can be used to save memory when importing 2D animations from spritesheets. Texture atlases are only supported in 2D rendering, not 3D. See also ``ResourceImporterTexture`` and ``ResourceImporterLayeredTexture``.
/// 
/// > Note: ``ResourceImporterTextureAtlas`` does not handle importing ``TileSetAtlasSource``, which is created using the ``TileSet`` editor instead.
/// 
open class ResourceImporterTextureAtlas: ResourceImporter {
    override open class var godotClassName: StringName { "ResourceImporterTextureAtlas" }
}
