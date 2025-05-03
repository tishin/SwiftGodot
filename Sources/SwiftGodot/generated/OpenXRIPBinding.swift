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


/// Defines a binding between an ``OpenXRAction`` and an XR input or output.
/// 
/// This binding resource binds an ``OpenXRAction`` to an input or output. As most controllers have left hand and right versions that are handled by the same interaction profile we can specify multiple bindings. For instance an action "Fire" could be bound to both "/user/hand/left/input/trigger" and "/user/hand/right/input/trigger". This would require two binding entries.
open class OpenXRIPBinding: Resource {
    private static var className = StringName("OpenXRIPBinding")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// ``OpenXRAction`` that is bound to ``bindingPath``.
    final public var action: OpenXRAction? {
        get {
            return get_action ()
        }
        
        set {
            set_action (newValue)
        }
        
    }
    
    /// Binding path that defines the input or output bound to ``action``.
    /// 
    /// > Note: Binding paths are suggestions, an XR runtime may choose to bind the action to a different input or output emulating this input or output.
    /// 
    final public var bindingPath: String {
        get {
            return get_binding_path ()
        }
        
        set {
            set_binding_path (newValue)
        }
        
    }
    
    /// Binding modifiers for this binding.
    final public var bindingModifiers: VariantArray {
        get {
            return get_binding_modifiers ()
        }
        
        set {
            set_binding_modifiers (newValue)
        }
        
    }
    
    /// Paths that define the inputs or outputs bound on the device.
    final public var paths: PackedStringArray {
        get {
            return get_paths ()
        }
        
        set {
            set_paths (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_action: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_action")
        return withUnsafePointer(to: &OpenXRIPBinding.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 349361333)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_action(_ action: OpenXRAction?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: action?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRIPBinding.method_set_action, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_action: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_action")
        return withUnsafePointer(to: &OpenXRIPBinding.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4072409085)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_action() -> OpenXRAction? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(OpenXRIPBinding.method_get_action, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_binding_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_binding_path")
        return withUnsafePointer(to: &OpenXRIPBinding.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_binding_path(_ bindingPath: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let bindingPath = GString(bindingPath)
        withUnsafePointer(to: bindingPath.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRIPBinding.method_set_binding_path, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_binding_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_binding_path")
        return withUnsafePointer(to: &OpenXRIPBinding.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_binding_path() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(OpenXRIPBinding.method_get_binding_path, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_binding_modifier_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_binding_modifier_count")
        return withUnsafePointer(to: &OpenXRIPBinding.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Get the number of binding modifiers for this binding.
    public final func getBindingModifierCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(OpenXRIPBinding.method_get_binding_modifier_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_binding_modifier: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_binding_modifier")
        return withUnsafePointer(to: &OpenXRIPBinding.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3538296211)!
            }
            
        }
        
    }()
    
    /// Get the ``OpenXRBindingModifier`` at this index.
    public final func getBindingModifier(index: Int32) -> OpenXRActionBindingModifier? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRIPBinding.method_get_binding_modifier, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_binding_modifiers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_binding_modifiers")
        return withUnsafePointer(to: &OpenXRIPBinding.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(OpenXRIPBinding.method_set_binding_modifiers, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_binding_modifiers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_binding_modifiers")
        return withUnsafePointer(to: &OpenXRIPBinding.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_binding_modifiers() -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        gi.object_method_bind_ptrcall(OpenXRIPBinding.method_get_binding_modifiers, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_paths: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_paths")
        return withUnsafePointer(to: &OpenXRIPBinding.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4015028928)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_paths(_ paths: PackedStringArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: paths.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRIPBinding.method_set_paths, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_paths: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_paths")
        return withUnsafePointer(to: &OpenXRIPBinding.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_paths() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(OpenXRIPBinding.method_get_paths, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_path_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_path_count")
        return withUnsafePointer(to: &OpenXRIPBinding.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Get the number of input/output paths in this binding.
    public final func getPathCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(OpenXRIPBinding.method_get_path_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_has_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_path")
        return withUnsafePointer(to: &OpenXRIPBinding.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this input/output path is part of this binding.
    public final func hasPath(_ path: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRIPBinding.method_has_path, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_add_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_path")
        return withUnsafePointer(to: &OpenXRIPBinding.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Add an input/output path to this binding.
    public final func addPath(_ path: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRIPBinding.method_add_path, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_path")
        return withUnsafePointer(to: &OpenXRIPBinding.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Removes this input/output path from this binding.
    public final func removePath(_ path: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRIPBinding.method_remove_path, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}

