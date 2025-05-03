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


/// Base class for custom ``EditorExportPlatform`` implementations (plugins).
/// 
/// External ``EditorExportPlatform`` implementations should inherit from this class.
/// 
/// To use ``EditorExportPlatform``, register it using the ``EditorPlugin/addExportPlatform(_:)`` method first.
/// 
open class EditorExportPlatformExtension: EditorExportPlatform {
    private static var className = StringName("EditorExportPlatformExtension")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__get_preset_features: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_preset_features")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1387456631)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns array of platform specific features for the specified `preset`.
    /// 
    @_documentation(visibility: public)
    open func _getPresetFeatures(preset: EditorExportPreset?) -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        withUnsafePointer(to: preset?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__get_preset_features, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__is_executable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_executable")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns `true` if specified file is a valid executable (native executable or script) for the target platform.
    /// 
    @_documentation(visibility: public)
    open func _isExecutable(path: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__is_executable, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_export_options: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_export_options")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns a property list, as an ``VariantArray`` of dictionaries. Each ``VariantDictionary`` must at least contain the `name: StringName` and `type: Variant.Type` entries.
    /// 
    /// Additionally, the following keys are supported:
    /// 
    /// - `hint: PropertyHint`
    /// 
    /// - `hint_string: String`
    /// 
    /// - `usage: PropertyUsageFlags`
    /// 
    /// - `class_name: StringName`
    /// 
    /// - `default_value: Variant`, default value of the property.
    /// 
    /// - `update_visibility: bool`, if set to `true`, ``_getExportOptionVisibility(preset:option:)`` is called for each property when this property is changed.
    /// 
    /// - `required: bool`, if set to `true`, this property warnings are critical, and should be resolved to make export possible. This value is a hint for the ``_hasValidExportConfiguration(preset:debug:)`` implementation, and not used by the engine directly.
    /// 
    /// See also ``Object/_getPropertyList()``.
    /// 
    @_documentation(visibility: public)
    open func _getExportOptions() -> TypedArray<VariantDictionary> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__get_export_options, handle, nil, &_result)
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method__should_update_export_options: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_should_update_export_options")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns `true` if export options list is changed and presets should be updated.
    /// 
    @_documentation(visibility: public)
    open func _shouldUpdateExportOptions() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__should_update_export_options, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_export_option_visibility: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_export_option_visibility")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 969350244)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Validates `option` and returns visibility for the specified `preset`. Default implementation return `true` for all options.
    /// 
    @_documentation(visibility: public)
    open func _getExportOptionVisibility(preset: EditorExportPreset?, option: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: preset?.handle) { pArg0 in
            let option = GString(option)
            withUnsafePointer(to: option.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__get_export_option_visibility, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_export_option_warning: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_export_option_warning")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 805886795)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Validates `option` and returns warning message for the specified `preset`. Default implementation return empty string for all options.
    /// 
    @_documentation(visibility: public)
    open func _getExportOptionWarning(preset: EditorExportPreset?, option: StringName) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: preset?.handle) { pArg0 in
            withUnsafePointer(to: option.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__get_export_option_warning, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__get_os_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_os_name")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns target OS name.
    /// 
    @_documentation(visibility: public)
    open func _getOsName() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__get_os_name, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__get_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_name")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns export platform name.
    /// 
    @_documentation(visibility: public)
    open func _getName() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__get_name, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__get_logo: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_logo")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns platform logo displayed in the export dialog, logo should be 32x32 adjusted to the current editor scale, see ``EditorInterface/getEditorScale()``.
    /// 
    @_documentation(visibility: public)
    open func _getLogo() -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__get_logo, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__poll_export: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_poll_export")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns `true` if one-click deploy options are changed and editor interface should be updated.
    /// 
    @_documentation(visibility: public)
    open func _pollExport() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__poll_export, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_options_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_options_count")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns number one-click deploy devices (or other one-click option displayed in the menu).
    /// 
    @_documentation(visibility: public)
    open func _getOptionsCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__get_options_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_options_tooltip: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_options_tooltip")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns tooltip of the one-click deploy menu button.
    /// 
    @_documentation(visibility: public)
    open func _getOptionsTooltip() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__get_options_tooltip, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__get_option_icon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_option_icon")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3991065292)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns one-click deploy menu item icon for the specified `device`, icon should be 16x16 adjusted to the current editor scale, see ``EditorInterface/getEditorScale()``.
    /// 
    @_documentation(visibility: public)
    open func _getOptionIcon(device: Int32) -> ImageTexture? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: device) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__get_option_icon, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__get_option_label: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_option_label")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns one-click deploy menu item label for the specified `device`.
    /// 
    @_documentation(visibility: public)
    open func _getOptionLabel(device: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: device) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__get_option_label, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__get_option_tooltip: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_option_tooltip")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns one-click deploy menu item tooltip for the specified `device`.
    /// 
    @_documentation(visibility: public)
    open func _getOptionTooltip(device: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: device) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__get_option_tooltip, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__get_device_architecture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_device_architecture")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns device architecture for one-click deploy.
    /// 
    @_documentation(visibility: public)
    open func _getDeviceArchitecture(device: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: device) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__get_device_architecture, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__cleanup: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_cleanup")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Called by the editor before platform is unregistered.
    /// 
    @_documentation(visibility: public)
    open func _cleanup() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__cleanup, handle, nil, nil)
        
    }
    
    fileprivate static let method__run: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_run")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1726914928)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// This method is called when `device` one-click deploy menu option is selected.
    /// 
    /// Implementation should export project to a temporary location, upload and run it on the specific `device`, or perform another action associated with the menu item.
    /// 
    @_documentation(visibility: public)
    open func _run(preset: EditorExportPreset?, device: Int32, debugFlags: EditorExportPlatform.DebugFlags) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: preset?.handle) { pArg0 in
            withUnsafePointer(to: device) { pArg1 in
                withUnsafePointer(to: debugFlags.rawValue) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__run, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__get_run_icon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_run_icon")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns icon of the one-click deploy menu button, icon should be 16x16 adjusted to the current editor scale, see ``EditorInterface/getEditorScale()``.
    /// 
    @_documentation(visibility: public)
    open func _getRunIcon() -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__get_run_icon, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__can_export: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_can_export")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 493961987)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns `true`, if specified `preset` is valid and can be exported. Use ``setConfigError(errorText:)`` and ``setConfigMissingTemplates(_:)`` to set error details.
    /// 
    /// Usual implementation can call ``_hasValidExportConfiguration(preset:debug:)`` and ``_hasValidProjectConfiguration(preset:)`` to determine if export is possible.
    /// 
    @_documentation(visibility: public)
    open func _canExport(preset: EditorExportPreset?, debug: Bool) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: preset?.handle) { pArg0 in
            withUnsafePointer(to: debug) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__can_export, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__has_valid_export_configuration: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_has_valid_export_configuration")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 493961987)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns `true` if export configuration is valid.
    /// 
    @_documentation(visibility: public)
    open func _hasValidExportConfiguration(preset: EditorExportPreset?, debug: Bool) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: preset?.handle) { pArg0 in
            withUnsafePointer(to: debug) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__has_valid_export_configuration, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__has_valid_project_configuration: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_has_valid_project_configuration")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3117166915)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns `true` if project configuration is valid.
    /// 
    @_documentation(visibility: public)
    open func _hasValidProjectConfiguration(preset: EditorExportPreset?) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: preset?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__has_valid_project_configuration, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_binary_extensions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_binary_extensions")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1387456631)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns array of supported binary extensions for the full project export.
    /// 
    @_documentation(visibility: public)
    open func _getBinaryExtensions(preset: EditorExportPreset?) -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        withUnsafePointer(to: preset?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__get_binary_extensions, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__export_project: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_export_project")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1328957260)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Creates a full project at `path` for the specified `preset`.
    /// 
    /// This method is called when "Export" button is pressed in the export dialog.
    /// 
    /// This method implementation can call ``EditorExportPlatform/savePack(preset:debug:path:embed:)`` or ``EditorExportPlatform/saveZip(preset:debug:path:)`` to use default PCK/ZIP export process, or calls ``EditorExportPlatform/exportProjectFiles(preset:debug:saveCb:sharedCb:)`` and implement custom callback for processing each exported file.
    /// 
    @_documentation(visibility: public)
    open func _exportProject(preset: EditorExportPreset?, debug: Bool, path: String, flags: EditorExportPlatform.DebugFlags) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: preset?.handle) { pArg0 in
            withUnsafePointer(to: debug) { pArg1 in
                let path = GString(path)
                withUnsafePointer(to: path.content) { pArg2 in
                    withUnsafePointer(to: flags.rawValue) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__export_project, handle, pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__export_pack: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_export_pack")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1328957260)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Creates a PCK archive at `path` for the specified `preset`.
    /// 
    /// This method is called when "Export PCK/ZIP" button is pressed in the export dialog, with "Export as Patch" disabled, and PCK is selected as a file type.
    /// 
    @_documentation(visibility: public)
    open func _exportPack(preset: EditorExportPreset?, debug: Bool, path: String, flags: EditorExportPlatform.DebugFlags) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: preset?.handle) { pArg0 in
            withUnsafePointer(to: debug) { pArg1 in
                let path = GString(path)
                withUnsafePointer(to: path.content) { pArg2 in
                    withUnsafePointer(to: flags.rawValue) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__export_pack, handle, pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__export_zip: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_export_zip")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1328957260)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Create a ZIP archive at `path` for the specified `preset`.
    /// 
    /// This method is called when "Export PCK/ZIP" button is pressed in the export dialog, with "Export as Patch" disabled, and ZIP is selected as a file type.
    /// 
    @_documentation(visibility: public)
    open func _exportZip(preset: EditorExportPreset?, debug: Bool, path: String, flags: EditorExportPlatform.DebugFlags) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: preset?.handle) { pArg0 in
            withUnsafePointer(to: debug) { pArg1 in
                let path = GString(path)
                withUnsafePointer(to: path.content) { pArg2 in
                    withUnsafePointer(to: flags.rawValue) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__export_zip, handle, pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__export_pack_patch: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_export_pack_patch")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 454765315)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Creates a patch PCK archive at `path` for the specified `preset`, containing only the files that have changed since the last patch.
    /// 
    /// This method is called when "Export PCK/ZIP" button is pressed in the export dialog, with "Export as Patch" enabled, and PCK is selected as a file type.
    /// 
    /// > Note: The patches provided in `patches` have already been loaded when this method is called and are merely provided as context. When empty the patches defined in the export preset have been loaded instead.
    /// 
    @_documentation(visibility: public)
    open func _exportPackPatch(preset: EditorExportPreset?, debug: Bool, path: String, patches: PackedStringArray, flags: EditorExportPlatform.DebugFlags) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: preset?.handle) { pArg0 in
            withUnsafePointer(to: debug) { pArg1 in
                let path = GString(path)
                withUnsafePointer(to: path.content) { pArg2 in
                    withUnsafePointer(to: patches.content) { pArg3 in
                        withUnsafePointer(to: flags.rawValue) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__export_pack_patch, handle, pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__export_zip_patch: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_export_zip_patch")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 454765315)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Create a ZIP archive at `path` for the specified `preset`, containing only the files that have changed since the last patch.
    /// 
    /// This method is called when "Export PCK/ZIP" button is pressed in the export dialog, with "Export as Patch" enabled, and ZIP is selected as a file type.
    /// 
    /// > Note: The patches provided in `patches` have already been loaded when this method is called and are merely provided as context. When empty the patches defined in the export preset have been loaded instead.
    /// 
    @_documentation(visibility: public)
    open func _exportZipPatch(preset: EditorExportPreset?, debug: Bool, path: String, patches: PackedStringArray, flags: EditorExportPlatform.DebugFlags) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: preset?.handle) { pArg0 in
            withUnsafePointer(to: debug) { pArg1 in
                let path = GString(path)
                withUnsafePointer(to: path.content) { pArg2 in
                    withUnsafePointer(to: patches.content) { pArg3 in
                        withUnsafePointer(to: flags.rawValue) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__export_zip_patch, handle, pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__get_platform_features: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_platform_features")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns array of platform specific features.
    /// 
    @_documentation(visibility: public)
    open func _getPlatformFeatures() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__get_platform_features, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__get_debug_protocol: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_debug_protocol")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns protocol used for remote debugging. Default implementation return `tcp://`.
    /// 
    @_documentation(visibility: public)
    open func _getDebugProtocol() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method__get_debug_protocol, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_config_error: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_config_error")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3089850668)!
            }
            
        }
        
    }()
    
    /// Sets current configuration error message text. This method should be called only from the ``_canExport(preset:debug:)``, ``_hasValidExportConfiguration(preset:debug:)``, or ``_hasValidProjectConfiguration(preset:)`` implementations.
    public final func setConfigError(errorText: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let errorText = GString(errorText)
        withUnsafePointer(to: errorText.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method_set_config_error, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_config_error: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_config_error")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns current configuration error message text. This method should be called only from the ``_canExport(preset:debug:)``, ``_hasValidExportConfiguration(preset:debug:)``, or ``_hasValidProjectConfiguration(preset:)`` implementations.
    public final func getConfigError() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method_get_config_error, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_config_missing_templates: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_config_missing_templates")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1695273946)!
            }
            
        }
        
    }()
    
    /// Set to `true` is export templates are missing from the current configuration. This method should be called only from the ``_canExport(preset:debug:)``, ``_hasValidExportConfiguration(preset:debug:)``, or ``_hasValidProjectConfiguration(preset:)`` implementations.
    public final func setConfigMissingTemplates(_ missingTemplates: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: missingTemplates) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method_set_config_missing_templates, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_config_missing_templates: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_config_missing_templates")
        return withUnsafePointer(to: &EditorExportPlatformExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` is export templates are missing from the current configuration. This method should be called only from the ``_canExport(preset:debug:)``, ``_hasValidExportConfiguration(preset:debug:)``, or ``_hasValidProjectConfiguration(preset:)`` implementations.
    public final func getConfigMissingTemplates() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorExportPlatformExtension.method_get_config_missing_templates, handle, nil, &_result)
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_can_export":
                return _EditorExportPlatformExtension_proxy_can_export
            case "_cleanup":
                return _EditorExportPlatformExtension_proxy_cleanup
            case "_export_pack":
                return _EditorExportPlatformExtension_proxy_export_pack
            case "_export_pack_patch":
                return _EditorExportPlatformExtension_proxy_export_pack_patch
            case "_export_project":
                return _EditorExportPlatformExtension_proxy_export_project
            case "_export_zip":
                return _EditorExportPlatformExtension_proxy_export_zip
            case "_export_zip_patch":
                return _EditorExportPlatformExtension_proxy_export_zip_patch
            case "_get_binary_extensions":
                return _EditorExportPlatformExtension_proxy_get_binary_extensions
            case "_get_debug_protocol":
                return _EditorExportPlatformExtension_proxy_get_debug_protocol
            case "_get_device_architecture":
                return _EditorExportPlatformExtension_proxy_get_device_architecture
            case "_get_export_option_visibility":
                return _EditorExportPlatformExtension_proxy_get_export_option_visibility
            case "_get_export_option_warning":
                return _EditorExportPlatformExtension_proxy_get_export_option_warning
            case "_get_export_options":
                return _EditorExportPlatformExtension_proxy_get_export_options
            case "_get_logo":
                return _EditorExportPlatformExtension_proxy_get_logo
            case "_get_name":
                return _EditorExportPlatformExtension_proxy_get_name
            case "_get_option_icon":
                return _EditorExportPlatformExtension_proxy_get_option_icon
            case "_get_option_label":
                return _EditorExportPlatformExtension_proxy_get_option_label
            case "_get_option_tooltip":
                return _EditorExportPlatformExtension_proxy_get_option_tooltip
            case "_get_options_count":
                return _EditorExportPlatformExtension_proxy_get_options_count
            case "_get_options_tooltip":
                return _EditorExportPlatformExtension_proxy_get_options_tooltip
            case "_get_os_name":
                return _EditorExportPlatformExtension_proxy_get_os_name
            case "_get_platform_features":
                return _EditorExportPlatformExtension_proxy_get_platform_features
            case "_get_preset_features":
                return _EditorExportPlatformExtension_proxy_get_preset_features
            case "_get_run_icon":
                return _EditorExportPlatformExtension_proxy_get_run_icon
            case "_has_valid_export_configuration":
                return _EditorExportPlatformExtension_proxy_has_valid_export_configuration
            case "_has_valid_project_configuration":
                return _EditorExportPlatformExtension_proxy_has_valid_project_configuration
            case "_is_executable":
                return _EditorExportPlatformExtension_proxy_is_executable
            case "_poll_export":
                return _EditorExportPlatformExtension_proxy_poll_export
            case "_run":
                return _EditorExportPlatformExtension_proxy_run
            case "_should_update_export_options":
                return _EditorExportPlatformExtension_proxy_should_update_export_options
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _EditorExportPlatformExtension_proxy_can_export (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._canExport (preset: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPreset, debug: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorExportPlatformExtension_proxy_cleanup (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    swiftObject._cleanup ()
}

func _EditorExportPlatformExtension_proxy_export_pack (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._exportPack (preset: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPreset, debug: args [1]!.assumingMemoryBound (to: Bool.self).pointee, path: GString.stringFromGStringPtr (ptr: args [2]!) ?? "", flags: args [3]!.assumingMemoryBound (to: EditorExportPlatform.DebugFlags.self).pointee)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _EditorExportPlatformExtension_proxy_export_pack_patch (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._exportPackPatch (preset: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPreset, debug: args [1]!.assumingMemoryBound (to: Bool.self).pointee, path: GString.stringFromGStringPtr (ptr: args [2]!) ?? "", patches: PackedStringArray (content: args [3]!.assumingMemoryBound (to: (Int64, Int64).self).pointee), flags: args [4]!.assumingMemoryBound (to: EditorExportPlatform.DebugFlags.self).pointee)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _EditorExportPlatformExtension_proxy_export_project (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._exportProject (preset: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPreset, debug: args [1]!.assumingMemoryBound (to: Bool.self).pointee, path: GString.stringFromGStringPtr (ptr: args [2]!) ?? "", flags: args [3]!.assumingMemoryBound (to: EditorExportPlatform.DebugFlags.self).pointee)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _EditorExportPlatformExtension_proxy_export_zip (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._exportZip (preset: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPreset, debug: args [1]!.assumingMemoryBound (to: Bool.self).pointee, path: GString.stringFromGStringPtr (ptr: args [2]!) ?? "", flags: args [3]!.assumingMemoryBound (to: EditorExportPlatform.DebugFlags.self).pointee)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _EditorExportPlatformExtension_proxy_export_zip_patch (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._exportZipPatch (preset: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPreset, debug: args [1]!.assumingMemoryBound (to: Bool.self).pointee, path: GString.stringFromGStringPtr (ptr: args [2]!) ?? "", patches: PackedStringArray (content: args [3]!.assumingMemoryBound (to: (Int64, Int64).self).pointee), flags: args [4]!.assumingMemoryBound (to: EditorExportPlatform.DebugFlags.self).pointee)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _EditorExportPlatformExtension_proxy_get_binary_extensions (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._getBinaryExtensions (preset: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPreset)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _EditorExportPlatformExtension_proxy_get_debug_protocol (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let ret = GString (swiftObject._getDebugProtocol ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorExportPlatformExtension_proxy_get_device_architecture (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let ret = GString (swiftObject._getDeviceArchitecture (device: args [0]!.assumingMemoryBound (to: Int32.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorExportPlatformExtension_proxy_get_export_option_visibility (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._getExportOptionVisibility (preset: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPreset, option: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorExportPlatformExtension_proxy_get_export_option_warning (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = GString (swiftObject._getExportOptionWarning (preset: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPreset, option: StringName (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee)))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorExportPlatformExtension_proxy_get_export_options (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let ret = swiftObject._getExportOptions ()
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Dictionary
}

func _EditorExportPlatformExtension_proxy_get_logo (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let ret = swiftObject._getLogo ()
    retPtr!.storeBytes (of: ret?.handle, as:  GodotNativeObjectPointer?.self) // Texture2D
}

func _EditorExportPlatformExtension_proxy_get_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let ret = GString (swiftObject._getName ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorExportPlatformExtension_proxy_get_option_icon (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let ret = swiftObject._getOptionIcon (device: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret?.handle, as:  GodotNativeObjectPointer?.self) // ImageTexture
}

func _EditorExportPlatformExtension_proxy_get_option_label (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let ret = GString (swiftObject._getOptionLabel (device: args [0]!.assumingMemoryBound (to: Int32.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorExportPlatformExtension_proxy_get_option_tooltip (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let ret = GString (swiftObject._getOptionTooltip (device: args [0]!.assumingMemoryBound (to: Int32.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorExportPlatformExtension_proxy_get_options_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let ret = swiftObject._getOptionsCount ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _EditorExportPlatformExtension_proxy_get_options_tooltip (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let ret = GString (swiftObject._getOptionsTooltip ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorExportPlatformExtension_proxy_get_os_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let ret = GString (swiftObject._getOsName ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorExportPlatformExtension_proxy_get_platform_features (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let ret = swiftObject._getPlatformFeatures ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _EditorExportPlatformExtension_proxy_get_preset_features (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._getPresetFeatures (preset: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPreset)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _EditorExportPlatformExtension_proxy_get_run_icon (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let ret = swiftObject._getRunIcon ()
    retPtr!.storeBytes (of: ret?.handle, as:  GodotNativeObjectPointer?.self) // Texture2D
}

func _EditorExportPlatformExtension_proxy_has_valid_export_configuration (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._hasValidExportConfiguration (preset: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPreset, debug: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorExportPlatformExtension_proxy_has_valid_project_configuration (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._hasValidProjectConfiguration (preset: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPreset)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorExportPlatformExtension_proxy_is_executable (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let ret = swiftObject._isExecutable (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorExportPlatformExtension_proxy_poll_export (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let ret = swiftObject._pollExport ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorExportPlatformExtension_proxy_run (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._run (preset: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? EditorExportPreset, device: args [1]!.assumingMemoryBound (to: Int32.self).pointee, debugFlags: args [2]!.assumingMemoryBound (to: EditorExportPlatform.DebugFlags.self).pointee)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _EditorExportPlatformExtension_proxy_should_update_export_options (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorExportPlatformExtension else { return }
    let ret = swiftObject._shouldUpdateExportOptions ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

