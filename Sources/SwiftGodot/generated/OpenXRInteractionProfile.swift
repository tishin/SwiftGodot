// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Suggested bindings object for OpenXR.
/// 
/// This object stores suggested bindings for an interaction profile. Interaction profiles define the metadata for a tracked XR device such as an XR controller.
/// 
/// For more information see the [url=https://www.khronos.org/registry/OpenXR/specs/1.0/html/xrspec.html#semantic-path-interaction-profiles]interaction profiles info in the OpenXR specification</a>.
/// 
open class OpenXRInteractionProfile: Resource {
    override open class var godotClassName: StringName { "OpenXRInteractionProfile" }
    
    /* Properties */
    
    /// The interaction profile path identifying the XR device.
    final public var interactionProfilePath: String {
        get {
            return get_interaction_profile_path ()
        }
        
        set {
            set_interaction_profile_path (newValue)
        }
        
    }
    
    /// Action bindings for this interaction profile.
    final public var bindings: GArray {
        get {
            return get_bindings ()
        }
        
        set {
            set_bindings (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_interaction_profile_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_interaction_profile_path")
        return withUnsafePointer (to: &OpenXRInteractionProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_interaction_profile_path (_ interactionProfilePath: String) {
        #if true
        
        let gstr_interaction_profile_path = GString (interactionProfilePath)
        
        gi.object_method_bind_ptrcall_v (OpenXRInteractionProfile.method_set_interaction_profile_path, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_interaction_profile_path.content)
        
        #else
        
        let gstr_interaction_profile_path = GString (interactionProfilePath)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_interaction_profile_path.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (OpenXRInteractionProfile.method_set_interaction_profile_path, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_interaction_profile_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_interaction_profile_path")
        return withUnsafePointer (to: &OpenXRInteractionProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_interaction_profile_path ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (OpenXRInteractionProfile.method_get_interaction_profile_path, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_get_binding_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_binding_count")
        return withUnsafePointer (to: &OpenXRInteractionProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Get the number of bindings in this interaction profile.
    public final func getBindingCount ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (OpenXRInteractionProfile.method_get_binding_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_binding: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_binding")
        return withUnsafePointer (to: &OpenXRInteractionProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3934429652)!
            }
            
        }
        
    }()
    
    /// Retrieve the binding at this index.
    public final func getBinding (index: Int32)-> OpenXRIPBinding? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if true
        
        var copy_index: Int = Int (index)
        
        gi.object_method_bind_ptrcall_v (OpenXRInteractionProfile.method_get_binding, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_index)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        var copy_index: Int = Int (index)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (OpenXRInteractionProfile.method_get_binding, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_set_bindings: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_bindings")
        return withUnsafePointer (to: &OpenXRInteractionProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bindings (_ bindings: GArray) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (OpenXRInteractionProfile.method_set_bindings, UnsafeMutableRawPointer (mutating: handle), nil, &bindings.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &bindings.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (OpenXRInteractionProfile.method_set_bindings, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_bindings: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_bindings")
        return withUnsafePointer (to: &OpenXRInteractionProfile.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bindings ()-> GArray {
        let _result: GArray = GArray ()
        gi.object_method_bind_ptrcall (OpenXRInteractionProfile.method_get_bindings, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
}

