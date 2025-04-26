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


/// Abstract base class for input events.
/// 
/// Abstract base class of all types of input events. See ``Node/_input(event:)``.
open class InputEvent: Resource {
    private static var className = StringName("InputEvent")
    override open class var godotClassName: StringName { className }
    /* Constants */
    /// Device ID used for emulated mouse input from a touchscreen, or for emulated touch input from a mouse. This can be used to distinguish emulated mouse input from physical mouse input, or emulated touch input from physical touch input.
    public static let deviceIdEmulation = -1
    
    /* Properties */
    
    /// The event's device ID.
    /// 
    /// > Note: ``device`` can be negative for special use cases that don't refer to devices physically present on the system. See ``deviceIdEmulation``.
    /// 
    final public var device: Int32 {
        get {
            return get_device ()
        }
        
        set {
            set_device (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_device: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_device")
        return withUnsafePointer(to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_device(_ device: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: device) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEvent.method_set_device, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_device: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_device")
        return withUnsafePointer(to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_device() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(InputEvent.method_get_device, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_action: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_action")
        return withUnsafePointer(to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1558498928)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this input event matches a pre-defined action of any type.
    /// 
    /// If `exactMatch` is `false`, it ignores additional input modifiers for ``InputEventKey`` and ``InputEventMouseButton`` events, and the direction for ``InputEventJoypadMotion`` events.
    /// 
    public final func isAction(_ action: StringName, exactMatch: Bool = false) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: action.content) { pArg0 in
            withUnsafePointer(to: exactMatch) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(InputEvent.method_is_action, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_action_pressed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_action_pressed")
        return withUnsafePointer(to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1631499404)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given action is being pressed (and is not an echo event for ``InputEventKey`` events, unless `allowEcho` is `true`). Not relevant for events of type ``InputEventMouseMotion`` or ``InputEventScreenDrag``.
    /// 
    /// If `exactMatch` is `false`, it ignores additional input modifiers for ``InputEventKey`` and ``InputEventMouseButton`` events, and the direction for ``InputEventJoypadMotion`` events.
    /// 
    /// > Note: Due to keyboard ghosting, ``isActionPressed(action:allowEcho:exactMatch:)`` may return `false` even if one of the action's keys is pressed. See <a href="https://docs.godotengine.org/en//tutorials/inputs/input_examples.html#keyboard-events">Input examples</a> in the documentation for more information.
    /// 
    public final func isActionPressed(action: StringName, allowEcho: Bool = false, exactMatch: Bool = false) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: action.content) { pArg0 in
            withUnsafePointer(to: allowEcho) { pArg1 in
                withUnsafePointer(to: exactMatch) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(InputEvent.method_is_action_pressed, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_action_released: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_action_released")
        return withUnsafePointer(to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1558498928)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given action is released (i.e. not pressed). Not relevant for events of type ``InputEventMouseMotion`` or ``InputEventScreenDrag``.
    /// 
    /// If `exactMatch` is `false`, it ignores additional input modifiers for ``InputEventKey`` and ``InputEventMouseButton`` events, and the direction for ``InputEventJoypadMotion`` events.
    /// 
    public final func isActionReleased(action: StringName, exactMatch: Bool = false) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: action.content) { pArg0 in
            withUnsafePointer(to: exactMatch) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(InputEvent.method_is_action_released, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_action_strength: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_action_strength")
        return withUnsafePointer(to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 801543509)!
            }
            
        }
        
    }()
    
    /// Returns a value between 0.0 and 1.0 depending on the given actions' state. Useful for getting the value of events of type ``InputEventJoypadMotion``.
    /// 
    /// If `exactMatch` is `false`, it ignores additional input modifiers for ``InputEventKey`` and ``InputEventMouseButton`` events, and the direction for ``InputEventJoypadMotion`` events.
    /// 
    public final func getActionStrength(action: StringName, exactMatch: Bool = false) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: action.content) { pArg0 in
            withUnsafePointer(to: exactMatch) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(InputEvent.method_get_action_strength, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_canceled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_canceled")
        return withUnsafePointer(to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this input event has been canceled.
    public final func isCanceled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(InputEvent.method_is_canceled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_pressed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_pressed")
        return withUnsafePointer(to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this input event is pressed. Not relevant for events of type ``InputEventMouseMotion`` or ``InputEventScreenDrag``.
    /// 
    /// > Note: Due to keyboard ghosting, ``isPressed()`` may return `false` even if one of the action's keys is pressed. See <a href="https://docs.godotengine.org/en//tutorials/inputs/input_examples.html#keyboard-events">Input examples</a> in the documentation for more information.
    /// 
    public final func isPressed() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(InputEvent.method_is_pressed, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_released: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_released")
        return withUnsafePointer(to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this input event is released. Not relevant for events of type ``InputEventMouseMotion`` or ``InputEventScreenDrag``.
    public final func isReleased() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(InputEvent.method_is_released, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_echo: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_echo")
        return withUnsafePointer(to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this input event is an echo event (only for events of type ``InputEventKey``). An echo event is a repeated key event sent when the user is holding down the key. Any other event type returns `false`.
    /// 
    /// > Note: The rate at which echo events are sent is typically around 20 events per second (after holding down the key for roughly half a second). However, the key repeat delay/speed can be changed by the user or disabled entirely in the operating system settings. To ensure your project works correctly on all configurations, do not assume the user has a specific key repeat configuration in your project's behavior.
    /// 
    public final func isEcho() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(InputEvent.method_is_echo, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_as_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("as_text")
        return withUnsafePointer(to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns a ``String`` representation of the event.
    public final func asText() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(InputEvent.method_as_text, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_is_match: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_match")
        return withUnsafePointer(to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1754951977)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the specified `event` matches this event. Only valid for action events i.e key (``InputEventKey``), button (``InputEventMouseButton`` or ``InputEventJoypadButton``), axis ``InputEventJoypadMotion`` or action (``InputEventAction``) events.
    /// 
    /// If `exactMatch` is `false`, it ignores additional input modifiers for ``InputEventKey`` and ``InputEventMouseButton`` events, and the direction for ``InputEventJoypadMotion`` events.
    /// 
    /// > Note: Only considers the event configuration (such as the keyboard key or joypad axis), not state information like ``isPressed()``, ``isReleased()``, ``isEcho()``, or ``isCanceled()``.
    /// 
    public final func isMatch(event: InputEvent?, exactMatch: Bool = true) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: event?.handle) { pArg0 in
            withUnsafePointer(to: exactMatch) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(InputEvent.method_is_match, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_action_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_action_type")
        return withUnsafePointer(to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this input event's type is one that can be assigned to an input action.
    public final func isActionType() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(InputEvent.method_is_action_type, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_accumulate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("accumulate")
        return withUnsafePointer(to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1062211774)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given input event and this input event can be added together (only for events of type ``InputEventMouseMotion``).
    /// 
    /// The given input event's position, global position and speed will be copied. The resulting `relative` is a sum of both events. Both events' modifiers have to be identical.
    /// 
    public final func accumulate(withEvent: InputEvent?) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: withEvent?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEvent.method_accumulate, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_xformed_by: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("xformed_by")
        return withUnsafePointer(to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1282766827)!
            }
            
        }
        
    }()
    
    /// Returns a copy of the given input event which has been offset by `localOfs` and transformed by `xform`. Relevant for events of type ``InputEventMouseButton``, ``InputEventMouseMotion``, ``InputEventScreenTouch``, ``InputEventScreenDrag``, ``InputEventMagnifyGesture`` and ``InputEventPanGesture``.
    public final func xformedBy(xform: Transform2D, localOfs: Vector2 = Vector2 (x: 0, y: 0)) -> InputEvent? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: xform) { pArg0 in
            withUnsafePointer(to: localOfs) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(InputEvent.method_xformed_by, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
}

