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


/// A base dialog used for user notification.
/// 
/// The default use of ``AcceptDialog`` is to allow it to only be accepted or closed, with the same result. However, the [signal confirmed] and [signal canceled] signals allow to make the two actions different, and the ``addButton(text:right:action:)`` method allows to add custom buttons and actions.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``confirmed``
/// - ``canceled``
/// - ``customAction``
open class AcceptDialog: Window {
    private static var className = StringName("AcceptDialog")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The text displayed by the OK button (see ``getOkButton()``).
    final public var okButtonText: String {
        get {
            return get_ok_button_text ()
        }
        
        set {
            set_ok_button_text (newValue)
        }
        
    }
    
    /// The text displayed by the dialog.
    final public var dialogText: String {
        get {
            return get_text ()
        }
        
        set {
            set_text (newValue)
        }
        
    }
    
    /// If `true`, the dialog is hidden when the OK button is pressed. You can set it to `false` if you want to do e.g. input validation when receiving the [signal confirmed] signal, and handle hiding the dialog in your own logic.
    /// 
    /// > Note: Some nodes derived from this class can have a different default value, and potentially their own built-in logic overriding this setting. For example ``FileDialog`` defaults to `false`, and has its own input validation code that is called when you press OK, which eventually hides the dialog if the input is valid. As such, this property can't be used in ``FileDialog`` to disable hiding the dialog when pressing OK.
    /// 
    final public var dialogHideOnOk: Bool {
        get {
            return get_hide_on_ok ()
        }
        
        set {
            set_hide_on_ok (newValue)
        }
        
    }
    
    /// If `true`, the dialog will be hidden when the escape key (``Key/escape``) is pressed.
    final public var dialogCloseOnEscape: Bool {
        get {
            return get_close_on_escape ()
        }
        
        set {
            set_close_on_escape (newValue)
        }
        
    }
    
    /// Sets autowrapping for the text in the dialog.
    final public var dialogAutowrap: Bool {
        get {
            return has_autowrap ()
        }
        
        set {
            set_autowrap (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_get_ok_button: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_ok_button")
        return withUnsafePointer(to: &AcceptDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1856205918)!
            }
            
        }
        
    }()
    
    /// Returns the OK ``Button`` instance.
    /// 
    /// > Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their ``CanvasItem/visible`` property.
    /// 
    public final func getOkButton() -> Button? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(AcceptDialog.method_get_ok_button, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_label: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_label")
        return withUnsafePointer(to: &AcceptDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 566733104)!
            }
            
        }
        
    }()
    
    /// Returns the label used for built-in text.
    /// 
    /// > Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their ``CanvasItem/visible`` property.
    /// 
    public final func getLabel() -> Label? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(AcceptDialog.method_get_label, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_hide_on_ok: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_hide_on_ok")
        return withUnsafePointer(to: &AcceptDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_hide_on_ok(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AcceptDialog.method_set_hide_on_ok, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_hide_on_ok: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_hide_on_ok")
        return withUnsafePointer(to: &AcceptDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_hide_on_ok() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AcceptDialog.method_get_hide_on_ok, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_close_on_escape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_close_on_escape")
        return withUnsafePointer(to: &AcceptDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_close_on_escape(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AcceptDialog.method_set_close_on_escape, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_close_on_escape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_close_on_escape")
        return withUnsafePointer(to: &AcceptDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_close_on_escape() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AcceptDialog.method_get_close_on_escape, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_add_button: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_button")
        return withUnsafePointer(to: &AcceptDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3328440682)!
            }
            
        }
        
    }()
    
    /// Adds a button with label `text` and a custom `action` to the dialog and returns the created button. `action` will be passed to the [signal custom_action] signal when pressed.
    /// 
    /// If `true`, `right` will place the button to the right of any sibling buttons.
    /// 
    /// You can use ``removeButton(_:)`` method to remove a button created with this method from the dialog.
    /// 
    public final func addButton(text: String, right: Bool = false, action: String = "") -> Button? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        let text = GString(text)
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: right) { pArg1 in
                let action = GString(action)
                withUnsafePointer(to: action.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(AcceptDialog.method_add_button, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_add_cancel_button: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_cancel_button")
        return withUnsafePointer(to: &AcceptDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 242045556)!
            }
            
        }
        
    }()
    
    /// Adds a button with label `name` and a cancel action to the dialog and returns the created button.
    /// 
    /// You can use ``removeButton(_:)`` method to remove a button created with this method from the dialog.
    /// 
    public final func addCancelButton(name: String) -> Button? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AcceptDialog.method_add_cancel_button, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_remove_button: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_button")
        return withUnsafePointer(to: &AcceptDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2068354942)!
            }
            
        }
        
    }()
    
    /// Removes the `button` from the dialog. Does NOT free the `button`. The `button` must be a ``Button`` added with ``addButton(text:right:action:)`` or ``addCancelButton(name:)`` method. After removal, pressing the `button` will no longer emit this dialog's [signal custom_action] or [signal canceled] signals.
    public final func removeButton(_ button: Button?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: button?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AcceptDialog.method_remove_button, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_register_text_enter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("register_text_enter")
        return withUnsafePointer(to: &AcceptDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3714008017)!
            }
            
        }
        
    }()
    
    /// Registers a ``LineEdit`` in the dialog. When the enter key is pressed, the dialog will be accepted.
    public final func registerTextEnter(lineEdit: LineEdit?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: lineEdit?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AcceptDialog.method_register_text_enter, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_text")
        return withUnsafePointer(to: &AcceptDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_text(_ text: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let text = GString(text)
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AcceptDialog.method_set_text, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_text")
        return withUnsafePointer(to: &AcceptDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_text() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(AcceptDialog.method_get_text, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_autowrap: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_autowrap")
        return withUnsafePointer(to: &AcceptDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_autowrap(_ autowrap: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: autowrap) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AcceptDialog.method_set_autowrap, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_has_autowrap: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_autowrap")
        return withUnsafePointer(to: &AcceptDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func has_autowrap() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AcceptDialog.method_has_autowrap, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_ok_button_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_ok_button_text")
        return withUnsafePointer(to: &AcceptDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_ok_button_text(_ text: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let text = GString(text)
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AcceptDialog.method_set_ok_button_text, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_ok_button_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_ok_button_text")
        return withUnsafePointer(to: &AcceptDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_ok_button_text() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(AcceptDialog.method_get_ok_button_text, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    // Signals 
    /// Emitted when the dialog is accepted, i.e. the OK button is pressed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.confirmed.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var confirmed: SimpleSignal { SimpleSignal (target: self, signalName: "confirmed") }
    
    /// Emitted when the dialog is closed or the button created with ``addCancelButton(name:)`` is pressed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.canceled.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var canceled: SimpleSignal { SimpleSignal (target: self, signalName: "canceled") }
    
    /// Emitted when a custom button is pressed. See ``addButton(text:right:action:)``.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.customAction.connect { action in
    ///    print ("caught signal")
    /// }
    /// ```
    public var customAction: SignalWithArguments<StringName> { SignalWithArguments<StringName> (target: self, signalName: "custom_action") }
    
}

