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


/// Used to query and configure import format support.
/// 
/// This class is used to query and configure a certain import format. It is used in conjunction with asset format import plugins.
open class EditorFileSystemImportFormatSupportQuery: RefCounted {
    private static var className = StringName("EditorFileSystemImportFormatSupportQuery")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__is_active: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_active")
        return withUnsafePointer(to: &EditorFileSystemImportFormatSupportQuery.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Return whether this importer is active.
    @_documentation(visibility: public)
    open func _isActive() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorFileSystemImportFormatSupportQuery.method__is_active, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_file_extensions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_file_extensions")
        return withUnsafePointer(to: &EditorFileSystemImportFormatSupportQuery.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Return the file extensions supported.
    @_documentation(visibility: public)
    open func _getFileExtensions() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(EditorFileSystemImportFormatSupportQuery.method__get_file_extensions, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__query: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_query")
        return withUnsafePointer(to: &EditorFileSystemImportFormatSupportQuery.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Query support. Return `false` if import must not continue.
    @_documentation(visibility: public)
    open func _query() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorFileSystemImportFormatSupportQuery.method__query, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_file_extensions":
                return _EditorFileSystemImportFormatSupportQuery_proxy_get_file_extensions
            case "_is_active":
                return _EditorFileSystemImportFormatSupportQuery_proxy_is_active
            case "_query":
                return _EditorFileSystemImportFormatSupportQuery_proxy_query
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _EditorFileSystemImportFormatSupportQuery_proxy_get_file_extensions (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorFileSystemImportFormatSupportQuery else { return }
    let ret = swiftObject._getFileExtensions ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _EditorFileSystemImportFormatSupportQuery_proxy_is_active (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorFileSystemImportFormatSupportQuery else { return }
    let ret = swiftObject._isActive ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorFileSystemImportFormatSupportQuery_proxy_query (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorFileSystemImportFormatSupportQuery else { return }
    let ret = swiftObject._query ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

