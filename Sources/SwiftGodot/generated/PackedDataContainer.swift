// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Efficiently packs and serializes ``GArray`` or ``GDictionary``.
/// 
/// ``PackedDataContainer`` can be used to efficiently store data from untyped containers. The data is packed into raw bytes and can be saved to file. Only ``GArray`` and ``GDictionary`` can be stored this way.
/// 
/// You can retrieve the data by iterating on the container, which will work as if iterating on the packed data itself. If the packed container is a ``GDictionary``, the data can be retrieved by key names (``String``/``StringName`` only).
/// 
/// Nested containers will be packed recursively. While iterating, they will be returned as ``PackedDataContainerRef``.
/// 
open class PackedDataContainer: Resource {
    override open class var godotClassName: StringName { "PackedDataContainer" }
    /* Methods */
    fileprivate static var method_pack: GDExtensionMethodBindPtr = {
        let methodName = StringName ("pack")
        return withUnsafePointer (to: &PackedDataContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 966674026)!
            }
            
        }
        
    }()
    
    /// Packs the given container into a binary representation. The `value` must be either ``GArray`` or ``GDictionary``, any other type will result in invalid data error.
    /// 
    /// > Note: Subsequent calls to this method will overwrite the existing data.
    /// 
    public final func pack (value: Variant)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        
        gi.object_method_bind_ptrcall_v (PackedDataContainer.method_pack, UnsafeMutableRawPointer (mutating: handle), &_result, &value.content)
        return GodotError (rawValue: _result)!
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &value.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PackedDataContainer.method_pack, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return GodotError (rawValue: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("size")
        return withUnsafePointer (to: &PackedDataContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the size of the packed container (see ``Array/size()`` and ``Dictionary/size()``).
    public final func size ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (PackedDataContainer.method_size, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}
