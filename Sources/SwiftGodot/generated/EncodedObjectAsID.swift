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


/// Holds a reference to an ``Object``'s instance ID.
/// 
/// Utility class which holds a reference to the internal identifier of an ``Object`` instance, as given by ``Object/getInstanceId()``. This ID can then be used to retrieve the object instance with ``@GlobalScope.instance_from_id``.
/// 
/// This class is used internally by the editor inspector and script debugger, but can also be used in plugins to pass and display objects as their IDs.
/// 
open class EncodedObjectAsID: RefCounted {
    private static var className = StringName("EncodedObjectAsID")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The ``Object`` identifier stored in this ``EncodedObjectAsID`` instance. The object instance can be retrieved with ``@GlobalScope.instance_from_id``.
    final public var objectId: UInt {
        get {
            return get_object_id ()
        }
        
        set {
            set_object_id (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_object_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_object_id")
        return withUnsafePointer(to: &EncodedObjectAsID.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_object_id(_ id: UInt) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EncodedObjectAsID.method_set_object_id, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_object_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_object_id")
        return withUnsafePointer(to: &EncodedObjectAsID.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_object_id() -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        gi.object_method_bind_ptrcall(EncodedObjectAsID.method_get_object_id, handle, nil, &_result)
        return _result
    }
    
}

