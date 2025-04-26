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


/// Abstract base class for input events affected by modifier keys like [kbd]Shift[/kbd] and [kbd]Alt[/kbd].
/// 
/// Stores information about mouse, keyboard, and touch gesture input events. This includes information about which modifier keys are pressed, such as [kbd]Shift[/kbd] or [kbd]Alt[/kbd]. See ``Node/_input(event:)``.
/// 
/// > Note: Modifier keys are considered modifiers only when used in combination with another key. As a result, their corresponding member variables, such as ``ctrlPressed``, will return `false` if the key is pressed on its own.
/// 
open class InputEventWithModifiers: InputEventFromWindow {
    private static var className = StringName("InputEventWithModifiers")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Automatically use [kbd]Meta[/kbd] ([kbd]Cmd[/kbd]) on macOS and [kbd]Ctrl[/kbd] on other platforms. If `true`, ``ctrlPressed`` and ``metaPressed`` cannot be set.
    final public var commandOrControlAutoremap: Bool {
        get {
            return is_command_or_control_autoremap ()
        }
        
        set {
            set_command_or_control_autoremap (newValue)
        }
        
    }
    
    /// State of the [kbd]Alt[/kbd] modifier.
    final public var altPressed: Bool {
        get {
            return is_alt_pressed ()
        }
        
        set {
            set_alt_pressed (newValue)
        }
        
    }
    
    /// State of the [kbd]Shift[/kbd] modifier.
    final public var shiftPressed: Bool {
        get {
            return is_shift_pressed ()
        }
        
        set {
            set_shift_pressed (newValue)
        }
        
    }
    
    /// State of the [kbd]Ctrl[/kbd] modifier.
    final public var ctrlPressed: Bool {
        get {
            return is_ctrl_pressed ()
        }
        
        set {
            set_ctrl_pressed (newValue)
        }
        
    }
    
    /// State of the [kbd]Meta[/kbd] modifier. On Windows and Linux, this represents the Windows key (sometimes called "meta" or "super" on Linux). On macOS, this represents the Command key.
    final public var metaPressed: Bool {
        get {
            return is_meta_pressed ()
        }
        
        set {
            set_meta_pressed (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_command_or_control_autoremap: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_command_or_control_autoremap")
        return withUnsafePointer(to: &InputEventWithModifiers.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_command_or_control_autoremap(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventWithModifiers.method_set_command_or_control_autoremap, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_command_or_control_autoremap: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_command_or_control_autoremap")
        return withUnsafePointer(to: &InputEventWithModifiers.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_command_or_control_autoremap() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(InputEventWithModifiers.method_is_command_or_control_autoremap, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_command_or_control_pressed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_command_or_control_pressed")
        return withUnsafePointer(to: &InputEventWithModifiers.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// On macOS, returns `true` if [kbd]Meta[/kbd] ([kbd]Cmd[/kbd]) is pressed.
    /// 
    /// On other platforms, returns `true` if [kbd]Ctrl[/kbd] is pressed.
    /// 
    public final func isCommandOrControlPressed() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(InputEventWithModifiers.method_is_command_or_control_pressed, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_alt_pressed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_alt_pressed")
        return withUnsafePointer(to: &InputEventWithModifiers.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_alt_pressed(_ pressed: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pressed) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventWithModifiers.method_set_alt_pressed, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_alt_pressed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_alt_pressed")
        return withUnsafePointer(to: &InputEventWithModifiers.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_alt_pressed() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(InputEventWithModifiers.method_is_alt_pressed, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_shift_pressed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_shift_pressed")
        return withUnsafePointer(to: &InputEventWithModifiers.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shift_pressed(_ pressed: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pressed) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventWithModifiers.method_set_shift_pressed, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_shift_pressed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_shift_pressed")
        return withUnsafePointer(to: &InputEventWithModifiers.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_shift_pressed() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(InputEventWithModifiers.method_is_shift_pressed, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_ctrl_pressed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_ctrl_pressed")
        return withUnsafePointer(to: &InputEventWithModifiers.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_ctrl_pressed(_ pressed: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pressed) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventWithModifiers.method_set_ctrl_pressed, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_ctrl_pressed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_ctrl_pressed")
        return withUnsafePointer(to: &InputEventWithModifiers.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_ctrl_pressed() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(InputEventWithModifiers.method_is_ctrl_pressed, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_meta_pressed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_meta_pressed")
        return withUnsafePointer(to: &InputEventWithModifiers.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_meta_pressed(_ pressed: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pressed) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventWithModifiers.method_set_meta_pressed, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_meta_pressed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_meta_pressed")
        return withUnsafePointer(to: &InputEventWithModifiers.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_meta_pressed() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(InputEventWithModifiers.method_is_meta_pressed, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_modifiers_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_modifiers_mask")
        return withUnsafePointer(to: &InputEventWithModifiers.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1258259499)!
            }
            
        }
        
    }()
    
    /// Returns the keycode combination of modifier keys.
    public final func getModifiersMask() -> KeyModifierMask {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: KeyModifierMask = KeyModifierMask ()
        gi.object_method_bind_ptrcall(InputEventWithModifiers.method_get_modifiers_mask, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

