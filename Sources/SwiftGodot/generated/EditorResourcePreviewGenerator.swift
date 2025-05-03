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


/// Custom generator of previews.
/// 
/// Custom code to generate previews. Check ``EditorSettings/filesystem/fileDialog/thumbnailSize`` to find a proper size to generate previews at.
open class EditorResourcePreviewGenerator: RefCounted {
    private static var className = StringName("EditorResourcePreviewGenerator")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__handles: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_handles")
        return withUnsafePointer(to: &EditorResourcePreviewGenerator.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns `true` if your generator supports the resource of type `type`.
    @_documentation(visibility: public)
    open func _handles(type: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let type = GString(type)
        withUnsafePointer(to: type.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorResourcePreviewGenerator.method__handles, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__generate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_generate")
        return withUnsafePointer(to: &EditorResourcePreviewGenerator.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 255939159)!
            }
            
        }
        
    }()
    
    /// Generate a preview from a given resource with the specified size. This must always be implemented.
    /// 
    /// Returning `null` is an OK way to fail and let another generator take care.
    /// 
    /// Care must be taken because this function is always called from a thread (not the main thread).
    /// 
    /// `metadata` dictionary can be modified to store file-specific metadata that can be used in ``EditorResourceTooltipPlugin/_makeTooltipForPath(_:metadata:base:)`` (like image size, sample length etc.).
    /// 
    @_documentation(visibility: public)
    open func _generate(resource: Resource?, size: Vector2i, metadata: VariantDictionary) -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: resource?.handle) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: metadata.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorResourcePreviewGenerator.method__generate, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__generate_from_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_generate_from_path")
        return withUnsafePointer(to: &EditorResourcePreviewGenerator.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1601192835)!
            }
            
        }
        
    }()
    
    /// Generate a preview directly from a path with the specified size. Implementing this is optional, as default code will load and call ``_generate(resource:size:metadata:)``.
    /// 
    /// Returning `null` is an OK way to fail and let another generator take care.
    /// 
    /// Care must be taken because this function is always called from a thread (not the main thread).
    /// 
    /// `metadata` dictionary can be modified to store file-specific metadata that can be used in ``EditorResourceTooltipPlugin/_makeTooltipForPath(_:metadata:base:)`` (like image size, sample length etc.).
    /// 
    @_documentation(visibility: public)
    open func _generateFromPath(_ path: String, size: Vector2i, metadata: VariantDictionary) -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: metadata.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorResourcePreviewGenerator.method__generate_from_path, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__generate_small_preview_automatically: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_generate_small_preview_automatically")
        return withUnsafePointer(to: &EditorResourcePreviewGenerator.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// If this function returns `true`, the generator will automatically generate the small previews from the normal preview texture generated by the methods ``_generate(resource:size:metadata:)`` or ``_generateFromPath(_:size:metadata:)``.
    /// 
    /// By default, it returns `false`.
    /// 
    @_documentation(visibility: public)
    open func _generateSmallPreviewAutomatically() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorResourcePreviewGenerator.method__generate_small_preview_automatically, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__can_generate_small_preview: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_can_generate_small_preview")
        return withUnsafePointer(to: &EditorResourcePreviewGenerator.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// If this function returns `true`, the generator will call ``_generate(resource:size:metadata:)`` or ``_generateFromPath(_:size:metadata:)`` for small previews as well.
    /// 
    /// By default, it returns `false`.
    /// 
    @_documentation(visibility: public)
    open func _canGenerateSmallPreview() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorResourcePreviewGenerator.method__can_generate_small_preview, handle, nil, &_result)
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_can_generate_small_preview":
                return _EditorResourcePreviewGenerator_proxy_can_generate_small_preview
            case "_generate":
                return _EditorResourcePreviewGenerator_proxy_generate
            case "_generate_from_path":
                return _EditorResourcePreviewGenerator_proxy_generate_from_path
            case "_generate_small_preview_automatically":
                return _EditorResourcePreviewGenerator_proxy_generate_small_preview_automatically
            case "_handles":
                return _EditorResourcePreviewGenerator_proxy_handles
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _EditorResourcePreviewGenerator_proxy_can_generate_small_preview (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorResourcePreviewGenerator else { return }
    let ret = swiftObject._canGenerateSmallPreview ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorResourcePreviewGenerator_proxy_generate (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorResourcePreviewGenerator else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._generate (resource: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Resource, size: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee, metadata: VariantDictionary (content: args [2]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret?.handle, as:  GodotNativeObjectPointer?.self) // Texture2D
}

func _EditorResourcePreviewGenerator_proxy_generate_from_path (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorResourcePreviewGenerator else { return }
    let ret = swiftObject._generateFromPath (GString.stringFromGStringPtr (ptr: args [0]!) ?? "", size: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee, metadata: VariantDictionary (content: args [2]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret?.handle, as:  GodotNativeObjectPointer?.self) // Texture2D
}

func _EditorResourcePreviewGenerator_proxy_generate_small_preview_automatically (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorResourcePreviewGenerator else { return }
    let ret = swiftObject._generateSmallPreviewAutomatically ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorResourcePreviewGenerator_proxy_handles (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorResourcePreviewGenerator else { return }
    let ret = swiftObject._handles (type: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

