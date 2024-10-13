// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Represents a triggered keyboard ``Shortcut``.
/// 
/// InputEventShortcut is a special event that can be received in ``Node/_unhandledKeyInput(event:)``. It is typically sent by the editor's Command Palette to trigger actions, but can also be sent manually using ``Viewport/pushInput(event:inLocalCoords:)``.
open class InputEventShortcut: InputEvent {
    override open class var godotClassName: StringName { "InputEventShortcut" }
    
    /* Properties */
    
    /// The ``Shortcut`` represented by this event. Its ``Shortcut/matchesEvent(_:)`` method will always return `true` for this event.
    final public var shortcut: Shortcut? {
        get {
            return get_shortcut ()
        }
        
        set {
            set_shortcut (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_shortcut: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_shortcut")
        return withUnsafePointer(to: &InputEventShortcut.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 857163497)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shortcut(_ shortcut: Shortcut?) {
        withUnsafePointer(to: shortcut?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventShortcut.method_set_shortcut, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_shortcut: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_shortcut")
        return withUnsafePointer(to: &InputEventShortcut.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3766804753)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_shortcut() -> Shortcut? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(InputEventShortcut.method_get_shortcut, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
}

