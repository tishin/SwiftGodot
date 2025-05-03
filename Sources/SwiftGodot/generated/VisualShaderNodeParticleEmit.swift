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


/// A visual shader node that forces to emit a particle from a sub-emitter.
/// 
/// This node internally calls `emit_subparticle` shader method. It will emit a particle from the configured sub-emitter and also allows to customize how its emitted. Requires a sub-emitter assigned to the particles node with this shader.
open class VisualShaderNodeParticleEmit: VisualShaderNode {
    private static var className = StringName("VisualShaderNodeParticleEmit")
    override open class var godotClassName: StringName { className }
    public enum EmitFlags: Int64, CaseIterable {
        /// If enabled, the particle starts with the position defined by this node.
        case position = 1 // EMIT_FLAG_POSITION
        /// If enabled, the particle starts with the rotation and scale defined by this node.
        case rotScale = 2 // EMIT_FLAG_ROT_SCALE
        /// If enabled,the particle starts with the velocity defined by this node.
        case velocity = 4 // EMIT_FLAG_VELOCITY
        /// If enabled, the particle starts with the color defined by this node.
        case color = 8 // EMIT_FLAG_COLOR
        /// If enabled, the particle starts with the `CUSTOM` data defined by this node.
        case custom = 16 // EMIT_FLAG_CUSTOM
    }
    
    
    /* Properties */
    
    /// Flags used to override the properties defined in the sub-emitter's process material.
    final public var flags: VisualShaderNodeParticleEmit.EmitFlags {
        get {
            return get_flags ()
        }
        
        set {
            set_flags (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_flags: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_flags")
        return withUnsafePointer(to: &VisualShaderNodeParticleEmit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3960756792)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_flags(_ flags: VisualShaderNodeParticleEmit.EmitFlags) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: flags.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeParticleEmit.method_set_flags, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_flags: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_flags")
        return withUnsafePointer(to: &VisualShaderNodeParticleEmit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 171277835)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_flags() -> VisualShaderNodeParticleEmit.EmitFlags {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(VisualShaderNodeParticleEmit.method_get_flags, handle, nil, &_result)
        return VisualShaderNodeParticleEmit.EmitFlags (rawValue: _result)!
    }
    
}

