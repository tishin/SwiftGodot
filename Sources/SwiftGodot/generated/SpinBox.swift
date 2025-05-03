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


/// An input field for numbers.
/// 
/// ``SpinBox`` is a numerical input text field. It allows entering integers and floating-point numbers.
/// 
/// **Example:** Create a ``SpinBox``, disable its context menu and set its text alignment to right.
/// 
/// See ``Range`` class for more options over the ``SpinBox``.
/// 
/// > Note: With the ``SpinBox``'s context menu disabled, you can right-click the bottom half of the spinbox to set the value to its minimum, while right-clicking the top half sets the value to its maximum.
/// 
/// > Note: ``SpinBox`` relies on an underlying ``LineEdit`` node. To theme a ``SpinBox``'s background, add theme items for ``LineEdit`` and customize them. The ``LineEdit`` has the `SpinBoxInnerLineEdit` theme variation, so that you can give it a distinct appearance from regular ``LineEdit``s.
/// 
/// > Note: If you want to implement drag and drop for the underlying ``LineEdit``, you can use ``Control/setDragForwarding(dragFunc:canDropFunc:dropFunc:)`` on the node returned by ``getLineEdit()``.
/// 
open class SpinBox: Range {
    private static var className = StringName("SpinBox")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Changes the alignment of the underlying ``LineEdit``.
    final public var alignment: HorizontalAlignment {
        get {
            return get_horizontal_alignment ()
        }
        
        set {
            set_horizontal_alignment (newValue)
        }
        
    }
    
    /// If `true`, the ``SpinBox`` will be editable. Otherwise, it will be read only.
    final public var editable: Bool {
        get {
            return is_editable ()
        }
        
        set {
            set_editable (newValue)
        }
        
    }
    
    /// Sets the value of the ``Range`` for this ``SpinBox`` when the ``LineEdit`` text is _changed_ instead of _submitted_. See [signal LineEdit.text_changed] and [signal LineEdit.text_submitted].
    final public var updateOnTextChanged: Bool {
        get {
            return get_update_on_text_changed ()
        }
        
        set {
            set_update_on_text_changed (newValue)
        }
        
    }
    
    /// Adds the specified prefix string before the numerical value of the ``SpinBox``.
    final public var prefix: String {
        get {
            return get_prefix ()
        }
        
        set {
            set_prefix (newValue)
        }
        
    }
    
    /// Adds the specified suffix string after the numerical value of the ``SpinBox``.
    final public var suffix: String {
        get {
            return get_suffix ()
        }
        
        set {
            set_suffix (newValue)
        }
        
    }
    
    /// If not `0`, ``Range/value`` will always be rounded to a multiple of ``customArrowStep`` when interacting with the arrow buttons of the ``SpinBox``.
    final public var customArrowStep: Double {
        get {
            return get_custom_arrow_step ()
        }
        
        set {
            set_custom_arrow_step (newValue)
        }
        
    }
    
    /// If `true`, the ``SpinBox`` will select the whole text when the ``LineEdit`` gains focus. Clicking the up and down arrows won't trigger this behavior.
    final public var selectAllOnFocus: Bool {
        get {
            return is_select_all_on_focus ()
        }
        
        set {
            set_select_all_on_focus (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_horizontal_alignment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_horizontal_alignment")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2312603777)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_horizontal_alignment(_ alignment: HorizontalAlignment) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: alignment.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpinBox.method_set_horizontal_alignment, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_horizontal_alignment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_horizontal_alignment")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 341400642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_horizontal_alignment() -> HorizontalAlignment {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(SpinBox.method_get_horizontal_alignment, handle, nil, &_result)
        return HorizontalAlignment (rawValue: _result)!
    }
    
    fileprivate static let method_set_suffix: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_suffix")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(SpinBox.method_set_suffix, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_suffix: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_suffix")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_suffix() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(SpinBox.method_get_suffix, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_prefix: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_prefix")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_prefix(_ prefix: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let prefix = GString(prefix)
        withUnsafePointer(to: prefix.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpinBox.method_set_prefix, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_prefix: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_prefix")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_prefix() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(SpinBox.method_get_prefix, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_editable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_editable")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_editable(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpinBox.method_set_editable, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_custom_arrow_step: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_custom_arrow_step")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_custom_arrow_step(_ arrowStep: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: arrowStep) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpinBox.method_set_custom_arrow_step, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_custom_arrow_step: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_custom_arrow_step")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_custom_arrow_step() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(SpinBox.method_get_custom_arrow_step, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_editable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_editable")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_editable() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(SpinBox.method_is_editable, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_update_on_text_changed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_update_on_text_changed")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_update_on_text_changed(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpinBox.method_set_update_on_text_changed, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_update_on_text_changed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_update_on_text_changed")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_update_on_text_changed() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(SpinBox.method_get_update_on_text_changed, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_select_all_on_focus: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_select_all_on_focus")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_select_all_on_focus(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SpinBox.method_set_select_all_on_focus, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_select_all_on_focus: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_select_all_on_focus")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_select_all_on_focus() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(SpinBox.method_is_select_all_on_focus, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_apply: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("apply")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Applies the current value of this ``SpinBox``.
    public final func apply() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(SpinBox.method_apply, handle, nil, nil)
        
    }
    
    fileprivate static let method_get_line_edit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_edit")
        return withUnsafePointer(to: &SpinBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4071694264)!
            }
            
        }
        
    }()
    
    /// Returns the ``LineEdit`` instance from this ``SpinBox``. You can use it to access properties and methods of ``LineEdit``.
    /// 
    /// > Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their ``CanvasItem/visible`` property.
    /// 
    public final func getLineEdit() -> LineEdit? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(SpinBox.method_get_line_edit, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
}

