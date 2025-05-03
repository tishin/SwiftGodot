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


/// Shader uniform (used by ``RenderingDevice``).
/// 
/// This object is used by ``RenderingDevice``.
open class RDUniform: RefCounted {
    private static var className = StringName("RDUniform")
    override open class var godotClassName: StringName { className }
    
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
    fileprivate static let method_set_uniform_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_uniform_type")
        return withUnsafePointer(to: &RDUniform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1664894931)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_uniform_type(_ pMember: RenderingDevice.UniformType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDUniform.method_set_uniform_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_uniform_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_uniform_type")
        return withUnsafePointer(to: &RDUniform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 475470040)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_uniform_type() -> RenderingDevice.UniformType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDUniform.method_get_uniform_type, handle, nil, &_result)
        return RenderingDevice.UniformType (rawValue: _result)!
    }
    
    fileprivate static let method_set_binding: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_binding")
        return withUnsafePointer(to: &RDUniform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_binding(_ pMember: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDUniform.method_set_binding, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_binding: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_binding")
        return withUnsafePointer(to: &RDUniform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_binding() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(RDUniform.method_get_binding, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_add_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_id")
        return withUnsafePointer(to: &RDUniform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// Binds the given id to the uniform. The data associated with the id is then used when the uniform is passed to a shader.
    public final func addId(_ id: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDUniform.method_add_id, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_clear_ids: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_ids")
        return withUnsafePointer(to: &RDUniform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Unbinds all ids currently bound to the uniform.
    public final func clearIds() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(RDUniform.method_clear_ids, handle, nil, nil)
        
    }
    
    fileprivate static let method_get_ids: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_ids")
        return withUnsafePointer(to: &RDUniform.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns an array of all ids currently bound to the uniform.
    public final func getIds() -> TypedArray<RID> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(RDUniform.method_get_ids, handle, nil, &_result)
        return TypedArray<RID>(takingOver: _result)
    }
    
}

