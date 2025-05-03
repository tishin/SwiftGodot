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


/// Interpolates an ``Object``'s property over time.
/// 
/// ``PropertyTweener`` is used to interpolate a property in an object. See ``Tween/tweenProperty(object:property:finalVal:duration:)`` for more usage information.
/// 
/// The tweener will finish automatically if the target object is freed.
/// 
/// > Note: ``Tween/tweenProperty(object:property:finalVal:duration:)`` is the only correct way to create ``PropertyTweener``. Any ``PropertyTweener`` created manually will not function correctly.
/// 
open class PropertyTweener: Tweener {
    private static var className = StringName("PropertyTweener")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_from: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("from")
        return withUnsafePointer(to: &PropertyTweener.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4190193059)!
            }
            
        }
        
    }()
    
    /// Sets a custom initial value to the ``PropertyTweener``.
    /// 
    /// **Example:** Move the node from position `(100, 100)` to `(200, 100)`.
    /// 
    public final func from(value: Variant?) -> PropertyTweener? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: value.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PropertyTweener.method_from, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_from_current: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("from_current")
        return withUnsafePointer(to: &PropertyTweener.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4279177709)!
            }
            
        }
        
    }()
    
    /// Makes the ``PropertyTweener`` use the current property value (i.e. at the time of creating this ``PropertyTweener``) as a starting point. This is equivalent of using ``from(value:)`` with the current value. These two calls will do the same:
    /// 
    public final func fromCurrent() -> PropertyTweener? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(PropertyTweener.method_from_current, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_as_relative: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("as_relative")
        return withUnsafePointer(to: &PropertyTweener.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4279177709)!
            }
            
        }
        
    }()
    
    /// When called, the final value will be used as a relative value instead.
    /// 
    /// **Example:** Move the node by `100` pixels to the right.
    /// 
    public final func asRelative() -> PropertyTweener? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(PropertyTweener.method_as_relative, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_trans: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_trans")
        return withUnsafePointer(to: &PropertyTweener.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1899107404)!
            }
            
        }
        
    }()
    
    /// Sets the type of used transition from ``Tween.TransitionType``. If not set, the default transition is used from the ``Tween`` that contains this Tweener.
    public final func setTrans(_ trans: Tween.TransitionType) -> PropertyTweener? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: trans.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PropertyTweener.method_set_trans, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_ease: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_ease")
        return withUnsafePointer(to: &PropertyTweener.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1080455622)!
            }
            
        }
        
    }()
    
    /// Sets the type of used easing from ``Tween.EaseType``. If not set, the default easing is used from the ``Tween`` that contains this Tweener.
    public final func setEase(_ ease: Tween.EaseType) -> PropertyTweener? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: ease.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PropertyTweener.method_set_ease, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_custom_interpolator: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_custom_interpolator")
        return withUnsafePointer(to: &PropertyTweener.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3174170268)!
            }
            
        }
        
    }()
    
    /// Allows interpolating the value with a custom easing function. The provided `interpolatorMethod` will be called with a value ranging from `0.0` to `1.0` and is expected to return a value within the same range (values outside the range can be used for overshoot). The return value of the method is then used for interpolation between initial and final value. Note that the parameter passed to the method is still subject to the tweener's own easing.
    /// 
    public final func setCustomInterpolator(interpolatorMethod: Callable) -> PropertyTweener? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: interpolatorMethod.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PropertyTweener.method_set_custom_interpolator, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_delay: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_delay")
        return withUnsafePointer(to: &PropertyTweener.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2171559331)!
            }
            
        }
        
    }()
    
    /// Sets the time in seconds after which the ``PropertyTweener`` will start interpolating. By default there's no delay.
    public final func setDelay(_ delay: Double) -> PropertyTweener? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: delay) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PropertyTweener.method_set_delay, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
}

