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


/// Used by the editor to extend its functionality.
/// 
/// Plugins are used by the editor to extend functionality. The most common types of plugins are those which edit a given node or resource type, import plugins and export plugins. See also ``EditorScript`` to add functions to the editor.
/// 
/// > Note: Some names in this class contain "left" or "right" (e.g. ``DockSlot/leftUl``). These APIs assume left-to-right layout, and would be backwards when using right-to-left layout. These names are kept for compatibility reasons.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``sceneChanged``
/// - ``sceneClosed``
/// - ``mainScreenChanged``
/// - ``resourceSaved``
/// - ``sceneSaved``
/// - ``projectSettingsChanged``
open class EditorPlugin: Node {
    private static var className = StringName("EditorPlugin")
    override open class var godotClassName: StringName { className }
    public enum CustomControlContainer: Int64, CaseIterable {
        /// Main editor toolbar, next to play buttons.
        case toolbar = 0 // CONTAINER_TOOLBAR
        /// The toolbar that appears when 3D editor is active.
        case spatialEditorMenu = 1 // CONTAINER_SPATIAL_EDITOR_MENU
        /// Left sidebar of the 3D editor.
        case spatialEditorSideLeft = 2 // CONTAINER_SPATIAL_EDITOR_SIDE_LEFT
        /// Right sidebar of the 3D editor.
        case spatialEditorSideRight = 3 // CONTAINER_SPATIAL_EDITOR_SIDE_RIGHT
        /// Bottom panel of the 3D editor.
        case spatialEditorBottom = 4 // CONTAINER_SPATIAL_EDITOR_BOTTOM
        /// The toolbar that appears when 2D editor is active.
        case canvasEditorMenu = 5 // CONTAINER_CANVAS_EDITOR_MENU
        /// Left sidebar of the 2D editor.
        case canvasEditorSideLeft = 6 // CONTAINER_CANVAS_EDITOR_SIDE_LEFT
        /// Right sidebar of the 2D editor.
        case canvasEditorSideRight = 7 // CONTAINER_CANVAS_EDITOR_SIDE_RIGHT
        /// Bottom panel of the 2D editor.
        case canvasEditorBottom = 8 // CONTAINER_CANVAS_EDITOR_BOTTOM
        /// Bottom section of the inspector.
        case inspectorBottom = 9 // CONTAINER_INSPECTOR_BOTTOM
        /// Tab of Project Settings dialog, to the left of other tabs.
        case projectSettingTabLeft = 10 // CONTAINER_PROJECT_SETTING_TAB_LEFT
        /// Tab of Project Settings dialog, to the right of other tabs.
        case projectSettingTabRight = 11 // CONTAINER_PROJECT_SETTING_TAB_RIGHT
    }
    
    public enum DockSlot: Int64, CaseIterable {
        /// Dock slot, left side, upper-left (empty in default layout).
        case leftUl = 0 // DOCK_SLOT_LEFT_UL
        /// Dock slot, left side, bottom-left (empty in default layout).
        case leftBl = 1 // DOCK_SLOT_LEFT_BL
        /// Dock slot, left side, upper-right (in default layout includes Scene and Import docks).
        case leftUr = 2 // DOCK_SLOT_LEFT_UR
        /// Dock slot, left side, bottom-right (in default layout includes FileSystem dock).
        case leftBr = 3 // DOCK_SLOT_LEFT_BR
        /// Dock slot, right side, upper-left (in default layout includes Inspector, Node, and History docks).
        case rightUl = 4 // DOCK_SLOT_RIGHT_UL
        /// Dock slot, right side, bottom-left (empty in default layout).
        case rightBl = 5 // DOCK_SLOT_RIGHT_BL
        /// Dock slot, right side, upper-right (empty in default layout).
        case rightUr = 6 // DOCK_SLOT_RIGHT_UR
        /// Dock slot, right side, bottom-right (empty in default layout).
        case rightBr = 7 // DOCK_SLOT_RIGHT_BR
        /// Represents the size of the ``EditorPlugin/DockSlot`` enum.
        case max = 8 // DOCK_SLOT_MAX
    }
    
    public enum AfterGUIInput: Int64, CaseIterable {
        /// Forwards the ``InputEvent`` to other EditorPlugins.
        case pass = 0 // AFTER_GUI_INPUT_PASS
        /// Prevents the ``InputEvent`` from reaching other Editor classes.
        case stop = 1 // AFTER_GUI_INPUT_STOP
        /// Pass the ``InputEvent`` to other editor plugins except the main ``Node3D`` one. This can be used to prevent node selection changes and work with sub-gizmos instead.
        case custom = 2 // AFTER_GUI_INPUT_CUSTOM
    }
    
    /* Methods */
    fileprivate static let method__forward_canvas_gui_input: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_forward_canvas_gui_input")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1062211774)!
            }
            
        }
        
    }()
    
    /// Called when there is a root node in the current edited scene, ``_handles(object:)`` is implemented, and an ``InputEvent`` happens in the 2D viewport. If this method returns `true`, `event` is intercepted by this ``EditorPlugin``, otherwise `event` is forwarded to other Editor classes.
    /// 
    /// This method must return `false` in order to forward the ``InputEvent`` to other Editor classes.
    /// 
    @_documentation(visibility: public)
    open func _forwardCanvasGuiInput(event: InputEvent?) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: event?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method__forward_canvas_gui_input, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__forward_canvas_draw_over_viewport: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_forward_canvas_draw_over_viewport")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1496901182)!
            }
            
        }
        
    }()
    
    /// Called by the engine when the 2D editor's viewport is updated. Use the `overlay` ``Control`` for drawing. You can update the viewport manually by calling ``updateOverlays()``.
    /// 
    @_documentation(visibility: public)
    open func _forwardCanvasDrawOverViewport(viewportControl: Control?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: viewportControl?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method__forward_canvas_draw_over_viewport, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__forward_canvas_force_draw_over_viewport: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_forward_canvas_force_draw_over_viewport")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1496901182)!
            }
            
        }
        
    }()
    
    /// This method is the same as ``_forwardCanvasDrawOverViewport(viewportControl:)``, except it draws on top of everything. Useful when you need an extra layer that shows over anything else.
    /// 
    /// You need to enable calling of this method by using ``setForceDrawOverForwardingEnabled()``.
    /// 
    @_documentation(visibility: public)
    open func _forwardCanvasForceDrawOverViewport(viewportControl: Control?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: viewportControl?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method__forward_canvas_force_draw_over_viewport, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__forward_3d_gui_input: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_forward_3d_gui_input")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1018736637)!
            }
            
        }
        
    }()
    
    /// Called when there is a root node in the current edited scene, ``_handles(object:)`` is implemented, and an ``InputEvent`` happens in the 3D viewport. The return value decides whether the ``InputEvent`` is consumed or forwarded to other ``EditorPlugin``s. See ``EditorPlugin/AfterGUIInput`` for options.
    /// 
    /// This method must return ``AfterGUIInput/pass`` in order to forward the ``InputEvent`` to other Editor classes.
    /// 
    @_documentation(visibility: public)
    open func _forward3dGuiInput(viewportCamera: Camera3D?, event: InputEvent?) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: viewportCamera?.handle) { pArg0 in
            withUnsafePointer(to: event?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorPlugin.method__forward_3d_gui_input, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__forward_3d_draw_over_viewport: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_forward_3d_draw_over_viewport")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1496901182)!
            }
            
        }
        
    }()
    
    /// Called by the engine when the 3D editor's viewport is updated. Use the `overlay` ``Control`` for drawing. You can update the viewport manually by calling ``updateOverlays()``.
    /// 
    @_documentation(visibility: public)
    open func _forward3dDrawOverViewport(viewportControl: Control?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: viewportControl?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method__forward_3d_draw_over_viewport, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__forward_3d_force_draw_over_viewport: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_forward_3d_force_draw_over_viewport")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1496901182)!
            }
            
        }
        
    }()
    
    /// This method is the same as ``_forward3dDrawOverViewport(viewportControl:)``, except it draws on top of everything. Useful when you need an extra layer that shows over anything else.
    /// 
    /// You need to enable calling of this method by using ``setForceDrawOverForwardingEnabled()``.
    /// 
    @_documentation(visibility: public)
    open func _forward3dForceDrawOverViewport(viewportControl: Control?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: viewportControl?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method__forward_3d_force_draw_over_viewport, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_plugin_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_plugin_name")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Override this method in your plugin to provide the name of the plugin when displayed in the Godot editor.
    /// 
    /// For main screen plugins, this appears at the top of the screen, to the right of the "2D", "3D", "Script", and "AssetLib" buttons.
    /// 
    @_documentation(visibility: public)
    open func _getPluginName() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorPlugin.method__get_plugin_name, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__get_plugin_icon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_plugin_icon")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    /// Override this method in your plugin to return a ``Texture2D`` in order to give it an icon.
    /// 
    /// For main screen plugins, this appears at the top of the screen, to the right of the "2D", "3D", "Script", and "AssetLib" buttons.
    /// 
    /// Ideally, the plugin icon should be white with a transparent background and 16×16 pixels in size.
    /// 
    @_documentation(visibility: public)
    open func _getPluginIcon() -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(EditorPlugin.method__get_plugin_icon, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__has_main_screen: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_has_main_screen")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this is a main screen editor plugin (it goes in the workspace selector together with **2D**, **3D**, **Script** and **AssetLib**).
    /// 
    /// When the plugin's workspace is selected, other main screen plugins will be hidden, but your plugin will not appear automatically. It needs to be added as a child of ``EditorInterface/getEditorMainScreen()`` and made visible inside ``_makeVisible(_:)``.
    /// 
    /// Use ``_getPluginName()`` and ``_getPluginIcon()`` to customize the plugin button's appearance.
    /// 
    @_documentation(visibility: public)
    open func _hasMainScreen() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorPlugin.method__has_main_screen, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__make_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_make_visible")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// This function will be called when the editor is requested to become visible. It is used for plugins that edit a specific object type.
    /// 
    /// Remember that you have to manage the visibility of all your editor controls manually.
    /// 
    @_documentation(visibility: public)
    open func _makeVisible(_ visible: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: visible) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method__make_visible, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__edit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_edit")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3975164845)!
            }
            
        }
        
    }()
    
    /// This function is used for plugins that edit specific object types (nodes or resources). It requests the editor to edit the given object.
    /// 
    /// `object` can be `null` if the plugin was editing an object, but there is no longer any selected object handled by this plugin. It can be used to cleanup editing state.
    /// 
    @_documentation(visibility: public)
    open func _edit(object: Object?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: object?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method__edit, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__handles: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_handles")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 397768994)!
            }
            
        }
        
    }()
    
    /// Implement this function if your plugin edits a specific type of object (Resource or Node). If you return `true`, then you will get the functions ``_edit(object:)`` and ``_makeVisible(_:)`` called when the editor requests them. If you have declared the methods ``_forwardCanvasGuiInput(event:)`` and ``_forward3dGuiInput(viewportCamera:event:)`` these will be called too.
    /// 
    /// > Note: Each plugin should handle only one type of objects at a time. If a plugin handles more types of objects and they are edited at the same time, it will result in errors.
    /// 
    @_documentation(visibility: public)
    open func _handles(object: Object?) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: object?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method__handles, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_state")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3102165223)!
            }
            
        }
        
    }()
    
    /// Override this method to provide a state data you want to be saved, like view position, grid settings, folding, etc. This is used when saving the scene (so state is kept when opening it again) and for switching tabs (so state can be restored when the tab returns). This data is automatically saved for each scene in an `editstate` file in the editor metadata folder. If you want to store global (scene-independent) editor data for your plugin, you can use ``_getWindowLayout(configuration:)`` instead.
    /// 
    /// Use ``_setState(_:)`` to restore your saved state.
    /// 
    /// > Note: This method should not be used to save important settings that should persist with the project.
    /// 
    /// > Note: You must implement ``_getPluginName()`` for the state to be stored and restored correctly.
    /// 
    @_documentation(visibility: public)
    open func _getState() -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: VariantDictionary = VariantDictionary ()
        gi.object_method_bind_ptrcall(EditorPlugin.method__get_state, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__set_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_state")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155329257)!
            }
            
        }
        
    }()
    
    /// Restore the state saved by ``_getState()``. This method is called when the current scene tab is changed in the editor.
    /// 
    /// > Note: Your plugin must implement ``_getPluginName()``, otherwise it will not be recognized and this method will not be called.
    /// 
    @_documentation(visibility: public)
    open func _setState(_ state: VariantDictionary) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: state.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method__set_state, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__clear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_clear")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clear all the state and reset the object being edited to zero. This ensures your plugin does not keep editing a currently existing node, or a node from the wrong scene.
    @_documentation(visibility: public)
    open func _clear() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(EditorPlugin.method__clear, handle, nil, nil)
        
    }
    
    fileprivate static let method__get_unsaved_status: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_unsaved_status")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3135753539)!
            }
            
        }
        
    }()
    
    /// Override this method to provide a custom message that lists unsaved changes. The editor will call this method when exiting or when closing a scene, and display the returned string in a confirmation dialog. Return empty string if the plugin has no unsaved changes.
    /// 
    /// When closing a scene, `forScene` is the path to the scene being closed. You can use it to handle built-in resources in that scene.
    /// 
    /// If the user confirms saving, ``_saveExternalData()`` will be called, before closing the editor.
    /// 
    /// If the plugin has no scene-specific changes, you can ignore the calls when closing scenes:
    /// 
    @_documentation(visibility: public)
    open func _getUnsavedStatus(forScene: String) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        let forScene = GString(forScene)
        withUnsafePointer(to: forScene.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method__get_unsaved_status, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__save_external_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_save_external_data")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// This method is called after the editor saves the project or when it's closed. It asks the plugin to save edited external scenes/resources.
    @_documentation(visibility: public)
    open func _saveExternalData() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(EditorPlugin.method__save_external_data, handle, nil, nil)
        
    }
    
    fileprivate static let method__apply_changes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_apply_changes")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// This method is called when the editor is about to save the project, switch to another tab, etc. It asks the plugin to apply any pending state changes to ensure consistency.
    /// 
    /// This is used, for example, in shader editors to let the plugin know that it must apply the shader code being written by the user to the object.
    /// 
    @_documentation(visibility: public)
    open func _applyChanges() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(EditorPlugin.method__apply_changes, handle, nil, nil)
        
    }
    
    fileprivate static let method__get_breakpoints: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_breakpoints")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// This is for editors that edit script-based objects. You can return a list of breakpoints in the format (`script:line`), for example: `res://path_to_script.gd:25`.
    @_documentation(visibility: public)
    open func _getBreakpoints() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(EditorPlugin.method__get_breakpoints, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__set_window_layout: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_window_layout")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 853519107)!
            }
            
        }
        
    }()
    
    /// Restore the plugin GUI layout and data saved by ``_getWindowLayout(configuration:)``. This method is called for every plugin on editor startup. Use the provided `configuration` file to read your saved data.
    /// 
    @_documentation(visibility: public)
    open func _setWindowLayout(configuration: ConfigFile?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: configuration?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method__set_window_layout, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_window_layout: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_window_layout")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 853519107)!
            }
            
        }
        
    }()
    
    /// Override this method to provide the GUI layout of the plugin or any other data you want to be stored. This is used to save the project's editor layout when ``queueSaveLayout()`` is called or the editor layout was changed (for example changing the position of a dock). The data is stored in the `editor_layout.cfg` file in the editor metadata directory.
    /// 
    /// Use ``_setWindowLayout(configuration:)`` to restore your saved layout.
    /// 
    @_documentation(visibility: public)
    open func _getWindowLayout(configuration: ConfigFile?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: configuration?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method__get_window_layout, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__build: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_build")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// This method is called when the editor is about to run the project. The plugin can then perform required operations before the project runs.
    /// 
    /// This method must return a boolean. If this method returns `false`, the project will not run. The run is aborted immediately, so this also prevents all other plugins' ``_build()`` methods from running.
    /// 
    @_documentation(visibility: public)
    open func _build() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorPlugin.method__build, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__enable_plugin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_enable_plugin")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called by the engine when the user enables the ``EditorPlugin`` in the Plugin tab of the project settings window.
    @_documentation(visibility: public)
    open func _enablePlugin() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(EditorPlugin.method__enable_plugin, handle, nil, nil)
        
    }
    
    fileprivate static let method__disable_plugin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_disable_plugin")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called by the engine when the user disables the ``EditorPlugin`` in the Plugin tab of the project settings window.
    @_documentation(visibility: public)
    open func _disablePlugin() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(EditorPlugin.method__disable_plugin, handle, nil, nil)
        
    }
    
    fileprivate static let method_add_control_to_container: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_control_to_container")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3092750152)!
            }
            
        }
        
    }()
    
    /// Adds a custom control to a container (see ``EditorPlugin/CustomControlContainer``). There are many locations where custom controls can be added in the editor UI.
    /// 
    /// Please remember that you have to manage the visibility of your custom controls yourself (and likely hide it after adding it).
    /// 
    /// When your plugin is deactivated, make sure to remove your custom control with ``removeControlFromContainer(_:control:)`` and free it with ``Node/queueFree()``.
    /// 
    public final func addControlToContainer(_ container: EditorPlugin.CustomControlContainer, control: Control?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: container.rawValue) { pArg0 in
            withUnsafePointer(to: control?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorPlugin.method_add_control_to_container, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_control_to_bottom_panel: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_control_to_bottom_panel")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 111032269)!
            }
            
        }
        
    }()
    
    /// Adds a control to the bottom panel (together with Output, Debug, Animation, etc.). Returns a reference to the button added. It's up to you to hide/show the button when needed. When your plugin is deactivated, make sure to remove your custom control with ``removeControlFromBottomPanel(control:)`` and free it with ``Node/queueFree()``.
    /// 
    /// Optionally, you can specify a shortcut parameter. When pressed, this shortcut will toggle the bottom panel's visibility. See the default editor bottom panel shortcuts in the Editor Settings for inspiration. Per convention, they all use [kbd]Alt[/kbd] modifier.
    /// 
    public final func addControlToBottomPanel(control: Control?, title: String, shortcut: Shortcut? = nil) -> Button? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: control?.handle) { pArg0 in
            let title = GString(title)
            withUnsafePointer(to: title.content) { pArg1 in
                withUnsafePointer(to: shortcut?.handle) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorPlugin.method_add_control_to_bottom_panel, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_add_control_to_dock: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_control_to_dock")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2994930786)!
            }
            
        }
        
    }()
    
    /// Adds the control to a specific dock slot (see ``EditorPlugin/DockSlot`` for options).
    /// 
    /// If the dock is repositioned and as long as the plugin is active, the editor will save the dock position on further sessions.
    /// 
    /// When your plugin is deactivated, make sure to remove your custom control with ``removeControlFromDocks(control:)`` and free it with ``Node/queueFree()``.
    /// 
    /// Optionally, you can specify a shortcut parameter. When pressed, this shortcut will toggle the dock's visibility once it's moved to the bottom panel (this shortcut does not affect the dock otherwise). See the default editor bottom panel shortcuts in the Editor Settings for inspiration. Per convention, they all use [kbd]Alt[/kbd] modifier.
    /// 
    public final func addControlToDock(slot: EditorPlugin.DockSlot, control: Control?, shortcut: Shortcut? = nil) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: slot.rawValue) { pArg0 in
            withUnsafePointer(to: control?.handle) { pArg1 in
                withUnsafePointer(to: shortcut?.handle) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorPlugin.method_add_control_to_dock, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_control_from_docks: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_control_from_docks")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1496901182)!
            }
            
        }
        
    }()
    
    /// Removes the control from the dock. You have to manually ``Node/queueFree()`` the control.
    public final func removeControlFromDocks(control: Control?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: control?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_remove_control_from_docks, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_control_from_bottom_panel: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_control_from_bottom_panel")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1496901182)!
            }
            
        }
        
    }()
    
    /// Removes the control from the bottom panel. You have to manually ``Node/queueFree()`` the control.
    public final func removeControlFromBottomPanel(control: Control?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: control?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_remove_control_from_bottom_panel, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_control_from_container: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_control_from_container")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3092750152)!
            }
            
        }
        
    }()
    
    /// Removes the control from the specified container. You have to manually ``Node/queueFree()`` the control.
    public final func removeControlFromContainer(_ container: EditorPlugin.CustomControlContainer, control: Control?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: container.rawValue) { pArg0 in
            withUnsafePointer(to: control?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorPlugin.method_remove_control_from_container, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_dock_tab_icon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_dock_tab_icon")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3450529724)!
            }
            
        }
        
    }()
    
    /// Sets the tab icon for the given control in a dock slot. Setting to `null` removes the icon.
    public final func setDockTabIcon(control: Control?, icon: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: control?.handle) { pArg0 in
            withUnsafePointer(to: icon?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorPlugin.method_set_dock_tab_icon, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_tool_menu_item: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_tool_menu_item")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2137474292)!
            }
            
        }
        
    }()
    
    /// Adds a custom menu item to **Project > Tools** named `name`. When clicked, the provided `callable` will be called.
    public final func addToolMenuItem(name: String, callable: Callable) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: callable.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorPlugin.method_add_tool_menu_item, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_tool_submenu_item: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_tool_submenu_item")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1019428915)!
            }
            
        }
        
    }()
    
    /// Adds a custom ``PopupMenu`` submenu under **Project > Tools >** `name`. Use ``removeToolMenuItem(name:)`` on plugin clean up to remove the menu.
    public final func addToolSubmenuItem(name: String, submenu: PopupMenu?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: submenu?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorPlugin.method_add_tool_submenu_item, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_tool_menu_item: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_tool_menu_item")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Removes a menu `name` from **Project > Tools**.
    public final func removeToolMenuItem(name: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_remove_tool_menu_item, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_export_as_menu: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_export_as_menu")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1775878644)!
            }
            
        }
        
    }()
    
    /// Returns the ``PopupMenu`` under **Scene > Export As...**.
    public final func getExportAsMenu() -> PopupMenu? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(EditorPlugin.method_get_export_as_menu, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_add_custom_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_custom_type")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1986814599)!
            }
            
        }
        
    }()
    
    /// Adds a custom type, which will appear in the list of nodes or resources.
    /// 
    /// When a given node or resource is selected, the base type will be instantiated (e.g. "Node3D", "Control", "Resource"), then the script will be loaded and set to this object.
    /// 
    /// > Note: The base type is the base engine class which this type's class hierarchy inherits, not any custom type parent classes.
    /// 
    /// You can use the virtual method ``_handles(object:)`` to check if your custom object is being edited by checking the script or using the `is` keyword.
    /// 
    /// During run-time, this will be a simple object with a script so this function does not need to be called then.
    /// 
    /// > Note: Custom types added this way are not true classes. They are just a helper to create a node with specific script.
    /// 
    public final func addCustomType(_ type: String, base: String, script: Script?, icon: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let type = GString(type)
        withUnsafePointer(to: type.content) { pArg0 in
            let base = GString(base)
            withUnsafePointer(to: base.content) { pArg1 in
                withUnsafePointer(to: script?.handle) { pArg2 in
                    withUnsafePointer(to: icon?.handle) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(EditorPlugin.method_add_custom_type, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_custom_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_custom_type")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Removes a custom type added by ``addCustomType(_:base:script:icon:)``.
    public final func removeCustomType(_ type: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let type = GString(type)
        withUnsafePointer(to: type.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_remove_custom_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_autoload_singleton: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_autoload_singleton")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3186203200)!
            }
            
        }
        
    }()
    
    /// Adds a script at `path` to the Autoload list as `name`.
    public final func addAutoloadSingleton(name: String, path: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            let path = GString(path)
            withUnsafePointer(to: path.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorPlugin.method_add_autoload_singleton, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_autoload_singleton: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_autoload_singleton")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Removes an Autoload `name` from the list.
    public final func removeAutoloadSingleton(name: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_remove_autoload_singleton, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_update_overlays: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("update_overlays")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Updates the overlays of the 2D and 3D editor viewport. Causes methods ``_forwardCanvasDrawOverViewport(viewportControl:)``, ``_forwardCanvasForceDrawOverViewport(viewportControl:)``, ``_forward3dDrawOverViewport(viewportControl:)`` and ``_forward3dForceDrawOverViewport(viewportControl:)`` to be called.
    public final func updateOverlays() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(EditorPlugin.method_update_overlays, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_make_bottom_panel_item_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("make_bottom_panel_item_visible")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1496901182)!
            }
            
        }
        
    }()
    
    /// Makes a specific item in the bottom panel visible.
    public final func makeBottomPanelItemVisible(item: Control?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: item?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_make_bottom_panel_item_visible, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_hide_bottom_panel: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("hide_bottom_panel")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Minimizes the bottom panel.
    public final func hideBottomPanel() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(EditorPlugin.method_hide_bottom_panel, handle, nil, nil)
        
    }
    
    fileprivate static let method_get_undo_redo: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_undo_redo")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 773492341)!
            }
            
        }
        
    }()
    
    /// Gets the undo/redo object. Most actions in the editor can be undoable, so use this object to make sure this happens when it's worth it.
    public final func getUndoRedo() -> EditorUndoRedoManager? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(EditorPlugin.method_get_undo_redo, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_add_undo_redo_inspector_hook_callback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_undo_redo_inspector_hook_callback")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1611583062)!
            }
            
        }
        
    }()
    
    /// Hooks a callback into the undo/redo action creation when a property is modified in the inspector. This allows, for example, to save other properties that may be lost when a given property is modified.
    /// 
    /// The callback should have 4 arguments: ``Object`` `undo_redo`, ``Object`` `modified_object`, ``String`` `property` and ``Variant`` `new_value`. They are, respectively, the ``UndoRedo`` object used by the inspector, the currently modified object, the name of the modified property and the new value the property is about to take.
    /// 
    public final func addUndoRedoInspectorHookCallback(callable: Callable) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: callable.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_add_undo_redo_inspector_hook_callback, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_undo_redo_inspector_hook_callback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_undo_redo_inspector_hook_callback")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1611583062)!
            }
            
        }
        
    }()
    
    /// Removes a callback previously added by ``addUndoRedoInspectorHookCallback(callable:)``.
    public final func removeUndoRedoInspectorHookCallback(callable: Callable) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: callable.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_remove_undo_redo_inspector_hook_callback, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_queue_save_layout: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("queue_save_layout")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Queue save the project's editor layout.
    public final func queueSaveLayout() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(EditorPlugin.method_queue_save_layout, handle, nil, nil)
        
    }
    
    fileprivate static let method_add_translation_parser_plugin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_translation_parser_plugin")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3116463128)!
            }
            
        }
        
    }()
    
    /// Registers a custom translation parser plugin for extracting translatable strings from custom files.
    public final func addTranslationParserPlugin(parser: EditorTranslationParserPlugin?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: parser?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_add_translation_parser_plugin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_translation_parser_plugin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_translation_parser_plugin")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3116463128)!
            }
            
        }
        
    }()
    
    /// Removes a custom translation parser plugin registered by ``addTranslationParserPlugin(parser:)``.
    public final func removeTranslationParserPlugin(parser: EditorTranslationParserPlugin?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: parser?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_remove_translation_parser_plugin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_import_plugin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_import_plugin")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3113975762)!
            }
            
        }
        
    }()
    
    /// Registers a new ``EditorImportPlugin``. Import plugins are used to import custom and unsupported assets as a custom ``Resource`` type.
    /// 
    /// If `firstPriority` is `true`, the new import plugin is inserted first in the list and takes precedence over pre-existing plugins.
    /// 
    /// > Note: If you want to import custom 3D asset formats use ``addSceneFormatImporterPlugin(sceneFormatImporter:firstPriority:)`` instead.
    /// 
    /// See ``addInspectorPlugin(_:)`` for an example of how to register a plugin.
    /// 
    public final func addImportPlugin(importer: EditorImportPlugin?, firstPriority: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: importer?.handle) { pArg0 in
            withUnsafePointer(to: firstPriority) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorPlugin.method_add_import_plugin, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_import_plugin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_import_plugin")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2312482773)!
            }
            
        }
        
    }()
    
    /// Removes an import plugin registered by ``addImportPlugin(importer:firstPriority:)``.
    public final func removeImportPlugin(importer: EditorImportPlugin?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: importer?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_remove_import_plugin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_scene_format_importer_plugin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_scene_format_importer_plugin")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2764104752)!
            }
            
        }
        
    }()
    
    /// Registers a new ``EditorSceneFormatImporter``. Scene importers are used to import custom 3D asset formats as scenes.
    /// 
    /// If `firstPriority` is `true`, the new import plugin is inserted first in the list and takes precedence over pre-existing plugins.
    /// 
    public final func addSceneFormatImporterPlugin(sceneFormatImporter: EditorSceneFormatImporter?, firstPriority: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: sceneFormatImporter?.handle) { pArg0 in
            withUnsafePointer(to: firstPriority) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorPlugin.method_add_scene_format_importer_plugin, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_scene_format_importer_plugin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_scene_format_importer_plugin")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2637776123)!
            }
            
        }
        
    }()
    
    /// Removes a scene format importer registered by ``addSceneFormatImporterPlugin(sceneFormatImporter:firstPriority:)``.
    public final func removeSceneFormatImporterPlugin(sceneFormatImporter: EditorSceneFormatImporter?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: sceneFormatImporter?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_remove_scene_format_importer_plugin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_scene_post_import_plugin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_scene_post_import_plugin")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3492436322)!
            }
            
        }
        
    }()
    
    /// Add a ``EditorScenePostImportPlugin``. These plugins allow customizing the import process of 3D assets by adding new options to the import dialogs.
    /// 
    /// If `firstPriority` is `true`, the new import plugin is inserted first in the list and takes precedence over pre-existing plugins.
    /// 
    public final func addScenePostImportPlugin(sceneImportPlugin: EditorScenePostImportPlugin?, firstPriority: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: sceneImportPlugin?.handle) { pArg0 in
            withUnsafePointer(to: firstPriority) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorPlugin.method_add_scene_post_import_plugin, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_scene_post_import_plugin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_scene_post_import_plugin")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3045178206)!
            }
            
        }
        
    }()
    
    /// Remove the ``EditorScenePostImportPlugin``, added with ``addScenePostImportPlugin(sceneImportPlugin:firstPriority:)``.
    public final func removeScenePostImportPlugin(sceneImportPlugin: EditorScenePostImportPlugin?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: sceneImportPlugin?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_remove_scene_post_import_plugin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_export_plugin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_export_plugin")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4095952207)!
            }
            
        }
        
    }()
    
    /// Registers a new ``EditorExportPlugin``. Export plugins are used to perform tasks when the project is being exported.
    /// 
    /// See ``addInspectorPlugin(_:)`` for an example of how to register a plugin.
    /// 
    public final func addExportPlugin(_ plugin: EditorExportPlugin?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: plugin?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_add_export_plugin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_export_plugin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_export_plugin")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4095952207)!
            }
            
        }
        
    }()
    
    /// Removes an export plugin registered by ``addExportPlugin(_:)``.
    public final func removeExportPlugin(_ plugin: EditorExportPlugin?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: plugin?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_remove_export_plugin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_export_platform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_export_platform")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3431312373)!
            }
            
        }
        
    }()
    
    /// Registers a new ``EditorExportPlatform``. Export platforms provides functionality of exporting to the specific platform.
    public final func addExportPlatform(_ platform: EditorExportPlatform?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: platform?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_add_export_platform, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_export_platform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_export_platform")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3431312373)!
            }
            
        }
        
    }()
    
    /// Removes an export platform registered by ``addExportPlatform(_:)``.
    public final func removeExportPlatform(_ platform: EditorExportPlatform?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: platform?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_remove_export_platform, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_node_3d_gizmo_plugin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_node_3d_gizmo_plugin")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1541015022)!
            }
            
        }
        
    }()
    
    /// Registers a new ``EditorNode3DGizmoPlugin``. Gizmo plugins are used to add custom gizmos to the 3D preview viewport for a ``Node3D``.
    /// 
    /// See ``addInspectorPlugin(_:)`` for an example of how to register a plugin.
    /// 
    public final func addNode3dGizmoPlugin(_ plugin: EditorNode3DGizmoPlugin?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: plugin?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_add_node_3d_gizmo_plugin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_node_3d_gizmo_plugin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_node_3d_gizmo_plugin")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1541015022)!
            }
            
        }
        
    }()
    
    /// Removes a gizmo plugin registered by ``addNode3dGizmoPlugin(_:)``.
    public final func removeNode3dGizmoPlugin(_ plugin: EditorNode3DGizmoPlugin?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: plugin?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_remove_node_3d_gizmo_plugin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_inspector_plugin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_inspector_plugin")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 546395733)!
            }
            
        }
        
    }()
    
    /// Registers a new ``EditorInspectorPlugin``. Inspector plugins are used to extend ``EditorInspector`` and provide custom configuration tools for your object's properties.
    /// 
    /// > Note: Always use ``removeInspectorPlugin(_:)`` to remove the registered ``EditorInspectorPlugin`` when your ``EditorPlugin`` is disabled to prevent leaks and an unexpected behavior.
    /// 
    public final func addInspectorPlugin(_ plugin: EditorInspectorPlugin?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: plugin?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_add_inspector_plugin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_inspector_plugin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_inspector_plugin")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 546395733)!
            }
            
        }
        
    }()
    
    /// Removes an inspector plugin registered by ``addInspectorPlugin(_:)``.
    public final func removeInspectorPlugin(_ plugin: EditorInspectorPlugin?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: plugin?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_remove_inspector_plugin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_resource_conversion_plugin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_resource_conversion_plugin")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2124849111)!
            }
            
        }
        
    }()
    
    /// Registers a new ``EditorResourceConversionPlugin``. Resource conversion plugins are used to add custom resource converters to the editor inspector.
    /// 
    /// See ``EditorResourceConversionPlugin`` for an example of how to create a resource conversion plugin.
    /// 
    public final func addResourceConversionPlugin(_ plugin: EditorResourceConversionPlugin?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: plugin?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_add_resource_conversion_plugin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_resource_conversion_plugin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_resource_conversion_plugin")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2124849111)!
            }
            
        }
        
    }()
    
    /// Removes a resource conversion plugin registered by ``addResourceConversionPlugin(_:)``.
    public final func removeResourceConversionPlugin(_ plugin: EditorResourceConversionPlugin?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: plugin?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_remove_resource_conversion_plugin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_input_event_forwarding_always_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_input_event_forwarding_always_enabled")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Use this method if you always want to receive inputs from 3D view screen inside ``_forward3dGuiInput(viewportCamera:event:)``. It might be especially usable if your plugin will want to use raycast in the scene.
    public final func setInputEventForwardingAlwaysEnabled() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(EditorPlugin.method_set_input_event_forwarding_always_enabled, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_force_draw_over_forwarding_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_force_draw_over_forwarding_enabled")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Enables calling of ``_forwardCanvasForceDrawOverViewport(viewportControl:)`` for the 2D editor and ``_forward3dForceDrawOverViewport(viewportControl:)`` for the 3D editor when their viewports are updated. You need to call this method only once and it will work permanently for this plugin.
    public final func setForceDrawOverForwardingEnabled() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(EditorPlugin.method_set_force_draw_over_forwarding_enabled, handle, nil, nil)
        
    }
    
    fileprivate static let method_add_context_menu_plugin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_context_menu_plugin")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1904221872)!
            }
            
        }
        
    }()
    
    /// Adds a plugin to the context menu. `slot` is the context menu where the plugin will be added.
    /// 
    /// See ``EditorContextMenuPlugin.ContextMenuSlot`` for available context menus. A plugin instance can belong only to a single context menu slot.
    /// 
    public final func addContextMenuPlugin(slot: EditorContextMenuPlugin.ContextMenuSlot, plugin: EditorContextMenuPlugin?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: slot.rawValue) { pArg0 in
            withUnsafePointer(to: plugin?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorPlugin.method_add_context_menu_plugin, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_context_menu_plugin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_context_menu_plugin")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2281511854)!
            }
            
        }
        
    }()
    
    /// Removes the specified context menu plugin.
    public final func removeContextMenuPlugin(_ plugin: EditorContextMenuPlugin?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: plugin?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_remove_context_menu_plugin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_editor_interface: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_editor_interface")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4223731786)!
            }
            
        }
        
    }()
    
    /// Returns the ``EditorInterface`` singleton instance.
    public final func getEditorInterface() -> EditorInterface? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(EditorPlugin.method_get_editor_interface, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_script_create_dialog: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_script_create_dialog")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3121871482)!
            }
            
        }
        
    }()
    
    /// Gets the Editor's dialog used for making scripts.
    /// 
    /// > Note: Users can configure it before use.
    /// 
    /// > Warning: Removing and freeing this node will render a part of the editor useless and may cause a crash.
    /// 
    public final func getScriptCreateDialog() -> ScriptCreateDialog? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(EditorPlugin.method_get_script_create_dialog, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_add_debugger_plugin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_debugger_plugin")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3749880309)!
            }
            
        }
        
    }()
    
    /// Adds a ``Script`` as debugger plugin to the Debugger. The script must extend ``EditorDebuggerPlugin``.
    public final func addDebuggerPlugin(script: EditorDebuggerPlugin?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: script?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_add_debugger_plugin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_debugger_plugin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_debugger_plugin")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3749880309)!
            }
            
        }
        
    }()
    
    /// Removes the debugger plugin with given script from the Debugger.
    public final func removeDebuggerPlugin(script: EditorDebuggerPlugin?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: script?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorPlugin.method_remove_debugger_plugin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_plugin_version: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_plugin_version")
        return withUnsafePointer(to: &EditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Provide the version of the plugin declared in the `plugin.cfg` config file.
    public final func getPluginVersion() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorPlugin.method_get_plugin_version, handle, nil, &_result.content)
        return _result.description
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_apply_changes":
                return _EditorPlugin_proxy_apply_changes
            case "_build":
                return _EditorPlugin_proxy_build
            case "_clear":
                return _EditorPlugin_proxy_clear
            case "_disable_plugin":
                return _EditorPlugin_proxy_disable_plugin
            case "_edit":
                return _EditorPlugin_proxy_edit
            case "_enable_plugin":
                return _EditorPlugin_proxy_enable_plugin
            case "_forward_3d_draw_over_viewport":
                return _EditorPlugin_proxy_forward_3d_draw_over_viewport
            case "_forward_3d_force_draw_over_viewport":
                return _EditorPlugin_proxy_forward_3d_force_draw_over_viewport
            case "_forward_3d_gui_input":
                return _EditorPlugin_proxy_forward_3d_gui_input
            case "_forward_canvas_draw_over_viewport":
                return _EditorPlugin_proxy_forward_canvas_draw_over_viewport
            case "_forward_canvas_force_draw_over_viewport":
                return _EditorPlugin_proxy_forward_canvas_force_draw_over_viewport
            case "_forward_canvas_gui_input":
                return _EditorPlugin_proxy_forward_canvas_gui_input
            case "_get_breakpoints":
                return _EditorPlugin_proxy_get_breakpoints
            case "_get_plugin_icon":
                return _EditorPlugin_proxy_get_plugin_icon
            case "_get_plugin_name":
                return _EditorPlugin_proxy_get_plugin_name
            case "_get_state":
                return _EditorPlugin_proxy_get_state
            case "_get_unsaved_status":
                return _EditorPlugin_proxy_get_unsaved_status
            case "_get_window_layout":
                return _EditorPlugin_proxy_get_window_layout
            case "_handles":
                return _EditorPlugin_proxy_handles
            case "_has_main_screen":
                return _EditorPlugin_proxy_has_main_screen
            case "_make_visible":
                return _EditorPlugin_proxy_make_visible
            case "_save_external_data":
                return _EditorPlugin_proxy_save_external_data
            case "_set_state":
                return _EditorPlugin_proxy_set_state
            case "_set_window_layout":
                return _EditorPlugin_proxy_set_window_layout
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
    // Signals 
    /// Emitted when the scene is changed in the editor. The argument will return the root node of the scene that has just become active. If this scene is new and empty, the argument will be `null`.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.sceneChanged.connect { sceneRoot in
    ///    print ("caught signal")
    /// }
    /// ```
    public var sceneChanged: SignalWithArguments<Node?> { SignalWithArguments<Node?> (target: self, signalName: "scene_changed") }
    
    /// Emitted when user closes a scene. The argument is a file path to the closed scene.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.sceneClosed.connect { filepath in
    ///    print ("caught signal")
    /// }
    /// ```
    public var sceneClosed: SignalWithArguments<String> { SignalWithArguments<String> (target: self, signalName: "scene_closed") }
    
    /// Emitted when user changes the workspace (**2D**, **3D**, **Script**, **AssetLib**). Also works with custom screens defined by plugins.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.mainScreenChanged.connect { screenName in
    ///    print ("caught signal")
    /// }
    /// ```
    public var mainScreenChanged: SignalWithArguments<String> { SignalWithArguments<String> (target: self, signalName: "main_screen_changed") }
    
    /// Emitted when the given `resource` was saved on disc. See also [signal scene_saved].
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.resourceSaved.connect { resource in
    ///    print ("caught signal")
    /// }
    /// ```
    public var resourceSaved: SignalWithArguments<Resource?> { SignalWithArguments<Resource?> (target: self, signalName: "resource_saved") }
    
    /// Emitted when a scene was saved on disc. The argument is a file path to the saved scene. See also [signal resource_saved].
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.sceneSaved.connect { filepath in
    ///    print ("caught signal")
    /// }
    /// ```
    public var sceneSaved: SignalWithArguments<String> { SignalWithArguments<String> (target: self, signalName: "scene_saved") }
    
    /// Emitted when any project setting has changed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.projectSettingsChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var projectSettingsChanged: SimpleSignal { SimpleSignal (target: self, signalName: "project_settings_changed") }
    
}

// Support methods for proxies
func _EditorPlugin_proxy_apply_changes (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorPlugin else { return }
    swiftObject._applyChanges ()
}

func _EditorPlugin_proxy_build (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorPlugin else { return }
    let ret = swiftObject._build ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorPlugin_proxy_clear (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorPlugin else { return }
    swiftObject._clear ()
}

func _EditorPlugin_proxy_disable_plugin (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorPlugin else { return }
    swiftObject._disablePlugin ()
}

func _EditorPlugin_proxy_edit (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorPlugin else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    swiftObject._edit (object: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Object)
}

func _EditorPlugin_proxy_enable_plugin (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorPlugin else { return }
    swiftObject._enablePlugin ()
}

func _EditorPlugin_proxy_forward_3d_draw_over_viewport (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorPlugin else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    swiftObject._forward3dDrawOverViewport (viewportControl: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Control)
}

func _EditorPlugin_proxy_forward_3d_force_draw_over_viewport (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorPlugin else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    swiftObject._forward3dForceDrawOverViewport (viewportControl: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Control)
}

func _EditorPlugin_proxy_forward_3d_gui_input (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorPlugin else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    let resolved_1 = args [1]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._forward3dGuiInput (viewportCamera: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Camera3D, event: resolved_1 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_1!, ownsRef: false) as? InputEvent)
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _EditorPlugin_proxy_forward_canvas_draw_over_viewport (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorPlugin else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    swiftObject._forwardCanvasDrawOverViewport (viewportControl: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Control)
}

func _EditorPlugin_proxy_forward_canvas_force_draw_over_viewport (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorPlugin else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    swiftObject._forwardCanvasForceDrawOverViewport (viewportControl: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Control)
}

func _EditorPlugin_proxy_forward_canvas_gui_input (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorPlugin else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._forwardCanvasGuiInput (event: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? InputEvent)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorPlugin_proxy_get_breakpoints (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorPlugin else { return }
    let ret = swiftObject._getBreakpoints ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _EditorPlugin_proxy_get_plugin_icon (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorPlugin else { return }
    let ret = swiftObject._getPluginIcon ()
    retPtr!.storeBytes (of: ret?.handle, as:  GodotNativeObjectPointer?.self) // Texture2D
}

func _EditorPlugin_proxy_get_plugin_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorPlugin else { return }
    let ret = GString (swiftObject._getPluginName ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorPlugin_proxy_get_state (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorPlugin else { return }
    let ret = swiftObject._getState ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Dictionary
    ret.content = VariantDictionary.zero
}

func _EditorPlugin_proxy_get_unsaved_status (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorPlugin else { return }
    let ret = GString (swiftObject._getUnsavedStatus (forScene: GString.stringFromGStringPtr (ptr: args [0]!) ?? ""))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorPlugin_proxy_get_window_layout (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorPlugin else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    swiftObject._getWindowLayout (configuration: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? ConfigFile)
}

func _EditorPlugin_proxy_handles (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorPlugin else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._handles (object: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Object)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorPlugin_proxy_has_main_screen (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorPlugin else { return }
    let ret = swiftObject._hasMainScreen ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorPlugin_proxy_make_visible (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorPlugin else { return }
    swiftObject._makeVisible (args [0]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _EditorPlugin_proxy_save_external_data (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorPlugin else { return }
    swiftObject._saveExternalData ()
}

func _EditorPlugin_proxy_set_state (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorPlugin else { return }
    swiftObject._setState (VariantDictionary (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _EditorPlugin_proxy_set_window_layout (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorPlugin else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    swiftObject._setWindowLayout (configuration: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? ConfigFile)
}

