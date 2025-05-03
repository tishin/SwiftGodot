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


/// Loads a specific resource type from a file.
/// 
/// Godot loads resources in the editor or in exported games using ResourceFormatLoaders. They are queried automatically via the ``ResourceLoader`` singleton, or when a resource with internal dependencies is loaded. Each file type may load as a different resource type, so multiple ResourceFormatLoaders are registered in the engine.
/// 
/// Extending this class allows you to define your own loader. Be sure to respect the documented return types and values. You should give it a global class name with `class_name` for it to be registered. Like built-in ResourceFormatLoaders, it will be called automatically when loading resources of its handled type(s). You may also implement a ``ResourceFormatSaver``.
/// 
/// > Note: You can also extend ``EditorImportPlugin`` if the resource type you need exists but Godot is unable to load its format. Choosing one way over another depends on if the format is suitable or not for the final exported game. For example, it's better to import `.png` textures as `.ctex` (``CompressedTexture2D``) first, so they can be loaded with better efficiency on the graphics card.
/// 
open class ResourceFormatLoader: RefCounted {
    private static var className = StringName("ResourceFormatLoader")
    override open class var godotClassName: StringName { className }
    public enum CacheMode: Int64, CaseIterable {
        /// Neither the main resource (the one requested to be loaded) nor any of its subresources are retrieved from cache nor stored into it. Dependencies (external resources) are loaded with ``CacheMode/reuse``.
        case ignore = 0 // CACHE_MODE_IGNORE
        /// The main resource (the one requested to be loaded), its subresources, and its dependencies (external resources) are retrieved from cache if present, instead of loaded. Those not cached are loaded and then stored into the cache. The same rules are propagated recursively down the tree of dependencies (external resources).
        case reuse = 1 // CACHE_MODE_REUSE
        /// Like ``CacheMode/reuse``, but the cache is checked for the main resource (the one requested to be loaded) as well as for each of its subresources. Those already in the cache, as long as the loaded and cached types match, have their data refreshed from storage into the already existing instances. Otherwise, they are recreated as completely new objects.
        case replace = 2 // CACHE_MODE_REPLACE
        /// Like ``CacheMode/ignore``, but propagated recursively down the tree of dependencies (external resources).
        case ignoreDeep = 3 // CACHE_MODE_IGNORE_DEEP
        /// Like ``CacheMode/replace``, but propagated recursively down the tree of dependencies (external resources).
        case replaceDeep = 4 // CACHE_MODE_REPLACE_DEEP
    }
    
    /* Methods */
    fileprivate static let method__get_recognized_extensions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_recognized_extensions")
        return withUnsafePointer(to: &ResourceFormatLoader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Gets the list of extensions for files this loader is able to read.
    @_documentation(visibility: public)
    open func _getRecognizedExtensions() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(ResourceFormatLoader.method__get_recognized_extensions, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__recognize_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_recognize_path")
        return withUnsafePointer(to: &ResourceFormatLoader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2594487047)!
            }
            
        }
        
    }()
    
    /// Tells whether or not this loader should load a resource from its resource path for a given type.
    /// 
    /// If it is not implemented, the default behavior returns whether the path's extension is within the ones provided by ``_getRecognizedExtensions()``, and if the type is within the ones provided by ``_getResourceType(path:)``.
    /// 
    @_documentation(visibility: public)
    open func _recognizePath(_ path: String, type: StringName) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: type.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ResourceFormatLoader.method__recognize_path, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__handles_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_handles_type")
        return withUnsafePointer(to: &ResourceFormatLoader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2619796661)!
            }
            
        }
        
    }()
    
    /// Tells which resource class this loader can load.
    /// 
    /// > Note: Custom resource types defined by scripts aren't known by the ``ClassDB``, so you might just handle `"Resource"` for them.
    /// 
    @_documentation(visibility: public)
    open func _handlesType(_ type: StringName) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: type.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ResourceFormatLoader.method__handles_type, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_resource_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_resource_type")
        return withUnsafePointer(to: &ResourceFormatLoader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3135753539)!
            }
            
        }
        
    }()
    
    /// Gets the class name of the resource associated with the given path. If the loader cannot handle it, it should return `""`.
    /// 
    /// > Note: Custom resource types defined by scripts aren't known by the ``ClassDB``, so you might just return `"Resource"` for them.
    /// 
    @_documentation(visibility: public)
    open func _getResourceType(path: String) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ResourceFormatLoader.method__get_resource_type, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__get_resource_script_class: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_resource_script_class")
        return withUnsafePointer(to: &ResourceFormatLoader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3135753539)!
            }
            
        }
        
    }()
    
    /// Returns the script class name associated with the ``Resource`` under the given `path`. If the resource has no script or the script isn't a named class, it should return `""`.
    @_documentation(visibility: public)
    open func _getResourceScriptClass(path: String) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ResourceFormatLoader.method__get_resource_script_class, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__get_resource_uid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_resource_uid")
        return withUnsafePointer(to: &ResourceFormatLoader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1321353865)!
            }
            
        }
        
    }()
    
    /// Should return the unique ID for the resource associated with the given path. If this method is not overridden, a `.uid` file is generated along with the resource file, containing the unique ID.
    @_documentation(visibility: public)
    open func _getResourceUid(path: String) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ResourceFormatLoader.method__get_resource_uid, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_dependencies: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_dependencies")
        return withUnsafePointer(to: &ResourceFormatLoader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 6257701)!
            }
            
        }
        
    }()
    
    /// If implemented, gets the dependencies of a given resource. If `addTypes` is `true`, paths should be appended `::TypeName`, where `TypeName` is the class name of the dependency.
    /// 
    /// > Note: Custom resource types defined by scripts aren't known by the ``ClassDB``, so you might just return `"Resource"` for them.
    /// 
    @_documentation(visibility: public)
    open func _getDependencies(path: String, addTypes: Bool) -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: addTypes) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ResourceFormatLoader.method__get_dependencies, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__rename_dependencies: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_rename_dependencies")
        return withUnsafePointer(to: &ResourceFormatLoader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 223715120)!
            }
            
        }
        
    }()
    
    /// If implemented, renames dependencies within the given resource and saves it. `renames` is a dictionary `{ String => String }` mapping old dependency paths to new paths.
    /// 
    /// Returns ``GodotError/ok`` on success, or an ``GodotError`` constant in case of failure.
    /// 
    @_documentation(visibility: public)
    open func _renameDependencies(path: String, renames: VariantDictionary) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: renames.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ResourceFormatLoader.method__rename_dependencies, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__exists: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_exists")
        return withUnsafePointer(to: &ResourceFormatLoader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _exists(path: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ResourceFormatLoader.method__exists, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_classes_used: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_classes_used")
        return withUnsafePointer(to: &ResourceFormatLoader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4291131558)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getClassesUsed(path: String) -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ResourceFormatLoader.method__get_classes_used, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__load: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_load")
        return withUnsafePointer(to: &ResourceFormatLoader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2885906527)!
            }
            
        }
        
    }()
    
    /// Loads a resource when the engine finds this loader to be compatible. If the loaded resource is the result of an import, `originalPath` will target the source file. Returns a ``Resource`` object on success, or an ``GodotError`` constant in case of failure.
    /// 
    /// The `cacheMode` property defines whether and how the cache should be used or updated when loading the resource. See ``ResourceFormatLoader/CacheMode`` for details.
    /// 
    @_documentation(visibility: public)
    open func _load(path: String, originalPath: String, useSubThreads: Bool, cacheMode: Int32) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            let originalPath = GString(originalPath)
            withUnsafePointer(to: originalPath.content) { pArg1 in
                withUnsafePointer(to: useSubThreads) { pArg2 in
                    withUnsafePointer(to: cacheMode) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(ResourceFormatLoader.method__load, handle, pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_exists":
                return _ResourceFormatLoader_proxy_exists
            case "_get_classes_used":
                return _ResourceFormatLoader_proxy_get_classes_used
            case "_get_dependencies":
                return _ResourceFormatLoader_proxy_get_dependencies
            case "_get_recognized_extensions":
                return _ResourceFormatLoader_proxy_get_recognized_extensions
            case "_get_resource_script_class":
                return _ResourceFormatLoader_proxy_get_resource_script_class
            case "_get_resource_type":
                return _ResourceFormatLoader_proxy_get_resource_type
            case "_get_resource_uid":
                return _ResourceFormatLoader_proxy_get_resource_uid
            case "_handles_type":
                return _ResourceFormatLoader_proxy_handles_type
            case "_load":
                return _ResourceFormatLoader_proxy_load
            case "_recognize_path":
                return _ResourceFormatLoader_proxy_recognize_path
            case "_rename_dependencies":
                return _ResourceFormatLoader_proxy_rename_dependencies
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _ResourceFormatLoader_proxy_exists (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ResourceFormatLoader else { return }
    let ret = swiftObject._exists (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ResourceFormatLoader_proxy_get_classes_used (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ResourceFormatLoader else { return }
    let ret = swiftObject._getClassesUsed (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _ResourceFormatLoader_proxy_get_dependencies (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ResourceFormatLoader else { return }
    let ret = swiftObject._getDependencies (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", addTypes: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _ResourceFormatLoader_proxy_get_recognized_extensions (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ResourceFormatLoader else { return }
    let ret = swiftObject._getRecognizedExtensions ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _ResourceFormatLoader_proxy_get_resource_script_class (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ResourceFormatLoader else { return }
    let ret = GString (swiftObject._getResourceScriptClass (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? ""))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _ResourceFormatLoader_proxy_get_resource_type (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ResourceFormatLoader else { return }
    let ret = GString (swiftObject._getResourceType (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? ""))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _ResourceFormatLoader_proxy_get_resource_uid (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ResourceFormatLoader else { return }
    let ret = swiftObject._getResourceUid (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _ResourceFormatLoader_proxy_handles_type (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ResourceFormatLoader else { return }
    let ret = swiftObject._handlesType (StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ResourceFormatLoader_proxy_load (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ResourceFormatLoader else { return }
    let ret = swiftObject._load (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", originalPath: GString.stringFromGStringPtr (ptr: args [1]!) ?? "", useSubThreads: args [2]!.assumingMemoryBound (to: Bool.self).pointee, cacheMode: args [3]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes(of: ret.content, as: Variant.ContentType.self)
    ret?.content = Variant.zero
}

func _ResourceFormatLoader_proxy_recognize_path (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ResourceFormatLoader else { return }
    let ret = swiftObject._recognizePath (GString.stringFromGStringPtr (ptr: args [0]!) ?? "", type: StringName (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ResourceFormatLoader_proxy_rename_dependencies (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ResourceFormatLoader else { return }
    let ret = swiftObject._renameDependencies (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", renames: VariantDictionary (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

