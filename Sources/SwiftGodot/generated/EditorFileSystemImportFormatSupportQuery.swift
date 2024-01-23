// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Used to query and configure import format support.
/// 
/// This class is used to query and configure a certain import format. It is used in conjunction with asset format import plugins.
open class EditorFileSystemImportFormatSupportQuery: RefCounted {
    override open class var godotClassName: StringName { "EditorFileSystemImportFormatSupportQuery" }
    /* Methods */
    /// Return whether this importer is active.
    @_documentation(visibility: public)
    open func _isActive ()-> Bool {
        return false
    }
    
    /// Return the file extensions supported.
    @_documentation(visibility: public)
    open func _getFileExtensions ()-> PackedStringArray {
        return PackedStringArray ()
    }
    
    /// Query support. Return false if import must not continue.
    @_documentation(visibility: public)
    open func _query ()-> Bool {
        return false
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
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
    let swiftObject = Unmanaged<EditorFileSystemImportFormatSupportQuery>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getFileExtensions ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _EditorFileSystemImportFormatSupportQuery_proxy_is_active (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<EditorFileSystemImportFormatSupportQuery>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._isActive ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _EditorFileSystemImportFormatSupportQuery_proxy_query (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<EditorFileSystemImportFormatSupportQuery>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._query ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

