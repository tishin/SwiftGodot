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


/// An internal class used by ``PackedDataContainer`` to pack nested arrays and dictionaries.
/// 
/// When packing nested containers using ``PackedDataContainer``, they are recursively packed into ``PackedDataContainerRef`` (only applies to ``VariantArray`` and ``VariantDictionary``). Their data can be retrieved the same way as from ``PackedDataContainer``.
/// 
/// Prints:
/// 
open class PackedDataContainerRef: RefCounted {
    private static var className = StringName("PackedDataContainerRef")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("size")
        return withUnsafePointer(to: &PackedDataContainerRef.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the size of the packed container (see ``VariantArray/size()`` and ``VariantDictionary/size()``).
    public final func size() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(PackedDataContainerRef.method_size, handle, nil, &_result)
        return _result
    }
    
}

