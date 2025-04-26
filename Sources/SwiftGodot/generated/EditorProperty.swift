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


/// Custom control for editing properties that can be added to the ``EditorInspector``.
/// 
/// A custom control for editing properties that can be added to the ``EditorInspector``. It is added via ``EditorInspectorPlugin``.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``propertyChanged``
/// - ``multiplePropertiesChanged``
/// - ``propertyKeyed``
/// - ``propertyDeleted``
/// - ``propertyKeyedWithValue``
/// - ``propertyChecked``
/// - ``propertyFavorited``
/// - ``propertyPinned``
/// - ``propertyCanRevertChanged``
/// - ``resourceSelected``
/// - ``objectIdSelected``
/// - ``selected``
open class EditorProperty: Container {
    private static var className = StringName("EditorProperty")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Set this property to change the label (if you want to show one).
    final public var label: String {
        get {
            return get_label ()
        }
        
        set {
            set_label (newValue)
        }
        
    }
    
    /// Used by the inspector, set to `true` when the property is read-only.
    final public var readOnly: Bool {
        get {
            return is_read_only ()
        }
        
        set {
            set_read_only (newValue)
        }
        
    }
    
    /// Used by the inspector, set to `true` when the property background is drawn.
    final public var drawLabel: Bool {
        get {
            return is_draw_label ()
        }
        
        set {
            set_draw_label (newValue)
        }
        
    }
    
    /// Used by the inspector, set to `true` when the property label is drawn.
    final public var drawBackground: Bool {
        get {
            return is_draw_background ()
        }
        
        set {
            set_draw_background (newValue)
        }
        
    }
    
    /// Used by the inspector, set to `true` when the property is checkable.
    final public var checkable: Bool {
        get {
            return is_checkable ()
        }
        
        set {
            set_checkable (newValue)
        }
        
    }
    
    /// Used by the inspector, set to `true` when the property is checked.
    final public var checked: Bool {
        get {
            return is_checked ()
        }
        
        set {
            set_checked (newValue)
        }
        
    }
    
    /// Used by the inspector, set to `true` when the property is drawn with the editor theme's warning color. This is used for editable children's properties.
    final public var drawWarning: Bool {
        get {
            return is_draw_warning ()
        }
        
        set {
            set_draw_warning (newValue)
        }
        
    }
    
    /// Used by the inspector, set to `true` when the property can add keys for animation.
    final public var keying: Bool {
        get {
            return is_keying ()
        }
        
        set {
            set_keying (newValue)
        }
        
    }
    
    /// Used by the inspector, set to `true` when the property can be deleted by the user.
    final public var deletable: Bool {
        get {
            return is_deletable ()
        }
        
        set {
            set_deletable (newValue)
        }
        
    }
    
    /// Used by the inspector, set to `true` when the property is selectable.
    final public var selectable: Bool {
        get {
            return is_selectable ()
        }
        
        set {
            set_selectable (newValue)
        }
        
    }
    
    /// Used by the inspector, set to `true` when the property is using folding.
    final public var useFolding: Bool {
        get {
            return is_using_folding ()
        }
        
        set {
            set_use_folding (newValue)
        }
        
    }
    
    /// Space distribution ratio between the label and the editing field.
    final public var nameSplitRatio: Double {
        get {
            return get_name_split_ratio ()
        }
        
        set {
            set_name_split_ratio (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method__update_property: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_update_property")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// When this virtual function is called, you must update your editor.
    @_documentation(visibility: public)
    open func _updateProperty() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(EditorProperty.method__update_property, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__set_read_only: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_read_only")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Called when the read-only status of the property is changed. It may be used to change custom controls into a read-only or modifiable state.
    @_documentation(visibility: public)
    open func _setReadOnly(_ readOnly: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: readOnly) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorProperty.method__set_read_only, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_label: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_label")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_label(_ text: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let text = GString(text)
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorProperty.method_set_label, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_label: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_label")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_label() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorProperty.method_get_label, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_read_only: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_read_only")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(EditorProperty.method_set_read_only, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_read_only: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_read_only")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_read_only() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorProperty.method_is_read_only, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_draw_label: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_draw_label")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_draw_label(_ drawLabel: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: drawLabel) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorProperty.method_set_draw_label, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_draw_label: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_draw_label")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_draw_label() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorProperty.method_is_draw_label, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_draw_background: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_draw_background")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_draw_background(_ drawBackground: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: drawBackground) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorProperty.method_set_draw_background, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_draw_background: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_draw_background")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_draw_background() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorProperty.method_is_draw_background, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_checkable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_checkable")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_checkable(_ checkable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: checkable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorProperty.method_set_checkable, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_checkable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_checkable")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_checkable() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorProperty.method_is_checkable, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_checked: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_checked")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_checked(_ checked: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: checked) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorProperty.method_set_checked, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_checked: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_checked")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_checked() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorProperty.method_is_checked, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_draw_warning: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_draw_warning")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_draw_warning(_ drawWarning: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: drawWarning) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorProperty.method_set_draw_warning, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_draw_warning: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_draw_warning")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_draw_warning() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorProperty.method_is_draw_warning, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_keying: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_keying")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_keying(_ keying: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: keying) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorProperty.method_set_keying, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_keying: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_keying")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_keying() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorProperty.method_is_keying, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_deletable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_deletable")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_deletable(_ deletable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: deletable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorProperty.method_set_deletable, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_deletable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_deletable")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_deletable() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorProperty.method_is_deletable, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_edited_property: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_edited_property")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    /// Gets the edited property. If your editor is for a single property (added via ``EditorInspectorPlugin/_parseProperty(object:type:name:hintType:hintString:usageFlags:wide:)``), then this will return the property.
    public final func getEditedProperty() -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(EditorProperty.method_get_edited_property, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_edited_object: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_edited_object")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2050059866)!
            }
            
        }
        
    }()
    
    /// Gets the edited object.
    public final func getEditedObject() -> Object? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(EditorProperty.method_get_edited_object, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_update_property: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("update_property")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Forces refresh of the property display.
    public final func updateProperty() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(EditorProperty.method_update_property, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_add_focusable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_focusable")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1496901182)!
            }
            
        }
        
    }()
    
    /// If any of the controls added can gain keyboard focus, add it here. This ensures that focus will be restored if the inspector is refreshed.
    public final func addFocusable(control: Control?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: control?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorProperty.method_add_focusable, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_bottom_editor: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bottom_editor")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1496901182)!
            }
            
        }
        
    }()
    
    /// Puts the `editor` control below the property label. The control must be previously added using ``Node/addChild(node:forceReadableName:`internal`:)``.
    public final func setBottomEditor(_ editor: Control?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: editor?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorProperty.method_set_bottom_editor, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_selectable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_selectable")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_selectable(_ selectable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: selectable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorProperty.method_set_selectable, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_selectable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_selectable")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_selectable() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorProperty.method_is_selectable, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_use_folding: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_folding")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_folding(_ useFolding: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: useFolding) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorProperty.method_set_use_folding, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_using_folding: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_using_folding")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_using_folding() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorProperty.method_is_using_folding, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_name_split_ratio: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_name_split_ratio")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_name_split_ratio(_ ratio: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: ratio) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorProperty.method_set_name_split_ratio, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_name_split_ratio: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_name_split_ratio")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_name_split_ratio() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(EditorProperty.method_get_name_split_ratio, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_deselect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("deselect")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Draw property as not selected. Used by the inspector.
    public final func deselect() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(EditorProperty.method_deselect, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_is_selected: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_selected")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if property is drawn as selected. Used by the inspector.
    public final func isSelected() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorProperty.method_is_selected, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_select: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("select")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1025054187)!
            }
            
        }
        
    }()
    
    /// Draw property as selected. Used by the inspector.
    public final func select(focusable: Int32 = -1) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: focusable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorProperty.method_select, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_object_and_property: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_object_and_property")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4157606280)!
            }
            
        }
        
    }()
    
    /// Assigns object and property to edit.
    public final func setObjectAndProperty(object: Object?, property: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: object?.handle) { pArg0 in
            withUnsafePointer(to: property.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorProperty.method_set_object_and_property, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_label_reference: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_label_reference")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1496901182)!
            }
            
        }
        
    }()
    
    /// Used by the inspector, set to a control that will be used as a reference to calculate the size of the label.
    public final func setLabelReference(control: Control?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: control?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorProperty.method_set_label_reference, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_emit_changed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("emit_changed")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1822500399)!
            }
            
        }
        
    }()
    
    /// If one or several properties have changed, this must be called. `field` is used in case your editor can modify fields separately (as an example, Vector3.x). The `changing` argument avoids the editor requesting this property to be refreshed (leave as `false` if unsure).
    public final func emitChanged(property: StringName, value: Variant?, field: StringName = StringName (""), changing: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: property.content) { pArg0 in
            withUnsafePointer(to: value.content) { pArg1 in
                withUnsafePointer(to: field.content) { pArg2 in
                    withUnsafePointer(to: changing) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(EditorProperty.method_emit_changed, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_set_read_only":
                return _EditorProperty_proxy_set_read_only
            case "_update_property":
                return _EditorProperty_proxy_update_property
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
    // Signals 
    /// Do not emit this manually, use the ``emitChanged(property:value:field:changing:)`` method instead.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.propertyChanged.connect { property, value, field, changing in
    ///    print ("caught signal")
    /// }
    /// ```
    public var propertyChanged: SignalWithArguments<StringName, StringName, Bool> { SignalWithArguments<StringName, StringName, Bool> (target: self, signalName: "property_changed") }
    
    /// Emit it if you want multiple properties modified at the same time. Do not use if added via ``EditorInspectorPlugin/_parseProperty(object:type:name:hintType:hintString:usageFlags:wide:)``.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.multiplePropertiesChanged.connect { properties, value in
    ///    print ("caught signal")
    /// }
    /// ```
    public var multiplePropertiesChanged: SignalWithArguments<PackedStringArray, VariantArray> { SignalWithArguments<PackedStringArray, VariantArray> (target: self, signalName: "multiple_properties_changed") }
    
    /// Emit it if you want to add this value as an animation key (check for keying being enabled first).
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.propertyKeyed.connect { property in
    ///    print ("caught signal")
    /// }
    /// ```
    public var propertyKeyed: SignalWithArguments<StringName> { SignalWithArguments<StringName> (target: self, signalName: "property_keyed") }
    
    /// Emitted when a property was deleted. Used internally.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.propertyDeleted.connect { property in
    ///    print ("caught signal")
    /// }
    /// ```
    public var propertyDeleted: SignalWithArguments<StringName> { SignalWithArguments<StringName> (target: self, signalName: "property_deleted") }
    
    /// Emit it if you want to key a property with a single value.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.propertyKeyedWithValue.connect { property, value in
    ///    print ("caught signal")
    /// }
    /// ```
    public var propertyKeyedWithValue: SignalWithArguments<StringName> { SignalWithArguments<StringName> (target: self, signalName: "property_keyed_with_value") }
    
    /// Emitted when a property was checked. Used internally.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.propertyChecked.connect { property, checked in
    ///    print ("caught signal")
    /// }
    /// ```
    public var propertyChecked: SignalWithArguments<StringName, Bool> { SignalWithArguments<StringName, Bool> (target: self, signalName: "property_checked") }
    
    /// Emit it if you want to mark a property as favorited, making it appear at the top of the inspector.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.propertyFavorited.connect { property, favorited in
    ///    print ("caught signal")
    /// }
    /// ```
    public var propertyFavorited: SignalWithArguments<StringName, Bool> { SignalWithArguments<StringName, Bool> (target: self, signalName: "property_favorited") }
    
    /// Emit it if you want to mark (or unmark) the value of a property for being saved regardless of being equal to the default value.
    /// 
    /// The default value is the one the property will get when the node is just instantiated and can come from an ancestor scene in the inheritance/instantiation chain, a script or a builtin class.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.propertyPinned.connect { property, pinned in
    ///    print ("caught signal")
    /// }
    /// ```
    public var propertyPinned: SignalWithArguments<StringName, Bool> { SignalWithArguments<StringName, Bool> (target: self, signalName: "property_pinned") }
    
    /// Emitted when the revertability (i.e., whether it has a non-default value and thus is displayed with a revert icon) of a property has changed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.propertyCanRevertChanged.connect { property, canRevert in
    ///    print ("caught signal")
    /// }
    /// ```
    public var propertyCanRevertChanged: SignalWithArguments<StringName, Bool> { SignalWithArguments<StringName, Bool> (target: self, signalName: "property_can_revert_changed") }
    
    /// If you want a sub-resource to be edited, emit this signal with the resource.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.resourceSelected.connect { path, resource in
    ///    print ("caught signal")
    /// }
    /// ```
    public var resourceSelected: SignalWithArguments<String, Resource?> { SignalWithArguments<String, Resource?> (target: self, signalName: "resource_selected") }
    
    /// Used by sub-inspectors. Emit it if what was selected was an Object ID.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.objectIdSelected.connect { property, id in
    ///    print ("caught signal")
    /// }
    /// ```
    public var objectIdSelected: SignalWithArguments<StringName, Int64> { SignalWithArguments<StringName, Int64> (target: self, signalName: "object_id_selected") }
    
    /// Emitted when selected. Used internally.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.selected.connect { path, focusableIdx in
    ///    print ("caught signal")
    /// }
    /// ```
    public var selected: SignalWithArguments<String, Int64> { SignalWithArguments<String, Int64> (target: self, signalName: "selected") }
    
}

// Support methods for proxies
func _EditorProperty_proxy_set_read_only (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorProperty else { return }
    swiftObject._setReadOnly (args [0]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _EditorProperty_proxy_update_property (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorProperty else { return }
    swiftObject._updateProperty ()
}

