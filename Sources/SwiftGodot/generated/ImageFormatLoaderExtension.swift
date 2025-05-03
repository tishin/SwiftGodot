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


/// Base class for creating ``ImageFormatLoader`` extensions (adding support for extra image formats).
/// 
/// The engine supports multiple image formats out of the box (PNG, SVG, JPEG, WebP to name a few), but you can choose to implement support for additional image formats by extending this class.
/// 
/// Be sure to respect the documented return types and values. You should create an instance of it, and call ``addFormatLoader()`` to register that loader during the initialization phase.
/// 
open class ImageFormatLoaderExtension: ImageFormatLoader {
    private static var className = StringName("ImageFormatLoaderExtension")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__get_recognized_extensions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_recognized_extensions")
        return withUnsafePointer(to: &ImageFormatLoaderExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns the list of file extensions for this image format. Files with the given extensions will be treated as image file and loaded using this class.
    @_documentation(visibility: public)
    open func _getRecognizedExtensions() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(ImageFormatLoaderExtension.method__get_recognized_extensions, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__load_image: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_load_image")
        return withUnsafePointer(to: &ImageFormatLoaderExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3760540541)!
            }
            
        }
        
    }()
    
    /// Loads the content of `fileaccess` into the provided `image`.
    @_documentation(visibility: public)
    open func _loadImage(_ image: Image?, fileaccess: FileAccess?, flags: ImageFormatLoader.LoaderFlags, scale: Double) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: image?.handle) { pArg0 in
            withUnsafePointer(to: fileaccess?.handle) { pArg1 in
                withUnsafePointer(to: flags.rawValue) { pArg2 in
                    withUnsafePointer(to: scale) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(ImageFormatLoaderExtension.method__load_image, handle, pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_add_format_loader: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_format_loader")
        return withUnsafePointer(to: &ImageFormatLoaderExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Add this format loader to the engine, allowing it to recognize the file extensions returned by ``_getRecognizedExtensions()``.
    public final func addFormatLoader() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ImageFormatLoaderExtension.method_add_format_loader, handle, nil, nil)
        
    }
    
    fileprivate static let method_remove_format_loader: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_format_loader")
        return withUnsafePointer(to: &ImageFormatLoaderExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Remove this format loader from the engine.
    public final func removeFormatLoader() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ImageFormatLoaderExtension.method_remove_format_loader, handle, nil, nil)
        
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_recognized_extensions":
                return _ImageFormatLoaderExtension_proxy_get_recognized_extensions
            case "_load_image":
                return _ImageFormatLoaderExtension_proxy_load_image
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _ImageFormatLoaderExtension_proxy_get_recognized_extensions (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ImageFormatLoaderExtension else { return }
    let ret = swiftObject._getRecognizedExtensions ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _ImageFormatLoaderExtension_proxy_load_image (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ImageFormatLoaderExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    let resolved_1 = args [1]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._loadImage (resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Image, fileaccess: resolved_1 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_1!, ownsRef: false) as? FileAccess, flags: args [2]!.assumingMemoryBound (to: ImageFormatLoader.LoaderFlags.self).pointee, scale: args [3]!.assumingMemoryBound (to: Double.self).pointee)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

