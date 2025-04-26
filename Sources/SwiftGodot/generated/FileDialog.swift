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


/// A dialog for selecting files or directories in the filesystem.
/// 
/// ``FileDialog`` is a preset dialog used to choose files and directories in the filesystem. It supports filter masks. ``FileDialog`` automatically sets its window title according to the ``fileMode``. If you want to use a custom title, disable this by setting ``modeOverridesTitle`` to `false`.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``fileSelected``
/// - ``filesSelected``
/// - ``dirSelected``
/// - ``filenameFilterChanged``
open class FileDialog: ConfirmationDialog {
    private static var className = StringName("FileDialog")
    override open class var godotClassName: StringName { className }
    public enum FileMode: Int64, CaseIterable {
        /// The dialog allows selecting one, and only one file.
        case openFile = 0 // FILE_MODE_OPEN_FILE
        /// The dialog allows selecting multiple files.
        case openFiles = 1 // FILE_MODE_OPEN_FILES
        /// The dialog only allows selecting a directory, disallowing the selection of any file.
        case openDir = 2 // FILE_MODE_OPEN_DIR
        /// The dialog allows selecting one file or directory.
        case openAny = 3 // FILE_MODE_OPEN_ANY
        /// The dialog will warn when a file exists.
        case saveFile = 4 // FILE_MODE_SAVE_FILE
    }
    
    public enum Access: Int64, CaseIterable {
        /// The dialog only allows accessing files under the ``Resource`` path (`res://`).
        case resources = 0 // ACCESS_RESOURCES
        /// The dialog only allows accessing files under user data path (`user://`).
        case userdata = 1 // ACCESS_USERDATA
        /// The dialog allows accessing files on the whole file system.
        case filesystem = 2 // ACCESS_FILESYSTEM
    }
    
    
    /* Properties */
    
    /// If `true`, changing the ``fileMode`` property will set the window title accordingly (e.g. setting ``fileMode`` to ``FileMode/openFile`` will change the window title to "Open a File").
    final public var modeOverridesTitle: Bool {
        get {
            return is_mode_overriding_title ()
        }
        
        set {
            set_mode_overrides_title (newValue)
        }
        
    }
    
    /// The dialog's open or save mode, which affects the selection behavior. See ``FileDialog/FileMode``.
    final public var fileMode: FileDialog.FileMode {
        get {
            return get_file_mode ()
        }
        
        set {
            set_file_mode (newValue)
        }
        
    }
    
    /// The file system access scope. See ``FileDialog/Access`` constants.
    /// 
    /// > Warning: In Web builds, FileDialog cannot access the host file system. In sandboxed Linux and macOS environments, ``useNativeDialog`` is automatically used to allow limited access to host file system.
    /// 
    final public var access: FileDialog.Access {
        get {
            return get_access ()
        }
        
        set {
            set_access (newValue)
        }
        
    }
    
    /// If non-empty, the given sub-folder will be "root" of this ``FileDialog``, i.e. user won't be able to go to its parent directory.
    /// 
    /// > Note: This property is ignored by native file dialogs.
    /// 
    final public var rootSubfolder: String {
        get {
            return get_root_subfolder ()
        }
        
        set {
            set_root_subfolder (newValue)
        }
        
    }
    
    /// The available file type filters. Each filter string in the array should be formatted like this: `*.png,*.jpg,*.jpeg;Image Files;image/png,image/jpeg`. The description text of the filter is optional and can be omitted. Both file extensions and MIME type should be always set.
    /// 
    /// > Note: Embedded file dialog and Windows file dialog support only file extensions, while Android, Linux, and macOS file dialogs also support MIME types.
    /// 
    final public var filters: PackedStringArray {
        get {
            return get_filters ()
        }
        
        set {
            set_filters (newValue)
        }
        
    }
    
    /// The filter for file names (case-insensitive). When set to a non-empty string, only files that contains the substring will be shown. ``filenameFilter`` can be edited by the user with the filter button at the top of the file dialog.
    /// 
    /// See also ``filters``, which should be used to restrict the file types that can be selected instead of ``filenameFilter`` which is meant to be set by the user.
    /// 
    final public var filenameFilter: String {
        get {
            return get_filename_filter ()
        }
        
        set {
            set_filename_filter (newValue)
        }
        
    }
    
    /// The number of additional ``OptionButton``s and ``CheckBox``es in the dialog.
    final public var optionCount: Int32 {
        get {
            return get_option_count ()
        }
        
        set {
            set_option_count (newValue)
        }
        
    }
    
    /// If `true`, the dialog will show hidden files.
    /// 
    /// > Note: This property is ignored by native file dialogs on Android and Linux.
    /// 
    final public var showHiddenFiles: Bool {
        get {
            return is_showing_hidden_files ()
        }
        
        set {
            set_show_hidden_files (newValue)
        }
        
    }
    
    /// If `true`, and if supported by the current ``DisplayServer``, OS native dialog will be used instead of custom one.
    /// 
    /// > Note: On Android, it is only supported when using ``Access/filesystem``. For access mode ``Access/resources`` and ``Access/userdata``, the system will fall back to custom FileDialog.
    /// 
    /// > Note: On Linux and macOS, sandboxed apps always use native dialogs to access the host file system.
    /// 
    /// > Note: On macOS, sandboxed apps will save security-scoped bookmarks to retain access to the opened folders across multiple sessions. Use ``OS/getGrantedPermissions()`` to get a list of saved bookmarks.
    /// 
    /// > Note: Native dialogs are isolated from the base process, file dialog properties can't be modified once the dialog is shown.
    /// 
    final public var useNativeDialog: Bool {
        get {
            return get_use_native_dialog ()
        }
        
        set {
            set_use_native_dialog (newValue)
        }
        
    }
    
    /// The current working directory of the file dialog.
    /// 
    /// > Note: For native file dialogs, this property is only treated as a hint and may not be respected by specific OS implementations.
    /// 
    final public var currentDir: String {
        get {
            return get_current_dir ()
        }
        
        set {
            set_current_dir (newValue)
        }
        
    }
    
    /// The currently selected file of the file dialog.
    final public var currentFile: String {
        get {
            return get_current_file ()
        }
        
        set {
            set_current_file (newValue)
        }
        
    }
    
    /// The currently selected file path of the file dialog.
    final public var currentPath: String {
        get {
            return get_current_path ()
        }
        
        set {
            set_current_path (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_clear_filters: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_filters")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clear all the added filters in the dialog.
    public final func clearFilters() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(FileDialog.method_clear_filters, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_add_filter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_filter")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3388804757)!
            }
            
        }
        
    }()
    
    /// Adds a comma-delimited file name `filter` option to the ``FileDialog`` with an optional `description`, which restricts what files can be picked.
    /// 
    /// A `filter` should be of the form `"filename.extension"`, where filename and extension can be `*` to match any string. Filters starting with `.` (i.e. empty filenames) are not allowed.
    /// 
    /// For example, a `filter` of `"*.png, *.jpg"` and a `description` of `"Images"` results in filter text "Images (*.png, *.jpg)".
    /// 
    public final func addFilter(_ filter: String, description: String = "") {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let filter = GString(filter)
        withUnsafePointer(to: filter.content) { pArg0 in
            let description = GString(description)
            withUnsafePointer(to: description.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(FileDialog.method_add_filter, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_filters: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_filters")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4015028928)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_filters(_ filters: PackedStringArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: filters.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileDialog.method_set_filters, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_filters: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_filters")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_filters() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(FileDialog.method_get_filters, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_clear_filename_filter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_filename_filter")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clear the filter for file names.
    public final func clearFilenameFilter() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(FileDialog.method_clear_filename_filter, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_set_filename_filter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_filename_filter")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_filename_filter(_ filter: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let filter = GString(filter)
        withUnsafePointer(to: filter.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileDialog.method_set_filename_filter, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_filename_filter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_filename_filter")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_filename_filter() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(FileDialog.method_get_filename_filter, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_option_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_option_name")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the name of the ``OptionButton`` or ``CheckBox`` with index `option`.
    public final func getOptionName(option: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: option) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileDialog.method_get_option_name, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_option_values: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_option_values")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 647634434)!
            }
            
        }
        
    }()
    
    /// Returns an array of values of the ``OptionButton`` with index `option`.
    public final func getOptionValues(option: Int32) -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedStringArray = PackedStringArray ()
        withUnsafePointer(to: option) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileDialog.method_get_option_values, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_option_default: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_option_default")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the default value index of the ``OptionButton`` or ``CheckBox`` with index `option`.
    public final func getOptionDefault(option: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: option) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileDialog.method_get_option_default, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_option_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_option_name")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Sets the name of the ``OptionButton`` or ``CheckBox`` with index `option`.
    public final func setOptionName(option: Int32, name: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: option) { pArg0 in
            let name = GString(name)
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(FileDialog.method_set_option_name, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_option_values: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_option_values")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3353661094)!
            }
            
        }
        
    }()
    
    /// Sets the option values of the ``OptionButton`` with index `option`.
    public final func setOptionValues(option: Int32, values: PackedStringArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: option) { pArg0 in
            withUnsafePointer(to: values.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(FileDialog.method_set_option_values, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_option_default: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_option_default")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Sets the default value index of the ``OptionButton`` or ``CheckBox`` with index `option`.
    public final func setOptionDefault(option: Int32, defaultValueIndex: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: option) { pArg0 in
            withUnsafePointer(to: defaultValueIndex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(FileDialog.method_set_option_default, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_option_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_option_count")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_option_count(_ count: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: count) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileDialog.method_set_option_count, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_option_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_option_count")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_option_count() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(FileDialog.method_get_option_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_add_option: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_option")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 149592325)!
            }
            
        }
        
    }()
    
    /// Adds an additional ``OptionButton`` to the file dialog. If `values` is empty, a ``CheckBox`` is added instead.
    /// 
    /// `defaultValueIndex` should be an index of the value in the `values`. If `values` is empty it should be either `1` (checked), or `0` (unchecked).
    /// 
    public final func addOption(name: String, values: PackedStringArray, defaultValueIndex: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: values.content) { pArg1 in
                withUnsafePointer(to: defaultValueIndex) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(FileDialog.method_add_option, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_selected_options: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_selected_options")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3102165223)!
            }
            
        }
        
    }()
    
    /// Returns a ``VariantDictionary`` with the selected values of the additional ``OptionButton``s and/or ``CheckBox``es. ``VariantDictionary`` keys are names and values are selected value indices.
    public final func getSelectedOptions() -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        gi.object_method_bind_ptrcall(FileDialog.method_get_selected_options, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_current_dir: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_current_dir")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_current_dir() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(FileDialog.method_get_current_dir, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_current_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_current_file")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_current_file() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(FileDialog.method_get_current_file, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_current_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_current_path")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_current_path() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(FileDialog.method_get_current_path, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_current_dir: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_current_dir")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_current_dir(_ dir: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let dir = GString(dir)
        withUnsafePointer(to: dir.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileDialog.method_set_current_dir, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_current_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_current_file")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_current_file(_ file: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let file = GString(file)
        withUnsafePointer(to: file.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileDialog.method_set_current_file, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_current_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_current_path")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_current_path(_ path: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileDialog.method_set_current_path, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_mode_overrides_title: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_mode_overrides_title")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mode_overrides_title(_ override: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: override) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileDialog.method_set_mode_overrides_title, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_mode_overriding_title: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_mode_overriding_title")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_mode_overriding_title() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(FileDialog.method_is_mode_overriding_title, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_file_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_file_mode")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3654936397)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_file_mode(_ mode: FileDialog.FileMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileDialog.method_set_file_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_file_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_file_mode")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4074825319)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_file_mode() -> FileDialog.FileMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(FileDialog.method_get_file_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return FileDialog.FileMode (rawValue: _result)!
    }
    
    fileprivate static let method_get_vbox: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_vbox")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 915758477)!
            }
            
        }
        
    }()
    
    /// Returns the vertical box container of the dialog, custom controls can be added to it.
    /// 
    /// > Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their ``CanvasItem/visible`` property.
    /// 
    /// > Note: Changes to this node are ignored by native file dialogs, use ``addOption(name:values:defaultValueIndex:)`` to add custom elements to the dialog instead.
    /// 
    public final func getVbox() -> VBoxContainer? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(FileDialog.method_get_vbox, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_line_edit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_edit")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4071694264)!
            }
            
        }
        
    }()
    
    /// Returns the LineEdit for the selected file.
    /// 
    /// > Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their ``CanvasItem/visible`` property.
    /// 
    public final func getLineEdit() -> LineEdit? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(FileDialog.method_get_line_edit, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_access: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_access")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4104413466)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_access(_ access: FileDialog.Access) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: access.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileDialog.method_set_access, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_access: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_access")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3344081076)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_access() -> FileDialog.Access {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(FileDialog.method_get_access, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return FileDialog.Access (rawValue: _result)!
    }
    
    fileprivate static let method_set_root_subfolder: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_root_subfolder")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_root_subfolder(_ dir: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let dir = GString(dir)
        withUnsafePointer(to: dir.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileDialog.method_set_root_subfolder, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_root_subfolder: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_root_subfolder")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_root_subfolder() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(FileDialog.method_get_root_subfolder, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_show_hidden_files: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_show_hidden_files")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_show_hidden_files(_ show: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: show) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileDialog.method_set_show_hidden_files, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_showing_hidden_files: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_showing_hidden_files")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_showing_hidden_files() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(FileDialog.method_is_showing_hidden_files, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_use_native_dialog: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_native_dialog")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_native_dialog(_ native: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: native) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileDialog.method_set_use_native_dialog, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_use_native_dialog: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_use_native_dialog")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_use_native_dialog() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(FileDialog.method_get_use_native_dialog, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_deselect_all: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("deselect_all")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clear all currently selected items in the dialog.
    public final func deselectAll() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(FileDialog.method_deselect_all, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_invalidate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("invalidate")
        return withUnsafePointer(to: &FileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Invalidate and update the current dialog content list.
    /// 
    /// > Note: This method does nothing on native file dialogs.
    /// 
    public final func invalidate() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(FileDialog.method_invalidate, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    // Signals 
    /// Emitted when the user selects a file by double-clicking it or pressing the **OK** button.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.fileSelected.connect { path in
    ///    print ("caught signal")
    /// }
    /// ```
    public var fileSelected: SignalWithArguments<String> { SignalWithArguments<String> (target: self, signalName: "file_selected") }
    
    /// Emitted when the user selects multiple files.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.filesSelected.connect { paths in
    ///    print ("caught signal")
    /// }
    /// ```
    public var filesSelected: SignalWithArguments<PackedStringArray> { SignalWithArguments<PackedStringArray> (target: self, signalName: "files_selected") }
    
    /// Emitted when the user selects a directory.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.dirSelected.connect { dir in
    ///    print ("caught signal")
    /// }
    /// ```
    public var dirSelected: SignalWithArguments<String> { SignalWithArguments<String> (target: self, signalName: "dir_selected") }
    
    /// Emitted when the filter for file names changes.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.filenameFilterChanged.connect { filter in
    ///    print ("caught signal")
    /// }
    /// ```
    public var filenameFilterChanged: SignalWithArguments<String> { SignalWithArguments<String> (target: self, signalName: "filename_filter_changed") }
    
}

