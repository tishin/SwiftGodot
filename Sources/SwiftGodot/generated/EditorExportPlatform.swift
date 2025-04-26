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


/// Identifies a supported export platform, and internally provides the functionality of exporting to that platform.
/// 
/// Base resource that provides the functionality of exporting a release build of a project to a platform, from the editor. Stores platform-specific metadata such as the name and supported features of the platform, and performs the exporting of projects, PCK files, and ZIP files. Uses an export template for the platform provided at the time of project exporting.
/// 
/// Used in scripting by ``EditorExportPlugin`` to configure platform-specific customization of scenes and resources. See ``EditorExportPlugin/_beginCustomizeScenes(platform:features:)`` and ``EditorExportPlugin/_beginCustomizeResources(platform:features:)`` for more details.
/// 
open class EditorExportPlatform: RefCounted {
    private static var className = StringName("EditorExportPlatform")
    override open class var godotClassName: StringName { className }
    public enum ExportMessageType: Int64, CaseIterable {
        /// Invalid message type used as the default value when no type is specified.
        case none = 0 // EXPORT_MESSAGE_NONE
        /// Message type for informational messages that have no effect on the export.
        case info = 1 // EXPORT_MESSAGE_INFO
        /// Message type for warning messages that should be addressed but still allow to complete the export.
        case warning = 2 // EXPORT_MESSAGE_WARNING
        /// Message type for error messages that must be addressed and fail the export.
        case error = 3 // EXPORT_MESSAGE_ERROR
    }
    
    public struct DebugFlags: OptionSet, CustomDebugStringConvertible {
        public let rawValue: Int
        public init (rawValue: Int) {
            self.rawValue = rawValue
        }
        
        /// Flag is set if remotely debugged project is expected to use remote file system. If set, ``genExportFlags(_:)`` will add `--remote-fs` and `--remote-fs-password` (if password is set in the editor settings) command line arguments to the list.
        public static let dumbClient = DebugFlags (rawValue: 1)
        /// Flag is set if remote debug is enabled. If set, ``genExportFlags(_:)`` will add `--remote-debug` and `--breakpoints` (if breakpoints are selected in the script editor or added by the plugin) command line arguments to the list.
        public static let remoteDebug = DebugFlags (rawValue: 2)
        /// Flag is set if remotely debugged project is running on the localhost. If set, ``genExportFlags(_:)`` will use `localhost` instead of ``EditorSettings/network/debug/remoteHost`` as remote debugger host.
        public static let remoteDebugLocalhost = DebugFlags (rawValue: 4)
        /// Flag is set if "Visible Collision Shapes" remote debug option is enabled. If set, ``genExportFlags(_:)`` will add `--debug-collisions` command line arguments to the list.
        public static let viewCollisions = DebugFlags (rawValue: 8)
        /// Flag is set if Visible Navigation" remote debug option is enabled. If set, ``genExportFlags(_:)`` will add `--debug-navigation` command line arguments to the list.
        public static let viewNavigation = DebugFlags (rawValue: 16)
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            var result = ""
            if self.contains (.dumbClient) { result += "dumbClient, " }
            if self.contains (.remoteDebug) { result += "remoteDebug, " }
            if self.contains (.remoteDebugLocalhost) { result += "remoteDebugLocalhost, " }
            if self.contains (.viewCollisions) { result += "viewCollisions, " }
            if self.contains (.viewNavigation) { result += "viewNavigation, " }
            if result.hasSuffix (", ") { result.removeLast (2) }
            return result
        }
        
    }
    
    /* Methods */
    fileprivate static let method_get_os_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_os_name")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the name of the export operating system handled by this ``EditorExportPlatform`` class, as a friendly string. Possible return values are `Windows`, `Linux`, `macOS`, `Android`, `iOS`, and `Web`.
    public final func getOsName() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorExportPlatform.method_get_os_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_create_preset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_preset")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2572397818)!
            }
            
        }
        
    }()
    
    /// Create a new preset for this platform.
    public final func createPreset() -> EditorExportPreset? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(EditorExportPlatform.method_create_preset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_find_export_template: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("find_export_template")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2248993622)!
            }
            
        }
        
    }()
    
    /// Locates export template for the platform, and returns ``VariantDictionary`` with the following keys: `path: String` and `error: String`. This method is provided for convenience and custom export platforms aren't required to use it or keep export templates stored in the same way official templates are.
    public final func findExportTemplate(templateFileName: String) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        let templateFileName = GString(templateFileName)
        withUnsafePointer(to: templateFileName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlatform.method_find_export_template, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_current_presets: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_current_presets")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns array of ``EditorExportPreset``s for this platform.
    public final func getCurrentPresets() -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        gi.object_method_bind_ptrcall(EditorExportPlatform.method_get_current_presets, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_save_pack: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("save_pack")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3420080977)!
            }
            
        }
        
    }()
    
    /// Saves PCK archive and returns ``VariantDictionary`` with the following keys: `result: Error`, `so_files: Array` (array of the shared/static objects which contains dictionaries with the following keys: `path: String`, `tags: PackedStringArray`, and `target_folder: String`).
    /// 
    /// If `embed` is `true`, PCK content is appended to the end of `path` file and return ``VariantDictionary`` additionally include following keys: `embedded_start: int` (embedded PCK offset) and `embedded_size: int` (embedded PCK size).
    /// 
    public final func savePack(preset: EditorExportPreset?, debug: Bool, path: String, embed: Bool = false) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: preset?.handle) { pArg0 in
            withUnsafePointer(to: debug) { pArg1 in
                let path = GString(path)
                withUnsafePointer(to: path.content) { pArg2 in
                    withUnsafePointer(to: embed) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(EditorExportPlatform.method_save_pack, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_save_zip: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("save_zip")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1485052307)!
            }
            
        }
        
    }()
    
    /// Saves ZIP archive and returns ``VariantDictionary`` with the following keys: `result: Error`, `so_files: Array` (array of the shared/static objects which contains dictionaries with the following keys: `path: String`, `tags: PackedStringArray`, and `target_folder: String`).
    public final func saveZip(preset: EditorExportPreset?, debug: Bool, path: String) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: preset?.handle) { pArg0 in
            withUnsafePointer(to: debug) { pArg1 in
                let path = GString(path)
                withUnsafePointer(to: path.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorExportPlatform.method_save_zip, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_save_pack_patch: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("save_pack_patch")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1485052307)!
            }
            
        }
        
    }()
    
    /// Saves patch PCK archive and returns ``VariantDictionary`` with the following keys: `result: Error`, `so_files: Array` (array of the shared/static objects which contains dictionaries with the following keys: `path: String`, `tags: PackedStringArray`, and `target_folder: String`).
    public final func savePackPatch(preset: EditorExportPreset?, debug: Bool, path: String) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: preset?.handle) { pArg0 in
            withUnsafePointer(to: debug) { pArg1 in
                let path = GString(path)
                withUnsafePointer(to: path.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorExportPlatform.method_save_pack_patch, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_save_zip_patch: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("save_zip_patch")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1485052307)!
            }
            
        }
        
    }()
    
    /// Saves patch ZIP archive and returns ``VariantDictionary`` with the following keys: `result: Error`, `so_files: Array` (array of the shared/static objects which contains dictionaries with the following keys: `path: String`, `tags: PackedStringArray`, and `target_folder: String`).
    public final func saveZipPatch(preset: EditorExportPreset?, debug: Bool, path: String) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: preset?.handle) { pArg0 in
            withUnsafePointer(to: debug) { pArg1 in
                let path = GString(path)
                withUnsafePointer(to: path.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorExportPlatform.method_save_zip_patch, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_gen_export_flags: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("gen_export_flags")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2976483270)!
            }
            
        }
        
    }()
    
    /// Generates array of command line arguments for the default export templates for the debug flags and editor settings.
    public final func genExportFlags(_ flags: EditorExportPlatform.DebugFlags) -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedStringArray = PackedStringArray ()
        withUnsafePointer(to: flags.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlatform.method_gen_export_flags, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_export_project_files: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("export_project_files")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1063735070)!
            }
            
        }
        
    }()
    
    /// Exports project files for the specified preset. This method can be used to implement custom export format, other than PCK and ZIP. One of the callbacks is called for each exported file.
    /// 
    /// `saveCb` is called for all exported files and have the following arguments: `file_path: String`, `file_data: PackedByteArray`, `file_index: int`, `file_count: int`, `encryption_include_filters: PackedStringArray`, `encryption_exclude_filters: PackedStringArray`, `encryption_key: PackedByteArray`.
    /// 
    /// `sharedCb` is called for exported native shared/static libraries and have the following arguments: `file_path: String`, `tags: PackedStringArray`, `target_folder: String`.
    /// 
    /// > Note: `file_index` and `file_count` are intended for progress tracking only and aren't necessarily unique and precise.
    /// 
    public final func exportProjectFiles(preset: EditorExportPreset?, debug: Bool, saveCb: Callable, sharedCb: Callable = Callable()) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: preset?.handle) { pArg0 in
            withUnsafePointer(to: debug) { pArg1 in
                withUnsafePointer(to: saveCb.content) { pArg2 in
                    withUnsafePointer(to: sharedCb.content) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(EditorExportPlatform.method_export_project_files, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_export_project: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("export_project")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3879521245)!
            }
            
        }
        
    }()
    
    /// Creates a full project at `path` for the specified `preset`.
    public final func exportProject(preset: EditorExportPreset?, debug: Bool, path: String, flags: EditorExportPlatform.DebugFlags = []) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: preset?.handle) { pArg0 in
            withUnsafePointer(to: debug) { pArg1 in
                let path = GString(path)
                withUnsafePointer(to: path.content) { pArg2 in
                    withUnsafePointer(to: flags.rawValue) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(EditorExportPlatform.method_export_project, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_export_pack: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("export_pack")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3879521245)!
            }
            
        }
        
    }()
    
    /// Creates a PCK archive at `path` for the specified `preset`.
    public final func exportPack(preset: EditorExportPreset?, debug: Bool, path: String, flags: EditorExportPlatform.DebugFlags = []) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: preset?.handle) { pArg0 in
            withUnsafePointer(to: debug) { pArg1 in
                let path = GString(path)
                withUnsafePointer(to: path.content) { pArg2 in
                    withUnsafePointer(to: flags.rawValue) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(EditorExportPlatform.method_export_pack, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_export_zip: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("export_zip")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3879521245)!
            }
            
        }
        
    }()
    
    /// Create a ZIP archive at `path` for the specified `preset`.
    public final func exportZip(preset: EditorExportPreset?, debug: Bool, path: String, flags: EditorExportPlatform.DebugFlags = []) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: preset?.handle) { pArg0 in
            withUnsafePointer(to: debug) { pArg1 in
                let path = GString(path)
                withUnsafePointer(to: path.content) { pArg2 in
                    withUnsafePointer(to: flags.rawValue) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(EditorExportPlatform.method_export_zip, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_export_pack_patch: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("export_pack_patch")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 608021658)!
            }
            
        }
        
    }()
    
    /// Creates a patch PCK archive at `path` for the specified `preset`, containing only the files that have changed since the last patch.
    /// 
    /// > Note: `patches` is an optional override of the set of patches defined in the export preset. When empty the patches defined in the export preset will be used instead.
    /// 
    public final func exportPackPatch(preset: EditorExportPreset?, debug: Bool, path: String, patches: PackedStringArray = PackedStringArray(), flags: EditorExportPlatform.DebugFlags = []) -> GodotError {
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
                                    gi.object_method_bind_ptrcall(EditorExportPlatform.method_export_pack_patch, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_export_zip_patch: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("export_zip_patch")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 608021658)!
            }
            
        }
        
    }()
    
    /// Create a patch ZIP archive at `path` for the specified `preset`, containing only the files that have changed since the last patch.
    /// 
    /// > Note: `patches` is an optional override of the set of patches defined in the export preset. When empty the patches defined in the export preset will be used instead.
    /// 
    public final func exportZipPatch(preset: EditorExportPreset?, debug: Bool, path: String, patches: PackedStringArray = PackedStringArray(), flags: EditorExportPlatform.DebugFlags = []) -> GodotError {
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
                                    gi.object_method_bind_ptrcall(EditorExportPlatform.method_export_zip_patch, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_clear_messages: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_messages")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears the export log.
    public final func clearMessages() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(EditorExportPlatform.method_clear_messages, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_add_message: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_message")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 782767225)!
            }
            
        }
        
    }()
    
    /// Adds a message to the export log that will be displayed when exporting ends.
    public final func addMessage(type: EditorExportPlatform.ExportMessageType, category: String, message: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: type.rawValue) { pArg0 in
            let category = GString(category)
            withUnsafePointer(to: category.content) { pArg1 in
                let message = GString(message)
                withUnsafePointer(to: message.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorExportPlatform.method_add_message, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_message_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_message_count")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns number of messages in the export log.
    public final func getMessageCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(EditorExportPlatform.method_get_message_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_message_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_message_type")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2667287293)!
            }
            
        }
        
    }()
    
    /// Returns message type, for the message with `index`.
    public final func getMessageType(index: Int32) -> EditorExportPlatform.ExportMessageType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlatform.method_get_message_type, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return EditorExportPlatform.ExportMessageType (rawValue: _result)!
    }
    
    fileprivate static let method_get_message_category: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_message_category")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns message category, for the message with `index`.
    public final func getMessageCategory(index: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlatform.method_get_message_category, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_message_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_message_text")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns message text, for the message with `index`.
    public final func getMessageText(index: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorExportPlatform.method_get_message_text, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_worst_message_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_worst_message_type")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2580557466)!
            }
            
        }
        
    }()
    
    /// Returns most severe message type currently present in the export log.
    public final func getWorstMessageType() -> EditorExportPlatform.ExportMessageType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(EditorExportPlatform.method_get_worst_message_type, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return EditorExportPlatform.ExportMessageType (rawValue: _result)!
    }
    
    fileprivate static let method_ssh_run_on_remote: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("ssh_run_on_remote")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3163734797)!
            }
            
        }
        
    }()
    
    /// Executes specified command on the remote host via SSH protocol and returns command output in the `output`.
    public final func sshRunOnRemote(host: String, port: String, sshArg: PackedStringArray, cmdArgs: String, output: VariantArray = VariantArray (), portFwd: Int32 = -1) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let host = GString(host)
        withUnsafePointer(to: host.content) { pArg0 in
            let port = GString(port)
            withUnsafePointer(to: port.content) { pArg1 in
                withUnsafePointer(to: sshArg.content) { pArg2 in
                    let cmdArgs = GString(cmdArgs)
                    withUnsafePointer(to: cmdArgs.content) { pArg3 in
                        withUnsafePointer(to: output.content) { pArg4 in
                            withUnsafePointer(to: portFwd) { pArg5 in
                                withUnsafePointer(to: UnsafeRawPointersN6(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5)) { pArgs in
                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 6) { pArgs in
                                        gi.object_method_bind_ptrcall(EditorExportPlatform.method_ssh_run_on_remote, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_ssh_run_on_remote_no_wait: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("ssh_run_on_remote_no_wait")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3606362233)!
            }
            
        }
        
    }()
    
    /// Executes specified command on the remote host via SSH protocol and returns process ID (on the remote host) without waiting for command to finish.
    public final func sshRunOnRemoteNoWait(host: String, port: String, sshArgs: PackedStringArray, cmdArgs: String, portFwd: Int32 = -1) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        let host = GString(host)
        withUnsafePointer(to: host.content) { pArg0 in
            let port = GString(port)
            withUnsafePointer(to: port.content) { pArg1 in
                withUnsafePointer(to: sshArgs.content) { pArg2 in
                    let cmdArgs = GString(cmdArgs)
                    withUnsafePointer(to: cmdArgs.content) { pArg3 in
                        withUnsafePointer(to: portFwd) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(EditorExportPlatform.method_ssh_run_on_remote_no_wait, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_ssh_push_to_remote: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("ssh_push_to_remote")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 218756989)!
            }
            
        }
        
    }()
    
    /// Uploads specified file over SCP protocol to the remote host.
    public final func sshPushToRemote(host: String, port: String, scpArgs: PackedStringArray, srcFile: String, dstFile: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let host = GString(host)
        withUnsafePointer(to: host.content) { pArg0 in
            let port = GString(port)
            withUnsafePointer(to: port.content) { pArg1 in
                withUnsafePointer(to: scpArgs.content) { pArg2 in
                    let srcFile = GString(srcFile)
                    withUnsafePointer(to: srcFile.content) { pArg3 in
                        let dstFile = GString(dstFile)
                        withUnsafePointer(to: dstFile.content) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(EditorExportPlatform.method_ssh_push_to_remote, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_get_internal_export_files: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_internal_export_files")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 89550086)!
            }
            
        }
        
    }()
    
    /// Returns additional files that should always be exported regardless of preset configuration, and are not part of the project source. The returned ``VariantDictionary`` contains filename keys (``String``) and their corresponding raw data (``PackedByteArray``).
    public final func getInternalExportFiles(preset: EditorExportPreset?, debug: Bool) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: preset?.handle) { pArg0 in
            withUnsafePointer(to: debug) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorExportPlatform.method_get_internal_export_files, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_forced_export_files: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_forced_export_files")
        return withUnsafePointer(to: &EditorExportPlatform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2981934095)!
            }
            
        }
        
    }()
    
    /// Returns array of core file names that always should be exported regardless of preset config.
    public static func getForcedExportFiles() -> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(method_get_forced_export_files, nil, nil, &_result.content)
        return _result
    }
    
}

