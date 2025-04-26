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


/// Efficiently packs and serializes ``VariantArray`` or ``VariantDictionary``.
/// 
/// ``PackedDataContainer`` can be used to efficiently store data from untyped containers. The data is packed into raw bytes and can be saved to file. Only ``VariantArray`` and ``VariantDictionary`` can be stored this way.
/// 
/// You can retrieve the data by iterating on the container, which will work as if iterating on the packed data itself. If the packed container is a ``VariantDictionary``, the data can be retrieved by key names (``String``/``StringName`` only).
/// 
/// Prints:
/// 
/// Nested containers will be packed recursively. While iterating, they will be returned as ``PackedDataContainerRef``.
/// 
open class PackedDataContainer: Resource {
    private static var className = StringName("PackedDataContainer")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_pack: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("pack")
        return withUnsafePointer(to: &PackedDataContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 966674026)!
            }
            
        }
        
    }()
    
    /// Packs the given container into a binary representation. The `value` must be either ``VariantArray`` or ``VariantDictionary``, any other type will result in invalid data error.
    /// 
    /// > Note: Subsequent calls to this method will overwrite the existing data.
    /// 
    public final func pack(value: Variant?) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: value.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PackedDataContainer.method_pack, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("size")
        return withUnsafePointer(to: &PackedDataContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the size of the packed container (see ``VariantArray/size()`` and ``VariantDictionary/size()``).
    public final func size() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(PackedDataContainer.method_size, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

