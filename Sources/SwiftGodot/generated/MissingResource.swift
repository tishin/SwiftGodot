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


/// An internal editor class intended for keeping the data of unrecognized resources.
/// 
/// This is an internal editor class intended for keeping data of resources of unknown type (most likely this type was supplied by an extension that is no longer loaded). It can't be manually instantiated or placed in a scene.
/// 
/// > Warning: Ignore missing resources unless you know what you are doing. Existing properties on a missing resource can be freely modified in code, regardless of the type they are intended to be.
/// 
open class MissingResource: Resource {
    private static var className = StringName("MissingResource")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The name of the class this resource was supposed to be (see ``Object/getClass()``).
    final public var originalClass: String {
        get {
            return get_original_class ()
        }
        
        set {
            set_original_class (newValue)
        }
        
    }
    
    /// If set to `true`, allows new properties to be added on top of the existing ones with ``Object/set(property:value:)``.
    final public var recordingProperties: Bool {
        get {
            return is_recording_properties ()
        }
        
        set {
            set_recording_properties (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_original_class: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_original_class")
        return withUnsafePointer(to: &MissingResource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_original_class(_ name: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MissingResource.method_set_original_class, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_original_class: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_original_class")
        return withUnsafePointer(to: &MissingResource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_original_class() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(MissingResource.method_get_original_class, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_recording_properties: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_recording_properties")
        return withUnsafePointer(to: &MissingResource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_recording_properties(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MissingResource.method_set_recording_properties, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_recording_properties: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_recording_properties")
        return withUnsafePointer(to: &MissingResource.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_recording_properties() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(MissingResource.method_is_recording_properties, handle, nil, &_result)
        return _result
    }
    
}

