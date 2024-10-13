// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Shader uniform (used by ``RenderingDevice``).
/// 
/// This object is used by ``RenderingDevice``.
open class RDUniform: RefCounted {
    override open class var godotClassName: StringName { "RDUniform" }
    
    /* Properties */
    
    /// The uniform's data type.
    final public var uniformType: RenderingDevice.UniformType {
        get {
            return get_uniform_type ()
        }
        
        set {
            set_uniform_type (newValue)
        }
        
    }
    
    /// The uniform's binding.
    final public var binding: Int32 {
        get {
            return get_binding ()
        }
        
        set {
            set_binding (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_uniform_type: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_uniform_type")
        return withUnsafePointer(to: &RDUniform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1664894931)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_uniform_type(_ pMember: RenderingDevice.UniformType) {
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDUniform.method_set_uniform_type, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_uniform_type: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_uniform_type")
        return withUnsafePointer(to: &RDUniform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 475470040)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_uniform_type() -> RenderingDevice.UniformType {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDUniform.method_get_uniform_type, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return RenderingDevice.UniformType (rawValue: _result)!
    }
    
    fileprivate static var method_set_binding: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_binding")
        return withUnsafePointer(to: &RDUniform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_binding(_ pMember: Int32) {
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDUniform.method_set_binding, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_binding: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_binding")
        return withUnsafePointer(to: &RDUniform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_binding() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(RDUniform.method_get_binding, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_add_id: GDExtensionMethodBindPtr = {
        let methodName = StringName("add_id")
        return withUnsafePointer(to: &RDUniform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// Binds the given id to the uniform. The data associated with the id is then used when the uniform is passed to a shader.
    public final func addId(_ id: RID) {
        withUnsafePointer(to: id.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDUniform.method_add_id, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_clear_ids: GDExtensionMethodBindPtr = {
        let methodName = StringName("clear_ids")
        return withUnsafePointer(to: &RDUniform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Unbinds all ids currently bound to the uniform.
    public final func clearIds() {
        gi.object_method_bind_ptrcall(RDUniform.method_clear_ids, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static var method_get_ids: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_ids")
        return withUnsafePointer(to: &RDUniform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns an array of all ids currently bound to the uniform.
    public final func getIds() -> VariantCollection<RID> {
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(RDUniform.method_get_ids, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return VariantCollection<RID>(content: _result)
    }
    
}

