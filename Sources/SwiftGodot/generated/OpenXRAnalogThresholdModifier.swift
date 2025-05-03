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


/// The analog threshold binding modifier can modify a float input to a boolean input with specified thresholds.
/// 
/// The analog threshold binding modifier can modify a float input to a boolean input with specified thresholds.
/// 
/// See <a href="https://registry.khronos.org/OpenXR/specs/1.1/html/xrspec.html#XR_VALVE_analog_threshold">XR_VALVE_analog_threshold</a> for in-depth details.
/// 
open class OpenXRAnalogThresholdModifier: OpenXRActionBindingModifier {
    private static var className = StringName("OpenXRAnalogThresholdModifier")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// When our input value is equal or larger than this value, our output becomes true. It stays true until it falls under the ``offThreshold`` value.
    final public var onThreshold: Double {
        get {
            return get_on_threshold ()
        }
        
        set {
            set_on_threshold (newValue)
        }
        
    }
    
    /// When our input value falls below this, our output becomes false.
    final public var offThreshold: Double {
        get {
            return get_off_threshold ()
        }
        
        set {
            set_off_threshold (newValue)
        }
        
    }
    
    /// Haptic pulse to emit when the user presses the input.
    final public var onHaptic: OpenXRHapticBase? {
        get {
            return get_on_haptic ()
        }
        
        set {
            set_on_haptic (newValue)
        }
        
    }
    
    /// Haptic pulse to emit when the user releases the input.
    final public var offHaptic: OpenXRHapticBase? {
        get {
            return get_off_haptic ()
        }
        
        set {
            set_off_haptic (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_on_threshold: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_on_threshold")
        return withUnsafePointer(to: &OpenXRAnalogThresholdModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_on_threshold(_ onThreshold: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: onThreshold) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAnalogThresholdModifier.method_set_on_threshold, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_on_threshold: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_on_threshold")
        return withUnsafePointer(to: &OpenXRAnalogThresholdModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_on_threshold() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(OpenXRAnalogThresholdModifier.method_get_on_threshold, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_off_threshold: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_off_threshold")
        return withUnsafePointer(to: &OpenXRAnalogThresholdModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_off_threshold(_ offThreshold: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: offThreshold) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAnalogThresholdModifier.method_set_off_threshold, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_off_threshold: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_off_threshold")
        return withUnsafePointer(to: &OpenXRAnalogThresholdModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_off_threshold() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(OpenXRAnalogThresholdModifier.method_get_off_threshold, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_on_haptic: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_on_haptic")
        return withUnsafePointer(to: &OpenXRAnalogThresholdModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2998020150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_on_haptic(_ haptic: OpenXRHapticBase?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: haptic?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAnalogThresholdModifier.method_set_on_haptic, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_on_haptic: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_on_haptic")
        return withUnsafePointer(to: &OpenXRAnalogThresholdModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 922310751)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_on_haptic() -> OpenXRHapticBase? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(OpenXRAnalogThresholdModifier.method_get_on_haptic, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_off_haptic: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_off_haptic")
        return withUnsafePointer(to: &OpenXRAnalogThresholdModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2998020150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_off_haptic(_ haptic: OpenXRHapticBase?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: haptic?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAnalogThresholdModifier.method_set_off_haptic, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_off_haptic: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_off_haptic")
        return withUnsafePointer(to: &OpenXRAnalogThresholdModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 922310751)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_off_haptic() -> OpenXRHapticBase? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(OpenXRAnalogThresholdModifier.method_get_off_haptic, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
}

