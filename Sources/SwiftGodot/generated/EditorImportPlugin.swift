// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Registers a custom resource importer in the editor. Use the class to parse any file and import it as a new resource type.
/// 
/// ``EditorImportPlugin``s provide a way to extend the editor's resource import functionality. Use them to import resources from custom files or to provide alternatives to the editor's existing importers.
/// 
/// EditorImportPlugins work by associating with specific file extensions and a resource type. See ``_getRecognizedExtensions()`` and ``_getResourceType()``. They may optionally specify some import presets that affect the import process. EditorImportPlugins are responsible for creating the resources and saving them in the `.godot/imported` directory (see ``ProjectSettings/application/config/useHiddenProjectDataDirectory``).
/// 
/// Below is an example EditorImportPlugin that imports a ``Mesh`` from a file with the extension ".special" or ".spec":
/// 
/// To use ``EditorImportPlugin``, register it using the ``EditorPlugin/addImportPlugin(importer:firstPriority:)`` method first.
/// 
open class EditorImportPlugin: ResourceImporter {
    override open class var godotClassName: StringName { "EditorImportPlugin" }
    /* Methods */
    /// Gets the unique name of the importer.
    @_documentation(visibility: public)
    open func _getImporterName() -> String {
        return String ()
    }
    
    /// Gets the name to display in the import window. You should choose this name as a continuation to "Import as", e.g. "Import as Special Mesh".
    @_documentation(visibility: public)
    open func _getVisibleName() -> String {
        return String ()
    }
    
    /// Gets the number of initial presets defined by the plugin. Use ``_getImportOptions(path:presetIndex:)`` to get the default options for the preset and ``_getPresetName(presetIndex:)`` to get the name of the preset.
    @_documentation(visibility: public)
    open func _getPresetCount() -> Int32 {
        return 0
    }
    
    /// Gets the name of the options preset at this index.
    @_documentation(visibility: public)
    open func _getPresetName(presetIndex: Int32) -> String {
        return String ()
    }
    
    /// Gets the list of file extensions to associate with this loader (case-insensitive). e.g. `["obj"]`.
    @_documentation(visibility: public)
    open func _getRecognizedExtensions() -> PackedStringArray {
        return PackedStringArray ()
    }
    
    /// Gets the options and default values for the preset at this index. Returns an Array of Dictionaries with the following keys: `name`, `default_value`, `property_hint` (optional), `hint_string` (optional), `usage` (optional).
    @_documentation(visibility: public)
    open func _getImportOptions(path: String, presetIndex: Int32) -> VariantCollection<GDictionary> {
        return VariantCollection<GDictionary>()
    }
    
    /// Gets the extension used to save this resource in the `.godot/imported` directory (see ``ProjectSettings/application/config/useHiddenProjectDataDirectory``).
    @_documentation(visibility: public)
    open func _getSaveExtension() -> String {
        return String ()
    }
    
    /// Gets the Godot resource type associated with this loader. e.g. `"Mesh"` or `"Animation"`.
    @_documentation(visibility: public)
    open func _getResourceType() -> String {
        return String ()
    }
    
    /// Gets the priority of this plugin for the recognized extension. Higher priority plugins will be preferred. The default priority is `1.0`.
    @_documentation(visibility: public)
    open func _getPriority() -> Double {
        return 0.0
    }
    
    /// Gets the order of this importer to be run when importing resources. Importers with _lower_ import orders will be called first, and higher values will be called later. Use this to ensure the importer runs after the dependencies are already imported. The default import order is `0` unless overridden by a specific importer. See ``ResourceImporter.ImportOrder`` for some predefined values.
    @_documentation(visibility: public)
    open func _getImportOrder() -> Int32 {
        return 0
    }
    
    /// This method can be overridden to hide specific import options if conditions are met. This is mainly useful for hiding options that depend on others if one of them is disabled. For example:
    /// 
    /// Returns `true` to make all options always visible.
    /// 
    @_documentation(visibility: public)
    open func _getOptionVisibility(path: String, optionName: StringName, options: GDictionary) -> Bool {
        return false
    }
    
    /// Imports `sourceFile` into `savePath` with the import `options` specified. The `platformVariants` and `genFiles` arrays will be modified by this function.
    /// 
    /// This method must be overridden to do the actual importing work. See this class' description for an example of overriding this method.
    /// 
    @_documentation(visibility: public)
    open func _import(sourceFile: String, savePath: String, options: GDictionary, platformVariants: VariantCollection<String>, genFiles: VariantCollection<String>) -> GodotError {
        return .ok
    }
    
    /// Tells whether this importer can be run in parallel on threads, or, on the contrary, it's only safe for the editor to call it from the main thread, for one file at a time.
    /// 
    /// If this method is not overridden, it will return `true` by default (i.e., safe for parallel importing).
    /// 
    @_documentation(visibility: public)
    open func _canImportThreaded() -> Bool {
        return false
    }
    
    fileprivate static var method_append_import_external_resource: GDExtensionMethodBindPtr = {
        let methodName = StringName("append_import_external_resource")
        return withUnsafePointer(to: &EditorImportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 320493106)!
            }
            
        }
        
    }()
    
    /// This function can only be called during the ``_import(sourceFile:savePath:options:platformVariants:genFiles:)`` callback and it allows manually importing resources from it. This is useful when the imported file generates external resources that require importing (as example, images). Custom parameters for the ".import" file can be passed via the `customOptions`. Additionally, in cases where multiple importers can handle a file, the `customImporter` ca be specified to force a specific one. This function performs a resource import and returns immediately with a success or error code. `generatorParameters` defines optional extra metadata which will be stored as [code skip-lint]generator_parameters` in the `remap` section of the `.import` file, for example to store a md5 hash of the source data.
    public final func appendImportExternalResource(path: String, customOptions: GDictionary = GDictionary (), customImporter: String = "", generatorParameters: Variant) -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: customOptions.content) { pArg1 in
                let customImporter = GString(customImporter)
                withUnsafePointer(to: customImporter.content) { pArg2 in
                    withUnsafePointer(to: generatorParameters.content) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(EditorImportPlugin.method_append_import_external_resource, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_can_import_threaded":
                return _EditorImportPlugin_proxy_can_import_threaded
            case "_get_import_options":
                return _EditorImportPlugin_proxy_get_import_options
            case "_get_import_order":
                return _EditorImportPlugin_proxy_get_import_order
            case "_get_importer_name":
                return _EditorImportPlugin_proxy_get_importer_name
            case "_get_option_visibility":
                return _EditorImportPlugin_proxy_get_option_visibility
            case "_get_preset_count":
                return _EditorImportPlugin_proxy_get_preset_count
            case "_get_preset_name":
                return _EditorImportPlugin_proxy_get_preset_name
            case "_get_priority":
                return _EditorImportPlugin_proxy_get_priority
            case "_get_recognized_extensions":
                return _EditorImportPlugin_proxy_get_recognized_extensions
            case "_get_resource_type":
                return _EditorImportPlugin_proxy_get_resource_type
            case "_get_save_extension":
                return _EditorImportPlugin_proxy_get_save_extension
            case "_get_visible_name":
                return _EditorImportPlugin_proxy_get_visible_name
            case "_import":
                return _EditorImportPlugin_proxy_import
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _EditorImportPlugin_proxy_can_import_threaded (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<EditorImportPlugin>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._canImportThreaded ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorImportPlugin_proxy_get_import_options (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorImportPlugin>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getImportOptions (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", presetIndex: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Dictionary
}

func _EditorImportPlugin_proxy_get_import_order (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<EditorImportPlugin>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getImportOrder ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _EditorImportPlugin_proxy_get_importer_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<EditorImportPlugin>.fromOpaque(instance).takeUnretainedValue()
    let ret = GString (swiftObject._getImporterName ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorImportPlugin_proxy_get_option_visibility (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorImportPlugin>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getOptionVisibility (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", optionName: StringName (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee), options: GDictionary (content: args [2]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorImportPlugin_proxy_get_preset_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<EditorImportPlugin>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getPresetCount ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _EditorImportPlugin_proxy_get_preset_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorImportPlugin>.fromOpaque(instance).takeUnretainedValue()
    let ret = GString (swiftObject._getPresetName (presetIndex: args [0]!.assumingMemoryBound (to: Int32.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorImportPlugin_proxy_get_priority (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<EditorImportPlugin>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getPriority ()
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _EditorImportPlugin_proxy_get_recognized_extensions (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<EditorImportPlugin>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getRecognizedExtensions ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _EditorImportPlugin_proxy_get_resource_type (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<EditorImportPlugin>.fromOpaque(instance).takeUnretainedValue()
    let ret = GString (swiftObject._getResourceType ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorImportPlugin_proxy_get_save_extension (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<EditorImportPlugin>.fromOpaque(instance).takeUnretainedValue()
    let ret = GString (swiftObject._getSaveExtension ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorImportPlugin_proxy_get_visible_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<EditorImportPlugin>.fromOpaque(instance).takeUnretainedValue()
    let ret = GString (swiftObject._getVisibleName ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorImportPlugin_proxy_import (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorImportPlugin>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._import (sourceFile: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", savePath: GString.stringFromGStringPtr (ptr: args [1]!) ?? "", options: GDictionary (content: args [2]!.assumingMemoryBound (to: Int64.self).pointee), platformVariants: args [3]!.assumingMemoryBound (to: VariantCollection<String>.self).pointee, genFiles: args [4]!.assumingMemoryBound (to: VariantCollection<String>.self).pointee)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}
