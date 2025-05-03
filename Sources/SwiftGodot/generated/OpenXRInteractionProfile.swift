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


/// Suggested bindings object for OpenXR.
/// 
/// This object stores suggested bindings for an interaction profile. Interaction profiles define the metadata for a tracked XR device such as an XR controller.
/// 
/// For more information see the <a href="https://www.khronos.org/registry/OpenXR/specs/1.0/html/xrspec.html#semantic-path-interaction-profiles">interaction profiles info in the OpenXR specification</a>.
/// 
open class OpenXRInteractionProfile: Resource {
    private static var className = StringName("OpenXRInteractionProfile")
    override open class var godotClassName: StringName { className }
    
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
    final public var bindings: VariantArray {
        get {
            return get_bindings ()
        }
        
        set {
            set_bindings (newValue)
        }
        
    }
    
    /// Binding modifiers for this interaction profile.
    final public var bindingModifiers: VariantArray {
        get {
            return get_binding_modifiers ()
        }
        
        set {
            set_binding_modifiers (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_interaction_profile_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_interaction_profile_path")
        return withUnsafePointer(to: &OpenXRInteractionProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_interaction_profile_path(_ interactionProfilePath: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let interactionProfilePath = GString(interactionProfilePath)
        withUnsafePointer(to: interactionProfilePath.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRInteractionProfile.method_set_interaction_profile_path, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_interaction_profile_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_interaction_profile_path")
        return withUnsafePointer(to: &OpenXRInteractionProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_interaction_profile_path() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(OpenXRInteractionProfile.method_get_interaction_profile_path, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_binding_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_binding_count")
        return withUnsafePointer(to: &OpenXRInteractionProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Get the number of bindings in this interaction profile.
    public final func getBindingCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(OpenXRInteractionProfile.method_get_binding_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_binding: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_binding")
        return withUnsafePointer(to: &OpenXRInteractionProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3934429652)!
            }
            
        }
        
    }()
    
    /// Retrieve the binding at this index.
    public final func getBinding(index: Int32) -> OpenXRIPBinding? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRInteractionProfile.method_get_binding, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_bindings: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bindings")
        return withUnsafePointer(to: &OpenXRInteractionProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bindings(_ bindings: VariantArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: bindings.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRInteractionProfile.method_set_bindings, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_bindings: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bindings")
        return withUnsafePointer(to: &OpenXRInteractionProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bindings() -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        gi.object_method_bind_ptrcall(OpenXRInteractionProfile.method_get_bindings, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_binding_modifier_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_binding_modifier_count")
        return withUnsafePointer(to: &OpenXRInteractionProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Get the number of binding modifiers in this interaction profile.
    public final func getBindingModifierCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(OpenXRInteractionProfile.method_get_binding_modifier_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_binding_modifier: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_binding_modifier")
        return withUnsafePointer(to: &OpenXRInteractionProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2419896583)!
            }
            
        }
        
    }()
    
    /// Get the ``OpenXRBindingModifier`` at this index.
    public final func getBindingModifier(index: Int32) -> OpenXRIPBindingModifier? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRInteractionProfile.method_get_binding_modifier, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_binding_modifiers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_binding_modifiers")
        return withUnsafePointer(to: &OpenXRInteractionProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_binding_modifiers(_ bindingModifiers: VariantArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: bindingModifiers.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRInteractionProfile.method_set_binding_modifiers, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_binding_modifiers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_binding_modifiers")
        return withUnsafePointer(to: &OpenXRInteractionProfile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_binding_modifiers() -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        gi.object_method_bind_ptrcall(OpenXRInteractionProfile.method_get_binding_modifiers, handle, nil, &_result.content)
        return _result
    }
    
}

