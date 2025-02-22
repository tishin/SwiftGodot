// This file is auto-generated, do not edit.
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
#if canImport(Darwin)
import Darwin
#elseif os(Windows)
import ucrt
import WinSDK
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
/// - ``propertyPinned``
/// - ``propertyCanRevertChanged``
/// - ``resourceSelected``
/// - ``objectIdSelected``
/// - ``selected``
open class EditorProperty: Container {
    override open class var godotClassName: StringName { "EditorProperty" }
    
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
    
    /* Methods */
    /// When this virtual function is called, you must update your editor.
    @_documentation(visibility: public)
    open func _updateProperty() {
    }
    
    /// Called when the read-only status of the property is changed. It may be used to change custom controls into a read-only or modifiable state.
    @_documentation(visibility: public)
    open func _setReadOnly(_ readOnly: Bool) {
    }
    
    fileprivate static var method_set_label: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_label")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_label(_ text: String) {
        let text = GString(text)
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorProperty.method_set_label, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_label: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_label")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_label() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorProperty.method_get_label, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_set_read_only: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_read_only")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_read_only(_ readOnly: Bool) {
        withUnsafePointer(to: readOnly) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorProperty.method_set_read_only, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_read_only: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_read_only")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_read_only() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorProperty.method_is_read_only, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_checkable: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_checkable")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_checkable(_ checkable: Bool) {
        withUnsafePointer(to: checkable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorProperty.method_set_checkable, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_checkable: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_checkable")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_checkable() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorProperty.method_is_checkable, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_checked: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_checked")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_checked(_ checked: Bool) {
        withUnsafePointer(to: checked) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorProperty.method_set_checked, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_checked: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_checked")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_checked() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorProperty.method_is_checked, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_draw_warning: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_draw_warning")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_draw_warning(_ drawWarning: Bool) {
        withUnsafePointer(to: drawWarning) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorProperty.method_set_draw_warning, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_draw_warning: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_draw_warning")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_draw_warning() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorProperty.method_is_draw_warning, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_keying: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_keying")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_keying(_ keying: Bool) {
        withUnsafePointer(to: keying) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorProperty.method_set_keying, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_keying: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_keying")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_keying() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorProperty.method_is_keying, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_deletable: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_deletable")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_deletable(_ deletable: Bool) {
        withUnsafePointer(to: deletable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorProperty.method_set_deletable, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_deletable: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_deletable")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_deletable() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorProperty.method_is_deletable, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_edited_property: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_edited_property")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    /// Gets the edited property. If your editor is for a single property (added via ``EditorInspectorPlugin/_parseProperty(object:type:name:hintType:hintString:usageFlags:wide:)``), then this will return the property.
    public final func getEditedProperty() -> StringName {
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(EditorProperty.method_get_edited_property, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_edited_object: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_edited_object")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2050059866)!
            }
            
        }
        
    }()
    
    /// Gets the edited object.
    public final func getEditedObject() -> Object? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(EditorProperty.method_get_edited_object, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_update_property: GDExtensionMethodBindPtr = {
        let methodName = StringName("update_property")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Forces refresh of the property display.
    public final func updateProperty() {
        gi.object_method_bind_ptrcall(EditorProperty.method_update_property, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static var method_add_focusable: GDExtensionMethodBindPtr = {
        let methodName = StringName("add_focusable")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1496901182)!
            }
            
        }
        
    }()
    
    /// If any of the controls added can gain keyboard focus, add it here. This ensures that focus will be restored if the inspector is refreshed.
    public final func addFocusable(control: Control?) {
        withUnsafePointer(to: control?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorProperty.method_add_focusable, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_bottom_editor: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_bottom_editor")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1496901182)!
            }
            
        }
        
    }()
    
    /// Puts the `editor` control below the property label. The control must be previously added using ``Node/addChild(node:forceReadableName:`internal`:)``.
    public final func setBottomEditor(_ editor: Control?) {
        withUnsafePointer(to: editor?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorProperty.method_set_bottom_editor, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_emit_changed: GDExtensionMethodBindPtr = {
        let methodName = StringName("emit_changed")
        return withUnsafePointer(to: &EditorProperty.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3069422438)!
            }
            
        }
        
    }()
    
    /// If one or several properties have changed, this must be called. `field` is used in case your editor can modify fields separately (as an example, Vector3.x). The `changing` argument avoids the editor requesting this property to be refreshed (leave as `false` if unsure).
    public final func emitChanged(property: StringName, value: Variant?, field: StringName = StringName (""), changing: Bool = false) {
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
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
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
    public var multiplePropertiesChanged: SignalWithArguments<PackedStringArray, GArray?> { SignalWithArguments<PackedStringArray, GArray?> (target: self, signalName: "multiple_properties_changed") }
    
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
    let swiftObject = Unmanaged<EditorProperty>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._setReadOnly (args [0]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _EditorProperty_proxy_update_property (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<EditorProperty>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._updateProperty ()
}

