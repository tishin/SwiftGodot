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


/// Provides a high-level interface for implementing undo and redo operations.
/// 
/// UndoRedo works by registering methods and property changes inside "actions". You can create an action, then provide ways to do and undo this action using function calls and property changes, then commit the action.
/// 
/// When an action is committed, all of the `do_*` methods will run. If the ``undo()`` method is used, the `undo_*` methods will run. If the ``redo()`` method is used, once again, all of the `do_*` methods will run.
/// 
/// Here's an example on how to add an action:
/// 
/// Before calling any of the `add_(un)do_*` methods, you need to first call ``createAction(name:mergeMode:backwardUndoOps:)``. Afterwards you need to call ``commitAction(execute:)``.
/// 
/// If you don't need to register a method, you can leave ``addDoMethod(callable:)`` and ``addUndoMethod(callable:)`` out; the same goes for properties. You can also register more than one method/property.
/// 
/// If you are making an ``EditorPlugin`` and want to integrate into the editor's undo history, use ``EditorUndoRedoManager`` instead.
/// 
/// If you are registering multiple properties/method which depend on one another, be aware that by default undo operation are called in the same order they have been added. Therefore instead of grouping do operation with their undo operations it is better to group do on one side and undo on the other as shown below.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``versionChanged``
open class UndoRedo: Object {
    private static var className = StringName("UndoRedo")
    override open class var godotClassName: StringName { className }
    public enum MergeMode: Int64, CaseIterable {
        /// Makes "do"/"undo" operations stay in separate actions.
        case disable = 0 // MERGE_DISABLE
        /// Merges this action with the previous one if they have the same name. Keeps only the first action's "undo" operations and the last action's "do" operations. Useful for sequential changes to a single value.
        case ends = 1 // MERGE_ENDS
        /// Merges this action with the previous one if they have the same name.
        case all = 2 // MERGE_ALL
    }
    
    
    /* Properties */
    
    /// The maximum number of steps that can be stored in the undo/redo history. If the number of stored steps exceeds this limit, older steps are removed from history and can no longer be reached by calling ``undo()``. A value of `0` or lower means no limit.
    final public var maxSteps: Int32 {
        get {
            return get_max_steps ()
        }
        
        set {
            set_max_steps (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_create_action: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_action")
        return withUnsafePointer(to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3171901514)!
            }
            
        }
        
    }()
    
    /// Create a new action. After this is called, do all your calls to ``addDoMethod(callable:)``, ``addUndoMethod(callable:)``, ``addDoProperty(object:property:value:)``, and ``addUndoProperty(object:property:value:)``, then commit the action with ``commitAction(execute:)``.
    /// 
    /// The way actions are merged is dictated by `mergeMode`. See ``UndoRedo/MergeMode`` for details.
    /// 
    /// The way undo operation are ordered in actions is dictated by `backwardUndoOps`. When `backwardUndoOps` is `false` undo option are ordered in the same order they were added. Which means the first operation to be added will be the first to be undone.
    /// 
    public final func createAction(name: String, mergeMode: UndoRedo.MergeMode = .disable, backwardUndoOps: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: mergeMode.rawValue) { pArg1 in
                withUnsafePointer(to: backwardUndoOps) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(UndoRedo.method_create_action, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_commit_action: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("commit_action")
        return withUnsafePointer(to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3216645846)!
            }
            
        }
        
    }()
    
    /// Commit the action. If `execute` is `true` (which it is by default), all "do" methods/properties are called/set when this function is called.
    public final func commitAction(execute: Bool = true) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: execute) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(UndoRedo.method_commit_action, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_committing_action: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_committing_action")
        return withUnsafePointer(to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the ``UndoRedo`` is currently committing the action, i.e. running its "do" method or property change (see ``commitAction(execute:)``).
    public final func isCommittingAction() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(UndoRedo.method_is_committing_action, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_add_do_method: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_do_method")
        return withUnsafePointer(to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1611583062)!
            }
            
        }
        
    }()
    
    /// Register a ``Callable`` that will be called when the action is committed.
    public final func addDoMethod(callable: Callable) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: callable.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(UndoRedo.method_add_do_method, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_undo_method: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_undo_method")
        return withUnsafePointer(to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1611583062)!
            }
            
        }
        
    }()
    
    /// Register a ``Callable`` that will be called when the action is undone.
    public final func addUndoMethod(callable: Callable) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: callable.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(UndoRedo.method_add_undo_method, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_do_property: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_do_property")
        return withUnsafePointer(to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1017172818)!
            }
            
        }
        
    }()
    
    /// Register a `property` that would change its value to `value` when the action is committed.
    public final func addDoProperty(object: Object?, property: StringName, value: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: object?.handle) { pArg0 in
            withUnsafePointer(to: property.content) { pArg1 in
                withUnsafePointer(to: value.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(UndoRedo.method_add_do_property, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_undo_property: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_undo_property")
        return withUnsafePointer(to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1017172818)!
            }
            
        }
        
    }()
    
    /// Register a `property` that would change its value to `value` when the action is undone.
    public final func addUndoProperty(object: Object?, property: StringName, value: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: object?.handle) { pArg0 in
            withUnsafePointer(to: property.content) { pArg1 in
                withUnsafePointer(to: value.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(UndoRedo.method_add_undo_property, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_do_reference: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_do_reference")
        return withUnsafePointer(to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3975164845)!
            }
            
        }
        
    }()
    
    /// Register a reference to an object that will be erased if the "do" history is deleted. This is useful for objects added by the "do" action and removed by the "undo" action.
    /// 
    /// When the "do" history is deleted, if the object is a ``RefCounted``, it will be unreferenced. Otherwise, it will be freed. Do not use for resources.
    /// 
    public final func addDoReference(object: Object?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: object?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(UndoRedo.method_add_do_reference, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_undo_reference: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_undo_reference")
        return withUnsafePointer(to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3975164845)!
            }
            
        }
        
    }()
    
    /// Register a reference to an object that will be erased if the "undo" history is deleted. This is useful for objects added by the "undo" action and removed by the "do" action.
    /// 
    /// When the "undo" history is deleted, if the object is a ``RefCounted``, it will be unreferenced. Otherwise, it will be freed. Do not use for resources.
    /// 
    public final func addUndoReference(object: Object?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: object?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(UndoRedo.method_add_undo_reference, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_start_force_keep_in_merge_ends: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("start_force_keep_in_merge_ends")
        return withUnsafePointer(to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Marks the next "do" and "undo" operations to be processed even if the action gets merged with another in the ``MergeMode/ends`` mode. Return to normal operation using ``endForceKeepInMergeEnds()``.
    public final func startForceKeepInMergeEnds() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(UndoRedo.method_start_force_keep_in_merge_ends, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_end_force_keep_in_merge_ends: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("end_force_keep_in_merge_ends")
        return withUnsafePointer(to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Stops marking operations as to be processed even if the action gets merged with another in the ``MergeMode/ends`` mode. See ``startForceKeepInMergeEnds()``.
    public final func endForceKeepInMergeEnds() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(UndoRedo.method_end_force_keep_in_merge_ends, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_get_history_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_history_count")
        return withUnsafePointer(to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Returns how many elements are in the history.
    public final func getHistoryCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(UndoRedo.method_get_history_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_current_action: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_current_action")
        return withUnsafePointer(to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Gets the index of the current action.
    public final func getCurrentAction() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(UndoRedo.method_get_current_action, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_action_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_action_name")
        return withUnsafePointer(to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 990163283)!
            }
            
        }
        
    }()
    
    /// Gets the action name from its index.
    public final func getActionName(id: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(UndoRedo.method_get_action_name, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_clear_history: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_history")
        return withUnsafePointer(to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3216645846)!
            }
            
        }
        
    }()
    
    /// Clear the undo/redo history and associated references.
    /// 
    /// Passing `false` to `increaseVersion` will prevent the version number from increasing when the history is cleared.
    /// 
    public final func clearHistory(increaseVersion: Bool = true) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: increaseVersion) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(UndoRedo.method_clear_history, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_current_action_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_current_action_name")
        return withUnsafePointer(to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Gets the name of the current action, equivalent to `get_action_name(get_current_action())`.
    public final func getCurrentActionName() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(UndoRedo.method_get_current_action_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_has_undo: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_undo")
        return withUnsafePointer(to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if an "undo" action is available.
    public final func hasUndo() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(UndoRedo.method_has_undo, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_has_redo: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_redo")
        return withUnsafePointer(to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if a "redo" action is available.
    public final func hasRedo() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(UndoRedo.method_has_redo, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_version: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_version")
        return withUnsafePointer(to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Gets the version. Every time a new action is committed, the ``UndoRedo``'s version number is increased automatically.
    /// 
    /// This is useful mostly to check if something changed from a saved version.
    /// 
    public final func getVersion() -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        gi.object_method_bind_ptrcall(UndoRedo.method_get_version, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_max_steps: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_max_steps")
        return withUnsafePointer(to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_steps(_ maxSteps: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: maxSteps) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(UndoRedo.method_set_max_steps, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_max_steps: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_max_steps")
        return withUnsafePointer(to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_steps() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(UndoRedo.method_get_max_steps, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_redo: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("redo")
        return withUnsafePointer(to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Redo the last action.
    public final func redo() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(UndoRedo.method_redo, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_undo: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("undo")
        return withUnsafePointer(to: &UndoRedo.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Undo the last action.
    public final func undo() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(UndoRedo.method_undo, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    // Signals 
    /// Called when ``undo()`` or ``redo()`` was called.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.versionChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var versionChanged: SimpleSignal { SimpleSignal (target: self, signalName: "version_changed") }
    
}

