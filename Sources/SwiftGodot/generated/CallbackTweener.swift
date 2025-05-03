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


/// Calls the specified method after optional delay.
/// 
/// ``CallbackTweener`` is used to call a method in a tweening sequence. See ``Tween/tweenCallback(_:)`` for more usage information.
/// 
/// The tweener will finish automatically if the callback's target object is freed.
/// 
/// > Note: ``Tween/tweenCallback(_:)`` is the only correct way to create ``CallbackTweener``. Any ``CallbackTweener`` created manually will not function correctly.
/// 
open class CallbackTweener: Tweener {
    private static var className = StringName("CallbackTweener")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_set_delay: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_delay")
        return withUnsafePointer(to: &CallbackTweener.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3008182292)!
            }
            
        }
        
    }()
    
    /// Makes the callback call delayed by given time in seconds.
    /// 
    /// **Example:** Call ``Node/queueFree()`` after 2 seconds:
    /// 
    public final func setDelay(_ delay: Double) -> CallbackTweener? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: delay) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CallbackTweener.method_set_delay, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
}

