// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Interpolates an ``Object``'s property over time.
/// 
/// ``PropertyTweener`` is used to interpolate a property in an object. See ``Tween/tweenProperty(object:property:finalVal:duration:)`` for more usage information.
/// 
/// > Note: ``Tween/tweenProperty(object:property:finalVal:duration:)`` is the only correct way to create ``PropertyTweener``. Any ``PropertyTweener`` created manually will not function correctly.
/// 
open class PropertyTweener: Tweener {
    override open class var godotClassName: StringName { "PropertyTweener" }
    /* Methods */
    fileprivate static var method_from: GDExtensionMethodBindPtr = {
        let methodName = StringName ("from")
        return withUnsafePointer (to: &PropertyTweener.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4190193059)!
            }
            
        }
        
    }()
    
    /// Sets a custom initial value to the ``PropertyTweener``.
    /// 
    /// **Example:**
    /// 
    public final func from (value: Variant)-> PropertyTweener? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if true
        
        
        gi.object_method_bind_ptrcall_v (PropertyTweener.method_from, UnsafeMutableRawPointer (mutating: handle), &_result, &value.content)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &value.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PropertyTweener.method_from, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_from_current: GDExtensionMethodBindPtr = {
        let methodName = StringName ("from_current")
        return withUnsafePointer (to: &PropertyTweener.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4279177709)!
            }
            
        }
        
    }()
    
    /// Makes the ``PropertyTweener`` use the current property value (i.e. at the time of creating this ``PropertyTweener``) as a starting point. This is equivalent of using ``from(value:)`` with the current value. These two calls will do the same:
    /// 
    public final func fromCurrent ()-> PropertyTweener? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (PropertyTweener.method_from_current, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_as_relative: GDExtensionMethodBindPtr = {
        let methodName = StringName ("as_relative")
        return withUnsafePointer (to: &PropertyTweener.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4279177709)!
            }
            
        }
        
    }()
    
    /// When called, the final value will be used as a relative value instead.
    /// 
    /// **Example:**
    /// 
    public final func asRelative ()-> PropertyTweener? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (PropertyTweener.method_as_relative, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_trans: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_trans")
        return withUnsafePointer (to: &PropertyTweener.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1899107404)!
            }
            
        }
        
    }()
    
    /// Sets the type of used transition from ``Tween.TransitionType``. If not set, the default transition is used from the ``Tween`` that contains this Tweener.
    public final func setTrans (_ trans: Tween.TransitionType)-> PropertyTweener? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if true
        
        var copy_trans = Int64 (trans.rawValue)
        
        gi.object_method_bind_ptrcall_v (PropertyTweener.method_set_trans, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_trans)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        var copy_trans = Int64 (trans.rawValue)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_trans) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PropertyTweener.method_set_trans, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_set_ease: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_ease")
        return withUnsafePointer (to: &PropertyTweener.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1080455622)!
            }
            
        }
        
    }()
    
    /// Sets the type of used easing from ``Tween.EaseType``. If not set, the default easing is used from the ``Tween`` that contains this Tweener.
    public final func setEase (_ ease: Tween.EaseType)-> PropertyTweener? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if true
        
        var copy_ease = Int64 (ease.rawValue)
        
        gi.object_method_bind_ptrcall_v (PropertyTweener.method_set_ease, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_ease)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        var copy_ease = Int64 (ease.rawValue)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_ease) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PropertyTweener.method_set_ease, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_set_delay: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_delay")
        return withUnsafePointer (to: &PropertyTweener.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2171559331)!
            }
            
        }
        
    }()
    
    /// Sets the time in seconds after which the ``PropertyTweener`` will start interpolating. By default there's no delay.
    public final func setDelay (_ delay: Double)-> PropertyTweener? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if true
        
        var copy_delay = delay
        
        gi.object_method_bind_ptrcall_v (PropertyTweener.method_set_delay, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_delay)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        var copy_delay = delay
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_delay) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PropertyTweener.method_set_delay, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
}
