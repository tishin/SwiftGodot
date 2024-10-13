// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// An input event type for actions.
/// 
/// Contains a generic action which can be targeted from several types of inputs. Actions and their events can be set in the **Input Map** tab in **Project > Project Settings**, or with the ``InputMap`` class.
/// 
/// > Note: Unlike the other ``InputEvent`` subclasses which map to unique physical events, this virtual one is not emitted by the engine. This class is useful to emit actions manually with ``Input/parseInputEvent(_:)``, which are then received in ``Node/_input(event:)``. To check if a physical event matches an action from the Input Map, use ``InputEvent/isAction(_:exactMatch:)`` and ``InputEvent/isActionPressed(action:allowEcho:exactMatch:)``.
/// 
open class InputEventAction: InputEvent {
    override open class var godotClassName: StringName { "InputEventAction" }
    
    /* Properties */
    
    /// The action's name. Actions are accessed via this ``String``.
    final public var action: StringName {
        get {
            return get_action ()
        }
        
        set {
            set_action (newValue)
        }
        
    }
    
    /// If `true`, the action's state is pressed. If `false`, the action's state is released.
    final public var pressed: Bool {
        get {
            return isPressed ()
        }
        
        set {
            set_pressed (newValue)
        }
        
    }
    
    /// The action's strength between 0 and 1. This value is considered as equal to 0 if pressed is `false`. The event strength allows faking analog joypad motion events, by specifying how strongly the joypad axis is bent or pressed.
    final public var strength: Double {
        get {
            return get_strength ()
        }
        
        set {
            set_strength (newValue)
        }
        
    }
    
    /// The real event index in action this event corresponds to (from events defined for this action in the ``InputMap``). If `-1`, a unique ID will be used and actions pressed with this ID will need to be released with another ``InputEventAction``.
    final public var eventIndex: Int32 {
        get {
            return get_event_index ()
        }
        
        set {
            set_event_index (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_action: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_action")
        return withUnsafePointer(to: &InputEventAction.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_action(_ action: StringName) {
        withUnsafePointer(to: action.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventAction.method_set_action, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_action: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_action")
        return withUnsafePointer(to: &InputEventAction.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_action() -> StringName {
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(InputEventAction.method_get_action, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_pressed: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_pressed")
        return withUnsafePointer(to: &InputEventAction.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pressed(_ pressed: Bool) {
        withUnsafePointer(to: pressed) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventAction.method_set_pressed, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_strength: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_strength")
        return withUnsafePointer(to: &InputEventAction.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_strength(_ strength: Double) {
        withUnsafePointer(to: strength) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventAction.method_set_strength, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_strength: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_strength")
        return withUnsafePointer(to: &InputEventAction.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_strength() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(InputEventAction.method_get_strength, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_event_index: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_event_index")
        return withUnsafePointer(to: &InputEventAction.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_event_index(_ index: Int32) {
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventAction.method_set_event_index, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_event_index: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_event_index")
        return withUnsafePointer(to: &InputEventAction.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_event_index() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(InputEventAction.method_get_event_index, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

