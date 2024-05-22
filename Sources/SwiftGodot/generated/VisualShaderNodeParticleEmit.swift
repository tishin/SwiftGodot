// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A visual shader node that forces to emit a particle from a sub-emitter.
/// 
/// This node internally calls `emit_subparticle` shader method. It will emit a particle from the configured sub-emitter and also allows to customize how its emitted. Requires a sub-emitter assigned to the particles node with this shader.
open class VisualShaderNodeParticleEmit: VisualShaderNode {
    override open class var godotClassName: StringName { "VisualShaderNodeParticleEmit" }
    public enum EmitFlags: Int64, CaseIterable, CustomDebugStringConvertible {
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
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .position: return ".position"
                case .rotScale: return ".rotScale"
                case .velocity: return ".velocity"
                case .color: return ".color"
                case .custom: return ".custom"
            }
            
        }
        
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
    fileprivate static var method_set_flags: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_flags")
        return withUnsafePointer (to: &VisualShaderNodeParticleEmit.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3960756792)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_flags (_ flags: VisualShaderNodeParticleEmit.EmitFlags) {
        #if true
        
        var copy_flags = Int64 (flags.rawValue)
        
        gi.object_method_bind_ptrcall_v (VisualShaderNodeParticleEmit.method_set_flags, UnsafeMutableRawPointer (mutating: handle), nil, &copy_flags)
        
        #else
        
        var copy_flags = Int64 (flags.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_flags) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualShaderNodeParticleEmit.method_set_flags, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_flags: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_flags")
        return withUnsafePointer (to: &VisualShaderNodeParticleEmit.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 171277835)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_flags ()-> VisualShaderNodeParticleEmit.EmitFlags {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (VisualShaderNodeParticleEmit.method_get_flags, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VisualShaderNodeParticleEmit.EmitFlags (rawValue: _result)!
    }
    
}

