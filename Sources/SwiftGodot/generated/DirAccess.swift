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


/// Provides methods for managing directories and their content.
/// 
/// This class is used to manage directories and their content, even outside of the project folder.
/// 
/// ``DirAccess`` can't be instantiated directly. Instead it is created with a static method that takes a path for which it will be opened.
/// 
/// Most of the methods have a static alternative that can be used without creating a ``DirAccess``. Static methods only support absolute paths (including `res://` and `user://`).
/// 
/// > Note: Accessing project ("res://") directories once exported may behave unexpectedly as some files are converted to engine-specific formats and their original source files may not be present in the expected PCK package. Because of this, to access resources in an exported project, it is recommended to use ``ResourceLoader`` instead of ``FileAccess``.
/// 
/// Here is an example on how to iterate through the files of a directory:
/// 
/// Keep in mind that file names may change or be remapped after export. If you want to see the actual resource file list as it appears in the editor, use ``ResourceLoader/listDirectory(directoryPath:)`` instead.
/// 
open class DirAccess: RefCounted {
    private static var className = StringName("DirAccess")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// If `true`, `.` and `..` are included when navigating the directory.
    /// 
    /// Affects ``listDirBegin()`` and ``getDirectories()``.
    /// 
    final public var includeNavigational: Bool {
        get {
            return get_include_navigational ()
        }
        
        set {
            set_include_navigational (newValue)
        }
        
    }
    
    /// If `true`, hidden files are included when navigating the directory.
    /// 
    /// Affects ``listDirBegin()``, ``getDirectories()`` and ``getFiles()``.
    /// 
    final public var includeHidden: Bool {
        get {
            return get_include_hidden ()
        }
        
        set {
            set_include_hidden (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_open: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("open")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1923528528)!
            }
            
        }
        
    }()
    
    /// Creates a new ``DirAccess`` object and opens an existing directory of the filesystem. The `path` argument can be within the project tree (`res://folder`), the user directory (`user://folder`) or an absolute path of the user filesystem (e.g. `/tmp/folder` or `C:\tmp\folder`).
    /// 
    /// Returns `null` if opening the directory failed. You can use ``getOpenError()`` to check the error that occurred.
    /// 
    public static func open(path: String) -> DirAccess? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_open, nil, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_open_error: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_open_error")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166280745)!
            }
            
        }
        
    }()
    
    /// Returns the result of the last ``open(path:)`` call in the current thread.
    public static func getOpenError() -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(method_get_open_error, nil, nil, &_result)
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_create_temp: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_temp")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 812913566)!
            }
            
        }
        
    }()
    
    /// Creates a temporary directory. This directory will be freed when the returned ``DirAccess`` is freed.
    /// 
    /// If `prefix` is not empty, it will be prefixed to the directory name, separated by a `-`.
    /// 
    /// If `keep` is `true`, the directory is not deleted when the returned ``DirAccess`` is freed.
    /// 
    /// Returns `null` if opening the directory failed. You can use ``getOpenError()`` to check the error that occurred.
    /// 
    public static func createTemp(prefix: String = "", keep: Bool = false) -> DirAccess? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        let prefix = GString(prefix)
        withUnsafePointer(to: prefix.content) { pArg0 in
            withUnsafePointer(to: keep) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_create_temp, nil, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_list_dir_begin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("list_dir_begin")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166280745)!
            }
            
        }
        
    }()
    
    /// Initializes the stream used to list all files and directories using the ``getNext()`` function, closing the currently opened stream if needed. Once the stream has been processed, it should typically be closed with ``listDirEnd()``.
    /// 
    /// Affected by ``includeHidden`` and ``includeNavigational``.
    /// 
    /// > Note: The order of files and directories returned by this method is not deterministic, and can vary between operating systems. If you want a list of all files or folders sorted alphabetically, use ``getFiles()`` or ``getDirectories()``.
    /// 
    public final func listDirBegin() -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(DirAccess.method_list_dir_begin, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_get_next: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_next")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2841200299)!
            }
            
        }
        
    }()
    
    /// Returns the next element (file or directory) in the current directory.
    /// 
    /// The name of the file or directory is returned (and not its full path). Once the stream has been fully processed, the method returns an empty ``String`` and closes the stream automatically (i.e. ``listDirEnd()`` would not be mandatory in such a case).
    /// 
    public final func getNext() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(DirAccess.method_get_next, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_current_is_dir: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("current_is_dir")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns whether the current item processed with the last ``getNext()`` call is a directory (`.` and `..` are considered directories).
    public final func currentIsDir() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(DirAccess.method_current_is_dir, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_list_dir_end: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("list_dir_end")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Closes the current stream opened with ``listDirBegin()`` (whether it has been fully processed with ``getNext()`` does not matter).
    public final func listDirEnd() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(DirAccess.method_list_dir_end, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_get_files: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_files")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2981934095)!
            }
            
        }
        
    }()
    
    /// Returns a ``PackedStringArray`` containing filenames of the directory contents, excluding directories. The array is sorted alphabetically.
    /// 
    /// Affected by ``includeHidden``.
    /// 
    /// > Note: When used on a `res://` path in an exported project, only the files actually included in the PCK at the given folder level are returned. In practice, this means that since imported resources are stored in a top-level `.godot/` folder, only paths to `*.gd` and `*.import` files are returned (plus a few files such as `project.godot` or `project.binary` and the project icon). In an exported project, the list of returned files will also vary depending on whether ``ProjectSettings/editor/export/convertTextResourcesToBinary`` is `true`.
    /// 
    public final func getFiles() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(DirAccess.method_get_files, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_files_at: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_files_at")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3538744774)!
            }
            
        }
        
    }()
    
    /// Returns a ``PackedStringArray`` containing filenames of the directory contents, excluding directories, at the given `path`. The array is sorted alphabetically.
    /// 
    /// Use ``getFiles()`` if you want more control of what gets included.
    /// 
    /// > Note: When used on a `res://` path in an exported project, only the files included in the PCK at the given folder level are returned. In practice, this means that since imported resources are stored in a top-level `.godot/` folder, only paths to `.gd` and `.import` files are returned (plus a few other files, such as `project.godot` or `project.binary` and the project icon). In an exported project, the list of returned files will also vary depending on ``ProjectSettings/editor/export/convertTextResourcesToBinary``.
    /// 
    public static func getFilesAt(path: String) -> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_files_at, nil, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_directories: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_directories")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2981934095)!
            }
            
        }
        
    }()
    
    /// Returns a ``PackedStringArray`` containing filenames of the directory contents, excluding files. The array is sorted alphabetically.
    /// 
    /// Affected by ``includeHidden`` and ``includeNavigational``.
    /// 
    /// > Note: The returned directories in the editor and after exporting in the `res://` directory may differ as some files are converted to engine-specific formats when exported.
    /// 
    public final func getDirectories() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(DirAccess.method_get_directories, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_directories_at: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_directories_at")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3538744774)!
            }
            
        }
        
    }()
    
    /// Returns a ``PackedStringArray`` containing filenames of the directory contents, excluding files, at the given `path`. The array is sorted alphabetically.
    /// 
    /// Use ``getDirectories()`` if you want more control of what gets included.
    /// 
    /// > Note: The returned directories in the editor and after exporting in the `res://` directory may differ as some files are converted to engine-specific formats when exported.
    /// 
    public static func getDirectoriesAt(path: String) -> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_directories_at, nil, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_drive_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_drive_count")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// On Windows, returns the number of drives (partitions) mounted on the current filesystem.
    /// 
    /// On macOS, returns the number of mounted volumes.
    /// 
    /// On Linux, returns the number of mounted volumes and GTK 3 bookmarks.
    /// 
    /// On other platforms, the method returns 0.
    /// 
    public static func getDriveCount() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(method_get_drive_count, nil, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_drive_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_drive_name")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 990163283)!
            }
            
        }
        
    }()
    
    /// On Windows, returns the name of the drive (partition) passed as an argument (e.g. `C:`).
    /// 
    /// On macOS, returns the path to the mounted volume passed as an argument.
    /// 
    /// On Linux, returns the path to the mounted volume or GTK 3 bookmark passed as an argument.
    /// 
    /// On other platforms, or if the requested drive does not exist, the method returns an empty String.
    /// 
    public static func getDriveName(idx: Int32) -> String {
        let _result = GString ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_drive_name, nil, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_current_drive: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_current_drive")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Returns the currently opened directory's drive index. See ``getDriveName(idx:)`` to convert returned index to the name of the drive.
    public final func getCurrentDrive() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(DirAccess.method_get_current_drive, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_change_dir: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("change_dir")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Changes the currently opened directory to the one passed as an argument. The argument can be relative to the current directory (e.g. `newdir` or `../newdir`), or an absolute path (e.g. `/tmp/newdir` or `res://somedir/newdir`).
    /// 
    /// Returns one of the ``GodotError`` code constants (``GodotError/ok`` on success).
    /// 
    /// > Note: The new directory must be within the same scope, e.g. when you had opened a directory inside `res://`, you can't change it to `user://` directory. If you need to open a directory in another access scope, use ``open(path:)`` to create a new instance instead.
    /// 
    public final func changeDir(toDir: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let toDir = GString(toDir)
        withUnsafePointer(to: toDir.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(DirAccess.method_change_dir, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_get_current_dir: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_current_dir")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1287308131)!
            }
            
        }
        
    }()
    
    /// Returns the absolute path to the currently opened directory (e.g. `res://folder` or `C:\tmp\folder`).
    public final func getCurrentDir(includeDrive: Bool = true) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: includeDrive) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(DirAccess.method_get_current_dir, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_make_dir: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("make_dir")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Creates a directory. The argument can be relative to the current directory, or an absolute path. The target directory should be placed in an already existing directory (to create the full path recursively, see ``makeDirRecursive(path:)``).
    /// 
    /// Returns one of the ``GodotError`` code constants (``GodotError/ok`` on success).
    /// 
    public final func makeDir(path: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(DirAccess.method_make_dir, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_make_dir_absolute: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("make_dir_absolute")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Static version of ``makeDir(path:)``. Supports only absolute paths.
    public static func makeDirAbsolute(path: String) -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_make_dir_absolute, nil, pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_make_dir_recursive: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("make_dir_recursive")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Creates a target directory and all necessary intermediate directories in its path, by calling ``makeDir(path:)`` recursively. The argument can be relative to the current directory, or an absolute path.
    /// 
    /// Returns one of the ``GodotError`` code constants (``GodotError/ok`` on success).
    /// 
    public final func makeDirRecursive(path: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(DirAccess.method_make_dir_recursive, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_make_dir_recursive_absolute: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("make_dir_recursive_absolute")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Static version of ``makeDirRecursive(path:)``. Supports only absolute paths.
    public static func makeDirRecursiveAbsolute(path: String) -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_make_dir_recursive_absolute, nil, pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_file_exists: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("file_exists")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2323990056)!
            }
            
        }
        
    }()
    
    /// Returns whether the target file exists. The argument can be relative to the current directory, or an absolute path.
    /// 
    /// For a static equivalent, use ``FileAccess/fileExists(path:)``.
    /// 
    /// > Note: Many resources types are imported (e.g. textures or sound files), and their source asset will not be included in the exported game, as only the imported version is used. See ``ResourceLoader/exists(path:typeHint:)`` for an alternative approach that takes resource remapping into account.
    /// 
    public final func fileExists(path: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(DirAccess.method_file_exists, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_dir_exists: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("dir_exists")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2323990056)!
            }
            
        }
        
    }()
    
    /// Returns whether the target directory exists. The argument can be relative to the current directory, or an absolute path.
    /// 
    /// > Note: The returned [bool] in the editor and after exporting when used on a path in the `res://` directory may be different. Some files are converted to engine-specific formats when exported, potentially changing the directory structure.
    /// 
    public final func dirExists(path: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(DirAccess.method_dir_exists, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_dir_exists_absolute: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("dir_exists_absolute")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2323990056)!
            }
            
        }
        
    }()
    
    /// Static version of ``dirExists(path:)``. Supports only absolute paths.
    /// 
    /// > Note: The returned [bool] in the editor and after exporting when used on a path in the `res://` directory may be different. Some files are converted to engine-specific formats when exported, potentially changing the directory structure.
    /// 
    public static func dirExistsAbsolute(path: String) -> Bool {
        var _result: Bool = false
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_dir_exists_absolute, nil, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_space_left: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_space_left")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Returns the available space on the current directory's disk, in bytes. Returns `0` if the platform-specific method to query the available space fails.
    public final func getSpaceLeft() -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        gi.object_method_bind_ptrcall(DirAccess.method_get_space_left, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_copy: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("copy")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1063198817)!
            }
            
        }
        
    }()
    
    /// Copies the `from` file to the `to` destination. Both arguments should be paths to files, either relative or absolute. If the destination file exists and is not access-protected, it will be overwritten.
    /// 
    /// If `chmodFlags` is different than `-1`, the Unix permissions for the destination path will be set to the provided value, if available on the current operating system.
    /// 
    /// Returns one of the ``GodotError`` code constants (``GodotError/ok`` on success).
    /// 
    public final func copy(from: String, to: String, chmodFlags: Int32 = -1) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let from = GString(from)
        withUnsafePointer(to: from.content) { pArg0 in
            let to = GString(to)
            withUnsafePointer(to: to.content) { pArg1 in
                withUnsafePointer(to: chmodFlags) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(DirAccess.method_copy, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_copy_absolute: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("copy_absolute")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1063198817)!
            }
            
        }
        
    }()
    
    /// Static version of ``copy(from:to:chmodFlags:)``. Supports only absolute paths.
    public static func copyAbsolute(from: String, to: String, chmodFlags: Int32 = -1) -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let from = GString(from)
        withUnsafePointer(to: from.content) { pArg0 in
            let to = GString(to)
            withUnsafePointer(to: to.content) { pArg1 in
                withUnsafePointer(to: chmodFlags) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(method_copy_absolute, nil, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_rename: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("rename")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 852856452)!
            }
            
        }
        
    }()
    
    /// Renames (move) the `from` file or directory to the `to` destination. Both arguments should be paths to files or directories, either relative or absolute. If the destination file or directory exists and is not access-protected, it will be overwritten.
    /// 
    /// Returns one of the ``GodotError`` code constants (``GodotError/ok`` on success).
    /// 
    public final func rename(from: String, to: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let from = GString(from)
        withUnsafePointer(to: from.content) { pArg0 in
            let to = GString(to)
            withUnsafePointer(to: to.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(DirAccess.method_rename, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_rename_absolute: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("rename_absolute")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 852856452)!
            }
            
        }
        
    }()
    
    /// Static version of ``rename(from:to:)``. Supports only absolute paths.
    public static func renameAbsolute(from: String, to: String) -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let from = GString(from)
        withUnsafePointer(to: from.content) { pArg0 in
            let to = GString(to)
            withUnsafePointer(to: to.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_rename_absolute, nil, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_remove: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Permanently deletes the target file or an empty directory. The argument can be relative to the current directory, or an absolute path. If the target directory is not empty, the operation will fail.
    /// 
    /// If you don't want to delete the file/directory permanently, use ``OS/moveToTrash(path:)`` instead.
    /// 
    /// Returns one of the ``GodotError`` code constants (``GodotError/ok`` on success).
    /// 
    public final func remove(path: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(DirAccess.method_remove, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_remove_absolute: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_absolute")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Static version of ``remove(path:)``. Supports only absolute paths.
    public static func removeAbsolute(path: String) -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_remove_absolute, nil, pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_is_link: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_link")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2323990056)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the file or directory is a symbolic link, directory junction, or other reparse point.
    /// 
    /// > Note: This method is implemented on macOS, Linux, and Windows.
    /// 
    public final func isLink(path: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(DirAccess.method_is_link, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_read_link: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("read_link")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1703090593)!
            }
            
        }
        
    }()
    
    /// Returns target of the symbolic link.
    /// 
    /// > Note: This method is implemented on macOS, Linux, and Windows.
    /// 
    public final func readLink(path: String) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(DirAccess.method_read_link, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_create_link: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_link")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 852856452)!
            }
            
        }
        
    }()
    
    /// Creates symbolic link between files or folders.
    /// 
    /// > Note: On Windows, this method works only if the application is running with elevated privileges or Developer Mode is enabled.
    /// 
    /// > Note: This method is implemented on macOS, Linux, and Windows.
    /// 
    public final func createLink(source: String, target: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let source = GString(source)
        withUnsafePointer(to: source.content) { pArg0 in
            let target = GString(target)
            withUnsafePointer(to: target.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(DirAccess.method_create_link, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_is_bundle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_bundle")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the directory is a macOS bundle.
    /// 
    /// > Note: This method is implemented on macOS.
    /// 
    public final func isBundle(path: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(DirAccess.method_is_bundle, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_include_navigational: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_include_navigational")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_include_navigational(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(DirAccess.method_set_include_navigational, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_include_navigational: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_include_navigational")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_include_navigational() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(DirAccess.method_get_include_navigational, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_include_hidden: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_include_hidden")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_include_hidden(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(DirAccess.method_set_include_hidden, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_include_hidden: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_include_hidden")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_include_hidden() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(DirAccess.method_get_include_hidden, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_case_sensitive: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_case_sensitive")
        return withUnsafePointer(to: &DirAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the file system or directory use case sensitive file names.
    /// 
    /// > Note: This method is implemented on macOS, Linux (for EXT4 and F2FS filesystems only) and Windows. On other platforms, it always returns `true`.
    /// 
    public final func isCaseSensitive(path: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(DirAccess.method_is_case_sensitive, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
}

