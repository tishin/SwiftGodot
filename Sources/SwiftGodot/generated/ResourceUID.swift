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


/// A singleton that manages the unique identifiers of all resources within a project.
/// 
/// Resource UIDs (Unique IDentifiers) allow the engine to keep references between resources intact, even if files are renamed or moved. They can be accessed with `uid://`.
/// 
/// ``ResourceUID`` keeps track of all registered resource UIDs in a project, generates new UIDs, and converts between their string and integer representations.
/// 
open class ResourceUID: Object {
    /// The shared instance of this class
    public static var shared: ResourceUID {
        return withUnsafePointer(to: &ResourceUID.godotClassName.content) { ptr in
            getOrInitSwiftObject(nativeHandle: gi.global_get_singleton(ptr)!, ownsRef: false)!
        }
        
    }
    
    private static var className = StringName("ResourceUID")
    override open class var godotClassName: StringName { className }
    /* Constants */
    /// The value to use for an invalid UID, for example if the resource could not be loaded.
    /// 
    /// Its text representation is `uid://<invalid>`.
    /// 
    public static let invalidId = -1
    /* Methods */
    fileprivate static let method_id_to_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("id_to_text")
        return withUnsafePointer(to: &ResourceUID.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Converts the given UID to a `uid://` string value.
    public static func idToText(id: Int) -> String {
        let _result = GString ()
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_id_to_text, shared.handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_text_to_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("text_to_id")
        return withUnsafePointer(to: &ResourceUID.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1321353865)!
            }
            
        }
        
    }()
    
    /// Extracts the UID value from the given `uid://` string.
    public static func textToId(textId: String) -> Int {
        var _result: Int = 0
        let textId = GString(textId)
        withUnsafePointer(to: textId.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_text_to_id, shared.handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_create_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_id")
        return withUnsafePointer(to: &ResourceUID.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Generates a random resource UID which is guaranteed to be unique within the list of currently loaded UIDs.
    /// 
    /// In order for this UID to be registered, you must call ``addId(_:path:)`` or ``setId(_:path:)``.
    /// 
    public static func createId() -> Int {
        var _result: Int = 0
        gi.object_method_bind_ptrcall(method_create_id, shared.handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_has_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_id")
        return withUnsafePointer(to: &ResourceUID.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns whether the given UID value is known to the cache.
    public static func hasId(_ id: Int) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_has_id, shared.handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_add_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_id")
        return withUnsafePointer(to: &ResourceUID.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Adds a new UID value which is mapped to the given resource path.
    /// 
    /// Fails with an error if the UID already exists, so be sure to check ``hasId(_:)`` beforehand, or use ``setId(_:path:)`` instead.
    /// 
    public static func addId(_ id: Int, path: String) {
        withUnsafePointer(to: id) { pArg0 in
            let path = GString(path)
            withUnsafePointer(to: path.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_add_id, shared.handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_id")
        return withUnsafePointer(to: &ResourceUID.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Updates the resource path of an existing UID.
    /// 
    /// Fails with an error if the UID does not exist, so be sure to check ``hasId(_:)`` beforehand, or use ``addId(_:path:)`` instead.
    /// 
    public static func setId(_ id: Int, path: String) {
        withUnsafePointer(to: id) { pArg0 in
            let path = GString(path)
            withUnsafePointer(to: path.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_set_id, shared.handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_id_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_id_path")
        return withUnsafePointer(to: &ResourceUID.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the path that the given UID value refers to.
    /// 
    /// Fails with an error if the UID does not exist, so be sure to check ``hasId(_:)`` beforehand.
    /// 
    public static func getIdPath(id: Int) -> String {
        let _result = GString ()
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_id_path, shared.handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_remove_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_id")
        return withUnsafePointer(to: &ResourceUID.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes a loaded UID value from the cache.
    /// 
    /// Fails with an error if the UID does not exist, so be sure to check ``hasId(_:)`` beforehand.
    /// 
    public static func removeId(_ id: Int) {
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_remove_id, shared.handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}

