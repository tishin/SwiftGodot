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


/// Represents axis motions (such as joystick or analog triggers) from a gamepad.
/// 
/// Stores information about joystick motions. One ``InputEventJoypadMotion`` represents one axis at a time. For gamepad buttons, see ``InputEventJoypadButton``.
open class InputEventJoypadMotion: InputEvent {
    private static var className = StringName("InputEventJoypadMotion")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Axis identifier. Use one of the ``JoyAxis`` axis constants.
    final public var axis: JoyAxis {
        get {
            return get_axis ()
        }
        
        set {
            set_axis (newValue)
        }
        
    }
    
    /// Current position of the joystick on the given axis. The value ranges from `-1.0` to `1.0`. A value of `0` means the axis is in its resting position.
    final public var axisValue: Double {
        get {
            return get_axis_value ()
        }
        
        set {
            set_axis_value (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_axis: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_axis")
        return withUnsafePointer(to: &InputEventJoypadMotion.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1332685170)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_axis(_ axis: JoyAxis) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: axis.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventJoypadMotion.method_set_axis, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_axis: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_axis")
        return withUnsafePointer(to: &InputEventJoypadMotion.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4019121683)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_axis() -> JoyAxis {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(InputEventJoypadMotion.method_get_axis, handle, nil, &_result)
        return JoyAxis (rawValue: _result)!
    }
    
    fileprivate static let method_set_axis_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_axis_value")
        return withUnsafePointer(to: &InputEventJoypadMotion.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_axis_value(_ axisValue: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: axisValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventJoypadMotion.method_set_axis_value, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_axis_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_axis_value")
        return withUnsafePointer(to: &InputEventJoypadMotion.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_axis_value() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(InputEventJoypadMotion.method_get_axis_value, handle, nil, &_result)
        return _result
    }
    
}

