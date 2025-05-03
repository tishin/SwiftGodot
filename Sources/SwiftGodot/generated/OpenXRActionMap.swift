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


/// Collection of ``OpenXRActionSet`` and ``OpenXRInteractionProfile`` resources for the OpenXR module.
/// 
/// OpenXR uses an action system similar to Godots Input map system to bind inputs and outputs on various types of XR controllers to named actions. OpenXR specifies more detail on these inputs and outputs than Godot supports.
/// 
/// Another important distinction is that OpenXR offers no control over these bindings. The bindings we register are suggestions, it is up to the XR runtime to offer users the ability to change these bindings. This allows the XR runtime to fill in the gaps if new hardware becomes available.
/// 
/// The action map therefore needs to be loaded at startup and can't be changed afterwards. This resource is a container for the entire action map.
/// 
open class OpenXRActionMap: Resource {
    private static var className = StringName("OpenXRActionMap")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Collection of ``OpenXRActionSet``s that are part of this action map.
    final public var actionSets: VariantArray {
        get {
            return get_action_sets ()
        }
        
        set {
            set_action_sets (newValue)
        }
        
    }
    
    /// Collection of ``OpenXRInteractionProfile``s that are part of this action map.
    final public var interactionProfiles: VariantArray {
        get {
            return get_interaction_profiles ()
        }
        
        set {
            set_interaction_profiles (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_action_sets: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_action_sets")
        return withUnsafePointer(to: &OpenXRActionMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_action_sets(_ actionSets: VariantArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: actionSets.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRActionMap.method_set_action_sets, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_action_sets: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_action_sets")
        return withUnsafePointer(to: &OpenXRActionMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_action_sets() -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        gi.object_method_bind_ptrcall(OpenXRActionMap.method_get_action_sets, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_action_set_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_action_set_count")
        return withUnsafePointer(to: &OpenXRActionMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Retrieve the number of actions sets in our action map.
    public final func getActionSetCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(OpenXRActionMap.method_get_action_set_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_find_action_set: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("find_action_set")
        return withUnsafePointer(to: &OpenXRActionMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1888809267)!
            }
            
        }
        
    }()
    
    /// Retrieve an action set by name.
    public final func findActionSet(name: String) -> OpenXRActionSet? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRActionMap.method_find_action_set, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_action_set: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_action_set")
        return withUnsafePointer(to: &OpenXRActionMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1789580336)!
            }
            
        }
        
    }()
    
    /// Retrieve the action set at this index.
    public final func getActionSet(idx: Int32) -> OpenXRActionSet? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRActionMap.method_get_action_set, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_add_action_set: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_action_set")
        return withUnsafePointer(to: &OpenXRActionMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2093310581)!
            }
            
        }
        
    }()
    
    /// Add an action set.
    public final func addActionSet(_ actionSet: OpenXRActionSet?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: actionSet?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRActionMap.method_add_action_set, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_action_set: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_action_set")
        return withUnsafePointer(to: &OpenXRActionMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2093310581)!
            }
            
        }
        
    }()
    
    /// Remove an action set.
    public final func removeActionSet(_ actionSet: OpenXRActionSet?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: actionSet?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRActionMap.method_remove_action_set, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_interaction_profiles: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_interaction_profiles")
        return withUnsafePointer(to: &OpenXRActionMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_interaction_profiles(_ interactionProfiles: VariantArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: interactionProfiles.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRActionMap.method_set_interaction_profiles, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_interaction_profiles: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_interaction_profiles")
        return withUnsafePointer(to: &OpenXRActionMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_interaction_profiles() -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        gi.object_method_bind_ptrcall(OpenXRActionMap.method_get_interaction_profiles, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_interaction_profile_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_interaction_profile_count")
        return withUnsafePointer(to: &OpenXRActionMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Retrieve the number of interaction profiles in our action map.
    public final func getInteractionProfileCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(OpenXRActionMap.method_get_interaction_profile_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_find_interaction_profile: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("find_interaction_profile")
        return withUnsafePointer(to: &OpenXRActionMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3095875538)!
            }
            
        }
        
    }()
    
    /// Find an interaction profile by its name (path).
    public final func findInteractionProfile(name: String) -> OpenXRInteractionProfile? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRActionMap.method_find_interaction_profile, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_interaction_profile: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_interaction_profile")
        return withUnsafePointer(to: &OpenXRActionMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2546151210)!
            }
            
        }
        
    }()
    
    /// Get the interaction profile at this index.
    public final func getInteractionProfile(idx: Int32) -> OpenXRInteractionProfile? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRActionMap.method_get_interaction_profile, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_add_interaction_profile: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_interaction_profile")
        return withUnsafePointer(to: &OpenXRActionMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2697953512)!
            }
            
        }
        
    }()
    
    /// Add an interaction profile.
    public final func addInteractionProfile(_ interactionProfile: OpenXRInteractionProfile?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: interactionProfile?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRActionMap.method_add_interaction_profile, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_interaction_profile: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_interaction_profile")
        return withUnsafePointer(to: &OpenXRActionMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2697953512)!
            }
            
        }
        
    }()
    
    /// Remove an interaction profile.
    public final func removeInteractionProfile(_ interactionProfile: OpenXRInteractionProfile?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: interactionProfile?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRActionMap.method_remove_interaction_profile, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_create_default_action_sets: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_default_action_sets")
        return withUnsafePointer(to: &OpenXRActionMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Setup this action set with our default actions.
    public final func createDefaultActionSets() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(OpenXRActionMap.method_create_default_action_sets, handle, nil, nil)
        
    }
    
}

