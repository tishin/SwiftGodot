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


/// Base class for serializable objects.
/// 
/// Resource is the base class for all Godot-specific resource types, serving primarily as data containers. Since they inherit from ``RefCounted``, resources are reference-counted and freed when no longer in use. They can also be nested within other resources, and saved on disk. ``PackedScene``, one of the most common ``Object``s in a Godot project, is also a resource, uniquely capable of storing and instantiating the ``Node``s it contains as many times as desired.
/// 
/// In GDScript, resources can loaded from disk by their ``resourcePath`` using ``@GDScript.load`` or ``@GDScript.preload``.
/// 
/// The engine keeps a global cache of all loaded resources, referenced by paths (see ``ResourceLoader/hasCached(path:)``). A resource will be cached when loaded for the first time and removed from cache once all references are released. When a resource is cached, subsequent loads using its path will return the cached reference.
/// 
/// > Note: In C#, resources will not be freed instantly after they are no longer in use. Instead, garbage collection will run periodically and will free resources that are no longer in use. This means that unused resources will remain in memory for a while before being removed.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``changed``
/// - ``setupLocalToSceneRequested``
open class Resource: RefCounted {
    private static var className = StringName("Resource")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// If `true`, the resource is duplicated for each instance of all scenes using it. At run-time, the resource can be modified in one scene without affecting other instances (see ``PackedScene/instantiate(editState:)``).
    /// 
    /// > Note: Changing this property at run-time has no effect on already created duplicate resources.
    /// 
    final public var resourceLocalToScene: Bool {
        get {
            return is_local_to_scene ()
        }
        
        set {
            set_local_to_scene (newValue)
        }
        
    }
    
    /// The unique path to this resource. If it has been saved to disk, the value will be its filepath. If the resource is exclusively contained within a scene, the value will be the ``PackedScene``'s filepath, followed by a unique identifier.
    /// 
    /// > Note: Setting this property manually may fail if a resource with the same path has already been previously loaded. If necessary, use ``takeOverPath(_:)``.
    /// 
    final public var resourcePath: String {
        get {
            return get_path ()
        }
        
        set {
            set_path (newValue)
        }
        
    }
    
    /// An optional name for this resource. When defined, its value is displayed to represent the resource in the Inspector dock. For built-in scripts, the name is displayed as part of the tab name in the script editor.
    /// 
    /// > Note: Some resource formats do not support resource names. You can still set the name in the editor or via code, but it will be lost when the resource is reloaded. For example, only built-in scripts can have a resource name, while scripts stored in separate files cannot.
    /// 
    final public var resourceName: String {
        get {
            return get_name ()
        }
        
        set {
            set_name (newValue)
        }
        
    }
    
    /// An unique identifier relative to the this resource's scene. If left empty, the ID is automatically generated when this resource is saved inside a ``PackedScene``. If the resource is not inside a scene, this property is empty by default.
    /// 
    /// > Note: When the ``PackedScene`` is saved, if multiple resources in the same scene use the same ID, only the earliest resource in the scene hierarchy keeps the original ID. The other resources are assigned new IDs from ``generateSceneUniqueId()``.
    /// 
    /// > Note: Setting this property does not emit the [signal changed] signal.
    /// 
    /// > Warning: When setting, the ID must only consist of letters, numbers, and underscores. Otherwise, it will fail and default to a randomly generated ID.
    /// 
    final public var resourceSceneUniqueId: String {
        get {
            return get_scene_unique_id ()
        }
        
        set {
            set_scene_unique_id (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method__setup_local_to_scene: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_setup_local_to_scene")
        return withUnsafePointer(to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Override this method to customize the newly duplicated resource created from ``PackedScene/instantiate(editState:)``, if the original's ``resourceLocalToScene`` is set to `true`.
    /// 
    /// **Example:** Set a random `damage` value to every local resource from an instantiated scene:
    /// 
    @_documentation(visibility: public)
    open func _setupLocalToScene() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Resource.method__setup_local_to_scene, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__get_rid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_rid")
        return withUnsafePointer(to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Override this method to return a custom ``RID`` when ``getRid()`` is called.
    @_documentation(visibility: public)
    open func _getRid() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(Resource.method__get_rid, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__reset_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_reset_state")
        return withUnsafePointer(to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// For resources that use a variable number of properties, either via ``Object/_validateProperty()`` or ``Object/_getPropertyList()``, this method should be implemented to correctly clear the resource's state.
    @_documentation(visibility: public)
    open func _resetState() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Resource.method__reset_state, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__set_path_cache: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_path_cache")
        return withUnsafePointer(to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3089850668)!
            }
            
        }
        
    }()
    
    /// Sets the resource's path to `path` without involving the resource cache.
    @_documentation(visibility: public)
    open func _setPathCache(path: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Resource.method__set_path_cache, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_path")
        return withUnsafePointer(to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_path(_ path: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Resource.method_set_path, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_take_over_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("take_over_path")
        return withUnsafePointer(to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Sets the ``resourcePath`` to `path`, potentially overriding an existing cache entry for this path. Further attempts to load an overridden resource by path will instead return this resource.
    public final func takeOverPath(_ path: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Resource.method_take_over_path, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_path")
        return withUnsafePointer(to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_path() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(Resource.method_get_path, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_path_cache: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_path_cache")
        return withUnsafePointer(to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Sets the resource's path to `path` without involving the resource cache.
    public final func setPathCache(path: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Resource.method_set_path_cache, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_name")
        return withUnsafePointer(to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_name(_ name: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Resource.method_set_name, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_name")
        return withUnsafePointer(to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_name() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(Resource.method_get_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_rid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_rid")
        return withUnsafePointer(to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Returns the ``RID`` of this resource (or an empty RID). Many resources (such as ``Texture2D``, ``Mesh``, and so on) are high-level abstractions of resources stored in a specialized server (``DisplayServer``, ``RenderingServer``, etc.), so this function will return the original ``RID``.
    public final func getRid() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(Resource.method_get_rid, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_local_to_scene: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_local_to_scene")
        return withUnsafePointer(to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_local_to_scene(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Resource.method_set_local_to_scene, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_local_to_scene: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_local_to_scene")
        return withUnsafePointer(to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_local_to_scene() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Resource.method_is_local_to_scene, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_local_scene: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_local_scene")
        return withUnsafePointer(to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3160264692)!
            }
            
        }
        
    }()
    
    /// If ``resourceLocalToScene`` is set to `true` and the resource has been loaded from a ``PackedScene`` instantiation, returns the root ``Node`` of the scene where this resource is used. Otherwise, returns `null`.
    public final func getLocalScene() -> Node? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(Resource.method_get_local_scene, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_setup_local_to_scene: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("setup_local_to_scene")
        return withUnsafePointer(to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Calls ``_setupLocalToScene()``. If ``resourceLocalToScene`` is set to `true`, this method is automatically called from ``PackedScene/instantiate(editState:)`` by the newly duplicated resource within the scene instance.
    public final func setupLocalToScene() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Resource.method_setup_local_to_scene, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_reset_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("reset_state")
        return withUnsafePointer(to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// For resources that use a variable number of properties, either via ``Object/_validateProperty()`` or ``Object/_getPropertyList()``, override ``_resetState()`` to correctly clear the resource's state.
    public final func resetState() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Resource.method_reset_state, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_set_id_for_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_id_for_path")
        return withUnsafePointer(to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3186203200)!
            }
            
        }
        
    }()
    
    /// Sets the unique identifier to `id` for the resource with the given `path` in the resource cache. If the unique identifier is empty, the cache entry using `path` is removed if it exists.
    /// 
    /// > Note: This method is only implemented when running in an editor context.
    /// 
    public final func setIdForPath(_ path: String, id: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            let id = GString(id)
            withUnsafePointer(to: id.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Resource.method_set_id_for_path, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_id_for_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_id_for_path")
        return withUnsafePointer(to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3135753539)!
            }
            
        }
        
    }()
    
    /// Returns the unique identifier for the resource with the given `path` from the resource cache. If the resource is not loaded and cached, an empty string is returned.
    /// 
    /// > Note: This method is only implemented when running in an editor context. At runtime, it returns an empty string.
    /// 
    public final func getIdForPath(_ path: String) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Resource.method_get_id_for_path, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_is_built_in: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_built_in")
        return withUnsafePointer(to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the resource is built-in (from the engine) or `false` if it is user-defined.
    public final func isBuiltIn() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Resource.method_is_built_in, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_generate_scene_unique_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("generate_scene_unique_id")
        return withUnsafePointer(to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2841200299)!
            }
            
        }
        
    }()
    
    /// Generates a unique identifier for a resource to be contained inside a ``PackedScene``, based on the current date, time, and a random value. The returned string is only composed of letters (`a` to `y`) and numbers (`0` to `8`). See also ``resourceSceneUniqueId``.
    public static func generateSceneUniqueId() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(method_generate_scene_unique_id, nil, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_scene_unique_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_scene_unique_id")
        return withUnsafePointer(to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_scene_unique_id(_ id: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let id = GString(id)
        withUnsafePointer(to: id.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Resource.method_set_scene_unique_id, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_scene_unique_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_scene_unique_id")
        return withUnsafePointer(to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_scene_unique_id() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(Resource.method_get_scene_unique_id, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_emit_changed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("emit_changed")
        return withUnsafePointer(to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Emits the [signal changed] signal. This method is called automatically for some built-in resources.
    /// 
    /// > Note: For custom resources, it's recommended to call this method whenever a meaningful change occurs, such as a modified property. This ensures that custom ``Object``s depending on the resource are properly updated.
    /// 
    public final func emitChanged() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Resource.method_emit_changed, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_duplicate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("duplicate")
        return withUnsafePointer(to: &Resource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 482882304)!
            }
            
        }
        
    }()
    
    /// Duplicates this resource, returning a new resource with its `export`ed or ``PropertyUsageFlags/propertyUsageStorage`` properties copied from the original.
    /// 
    /// If `subresources` is `false`, a shallow copy is returned; nested resources within subresources are not duplicated and are shared with the original resource (with one exception; see below). If `subresources` is `true`, a deep copy is returned; nested subresources will be duplicated and are not shared (with two exceptions; see below).
    /// 
    /// `subresources` is usually respected, with the following exceptions:
    /// 
    /// - Subresource properties with the ``PropertyUsageFlags/propertyUsageAlwaysDuplicate`` flag are always duplicated.
    /// 
    /// - Subresource properties with the ``PropertyUsageFlags/propertyUsageNeverDuplicate`` flag are never duplicated.
    /// 
    /// - Subresources inside ``VariantArray`` and ``VariantDictionary`` properties are never duplicated.
    /// 
    /// > Note: For custom resources, this method will fail if ``Object/_init()`` has been defined with required parameters.
    /// 
    public final func duplicate(subresources: Bool = false) -> Resource? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: subresources) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Resource.method_duplicate, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_rid":
                return _Resource_proxy_get_rid
            case "_reset_state":
                return _Resource_proxy_reset_state
            case "_set_path_cache":
                return _Resource_proxy_set_path_cache
            case "_setup_local_to_scene":
                return _Resource_proxy_setup_local_to_scene
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
    // Signals 
    /// Emitted when the resource changes, usually when one of its properties is modified. See also ``emitChanged()``.
    /// 
    /// > Note: This signal is not emitted automatically for properties of custom resources. If necessary, a setter needs to be created to emit the signal.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.changed.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var changed: SimpleSignal { SimpleSignal (target: self, signalName: "changed") }
    
    /// Emitted by a newly duplicated resource with ``resourceLocalToScene`` set to `true`.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.setupLocalToSceneRequested.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var setupLocalToSceneRequested: SimpleSignal { SimpleSignal (target: self, signalName: "setup_local_to_scene_requested") }
    
}

// Support methods for proxies
func _Resource_proxy_get_rid (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? Resource else { return }
    let ret = swiftObject._getRid ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _Resource_proxy_reset_state (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? Resource else { return }
    swiftObject._resetState ()
}

func _Resource_proxy_set_path_cache (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? Resource else { return }
    swiftObject._setPathCache (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
}

func _Resource_proxy_setup_local_to_scene (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? Resource else { return }
    swiftObject._setupLocalToScene ()
}

