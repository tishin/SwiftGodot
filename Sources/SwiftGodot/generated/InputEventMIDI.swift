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


/// Represents a MIDI message from a MIDI device, such as a musical keyboard.
/// 
/// InputEventMIDI stores information about messages from <a href="https://en.wikipedia.org/wiki/MIDI">MIDI</a> (Musical Instrument Digital Interface) devices. These may include musical keyboards, synthesizers, and drum machines.
/// 
/// MIDI messages can be received over a 5-pin MIDI connector or over USB. If your device supports both be sure to check the settings in the device to see which output it is using.
/// 
/// By default, Godot does not detect MIDI devices. You need to call ``OS/openMidiInputs()``, first. You can check which devices are detected with ``OS/getConnectedMidiInputs()``, and close the connection with ``OS/closeMidiInputs()``.
/// 
/// > Note: Godot does not support MIDI output, so there is no way to emit MIDI messages from Godot. Only MIDI input is supported.
/// 
/// > Note: On the Web platform, using MIDI input requires a browser permission to be granted first. This permission request is performed when calling ``OS/openMidiInputs()``. MIDI input will not work until the user accepts the permission request.
/// 
open class InputEventMIDI: InputEvent {
    private static var className = StringName("InputEventMIDI")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The MIDI channel of this message, ranging from `0` to `15`. MIDI channel `9` is reserved for percussion instruments.
    final public var channel: Int32 {
        get {
            return get_channel ()
        }
        
        set {
            set_channel (newValue)
        }
        
    }
    
    /// Represents the type of MIDI message (see the ``MIDIMessage`` enum).
    /// 
    /// For more information, see the <a href="https://www.midi.org/specifications-old/item/table-2-expanded-messages-list-status-bytes">MIDI message status byte list chart</a>.
    /// 
    final public var message: MIDIMessage {
        get {
            return get_message ()
        }
        
        set {
            set_message (newValue)
        }
        
    }
    
    /// The pitch index number of this MIDI message. This value ranges from `0` to `127`.
    /// 
    /// On a piano, the **middle C** is `60`, followed by a **C-sharp** (`61`), then a **D** (`62`), and so on. Each octave is split in offsets of 12. See the "MIDI note number" column of the <a href="https://en.wikipedia.org/wiki/Piano_key_frequencies">piano key frequency chart</a> a full list.
    /// 
    final public var pitch: Int32 {
        get {
            return get_pitch ()
        }
        
        set {
            set_pitch (newValue)
        }
        
    }
    
    /// The velocity of the MIDI message. This value ranges from `0` to `127`. For a musical keyboard, this corresponds to how quickly the key was pressed, and is rarely above `110` in practice.
    /// 
    /// > Note: Some MIDI devices may send a ``MIDIMessage/noteOn`` message with `0` velocity and expect it to be treated the same as a ``MIDIMessage/noteOff`` message. If necessary, this can be handled with a few lines of code:
    /// 
    final public var velocity: Int32 {
        get {
            return get_velocity ()
        }
        
        set {
            set_velocity (newValue)
        }
        
    }
    
    /// The instrument (also called _program_ or _preset_) used on this MIDI message. This value ranges from `0` to `127`.
    /// 
    /// To see what each value means, refer to the <a href="https://en.wikipedia.org/wiki/General_MIDI#Program_change_events">General MIDI's instrument list</a>. Keep in mind that the list is off by 1 because it does not begin from 0. A value of `0` corresponds to the acoustic grand piano.
    /// 
    final public var instrument: Int32 {
        get {
            return get_instrument ()
        }
        
        set {
            set_instrument (newValue)
        }
        
    }
    
    /// The strength of the key being pressed. This value ranges from `0` to `127`.
    /// 
    /// > Note: For many devices, this value is always `0`. Other devices such as musical keyboards may simulate pressure by changing the ``velocity``, instead.
    /// 
    final public var pressure: Int32 {
        get {
            return get_pressure ()
        }
        
        set {
            set_pressure (newValue)
        }
        
    }
    
    /// The unique number of the controller, if ``message`` is ``MIDIMessage/controlChange``, otherwise this is `0`. This value can be used to identify sliders for volume, balance, and panning, as well as switches and pedals on the MIDI device. See the <a href="https://en.wikipedia.org/wiki/General_MIDI#Controller_events">General MIDI specification</a> for a small list.
    final public var controllerNumber: Int32 {
        get {
            return get_controller_number ()
        }
        
        set {
            set_controller_number (newValue)
        }
        
    }
    
    /// The value applied to the controller. If ``message`` is ``MIDIMessage/controlChange``, this value ranges from `0` to `127`, otherwise it is `0`. See also ``controllerValue``.
    final public var controllerValue: Int32 {
        get {
            return get_controller_value ()
        }
        
        set {
            set_controller_value (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_channel: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_channel")
        return withUnsafePointer(to: &InputEventMIDI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_channel(_ channel: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: channel) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventMIDI.method_set_channel, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_channel: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_channel")
        return withUnsafePointer(to: &InputEventMIDI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_channel() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(InputEventMIDI.method_get_channel, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_message: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_message")
        return withUnsafePointer(to: &InputEventMIDI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1064271510)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_message(_ message: MIDIMessage) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: message.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventMIDI.method_set_message, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_message: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_message")
        return withUnsafePointer(to: &InputEventMIDI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1936512097)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_message() -> MIDIMessage {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(InputEventMIDI.method_get_message, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return MIDIMessage (rawValue: _result)!
    }
    
    fileprivate static let method_set_pitch: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_pitch")
        return withUnsafePointer(to: &InputEventMIDI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pitch(_ pitch: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pitch) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventMIDI.method_set_pitch, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_pitch: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_pitch")
        return withUnsafePointer(to: &InputEventMIDI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pitch() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(InputEventMIDI.method_get_pitch, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_velocity")
        return withUnsafePointer(to: &InputEventMIDI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_velocity(_ velocity: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: velocity) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventMIDI.method_set_velocity, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_velocity")
        return withUnsafePointer(to: &InputEventMIDI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_velocity() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(InputEventMIDI.method_get_velocity, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_instrument: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_instrument")
        return withUnsafePointer(to: &InputEventMIDI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_instrument(_ instrument: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: instrument) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventMIDI.method_set_instrument, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_instrument: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_instrument")
        return withUnsafePointer(to: &InputEventMIDI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_instrument() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(InputEventMIDI.method_get_instrument, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_pressure: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_pressure")
        return withUnsafePointer(to: &InputEventMIDI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pressure(_ pressure: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pressure) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventMIDI.method_set_pressure, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_pressure: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_pressure")
        return withUnsafePointer(to: &InputEventMIDI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pressure() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(InputEventMIDI.method_get_pressure, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_controller_number: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_controller_number")
        return withUnsafePointer(to: &InputEventMIDI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_controller_number(_ controllerNumber: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: controllerNumber) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventMIDI.method_set_controller_number, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_controller_number: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_controller_number")
        return withUnsafePointer(to: &InputEventMIDI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_controller_number() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(InputEventMIDI.method_get_controller_number, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_controller_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_controller_value")
        return withUnsafePointer(to: &InputEventMIDI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_controller_value(_ controllerValue: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: controllerValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventMIDI.method_set_controller_value, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_controller_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_controller_value")
        return withUnsafePointer(to: &InputEventMIDI.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_controller_value() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(InputEventMIDI.method_get_controller_value, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

