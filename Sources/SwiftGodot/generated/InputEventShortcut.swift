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


/// Represents a triggered keyboard ``Shortcut``.
/// 
/// InputEventShortcut is a special event that can be received in ``Node/_input(event:)``, ``Node/_shortcutInput(event:)``, and ``Node/_unhandledInput(event:)``. It is typically sent by the editor's Command Palette to trigger actions, but can also be sent manually using ``Viewport/pushInput(event:inLocalCoords:)``.
open class InputEventShortcut: InputEvent {
    private static var className = StringName("InputEventShortcut")
    override open class var godotClassName: StringName { className }
    
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
    fileprivate static let method_set_shortcut: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_shortcut")
        return withUnsafePointer(to: &InputEventShortcut.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 857163497)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shortcut(_ shortcut: Shortcut?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shortcut?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventShortcut.method_set_shortcut, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_shortcut: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_shortcut")
        return withUnsafePointer(to: &InputEventShortcut.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3766804753)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_shortcut() -> Shortcut? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(InputEventShortcut.method_get_shortcut, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
}

