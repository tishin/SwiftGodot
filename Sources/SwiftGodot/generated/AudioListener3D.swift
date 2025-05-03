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


/// Overrides the location sounds are heard from.
/// 
/// Once added to the scene tree and enabled using ``makeCurrent()``, this node will override the location sounds are heard from. This can be used to listen from a location different from the ``Camera3D``.
open class AudioListener3D: Node3D {
    private static var className = StringName("AudioListener3D")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_make_current: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("make_current")
        return withUnsafePointer(to: &AudioListener3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Enables the listener. This will override the current camera's listener.
    public final func makeCurrent() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(AudioListener3D.method_make_current, handle, nil, nil)
        
    }
    
    fileprivate static let method_clear_current: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_current")
        return withUnsafePointer(to: &AudioListener3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Disables the listener to use the current camera's listener instead.
    public final func clearCurrent() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(AudioListener3D.method_clear_current, handle, nil, nil)
        
    }
    
    fileprivate static let method_is_current: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_current")
        return withUnsafePointer(to: &AudioListener3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the listener was made current using ``makeCurrent()``, `false` otherwise.
    /// 
    /// > Note: There may be more than one AudioListener3D marked as "current" in the scene tree, but only the one that was made current last will be used.
    /// 
    public final func isCurrent() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioListener3D.method_is_current, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_listener_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_listener_transform")
        return withUnsafePointer(to: &AudioListener3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3229777777)!
            }
            
        }
        
    }()
    
    /// Returns the listener's global orthonormalized ``Transform3D``.
    public final func getListenerTransform() -> Transform3D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform3D = Transform3D ()
        gi.object_method_bind_ptrcall(AudioListener3D.method_get_listener_transform, handle, nil, &_result)
        return _result
    }
    
}

