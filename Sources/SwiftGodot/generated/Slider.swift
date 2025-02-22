// This file is auto-generated, do not edit.
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
#if canImport(Darwin)
import Darwin
#elseif os(Windows)
import ucrt
import WinSDK
#elseif canImport(Glibc)
import Glibc
#elseif canImport(Musl)
import Musl
#else
#error("Unable to identify your C library.")
#endif
#endif


/// Abstract base class for sliders.
/// 
/// Abstract base class for sliders, used to adjust a value by moving a grabber along a horizontal or vertical axis. Sliders are ``Range``-based controls.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``dragStarted``
/// - ``dragEnded``
open class Slider: Range {
    override open class var godotClassName: StringName { "Slider" }
    
    /* Properties */
    
    /// If `true`, the slider can be interacted with. If `false`, the value can be changed only by code.
    final public var editable: Bool {
        get {
            return is_editable ()
        }
        
        set {
            set_editable (newValue)
        }
        
    }
    
    /// If `true`, the value can be changed using the mouse wheel.
    final public var scrollable: Bool {
        get {
            return is_scrollable ()
        }
        
        set {
            set_scrollable (newValue)
        }
        
    }
    
    /// Number of ticks displayed on the slider, including border ticks. Ticks are uniformly-distributed value markers.
    final public var tickCount: Int32 {
        get {
            return get_ticks ()
        }
        
        set {
            set_ticks (newValue)
        }
        
    }
    
    /// If `true`, the slider will display ticks for minimum and maximum values.
    final public var ticksOnBorders: Bool {
        get {
            return get_ticks_on_borders ()
        }
        
        set {
            set_ticks_on_borders (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_ticks: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_ticks")
        return withUnsafePointer(to: &Slider.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_ticks(_ count: Int32) {
        withUnsafePointer(to: count) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Slider.method_set_ticks, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_ticks: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_ticks")
        return withUnsafePointer(to: &Slider.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_ticks() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Slider.method_get_ticks, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_ticks_on_borders: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_ticks_on_borders")
        return withUnsafePointer(to: &Slider.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_ticks_on_borders() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Slider.method_get_ticks_on_borders, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_ticks_on_borders: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_ticks_on_borders")
        return withUnsafePointer(to: &Slider.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_ticks_on_borders(_ ticksOnBorder: Bool) {
        withUnsafePointer(to: ticksOnBorder) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Slider.method_set_ticks_on_borders, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_editable: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_editable")
        return withUnsafePointer(to: &Slider.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_editable(_ editable: Bool) {
        withUnsafePointer(to: editable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Slider.method_set_editable, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_editable: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_editable")
        return withUnsafePointer(to: &Slider.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_editable() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Slider.method_is_editable, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_scrollable: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_scrollable")
        return withUnsafePointer(to: &Slider.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_scrollable(_ scrollable: Bool) {
        withUnsafePointer(to: scrollable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Slider.method_set_scrollable, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_scrollable: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_scrollable")
        return withUnsafePointer(to: &Slider.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_scrollable() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Slider.method_is_scrollable, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    // Signals 
    /// Emitted when dragging is started. This is emitted before the corresponding [signal Range.value_changed] signal.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.dragStarted.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var dragStarted: SimpleSignal { SimpleSignal (target: self, signalName: "drag_started") }
    
    /// Emitted when dragging stops. If `valueChanged` is true, ``Range/value`` is different from the value when you started the dragging.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.dragEnded.connect { valueChanged in
    ///    print ("caught signal")
    /// }
    /// ```
    public var dragEnded: SignalWithArguments<Bool> { SignalWithArguments<Bool> (target: self, signalName: "drag_ended") }
    
}

