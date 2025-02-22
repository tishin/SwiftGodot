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


/// A control used to edit properties of an object.
/// 
/// This is the control that implements property editing in the editor's Settings dialogs, the Inspector dock, etc. To get the ``EditorInspector`` used in the editor's Inspector dock, use ``EditorInterface/getInspector()``.
/// 
/// ``EditorInspector`` will show properties in the same order as the array returned by ``Object/getPropertyList()``.
/// 
/// If a property's name is path-like (i.e. if it contains forward slashes), ``EditorInspector`` will create nested sections for "directories" along the path. For example, if a property is named `highlighting/gdscript/node_path_color`, it will be shown as "Node Path Color" inside the "GDScript" section nested inside the "Highlighting" section.
/// 
/// If a property has ``PropertyUsageFlags/propertyUsageGroup`` usage, it will group subsequent properties whose name starts with the property's hint string. The group ends when a property does not start with that hint string or when a new group starts. An empty group name effectively ends the current group. ``EditorInspector`` will create a top-level section for each group. For example, if a property with group usage is named `Collide With` and its hint string is `collide_with_`, a subsequent `collide_with_area` property will be shown as "Area" inside the "Collide With" section. There is also a special case: when the hint string contains the name of a property, that property is grouped too. This is mainly to help grouping properties like `font`, `font_color` and `font_size` (using the hint string `font_`).
/// 
/// If a property has ``PropertyUsageFlags/propertyUsageSubgroup`` usage, a subgroup will be created in the same way as a group, and a second-level section will be created for each subgroup.
/// 
/// > Note: Unlike sections created from path-like property names, ``EditorInspector`` won't capitalize the name for sections created from groups. So properties with group usage usually use capitalized names instead of snake_cased names.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``propertySelected``
/// - ``propertyKeyed``
/// - ``propertyDeleted``
/// - ``resourceSelected``
/// - ``objectIdSelected``
/// - ``propertyEdited``
/// - ``propertyToggled``
/// - ``editedObjectChanged``
/// - ``restartRequested``
open class EditorInspector: ScrollContainer {
    override open class var godotClassName: StringName { "EditorInspector" }
    /* Methods */
    fileprivate static var method_get_selected_path: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_selected_path")
        return withUnsafePointer(to: &EditorInspector.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Gets the path of the currently selected property.
    public final func getSelectedPath() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorInspector.method_get_selected_path, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_get_edited_object: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_edited_object")
        return withUnsafePointer(to: &EditorInspector.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2050059866)!
            }
            
        }
        
    }()
    
    /// Returns the object currently selected in this inspector.
    public final func getEditedObject() -> Object? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(EditorInspector.method_get_edited_object, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    // Signals 
    /// Emitted when a property is selected in the inspector.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.propertySelected.connect { property in
    ///    print ("caught signal")
    /// }
    /// ```
    public var propertySelected: SignalWithArguments<String> { SignalWithArguments<String> (target: self, signalName: "property_selected") }
    
    /// Emitted when a property is keyed in the inspector. Properties can be keyed by clicking the "key" icon next to a property when the Animation panel is toggled.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.propertyKeyed.connect { property, value, advance in
    ///    print ("caught signal")
    /// }
    /// ```
    public var propertyKeyed: SignalWithArguments<String, Bool> { SignalWithArguments<String, Bool> (target: self, signalName: "property_keyed") }
    
    /// Emitted when a property is removed from the inspector.
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
    public var propertyDeleted: SignalWithArguments<String> { SignalWithArguments<String> (target: self, signalName: "property_deleted") }
    
    /// Emitted when a resource is selected in the inspector.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.resourceSelected.connect { resource, path in
    ///    print ("caught signal")
    /// }
    /// ```
    public var resourceSelected: SignalWithArguments<Resource?, String> { SignalWithArguments<Resource?, String> (target: self, signalName: "resource_selected") }
    
    /// Emitted when the Edit button of an ``Object`` has been pressed in the inspector. This is mainly used in the remote scene tree Inspector.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.objectIdSelected.connect { id in
    ///    print ("caught signal")
    /// }
    /// ```
    public var objectIdSelected: SignalWithArguments<Int64> { SignalWithArguments<Int64> (target: self, signalName: "object_id_selected") }
    
    /// Emitted when a property is edited in the inspector.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.propertyEdited.connect { property in
    ///    print ("caught signal")
    /// }
    /// ```
    public var propertyEdited: SignalWithArguments<String> { SignalWithArguments<String> (target: self, signalName: "property_edited") }
    
    /// Emitted when a boolean property is toggled in the inspector.
    /// 
    /// > Note: This signal is never emitted if the internal `autoclear` property enabled. Since this property is always enabled in the editor inspector, this signal is never emitted by the editor itself.
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
    /// obj.propertyToggled.connect { property, checked in
    ///    print ("caught signal")
    /// }
    /// ```
    public var propertyToggled: SignalWithArguments<String, Bool> { SignalWithArguments<String, Bool> (target: self, signalName: "property_toggled") }
    
    /// Emitted when the object being edited by the inspector has changed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.editedObjectChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var editedObjectChanged: SimpleSignal { SimpleSignal (target: self, signalName: "edited_object_changed") }
    
    /// Emitted when a property that requires a restart to be applied is edited in the inspector. This is only used in the Project Settings and Editor Settings.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.restartRequested.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var restartRequested: SimpleSignal { SimpleSignal (target: self, signalName: "restart_requested") }
    
}

