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


/// Plugin for adding custom context menus in the editor.
/// 
/// ``EditorContextMenuPlugin`` allows for the addition of custom options in the editor's context menu.
/// 
/// Currently, context menus are supported for three commonly used areas: the file system, scene tree, and editor script list panel.
/// 
open class EditorContextMenuPlugin: RefCounted {
    private static var className = StringName("EditorContextMenuPlugin")
    override open class var godotClassName: StringName { className }
    public enum ContextMenuSlot: Int64, CaseIterable {
        /// Context menu of Scene dock. ``_popupMenu(paths:)`` will be called with a list of paths to currently selected nodes, while option callback will receive the list of currently selected nodes.
        case sceneTree = 0 // CONTEXT_SLOT_SCENE_TREE
        /// Context menu of FileSystem dock. ``_popupMenu(paths:)`` and option callback will be called with list of paths of the currently selected files.
        case filesystem = 1 // CONTEXT_SLOT_FILESYSTEM
        /// Context menu of Script editor's script tabs. ``_popupMenu(paths:)`` will be called with the path to the currently edited script, while option callback will receive reference to that script.
        case scriptEditor = 2 // CONTEXT_SLOT_SCRIPT_EDITOR
        /// The "Create..." submenu of FileSystem dock's context menu. ``_popupMenu(paths:)`` and option callback will be called with list of paths of the currently selected files.
        case filesystemCreate = 3 // CONTEXT_SLOT_FILESYSTEM_CREATE
        /// Context menu of Script editor's code editor. ``_popupMenu(paths:)`` will be called with the path to the ``CodeEdit`` node. You can fetch it using this code:
        /// 
        /// The option callback will receive reference to that node. You can use ``CodeEdit`` methods to perform symbol lookups etc.
        /// 
        case scriptEditorCode = 4 // CONTEXT_SLOT_SCRIPT_EDITOR_CODE
        /// Context menu of scene tabs. ``_popupMenu(paths:)`` will be called with the path of the clicked scene, or empty ``PackedStringArray`` if the menu was opened on empty space. The option callback will receive the path of the clicked scene, or empty ``String`` if none was clicked.
        case sceneTabs = 5 // CONTEXT_SLOT_SCENE_TABS
        /// Context menu of 2D editor's basic right-click menu. ``_popupMenu(paths:)`` will be called with paths to all ``CanvasItem`` nodes under the cursor. You can fetch them using this code:
        /// 
        /// The paths array is empty if there weren't any nodes under cursor. The option callback will receive a typed array of ``CanvasItem`` nodes.
        /// 
        case contextSlot2dEditor = 6 // CONTEXT_SLOT_2D_EDITOR
    }
    
    /* Methods */
    fileprivate static let method__popup_menu: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_popup_menu")
        return withUnsafePointer(to: &EditorContextMenuPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4015028928)!
            }
            
        }
        
    }()
    
    /// Called when creating a context menu, custom options can be added by using the ``addContextMenuItem(name:callback:icon:)`` or ``addContextMenuItemFromShortcut(name:shortcut:icon:)`` functions. `paths` contains currently selected paths (depending on menu), which can be used to conditionally add options.
    @_documentation(visibility: public)
    open func _popupMenu(paths: PackedStringArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: paths.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorContextMenuPlugin.method__popup_menu, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_menu_shortcut: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_menu_shortcut")
        return withUnsafePointer(to: &EditorContextMenuPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 851596305)!
            }
            
        }
        
    }()
    
    /// Registers a shortcut associated with the plugin's context menu. This method should be called once (e.g. in plugin's ``Object/_init()``). `callback` will be called when user presses the specified `shortcut` while the menu's context is in effect (e.g. FileSystem dock is focused). Callback should take single ``VariantArray`` argument; array contents depend on context menu slot.
    /// 
    public final func addMenuShortcut(_ shortcut: Shortcut?, callback: Callable) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shortcut?.handle) { pArg0 in
            withUnsafePointer(to: callback.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorContextMenuPlugin.method_add_menu_shortcut, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_context_menu_item: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_context_menu_item")
        return withUnsafePointer(to: &EditorContextMenuPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2748336951)!
            }
            
        }
        
    }()
    
    /// Add custom option to the context menu of the plugin's specified slot. When the option is activated, `callback` will be called. Callback should take single ``VariantArray`` argument; array contents depend on context menu slot.
    /// 
    /// If you want to assign shortcut to the menu item, use ``addContextMenuItemFromShortcut(name:shortcut:icon:)`` instead.
    /// 
    public final func addContextMenuItem(name: String, callback: Callable, icon: Texture2D? = nil) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: callback.content) { pArg1 in
                withUnsafePointer(to: icon?.handle) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorContextMenuPlugin.method_add_context_menu_item, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_context_menu_item_from_shortcut: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_context_menu_item_from_shortcut")
        return withUnsafePointer(to: &EditorContextMenuPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3799546916)!
            }
            
        }
        
    }()
    
    /// Add custom option to the context menu of the plugin's specified slot. The option will have the `shortcut` assigned and reuse its callback. The shortcut has to be registered beforehand with ``addMenuShortcut(_:callback:)``.
    /// 
    public final func addContextMenuItemFromShortcut(name: String, shortcut: Shortcut?, icon: Texture2D? = nil) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: shortcut?.handle) { pArg1 in
                withUnsafePointer(to: icon?.handle) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorContextMenuPlugin.method_add_context_menu_item_from_shortcut, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_context_submenu_item: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_context_submenu_item")
        return withUnsafePointer(to: &EditorContextMenuPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1994674995)!
            }
            
        }
        
    }()
    
    /// Add a submenu to the context menu of the plugin's specified slot. The submenu is not automatically handled, you need to connect to its signals yourself. Also the submenu is freed on every popup, so provide a new ``PopupMenu`` every time.
    /// 
    public final func addContextSubmenuItem(name: String, menu: PopupMenu?, icon: Texture2D? = nil) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: menu?.handle) { pArg1 in
                withUnsafePointer(to: icon?.handle) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorContextMenuPlugin.method_add_context_submenu_item, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_popup_menu":
                return _EditorContextMenuPlugin_proxy_popup_menu
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _EditorContextMenuPlugin_proxy_popup_menu (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorContextMenuPlugin else { return }
    swiftObject._popupMenu (paths: PackedStringArray (content: args [0]!.assumingMemoryBound (to: (Int64, Int64).self).pointee))
}

