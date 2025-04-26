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


/// Collection of ``OpenXRAction`` resources that make up an action set.
/// 
/// Action sets in OpenXR define a collection of actions that can be activated in unison. This allows games to easily change between different states that require different inputs or need to reinterpret inputs. For instance we could have an action set that is active when a menu is open, an action set that is active when the player is freely walking around and an action set that is active when the player is controlling a vehicle.
/// 
/// Action sets can contain the same action with the same name, if such action sets are active at the same time the action set with the highest priority defines which binding is active.
/// 
open class OpenXRActionSet: Resource {
    private static var className = StringName("OpenXRActionSet")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The localized name of this action set.
    final public var localizedName: String {
        get {
            return get_localized_name ()
        }
        
        set {
            set_localized_name (newValue)
        }
        
    }
    
    /// The priority for this action set.
    final public var priority: Int32 {
        get {
            return get_priority ()
        }
        
        set {
            set_priority (newValue)
        }
        
    }
    
    /// Collection of actions for this action set.
    final public var actions: VariantArray {
        get {
            return get_actions ()
        }
        
        set {
            set_actions (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_localized_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_localized_name")
        return withUnsafePointer(to: &OpenXRActionSet.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_localized_name(_ localizedName: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let localizedName = GString(localizedName)
        withUnsafePointer(to: localizedName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRActionSet.method_set_localized_name, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_localized_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_localized_name")
        return withUnsafePointer(to: &OpenXRActionSet.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_localized_name() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(OpenXRActionSet.method_get_localized_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_priority: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_priority")
        return withUnsafePointer(to: &OpenXRActionSet.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_priority(_ priority: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: priority) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRActionSet.method_set_priority, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_priority: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_priority")
        return withUnsafePointer(to: &OpenXRActionSet.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_priority() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(OpenXRActionSet.method_get_priority, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_action_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_action_count")
        return withUnsafePointer(to: &OpenXRActionSet.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Retrieve the number of actions in our action set.
    public final func getActionCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(OpenXRActionSet.method_get_action_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_actions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_actions")
        return withUnsafePointer(to: &OpenXRActionSet.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_actions(_ actions: VariantArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: actions.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRActionSet.method_set_actions, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_actions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_actions")
        return withUnsafePointer(to: &OpenXRActionSet.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_actions() -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        gi.object_method_bind_ptrcall(OpenXRActionSet.method_get_actions, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_add_action: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_action")
        return withUnsafePointer(to: &OpenXRActionSet.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 349361333)!
            }
            
        }
        
    }()
    
    /// Add an action to this action set.
    public final func addAction(_ action: OpenXRAction?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: action?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRActionSet.method_add_action, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_action: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_action")
        return withUnsafePointer(to: &OpenXRActionSet.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 349361333)!
            }
            
        }
        
    }()
    
    /// Remove an action from this action set.
    public final func removeAction(_ action: OpenXRAction?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: action?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRActionSet.method_remove_action, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}

