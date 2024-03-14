// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A singleton for loading resource files.
/// 
/// A singleton used to load resource files from the filesystem.
/// 
/// It uses the many ``ResourceFormatLoader`` classes registered in the engine (either built-in or from a plugin) to load files into memory and convert them to a format that can be used by the engine.
/// 
/// > Note: You have to import the files into the engine first to load them using ``load(path:typeHint:cacheMode:)``. If you want to load ``Image``s at run-time, you may use ``Image/load(path:)``. If you want to import audio files, you can use the snippet described in ``AudioStreamMP3/data``.
/// 
open class ResourceLoader: Object {
    /// The shared instance of this class
    public static var shared: ResourceLoader = {
        return withUnsafePointer (to: &ResourceLoader.godotClassName.content) { ptr in
            ResourceLoader (nativeHandle: gi.global_get_singleton (ptr)!)
        }
        
    }()
    
    override open class var godotClassName: StringName { "ResourceLoader" }
    public enum ThreadLoadStatus: Int64, CustomDebugStringConvertible {
        /// The resource is invalid, or has not been loaded with ``loadThreadedRequest(path:typeHint:useSubThreads:cacheMode:)``.
        case invalidResource = 0 // THREAD_LOAD_INVALID_RESOURCE
        /// The resource is still being loaded.
        case inProgress = 1 // THREAD_LOAD_IN_PROGRESS
        /// Some error occurred during loading and it failed.
        case failed = 2 // THREAD_LOAD_FAILED
        /// The resource was loaded successfully and can be accessed via ``loadThreadedGet(path:)``.
        case loaded = 3 // THREAD_LOAD_LOADED
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .invalidResource: return ".invalidResource"
                case .inProgress: return ".inProgress"
                case .failed: return ".failed"
                case .loaded: return ".loaded"
            }
            
        }
        
    }
    
    public enum CacheMode: Int64, CustomDebugStringConvertible {
        /// 
        case ignore = 0 // CACHE_MODE_IGNORE
        /// 
        case reuse = 1 // CACHE_MODE_REUSE
        /// 
        case replace = 2 // CACHE_MODE_REPLACE
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .ignore: return ".ignore"
                case .reuse: return ".reuse"
                case .replace: return ".replace"
            }
            
        }
        
    }
    
    /* Methods */
    fileprivate static var method_load_threaded_request: GDExtensionMethodBindPtr = {
        let methodName = StringName ("load_threaded_request")
        return withUnsafePointer (to: &ResourceLoader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3614384323)!
            }
            
        }
        
    }()
    
    /// Loads the resource using threads. If `useSubThreads` is `true`, multiple threads will be used to load the resource, which makes loading faster, but may affect the main thread (and thus cause game slowdowns).
    /// 
    /// The `cacheMode` property defines whether and how the cache should be used or updated when loading the resource. See ``ResourceLoader/CacheMode`` for details.
    /// 
    public static func loadThreadedRequest (path: String, typeHint: String = "", useSubThreads: Bool = false, cacheMode: ResourceLoader.CacheMode = .reuse)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        let gstr_path = GString (path)
        let gstr_type_hint = GString (typeHint)
        var copy_use_sub_threads = useSubThreads
        var copy_cache_mode = Int64 (cacheMode.rawValue)
        
        gi.object_method_bind_ptrcall_v (ResourceLoader.method_load_threaded_request, UnsafeMutableRawPointer (mutating: shared.handle), &_result, &gstr_path.content, &gstr_type_hint.content, &copy_use_sub_threads, &copy_cache_mode)
        return GodotError (rawValue: _result)!
        #else
        
        let gstr_path = GString (path)
        let gstr_type_hint = GString (typeHint)
        var copy_use_sub_threads = useSubThreads
        var copy_cache_mode = Int64 (cacheMode.rawValue)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_path.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &gstr_type_hint.content) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &copy_use_sub_threads) { p2 in
                    _args.append (p2)
                    return withUnsafePointer (to: &copy_cache_mode) { p3 in
                        _args.append (p3)
        
                        gi.object_method_bind_ptrcall (ResourceLoader.method_load_threaded_request, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result)
                        return GodotError (rawValue: _result)!
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_load_threaded_get_status: GDExtensionMethodBindPtr = {
        let methodName = StringName ("load_threaded_get_status")
        return withUnsafePointer (to: &ResourceLoader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4137685479)!
            }
            
        }
        
    }()
    
    /// Returns the status of a threaded loading operation started with ``loadThreadedRequest(path:typeHint:useSubThreads:cacheMode:)`` for the resource at `path`. See ``ResourceLoader/ThreadLoadStatus`` for possible return values.
    /// 
    /// An array variable can optionally be passed via `progress`, and will return a one-element array containing the percentage of completion of the threaded loading.
    /// 
    public static func loadThreadedGetStatus (path: String, progress: GArray = GArray ())-> ResourceLoader.ThreadLoadStatus {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        let gstr_path = GString (path)
        
        gi.object_method_bind_ptrcall_v (ResourceLoader.method_load_threaded_get_status, UnsafeMutableRawPointer (mutating: shared.handle), &_result, &gstr_path.content, &progress.content)
        return ResourceLoader.ThreadLoadStatus (rawValue: _result)!
        #else
        
        let gstr_path = GString (path)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_path.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &progress.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (ResourceLoader.method_load_threaded_get_status, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result)
                return ResourceLoader.ThreadLoadStatus (rawValue: _result)!
            }
        }
        
        #endif
    }
    
    fileprivate static var method_load_threaded_get: GDExtensionMethodBindPtr = {
        let methodName = StringName ("load_threaded_get")
        return withUnsafePointer (to: &ResourceLoader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1748875256)!
            }
            
        }
        
    }()
    
    /// Returns the resource loaded by ``loadThreadedRequest(path:typeHint:useSubThreads:cacheMode:)``.
    /// 
    /// If this is called before the loading thread is done (i.e. ``loadThreadedGetStatus(path:progress:)`` is not .threadLoadLoaded), the calling thread will be blocked until the resource has finished loading.
    /// 
    public static func loadThreadedGet (path: String)-> Resource? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if true
        
        let gstr_path = GString (path)
        
        gi.object_method_bind_ptrcall_v (ResourceLoader.method_load_threaded_get, UnsafeMutableRawPointer (mutating: shared.handle), &_result, &gstr_path.content)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        let gstr_path = GString (path)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_path.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ResourceLoader.method_load_threaded_get, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_load: GDExtensionMethodBindPtr = {
        let methodName = StringName ("load")
        return withUnsafePointer (to: &ResourceLoader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3358495409)!
            }
            
        }
        
    }()
    
    /// Loads a resource at the given `path`, caching the result for further access.
    /// 
    /// The registered ``ResourceFormatLoader``s are queried sequentially to find the first one which can handle the file's extension, and then attempt loading. If loading fails, the remaining ResourceFormatLoaders are also attempted.
    /// 
    /// An optional `typeHint` can be used to further specify the ``Resource`` type that should be handled by the ``ResourceFormatLoader``. Anything that inherits from ``Resource`` can be used as a type hint, for example ``Image``.
    /// 
    /// The `cacheMode` property defines whether and how the cache should be used or updated when loading the resource. See ``ResourceLoader/CacheMode`` for details.
    /// 
    /// Returns an empty resource if no ``ResourceFormatLoader`` could handle the file.
    /// 
    /// GDScript has a simplified ``@GDScript.load`` built-in method which can be used in most situations, leaving the use of ``ResourceLoader`` for more advanced scenarios.
    /// 
    /// > Note: If ``ProjectSettings/editor/export/convertTextResourcesToBinary`` is `true`, ``@GDScript.load`` will not be able to read converted files in an exported project. If you rely on run-time loading of files present within the PCK, set ``ProjectSettings/editor/export/convertTextResourcesToBinary`` to `false`.
    /// 
    public static func load (path: String, typeHint: String = "", cacheMode: ResourceLoader.CacheMode = .reuse)-> Resource? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if true
        
        let gstr_path = GString (path)
        let gstr_type_hint = GString (typeHint)
        var copy_cache_mode = Int64 (cacheMode.rawValue)
        
        gi.object_method_bind_ptrcall_v (ResourceLoader.method_load, UnsafeMutableRawPointer (mutating: shared.handle), &_result, &gstr_path.content, &gstr_type_hint.content, &copy_cache_mode)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        let gstr_path = GString (path)
        let gstr_type_hint = GString (typeHint)
        var copy_cache_mode = Int64 (cacheMode.rawValue)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_path.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &gstr_type_hint.content) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &copy_cache_mode) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (ResourceLoader.method_load, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result)
                    guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_recognized_extensions_for_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_recognized_extensions_for_type")
        return withUnsafePointer (to: &ResourceLoader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3538744774)!
            }
            
        }
        
    }()
    
    /// Returns the list of recognized extensions for a resource type.
    public static func getRecognizedExtensionsForType (_ type: String)-> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        #if true
        
        let gstr_type = GString (type)
        
        gi.object_method_bind_ptrcall_v (ResourceLoader.method_get_recognized_extensions_for_type, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &gstr_type.content)
        return _result
        #else
        
        let gstr_type = GString (type)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_type.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ResourceLoader.method_get_recognized_extensions_for_type, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_add_resource_format_loader: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_resource_format_loader")
        return withUnsafePointer (to: &ResourceLoader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2896595483)!
            }
            
        }
        
    }()
    
    /// Registers a new ``ResourceFormatLoader``. The ResourceLoader will use the ResourceFormatLoader as described in ``load(path:typeHint:cacheMode:)``.
    /// 
    /// This method is performed implicitly for ResourceFormatLoaders written in GDScript (see ``ResourceFormatLoader`` for more information).
    /// 
    public static func addResourceFormatLoader (_ formatLoader: ResourceFormatLoader?, atFront: Bool = false) {
        #if true
        
        var copy_at_front = atFront
        var copy_format_loader_handle = formatLoader?.handle
        
        gi.object_method_bind_ptrcall_v (ResourceLoader.method_add_resource_format_loader, UnsafeMutableRawPointer (mutating: shared.handle), nil, &copy_format_loader_handle, &copy_at_front)
        
        #else
        
        var copy_at_front = atFront
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: formatLoader?.handle) { p0 in
        _args.append (formatLoader == nil ? nil : p0)
            withUnsafePointer (to: &copy_at_front) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (ResourceLoader.method_add_resource_format_loader, UnsafeMutableRawPointer (mutating: shared.handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_remove_resource_format_loader: GDExtensionMethodBindPtr = {
        let methodName = StringName ("remove_resource_format_loader")
        return withUnsafePointer (to: &ResourceLoader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 405397102)!
            }
            
        }
        
    }()
    
    /// Unregisters the given ``ResourceFormatLoader``.
    public static func removeResourceFormatLoader (_ formatLoader: ResourceFormatLoader?) {
        #if true
        
        var copy_format_loader_handle = formatLoader?.handle
        
        gi.object_method_bind_ptrcall_v (ResourceLoader.method_remove_resource_format_loader, UnsafeMutableRawPointer (mutating: shared.handle), nil, &copy_format_loader_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: formatLoader?.handle) { p0 in
        _args.append (formatLoader == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (ResourceLoader.method_remove_resource_format_loader, UnsafeMutableRawPointer (mutating: shared.handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_abort_on_missing_resources: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_abort_on_missing_resources")
        return withUnsafePointer (to: &ResourceLoader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Changes the behavior on missing sub-resources. The default behavior is to abort loading.
    public static func setAbortOnMissingResources (abort: Bool) {
        #if true
        
        var copy_abort = abort
        
        gi.object_method_bind_ptrcall_v (ResourceLoader.method_set_abort_on_missing_resources, UnsafeMutableRawPointer (mutating: shared.handle), nil, &copy_abort)
        
        #else
        
        var copy_abort = abort
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_abort) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ResourceLoader.method_set_abort_on_missing_resources, UnsafeMutableRawPointer (mutating: shared.handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_dependencies: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_dependencies")
        return withUnsafePointer (to: &ResourceLoader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3538744774)!
            }
            
        }
        
    }()
    
    /// Returns the dependencies for the resource at the given `path`.
    /// 
    /// > Note: The dependencies are returned with slices separated by `::`. You can use ``String/getSlice(delimiter:slice:)`` to get their components.
    /// 
    public static func getDependencies (path: String)-> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        #if true
        
        let gstr_path = GString (path)
        
        gi.object_method_bind_ptrcall_v (ResourceLoader.method_get_dependencies, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &gstr_path.content)
        return _result
        #else
        
        let gstr_path = GString (path)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_path.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ResourceLoader.method_get_dependencies, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_has_cached: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_cached")
        return withUnsafePointer (to: &ResourceLoader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2323990056)!
            }
            
        }
        
    }()
    
    /// Returns whether a cached resource is available for the given `path`.
    /// 
    /// Once a resource has been loaded by the engine, it is cached in memory for faster access, and future calls to the ``load(path:typeHint:cacheMode:)`` method will use the cached version. The cached resource can be overridden by using ``Resource/takeOverPath(_:)`` on a new resource for that same path.
    /// 
    public static func hasCached (path: String)-> Bool {
        var _result: Bool = false
        #if true
        
        let gstr_path = GString (path)
        
        gi.object_method_bind_ptrcall_v (ResourceLoader.method_has_cached, UnsafeMutableRawPointer (mutating: shared.handle), &_result, &gstr_path.content)
        return _result
        #else
        
        let gstr_path = GString (path)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_path.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ResourceLoader.method_has_cached, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_exists: GDExtensionMethodBindPtr = {
        let methodName = StringName ("exists")
        return withUnsafePointer (to: &ResourceLoader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4185558881)!
            }
            
        }
        
    }()
    
    /// Returns whether a recognized resource exists for the given `path`.
    /// 
    /// An optional `typeHint` can be used to further specify the ``Resource`` type that should be handled by the ``ResourceFormatLoader``. Anything that inherits from ``Resource`` can be used as a type hint, for example ``Image``.
    /// 
    public static func exists (path: String, typeHint: String = "")-> Bool {
        var _result: Bool = false
        #if true
        
        let gstr_path = GString (path)
        let gstr_type_hint = GString (typeHint)
        
        gi.object_method_bind_ptrcall_v (ResourceLoader.method_exists, UnsafeMutableRawPointer (mutating: shared.handle), &_result, &gstr_path.content, &gstr_type_hint.content)
        return _result
        #else
        
        let gstr_path = GString (path)
        let gstr_type_hint = GString (typeHint)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_path.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &gstr_type_hint.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (ResourceLoader.method_exists, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_resource_uid: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_resource_uid")
        return withUnsafePointer (to: &ResourceLoader.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1597066294)!
            }
            
        }
        
    }()
    
    /// Returns the ID associated with a given resource path, or `-1` when no such ID exists.
    public static func getResourceUid (path: String)-> Int {
        var _result: Int = 0
        #if true
        
        let gstr_path = GString (path)
        
        gi.object_method_bind_ptrcall_v (ResourceLoader.method_get_resource_uid, UnsafeMutableRawPointer (mutating: shared.handle), &_result, &gstr_path.content)
        return _result
        #else
        
        let gstr_path = GString (path)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_path.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (ResourceLoader.method_get_resource_uid, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
}

