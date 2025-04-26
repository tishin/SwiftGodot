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


/// Abstract base class for scrollbars.
/// 
/// Abstract base class for scrollbars, typically used to navigate through content that extends beyond the visible area of a control. Scrollbars are ``Range``-based controls.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``scrolling``
open class ScrollBar: Range {
    private static var className = StringName("ScrollBar")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Overrides the step used when clicking increment and decrement buttons or when using arrow keys when the ``ScrollBar`` is focused.
    final public var customStep: Double {
        get {
            return get_custom_step ()
        }
        
        set {
            set_custom_step (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_custom_step: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_custom_step")
        return withUnsafePointer(to: &ScrollBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_custom_step(_ step: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: step) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ScrollBar.method_set_custom_step, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_custom_step: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_custom_step")
        return withUnsafePointer(to: &ScrollBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_custom_step() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(ScrollBar.method_get_custom_step, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    // Signals 
    /// Emitted when the scrollbar is being scrolled.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.scrolling.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var scrolling: SimpleSignal { SimpleSignal (target: self, signalName: "scrolling") }
    
}

