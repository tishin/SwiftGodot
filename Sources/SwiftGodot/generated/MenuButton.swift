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


/// A button that brings up a ``PopupMenu`` when clicked.
/// 
/// A button that brings up a ``PopupMenu`` when clicked. To create new items inside this ``PopupMenu``, use `get_popup().add_item("My Item Name")`. You can also create them directly from Godot editor's inspector.
/// 
/// See also ``BaseButton`` which contains common properties and methods associated with this node.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``aboutToPopup``
open class MenuButton: Button {
    private static var className = StringName("MenuButton")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// If `true`, when the cursor hovers above another ``MenuButton`` within the same parent which also has ``switchOnHover`` enabled, it will close the current ``MenuButton`` and open the other one.
    final public var switchOnHover: Bool {
        get {
            return is_switch_on_hover ()
        }
        
        set {
            set_switch_on_hover (newValue)
        }
        
    }
    
    /// The number of items currently in the list.
    final public var itemCount: Int32 {
        get {
            return get_item_count ()
        }
        
        set {
            set_item_count (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_get_popup: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_popup")
        return withUnsafePointer(to: &MenuButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 229722558)!
            }
            
        }
        
    }()
    
    /// Returns the ``PopupMenu`` contained in this button.
    /// 
    /// > Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their ``Window/visible`` property.
    /// 
    public final func getPopup() -> PopupMenu? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(MenuButton.method_get_popup, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_show_popup: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("show_popup")
        return withUnsafePointer(to: &MenuButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Adjusts popup position and sizing for the ``MenuButton``, then shows the ``PopupMenu``. Prefer this over using `get_popup().popup()`.
    public final func showPopup() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(MenuButton.method_show_popup, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_switch_on_hover: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_switch_on_hover")
        return withUnsafePointer(to: &MenuButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_switch_on_hover(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MenuButton.method_set_switch_on_hover, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_switch_on_hover: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_switch_on_hover")
        return withUnsafePointer(to: &MenuButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_switch_on_hover() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(MenuButton.method_is_switch_on_hover, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_disable_shortcuts: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_disable_shortcuts")
        return withUnsafePointer(to: &MenuButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// If `true`, shortcuts are disabled and cannot be used to trigger the button.
    public final func setDisableShortcuts(disabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: disabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MenuButton.method_set_disable_shortcuts, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_item_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_count")
        return withUnsafePointer(to: &MenuButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_item_count(_ count: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: count) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MenuButton.method_set_item_count, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_item_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_item_count")
        return withUnsafePointer(to: &MenuButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_item_count() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(MenuButton.method_get_item_count, handle, nil, &_result)
        return _result
    }
    
    // Signals 
    /// Emitted when the ``PopupMenu`` of this MenuButton is about to show.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.aboutToPopup.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var aboutToPopup: SimpleSignal { SimpleSignal (target: self, signalName: "about_to_popup") }
    
}

