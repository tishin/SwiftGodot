// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Base class for texture types which contain the data of multiple ``Image``s. Each image is of the same size and format.
/// 
/// Base class for ``ImageTextureLayered`` and ``CompressedTextureLayered``. Cannot be used directly, but contains all the functions necessary for accessing the derived resource types. See also ``Texture3D``.
/// 
/// Data is set on a per-layer basis. For ``Texture2DArray``s, the layer specifies the array layer.
/// 
/// All images need to have the same width, height and number of mipmap levels.
/// 
/// A ``TextureLayered`` can be loaded with ``ResourceLoader/load(path:typeHint:cacheMode:)``.
/// 
/// Internally, Godot maps these files to their respective counterparts in the target rendering driver (Vulkan, OpenGL3).
/// 
open class TextureLayered: Texture {
    override open class var godotClassName: StringName { "TextureLayered" }
    public enum LayeredType: Int64 {
        /// Texture is a generic ``Texture2DArray``.
        case layeredType2dArray = 0 // LAYERED_TYPE_2D_ARRAY
        /// Texture is a ``Cubemap``, with each side in its own layer (6 in total).
        case cubemap = 1 // LAYERED_TYPE_CUBEMAP
        /// Texture is a ``CubemapArray``, with each cubemap being made of 6 layers.
        case cubemapArray = 2 // LAYERED_TYPE_CUBEMAP_ARRAY
    }
    
    /* Methods */
    /// Called when the ``TextureLayered``'s format is queried.
    @_documentation(visibility: public)
    open func _getFormat ()-> Image.Format {
        return Image.Format(rawValue: 0)!
    }
    
    /// Called when the layers' type in the ``TextureLayered`` is queried.
    @_documentation(visibility: public)
    open func _getLayeredType ()-> UInt32 {
        return 0
    }
    
    /// Called when the ``TextureLayered``'s width queried.
    @_documentation(visibility: public)
    open func _getWidth ()-> Int32 {
        return 0
    }
    
    /// Called when the ``TextureLayered``'s height is queried.
    @_documentation(visibility: public)
    open func _getHeight ()-> Int32 {
        return 0
    }
    
    /// Called when the number of layers in the ``TextureLayered`` is queried.
    @_documentation(visibility: public)
    open func _getLayers ()-> Int32 {
        return 0
    }
    
    /// Called when the presence of mipmaps in the ``TextureLayered`` is queried.
    @_documentation(visibility: public)
    open func _hasMipmaps ()-> Bool {
        return false
    }
    
    /// Called when the data for a layer in the ``TextureLayered`` is queried.
    @_documentation(visibility: public)
    open func _getLayerData (layerIndex: Int32)-> Image? {
        return Image ()
    }
    
    fileprivate static var method_get_format: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_format")
        return withUnsafePointer (to: &TextureLayered.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3847873762)!
            }
            
        }
        
    }()
    
    /// Returns the current format being used by this texture. See ``Image.Format`` for details.
    public final func getFormat ()-> Image.Format {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (TextureLayered.method_get_format, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return Image.Format (rawValue: _result)!
    }
    
    fileprivate static var method_get_layered_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_layered_type")
        return withUnsafePointer (to: &TextureLayered.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 518123893)!
            }
            
        }
        
    }()
    
    /// Returns the ``TextureLayered``'s type. The type determines how the data is accessed, with cubemaps having special types.
    public final func getLayeredType ()-> TextureLayered.LayeredType {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (TextureLayered.method_get_layered_type, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return TextureLayered.LayeredType (rawValue: _result)!
    }
    
    fileprivate static var method_get_width: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_width")
        return withUnsafePointer (to: &TextureLayered.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the width of the texture in pixels. Width is typically represented by the X axis.
    public final func getWidth ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (TextureLayered.method_get_width, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_height: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_height")
        return withUnsafePointer (to: &TextureLayered.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the height of the texture in pixels. Height is typically represented by the Y axis.
    public final func getHeight ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (TextureLayered.method_get_height, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_layers: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_layers")
        return withUnsafePointer (to: &TextureLayered.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of referenced ``Image``s.
    public final func getLayers ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (TextureLayered.method_get_layers, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_has_mipmaps: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_mipmaps")
        return withUnsafePointer (to: &TextureLayered.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the layers have generated mipmaps.
    public final func hasMipmaps ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (TextureLayered.method_has_mipmaps, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_layer_data: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_layer_data")
        return withUnsafePointer (to: &TextureLayered.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3655284255)!
            }
            
        }
        
    }()
    
    /// Returns an ``Image`` resource with the data from specified `layer`.
    public final func getLayerData (layer: Int32)-> Image? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if true
        
        var copy_layer: Int = Int (layer)
        
        gi.object_method_bind_ptrcall_v (TextureLayered.method_get_layer_data, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_layer)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        var copy_layer: Int = Int (layer)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_layer) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (TextureLayered.method_get_layer_data, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_format":
                return _TextureLayered_proxy_get_format
            case "_get_height":
                return _TextureLayered_proxy_get_height
            case "_get_layer_data":
                return _TextureLayered_proxy_get_layer_data
            case "_get_layered_type":
                return _TextureLayered_proxy_get_layered_type
            case "_get_layers":
                return _TextureLayered_proxy_get_layers
            case "_get_width":
                return _TextureLayered_proxy_get_width
            case "_has_mipmaps":
                return _TextureLayered_proxy_has_mipmaps
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _TextureLayered_proxy_get_format (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<TextureLayered>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getFormat ()
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _TextureLayered_proxy_get_height (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<TextureLayered>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getHeight ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _TextureLayered_proxy_get_layer_data (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<TextureLayered>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getLayerData (layerIndex: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret?.handle, as: UnsafeRawPointer?.self) // Image
}

func _TextureLayered_proxy_get_layered_type (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<TextureLayered>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getLayeredType ()
    retPtr!.storeBytes (of: ret, as: UInt32.self)
}

func _TextureLayered_proxy_get_layers (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<TextureLayered>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getLayers ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _TextureLayered_proxy_get_width (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<TextureLayered>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getWidth ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _TextureLayered_proxy_has_mipmaps (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<TextureLayered>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._hasMipmaps ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}
