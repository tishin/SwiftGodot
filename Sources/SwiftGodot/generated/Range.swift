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


/// Abstract base class for controls that represent a number within a range.
/// 
/// Range is an abstract base class for controls that represent a number within a range, using a configured ``step`` and ``page`` size. See e.g. ``ScrollBar`` and ``Slider`` for examples of higher-level nodes using Range.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``valueChanged``
/// - ``changed``
open class Range: Control {
    private static var className = StringName("Range")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Minimum value. Range is clamped if ``value`` is less than ``minValue``.
    final public var minValue: Double {
        get {
            return get_min ()
        }
        
        set {
            set_min (newValue)
        }
        
    }
    
    /// Maximum value. Range is clamped if ``value`` is greater than ``maxValue``.
    final public var maxValue: Double {
        get {
            return get_max ()
        }
        
        set {
            set_max (newValue)
        }
        
    }
    
    /// If greater than 0, ``value`` will always be rounded to a multiple of this property's value. If ``rounded`` is also `true`, ``value`` will first be rounded to a multiple of this property's value, then rounded to the nearest integer.
    final public var step: Double {
        get {
            return get_step ()
        }
        
        set {
            set_step (newValue)
        }
        
    }
    
    /// Page size. Used mainly for ``ScrollBar``. A ``ScrollBar``'s grabber length is the ``ScrollBar``'s size multiplied by ``page`` over the difference between ``minValue`` and ``maxValue``.
    final public var page: Double {
        get {
            return get_page ()
        }
        
        set {
            set_page (newValue)
        }
        
    }
    
    /// Range's current value. Changing this property (even via code) will trigger [signal value_changed] signal. Use ``setValueNoSignal(value:)`` if you want to avoid it.
    final public var value: Double {
        get {
            return get_value ()
        }
        
        set {
            set_value (newValue)
        }
        
    }
    
    /// The value mapped between 0 and 1.
    final public var ratio: Double {
        get {
            return get_as_ratio ()
        }
        
        set {
            set_as_ratio (newValue)
        }
        
    }
    
    /// If `true`, and ``minValue`` is greater than 0, ``value`` will be represented exponentially rather than linearly.
    final public var expEdit: Bool {
        get {
            return is_ratio_exp ()
        }
        
        set {
            set_exp_ratio (newValue)
        }
        
    }
    
    /// If `true`, ``value`` will always be rounded to the nearest integer.
    final public var rounded: Bool {
        get {
            return is_using_rounded_values ()
        }
        
        set {
            set_use_rounded_values (newValue)
        }
        
    }
    
    /// If `true`, ``value`` may be greater than ``maxValue``.
    final public var allowGreater: Bool {
        get {
            return is_greater_allowed ()
        }
        
        set {
            set_allow_greater (newValue)
        }
        
    }
    
    /// If `true`, ``value`` may be less than ``minValue``.
    final public var allowLesser: Bool {
        get {
            return is_lesser_allowed ()
        }
        
        set {
            set_allow_lesser (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method__value_changed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_value_changed")
        return withUnsafePointer(to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Called when the ``Range``'s value is changed (following the same conditions as [signal value_changed]).
    @_documentation(visibility: public)
    open func _valueChanged(newValue: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: newValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Range.method__value_changed, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_value")
        return withUnsafePointer(to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_value() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Range.method_get_value, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_min: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_min")
        return withUnsafePointer(to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_min() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Range.method_get_min, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_max: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_max")
        return withUnsafePointer(to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Range.method_get_max, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_step: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_step")
        return withUnsafePointer(to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_step() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Range.method_get_step, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_page: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_page")
        return withUnsafePointer(to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_page() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Range.method_get_page, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_as_ratio: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_as_ratio")
        return withUnsafePointer(to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_as_ratio() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Range.method_get_as_ratio, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_value")
        return withUnsafePointer(to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_value(_ value: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Range.method_set_value, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_value_no_signal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_value_no_signal")
        return withUnsafePointer(to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Sets the ``Range``'s current value to the specified `value`, without emitting the [signal value_changed] signal.
    public final func setValueNoSignal(value: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Range.method_set_value_no_signal, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_min: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_min")
        return withUnsafePointer(to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_min(_ minimum: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: minimum) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Range.method_set_min, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_max: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_max")
        return withUnsafePointer(to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max(_ maximum: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: maximum) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Range.method_set_max, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_step: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_step")
        return withUnsafePointer(to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_step(_ step: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: step) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Range.method_set_step, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_page: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_page")
        return withUnsafePointer(to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_page(_ pagesize: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pagesize) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Range.method_set_page, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_as_ratio: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_as_ratio")
        return withUnsafePointer(to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_as_ratio(_ value: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Range.method_set_as_ratio, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_use_rounded_values: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_rounded_values")
        return withUnsafePointer(to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_rounded_values(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Range.method_set_use_rounded_values, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_using_rounded_values: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_using_rounded_values")
        return withUnsafePointer(to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_using_rounded_values() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Range.method_is_using_rounded_values, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_exp_ratio: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_exp_ratio")
        return withUnsafePointer(to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_exp_ratio(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Range.method_set_exp_ratio, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_ratio_exp: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_ratio_exp")
        return withUnsafePointer(to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_ratio_exp() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Range.method_is_ratio_exp, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_allow_greater: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_allow_greater")
        return withUnsafePointer(to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_allow_greater(_ allow: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: allow) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Range.method_set_allow_greater, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_greater_allowed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_greater_allowed")
        return withUnsafePointer(to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_greater_allowed() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Range.method_is_greater_allowed, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_allow_lesser: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_allow_lesser")
        return withUnsafePointer(to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_allow_lesser(_ allow: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: allow) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Range.method_set_allow_lesser, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_lesser_allowed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_lesser_allowed")
        return withUnsafePointer(to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_lesser_allowed() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Range.method_is_lesser_allowed, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_share: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("share")
        return withUnsafePointer(to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1078189570)!
            }
            
        }
        
    }()
    
    /// Binds two ``Range``s together along with any ranges previously grouped with either of them. When any of range's member variables change, it will share the new value with all other ranges in its group.
    public final func share(with: Node?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: with?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Range.method_share, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_unshare: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("unshare")
        return withUnsafePointer(to: &Range.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Stops the ``Range`` from sharing its member variables with any other.
    public final func unshare() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Range.method_unshare, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_value_changed":
                return _Range_proxy_value_changed
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
    // Signals 
    /// Emitted when ``value`` changes. When used on a ``Slider``, this is called continuously while dragging (potentially every frame). If you are performing an expensive operation in a function connected to [signal value_changed], consider using a _debouncing_ ``Timer`` to call the function less often.
    /// 
    /// > Note: Unlike signals such as [signal LineEdit.text_changed], [signal value_changed] is also emitted when `value` is set directly via code.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.valueChanged.connect { value in
    ///    print ("caught signal")
    /// }
    /// ```
    public var valueChanged: SignalWithArguments<Double> { SignalWithArguments<Double> (target: self, signalName: "value_changed") }
    
    /// Emitted when ``minValue``, ``maxValue``, ``page``, or ``step`` change.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.changed.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var changed: SimpleSignal { SimpleSignal (target: self, signalName: "changed") }
    
}

// Support methods for proxies
func _Range_proxy_value_changed (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? Range else { return }
    swiftObject._valueChanged (newValue: args [0]!.assumingMemoryBound (to: Double.self).pointee)
}

