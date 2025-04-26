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


/// Base class for reference-counted objects.
/// 
/// Base class for any object that keeps a reference count. ``Resource`` and many other helper objects inherit this class.
/// 
/// Unlike other ``Object`` types, ``RefCounted``s keep an internal reference counter so that they are automatically released when no longer in use, and only then. ``RefCounted``s therefore do not need to be freed manually with ``Object/free()``.
/// 
/// ``RefCounted`` instances caught in a cyclic reference will **not** be freed automatically. For example, if a node holds a reference to instance `A`, which directly or indirectly holds a reference back to `A`, `A`'s reference count will be 2. Destruction of the node will leave `A` dangling with a reference count of 1, and there will be a memory leak. To prevent this, one of the references in the cycle can be made weak with ``@GlobalScope.weakref``.
/// 
/// In the vast majority of use cases, instantiating and using ``RefCounted``-derived types is all you need to do. The methods provided in this class are only for advanced users, and can cause issues if misused.
/// 
/// > Note: In C#, reference-counted objects will not be freed instantly after they are no longer in use. Instead, garbage collection will run periodically and will free reference-counted objects that are no longer in use. This means that unused ones will remain in memory for a while before being removed.
/// 
open class RefCounted: Object {
    private static var className = StringName("RefCounted")
    override open class var godotClassName: StringName { className }
    public required init () {
        super.init ()
        _ = initRef()
    }
    
    public required init(nativeHandle: UnsafeRawPointer) {
        super.init (nativeHandle: nativeHandle)
    }
    
    /* Methods */
    fileprivate static let method_init_ref: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("init_ref")
        return withUnsafePointer(to: &RefCounted.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Initializes the internal reference counter. Use this only if you really know what you are doing.
    /// 
    /// Returns whether the initialization was successful.
    /// 
    public final func initRef() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RefCounted.method_init_ref, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_reference: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("reference")
        return withUnsafePointer(to: &RefCounted.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Increments the internal reference counter. Use this only if you really know what you are doing.
    /// 
    /// Returns `true` if the increment was successful, `false` otherwise.
    /// 
    @discardableResult /* discardable per discardableList: RefCounted, reference */ 
    public final func reference() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RefCounted.method_reference, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    static let method_unreference: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("unreference")
        return withUnsafePointer(to: &RefCounted.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Decrements the internal reference counter. Use this only if you really know what you are doing.
    /// 
    /// Returns `true` if the object should be freed after the decrement, `false` otherwise.
    /// 
    @discardableResult /* discardable per discardableList: RefCounted, unreference */ 
    public final func unreference() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RefCounted.method_unreference, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_reference_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_reference_count")
        return withUnsafePointer(to: &RefCounted.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the current reference count.
    public final func getReferenceCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(RefCounted.method_get_reference_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    /// Internal API
    public final override func _macroRcRef() {
        reference()
    }
    
    /// Internal API
    public final override func _macroRcUnref() {
        unreference()
    }
    
}

