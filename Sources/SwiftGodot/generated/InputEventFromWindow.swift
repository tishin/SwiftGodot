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


/// Abstract base class for ``Viewport``-based input events.
/// 
/// InputEventFromWindow represents events specifically received by windows. This includes mouse events, keyboard events in focused windows or touch screen actions.
open class InputEventFromWindow: InputEvent {
    private static var className = StringName("InputEventFromWindow")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The ID of a ``Window`` that received this event.
    final public var windowId: Int {
        get {
            return get_window_id ()
        }
        
        set {
            set_window_id (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_window_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_window_id")
        return withUnsafePointer(to: &InputEventFromWindow.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_window_id(_ id: Int) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventFromWindow.method_set_window_id, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_window_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_window_id")
        return withUnsafePointer(to: &InputEventFromWindow.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_window_id() -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        gi.object_method_bind_ptrcall(InputEventFromWindow.method_get_window_id, handle, nil, &_result)
        return _result
    }
    
}

