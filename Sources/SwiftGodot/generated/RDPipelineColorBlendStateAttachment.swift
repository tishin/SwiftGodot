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


/// Pipeline color blend state attachment (used by ``RenderingDevice``).
/// 
/// Controls how blending between source and destination fragments is performed when using ``RenderingDevice``.
/// 
/// For reference, this is how common user-facing blend modes are implemented in Godot's 2D renderer:
/// 
/// **Mix:**
/// 
/// **Add:**
/// 
/// **Subtract:**
/// 
/// **Multiply:**
/// 
/// **Pre-multiplied alpha:**
/// 
open class RDPipelineColorBlendStateAttachment: RefCounted {
    private static var className = StringName("RDPipelineColorBlendStateAttachment")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// If `true`, performs blending between the source and destination according to the factors defined in ``srcColorBlendFactor``, ``dstColorBlendFactor``, ``srcAlphaBlendFactor`` and ``dstAlphaBlendFactor``. The blend modes ``colorBlendOp`` and ``alphaBlendOp`` are also taken into account, with ``writeR``, ``writeG``, ``writeB`` and ``writeA`` controlling the output.
    final public var enableBlend: Bool {
        get {
            return get_enable_blend ()
        }
        
        set {
            set_enable_blend (newValue)
        }
        
    }
    
    /// Controls how the blend factor for the color channels is determined based on the source's fragments.
    final public var srcColorBlendFactor: RenderingDevice.BlendFactor {
        get {
            return get_src_color_blend_factor ()
        }
        
        set {
            set_src_color_blend_factor (newValue)
        }
        
    }
    
    /// Controls how the blend factor for the color channels is determined based on the destination's fragments.
    final public var dstColorBlendFactor: RenderingDevice.BlendFactor {
        get {
            return get_dst_color_blend_factor ()
        }
        
        set {
            set_dst_color_blend_factor (newValue)
        }
        
    }
    
    /// The blend mode to use for the red/green/blue color channels.
    final public var colorBlendOp: RenderingDevice.BlendOperation {
        get {
            return get_color_blend_op ()
        }
        
        set {
            set_color_blend_op (newValue)
        }
        
    }
    
    /// Controls how the blend factor for the alpha channel is determined based on the source's fragments.
    final public var srcAlphaBlendFactor: RenderingDevice.BlendFactor {
        get {
            return get_src_alpha_blend_factor ()
        }
        
        set {
            set_src_alpha_blend_factor (newValue)
        }
        
    }
    
    /// Controls how the blend factor for the alpha channel is determined based on the destination's fragments.
    final public var dstAlphaBlendFactor: RenderingDevice.BlendFactor {
        get {
            return get_dst_alpha_blend_factor ()
        }
        
        set {
            set_dst_alpha_blend_factor (newValue)
        }
        
    }
    
    /// The blend mode to use for the alpha channel.
    final public var alphaBlendOp: RenderingDevice.BlendOperation {
        get {
            return get_alpha_blend_op ()
        }
        
        set {
            set_alpha_blend_op (newValue)
        }
        
    }
    
    /// If `true`, writes the new red color channel to the final result.
    final public var writeR: Bool {
        get {
            return get_write_r ()
        }
        
        set {
            set_write_r (newValue)
        }
        
    }
    
    /// If `true`, writes the new green color channel to the final result.
    final public var writeG: Bool {
        get {
            return get_write_g ()
        }
        
        set {
            set_write_g (newValue)
        }
        
    }
    
    /// If `true`, writes the new blue color channel to the final result.
    final public var writeB: Bool {
        get {
            return get_write_b ()
        }
        
        set {
            set_write_b (newValue)
        }
        
    }
    
    /// If `true`, writes the new alpha channel to the final result.
    final public var writeA: Bool {
        get {
            return get_write_a ()
        }
        
        set {
            set_write_a (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_as_mix: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_as_mix")
        return withUnsafePointer(to: &RDPipelineColorBlendStateAttachment.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Convenience method to perform standard mix blending with straight (non-premultiplied) alpha. This sets ``enableBlend`` to `true`, ``srcColorBlendFactor`` to ``RenderingDevice/BlendFactor/srcAlpha``, ``dstColorBlendFactor`` to ``RenderingDevice/BlendFactor/oneMinusSrcAlpha``, ``srcAlphaBlendFactor`` to ``RenderingDevice/BlendFactor/srcAlpha`` and ``dstAlphaBlendFactor`` to ``RenderingDevice/BlendFactor/oneMinusSrcAlpha``.
    public final func setAsMix() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(RDPipelineColorBlendStateAttachment.method_set_as_mix, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_enable_blend: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_enable_blend")
        return withUnsafePointer(to: &RDPipelineColorBlendStateAttachment.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_enable_blend(_ pMember: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineColorBlendStateAttachment.method_set_enable_blend, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_enable_blend: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_enable_blend")
        return withUnsafePointer(to: &RDPipelineColorBlendStateAttachment.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_enable_blend() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RDPipelineColorBlendStateAttachment.method_get_enable_blend, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_src_color_blend_factor: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_src_color_blend_factor")
        return withUnsafePointer(to: &RDPipelineColorBlendStateAttachment.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2251019273)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_src_color_blend_factor(_ pMember: RenderingDevice.BlendFactor) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineColorBlendStateAttachment.method_set_src_color_blend_factor, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_src_color_blend_factor: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_src_color_blend_factor")
        return withUnsafePointer(to: &RDPipelineColorBlendStateAttachment.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3691288359)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_src_color_blend_factor() -> RenderingDevice.BlendFactor {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDPipelineColorBlendStateAttachment.method_get_src_color_blend_factor, handle, nil, &_result)
        return RenderingDevice.BlendFactor (rawValue: _result)!
    }
    
    fileprivate static let method_set_dst_color_blend_factor: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_dst_color_blend_factor")
        return withUnsafePointer(to: &RDPipelineColorBlendStateAttachment.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2251019273)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_dst_color_blend_factor(_ pMember: RenderingDevice.BlendFactor) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineColorBlendStateAttachment.method_set_dst_color_blend_factor, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_dst_color_blend_factor: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_dst_color_blend_factor")
        return withUnsafePointer(to: &RDPipelineColorBlendStateAttachment.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3691288359)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_dst_color_blend_factor() -> RenderingDevice.BlendFactor {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDPipelineColorBlendStateAttachment.method_get_dst_color_blend_factor, handle, nil, &_result)
        return RenderingDevice.BlendFactor (rawValue: _result)!
    }
    
    fileprivate static let method_set_color_blend_op: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_color_blend_op")
        return withUnsafePointer(to: &RDPipelineColorBlendStateAttachment.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3073022720)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_color_blend_op(_ pMember: RenderingDevice.BlendOperation) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineColorBlendStateAttachment.method_set_color_blend_op, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_color_blend_op: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_color_blend_op")
        return withUnsafePointer(to: &RDPipelineColorBlendStateAttachment.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1385093561)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_color_blend_op() -> RenderingDevice.BlendOperation {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDPipelineColorBlendStateAttachment.method_get_color_blend_op, handle, nil, &_result)
        return RenderingDevice.BlendOperation (rawValue: _result)!
    }
    
    fileprivate static let method_set_src_alpha_blend_factor: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_src_alpha_blend_factor")
        return withUnsafePointer(to: &RDPipelineColorBlendStateAttachment.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2251019273)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_src_alpha_blend_factor(_ pMember: RenderingDevice.BlendFactor) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineColorBlendStateAttachment.method_set_src_alpha_blend_factor, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_src_alpha_blend_factor: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_src_alpha_blend_factor")
        return withUnsafePointer(to: &RDPipelineColorBlendStateAttachment.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3691288359)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_src_alpha_blend_factor() -> RenderingDevice.BlendFactor {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDPipelineColorBlendStateAttachment.method_get_src_alpha_blend_factor, handle, nil, &_result)
        return RenderingDevice.BlendFactor (rawValue: _result)!
    }
    
    fileprivate static let method_set_dst_alpha_blend_factor: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_dst_alpha_blend_factor")
        return withUnsafePointer(to: &RDPipelineColorBlendStateAttachment.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2251019273)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_dst_alpha_blend_factor(_ pMember: RenderingDevice.BlendFactor) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineColorBlendStateAttachment.method_set_dst_alpha_blend_factor, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_dst_alpha_blend_factor: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_dst_alpha_blend_factor")
        return withUnsafePointer(to: &RDPipelineColorBlendStateAttachment.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3691288359)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_dst_alpha_blend_factor() -> RenderingDevice.BlendFactor {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDPipelineColorBlendStateAttachment.method_get_dst_alpha_blend_factor, handle, nil, &_result)
        return RenderingDevice.BlendFactor (rawValue: _result)!
    }
    
    fileprivate static let method_set_alpha_blend_op: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_alpha_blend_op")
        return withUnsafePointer(to: &RDPipelineColorBlendStateAttachment.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3073022720)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_alpha_blend_op(_ pMember: RenderingDevice.BlendOperation) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineColorBlendStateAttachment.method_set_alpha_blend_op, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_alpha_blend_op: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_alpha_blend_op")
        return withUnsafePointer(to: &RDPipelineColorBlendStateAttachment.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1385093561)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_alpha_blend_op() -> RenderingDevice.BlendOperation {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(RDPipelineColorBlendStateAttachment.method_get_alpha_blend_op, handle, nil, &_result)
        return RenderingDevice.BlendOperation (rawValue: _result)!
    }
    
    fileprivate static let method_set_write_r: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_write_r")
        return withUnsafePointer(to: &RDPipelineColorBlendStateAttachment.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_write_r(_ pMember: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineColorBlendStateAttachment.method_set_write_r, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_write_r: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_write_r")
        return withUnsafePointer(to: &RDPipelineColorBlendStateAttachment.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_write_r() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RDPipelineColorBlendStateAttachment.method_get_write_r, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_write_g: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_write_g")
        return withUnsafePointer(to: &RDPipelineColorBlendStateAttachment.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_write_g(_ pMember: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineColorBlendStateAttachment.method_set_write_g, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_write_g: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_write_g")
        return withUnsafePointer(to: &RDPipelineColorBlendStateAttachment.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_write_g() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RDPipelineColorBlendStateAttachment.method_get_write_g, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_write_b: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_write_b")
        return withUnsafePointer(to: &RDPipelineColorBlendStateAttachment.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_write_b(_ pMember: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineColorBlendStateAttachment.method_set_write_b, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_write_b: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_write_b")
        return withUnsafePointer(to: &RDPipelineColorBlendStateAttachment.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_write_b() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RDPipelineColorBlendStateAttachment.method_get_write_b, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_write_a: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_write_a")
        return withUnsafePointer(to: &RDPipelineColorBlendStateAttachment.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_write_a(_ pMember: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pMember) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RDPipelineColorBlendStateAttachment.method_set_write_a, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_write_a: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_write_a")
        return withUnsafePointer(to: &RDPipelineColorBlendStateAttachment.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_write_a() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(RDPipelineColorBlendStateAttachment.method_get_write_a, handle, nil, &_result)
        return _result
    }
    
}

