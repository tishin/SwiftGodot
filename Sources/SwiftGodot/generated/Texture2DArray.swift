// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A single texture resource which consists of multiple, separate images. Each image has the same dimensions and number of mipmap levels.
/// 
/// A Texture2DArray is different from a Texture3D: The Texture2DArray does not support trilinear interpolation between the ``Image``s, i.e. no blending. See also ``Cubemap`` and ``CubemapArray``, which are texture arrays with specialized cubemap functions.
/// 
/// A Texture2DArray is also different from an ``AtlasTexture``: In a Texture2DArray, all images are treated separately. In an atlas, the regions (i.e. the single images) can be of different sizes. Furthermore, you usually need to add a padding around the regions, to prevent accidental UV mapping to more than one region. The same goes for mipmapping: Mipmap chains are handled separately for each layer. In an atlas, the slicing has to be done manually in the fragment shader.
/// 
/// To create such a texture file yourself, reimport your image files using the Godot Editor import presets.
/// 
open class Texture2DArray: ImageTextureLayered {
    override open class var godotClassName: StringName { "Texture2DArray" }
    /* Methods */
    fileprivate static var method_create_placeholder: GDExtensionMethodBindPtr = {
        let methodName = StringName("create_placeholder")
        return withUnsafePointer(to: &Texture2DArray.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 121922552)!
            }
            
        }
        
    }()
    
    /// Creates a placeholder version of this resource (``PlaceholderTexture2DArray``).
    public final func createPlaceholder() -> Resource? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(Texture2DArray.method_create_placeholder, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
}

