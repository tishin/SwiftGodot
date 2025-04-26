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


/// A script that is executed when exporting the project.
/// 
/// ``EditorExportPlugin``s are automatically invoked whenever the user exports the project. Their most common use is to determine what files are being included in the exported project. For each plugin, ``_exportBegin(features:isDebug:path:flags:)`` is called at the beginning of the export process and then ``_exportFile(path:type:features:)`` is called for each exported file.
/// 
/// To use ``EditorExportPlugin``, register it using the ``EditorPlugin/addExportPlugin(_:)`` method first.
/// 
open class EditorExportPlugin: RefCounted {
    private static var className = StringName("EditorExportPlugin")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__export_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_export_file")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3533781844)!
            }
            
        }
        
    }()
    
    /// Virtual method to be overridden by the user. Called for each exported file before ``_customizeResource(_:path:)`` and ``_customizeScene(_:path:)``. The arguments can be used to identify the file. `path` is the path of the file, `type` is the ``Resource`` represented by the file (e.g. ``PackedScene``), and `features` is the list of features for the export.
    /// 
    /// Calling ``skip()`` inside this callback will make the file not included in the export.
    /// 
    @_documentation(visibility: public)
    open func _exportFile(path: String, type: String, features: PackedStringArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            let type = GString(type)
            withUnsafePointer(to: type.content) { pArg1 in
                withUnsafePointer(to: features.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorExportPlugin.method__export_file, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__export_begin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_export_begin")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2765511433)!
            }
            
        }
        
    }()
    
    /// Virtual method to be overridden by the user. It is called when the export starts and provides all information about the export. `features` is the list of features for the export, `isDebug` is `true` for debug builds, `path` is the target path for the exported project. `flags` is only used when running a runnable profile, e.g. when using native run on Android.
    @_documentation(visibility: public)
    open func _exportBegin(features: PackedStringArray, isDebug: Bool, path: String, flags: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: features.content) { pArg0 in
            withUnsafePointer(to: isDebug) { pArg1 in
                let path = GString(path)
                withUnsafePointer(to: path.content) { pArg2 in
                    withUnsafePointer(to: flags) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(EditorExportPlugin.method__export_begin, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__export_end: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_export_end")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Virtual method to be overridden by the user. Called when the export is finished.
    @_documentation(visibility: public)
    open func _exportEnd() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(EditorExportPlugin.method__export_end, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__begin_customize_resources: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_begin_customize_resources")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1312023292)!
            }
            
        }
        
    }()
    
    /// Return `true` if this plugin will customize resources based on the platform and features used.
    /// 
    /// When enabled, ``_getCustomizationConfigurationHash()`` and ``_customizeResource(_:path:)`` will be called and must be implemented.
    /// 
    @_documentation(visibility: public)
    open func _beginCustomizeResources(platform: EditorExportPlatform?, features: PackedStringArray) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: platform?.handle) { pArg0 in
            withUnsafePointer(to: features.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorExportPlugin.method__begin_customize_resources, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__customize_resource: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_customize_resource")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 307917495)!
            }
            
        }
        
    }()
    
    /// Customize a resource. If changes are made to it, return the same or a new resource. Otherwise, return `null`. When a new resource is returned, `resource` will be replaced by a copy of the new resource.
    /// 
    /// The `path` argument is only used when customizing an actual file, otherwise this means that this resource is part of another one and it will be empty.
    /// 
    /// Implementing this method is required if ``_beginCustomizeResources(platform:features:)`` returns `true`.
    /// 
    /// > Note: When customizing any of the following types and returning another resource, the other resource should not be skipped using ``skip()`` in ``_exportFile(path:type:features:)``:
    /// 
    /// - ``AtlasTexture``
    /// 
    /// - ``CompressedCubemap``
    /// 
    /// - ``CompressedCubemapArray``
    /// 
    /// - ``CompressedTexture2D``
    /// 
    /// - ``CompressedTexture2DArray``
    /// 
    /// - ``CompressedTexture3D``
    /// 
    @_documentation(visibility: public)
    open func _customizeResource(_ resource: Resource?, path: String) -> Resource? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: resource?.handle) { pArg0 in
            let path = GString(path)
            withUnsafePointer(to: path.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorExportPlugin.method__customize_resource, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__begin_customize_scenes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_begin_customize_scenes")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1312023292)!
            }
            
        }
        
    }()
    
    /// Return `true` if this plugin will customize scenes based on the platform and features used.
    /// 
    /// When enabled, ``_getCustomizationConfigurationHash()`` and ``_customizeScene(_:path:)`` will be called and must be implemented.
    /// 
    /// > Note: ``_customizeScene(_:path:)`` will only be called for scenes that have been modified since the last export.
    /// 
    @_documentation(visibility: public)
    open func _beginCustomizeScenes(platform: EditorExportPlatform?, features: PackedStringArray) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: platform?.handle) { pArg0 in
            withUnsafePointer(to: features.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorExportPlugin.method__begin_customize_scenes, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__customize_scene: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_customize_scene")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 498701822)!
            }
            
        }
        
    }()
    
    /// Customize a scene. If changes are made to it, return the same or a new scene. Otherwise, return `null`. If a new scene is returned, it is up to you to dispose of the old one.
    /// 
    /// Implementing this method is required if ``_beginCustomizeScenes(platform:features:)`` returns `true`.
    /// 
    @_documentation(visibility: public)
    open func _customizeScene(_ scene: Node?, path: String) -> Node? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: scene?.handle) { pArg0 in
            let path = GString(path)
            withUnsafePointer(to: path.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorExportPlugin.method__customize_scene, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__get_customization_configuration_hash: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_customization_configuration_hash")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Return a hash based on the configuration passed (for both scenes and resources). This helps keep separate caches for separate export configurations.
    /// 
    /// Implementing this method is required if ``_beginCustomizeResources(platform:features:)`` returns `true`.
    /// 
    @_documentation(visibility: public)
    open func _getCustomizationConfigurationHash() -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        gi.object_method_bind_ptrcall(EditorExportPlugin.method__get_customization_configuration_hash, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__end_customize_scenes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_end_customize_scenes")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// This is called when the customization process for scenes ends.
    @_documentation(visibility: public)
    open func _endCustomizeScenes() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(EditorExportPlugin.method__end_customize_scenes, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__end_customize_resources: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_end_customize_resources")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// This is called when the customization process for resources ends.
    @_documentation(visibility: public)
    open func _endCustomizeResources() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(EditorExportPlugin.method__end_customize_resources, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__get_export_options: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_export_options")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 488349689)!
            }
            
        }
        
    }()
    
    /// Return a list of export options that can be configured for this export plugin.
    /// 
    /// Each element in the return value is a ``VariantDictionary`` with the following keys:
    /// 
    /// - `option`: A dictionary with the structure documented by ``Object/getPropertyList()``, but all keys are optional.
    /// 
    /// - `default_value`: The default value for this option.
    /// 
    /// - `update_visibility`: An optional boolean value. If set to `true`, the preset will emit [signal Object.property_list_changed] when the option is changed.
    /// 
    @_documentation(visibility: public)
    open func _getExportOptions(platform: EditorExportPlatform?) -> TypedArray<VariantDictionary> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        withUnsafePointer(to: platform?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlugin.method__get_export_options, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method__get_export_options_overrides: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_export_options_overrides")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2837326714)!
            }
            
        }
        
    }()
    
    /// Return a ``VariantDictionary`` of override values for export options, that will be used instead of user-provided values. Overridden options will be hidden from the user interface.
    /// 
    @_documentation(visibility: public)
    open func _getExportOptionsOverrides(platform: EditorExportPlatform?) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: platform?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlugin.method__get_export_options_overrides, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__should_update_export_options: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_should_update_export_options")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1866233299)!
            }
            
        }
        
    }()
    
    /// Return `true`, if the result of ``_getExportOptions(platform:)`` has changed and the export options of preset corresponding to `platform` should be updated.
    @_documentation(visibility: public)
    open func _shouldUpdateExportOptions(platform: EditorExportPlatform?) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: platform?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlugin.method__should_update_export_options, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_export_option_visibility: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_export_option_visibility")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3537301980)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Validates `option` and returns the visibility for the specified `platform`. The default implementation returns `true` for all options.
    /// 
    @_documentation(visibility: public)
    open func _getExportOptionVisibility(platform: EditorExportPlatform?, option: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: platform?.handle) { pArg0 in
            let option = GString(option)
            withUnsafePointer(to: option.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorExportPlugin.method__get_export_option_visibility, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_export_option_warning: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_export_option_warning")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3340251247)!
            }
            
        }
        
    }()
    
    /// Check the requirements for the given `option` and return a non-empty warning string if they are not met.
    /// 
    /// > Note: Use ``getOption(name:)`` to check the value of the export options.
    /// 
    @_documentation(visibility: public)
    open func _getExportOptionWarning(platform: EditorExportPlatform?, option: String) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: platform?.handle) { pArg0 in
            let option = GString(option)
            withUnsafePointer(to: option.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorExportPlugin.method__get_export_option_warning, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__get_export_features: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_export_features")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1057664154)!
            }
            
        }
        
    }()
    
    /// Return a ``PackedStringArray`` of additional features this preset, for the given `platform`, should have.
    @_documentation(visibility: public)
    open func _getExportFeatures(platform: EditorExportPlatform?, debug: Bool) -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        withUnsafePointer(to: platform?.handle) { pArg0 in
            withUnsafePointer(to: debug) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorExportPlugin.method__get_export_features, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_name")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Return the name identifier of this plugin (for future identification by the exporter). The plugins are sorted by name before exporting.
    /// 
    /// Implementing this method is required.
    /// 
    @_documentation(visibility: public)
    open func _getName() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorExportPlugin.method__get_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__supports_platform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_supports_platform")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1866233299)!
            }
            
        }
        
    }()
    
    /// Return `true` if the plugin supports the given `platform`.
    @_documentation(visibility: public)
    open func _supportsPlatform(_ platform: EditorExportPlatform?) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: platform?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlugin.method__supports_platform, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_android_dependencies: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_android_dependencies")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1057664154)!
            }
            
        }
        
    }()
    
    /// Virtual method to be overridden by the user. This is called to retrieve the set of Android dependencies provided by this plugin. Each returned Android dependency should have the format of an Android remote binary dependency: `org.godot.example:my-plugin:0.0.0`
    /// 
    /// For more information see <a href="https://developer.android.com/build/dependencies?agpversion=4.1#dependency-types">Android documentation on dependencies</a>.
    /// 
    /// > Note: Only supported on Android and requires ``EditorExportPlatformAndroid/gradleBuild/useGradleBuild`` to be enabled.
    /// 
    @_documentation(visibility: public)
    open func _getAndroidDependencies(platform: EditorExportPlatform?, debug: Bool) -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        withUnsafePointer(to: platform?.handle) { pArg0 in
            withUnsafePointer(to: debug) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorExportPlugin.method__get_android_dependencies, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_android_dependencies_maven_repos: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_android_dependencies_maven_repos")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1057664154)!
            }
            
        }
        
    }()
    
    /// Virtual method to be overridden by the user. This is called to retrieve the URLs of Maven repositories for the set of Android dependencies provided by this plugin.
    /// 
    /// For more information see <a href="https://docs.gradle.org/current/userguide/dependency_management.html#sec:maven_repo">Gradle documentation on dependency management</a>.
    /// 
    /// > Note: Google's Maven repo and the Maven Central repo are already included by default.
    /// 
    /// > Note: Only supported on Android and requires ``EditorExportPlatformAndroid/gradleBuild/useGradleBuild`` to be enabled.
    /// 
    @_documentation(visibility: public)
    open func _getAndroidDependenciesMavenRepos(platform: EditorExportPlatform?, debug: Bool) -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        withUnsafePointer(to: platform?.handle) { pArg0 in
            withUnsafePointer(to: debug) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorExportPlugin.method__get_android_dependencies_maven_repos, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_android_libraries: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_android_libraries")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1057664154)!
            }
            
        }
        
    }()
    
    /// Virtual method to be overridden by the user. This is called to retrieve the local paths of the Android libraries archive (AAR) files provided by this plugin.
    /// 
    /// > Note: Relative paths **must** be relative to Godot's `res://addons/` directory. For example, an AAR file located under `res://addons/hello_world_plugin/HelloWorld.release.aar` can be returned as an absolute path using `res://addons/hello_world_plugin/HelloWorld.release.aar` or a relative path using `hello_world_plugin/HelloWorld.release.aar`.
    /// 
    /// > Note: Only supported on Android and requires ``EditorExportPlatformAndroid/gradleBuild/useGradleBuild`` to be enabled.
    /// 
    @_documentation(visibility: public)
    open func _getAndroidLibraries(platform: EditorExportPlatform?, debug: Bool) -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        withUnsafePointer(to: platform?.handle) { pArg0 in
            withUnsafePointer(to: debug) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorExportPlugin.method__get_android_libraries, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_android_manifest_activity_element_contents: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_android_manifest_activity_element_contents")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4013372917)!
            }
            
        }
        
    }()
    
    /// Virtual method to be overridden by the user. This is used at export time to update the contents of the `activity` element in the generated Android manifest.
    /// 
    /// > Note: Only supported on Android and requires ``EditorExportPlatformAndroid/gradleBuild/useGradleBuild`` to be enabled.
    /// 
    @_documentation(visibility: public)
    open func _getAndroidManifestActivityElementContents(platform: EditorExportPlatform?, debug: Bool) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: platform?.handle) { pArg0 in
            withUnsafePointer(to: debug) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorExportPlugin.method__get_android_manifest_activity_element_contents, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__get_android_manifest_application_element_contents: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_android_manifest_application_element_contents")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4013372917)!
            }
            
        }
        
    }()
    
    /// Virtual method to be overridden by the user. This is used at export time to update the contents of the `application` element in the generated Android manifest.
    /// 
    /// > Note: Only supported on Android and requires ``EditorExportPlatformAndroid/gradleBuild/useGradleBuild`` to be enabled.
    /// 
    @_documentation(visibility: public)
    open func _getAndroidManifestApplicationElementContents(platform: EditorExportPlatform?, debug: Bool) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: platform?.handle) { pArg0 in
            withUnsafePointer(to: debug) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorExportPlugin.method__get_android_manifest_application_element_contents, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__get_android_manifest_element_contents: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_android_manifest_element_contents")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4013372917)!
            }
            
        }
        
    }()
    
    /// Virtual method to be overridden by the user. This is used at export time to update the contents of the `manifest` element in the generated Android manifest.
    /// 
    /// > Note: Only supported on Android and requires ``EditorExportPlatformAndroid/gradleBuild/useGradleBuild`` to be enabled.
    /// 
    @_documentation(visibility: public)
    open func _getAndroidManifestElementContents(platform: EditorExportPlatform?, debug: Bool) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: platform?.handle) { pArg0 in
            withUnsafePointer(to: debug) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorExportPlugin.method__get_android_manifest_element_contents, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_add_shared_object: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_shared_object")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3098291045)!
            }
            
        }
        
    }()
    
    /// Adds a shared object or a directory containing only shared objects with the given `tags` and destination `path`.
    /// 
    /// > Note: In case of macOS exports, those shared objects will be added to `Frameworks` directory of app bundle.
    /// 
    /// In case of a directory code-sign will error if you place non code object in directory.
    /// 
    public final func addSharedObject(path: String, tags: PackedStringArray, target: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: tags.content) { pArg1 in
                let target = GString(target)
                withUnsafePointer(to: target.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorExportPlugin.method_add_shared_object, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_ios_project_static_lib: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_ios_project_static_lib")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Adds a static lib from the given `path` to the iOS project.
    public final func addIosProjectStaticLib(path: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlugin.method_add_ios_project_static_lib, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_file")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 527928637)!
            }
            
        }
        
    }()
    
    /// Adds a custom file to be exported. `path` is the virtual path that can be used to load the file, `file` is the binary data of the file.
    /// 
    /// When called inside ``_exportFile(path:type:features:)`` and `remap` is `true`, the current file will not be exported, but instead remapped to this custom file. `remap` is ignored when called in other places.
    /// 
    /// `file` will not be imported, so consider using ``_customizeResource(_:path:)`` to remap imported resources.
    /// 
    public final func addFile(path: String, file: PackedByteArray, remap: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: file.content) { pArg1 in
                withUnsafePointer(to: remap) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorExportPlugin.method_add_file, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_ios_framework: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_ios_framework")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Adds a static library (*.a) or dynamic library (*.dylib, *.framework) to Linking Phase in iOS's Xcode project.
    public final func addIosFramework(path: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlugin.method_add_ios_framework, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_ios_embedded_framework: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_ios_embedded_framework")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Adds a dynamic library (*.dylib, *.framework) to Linking Phase in iOS's Xcode project and embeds it into resulting binary.
    /// 
    /// > Note: For static libraries (*.a) works in same way as ``addIosFramework(path:)``.
    /// 
    /// > Note: This method should not be used for System libraries as they are already present on the device.
    /// 
    public final func addIosEmbeddedFramework(path: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlugin.method_add_ios_embedded_framework, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_ios_plist_content: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_ios_plist_content")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Adds content for iOS Property List files.
    public final func addIosPlistContent(_ plistContent: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let plistContent = GString(plistContent)
        withUnsafePointer(to: plistContent.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlugin.method_add_ios_plist_content, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_ios_linker_flags: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_ios_linker_flags")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Adds linker flags for the iOS export.
    public final func addIosLinkerFlags(_ flags: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let flags = GString(flags)
        withUnsafePointer(to: flags.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlugin.method_add_ios_linker_flags, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_ios_bundle_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_ios_bundle_file")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Adds an iOS bundle file from the given `path` to the exported project.
    public final func addIosBundleFile(path: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlugin.method_add_ios_bundle_file, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_ios_cpp_code: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_ios_cpp_code")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Adds a C++ code to the iOS export. The final code is created from the code appended by each active export plugin.
    public final func addIosCppCode(_ code: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let code = GString(code)
        withUnsafePointer(to: code.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlugin.method_add_ios_cpp_code, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_macos_plugin_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_macos_plugin_file")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Adds file or directory matching `path` to `PlugIns` directory of macOS app bundle.
    /// 
    /// > Note: This is useful only for macOS exports.
    /// 
    public final func addMacosPluginFile(path: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlugin.method_add_macos_plugin_file, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_skip: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("skip")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// To be called inside ``_exportFile(path:type:features:)``. Skips the current file, so it's not included in the export.
    public final func skip() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(EditorExportPlugin.method_skip, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_get_option: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_option")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2760726917)!
            }
            
        }
        
    }()
    
    /// Returns the current value of an export option supplied by ``_getExportOptions(platform:)``.
    public final func getOption(name: StringName) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlugin.method_get_option, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_get_export_preset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_export_preset")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1610607222)!
            }
            
        }
        
    }()
    
    /// Returns currently used export preset.
    public final func getExportPreset() -> EditorExportPreset? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(EditorExportPlugin.method_get_export_preset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_export_platform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_export_platform")
        return withUnsafePointer(to: &EditorExportPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 282254641)!
            }
            
        }
        
    }()
    
    /// Returns currently used export platform.
    public final func getExportPlatform() -> EditorExportPlatform? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(EditorExportPlugin.method_get_export_platform, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_begin_customize_resources":
                return _EditorExportPlugin_proxy_begin_customize_resources
            case "_begin_customize_scenes":
                return _EditorExportPlugin_proxy_begin_customize_scenes
            case "_customize_resource":
                return _EditorExportPlugin_proxy_customize_resource
            case "_customize_scene":
                return _EditorExportPlugin_proxy_customize_scene
            case "_end_customize_resources":
                return _EditorExportPlugin_proxy_end_customize_resources
            case "_end_customize_scenes":
                return _EditorExportPlugin_proxy_end_customize_scenes
            case "_export_begin":
                return _EditorExportPlugin_proxy_export_begin
            case "_export_end":
                return _EditorExportPlugin_proxy_export_end
            case "_export_file":
                return _EditorExportPlugin_proxy_export_file
            case "_get_android_dependencies":
                return _EditorExportPlugin_proxy_get_android_dependencies
            case "_get_android_dependencies_maven_repos":
                return _EditorExportPlugin_proxy_get_android_dependencies_maven_repos
            case "_get_android_libraries":
                return _EditorExportPlugin_proxy_get_android_libraries
            case "_get_android_manifest_activity_element_contents":
                return _EditorExportPlugin_proxy_get_android_manifest_activity_element_contents
            case "_get_android_manifest_application_element_contents":
                return _EditorExportPlugin_proxy_get_android_manifest_application_element_contents
            case "_get_android_manifest_element_contents":
                return _EditorExportPlugin_proxy_get_android_manifest_element_contents
            case "_get_customization_configuration_hash":
                return _EditorExportPlugin_proxy_get_customization_configuration_hash
            case "_get_export_features":
                return _EditorExportPlugin_proxy_get_export_features
            case "_get_export_option_visibility":
                return _EditorExportPlugin_proxy_get_export_option_visibility
            case "_get_export_option_warning":
                return _EditorExportPlugin_proxy_get_export_option_warning
            case "_get_export_options":
                return _EditorExportPlugin_proxy_get_export_options
            case "_get_export_options_overrides":
                return _EditorExportPlugin_proxy_get_export_options_overrides
            case "_get_name":
                return _EditorExportPlugin_proxy_get_name
            case "_should_update_export_options":
                return _EditorExportPlugin_proxy_should_update_export_options
            case "_supports_platform":
                return _EditorExportPlugin_proxy_supports_platform
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _EditorExportPlugin_proxy_begin_customize_resources (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = swiftObject._beginCustomizeResources (platform: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPlatform, features: PackedStringArray (content: args [1]!.assumingMemoryBound (to: (Int64, Int64).self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorExportPlugin_proxy_begin_customize_scenes (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = swiftObject._beginCustomizeScenes (platform: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPlatform, features: PackedStringArray (content: args [1]!.assumingMemoryBound (to: (Int64, Int64).self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorExportPlugin_proxy_customize_resource (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = swiftObject._customizeResource (resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? Resource, path: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
    retPtr!.storeBytes (of: ret?.handle, as: UnsafeRawPointer?.self) // Resource
}

func _EditorExportPlugin_proxy_customize_scene (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = swiftObject._customizeScene (resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? Node, path: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
    retPtr!.storeBytes (of: ret?.handle, as: UnsafeRawPointer?.self) // Node
}

func _EditorExportPlugin_proxy_end_customize_resources (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlugin else { return }
    swiftObject._endCustomizeResources ()
}

func _EditorExportPlugin_proxy_end_customize_scenes (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlugin else { return }
    swiftObject._endCustomizeScenes ()
}

func _EditorExportPlugin_proxy_export_begin (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlugin else { return }
    swiftObject._exportBegin (features: PackedStringArray (content: args [0]!.assumingMemoryBound (to: (Int64, Int64).self).pointee), isDebug: args [1]!.assumingMemoryBound (to: Bool.self).pointee, path: GString.stringFromGStringPtr (ptr: args [2]!) ?? "", flags: args [3]!.assumingMemoryBound (to: UInt32.self).pointee)
}

func _EditorExportPlugin_proxy_export_end (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlugin else { return }
    swiftObject._exportEnd ()
}

func _EditorExportPlugin_proxy_export_file (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlugin else { return }
    swiftObject._exportFile (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", type: GString.stringFromGStringPtr (ptr: args [1]!) ?? "", features: PackedStringArray (content: args [2]!.assumingMemoryBound (to: (Int64, Int64).self).pointee))
}

func _EditorExportPlugin_proxy_get_android_dependencies (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = swiftObject._getAndroidDependencies (platform: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPlatform, debug: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _EditorExportPlugin_proxy_get_android_dependencies_maven_repos (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = swiftObject._getAndroidDependenciesMavenRepos (platform: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPlatform, debug: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _EditorExportPlugin_proxy_get_android_libraries (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = swiftObject._getAndroidLibraries (platform: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPlatform, debug: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _EditorExportPlugin_proxy_get_android_manifest_activity_element_contents (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = GString (swiftObject._getAndroidManifestActivityElementContents (platform: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPlatform, debug: args [1]!.assumingMemoryBound (to: Bool.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorExportPlugin_proxy_get_android_manifest_application_element_contents (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = GString (swiftObject._getAndroidManifestApplicationElementContents (platform: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPlatform, debug: args [1]!.assumingMemoryBound (to: Bool.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorExportPlugin_proxy_get_android_manifest_element_contents (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = GString (swiftObject._getAndroidManifestElementContents (platform: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPlatform, debug: args [1]!.assumingMemoryBound (to: Bool.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorExportPlugin_proxy_get_customization_configuration_hash (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlugin else { return }
    let ret = swiftObject._getCustomizationConfigurationHash ()
    retPtr!.storeBytes (of: ret, as: UInt.self)
}

func _EditorExportPlugin_proxy_get_export_features (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = swiftObject._getExportFeatures (platform: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPlatform, debug: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _EditorExportPlugin_proxy_get_export_option_visibility (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = swiftObject._getExportOptionVisibility (platform: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPlatform, option: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorExportPlugin_proxy_get_export_option_warning (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = GString (swiftObject._getExportOptionWarning (platform: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPlatform, option: GString.stringFromGStringPtr (ptr: args [1]!) ?? ""))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorExportPlugin_proxy_get_export_options (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = swiftObject._getExportOptions (platform: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPlatform)
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Dictionary
}

func _EditorExportPlugin_proxy_get_export_options_overrides (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = swiftObject._getExportOptionsOverrides (platform: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPlatform)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Dictionary
    ret.content = VariantDictionary.zero
}

func _EditorExportPlugin_proxy_get_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlugin else { return }
    let ret = GString (swiftObject._getName ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorExportPlugin_proxy_should_update_export_options (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = swiftObject._shouldUpdateExportOptions (platform: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPlatform)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorExportPlugin_proxy_supports_platform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlugin else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    let ret = swiftObject._supportsPlatform (resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPlatform)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

