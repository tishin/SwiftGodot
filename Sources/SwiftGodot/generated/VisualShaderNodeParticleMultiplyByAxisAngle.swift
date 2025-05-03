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


/// A visual shader helper node for multiplying position and rotation of particles.
/// 
/// This node helps to multiply a position input vector by rotation using specific axis. Intended to work with emitters.
open class VisualShaderNodeParticleMultiplyByAxisAngle: VisualShaderNode {
    private static var className = StringName("VisualShaderNodeParticleMultiplyByAxisAngle")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// If `true`, the angle will be interpreted in degrees instead of radians.
    final public var degreesMode: Bool {
        get {
            return is_degrees_mode ()
        }
        
        set {
            set_degrees_mode (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_degrees_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_degrees_mode")
        return withUnsafePointer(to: &VisualShaderNodeParticleMultiplyByAxisAngle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_degrees_mode(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeParticleMultiplyByAxisAngle.method_set_degrees_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_degrees_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_degrees_mode")
        return withUnsafePointer(to: &VisualShaderNodeParticleMultiplyByAxisAngle.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_degrees_mode() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(VisualShaderNodeParticleMultiplyByAxisAngle.method_is_degrees_mode, handle, nil, &_result)
        return _result
    }
    
}

