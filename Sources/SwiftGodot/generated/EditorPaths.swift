// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Editor-only singleton that returns paths to various OS-specific data folders and files.
/// 
/// This editor-only singleton returns OS-specific paths to various data folders and files. It can be used in editor plugins to ensure files are saved in the correct location on each operating system.
/// 
/// > Note: This singleton is not accessible in exported projects. Attempting to access it in an exported project will result in a script error as the singleton won't be declared. To prevent script errors in exported projects, use ``Engine/hasSingleton(name:)`` to check whether the singleton is available before using it.
/// 
/// > Note: On the Linux/BSD platform, Godot complies with the <a href="https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html">XDG Base Directory Specification</a>. You can override environment variables following the specification to change the editor and project data paths.
/// 
open class EditorPaths: Object {
    override open class var godotClassName: StringName { "EditorPaths" }
    /* Methods */
    fileprivate static var method_get_data_dir: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_data_dir")
        return withUnsafePointer(to: &EditorPaths.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the absolute path to the user's data folder. This folder should be used for _persistent_ user data files such as installed export templates.
    /// 
    /// **Default paths per platform:**
    /// 
    public final func getDataDir() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorPaths.method_get_data_dir, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_get_config_dir: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_config_dir")
        return withUnsafePointer(to: &EditorPaths.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the absolute path to the user's configuration folder. This folder should be used for _persistent_ user configuration files.
    /// 
    /// **Default paths per platform:**
    /// 
    public final func getConfigDir() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorPaths.method_get_config_dir, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_get_cache_dir: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_cache_dir")
        return withUnsafePointer(to: &EditorPaths.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the absolute path to the user's cache folder. This folder should be used for temporary data that can be removed safely whenever the editor is closed (such as generated resource thumbnails).
    /// 
    /// **Default paths per platform:**
    /// 
    public final func getCacheDir() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorPaths.method_get_cache_dir, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_is_self_contained: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_self_contained")
        return withUnsafePointer(to: &EditorPaths.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the editor is marked as self-contained, `false` otherwise. When self-contained mode is enabled, user configuration, data and cache files are saved in an `editor_data/` folder next to the editor binary. This makes portable usage easier and ensures the Godot editor minimizes file writes outside its own folder. Self-contained mode is not available for exported projects.
    /// 
    /// Self-contained mode can be enabled by creating a file named `._sc_` or `_sc_` in the same folder as the editor binary or macOS .app bundle while the editor is not running. See also ``getSelfContainedFile()``.
    /// 
    /// > Note: On macOS, quarantine flag should be manually removed before using self-contained mode, see <a href="https://docs.godotengine.org/en/stable/tutorials/export/running_on_macos.html">Running on macOS</a>.
    /// 
    /// > Note: On macOS, placing `_sc_` or any other file inside .app bundle will break digital signature and make it non-portable, consider placing it in the same folder as the .app bundle instead.
    /// 
    /// > Note: The Steam release of Godot uses self-contained mode by default.
    /// 
    public final func isSelfContained() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorPaths.method_is_self_contained, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_self_contained_file: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_self_contained_file")
        return withUnsafePointer(to: &EditorPaths.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the absolute path to the self-contained file that makes the current Godot editor instance be considered as self-contained. Returns an empty string if the current Godot editor instance isn't self-contained. See also ``isSelfContained()``.
    public final func getSelfContainedFile() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorPaths.method_get_self_contained_file, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_get_project_settings_dir: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_project_settings_dir")
        return withUnsafePointer(to: &EditorPaths.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the project-specific editor settings path. Projects all have a unique subdirectory inside the settings path where project-specific editor settings are saved.
    public final func getProjectSettingsDir() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorPaths.method_get_project_settings_dir, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
}

