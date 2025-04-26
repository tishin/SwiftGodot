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


/// Version Control System (VCS) interface, which reads and writes to the local VCS in use.
/// 
/// Defines the API that the editor uses to extract information from the underlying VCS. The implementation of this API is included in VCS plugins, which are GDExtension plugins that inherit ``EditorVCSInterface`` and are attached (on demand) to the singleton instance of ``EditorVCSInterface``. Instead of performing the task themselves, all the virtual functions listed below are calling the internally overridden functions in the VCS plugins to provide a plug-n-play experience. A custom VCS plugin is supposed to inherit from ``EditorVCSInterface`` and override each of these virtual functions.
open class EditorVCSInterface: Object {
    private static var className = StringName("EditorVCSInterface")
    override open class var godotClassName: StringName { className }
    public enum ChangeType: Int64, CaseIterable {
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
    }
    
    public enum TreeArea: Int64, CaseIterable {
        /// A commit is encountered from the commit area.
        case commit = 0 // TREE_AREA_COMMIT
        /// A file is encountered from the staged area.
        case staged = 1 // TREE_AREA_STAGED
        /// A file is encountered from the unstaged area.
        case unstaged = 2 // TREE_AREA_UNSTAGED
    }
    
    /* Methods */
    fileprivate static let method__initialize: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_initialize")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2323990056)!
            }
            
        }
        
    }()
    
    /// Initializes the VCS plugin when called from the editor. Returns whether or not the plugin was successfully initialized. A VCS project is initialized at `projectPath`.
    @_documentation(visibility: public)
    open func _initialize(projectPath: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let projectPath = GString(projectPath)
        withUnsafePointer(to: projectPath.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorVCSInterface.method__initialize, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__set_credentials: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_credentials")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1336744649)!
            }
            
        }
        
    }()
    
    /// Set user credentials in the underlying VCS. `username` and `password` are used only during HTTPS authentication unless not already mentioned in the remote URL. `sshPublicKeyPath`, `sshPrivateKeyPath`, and `sshPassphrase` are only used during SSH authentication.
    @_documentation(visibility: public)
    open func _setCredentials(username: String, password: String, sshPublicKeyPath: String, sshPrivateKeyPath: String, sshPassphrase: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let username = GString(username)
        withUnsafePointer(to: username.content) { pArg0 in
            let password = GString(password)
            withUnsafePointer(to: password.content) { pArg1 in
                let sshPublicKeyPath = GString(sshPublicKeyPath)
                withUnsafePointer(to: sshPublicKeyPath.content) { pArg2 in
                    let sshPrivateKeyPath = GString(sshPrivateKeyPath)
                    withUnsafePointer(to: sshPrivateKeyPath.content) { pArg3 in
                        let sshPassphrase = GString(sshPassphrase)
                        withUnsafePointer(to: sshPassphrase.content) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(EditorVCSInterface.method__set_credentials, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_modified_files_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_modified_files_data")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Returns an ``VariantArray`` of ``VariantDictionary`` items (see ``createStatusFile(filePath:changeType:area:)``), each containing the status data of every modified file in the project folder.
    @_documentation(visibility: public)
    open func _getModifiedFilesData() -> TypedArray<VariantDictionary> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(EditorVCSInterface.method__get_modified_files_data, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method__stage_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_stage_file")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Stages the file present at `filePath` to the staged area.
    @_documentation(visibility: public)
    open func _stageFile(filePath: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let filePath = GString(filePath)
        withUnsafePointer(to: filePath.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorVCSInterface.method__stage_file, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__unstage_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_unstage_file")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Unstages the file present at `filePath` from the staged area to the unstaged area.
    @_documentation(visibility: public)
    open func _unstageFile(filePath: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let filePath = GString(filePath)
        withUnsafePointer(to: filePath.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorVCSInterface.method__unstage_file, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__discard_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_discard_file")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Discards the changes made in a file present at `filePath`.
    @_documentation(visibility: public)
    open func _discardFile(filePath: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let filePath = GString(filePath)
        withUnsafePointer(to: filePath.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorVCSInterface.method__discard_file, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__commit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_commit")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Commits the currently staged changes and applies the commit `msg` to the resulting commit.
    @_documentation(visibility: public)
    open func _commit(msg: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let msg = GString(msg)
        withUnsafePointer(to: msg.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorVCSInterface.method__commit, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_diff: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_diff")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1366379175)!
            }
            
        }
        
    }()
    
    /// Returns an array of ``VariantDictionary`` items (see ``createDiffFile(newFile:oldFile:)``, ``createDiffHunk(oldStart:newStart:oldLines:newLines:)``, ``createDiffLine(newLineNo:oldLineNo:content:status:)``, ``addLineDiffsIntoDiffHunk(_:lineDiffs:)`` and ``addDiffHunksIntoDiffFile(_:diffHunks:)``), each containing information about a diff. If `identifier` is a file path, returns a file diff, and if it is a commit identifier, then returns a commit diff.
    @_documentation(visibility: public)
    open func _getDiff(identifier: String, area: Int32) -> TypedArray<VariantDictionary> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        let identifier = GString(identifier)
        withUnsafePointer(to: identifier.content) { pArg0 in
            withUnsafePointer(to: area) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorVCSInterface.method__get_diff, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method__shut_down: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shut_down")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Shuts down VCS plugin instance. Called when the user either closes the editor or shuts down the VCS plugin through the editor UI.
    @_documentation(visibility: public)
    open func _shutDown() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorVCSInterface.method__shut_down, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_vcs_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_vcs_name")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2841200299)!
            }
            
        }
        
    }()
    
    /// Returns the name of the underlying VCS provider.
    @_documentation(visibility: public)
    open func _getVcsName() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorVCSInterface.method__get_vcs_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__get_previous_commits: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_previous_commits")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1171824711)!
            }
            
        }
        
    }()
    
    /// Returns an ``VariantArray`` of ``VariantDictionary`` items (see ``createCommit(msg:author:id:unixTimestamp:offsetMinutes:)``), each containing the data for a past commit.
    @_documentation(visibility: public)
    open func _getPreviousCommits(maxCommits: Int32) -> TypedArray<VariantDictionary> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        withUnsafePointer(to: maxCommits) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorVCSInterface.method__get_previous_commits, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method__get_branch_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_branch_list")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Gets an instance of an ``VariantArray`` of ``String``s containing available branch names in the VCS.
    @_documentation(visibility: public)
    open func _getBranchList() -> TypedArray<String> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(EditorVCSInterface.method__get_branch_list, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<String>(takingOver: _result)
    }
    
    fileprivate static let method__get_remotes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_remotes")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Returns an ``VariantArray`` of ``String``s, each containing the name of a remote configured in the VCS.
    @_documentation(visibility: public)
    open func _getRemotes() -> TypedArray<String> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(EditorVCSInterface.method__get_remotes, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<String>(takingOver: _result)
    }
    
    fileprivate static let method__create_branch: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_create_branch")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Creates a new branch named `branchName` in the VCS.
    @_documentation(visibility: public)
    open func _createBranch(branchName: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let branchName = GString(branchName)
        withUnsafePointer(to: branchName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorVCSInterface.method__create_branch, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__remove_branch: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_remove_branch")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Remove a branch from the local VCS.
    @_documentation(visibility: public)
    open func _removeBranch(branchName: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let branchName = GString(branchName)
        withUnsafePointer(to: branchName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorVCSInterface.method__remove_branch, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__create_remote: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_create_remote")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3186203200)!
            }
            
        }
        
    }()
    
    /// Creates a new remote destination with name `remoteName` and points it to `remoteUrl`. This can be an HTTPS remote or an SSH remote.
    @_documentation(visibility: public)
    open func _createRemote(remoteName: String, remoteUrl: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let remoteName = GString(remoteName)
        withUnsafePointer(to: remoteName.content) { pArg0 in
            let remoteUrl = GString(remoteUrl)
            withUnsafePointer(to: remoteUrl.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorVCSInterface.method__create_remote, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__remove_remote: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_remove_remote")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Remove a remote from the local VCS.
    @_documentation(visibility: public)
    open func _removeRemote(remoteName: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let remoteName = GString(remoteName)
        withUnsafePointer(to: remoteName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorVCSInterface.method__remove_remote, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_current_branch_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_current_branch_name")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2841200299)!
            }
            
        }
        
    }()
    
    /// Gets the current branch name defined in the VCS.
    @_documentation(visibility: public)
    open func _getCurrentBranchName() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(EditorVCSInterface.method__get_current_branch_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__checkout_branch: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_checkout_branch")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2323990056)!
            }
            
        }
        
    }()
    
    /// Checks out a `branchName` in the VCS.
    @_documentation(visibility: public)
    open func _checkoutBranch(branchName: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let branchName = GString(branchName)
        withUnsafePointer(to: branchName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorVCSInterface.method__checkout_branch, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__pull: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_pull")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Pulls changes from the remote. This can give rise to merge conflicts.
    @_documentation(visibility: public)
    open func _pull(remote: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let remote = GString(remote)
        withUnsafePointer(to: remote.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorVCSInterface.method__pull, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__push: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_push")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2678287736)!
            }
            
        }
        
    }()
    
    /// Pushes changes to the `remote`. If `force` is `true`, a force push will override the change history already present on the remote.
    @_documentation(visibility: public)
    open func _push(remote: String, force: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let remote = GString(remote)
        withUnsafePointer(to: remote.content) { pArg0 in
            withUnsafePointer(to: force) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorVCSInterface.method__push, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__fetch: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_fetch")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Fetches new changes from the `remote`, but doesn't write changes to the current working directory. Equivalent to `git fetch`.
    @_documentation(visibility: public)
    open func _fetch(remote: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let remote = GString(remote)
        withUnsafePointer(to: remote.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorVCSInterface.method__fetch, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_line_diff: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_line_diff")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2796572089)!
            }
            
        }
        
    }()
    
    /// Returns an ``VariantArray`` of ``VariantDictionary`` items (see ``createDiffHunk(oldStart:newStart:oldLines:newLines:)``), each containing a line diff between a file at `filePath` and the `text` which is passed in.
    @_documentation(visibility: public)
    open func _getLineDiff(filePath: String, text: String) -> TypedArray<VariantDictionary> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        let filePath = GString(filePath)
        withUnsafePointer(to: filePath.content) { pArg0 in
            let text = GString(text)
            withUnsafePointer(to: text.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorVCSInterface.method__get_line_diff, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method_create_diff_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_diff_line")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2901184053)!
            }
            
        }
        
    }()
    
    /// Helper function to create a ``VariantDictionary`` for storing a line diff. `newLineNo` is the line number in the new file (can be `-1` if the line is deleted). `oldLineNo` is the line number in the old file (can be `-1` if the line is added). `content` is the diff text. `status` is a single character string which stores the line origin.
    public final func createDiffLine(newLineNo: Int32, oldLineNo: Int32, content: String, status: String) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: newLineNo) { pArg0 in
            withUnsafePointer(to: oldLineNo) { pArg1 in
                let content = GString(content)
                withUnsafePointer(to: content.content) { pArg2 in
                    let status = GString(status)
                    withUnsafePointer(to: status.content) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(EditorVCSInterface.method_create_diff_line, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_create_diff_hunk: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_diff_hunk")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3784842090)!
            }
            
        }
        
    }()
    
    /// Helper function to create a ``VariantDictionary`` for storing diff hunk data. `oldStart` is the starting line number in old file. `newStart` is the starting line number in new file. `oldLines` is the number of lines in the old file. `newLines` is the number of lines in the new file.
    public final func createDiffHunk(oldStart: Int32, newStart: Int32, oldLines: Int32, newLines: Int32) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: oldStart) { pArg0 in
            withUnsafePointer(to: newStart) { pArg1 in
                withUnsafePointer(to: oldLines) { pArg2 in
                    withUnsafePointer(to: newLines) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(EditorVCSInterface.method_create_diff_hunk, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_create_diff_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_diff_file")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2723227684)!
            }
            
        }
        
    }()
    
    /// Helper function to create a ``VariantDictionary`` for storing old and new diff file paths.
    public final func createDiffFile(newFile: String, oldFile: String) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        let newFile = GString(newFile)
        withUnsafePointer(to: newFile.content) { pArg0 in
            let oldFile = GString(oldFile)
            withUnsafePointer(to: oldFile.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorVCSInterface.method_create_diff_file, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_create_commit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_commit")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1075983584)!
            }
            
        }
        
    }()
    
    /// Helper function to create a commit ``VariantDictionary`` item. `msg` is the commit message of the commit. `author` is a single human-readable string containing all the author's details, e.g. the email and name configured in the VCS. `id` is the identifier of the commit, in whichever format your VCS may provide an identifier to commits. `unixTimestamp` is the UTC Unix timestamp of when the commit was created. `offsetMinutes` is the timezone offset in minutes, recorded from the system timezone where the commit was created.
    public final func createCommit(msg: String, author: String, id: String, unixTimestamp: Int, offsetMinutes: Int) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        let msg = GString(msg)
        withUnsafePointer(to: msg.content) { pArg0 in
            let author = GString(author)
            withUnsafePointer(to: author.content) { pArg1 in
                let id = GString(id)
                withUnsafePointer(to: id.content) { pArg2 in
                    withUnsafePointer(to: unixTimestamp) { pArg3 in
                        withUnsafePointer(to: offsetMinutes) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(EditorVCSInterface.method_create_commit, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_create_status_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_status_file")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1083471673)!
            }
            
        }
        
    }()
    
    /// Helper function to create a ``VariantDictionary`` used by editor to read the status of a file.
    public final func createStatusFile(filePath: String, changeType: EditorVCSInterface.ChangeType, area: EditorVCSInterface.TreeArea) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        let filePath = GString(filePath)
        withUnsafePointer(to: filePath.content) { pArg0 in
            withUnsafePointer(to: changeType.rawValue) { pArg1 in
                withUnsafePointer(to: area.rawValue) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorVCSInterface.method_create_status_file, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_add_diff_hunks_into_diff_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_diff_hunks_into_diff_file")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4015243225)!
            }
            
        }
        
    }()
    
    /// Helper function to add an array of `diffHunks` into a `diffFile`.
    public final func addDiffHunksIntoDiffFile(_ diffFile: VariantDictionary, diffHunks: TypedArray<VariantDictionary>) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: diffFile.content) { pArg0 in
            withUnsafePointer(to: diffHunks.array.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorVCSInterface.method_add_diff_hunks_into_diff_file, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_add_line_diffs_into_diff_hunk: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_line_diffs_into_diff_hunk")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4015243225)!
            }
            
        }
        
    }()
    
    /// Helper function to add an array of `lineDiffs` into a `diffHunk`.
    public final func addLineDiffsIntoDiffHunk(_ diffHunk: VariantDictionary, lineDiffs: TypedArray<VariantDictionary>) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: diffHunk.content) { pArg0 in
            withUnsafePointer(to: lineDiffs.array.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorVCSInterface.method_add_line_diffs_into_diff_hunk, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_popup_error: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("popup_error")
        return withUnsafePointer(to: &EditorVCSInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Pops up an error message in the editor which is shown as coming from the underlying VCS. Use this to show VCS specific error messages.
    public final func popupError(msg: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let msg = GString(msg)
        withUnsafePointer(to: msg.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorVCSInterface.method_popup_error, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
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
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorVCSInterface else { return }
    let ret = swiftObject._checkoutBranch (branchName: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorVCSInterface_proxy_commit (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorVCSInterface else { return }
    swiftObject._commit (msg: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
}

func _EditorVCSInterface_proxy_create_branch (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorVCSInterface else { return }
    swiftObject._createBranch (branchName: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
}

func _EditorVCSInterface_proxy_create_remote (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorVCSInterface else { return }
    swiftObject._createRemote (remoteName: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", remoteUrl: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
}

func _EditorVCSInterface_proxy_discard_file (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorVCSInterface else { return }
    swiftObject._discardFile (filePath: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
}

func _EditorVCSInterface_proxy_fetch (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorVCSInterface else { return }
    swiftObject._fetch (remote: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
}

func _EditorVCSInterface_proxy_get_branch_list (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorVCSInterface else { return }
    let ret = swiftObject._getBranchList ()
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::String
}

func _EditorVCSInterface_proxy_get_current_branch_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorVCSInterface else { return }
    let ret = GString (swiftObject._getCurrentBranchName ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorVCSInterface_proxy_get_diff (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorVCSInterface else { return }
    let ret = swiftObject._getDiff (identifier: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", area: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Dictionary
}

func _EditorVCSInterface_proxy_get_line_diff (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorVCSInterface else { return }
    let ret = swiftObject._getLineDiff (filePath: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", text: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Dictionary
}

func _EditorVCSInterface_proxy_get_modified_files_data (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorVCSInterface else { return }
    let ret = swiftObject._getModifiedFilesData ()
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Dictionary
}

func _EditorVCSInterface_proxy_get_previous_commits (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorVCSInterface else { return }
    let ret = swiftObject._getPreviousCommits (maxCommits: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Dictionary
}

func _EditorVCSInterface_proxy_get_remotes (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorVCSInterface else { return }
    let ret = swiftObject._getRemotes ()
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::String
}

func _EditorVCSInterface_proxy_get_vcs_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorVCSInterface else { return }
    let ret = GString (swiftObject._getVcsName ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _EditorVCSInterface_proxy_initialize (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorVCSInterface else { return }
    let ret = swiftObject._initialize (projectPath: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorVCSInterface_proxy_pull (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorVCSInterface else { return }
    swiftObject._pull (remote: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
}

func _EditorVCSInterface_proxy_push (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorVCSInterface else { return }
    swiftObject._push (remote: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", force: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _EditorVCSInterface_proxy_remove_branch (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorVCSInterface else { return }
    swiftObject._removeBranch (branchName: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
}

func _EditorVCSInterface_proxy_remove_remote (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorVCSInterface else { return }
    swiftObject._removeRemote (remoteName: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
}

func _EditorVCSInterface_proxy_set_credentials (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorVCSInterface else { return }
    swiftObject._setCredentials (username: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", password: GString.stringFromGStringPtr (ptr: args [1]!) ?? "", sshPublicKeyPath: GString.stringFromGStringPtr (ptr: args [2]!) ?? "", sshPrivateKeyPath: GString.stringFromGStringPtr (ptr: args [3]!) ?? "", sshPassphrase: GString.stringFromGStringPtr (ptr: args [4]!) ?? "")
}

func _EditorVCSInterface_proxy_shut_down (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorVCSInterface else { return }
    let ret = swiftObject._shutDown ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorVCSInterface_proxy_stage_file (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorVCSInterface else { return }
    swiftObject._stageFile (filePath: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
}

func _EditorVCSInterface_proxy_unstage_file (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorVCSInterface else { return }
    swiftObject._unstageFile (filePath: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
}

