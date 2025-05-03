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


/// A modified version of ``FileDialog`` used by the editor.
/// 
/// ``EditorFileDialog`` is an enhanced version of ``FileDialog`` available only to editor plugins. Additional features include list of favorited/recent files and the ability to see files as thumbnails grid instead of list.
/// 
/// Unlike ``FileDialog``, ``EditorFileDialog`` does not have a property for using native dialogs. Instead, native dialogs can be enabled globally via the ``EditorSettings/interface/editor/useNativeFileDialogs`` editor setting. They are also enabled automatically when running in sandbox (e.g. on macOS).
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``fileSelected``
/// - ``filesSelected``
/// - ``dirSelected``
/// - ``filenameFilterChanged``
open class EditorFileDialog: ConfirmationDialog {
    private static var className = StringName("EditorFileDialog")
    override open class var godotClassName: StringName { className }
    public enum FileMode: Int64, CaseIterable {
        /// The ``EditorFileDialog`` can select only one file. Accepting the window will open the file.
        case openFile = 0 // FILE_MODE_OPEN_FILE
        /// The ``EditorFileDialog`` can select multiple files. Accepting the window will open all files.
        case openFiles = 1 // FILE_MODE_OPEN_FILES
        /// The ``EditorFileDialog`` can select only one directory. Accepting the window will open the directory.
        case openDir = 2 // FILE_MODE_OPEN_DIR
        /// The ``EditorFileDialog`` can select a file or directory. Accepting the window will open it.
        case openAny = 3 // FILE_MODE_OPEN_ANY
        /// The ``EditorFileDialog`` can select only one file. Accepting the window will save the file.
        case saveFile = 4 // FILE_MODE_SAVE_FILE
    }
    
    public enum Access: Int64, CaseIterable {
        /// The ``EditorFileDialog`` can only view `res://` directory contents.
        case resources = 0 // ACCESS_RESOURCES
        /// The ``EditorFileDialog`` can only view `user://` directory contents.
        case userdata = 1 // ACCESS_USERDATA
        /// The ``EditorFileDialog`` can view the entire local file system.
        case filesystem = 2 // ACCESS_FILESYSTEM
    }
    
    public enum DisplayMode: Int64, CaseIterable {
        /// The ``EditorFileDialog`` displays resources as thumbnails.
        case thumbnails = 0 // DISPLAY_THUMBNAILS
        /// The ``EditorFileDialog`` displays resources as a list of filenames.
        case list = 1 // DISPLAY_LIST
    }
    
    
    /* Properties */
    
    /// The location from which the user may select a file, including `res://`, `user://`, and the local file system.
    final public var access: EditorFileDialog.Access {
        get {
            return get_access ()
        }
        
        set {
            set_access (newValue)
        }
        
    }
    
    /// The view format in which the ``EditorFileDialog`` displays resources to the user.
    final public var displayMode: EditorFileDialog.DisplayMode {
        get {
            return get_display_mode ()
        }
        
        set {
            set_display_mode (newValue)
        }
        
    }
    
    /// The dialog's open or save mode, which affects the selection behavior. See ``EditorFileDialog/FileMode``.
    final public var fileMode: EditorFileDialog.FileMode {
        get {
            return get_file_mode ()
        }
        
        set {
            set_file_mode (newValue)
        }
        
    }
    
    /// The currently occupied directory.
    final public var currentDir: String {
        get {
            return get_current_dir ()
        }
        
        set {
            set_current_dir (newValue)
        }
        
    }
    
    /// The currently selected file.
    final public var currentFile: String {
        get {
            return get_current_file ()
        }
        
        set {
            set_current_file (newValue)
        }
        
    }
    
    /// The file system path in the address bar.
    final public var currentPath: String {
        get {
            return get_current_path ()
        }
        
        set {
            set_current_path (newValue)
        }
        
    }
    
    /// The available file type filters. For example, this shows only `.png` and `.gd` files: `set_filters(PackedStringArray(["*.png ; PNG Images","*.gd ; GDScript Files"]))`. Multiple file types can also be specified in a single filter. `"*.png, *.jpg, *.jpeg ; Supported Images"` will show both PNG and JPEG files when selected.
    final public var filters: PackedStringArray {
        get {
            return get_filters ()
        }
        
        set {
            set_filters (newValue)
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
    
    /// If `true`, hidden files and directories will be visible in the ``EditorFileDialog``. This property is synchronized with ``EditorSettings/filesystem/fileDialog/showHiddenFiles``.
    final public var showHiddenFiles: Bool {
        get {
            return is_showing_hidden_files ()
        }
        
        set {
            set_show_hidden_files (newValue)
        }
        
    }
    
    /// If `true`, the ``EditorFileDialog`` will not warn the user before overwriting files.
    final public var disableOverwriteWarning: Bool {
        get {
            return is_overwrite_warning_disabled ()
        }
        
        set {
            set_disable_overwrite_warning (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_clear_filters: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_filters")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all filters except for "All Files (*.*)".
    public final func clearFilters() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(EditorFileDialog.method_clear_filters, handle, nil, nil)
        
    }
    
    fileprivate static let method_add_filter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_filter")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3388804757)!
            }
            
        }
        
    }()
    
    /// Adds a comma-delimited file name `filter` option to the ``EditorFileDialog`` with an optional `description`, which restricts what files can be picked.
    /// 
    /// A `filter` should be of the form `"filename.extension"`, where filename and extension can be `*` to match any string. Filters starting with `.` (i.e. empty filenames) are not allowed.
    /// 
    /// For example, a `filter` of `"*.tscn, *.scn"` and a `description` of `"Scenes"` results in filter text "Scenes (*.tscn, *.scn)".
    /// 
    public final func addFilter(_ filter: String, description: String = "") {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let filter = GString(filter)
        withUnsafePointer(to: filter.content) { pArg0 in
            let description = GString(description)
            withUnsafePointer(to: description.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorFileDialog.method_add_filter, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_filters: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_filters")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(EditorFileDialog.method_set_filters, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_filters: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_filters")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_filters() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(EditorFileDialog.method_get_filters, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_option_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_option_name")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(EditorFileDialog.method_get_option_name, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_option_values: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_option_values")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(EditorFileDialog.method_get_option_values, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_option_default: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_option_default")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(EditorFileDialog.method_get_option_default, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_option_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_option_name")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
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
                        gi.object_method_bind_ptrcall(EditorFileDialog.method_set_option_name, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_option_values: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_option_values")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
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
                        gi.object_method_bind_ptrcall(EditorFileDialog.method_set_option_values, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_option_default: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_option_default")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
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
                        gi.object_method_bind_ptrcall(EditorFileDialog.method_set_option_default, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_option_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_option_count")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(EditorFileDialog.method_set_option_count, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_option_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_option_count")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_option_count() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(EditorFileDialog.method_get_option_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_add_option: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_option")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
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
                            gi.object_method_bind_ptrcall(EditorFileDialog.method_add_option, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_selected_options: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_selected_options")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3102165223)!
            }
            
        }
        
    }()
    
    /// Returns a ``VariantDictionary`` with the selected values of the additional ``OptionButton``s and/or ``CheckBox``es. ``VariantDictionary`` keys are names and values are selected value indices.
    public final func getSelectedOptions() -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        gi.object_method_bind_ptrcall(EditorFileDialog.method_get_selected_options, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_clear_filename_filter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_filename_filter")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clear the filter for file names.
    public final func clearFilenameFilter() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(EditorFileDialog.method_clear_filename_filter, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_filename_filter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_filename_filter")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Sets the value of the filter for file names.
    public final func setFilenameFilter(_ filter: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let filter = GString(filter)
        withUnsafePointer(to: filter.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorFileDialog.method_set_filename_filter, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_filename_filter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_filename_filter")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the value of the filter for file names.
    public final func getFilenameFilter() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorFileDialog.method_get_filename_filter, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_current_dir: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_current_dir")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_current_dir() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorFileDialog.method_get_current_dir, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_current_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_current_file")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_current_file() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorFileDialog.method_get_current_file, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_current_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_current_path")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_current_path() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorFileDialog.method_get_current_path, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_current_dir: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_current_dir")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(EditorFileDialog.method_set_current_dir, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_current_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_current_file")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(EditorFileDialog.method_set_current_file, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_current_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_current_path")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(EditorFileDialog.method_set_current_path, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_file_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_file_mode")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 274150415)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_file_mode(_ mode: EditorFileDialog.FileMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorFileDialog.method_set_file_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_file_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_file_mode")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2681044145)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_file_mode() -> EditorFileDialog.FileMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(EditorFileDialog.method_get_file_mode, handle, nil, &_result)
        return EditorFileDialog.FileMode (rawValue: _result)!
    }
    
    fileprivate static let method_get_vbox: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_vbox")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 915758477)!
            }
            
        }
        
    }()
    
    /// Returns the ``VBoxContainer`` used to display the file system.
    /// 
    /// > Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their ``CanvasItem/visible`` property.
    /// 
    public final func getVbox() -> VBoxContainer? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(EditorFileDialog.method_get_vbox, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_line_edit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_edit")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
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
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(EditorFileDialog.method_get_line_edit, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_access: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_access")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3882893764)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_access(_ access: EditorFileDialog.Access) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: access.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorFileDialog.method_set_access, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_access: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_access")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 778734016)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_access() -> EditorFileDialog.Access {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(EditorFileDialog.method_get_access, handle, nil, &_result)
        return EditorFileDialog.Access (rawValue: _result)!
    }
    
    fileprivate static let method_set_show_hidden_files: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_show_hidden_files")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(EditorFileDialog.method_set_show_hidden_files, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_showing_hidden_files: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_showing_hidden_files")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_showing_hidden_files() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorFileDialog.method_is_showing_hidden_files, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_display_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_display_mode")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3049004050)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_display_mode(_ mode: EditorFileDialog.DisplayMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorFileDialog.method_set_display_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_display_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_display_mode")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3517174669)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_display_mode() -> EditorFileDialog.DisplayMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(EditorFileDialog.method_get_display_mode, handle, nil, &_result)
        return EditorFileDialog.DisplayMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_disable_overwrite_warning: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_disable_overwrite_warning")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_disable_overwrite_warning(_ disable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: disable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorFileDialog.method_set_disable_overwrite_warning, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_overwrite_warning_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_overwrite_warning_disabled")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_overwrite_warning_disabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorFileDialog.method_is_overwrite_warning_disabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_add_side_menu: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_side_menu")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 402368861)!
            }
            
        }
        
    }()
    
    /// Adds the given `menu` to the side of the file dialog with the given `title` text on top. Only one side menu is allowed.
    public final func addSideMenu(_ menu: Control?, title: String = "") {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: menu?.handle) { pArg0 in
            let title = GString(title)
            withUnsafePointer(to: title.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorFileDialog.method_add_side_menu, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_popup_file_dialog: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("popup_file_dialog")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Shows the ``EditorFileDialog`` at the default size and position for file dialogs in the editor, and selects the file name if there is a current file.
    public final func popupFileDialog() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(EditorFileDialog.method_popup_file_dialog, handle, nil, nil)
        
    }
    
    fileprivate static let method_invalidate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("invalidate")
        return withUnsafePointer(to: &EditorFileDialog.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Notify the ``EditorFileDialog`` that its view of the data is no longer accurate. Updates the view contents on next view update.
    public final func invalidate() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(EditorFileDialog.method_invalidate, handle, nil, nil)
        
    }
    
    // Signals 
    /// Emitted when a file is selected.
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
    
    /// Emitted when multiple files are selected.
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
    
    /// Emitted when a directory is selected.
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

