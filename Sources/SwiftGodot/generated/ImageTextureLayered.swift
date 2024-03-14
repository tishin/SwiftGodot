// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Base class for texture types which contain the data of multiple ``ImageTexture``s. Each image is of the same size and format.
/// 
/// Base class for ``Texture2DArray``, ``Cubemap`` and ``CubemapArray``. Cannot be used directly, but contains all the functions necessary for accessing the derived resource types. See also ``Texture3D``.
open class ImageTextureLayered: TextureLayered {
    override open class var godotClassName: StringName { "ImageTextureLayered" }
    /* Methods */
    fileprivate static var method_create_from_images: GDExtensionMethodBindPtr = {
        let methodName = StringName ("create_from_images")
        return withUnsafePointer (to: &ImageTextureLayered.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2785773503)!
            }
            
        }
        
    }()
    
    /// Creates an ``ImageTextureLayered`` from an array of ``Image``s. See ``Image/create(width:height:useMipmaps:format:)`` for the expected data format. The first image decides the width, height, image format and mipmapping setting. The other images _must_ have the same width, height, image format and mipmapping setting.
    /// 
    /// Each ``Image`` represents one `layer`.
    /// 
    public final func createFromImages (_ images: ObjectCollection<Image>)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        
        gi.object_method_bind_ptrcall_v (ImageTextureLayered.method_create_from_images, UnsafeMutableRawPointer (mutating: handle), &_result, &images.array.content)
        return GodotError (rawValue: _result)!
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &images.array.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ImageTextureLayered.method_create_from_images, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return GodotError (rawValue: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_update_layer: GDExtensionMethodBindPtr = {
        let methodName = StringName ("update_layer")
        return withUnsafePointer (to: &ImageTextureLayered.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3331733361)!
            }
            
        }
        
    }()
    
    /// Replaces the existing ``Image`` data at the given `layer` with this new image.
    /// 
    /// The given ``Image`` must have the same width, height, image format, and mipmapping flag as the rest of the referenced images.
    /// 
    /// If the image format is unsupported, it will be decompressed and converted to a similar and supported ``Image.Format``.
    /// 
    /// The update is immediate: it's synchronized with drawing.
    /// 
    public final func updateLayer (image: Image?, layer: Int32) {
        #if true
        
        var copy_layer: Int = Int (layer)
        var copy_image_handle = image?.handle
        
        gi.object_method_bind_ptrcall_v (ImageTextureLayered.method_update_layer, UnsafeMutableRawPointer (mutating: handle), nil, &copy_image_handle, &copy_layer)
        
        #else
        
        var copy_layer: Int = Int (layer)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: image?.handle) { p0 in
        _args.append (image == nil ? nil : p0)
            withUnsafePointer (to: &copy_layer) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (ImageTextureLayered.method_update_layer, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
}
