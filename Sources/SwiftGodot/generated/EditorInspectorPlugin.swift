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


/// Plugin for adding custom property editors on the inspector.
/// 
/// ``EditorInspectorPlugin`` allows adding custom property editors to ``EditorInspector``.
/// 
/// When an object is edited, the ``_canHandle(object:)`` function is called and must return `true` if the object type is supported.
/// 
/// If supported, the function ``_parseBegin(object:)`` will be called, allowing to place custom controls at the beginning of the class.
/// 
/// Subsequently, the ``_parseCategory(object:category:)`` and ``_parseProperty(object:type:name:hintType:hintString:usageFlags:wide:)`` are called for every category and property. They offer the ability to add custom controls to the inspector too.
/// 
/// Finally, ``_parseEnd(object:)`` will be called.
/// 
/// On each of these calls, the "add" functions can be called.
/// 
/// To use ``EditorInspectorPlugin``, register it using the ``EditorPlugin/addInspectorPlugin(_:)`` method first.
/// 
open class EditorInspectorPlugin: RefCounted {
    private static var className = StringName("EditorInspectorPlugin")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__can_handle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_can_handle")
        return withUnsafePointer(to: &EditorInspectorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 397768994)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this object can be handled by this plugin.
    @_documentation(visibility: public)
    open func _canHandle(object: Object?) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: object?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorInspectorPlugin.method__can_handle, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__parse_begin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_parse_begin")
        return withUnsafePointer(to: &EditorInspectorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3975164845)!
            }
            
        }
        
    }()
    
    /// Called to allow adding controls at the beginning of the property list for `object`.
    @_documentation(visibility: public)
    open func _parseBegin(object: Object?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: object?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorInspectorPlugin.method__parse_begin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__parse_category: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_parse_category")
        return withUnsafePointer(to: &EditorInspectorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 357144787)!
            }
            
        }
        
    }()
    
    /// Called to allow adding controls at the beginning of a category in the property list for `object`.
    @_documentation(visibility: public)
    open func _parseCategory(object: Object?, category: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: object?.handle) { pArg0 in
            let category = GString(category)
            withUnsafePointer(to: category.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorInspectorPlugin.method__parse_category, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__parse_group: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_parse_group")
        return withUnsafePointer(to: &EditorInspectorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 357144787)!
            }
            
        }
        
    }()
    
    /// Called to allow adding controls at the beginning of a group or a sub-group in the property list for `object`.
    @_documentation(visibility: public)
    open func _parseGroup(object: Object?, group: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: object?.handle) { pArg0 in
            let group = GString(group)
            withUnsafePointer(to: group.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorInspectorPlugin.method__parse_group, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__parse_property: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_parse_property")
        return withUnsafePointer(to: &EditorInspectorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1087679910)!
            }
            
        }
        
    }()
    
    /// Called to allow adding property-specific editors to the property list for `object`. The added editor control must extend ``EditorProperty``. Returning `true` removes the built-in editor for this property, otherwise allows to insert a custom editor before the built-in one.
    @_documentation(visibility: public)
    open func _parseProperty(object: Object?, type: Variant.GType, name: String, hintType: PropertyHint, hintString: String, usageFlags: PropertyUsageFlags, wide: Bool) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: object?.handle) { pArg0 in
            withUnsafePointer(to: type.rawValue) { pArg1 in
                let name = GString(name)
                withUnsafePointer(to: name.content) { pArg2 in
                    withUnsafePointer(to: hintType.rawValue) { pArg3 in
                        let hintString = GString(hintString)
                        withUnsafePointer(to: hintString.content) { pArg4 in
                            withUnsafePointer(to: usageFlags.rawValue) { pArg5 in
                                withUnsafePointer(to: wide) { pArg6 in
                                    withUnsafePointer(to: UnsafeRawPointersN7(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6)) { pArgs in
                                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 7) { pArgs in
                                            gi.object_method_bind_ptrcall(EditorInspectorPlugin.method__parse_property, handle, pArgs, &_result)
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__parse_end: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_parse_end")
        return withUnsafePointer(to: &EditorInspectorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3975164845)!
            }
            
        }
        
    }()
    
    /// Called to allow adding controls at the end of the property list for `object`.
    @_documentation(visibility: public)
    open func _parseEnd(object: Object?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: object?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorInspectorPlugin.method__parse_end, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_custom_control: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_custom_control")
        return withUnsafePointer(to: &EditorInspectorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1496901182)!
            }
            
        }
        
    }()
    
    /// Adds a custom control, which is not necessarily a property editor.
    public final func addCustomControl(_ control: Control?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: control?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorInspectorPlugin.method_add_custom_control, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_property_editor: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_property_editor")
        return withUnsafePointer(to: &EditorInspectorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2042698479)!
            }
            
        }
        
    }()
    
    /// Adds a property editor for an individual property. The `editor` control must extend ``EditorProperty``.
    /// 
    /// There can be multiple property editors for a property. If `addToEnd` is `true`, this newly added editor will be displayed after all the other editors of the property whose `addToEnd` is `false`. For example, the editor uses this parameter to add an "Edit Region" button for ``Sprite2D/regionRect`` below the regular ``Rect2`` editor.
    /// 
    /// `label` can be used to choose a custom label for the property editor in the inspector. If left empty, the label is computed from the name of the property instead.
    /// 
    public final func addPropertyEditor(property: String, editor: Control?, addToEnd: Bool = false, label: String = "") {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let property = GString(property)
        withUnsafePointer(to: property.content) { pArg0 in
            withUnsafePointer(to: editor?.handle) { pArg1 in
                withUnsafePointer(to: addToEnd) { pArg2 in
                    let label = GString(label)
                    withUnsafePointer(to: label.content) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(EditorInspectorPlugin.method_add_property_editor, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_property_editor_for_multiple_properties: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_property_editor_for_multiple_properties")
        return withUnsafePointer(to: &EditorInspectorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 788598683)!
            }
            
        }
        
    }()
    
    /// Adds an editor that allows modifying multiple properties. The `editor` control must extend ``EditorProperty``.
    public final func addPropertyEditorForMultipleProperties(label: String, properties: PackedStringArray, editor: Control?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let label = GString(label)
        withUnsafePointer(to: label.content) { pArg0 in
            withUnsafePointer(to: properties.content) { pArg1 in
                withUnsafePointer(to: editor?.handle) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorInspectorPlugin.method_add_property_editor_for_multiple_properties, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_can_handle":
                return _EditorInspectorPlugin_proxy_can_handle
            case "_parse_begin":
                return _EditorInspectorPlugin_proxy_parse_begin
            case "_parse_category":
                return _EditorInspectorPlugin_proxy_parse_category
            case "_parse_end":
                return _EditorInspectorPlugin_proxy_parse_end
            case "_parse_group":
                return _EditorInspectorPlugin_proxy_parse_group
            case "_parse_property":
                return _EditorInspectorPlugin_proxy_parse_property
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _EditorInspectorPlugin_proxy_can_handle (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorInspectorPlugin else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._canHandle (object: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Object)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorInspectorPlugin_proxy_parse_begin (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorInspectorPlugin else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    swiftObject._parseBegin (object: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Object)
}

func _EditorInspectorPlugin_proxy_parse_category (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorInspectorPlugin else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    swiftObject._parseCategory (object: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Object, category: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
}

func _EditorInspectorPlugin_proxy_parse_end (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorInspectorPlugin else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    swiftObject._parseEnd (object: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Object)
}

func _EditorInspectorPlugin_proxy_parse_group (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorInspectorPlugin else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    swiftObject._parseGroup (object: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Object, group: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
}

func _EditorInspectorPlugin_proxy_parse_property (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorInspectorPlugin else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._parseProperty (object: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Object, type: args [1]!.assumingMemoryBound (to: Variant.GType.self).pointee, name: GString.stringFromGStringPtr (ptr: args [2]!) ?? "", hintType: args [3]!.assumingMemoryBound (to: PropertyHint.self).pointee, hintString: GString.stringFromGStringPtr (ptr: args [4]!) ?? "", usageFlags: args [5]!.assumingMemoryBound (to: PropertyUsageFlags.self).pointee, wide: args [6]!.assumingMemoryBound (to: Bool.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

