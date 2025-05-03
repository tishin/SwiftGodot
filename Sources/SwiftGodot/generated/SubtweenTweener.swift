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


/// Runs a ``Tween`` nested within another ``Tween``.
/// 
/// ``SubtweenTweener`` is used to execute a ``Tween`` as one step in a sequence defined by another ``Tween``. See ``Tween/tweenSubtween(_:)`` for more usage information.
/// 
/// > Note: ``Tween/tweenSubtween(_:)`` is the only correct way to create ``SubtweenTweener``. Any ``SubtweenTweener`` created manually will not function correctly.
/// 
open class SubtweenTweener: Tweener {
    private static var className = StringName("SubtweenTweener")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_set_delay: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_delay")
        return withUnsafePointer(to: &SubtweenTweener.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 449181780)!
            }
            
        }
        
    }()
    
    /// Sets the time in seconds after which the ``SubtweenTweener`` will start running the subtween. By default there's no delay.
    public final func setDelay(_ delay: Double) -> SubtweenTweener? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: delay) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SubtweenTweener.method_set_delay, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
}

