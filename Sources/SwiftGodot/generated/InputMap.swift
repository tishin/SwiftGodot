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


/// A singleton that manages all ``InputEventAction``s.
/// 
/// Manages all ``InputEventAction`` which can be created/modified from the project settings menu **Project > Project Settings > Input Map** or in code with ``addAction(_:deadzone:)`` and ``actionAddEvent(action:event:)``. See ``Node/_input(event:)``.
open class InputMap: Object {
    /// The shared instance of this class
    public static var shared: InputMap {
        return withUnsafePointer(to: &InputMap.godotClassName.content) { ptr in
            getOrInitSwiftObject(nativeHandle: gi.global_get_singleton(ptr)!, ownsRef: false)!
        }
        
    }
    
    private static var className = StringName("InputMap")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_has_action: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_action")
        return withUnsafePointer(to: &InputMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2619796661)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the ``InputMap`` has a registered action with the given name.
    public static func hasAction(_ action: StringName) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: action.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_has_action, shared.handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_actions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_actions")
        return withUnsafePointer(to: &InputMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Returns an array of all actions in the ``InputMap``.
    public static func getActions() -> TypedArray<StringName> {
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(method_get_actions, shared.handle, nil, &_result)
        return TypedArray<StringName>(takingOver: _result)
    }
    
    fileprivate static let method_add_action: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_action")
        return withUnsafePointer(to: &InputMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1195233573)!
            }
            
        }
        
    }()
    
    /// Adds an empty action to the ``InputMap`` with a configurable `deadzone`.
    /// 
    /// An ``InputEvent`` can then be added to this action with ``actionAddEvent(action:event:)``.
    /// 
    public static func addAction(_ action: StringName, deadzone: Double = 0.2) {
        withUnsafePointer(to: action.content) { pArg0 in
            withUnsafePointer(to: deadzone) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_add_action, shared.handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_erase_action: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("erase_action")
        return withUnsafePointer(to: &InputMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    /// Removes an action from the ``InputMap``.
    public static func eraseAction(_ action: StringName) {
        withUnsafePointer(to: action.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_erase_action, shared.handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_action_set_deadzone: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("action_set_deadzone")
        return withUnsafePointer(to: &InputMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4135858297)!
            }
            
        }
        
    }()
    
    /// Sets a deadzone value for the action.
    public static func actionSetDeadzone(action: StringName, deadzone: Double) {
        withUnsafePointer(to: action.content) { pArg0 in
            withUnsafePointer(to: deadzone) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_action_set_deadzone, shared.handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_action_get_deadzone: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("action_get_deadzone")
        return withUnsafePointer(to: &InputMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1391627649)!
            }
            
        }
        
    }()
    
    /// Returns a deadzone value for the action.
    public static func actionGetDeadzone(action: StringName) -> Double {
        var _result: Double = 0.0
        withUnsafePointer(to: action.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_action_get_deadzone, shared.handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_action_add_event: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("action_add_event")
        return withUnsafePointer(to: &InputMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 518302593)!
            }
            
        }
        
    }()
    
    /// Adds an ``InputEvent`` to an action. This ``InputEvent`` will trigger the action.
    public static func actionAddEvent(action: StringName, event: InputEvent?) {
        withUnsafePointer(to: action.content) { pArg0 in
            withUnsafePointer(to: event?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_action_add_event, shared.handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_action_has_event: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("action_has_event")
        return withUnsafePointer(to: &InputMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1185871985)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the action has the given ``InputEvent`` associated with it.
    public static func actionHasEvent(action: StringName, event: InputEvent?) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: action.content) { pArg0 in
            withUnsafePointer(to: event?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_action_has_event, shared.handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_action_erase_event: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("action_erase_event")
        return withUnsafePointer(to: &InputMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 518302593)!
            }
            
        }
        
    }()
    
    /// Removes an ``InputEvent`` from an action.
    public static func actionEraseEvent(action: StringName, event: InputEvent?) {
        withUnsafePointer(to: action.content) { pArg0 in
            withUnsafePointer(to: event?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_action_erase_event, shared.handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_action_erase_events: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("action_erase_events")
        return withUnsafePointer(to: &InputMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    /// Removes all events from an action.
    public static func actionEraseEvents(action: StringName) {
        withUnsafePointer(to: action.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_action_erase_events, shared.handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_action_get_events: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("action_get_events")
        return withUnsafePointer(to: &InputMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 689397652)!
            }
            
        }
        
    }()
    
    /// Returns an array of ``InputEvent``s associated with a given action.
    /// 
    /// > Note: When used in the editor (e.g. a tool script or ``EditorPlugin``), this method will return events for the editor action. If you want to access your project's input binds from the editor, read the `input/*` settings from ``ProjectSettings``.
    /// 
    public static func actionGetEvents(action: StringName) -> TypedArray<InputEvent?> {
        var _result: Int64 = 0
        withUnsafePointer(to: action.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_action_get_events, shared.handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return TypedArray<InputEvent?>(takingOver: _result)
    }
    
    fileprivate static let method_event_is_action: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("event_is_action")
        return withUnsafePointer(to: &InputMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3193353650)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given event is part of an existing action. This method ignores keyboard modifiers if the given ``InputEvent`` is not pressed (for proper release detection). See ``actionHasEvent(action:event:)`` if you don't want this behavior.
    /// 
    /// If `exactMatch` is `false`, it ignores additional input modifiers for ``InputEventKey`` and ``InputEventMouseButton`` events, and the direction for ``InputEventJoypadMotion`` events.
    /// 
    public static func eventIsAction(event: InputEvent?, action: StringName, exactMatch: Bool = false) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: event?.handle) { pArg0 in
            withUnsafePointer(to: action.content) { pArg1 in
                withUnsafePointer(to: exactMatch) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(method_event_is_action, shared.handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_load_from_project_settings: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("load_from_project_settings")
        return withUnsafePointer(to: &InputMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears all ``InputEventAction`` in the ``InputMap`` and load it anew from ``ProjectSettings``.
    public static func loadFromProjectSettings() {
        gi.object_method_bind_ptrcall(method_load_from_project_settings, shared.handle, nil, nil)
        
    }
    
}

