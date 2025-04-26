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


/// A group of buttons that doesn't allow more than one button to be pressed at a time.
/// 
/// A group of ``BaseButton``-derived buttons. The buttons in a ``ButtonGroup`` are treated like radio buttons: No more than one button can be pressed at a time. Some types of buttons (such as ``CheckBox``) may have a special appearance in this state.
/// 
/// Every member of a ``ButtonGroup`` should have ``BaseButton/toggleMode`` set to `true`.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``pressed``
open class ButtonGroup: Resource {
    private static var className = StringName("ButtonGroup")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// If `true`, it is possible to unpress all buttons in this ``ButtonGroup``.
    final public var allowUnpress: Bool {
        get {
            return is_allow_unpress ()
        }
        
        set {
            set_allow_unpress (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_get_pressed_button: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_pressed_button")
        return withUnsafePointer(to: &ButtonGroup.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3886434893)!
            }
            
        }
        
    }()
    
    /// Returns the current pressed button.
    public final func getPressedButton() -> BaseButton? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(ButtonGroup.method_get_pressed_button, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_buttons: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_buttons")
        return withUnsafePointer(to: &ButtonGroup.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Returns an ``VariantArray`` of ``Button``s who have this as their ``ButtonGroup`` (see ``BaseButton/buttonGroup``).
    public final func getButtons() -> TypedArray<BaseButton?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(ButtonGroup.method_get_buttons, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<BaseButton?>(takingOver: _result)
    }
    
    fileprivate static let method_set_allow_unpress: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_allow_unpress")
        return withUnsafePointer(to: &ButtonGroup.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_allow_unpress(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ButtonGroup.method_set_allow_unpress, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_allow_unpress: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_allow_unpress")
        return withUnsafePointer(to: &ButtonGroup.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_allow_unpress() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ButtonGroup.method_is_allow_unpress, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    // Signals 
    /// Emitted when one of the buttons of the group is pressed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.pressed.connect { button in
    ///    print ("caught signal")
    /// }
    /// ```
    public var pressed: SignalWithArguments<BaseButton?> { SignalWithArguments<BaseButton?> (target: self, signalName: "pressed") }
    
}

