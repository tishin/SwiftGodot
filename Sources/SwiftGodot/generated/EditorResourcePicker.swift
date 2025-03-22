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


/// Godot editor's control for selecting ``Resource`` type properties.
/// 
/// This ``Control`` node is used in the editor's Inspector dock to allow editing of ``Resource`` type properties. It provides options for creating, loading, saving and converting resources. Can be used with ``EditorInspectorPlugin`` to recreate the same behavior.
/// 
/// > Note: This ``Control`` does not include any editor for the resource, as editing is controlled by the Inspector dock itself or sub-Inspectors.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``resourceSelected``
/// - ``resourceChanged``
open class EditorResourcePicker: HBoxContainer {
    fileprivate static var className = StringName("EditorResourcePicker")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The base type of allowed resource types. Can be a comma-separated list of several options.
    final public var baseType: String {
        get {
            return get_base_type ()
        }
        
        set {
            set_base_type (newValue)
        }
        
    }
    
    /// The edited resource value.
    final public var editedResource: Resource? {
        get {
            return get_edited_resource ()
        }
        
        set {
            set_edited_resource (newValue)
        }
        
    }
    
    /// If `true`, the value can be selected and edited.
    final public var editable: Bool {
        get {
            return is_editable ()
        }
        
        set {
            set_editable (newValue)
        }
        
    }
    
    /// If `true`, the main button with the resource preview works in the toggle mode. Use ``setTogglePressed(_:)`` to manually set the state.
    final public var toggleMode: Bool {
        get {
            return is_toggle_mode ()
        }
        
        set {
            set_toggle_mode (newValue)
        }
        
    }
    
    /* Methods */
    /// This virtual method is called when updating the context menu of ``EditorResourcePicker``. Implement this method to override the "New ..." items with your own options. `menuNode` is a reference to the ``PopupMenu`` node.
    /// 
    /// > Note: Implement ``_handleMenuSelected(id:)`` to handle these custom items.
    /// 
    @_documentation(visibility: public)
    open func _setCreateOptions(menuNode: Object?) {
    }
    
    /// This virtual method can be implemented to handle context menu items not handled by default. See ``_setCreateOptions(menuNode:)``.
    @_documentation(visibility: public)
    open func _handleMenuSelected(id: Int32) -> Bool {
        return false
    }
    
    fileprivate static var method_set_base_type: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_base_type")
        return withUnsafePointer(to: &EditorResourcePicker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_base_type(_ baseType: String) {
        let baseType = GString(baseType)
        withUnsafePointer(to: baseType.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorResourcePicker.method_set_base_type, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_base_type: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_base_type")
        return withUnsafePointer(to: &EditorResourcePicker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_base_type() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorResourcePicker.method_get_base_type, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_get_allowed_types: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_allowed_types")
        return withUnsafePointer(to: &EditorResourcePicker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns a list of all allowed types and subtypes corresponding to the ``baseType``. If the ``baseType`` is empty, an empty list is returned.
    public final func getAllowedTypes() -> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(EditorResourcePicker.method_get_allowed_types, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_edited_resource: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_edited_resource")
        return withUnsafePointer(to: &EditorResourcePicker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 968641751)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_edited_resource(_ resource: Resource?) {
        withUnsafePointer(to: resource?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorResourcePicker.method_set_edited_resource, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_edited_resource: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_edited_resource")
        return withUnsafePointer(to: &EditorResourcePicker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2674603643)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_edited_resource() -> Resource? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(EditorResourcePicker.method_get_edited_resource, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_toggle_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_toggle_mode")
        return withUnsafePointer(to: &EditorResourcePicker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_toggle_mode(_ enable: Bool) {
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorResourcePicker.method_set_toggle_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_toggle_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_toggle_mode")
        return withUnsafePointer(to: &EditorResourcePicker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_toggle_mode() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorResourcePicker.method_is_toggle_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_toggle_pressed: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_toggle_pressed")
        return withUnsafePointer(to: &EditorResourcePicker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Sets the toggle mode state for the main button. Works only if ``toggleMode`` is set to `true`.
    public final func setTogglePressed(_ pressed: Bool) {
        withUnsafePointer(to: pressed) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorResourcePicker.method_set_toggle_pressed, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_editable: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_editable")
        return withUnsafePointer(to: &EditorResourcePicker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_editable(_ enable: Bool) {
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorResourcePicker.method_set_editable, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_editable: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_editable")
        return withUnsafePointer(to: &EditorResourcePicker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_editable() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorResourcePicker.method_is_editable, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_handle_menu_selected":
                return _EditorResourcePicker_proxy_handle_menu_selected
            case "_set_create_options":
                return _EditorResourcePicker_proxy_set_create_options
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
    // Signals 
    /// Emitted when the resource value was set and user clicked to edit it. When `inspect` is `true`, the signal was caused by the context menu "Edit" or "Inspect" option.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.resourceSelected.connect { resource, inspect in
    ///    print ("caught signal")
    /// }
    /// ```
    public var resourceSelected: SignalWithArguments<Resource?, Bool> { SignalWithArguments<Resource?, Bool> (target: self, signalName: "resource_selected") }
    
    /// Emitted when the value of the edited resource was changed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.resourceChanged.connect { resource in
    ///    print ("caught signal")
    /// }
    /// ```
    public var resourceChanged: SignalWithArguments<Resource?> { SignalWithArguments<Resource?> (target: self, signalName: "resource_changed") }
    
}

// Support methods for proxies
func _EditorResourcePicker_proxy_handle_menu_selected (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorResourcePicker>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._handleMenuSelected (id: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorResourcePicker_proxy_set_create_options (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorResourcePicker>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    
    swiftObject._setCreateOptions (menuNode: lookupLiveObject (handleAddress: resolved_0) as? Object ?? lookupObject (nativeHandle: resolved_0)!)
}

