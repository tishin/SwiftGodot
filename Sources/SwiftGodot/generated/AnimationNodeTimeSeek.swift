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


/// A time-seeking animation node used in ``AnimationTree``.
/// 
/// This animation node can be used to cause a seek command to happen to any sub-children of the animation graph. Use to play an ``Animation`` from the start or a certain playback position inside the ``AnimationNodeBlendTree``.
/// 
/// After setting the time and changing the animation playback, the time seek node automatically goes into sleep mode on the next process frame by setting its `seek_request` value to `-1.0`.
/// 
open class AnimationNodeTimeSeek: AnimationNode {
    private static var className = StringName("AnimationNodeTimeSeek")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// If `true`, some processes are executed to handle keys between seeks, such as calculating root motion and finding the nearest discrete key.
    final public var explicitElapse: Bool {
        get {
            return is_explicit_elapse ()
        }
        
        set {
            set_explicit_elapse (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_explicit_elapse: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_explicit_elapse")
        return withUnsafePointer(to: &AnimationNodeTimeSeek.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_explicit_elapse(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeTimeSeek.method_set_explicit_elapse, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_explicit_elapse: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_explicit_elapse")
        return withUnsafePointer(to: &AnimationNodeTimeSeek.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_explicit_elapse() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimationNodeTimeSeek.method_is_explicit_elapse, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

