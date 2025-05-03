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


/// Export preset configuration.
/// 
/// Export preset configuration. Instances of ``EditorExportPreset`` by editor UI and intended to be used a read-only configuration passed to the ``EditorExportPlatform`` methods when exporting the project.
open class EditorExportPreset: RefCounted {
    private static var className = StringName("EditorExportPreset")
    override open class var godotClassName: StringName { className }
    public enum ExportFilter: Int64, CaseIterable {
        /// 
        case exportAllResources = 0 // EXPORT_ALL_RESOURCES
        /// 
        case exportSelectedScenes = 1 // EXPORT_SELECTED_SCENES
        /// 
        case exportSelectedResources = 2 // EXPORT_SELECTED_RESOURCES
        /// 
        case excludeSelectedResources = 3 // EXCLUDE_SELECTED_RESOURCES
        /// 
        case exportCustomized = 4 // EXPORT_CUSTOMIZED
    }
    
    public enum FileExportMode: Int64, CaseIterable {
        /// 
        case notCustomized = 0 // MODE_FILE_NOT_CUSTOMIZED
        /// 
        case strip = 1 // MODE_FILE_STRIP
        /// 
        case keep = 2 // MODE_FILE_KEEP
        /// 
        case remove = 3 // MODE_FILE_REMOVE
    }
    
    public enum ScriptExportMode: Int64, CaseIterable {
        /// 
        case text = 0 // MODE_SCRIPT_TEXT
        /// 
        case binaryTokens = 1 // MODE_SCRIPT_BINARY_TOKENS
        /// 
        case binaryTokensCompressed = 2 // MODE_SCRIPT_BINARY_TOKENS_COMPRESSED
    }
    
    /* Methods */
    fileprivate static let method_has: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has")
        return withUnsafePointer(to: &EditorExportPreset.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2619796661)!
            }
            
        }
        
    }()
    
    /// Returns `true` if preset has specified property.
    public final func has(property: StringName) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: property.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPreset.method_has, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_files_to_export: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_files_to_export")
        return withUnsafePointer(to: &EditorExportPreset.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns array of files to export.
    public final func getFilesToExport() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(EditorExportPreset.method_get_files_to_export, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_customized_files: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_customized_files")
        return withUnsafePointer(to: &EditorExportPreset.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3102165223)!
            }
            
        }
        
    }()
    
    /// Returns ``VariantDictionary`` of files selected in the "Resources" tab of the export dialog. Dictionary keys are file names and values are export mode - `"strip"`, `"keep"`, or `"remove"`. See also ``getFileExportMode(path:`default`:)``.
    public final func getCustomizedFiles() -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        gi.object_method_bind_ptrcall(EditorExportPreset.method_get_customized_files, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_customized_files_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_customized_files_count")
        return withUnsafePointer(to: &EditorExportPreset.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns number of files selected in the "Resources" tab of the export dialog.
    public final func getCustomizedFilesCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(EditorExportPreset.method_get_customized_files_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_has_export_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_export_file")
        return withUnsafePointer(to: &EditorExportPreset.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2323990056)!
            }
            
        }
        
    }()
    
    /// Returns `true` if specified file is exported.
    public final func hasExportFile(path: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPreset.method_has_export_file, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_file_export_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_file_export_mode")
        return withUnsafePointer(to: &EditorExportPreset.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 407825436)!
            }
            
        }
        
    }()
    
    /// Returns file export mode for the specified file.
    public final func getFileExportMode(path: String, `default`: EditorExportPreset.FileExportMode = .notCustomized) -> EditorExportPreset.FileExportMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: `default`.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorExportPreset.method_get_file_export_mode, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return EditorExportPreset.FileExportMode (rawValue: _result)!
    }
    
    fileprivate static let method_get_preset_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_preset_name")
        return withUnsafePointer(to: &EditorExportPreset.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns export preset name.
    public final func getPresetName() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorExportPreset.method_get_preset_name, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_is_runnable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_runnable")
        return withUnsafePointer(to: &EditorExportPreset.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if "Runnable" toggle is enabled in the export dialog.
    public final func isRunnable() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorExportPreset.method_is_runnable, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_are_advanced_options_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("are_advanced_options_enabled")
        return withUnsafePointer(to: &EditorExportPreset.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if "Advanced" toggle is enabled in the export dialog.
    public final func areAdvancedOptionsEnabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorExportPreset.method_are_advanced_options_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_dedicated_server: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_dedicated_server")
        return withUnsafePointer(to: &EditorExportPreset.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if dedicated server export mode is selected in the export dialog.
    public final func isDedicatedServer() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorExportPreset.method_is_dedicated_server, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_export_filter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_export_filter")
        return withUnsafePointer(to: &EditorExportPreset.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4227045696)!
            }
            
        }
        
    }()
    
    /// Returns export file filter mode selected in the "Resources" tab of the export dialog.
    public final func getExportFilter() -> EditorExportPreset.ExportFilter {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(EditorExportPreset.method_get_export_filter, handle, nil, &_result)
        return EditorExportPreset.ExportFilter (rawValue: _result)!
    }
    
    fileprivate static let method_get_include_filter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_include_filter")
        return withUnsafePointer(to: &EditorExportPreset.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns file filters to include during export.
    public final func getIncludeFilter() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorExportPreset.method_get_include_filter, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_exclude_filter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_exclude_filter")
        return withUnsafePointer(to: &EditorExportPreset.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns file filters to exclude during export.
    public final func getExcludeFilter() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorExportPreset.method_get_exclude_filter, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_custom_features: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_custom_features")
        return withUnsafePointer(to: &EditorExportPreset.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns string with a comma separated list of custom features.
    public final func getCustomFeatures() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorExportPreset.method_get_custom_features, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_patches: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_patches")
        return withUnsafePointer(to: &EditorExportPreset.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns the list of packs on which to base a patch export on.
    public final func getPatches() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(EditorExportPreset.method_get_patches, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_export_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_export_path")
        return withUnsafePointer(to: &EditorExportPreset.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns export target path.
    public final func getExportPath() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorExportPreset.method_get_export_path, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_encryption_in_filter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_encryption_in_filter")
        return withUnsafePointer(to: &EditorExportPreset.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns file filters to include during PCK encryption.
    public final func getEncryptionInFilter() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorExportPreset.method_get_encryption_in_filter, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_encryption_ex_filter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_encryption_ex_filter")
        return withUnsafePointer(to: &EditorExportPreset.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns file filters to exclude during PCK encryption.
    public final func getEncryptionExFilter() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorExportPreset.method_get_encryption_ex_filter, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_encrypt_pck: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_encrypt_pck")
        return withUnsafePointer(to: &EditorExportPreset.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true`, PCK encryption is enabled in the export dialog.
    public final func getEncryptPck() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorExportPreset.method_get_encrypt_pck, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_encrypt_directory: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_encrypt_directory")
        return withUnsafePointer(to: &EditorExportPreset.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true`, PCK directory encryption is enabled in the export dialog.
    public final func getEncryptDirectory() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorExportPreset.method_get_encrypt_directory, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_encryption_key: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_encryption_key")
        return withUnsafePointer(to: &EditorExportPreset.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns PCK encryption key.
    public final func getEncryptionKey() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorExportPreset.method_get_encryption_key, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_script_export_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_script_export_mode")
        return withUnsafePointer(to: &EditorExportPreset.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns script export mode.
    public final func getScriptExportMode() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(EditorExportPreset.method_get_script_export_mode, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_or_env: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_or_env")
        return withUnsafePointer(to: &EditorExportPreset.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 389838787)!
            }
            
        }
        
    }()
    
    /// Returns export option value or value of environment variable if it is set.
    public final func getOrEnv(name: StringName, envVar: String) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: name.content) { pArg0 in
            let envVar = GString(envVar)
            withUnsafePointer(to: envVar.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorExportPreset.method_get_or_env, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_get_version: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_version")
        return withUnsafePointer(to: &EditorExportPreset.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1132184663)!
            }
            
        }
        
    }()
    
    /// Returns the preset's version number, or fall back to the ``ProjectSettings/application/config/version`` project setting if set to an empty string.
    /// 
    /// If `windowsVersion` is `true`, formats the returned version number to be compatible with Windows executable metadata.
    /// 
    public final func getVersion(name: StringName, windowsVersion: Bool) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: windowsVersion) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorExportPreset.method_get_version, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
}

