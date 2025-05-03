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


/// A plugin that advanced tooltip for its handled resource type.
/// 
/// Resource tooltip plugins are used by ``FileSystemDock`` to generate customized tooltips for specific resources. E.g. tooltip for a ``Texture2D`` displays a bigger preview and the texture's dimensions.
/// 
/// A plugin must be first registered with ``FileSystemDock/addResourceTooltipPlugin(_:)``. When the user hovers a resource in filesystem dock which is handled by the plugin, ``_makeTooltipForPath(_:metadata:base:)`` is called to create the tooltip. It works similarly to ``Control/_makeCustomTooltip(forText:)``.
/// 
open class EditorResourceTooltipPlugin: RefCounted {
    private static var className = StringName("EditorResourceTooltipPlugin")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__handles: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_handles")
        return withUnsafePointer(to: &EditorResourceTooltipPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Return `true` if the plugin is going to handle the given ``Resource`` `type`.
    @_documentation(visibility: public)
    open func _handles(type: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let type = GString(type)
        withUnsafePointer(to: type.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorResourceTooltipPlugin.method__handles, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__make_tooltip_for_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_make_tooltip_for_path")
        return withUnsafePointer(to: &EditorResourceTooltipPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4100114520)!
            }
            
        }
        
    }()
    
    /// Create and return a tooltip that will be displayed when the user hovers a resource under the given `path` in filesystem dock.
    /// 
    /// The `metadata` dictionary is provided by preview generator (see ``EditorResourcePreviewGenerator/_generate(resource:size:metadata:)``).
    /// 
    /// `base` is the base default tooltip, which is a ``VBoxContainer`` with a file name, type and size labels. If another plugin handled the same file type, `base` will be output from the previous plugin. For best result, make sure the base tooltip is part of the returned ``Control``.
    /// 
    /// > Note: It's unadvised to use ``ResourceLoader/load(path:typeHint:cacheMode:)``, especially with heavy resources like models or textures, because it will make the editor unresponsive when creating the tooltip. You can use ``requestThumbnail(path:control:)`` if you want to display a preview in your tooltip.
    /// 
    /// > Note: If you decide to discard the `base`, make sure to call ``Node/queueFree()``, because it's not freed automatically.
    /// 
    @_documentation(visibility: public)
    open func _makeTooltipForPath(_ path: String, metadata: VariantDictionary, base: Control?) -> Control? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: metadata.content) { pArg1 in
                withUnsafePointer(to: base?.handle) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorResourceTooltipPlugin.method__make_tooltip_for_path, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_request_thumbnail: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("request_thumbnail")
        return withUnsafePointer(to: &EditorResourceTooltipPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3245519720)!
            }
            
        }
        
    }()
    
    /// Requests a thumbnail for the given ``TextureRect``. The thumbnail is created asynchronously by ``EditorResourcePreview`` and automatically set when available.
    public final func requestThumbnail(path: String, control: TextureRect?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: control?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorResourceTooltipPlugin.method_request_thumbnail, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_handles":
                return _EditorResourceTooltipPlugin_proxy_handles
            case "_make_tooltip_for_path":
                return _EditorResourceTooltipPlugin_proxy_make_tooltip_for_path
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _EditorResourceTooltipPlugin_proxy_handles (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorResourceTooltipPlugin else { return }
    let ret = swiftObject._handles (type: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorResourceTooltipPlugin_proxy_make_tooltip_for_path (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorResourceTooltipPlugin else { return }
    let resolved_2 = args [2]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._makeTooltipForPath (GString.stringFromGStringPtr (ptr: args [0]!) ?? "", metadata: VariantDictionary (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee), base: resolved_2 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_2!, ownsRef: false) as? Control)
    retPtr!.storeBytes (of: ret?.handle, as:  GodotNativeObjectPointer?.self) // Control
}

