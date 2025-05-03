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


/// Represents a magnifying touch gesture.
/// 
/// Stores the factor of a magnifying touch gesture. This is usually performed when the user pinches the touch screen and used for zooming in/out.
/// 
/// > Note: On Android, this requires the ``ProjectSettings/inputDevices/pointing/android/enablePanAndScaleGestures`` project setting to be enabled.
/// 
open class InputEventMagnifyGesture: InputEventGesture {
    private static var className = StringName("InputEventMagnifyGesture")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The amount (or delta) of the event. This value is closer to `1.0` the slower the gesture is performed.
    final public var factor: Double {
        get {
            return get_factor ()
        }
        
        set {
            set_factor (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_factor: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_factor")
        return withUnsafePointer(to: &InputEventMagnifyGesture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_factor(_ factor: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: factor) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventMagnifyGesture.method_set_factor, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_factor: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_factor")
        return withUnsafePointer(to: &InputEventMagnifyGesture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_factor() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(InputEventMagnifyGesture.method_get_factor, handle, nil, &_result)
        return _result
    }
    
}

