// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Version Control System (VCS) interface, which reads and writes to the local VCS in use.
/// 
/// Defines the API that the editor uses to extract information from the underlying VCS. The implementation of this API is included in VCS plugins, which are GDExtension plugins that inherit ``EditorVCSInterface`` and are attached (on demand) to the singleton instance of ``EditorVCSInterface``. Instead of performing the task themselves, all the virtual functions listed below are calling the internally overridden functions in the VCS plugins to provide a plug-n-play experience. A custom VCS plugin is supposed to inherit from ``EditorVCSInterface`` and override each of these virtual functions.
open class EditorVCSInterface: Object {
    override open class var godotClassName: StringName { "EditorVCSInterface" }
    public enum ChangeType: Int64, CustomDebugStringConvertible {
        /// A new file has been added.
        case new = 0 // CHANGE_TYPE_NEW
        /// An earlier added file has been modified.
        case modified = 1 // CHANGE_TYPE_MODIFIED
        /// An earlier added file has been renamed.
        case renamed = 2 // CHANGE_TYPE_RENAMED
        /// An earlier added file has been deleted.
        case deleted = 3 // CHANGE_TYPE_DELETED
        /// An earlier added file has been typechanged.
        case typechange = 4 // CHANGE_TYPE_TYPECHANGE
        /// A file is left unmerged.
        case unmerged = 5 // CHANGE_TYPE_UNMERGED
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .new: return ".new"
                case .modified: return ".modified"
                case .renamed: return ".renamed"
                case .deleted: return ".deleted"
                case .typechange: return ".typechange"
                case .unmerged: return ".unmerged"
            }
            
        }
        
    }
    
    public enum TreeArea: Int64, CustomDebugStringConvertible {
        /// A commit is encountered from the commit area.
        case commit = 0 // TREE_AREA_COMMIT
        /// A file is encountered from the staged area.
        case staged = 1 // TREE_AREA_STAGED
        /// A file is encountered from the unstaged area.
        case unstaged = 2 // TREE_AREA_UNSTAGED
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .commit: return ".commit"
                case .staged: return ".staged"
                case .unstaged: return ".unstaged"
            }
            
        }
        
    }
    
    /* Methods */
    /// Initializes the VCS plugin when called from the editor. Returns whether or not the plugin was successfully initialized. A VCS project is initialized at `projectPath`.
    @_documentation(visibility: public)
    open func _initialize (projectPath: String)-> Bool {
        return false
    }
    
    /// Set user credentials in the underlying VCS. `username` and `password` are used only during HTTPS authentication unless not already mentioned in the remote URL. `sshPublicKeyPath`, `sshPrivateKeyPath`, and `sshPassphrase` are only used during SSH authentication.
    @_documentation(visibility: public)
    open func _setCredentials (username: String, password: String, sshPublicKeyPath: String, sshPrivateKeyPath: String, sshPassphrase: String) {
    }
    
    /// Returns an ``GArray`` of ``GDictionary`` items (see ``createStatusFile(filePath:changeType:area:)``), each containing the status data of every modified file in the project folder.
    @_documentation(visibility: public)
    open func _getModifiedFilesData ()-> VariantCollection<GDictionary> {
        return VariantCollection<GDictionary>()
    }
    
    /// Stages the file present at `filePath` to the staged area.
    @_documentation(visibility: public)
    open func _stageFile (filePath: String) {
    }
    
    /// Unstages the file present at `filePath` from the staged area to the unstaged area.
    @_documentation(visibility: public)
    open func _unstageFile (filePath: String) {
    }
    
    /// Discards the changes made in a file present at `filePath`.
    @_documentation(visibility: public)
    open func _discardFile (filePath: String) {
    }
    
    /// Commits the currently staged changes and applies the commit `msg` to the resulting commit.
    @_documentation(visibility: public)
    open func _commit (msg: String) {
    }
    
    /// Returns an array of ``GDictionary`` items (see ``createDiffFile(newFile:oldFile:)``, ``createDiffHunk(oldStart:newStart:oldLines:newLines:)``, ``createDiffLine(newLineNo:oldLineNo:content:status:)``, ``addLineDiffsIntoDiffHunk(_:lineDiffs:)`` and ``addDiffHunksIntoDiffFile(_:diffHunks:)``), each containing information about a diff. If `identifier` is a file path, returns a file diff, and if it is a commit identifier, then returns a commit diff.
    @_documentation(visibility: public)
    open func _getDiff (identifier: String, area: Int32)-> VariantCollection<GDictionary> {
        return VariantCollection<GDictionary>()
    }
    
    /// Shuts down VCS plugin instance. Called when the user either closes the editor or shuts down the VCS plugin through the editor UI.
    @_documentation(visibility: public)
    open func _shutDown ()-> Bool {
        return false
    }
    
    /// Returns the name of the underlying VCS provider.
    @_documentation(visibility: public)
    open func _getVcsName ()-> String {
        return String ()
    }
    
    /// Returns an ``GArray`` of ``GDictionary`` items (see ``createCommit(msg:author:id:unixTimestamp:offsetMinutes:)``), each containing the data for a past commit.
    @_documentation(visibility: public)
    open func _getPreviousCommits (maxCommits: Int32)-> VariantCollection<GDictionary> {
        return VariantCollection<GDictionary>()
    }
    
    /// Gets an instance of an ``GArray`` of ``String``s containing available branch names in the VCS.
    @_documentation(visibility: public)
    open func _getBranchList ()-> VariantCollection<String> {
        return VariantCollection<String>()
    }
    
    /// Returns an ``GArray`` of ``String``s, each containing the name of a remote configured in the VCS.
    @_documentation(visibility: public)
    open func _getRemotes ()-> VariantCollection<String> {
        return VariantCollection<String>()
    }
    
    /// Creates a new branch named `branchName` in the VCS.
    @_documentation(visibility: public)
    open func _createBranch (branchName: String) {
    }
    
    /// Remove a branch from the local VCS.
    @_documentation(visibility: public)
    open func _removeBranch (branchName: String) {
    }
    
    /// Creates a new remote destination with name `remoteName` and points it to `remoteUrl`. This can be an HTTPS remote or an SSH remote.
    @_documentation(visibility: public)
    open func _createRemote (remoteName: String, remoteUrl: String) {
    }
    
    /// Remove a remote from the local VCS.
    @_documentation(visibility: public)
    open func _removeRemote (remoteName: String) {
    }
    
    /// Gets the current branch name defined in the VCS.
    @_documentation(visibility: public)
    open func _getCurrentBranchName ()-> String {
        return String ()
    }
    
    /// Checks out a `branchName` in the VCS.
    @_documentation(visibility: public)
    open func _checkoutBranch (branchName: String)-> Bool {
        return false
    }
    
    /// Pulls changes from the remote. This can give rise to merge conflicts.
    @_documentation(visibility: public)
    open func _pull (remote: String) {
    }
    
    /// Pushes changes to the `remote`. If `force` is `true`, a force push will override the change history already present on the remote.
    @_documentation(visibility: public)
    open func _push (remote: String, force: Bool) {
    }
    
    /// Fetches new changes from the `remote`, but doesn't write changes to the current working directory. Equivalent to `git fetch`.
    @_documentation(visibility: public)
    open func _fetch (remote: String) {
    }
    
    /// Returns an ``GArray`` of ``GDictionary`` items (see ``createDiffHunk(oldStart:newStart:oldLines:newLines:)``), each containing a line diff between a file at `filePath` and the `text` which is passed in.
    @_documentation(visibility: public)
    open func _getLineDiff (filePath: String, text: String)-> VariantCollection<GDictionary> {
        return VariantCollection<GDictionary>()
    }
    
    fileprivate static var method_create_diff_line: GDExtensionMethodBindPtr = {
        let methodName = StringName ("create_diff_line")
        return withUnsafePointer (to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2901184053)!
            }
            
        }
        
    }()
    
    /// Helper function to create a ``GDictionary`` for storing a line diff. `newLineNo` is the line number in the new file (can be `-1` if the line is deleted). `oldLineNo` is the line number in the old file (can be `-1` if the line is added). `content` is the diff text. `status` is a single character string which stores the line origin.
    public final func createDiffLine (newLineNo: Int32, oldLineNo: Int32, content: String, status: String)-> GDictionary {
        let _result: GDictionary = GDictionary ()
        #if true
        
        var copy_new_line_no: Int = Int (newLineNo)
        var copy_old_line_no: Int = Int (oldLineNo)
        let gstr_content = GString (content)
        let gstr_status = GString (status)
        
        gi.object_method_bind_ptrcall_v (EditorVCSInterface.method_create_diff_line, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_new_line_no, &copy_old_line_no, &gstr_content.content, &gstr_status.content)
        return _result
        #else
        
        var copy_new_line_no: Int = Int (newLineNo)
        var copy_old_line_no: Int = Int (oldLineNo)
        let gstr_content = GString (content)
        let gstr_status = GString (status)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_new_line_no) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_old_line_no) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &gstr_content.content) { p2 in
                    _args.append (p2)
                    return withUnsafePointer (to: &gstr_status.content) { p3 in
                        _args.append (p3)
        
                        gi.object_method_bind_ptrcall (EditorVCSInterface.method_create_diff_line, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
                        return _result
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_create_diff_hunk: GDExtensionMethodBindPtr = {
        let methodName = StringName ("create_diff_hunk")
        return withUnsafePointer (to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3784842090)!
            }
            
        }
        
    }()
    
    /// Helper function to create a ``GDictionary`` for storing diff hunk data. `oldStart` is the starting line number in old file. `newStart` is the starting line number in new file. `oldLines` is the number of lines in the old file. `newLines` is the number of lines in the new file.
    public final func createDiffHunk (oldStart: Int32, newStart: Int32, oldLines: Int32, newLines: Int32)-> GDictionary {
        let _result: GDictionary = GDictionary ()
        #if true
        
        var copy_old_start: Int = Int (oldStart)
        var copy_new_start: Int = Int (newStart)
        var copy_old_lines: Int = Int (oldLines)
        var copy_new_lines: Int = Int (newLines)
        
        gi.object_method_bind_ptrcall_v (EditorVCSInterface.method_create_diff_hunk, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_old_start, &copy_new_start, &copy_old_lines, &copy_new_lines)
        return _result
        #else
        
        var copy_old_start: Int = Int (oldStart)
        var copy_new_start: Int = Int (newStart)
        var copy_old_lines: Int = Int (oldLines)
        var copy_new_lines: Int = Int (newLines)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_old_start) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_new_start) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &copy_old_lines) { p2 in
                    _args.append (p2)
                    return withUnsafePointer (to: &copy_new_lines) { p3 in
                        _args.append (p3)
        
                        gi.object_method_bind_ptrcall (EditorVCSInterface.method_create_diff_hunk, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
                        return _result
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_create_diff_file: GDExtensionMethodBindPtr = {
        let methodName = StringName ("create_diff_file")
        return withUnsafePointer (to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2723227684)!
            }
            
        }
        
    }()
    
    /// Helper function to create a ``GDictionary`` for storing old and new diff file paths.
    public final func createDiffFile (newFile: String, oldFile: String)-> GDictionary {
        let _result: GDictionary = GDictionary ()
        #if true
        
        let gstr_new_file = GString (newFile)
        let gstr_old_file = GString (oldFile)
        
        gi.object_method_bind_ptrcall_v (EditorVCSInterface.method_create_diff_file, UnsafeMutableRawPointer (mutating: handle), &_result.content, &gstr_new_file.content, &gstr_old_file.content)
        return _result
        #else
        
        let gstr_new_file = GString (newFile)
        let gstr_old_file = GString (oldFile)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_new_file.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &gstr_old_file.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (EditorVCSInterface.method_create_diff_file, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_create_commit: GDExtensionMethodBindPtr = {
        let methodName = StringName ("create_commit")
        return withUnsafePointer (to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1075983584)!
            }
            
        }
        
    }()
    
    /// Helper function to create a commit ``GDictionary`` item. `msg` is the commit message of the commit. `author` is a single human-readable string containing all the author's details, e.g. the email and name configured in the VCS. `id` is the identifier of the commit, in whichever format your VCS may provide an identifier to commits. `unixTimestamp` is the UTC Unix timestamp of when the commit was created. `offsetMinutes` is the timezone offset in minutes, recorded from the system timezone where the commit was created.
    public final func createCommit (msg: String, author: String, id: String, unixTimestamp: Int, offsetMinutes: Int)-> GDictionary {
        let _result: GDictionary = GDictionary ()
        #if true
        
        let gstr_msg = GString (msg)
        let gstr_author = GString (author)
        let gstr_id = GString (id)
        var copy_unix_timestamp = unixTimestamp
        var copy_offset_minutes = offsetMinutes
        
        gi.object_method_bind_ptrcall_v (EditorVCSInterface.method_create_commit, UnsafeMutableRawPointer (mutating: handle), &_result.content, &gstr_msg.content, &gstr_author.content, &gstr_id.content, &copy_unix_timestamp, &copy_offset_minutes)
        return _result
        #else
        
        let gstr_msg = GString (msg)
        let gstr_author = GString (author)
        let gstr_id = GString (id)
        var copy_unix_timestamp = unixTimestamp
        var copy_offset_minutes = offsetMinutes
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_msg.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &gstr_author.content) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &gstr_id.content) { p2 in
                    _args.append (p2)
                    return withUnsafePointer (to: &copy_unix_timestamp) { p3 in
                        _args.append (p3)
                        return withUnsafePointer (to: &copy_offset_minutes) { p4 in
                            _args.append (p4)
        
                            gi.object_method_bind_ptrcall (EditorVCSInterface.method_create_commit, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
                            return _result
                        }
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_create_status_file: GDExtensionMethodBindPtr = {
        let methodName = StringName ("create_status_file")
        return withUnsafePointer (to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1083471673)!
            }
            
        }
        
    }()
    
    /// Helper function to create a ``GDictionary`` used by editor to read the status of a file.
    public final func createStatusFile (filePath: String, changeType: EditorVCSInterface.ChangeType, area: EditorVCSInterface.TreeArea)-> GDictionary {
        let _result: GDictionary = GDictionary ()
        #if true
        
        let gstr_file_path = GString (filePath)
        var copy_change_type = Int64 (changeType.rawValue)
        var copy_area = Int64 (area.rawValue)
        
        gi.object_method_bind_ptrcall_v (EditorVCSInterface.method_create_status_file, UnsafeMutableRawPointer (mutating: handle), &_result.content, &gstr_file_path.content, &copy_change_type, &copy_area)
        return _result
        #else
        
        let gstr_file_path = GString (filePath)
        var copy_change_type = Int64 (changeType.rawValue)
        var copy_area = Int64 (area.rawValue)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_file_path.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_change_type) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &copy_area) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (EditorVCSInterface.method_create_status_file, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
                    return _result
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_add_diff_hunks_into_diff_file: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_diff_hunks_into_diff_file")
        return withUnsafePointer (to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4015243225)!
            }
            
        }
        
    }()
    
    /// Helper function to add an array of `diffHunks` into a `diffFile`.
    public final func addDiffHunksIntoDiffFile (_ diffFile: GDictionary, diffHunks: VariantCollection<GDictionary>)-> GDictionary {
        let _result: GDictionary = GDictionary ()
        #if true
        
        
        gi.object_method_bind_ptrcall_v (EditorVCSInterface.method_add_diff_hunks_into_diff_file, UnsafeMutableRawPointer (mutating: handle), &_result.content, &diffFile.content, &diffHunks.array.content)
        return _result
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &diffFile.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &diffHunks.array.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (EditorVCSInterface.method_add_diff_hunks_into_diff_file, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_add_line_diffs_into_diff_hunk: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_line_diffs_into_diff_hunk")
        return withUnsafePointer (to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4015243225)!
            }
            
        }
        
    }()
    
    /// Helper function to add an array of `lineDiffs` into a `diffHunk`.
    public final func addLineDiffsIntoDiffHunk (_ diffHunk: GDictionary, lineDiffs: VariantCollection<GDictionary>)-> GDictionary {
        let _result: GDictionary = GDictionary ()
        #if true
        
        
        gi.object_method_bind_ptrcall_v (EditorVCSInterface.method_add_line_diffs_into_diff_hunk, UnsafeMutableRawPointer (mutating: handle), &_result.content, &diffHunk.content, &lineDiffs.array.content)
        return _result
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &diffHunk.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &lineDiffs.array.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (EditorVCSInterface.method_add_line_diffs_into_diff_hunk, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_popup_error: GDExtensionMethodBindPtr = {
        let methodName = StringName ("popup_error")
        return withUnsafePointer (to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Pops up an error message in the editor which is shown as coming from the underlying VCS. Use this to show VCS specific error messages.
    public final func popupError (msg: String) {
        #if true
        
        let gstr_msg = GString (msg)
        
        gi.object_method_bind_ptrcall_v (EditorVCSInterface.method_popup_error, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_msg.content)
        
        #else
        
        let gstr_msg = GString (msg)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_msg.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (EditorVCSInterface.method_popup_error, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_checkout_branch":
                return _EditorVCSInterface_proxy_checkout_branch
            case "_commit":
                return _EditorVCSInterface_proxy_commit
            case "_create_branch":
                return _EditorVCSInterface_proxy_create_branch
            case "_create_remote":
                return _EditorVCSInterface_proxy_create_remote
            case "_discard_file":
                return _EditorVCSInterface_proxy_discard_file
            case "_fetch":
                return _EditorVCSInterface_proxy_fetch
            case "_get_branch_list":
                return _EditorVCSInterface_proxy_get_branch_list
            case "_get_current_branch_name":
                return _EditorVCSInterface_proxy_get_current_branch_name
            case "_get_diff":
                return _EditorVCSInterface_proxy_get_diff
            case "_get_line_diff":
                return _EditorVCSInterface_proxy_get_line_diff
            case "_get_modified_files_data":
                return _EditorVCSInterface_proxy_get_modified_files_data
            case "_get_previous_commits":
                return _EditorVCSInterface_proxy_get_previous_commits
            case "_get_remotes":
                return _EditorVCSInterface_proxy_get_remotes
            case "_get_vcs_name":
                return _EditorVCSInterface_proxy_get_vcs_name
            case "_initialize":
                return _EditorVCSInterface_proxy_initialize
            case "_pull":
                return _EditorVCSInterface_proxy_pull
            case "_push":
                return _EditorVCSInterface_proxy_push
            case "_remove_branch":
                return _EditorVCSInterface_proxy_remove_branch
            case "_remove_remote":
                return _EditorVCSInterface_proxy_remove_remote
            case "_set_credentials":
                return _EditorVCSInterface_proxy_set_credentials
            case "_shut_down":
                return _EditorVCSInterface_proxy_shut_down
            case "_stage_file":
                return _EditorVCSInterface_proxy_stage_file
            case "_unstage_file":
                return _EditorVCSInterface_proxy_unstage_file
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _EditorVCSInterface_proxy_checkout_branch (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorVCSInterface>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._checkoutBranch (branchName: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorVCSInterface_proxy_commit (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorVCSInterface>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._commit (msg: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
}

func _EditorVCSInterface_proxy_create_branch (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorVCSInterface>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._createBranch (branchName: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
}

func _EditorVCSInterface_proxy_create_remote (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorVCSInterface>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._createRemote (remoteName: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", remoteUrl: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
}

func _EditorVCSInterface_proxy_discard_file (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorVCSInterface>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._discardFile (filePath: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
}

func _EditorVCSInterface_proxy_fetch (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorVCSInterface>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._fetch (remote: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
}

func _EditorVCSInterface_proxy_get_branch_list (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<EditorVCSInterface>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getBranchList ()
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::String
}

func _EditorVCSInterface_proxy_get_current_branch_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<EditorVCSInterface>.fromOpaque(instance).takeUnretainedValue()
    let ret = GString (swiftObject._getCurrentBranchName ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorVCSInterface_proxy_get_diff (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorVCSInterface>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getDiff (identifier: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", area: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Dictionary
}

func _EditorVCSInterface_proxy_get_line_diff (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorVCSInterface>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getLineDiff (filePath: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", text: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Dictionary
}

func _EditorVCSInterface_proxy_get_modified_files_data (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<EditorVCSInterface>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getModifiedFilesData ()
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Dictionary
}

func _EditorVCSInterface_proxy_get_previous_commits (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorVCSInterface>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getPreviousCommits (maxCommits: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Dictionary
}

func _EditorVCSInterface_proxy_get_remotes (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<EditorVCSInterface>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getRemotes ()
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::String
}

func _EditorVCSInterface_proxy_get_vcs_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<EditorVCSInterface>.fromOpaque(instance).takeUnretainedValue()
    let ret = GString (swiftObject._getVcsName ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorVCSInterface_proxy_initialize (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorVCSInterface>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._initialize (projectPath: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorVCSInterface_proxy_pull (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorVCSInterface>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._pull (remote: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
}

func _EditorVCSInterface_proxy_push (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorVCSInterface>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._push (remote: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", force: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _EditorVCSInterface_proxy_remove_branch (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorVCSInterface>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._removeBranch (branchName: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
}

func _EditorVCSInterface_proxy_remove_remote (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorVCSInterface>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._removeRemote (remoteName: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
}

func _EditorVCSInterface_proxy_set_credentials (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorVCSInterface>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._setCredentials (username: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", password: GString.stringFromGStringPtr (ptr: args [1]!) ?? "", sshPublicKeyPath: GString.stringFromGStringPtr (ptr: args [2]!) ?? "", sshPrivateKeyPath: GString.stringFromGStringPtr (ptr: args [3]!) ?? "", sshPassphrase: GString.stringFromGStringPtr (ptr: args [4]!) ?? "")
}

func _EditorVCSInterface_proxy_shut_down (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<EditorVCSInterface>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._shutDown ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorVCSInterface_proxy_stage_file (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorVCSInterface>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._stageFile (filePath: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
}

func _EditorVCSInterface_proxy_unstage_file (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<EditorVCSInterface>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._unstageFile (filePath: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
}

