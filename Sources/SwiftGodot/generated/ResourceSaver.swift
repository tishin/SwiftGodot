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


/// A singleton for saving ``Resource``s to the filesystem.
/// 
/// A singleton for saving resource types to the filesystem.
/// 
/// It uses the many ``ResourceFormatSaver`` classes registered in the engine (either built-in or from a plugin) to save resource data to text-based (e.g. `.tres` or `.tscn`) or binary files (e.g. `.res` or `.scn`).
/// 
open class ResourceSaver: Object {
    /// The shared instance of this class
    public static var shared: ResourceSaver {
        return withUnsafePointer(to: &ResourceSaver.godotClassName.content) { ptr in
            getOrInitSwiftObject(nativeHandle: gi.global_get_singleton(ptr)!, ownsRef: false)!
        }
        
    }
    
    private static var className = StringName("ResourceSaver")
    override open class var godotClassName: StringName { className }
    public struct SaverFlags: OptionSet, CustomDebugStringConvertible {
        public let rawValue: Int
        public init (rawValue: Int) {
            self.rawValue = rawValue
        }
        
        /// Save the resource with a path relative to the scene which uses it.
        public static let relativePaths = SaverFlags (rawValue: 1)
        /// Bundles external resources.
        public static let bundleResources = SaverFlags (rawValue: 2)
        /// Changes the ``Resource/resourcePath`` of the saved resource to match its new location.
        public static let changePath = SaverFlags (rawValue: 4)
        /// Do not save editor-specific metadata (identified by their `__editor` prefix).
        public static let omitEditorProperties = SaverFlags (rawValue: 8)
        /// Save as big endian (see ``FileAccess/bigEndian``).
        public static let saveBigEndian = SaverFlags (rawValue: 16)
        /// Compress the resource on save using ``FileAccess/CompressionMode/zstd``. Only available for binary resource types.
        public static let compress = SaverFlags (rawValue: 32)
        /// Take over the paths of the saved subresources (see ``Resource/takeOverPath(_:)``).
        public static let replaceSubresourcePaths = SaverFlags (rawValue: 64)
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            var result = ""
            if self.contains (.relativePaths) { result += "relativePaths, " }
            if self.contains (.bundleResources) { result += "bundleResources, " }
            if self.contains (.changePath) { result += "changePath, " }
            if self.contains (.omitEditorProperties) { result += "omitEditorProperties, " }
            if self.contains (.saveBigEndian) { result += "saveBigEndian, " }
            if self.contains (.compress) { result += "compress, " }
            if self.contains (.replaceSubresourcePaths) { result += "replaceSubresourcePaths, " }
            if result.hasSuffix (", ") { result.removeLast (2) }
            return result
        }
        
    }
    
    /* Methods */
    fileprivate static let method_save: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("save")
        return withUnsafePointer(to: &ResourceSaver.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2983274697)!
            }
            
        }
        
    }()
    
    /// Saves a resource to disk to the given path, using a ``ResourceFormatSaver`` that recognizes the resource object. If `path` is empty, ``ResourceSaver`` will try to use ``Resource/resourcePath``.
    /// 
    /// The `flags` bitmask can be specified to customize the save behavior using ``ResourceSaver/SaverFlags`` flags.
    /// 
    /// Returns ``GodotError/ok`` on success.
    /// 
    /// > Note: When the project is running, any generated UID associated with the resource will not be saved as the required code is only executed in editor mode.
    /// 
    public static func save(resource: Resource?, path: String = "", flags: ResourceSaver.SaverFlags = []) -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: resource?.handle) { pArg0 in
            let path = GString(path)
            withUnsafePointer(to: path.content) { pArg1 in
                withUnsafePointer(to: flags.rawValue) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(method_save, shared.handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_get_recognized_extensions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_recognized_extensions")
        return withUnsafePointer(to: &ResourceSaver.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4223597960)!
            }
            
        }
        
    }()
    
    /// Returns the list of extensions available for saving a resource of a given type.
    public static func getRecognizedExtensions(type: Resource?) -> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        withUnsafePointer(to: type?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_recognized_extensions, shared.handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_add_resource_format_saver: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_resource_format_saver")
        return withUnsafePointer(to: &ResourceSaver.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 362894272)!
            }
            
        }
        
    }()
    
    /// Registers a new ``ResourceFormatSaver``. The ResourceSaver will use the ResourceFormatSaver as described in ``save(resource:path:flags:)``.
    /// 
    /// This method is performed implicitly for ResourceFormatSavers written in GDScript (see ``ResourceFormatSaver`` for more information).
    /// 
    public static func addResourceFormatSaver(_ formatSaver: ResourceFormatSaver?, atFront: Bool = false) {
        withUnsafePointer(to: formatSaver?.handle) { pArg0 in
            withUnsafePointer(to: atFront) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_add_resource_format_saver, shared.handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_resource_format_saver: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_resource_format_saver")
        return withUnsafePointer(to: &ResourceSaver.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3373026878)!
            }
            
        }
        
    }()
    
    /// Unregisters the given ``ResourceFormatSaver``.
    public static func removeResourceFormatSaver(_ formatSaver: ResourceFormatSaver?) {
        withUnsafePointer(to: formatSaver?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_remove_resource_format_saver, shared.handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_resource_id_for_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_resource_id_for_path")
        return withUnsafePointer(to: &ResourceSaver.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 150756522)!
            }
            
        }
        
    }()
    
    /// Returns the resource ID for the given path. If `generate` is `true`, a new resource ID will be generated if one for the path is not found. If `generate` is `false` and the path is not found, ``ResourceUID/invalidId`` is returned.
    public static func getResourceIdForPath(_ path: String, generate: Bool = false) -> Int {
        var _result: Int = 0
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: generate) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_get_resource_id_for_path, shared.handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
}

