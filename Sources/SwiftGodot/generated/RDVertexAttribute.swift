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


/// Vertex attribute (used by ``RenderingDevice``).
/// 
/// This object is used by ``RenderingDevice``.
open class RDVertexAttribute: RefCounted {
    private static var className = StringName("RDVertexAttribute")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The location in the shader that this attribute is bound to.
    final public var location: UInt32 {
        get {
            return get_location ()
        }
        
        set {
            set_location (newValue)
        }
        
    }
    
    /// The number of bytes between the start of the vertex buffer and the first instance of this attribute.
    final public var offset: UInt32 {
        get {
            return get_offset ()
        }
        
        set {
            set_offset (newValue)
        }
        
    }
    
    /// The way that this attribute's data is interpreted when sent to a shader.
    final public var format: RenderingDevice.DataFormat {
        get {
            return get_format ()
        }
        
        set {
            set_format (newValue)
        }
        
    }
    
    /// The number of bytes between the starts of consecutive instances of this attribute.
    final public var stride: UInt32 {
        get {
            return get_stride ()
        }
        
        set {
            set_stride (newValue)
        }
        
    }
    
    /// The rate at which this attribute is pulled from its vertex buffer.
    final public var frequency: RenderingDevice.VertexFrequency {
        get {
            return get_frequency ()
        }
        
        set {
            set_frequency (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_location: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_location")
        return withUnsafePointer(to: &RDVertexAttribute.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_location(_ pMember: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDVertexAttribute.method_set_location, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_location: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_location")
        return withUnsafePointer(to: &RDVertexAttribute.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_location() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(RDVertexAttribute.method_get_location, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_offset")
        return withUnsafePointer(to: &RDVertexAttribute.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_offset(_ pMember: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDVertexAttribute.method_set_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_offset")
        return withUnsafePointer(to: &RDVertexAttribute.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_offset() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(RDVertexAttribute.method_get_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_format: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_format")
        return withUnsafePointer(to: &RDVertexAttribute.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 565531219)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_format(_ pMember: RenderingDevice.DataFormat) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDVertexAttribute.method_set_format, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_format: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_format")
        return withUnsafePointer(to: &RDVertexAttribute.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2235804183)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_format() -> RenderingDevice.DataFormat {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDVertexAttribute.method_get_format, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return RenderingDevice.DataFormat (rawValue: _result)!
    }
    
    fileprivate static let method_set_stride: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_stride")
        return withUnsafePointer(to: &RDVertexAttribute.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_stride(_ pMember: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDVertexAttribute.method_set_stride, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_stride: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_stride")
        return withUnsafePointer(to: &RDVertexAttribute.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_stride() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(RDVertexAttribute.method_get_stride, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_frequency: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_frequency")
        return withUnsafePointer(to: &RDVertexAttribute.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 522141836)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_frequency(_ pMember: RenderingDevice.VertexFrequency) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDVertexAttribute.method_set_frequency, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_frequency: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_frequency")
        return withUnsafePointer(to: &RDVertexAttribute.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4154106413)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_frequency() -> RenderingDevice.VertexFrequency {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDVertexAttribute.method_get_frequency, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return RenderingDevice.VertexFrequency (rawValue: _result)!
    }
    
}

