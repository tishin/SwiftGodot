// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Abstract base class for input events.
/// 
/// Abstract base class of all types of input events. See ``Node/_input(event:)``.
open class InputEvent: Resource {
    override open class var godotClassName: StringName { "InputEvent" }
    
    /* Properties */
    
    /// The event's device ID.
    /// 
    /// > Note: This device ID will always be `-1` for emulated mouse input from a touchscreen. This can be used to distinguish emulated mouse input from physical mouse input.
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
    fileprivate static var method_set_device: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_device")
        return withUnsafePointer (to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_device (_ device: Int32) {
        #if true
        
        var copy_device: Int = Int (device)
        
        gi.object_method_bind_ptrcall_v (InputEvent.method_set_device, UnsafeMutableRawPointer (mutating: handle), nil, &copy_device)
        
        #else
        
        var copy_device: Int = Int (device)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_device) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEvent.method_set_device, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_device: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_device")
        return withUnsafePointer (to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_device ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (InputEvent.method_get_device, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_is_action: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_action")
        return withUnsafePointer (to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1558498928)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this input event matches a pre-defined action of any type.
    /// 
    /// If `exactMatch` is `false`, it ignores additional input modifiers for ``InputEventKey`` and ``InputEventMouseButton`` events, and the direction for ``InputEventJoypadMotion`` events.
    /// 
    public final func isAction (_ action: StringName, exactMatch: Bool = false)-> Bool {
        var _result: Bool = false
        #if true
        
        var copy_exact_match = exactMatch
        
        gi.object_method_bind_ptrcall_v (InputEvent.method_is_action, UnsafeMutableRawPointer (mutating: handle), &_result, &action.content, &copy_exact_match)
        return _result
        #else
        
        var copy_exact_match = exactMatch
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &action.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_exact_match) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (InputEvent.method_is_action, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_is_action_pressed: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_action_pressed")
        return withUnsafePointer (to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1631499404)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given action is being pressed (and is not an echo event for ``InputEventKey`` events, unless `allowEcho` is `true`). Not relevant for events of type ``InputEventMouseMotion`` or ``InputEventScreenDrag``.
    /// 
    /// If `exactMatch` is `false`, it ignores additional input modifiers for ``InputEventKey`` and ``InputEventMouseButton`` events, and the direction for ``InputEventJoypadMotion`` events.
    /// 
    /// > Note: Due to keyboard ghosting, ``isActionPressed(action:allowEcho:exactMatch:)`` may return `false` even if one of the action's keys is pressed. See <a href="https://docs.godotengine.org/en//tutorials/inputs/input_examples.html#keyboard-events">Input examples</a> in the documentation for more information.
    /// 
    public final func isActionPressed (action: StringName, allowEcho: Bool = false, exactMatch: Bool = false)-> Bool {
        var _result: Bool = false
        #if true
        
        var copy_allow_echo = allowEcho
        var copy_exact_match = exactMatch
        
        gi.object_method_bind_ptrcall_v (InputEvent.method_is_action_pressed, UnsafeMutableRawPointer (mutating: handle), &_result, &action.content, &copy_allow_echo, &copy_exact_match)
        return _result
        #else
        
        var copy_allow_echo = allowEcho
        var copy_exact_match = exactMatch
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &action.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_allow_echo) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &copy_exact_match) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (InputEvent.method_is_action_pressed, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                    return _result
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_is_action_released: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_action_released")
        return withUnsafePointer (to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1558498928)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given action is released (i.e. not pressed). Not relevant for events of type ``InputEventMouseMotion`` or ``InputEventScreenDrag``.
    /// 
    /// If `exactMatch` is `false`, it ignores additional input modifiers for ``InputEventKey`` and ``InputEventMouseButton`` events, and the direction for ``InputEventJoypadMotion`` events.
    /// 
    public final func isActionReleased (action: StringName, exactMatch: Bool = false)-> Bool {
        var _result: Bool = false
        #if true
        
        var copy_exact_match = exactMatch
        
        gi.object_method_bind_ptrcall_v (InputEvent.method_is_action_released, UnsafeMutableRawPointer (mutating: handle), &_result, &action.content, &copy_exact_match)
        return _result
        #else
        
        var copy_exact_match = exactMatch
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &action.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_exact_match) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (InputEvent.method_is_action_released, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_action_strength: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_action_strength")
        return withUnsafePointer (to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 801543509)!
            }
            
        }
        
    }()
    
    /// Returns a value between 0.0 and 1.0 depending on the given actions' state. Useful for getting the value of events of type ``InputEventJoypadMotion``.
    /// 
    /// If `exactMatch` is `false`, it ignores additional input modifiers for ``InputEventKey`` and ``InputEventMouseButton`` events, and the direction for ``InputEventJoypadMotion`` events.
    /// 
    public final func getActionStrength (action: StringName, exactMatch: Bool = false)-> Double {
        var _result: Double = 0.0
        #if true
        
        var copy_exact_match = exactMatch
        
        gi.object_method_bind_ptrcall_v (InputEvent.method_get_action_strength, UnsafeMutableRawPointer (mutating: handle), &_result, &action.content, &copy_exact_match)
        return _result
        #else
        
        var copy_exact_match = exactMatch
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &action.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_exact_match) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (InputEvent.method_get_action_strength, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_is_canceled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_canceled")
        return withUnsafePointer (to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this input event has been canceled.
    public final func isCanceled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (InputEvent.method_is_canceled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_is_pressed: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_pressed")
        return withUnsafePointer (to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this input event is pressed. Not relevant for events of type ``InputEventMouseMotion`` or ``InputEventScreenDrag``.
    /// 
    /// > Note: Due to keyboard ghosting, ``isPressed()`` may return `false` even if one of the action's keys is pressed. See <a href="https://docs.godotengine.org/en//tutorials/inputs/input_examples.html#keyboard-events">Input examples</a> in the documentation for more information.
    /// 
    public final func isPressed ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (InputEvent.method_is_pressed, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_is_released: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_released")
        return withUnsafePointer (to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this input event is released. Not relevant for events of type ``InputEventMouseMotion`` or ``InputEventScreenDrag``.
    public final func isReleased ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (InputEvent.method_is_released, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_is_echo: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_echo")
        return withUnsafePointer (to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this input event is an echo event (only for events of type ``InputEventKey``). Any other event type returns `false`.
    public final func isEcho ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (InputEvent.method_is_echo, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_as_text: GDExtensionMethodBindPtr = {
        let methodName = StringName ("as_text")
        return withUnsafePointer (to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns a ``String`` representation of the event.
    public final func asText ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (InputEvent.method_as_text, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_is_match: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_match")
        return withUnsafePointer (to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1754951977)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the specified `event` matches this event. Only valid for action events i.e key (``InputEventKey``), button (``InputEventMouseButton`` or ``InputEventJoypadButton``), axis ``InputEventJoypadMotion`` or action (``InputEventAction``) events.
    /// 
    /// If `exactMatch` is `false`, it ignores additional input modifiers for ``InputEventKey`` and ``InputEventMouseButton`` events, and the direction for ``InputEventJoypadMotion`` events.
    /// 
    public final func isMatch (event: InputEvent?, exactMatch: Bool = true)-> Bool {
        var _result: Bool = false
        #if true
        
        var copy_exact_match = exactMatch
        var copy_event_handle = event?.handle
        
        gi.object_method_bind_ptrcall_v (InputEvent.method_is_match, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_event_handle, &copy_exact_match)
        return _result
        #else
        
        var copy_exact_match = exactMatch
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: event?.handle) { p0 in
        _args.append (event == nil ? nil : p0)
            return withUnsafePointer (to: &copy_exact_match) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (InputEvent.method_is_match, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_is_action_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_action_type")
        return withUnsafePointer (to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this input event's type is one that can be assigned to an input action.
    public final func isActionType ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (InputEvent.method_is_action_type, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_accumulate: GDExtensionMethodBindPtr = {
        let methodName = StringName ("accumulate")
        return withUnsafePointer (to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1062211774)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given input event and this input event can be added together (only for events of type ``InputEventMouseMotion``).
    /// 
    /// The given input event's position, global position and speed will be copied. The resulting `relative` is a sum of both events. Both events' modifiers have to be identical.
    /// 
    public final func accumulate (withEvent: InputEvent?)-> Bool {
        var _result: Bool = false
        #if true
        
        var copy_with_event_handle = withEvent?.handle
        
        gi.object_method_bind_ptrcall_v (InputEvent.method_accumulate, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_with_event_handle)
        return _result
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: withEvent?.handle) { p0 in
        _args.append (withEvent == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (InputEvent.method_accumulate, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_xformed_by: GDExtensionMethodBindPtr = {
        let methodName = StringName ("xformed_by")
        return withUnsafePointer (to: &InputEvent.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1282766827)!
            }
            
        }
        
    }()
    
    /// Returns a copy of the given input event which has been offset by `localOfs` and transformed by `xform`. Relevant for events of type ``InputEventMouseButton``, ``InputEventMouseMotion``, ``InputEventScreenTouch``, ``InputEventScreenDrag``, ``InputEventMagnifyGesture`` and ``InputEventPanGesture``.
    public final func xformedBy (xform: Transform2D, localOfs: Vector2 = Vector2 (x: 0, y: 0))-> InputEvent? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if true
        
        var copy_xform = xform
        var copy_local_ofs = localOfs
        
        gi.object_method_bind_ptrcall_v (InputEvent.method_xformed_by, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_xform, &copy_local_ofs)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        var copy_xform = xform
        var copy_local_ofs = localOfs
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_xform) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_local_ofs) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (InputEvent.method_xformed_by, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
            }
        }
        
        #endif
    }
    
}

