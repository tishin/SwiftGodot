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


/// Pipeline color blend state (used by ``RenderingDevice``).
/// 
/// This object is used by ``RenderingDevice``.
open class RDPipelineColorBlendState: RefCounted {
    private static var className = StringName("RDPipelineColorBlendState")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// If `true`, performs the logic operation defined in ``logicOp``.
    final public var enableLogicOp: Bool {
        get {
            return get_enable_logic_op ()
        }
        
        set {
            set_enable_logic_op (newValue)
        }
        
    }
    
    /// The logic operation to perform for blending. Only effective if ``enableLogicOp`` is `true`.
    final public var logicOp: RenderingDevice.LogicOperation {
        get {
            return get_logic_op ()
        }
        
        set {
            set_logic_op (newValue)
        }
        
    }
    
    /// The constant color to blend with. See also ``RenderingDevice/drawListSetBlendConstants(drawList:color:)``.
    final public var blendConstant: Color {
        get {
            return get_blend_constant ()
        }
        
        set {
            set_blend_constant (newValue)
        }
        
    }
    
    /// The attachments that are blended together.
    final public var attachments: TypedArray<RDPipelineColorBlendStateAttachment?> {
        get {
            return get_attachments ()
        }
        
        set {
            set_attachments (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_enable_logic_op: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_enable_logic_op")
        return withUnsafePointer(to: &RDPipelineColorBlendState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_enable_logic_op(_ pMember: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineColorBlendState.method_set_enable_logic_op, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_enable_logic_op: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_enable_logic_op")
        return withUnsafePointer(to: &RDPipelineColorBlendState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_enable_logic_op() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RDPipelineColorBlendState.method_get_enable_logic_op, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_logic_op: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_logic_op")
        return withUnsafePointer(to: &RDPipelineColorBlendState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3610841058)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_logic_op(_ pMember: RenderingDevice.LogicOperation) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineColorBlendState.method_set_logic_op, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_logic_op: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_logic_op")
        return withUnsafePointer(to: &RDPipelineColorBlendState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 988254690)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_logic_op() -> RenderingDevice.LogicOperation {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDPipelineColorBlendState.method_get_logic_op, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return RenderingDevice.LogicOperation (rawValue: _result)!
    }
    
    fileprivate static let method_set_blend_constant: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_blend_constant")
        return withUnsafePointer(to: &RDPipelineColorBlendState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_blend_constant(_ pMember: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineColorBlendState.method_set_blend_constant, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_blend_constant: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_blend_constant")
        return withUnsafePointer(to: &RDPipelineColorBlendState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_blend_constant() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(RDPipelineColorBlendState.method_get_blend_constant, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_attachments: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_attachments")
        return withUnsafePointer(to: &RDPipelineColorBlendState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_attachments(_ attachments: TypedArray<RDPipelineColorBlendStateAttachment?>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: attachments.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineColorBlendState.method_set_attachments, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_attachments: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_attachments")
        return withUnsafePointer(to: &RDPipelineColorBlendState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_attachments() -> TypedArray<RDPipelineColorBlendStateAttachment?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(RDPipelineColorBlendState.method_get_attachments, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<RDPipelineColorBlendStateAttachment?>(takingOver: _result)
    }
    
}

