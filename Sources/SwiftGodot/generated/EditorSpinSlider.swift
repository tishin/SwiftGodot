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


/// Godot editor's control for editing numeric values.
/// 
/// This ``Control`` node is used in the editor's Inspector dock to allow editing of numeric values. Can be used with ``EditorInspectorPlugin`` to recreate the same behavior.
/// 
/// If the ``Range/step`` value is `1`, the ``EditorSpinSlider`` will display up/down arrows, similar to ``SpinBox``. If the ``Range/step`` value is not `1`, a slider will be displayed instead.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``grabbed``
/// - ``ungrabbed``
/// - ``updownPressed``
/// - ``valueFocusEntered``
/// - ``valueFocusExited``
open class EditorSpinSlider: Range {
    private static var className = StringName("EditorSpinSlider")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The text that displays to the left of the value.
    final public var label: String {
        get {
            return get_label ()
        }
        
        set {
            set_label (newValue)
        }
        
    }
    
    /// The suffix to display after the value (in a faded color). This should generally be a plural word. You may have to use an abbreviation if the suffix is too long to be displayed.
    final public var suffix: String {
        get {
            return get_suffix ()
        }
        
        set {
            set_suffix (newValue)
        }
        
    }
    
    /// If `true`, the slider can't be interacted with.
    final public var readOnly: Bool {
        get {
            return is_read_only ()
        }
        
        set {
            set_read_only (newValue)
        }
        
    }
    
    /// If `true`, the slider will not draw background.
    final public var flat: Bool {
        get {
            return is_flat ()
        }
        
        set {
            set_flat (newValue)
        }
        
    }
    
    /// If `true`, the slider and up/down arrows are hidden.
    final public var hideSlider: Bool {
        get {
            return is_hiding_slider ()
        }
        
        set {
            set_hide_slider (newValue)
        }
        
    }
    
    /// If `true`, the ``EditorSpinSlider`` is considered to be editing an integer value. If `false`, the ``EditorSpinSlider`` is considered to be editing a floating-point value. This is used to determine whether a slider should be drawn. The slider is only drawn for floats; integers use up-down arrows similar to ``SpinBox`` instead.
    final public var editingInteger: Bool {
        get {
            return is_editing_integer ()
        }
        
        set {
            set_editing_integer (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_label: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_label")
        return withUnsafePointer(to: &EditorSpinSlider.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_label(_ label: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let label = GString(label)
        withUnsafePointer(to: label.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorSpinSlider.method_set_label, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_label: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_label")
        return withUnsafePointer(to: &EditorSpinSlider.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_label() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorSpinSlider.method_get_label, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_suffix: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_suffix")
        return withUnsafePointer(to: &EditorSpinSlider.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_suffix(_ suffix: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let suffix = GString(suffix)
        withUnsafePointer(to: suffix.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorSpinSlider.method_set_suffix, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_suffix: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_suffix")
        return withUnsafePointer(to: &EditorSpinSlider.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_suffix() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorSpinSlider.method_get_suffix, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_read_only: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_read_only")
        return withUnsafePointer(to: &EditorSpinSlider.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_read_only(_ readOnly: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: readOnly) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorSpinSlider.method_set_read_only, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_read_only: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_read_only")
        return withUnsafePointer(to: &EditorSpinSlider.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_read_only() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorSpinSlider.method_is_read_only, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_flat: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_flat")
        return withUnsafePointer(to: &EditorSpinSlider.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_flat(_ flat: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: flat) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorSpinSlider.method_set_flat, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_flat: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_flat")
        return withUnsafePointer(to: &EditorSpinSlider.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_flat() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorSpinSlider.method_is_flat, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_hide_slider: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_hide_slider")
        return withUnsafePointer(to: &EditorSpinSlider.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_hide_slider(_ hideSlider: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: hideSlider) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorSpinSlider.method_set_hide_slider, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_hiding_slider: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_hiding_slider")
        return withUnsafePointer(to: &EditorSpinSlider.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_hiding_slider() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorSpinSlider.method_is_hiding_slider, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_editing_integer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_editing_integer")
        return withUnsafePointer(to: &EditorSpinSlider.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_editing_integer(_ editingInteger: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: editingInteger) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorSpinSlider.method_set_editing_integer, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_editing_integer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_editing_integer")
        return withUnsafePointer(to: &EditorSpinSlider.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_editing_integer() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorSpinSlider.method_is_editing_integer, handle, nil, &_result)
        return _result
    }
    
    // Signals 
    /// Emitted when the spinner/slider is grabbed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.grabbed.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var grabbed: SimpleSignal { SimpleSignal (target: self, signalName: "grabbed") }
    
    /// Emitted when the spinner/slider is ungrabbed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.ungrabbed.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var ungrabbed: SimpleSignal { SimpleSignal (target: self, signalName: "ungrabbed") }
    
    /// Emitted when the updown button is pressed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.updownPressed.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var updownPressed: SimpleSignal { SimpleSignal (target: self, signalName: "updown_pressed") }
    
    /// Emitted when the value form gains focus.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.valueFocusEntered.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var valueFocusEntered: SimpleSignal { SimpleSignal (target: self, signalName: "value_focus_entered") }
    
    /// Emitted when the value form loses focus.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.valueFocusExited.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var valueFocusExited: SimpleSignal { SimpleSignal (target: self, signalName: "value_focus_exited") }
    
}

