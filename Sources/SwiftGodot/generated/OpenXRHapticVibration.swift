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


/// Vibration haptic feedback.
/// 
/// This haptic feedback resource makes it possible to define a vibration based haptic feedback pulse that can be triggered through actions in the OpenXR action map.
open class OpenXRHapticVibration: OpenXRHapticBase {
    private static var className = StringName("OpenXRHapticVibration")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The duration of the pulse in nanoseconds. Use `-1` for a minimum duration pulse for the current XR runtime.
    final public var duration: Int {
        get {
            return get_duration ()
        }
        
        set {
            set_duration (newValue)
        }
        
    }
    
    /// The frequency of the pulse in Hz. `0.0` will let the XR runtime chose an optimal frequency for the device used.
    final public var frequency: Double {
        get {
            return get_frequency ()
        }
        
        set {
            set_frequency (newValue)
        }
        
    }
    
    /// The amplitude of the pulse between `0.0` and `1.0`.
    final public var amplitude: Double {
        get {
            return get_amplitude ()
        }
        
        set {
            set_amplitude (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_duration: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_duration")
        return withUnsafePointer(to: &OpenXRHapticVibration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_duration(_ duration: Int) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: duration) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRHapticVibration.method_set_duration, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_duration: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_duration")
        return withUnsafePointer(to: &OpenXRHapticVibration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_duration() -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        gi.object_method_bind_ptrcall(OpenXRHapticVibration.method_get_duration, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_frequency: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_frequency")
        return withUnsafePointer(to: &OpenXRHapticVibration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_frequency(_ frequency: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: frequency) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRHapticVibration.method_set_frequency, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_frequency: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_frequency")
        return withUnsafePointer(to: &OpenXRHapticVibration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_frequency() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(OpenXRHapticVibration.method_get_frequency, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_amplitude: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_amplitude")
        return withUnsafePointer(to: &OpenXRHapticVibration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_amplitude(_ amplitude: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: amplitude) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRHapticVibration.method_set_amplitude, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_amplitude: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_amplitude")
        return withUnsafePointer(to: &OpenXRHapticVibration.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_amplitude() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(OpenXRHapticVibration.method_get_amplitude, handle, nil, &_result)
        return _result
    }
    
}

