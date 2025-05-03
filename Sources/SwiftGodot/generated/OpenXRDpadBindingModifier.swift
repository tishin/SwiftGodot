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


/// The DPad binding modifier converts an axis input to a dpad output.
/// 
/// The DPad binding modifier converts an axis input to a dpad output, emulating a DPad. New input paths for each dpad direction will be added to the interaction profile. When bound to actions the DPad emulation will be activated. You should **not** combine dpad inputs with normal inputs in the same action set for the same control, this will result in an error being returned when suggested bindings are submitted to OpenXR.
/// 
/// See <a href="https://registry.khronos.org/OpenXR/specs/1.1/html/xrspec.html#XR_EXT_dpad_binding">XR_EXT_dpad_binding</a> for in-depth details.
/// 
/// > Note: If the DPad binding modifier extension is enabled, all dpad binding paths will be available in the action map. Adding the modifier to an interaction profile allows you to further customize the behavior.
/// 
open class OpenXRDpadBindingModifier: OpenXRIPBindingModifier {
    private static var className = StringName("OpenXRDpadBindingModifier")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Action set for which this dpad binding modifier is active.
    final public var actionSet: OpenXRActionSet? {
        get {
            return get_action_set ()
        }
        
        set {
            set_action_set (newValue)
        }
        
    }
    
    /// Input path for this dpad binding modifier.
    final public var inputPath: String {
        get {
            return get_input_path ()
        }
        
        set {
            set_input_path (newValue)
        }
        
    }
    
    /// When our input value is equal or larger than this value, our dpad in that direction becomes true. It stays true until it falls under the ``thresholdReleased`` value.
    final public var threshold: Double {
        get {
            return get_threshold ()
        }
        
        set {
            set_threshold (newValue)
        }
        
    }
    
    /// When our input value falls below this, our output becomes false.
    final public var thresholdReleased: Double {
        get {
            return get_threshold_released ()
        }
        
        set {
            set_threshold_released (newValue)
        }
        
    }
    
    /// Center region in which our center position of our dpad return `true`.
    final public var centerRegion: Double {
        get {
            return get_center_region ()
        }
        
        set {
            set_center_region (newValue)
        }
        
    }
    
    /// The angle of each wedge that identifies the 4 directions of the emulated dpad.
    final public var wedgeAngle: Double {
        get {
            return get_wedge_angle ()
        }
        
        set {
            set_wedge_angle (newValue)
        }
        
    }
    
    /// If `false`, when the joystick enters a new dpad zone this becomes true.
    /// 
    /// If `true`, when the joystick remains in active dpad zone, this remains true even if we overlap with another zone.
    /// 
    final public var isSticky: Bool {
        get {
            return get_is_sticky ()
        }
        
        set {
            set_is_sticky (newValue)
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
    fileprivate static let method_set_action_set: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_action_set")
        return withUnsafePointer(to: &OpenXRDpadBindingModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2093310581)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_action_set(_ actionSet: OpenXRActionSet?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: actionSet?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRDpadBindingModifier.method_set_action_set, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_action_set: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_action_set")
        return withUnsafePointer(to: &OpenXRDpadBindingModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 619941079)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_action_set() -> OpenXRActionSet? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(OpenXRDpadBindingModifier.method_get_action_set, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_input_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_input_path")
        return withUnsafePointer(to: &OpenXRDpadBindingModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_input_path(_ inputPath: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let inputPath = GString(inputPath)
        withUnsafePointer(to: inputPath.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRDpadBindingModifier.method_set_input_path, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_input_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_input_path")
        return withUnsafePointer(to: &OpenXRDpadBindingModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_input_path() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(OpenXRDpadBindingModifier.method_get_input_path, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_threshold: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_threshold")
        return withUnsafePointer(to: &OpenXRDpadBindingModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_threshold(_ threshold: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: threshold) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRDpadBindingModifier.method_set_threshold, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_threshold: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_threshold")
        return withUnsafePointer(to: &OpenXRDpadBindingModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_threshold() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(OpenXRDpadBindingModifier.method_get_threshold, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_threshold_released: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_threshold_released")
        return withUnsafePointer(to: &OpenXRDpadBindingModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_threshold_released(_ thresholdReleased: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: thresholdReleased) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRDpadBindingModifier.method_set_threshold_released, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_threshold_released: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_threshold_released")
        return withUnsafePointer(to: &OpenXRDpadBindingModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_threshold_released() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(OpenXRDpadBindingModifier.method_get_threshold_released, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_center_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_center_region")
        return withUnsafePointer(to: &OpenXRDpadBindingModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_center_region(_ centerRegion: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: centerRegion) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRDpadBindingModifier.method_set_center_region, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_center_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_center_region")
        return withUnsafePointer(to: &OpenXRDpadBindingModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_center_region() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(OpenXRDpadBindingModifier.method_get_center_region, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_wedge_angle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_wedge_angle")
        return withUnsafePointer(to: &OpenXRDpadBindingModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_wedge_angle(_ wedgeAngle: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: wedgeAngle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRDpadBindingModifier.method_set_wedge_angle, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_wedge_angle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_wedge_angle")
        return withUnsafePointer(to: &OpenXRDpadBindingModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_wedge_angle() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(OpenXRDpadBindingModifier.method_get_wedge_angle, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_is_sticky: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_is_sticky")
        return withUnsafePointer(to: &OpenXRDpadBindingModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_is_sticky(_ isSticky: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: isSticky) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRDpadBindingModifier.method_set_is_sticky, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_is_sticky: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_is_sticky")
        return withUnsafePointer(to: &OpenXRDpadBindingModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_is_sticky() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(OpenXRDpadBindingModifier.method_get_is_sticky, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_on_haptic: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_on_haptic")
        return withUnsafePointer(to: &OpenXRDpadBindingModifier.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(OpenXRDpadBindingModifier.method_set_on_haptic, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_on_haptic: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_on_haptic")
        return withUnsafePointer(to: &OpenXRDpadBindingModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 922310751)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_on_haptic() -> OpenXRHapticBase? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(OpenXRDpadBindingModifier.method_get_on_haptic, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_off_haptic: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_off_haptic")
        return withUnsafePointer(to: &OpenXRDpadBindingModifier.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(OpenXRDpadBindingModifier.method_set_off_haptic, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_off_haptic: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_off_haptic")
        return withUnsafePointer(to: &OpenXRDpadBindingModifier.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 922310751)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_off_haptic() -> OpenXRHapticBase? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(OpenXRDpadBindingModifier.method_get_off_haptic, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
}

