// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A ``Texture2D`` based on an ``Image``.
/// 
/// A ``Texture2D`` based on an ``Image``. For an image to be displayed, an ``ImageTexture`` has to be created from it using the ``createFromImage(_:)`` method:
/// 
/// This way, textures can be created at run-time by loading images both from within the editor and externally.
/// 
/// > Warning: Prefer to load imported textures with ``@GDScript.load`` over loading them from within the filesystem dynamically with ``Image/load(path:)``, as it may not work in exported projects:
/// 
/// This is because images have to be imported as a ``CompressedTexture2D`` first to be loaded with ``@GDScript.load``. If you'd still like to load an image file just like any other ``Resource``, import it as an ``Image`` resource instead, and then load it normally using the ``@GDScript.load`` method.
/// 
/// > Note: The image can be retrieved from an imported texture using the ``Texture2D/getImage()`` method, which returns a copy of the image:
/// 
/// An ``ImageTexture`` is not meant to be operated from within the editor interface directly, and is mostly useful for rendering images on screen dynamically via code. If you need to generate images procedurally from within the editor, consider saving and importing images as custom texture resources implementing a new ``EditorImportPlugin``.
/// 
/// > Note: The maximum texture size is 16384×16384 pixels due to graphics hardware limitations.
/// 
open class ImageTexture: Texture2D {
    override open class var godotClassName: StringName { "ImageTexture" }
    /* Methods */
    fileprivate static var method_create_from_image: GDExtensionMethodBindPtr = {
        let methodName = StringName("create_from_image")
        return withUnsafePointer(to: &ImageTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2775144163)!
            }
            
        }
        
    }()
    
    /// Creates a new ``ImageTexture`` and initializes it by allocating and setting the data from an ``Image``.
    public static func createFromImage(_ image: Image?) -> ImageTexture? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: image?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_create_from_image, nil, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_get_format: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_format")
        return withUnsafePointer(to: &ImageTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3847873762)!
            }
            
        }
        
    }()
    
    /// Returns the format of the texture, one of ``Image.Format``.
    public final func getFormat() -> Image.Format {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(ImageTexture.method_get_format, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return Image.Format (rawValue: _result)!
    }
    
    fileprivate static var method_set_image: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_image")
        return withUnsafePointer(to: &ImageTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 532598488)!
            }
            
        }
        
    }()
    
    /// Replaces the texture's data with a new ``Image``. This will re-allocate new memory for the texture.
    /// 
    /// If you want to update the image, but don't need to change its parameters (format, size), use ``update(image:)`` instead for better performance.
    /// 
    public final func setImage(_ image: Image?) {
        withUnsafePointer(to: image?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImageTexture.method_set_image, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_update: GDExtensionMethodBindPtr = {
        let methodName = StringName("update")
        return withUnsafePointer(to: &ImageTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 532598488)!
            }
            
        }
        
    }()
    
    /// Replaces the texture's data with a new ``Image``.
    /// 
    /// > Note: The texture has to be created using ``createFromImage(_:)`` or initialized first with the ``setImage(_:)`` method before it can be updated. The new image dimensions, format, and mipmaps configuration should match the existing texture's image configuration.
    /// 
    /// Use this method over ``setImage(_:)`` if you need to update the texture frequently, which is faster than allocating additional memory for a new texture each time.
    /// 
    public final func update(image: Image?) {
        withUnsafePointer(to: image?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImageTexture.method_update, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_size_override: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_size_override")
        return withUnsafePointer(to: &ImageTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1130785943)!
            }
            
        }
        
    }()
    
    /// Resizes the texture to the specified dimensions.
    public final func setSizeOverride(size: Vector2i) {
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImageTexture.method_set_size_override, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}

