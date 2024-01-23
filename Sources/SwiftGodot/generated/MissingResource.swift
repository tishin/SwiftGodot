// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// An internal editor class intended for keeping the data of unrecognized resources.
/// 
/// This is an internal editor class intended for keeping data of resources of unknown type (most likely this type was supplied by an extension that is no longer loaded). It can't be manually instantiated or placed in the scene. Ignore it if you don't know what it is.
open class MissingResource: Resource {
    override open class var godotClassName: StringName { "MissingResource" }
    
    /* Properties */
    
    /// Returns the name of the class this resource was originally.
    final public var originalClass: String {
        get {
            return get_original_class ()
        }
        
        set {
            set_original_class (newValue)
        }
        
    }
    
    final public var recordingProperties: Bool {
        get {
            return is_recording_properties ()
        }
        
        set {
            set_recording_properties (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_original_class: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_original_class")
        return withUnsafePointer (to: &MissingResource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_original_class (_ name: String) {
        #if true
        
        let gstr_name = GString (name)
        
        gi.object_method_bind_ptrcall_v (MissingResource.method_set_original_class, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_name.content)
        
        #else
        
        let gstr_name = GString (name)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_name.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MissingResource.method_set_original_class, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_original_class: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_original_class")
        return withUnsafePointer (to: &MissingResource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_original_class ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (MissingResource.method_get_original_class, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_set_recording_properties: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_recording_properties")
        return withUnsafePointer (to: &MissingResource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_recording_properties (_ enable: Bool) {
        #if true
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (MissingResource.method_set_recording_properties, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (MissingResource.method_set_recording_properties, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_recording_properties: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_recording_properties")
        return withUnsafePointer (to: &MissingResource.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_recording_properties ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (MissingResource.method_is_recording_properties, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

