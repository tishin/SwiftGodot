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


/// Base class for 3-dimensional textures.
/// 
/// Base class for ``ImageTexture3D`` and ``CompressedTexture3D``. Cannot be used directly, but contains all the functions necessary for accessing the derived resource types. ``Texture3D`` is the base class for all 3-dimensional texture types. See also ``TextureLayered``.
/// 
/// All images need to have the same width, height and number of mipmap levels.
/// 
/// To create such a texture file yourself, reimport your image files using the Godot Editor import presets.
/// 
open class Texture3D: Texture {
    private static var className = StringName("Texture3D")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__get_format: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_format")
        return withUnsafePointer(to: &Texture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3847873762)!
            }
            
        }
        
    }()
    
    /// Called when the ``Texture3D``'s format is queried.
    @_documentation(visibility: public)
    open func _getFormat() -> Image.Format {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(Texture3D.method__get_format, handle, nil, &_result)
        return Image.Format (rawValue: _result)!
    }
    
    fileprivate static let method__get_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_width")
        return withUnsafePointer(to: &Texture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Called when the ``Texture3D``'s width is queried.
    @_documentation(visibility: public)
    open func _getWidth() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Texture3D.method__get_width, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_height: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_height")
        return withUnsafePointer(to: &Texture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Called when the ``Texture3D``'s height is queried.
    @_documentation(visibility: public)
    open func _getHeight() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Texture3D.method__get_height, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_depth: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_depth")
        return withUnsafePointer(to: &Texture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Called when the ``Texture3D``'s depth is queried.
    @_documentation(visibility: public)
    open func _getDepth() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Texture3D.method__get_depth, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__has_mipmaps: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_has_mipmaps")
        return withUnsafePointer(to: &Texture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Called when the presence of mipmaps in the ``Texture3D`` is queried.
    @_documentation(visibility: public)
    open func _hasMipmaps() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Texture3D.method__has_mipmaps, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_data")
        return withUnsafePointer(to: &Texture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Called when the ``Texture3D``'s data is queried.
    @_documentation(visibility: public)
    open func _getData() -> TypedArray<Image?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(Texture3D.method__get_data, handle, nil, &_result)
        return TypedArray<Image?>(takingOver: _result)
    }
    
    fileprivate static let method_get_format: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_format")
        return withUnsafePointer(to: &Texture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3847873762)!
            }
            
        }
        
    }()
    
    /// Returns the current format being used by this texture. See ``Image.Format`` for details.
    public final func getFormat() -> Image.Format {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(Texture3D.method_get_format, handle, nil, &_result)
        return Image.Format (rawValue: _result)!
    }
    
    fileprivate static let method_get_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_width")
        return withUnsafePointer(to: &Texture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the ``Texture3D``'s width in pixels. Width is typically represented by the X axis.
    public final func getWidth() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Texture3D.method_get_width, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_height: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_height")
        return withUnsafePointer(to: &Texture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the ``Texture3D``'s height in pixels. Width is typically represented by the Y axis.
    public final func getHeight() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Texture3D.method_get_height, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_depth: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_depth")
        return withUnsafePointer(to: &Texture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the ``Texture3D``'s depth in pixels. Depth is typically represented by the Z axis (a dimension not present in ``Texture2D``).
    public final func getDepth() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Texture3D.method_get_depth, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_has_mipmaps: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_mipmaps")
        return withUnsafePointer(to: &Texture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the ``Texture3D`` has generated mipmaps.
    public final func hasMipmaps() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Texture3D.method_has_mipmaps, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_data")
        return withUnsafePointer(to: &Texture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns the ``Texture3D``'s data as an array of ``Image``s. Each ``Image`` represents a _slice_ of the ``Texture3D``, with different slices mapping to different depth (Z axis) levels.
    public final func getData() -> TypedArray<Image?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(Texture3D.method_get_data, handle, nil, &_result)
        return TypedArray<Image?>(takingOver: _result)
    }
    
    fileprivate static let method_create_placeholder: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_placeholder")
        return withUnsafePointer(to: &Texture3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 121922552)!
            }
            
        }
        
    }()
    
    /// Creates a placeholder version of this resource (``PlaceholderTexture3D``).
    public final func createPlaceholder() -> Resource? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(Texture3D.method_create_placeholder, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_data":
                return _Texture3D_proxy_get_data
            case "_get_depth":
                return _Texture3D_proxy_get_depth
            case "_get_format":
                return _Texture3D_proxy_get_format
            case "_get_height":
                return _Texture3D_proxy_get_height
            case "_get_width":
                return _Texture3D_proxy_get_width
            case "_has_mipmaps":
                return _Texture3D_proxy_has_mipmaps
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _Texture3D_proxy_get_data (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? Texture3D else { return }
    let ret = swiftObject._getData ()
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Image
}

func _Texture3D_proxy_get_depth (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? Texture3D else { return }
    let ret = swiftObject._getDepth ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _Texture3D_proxy_get_format (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? Texture3D else { return }
    let ret = swiftObject._getFormat ()
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _Texture3D_proxy_get_height (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? Texture3D else { return }
    let ret = swiftObject._getHeight ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _Texture3D_proxy_get_width (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? Texture3D else { return }
    let ret = swiftObject._getWidth ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _Texture3D_proxy_has_mipmaps (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? Texture3D else { return }
    let ret = swiftObject._hasMipmaps ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

