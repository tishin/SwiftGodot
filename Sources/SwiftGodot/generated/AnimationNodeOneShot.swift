// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Plays an animation once in an ``AnimationNodeBlendTree``.
/// 
/// A resource to add to an ``AnimationNodeBlendTree``. This animation node will execute a sub-animation and return once it finishes. Blend times for fading in and out can be customized, as well as filters.
/// 
/// After setting the request and changing the animation playback, the one-shot node automatically clears the request on the next process frame by setting its `request` value to .none.
/// 
open class AnimationNodeOneShot: AnimationNodeSync {
    override open class var godotClassName: StringName { "AnimationNodeOneShot" }
    public enum OneShotRequest: Int64, CaseIterable, CustomDebugStringConvertible {
        /// The default state of the request. Nothing is done.
        case none = 0 // ONE_SHOT_REQUEST_NONE
        /// The request to play the animation connected to "shot" port.
        case fire = 1 // ONE_SHOT_REQUEST_FIRE
        /// The request to stop the animation connected to "shot" port.
        case abort = 2 // ONE_SHOT_REQUEST_ABORT
        /// The request to fade out the animation connected to "shot" port.
        case fadeOut = 3 // ONE_SHOT_REQUEST_FADE_OUT
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .none: return ".none"
                case .fire: return ".fire"
                case .abort: return ".abort"
                case .fadeOut: return ".fadeOut"
            }
            
        }
        
    }
    
    public enum MixMode: Int64, CaseIterable, CustomDebugStringConvertible {
        /// Blends two animations. See also ``AnimationNodeBlend2``.
        case blend = 0 // MIX_MODE_BLEND
        /// Blends two animations additively. See also ``AnimationNodeAdd2``.
        case add = 1 // MIX_MODE_ADD
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .blend: return ".blend"
                case .add: return ".add"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// The blend type.
    final public var mixMode: AnimationNodeOneShot.MixMode {
        get {
            return get_mix_mode ()
        }
        
        set {
            set_mix_mode (newValue)
        }
        
    }
    
    /// The fade-in duration. For example, setting this to `1.0` for a 5 second length animation will produce a cross-fade that starts at 0 second and ends at 1 second during the animation.
    /// 
    /// > Note: ``AnimationNodeOneShot`` transitions the current state after the end of the fading. When ``AnimationNodeOutput`` is considered as the most upstream, so the ``fadeinTime`` is scaled depending on the downstream delta. For example, if this value is set to `1.0` and a ``AnimationNodeTimeScale`` with a value of `2.0` is chained downstream, the actual processing time will be 0.5 second.
    /// 
    final public var fadeinTime: Double {
        get {
            return get_fadein_time ()
        }
        
        set {
            set_fadein_time (newValue)
        }
        
    }
    
    /// Determines how cross-fading between animations is eased. If empty, the transition will be linear.
    final public var fadeinCurve: Curve? {
        get {
            return get_fadein_curve ()
        }
        
        set {
            set_fadein_curve (newValue)
        }
        
    }
    
    /// The fade-out duration. For example, setting this to `1.0` for a 5 second length animation will produce a cross-fade that starts at 4 second and ends at 5 second during the animation.
    /// 
    /// > Note: ``AnimationNodeOneShot`` transitions the current state after the end of the fading. When ``AnimationNodeOutput`` is considered as the most upstream, so the ``fadeoutTime`` is scaled depending on the downstream delta. For example, if this value is set to `1.0` and an ``AnimationNodeTimeScale`` with a value of `2.0` is chained downstream, the actual processing time will be 0.5 second.
    /// 
    final public var fadeoutTime: Double {
        get {
            return get_fadeout_time ()
        }
        
        set {
            set_fadeout_time (newValue)
        }
        
    }
    
    /// Determines how cross-fading between animations is eased. If empty, the transition will be linear.
    final public var fadeoutCurve: Curve? {
        get {
            return get_fadeout_curve ()
        }
        
        set {
            set_fadeout_curve (newValue)
        }
        
    }
    
    /// If `true`, breaks the loop at the end of the loop cycle for transition, even if the animation is looping.
    final public var breakLoopAtEnd: Bool {
        get {
            return is_loop_broken_at_end ()
        }
        
        set {
            set_break_loop_at_end (newValue)
        }
        
    }
    
    /// If `true`, the sub-animation will restart automatically after finishing.
    /// 
    /// In other words, to start auto restarting, the animation must be played once with the .fire request. The .abort request stops the auto restarting, but it does not disable the ``autorestart`` itself. So, the .fire request will start auto restarting again.
    /// 
    final public var autorestart: Bool {
        get {
            return has_autorestart ()
        }
        
        set {
            set_autorestart (newValue)
        }
        
    }
    
    /// The delay after which the automatic restart is triggered, in seconds.
    final public var autorestartDelay: Double {
        get {
            return get_autorestart_delay ()
        }
        
        set {
            set_autorestart_delay (newValue)
        }
        
    }
    
    /// If ``autorestart`` is `true`, a random additional delay (in seconds) between 0 and this value will be added to ``autorestartDelay``.
    final public var autorestartRandomDelay: Double {
        get {
            return get_autorestart_random_delay ()
        }
        
        set {
            set_autorestart_random_delay (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_fadein_time: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_fadein_time")
        return withUnsafePointer(to: &AnimationNodeOneShot.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fadein_time(_ time: Double) {
        withUnsafePointer(to: time) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeOneShot.method_set_fadein_time, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_fadein_time: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_fadein_time")
        return withUnsafePointer(to: &AnimationNodeOneShot.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fadein_time() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AnimationNodeOneShot.method_get_fadein_time, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_fadein_curve: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_fadein_curve")
        return withUnsafePointer(to: &AnimationNodeOneShot.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 270443179)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fadein_curve(_ curve: Curve?) {
        withUnsafePointer(to: curve?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeOneShot.method_set_fadein_curve, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_fadein_curve: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_fadein_curve")
        return withUnsafePointer(to: &AnimationNodeOneShot.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2460114913)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fadein_curve() -> Curve? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(AnimationNodeOneShot.method_get_fadein_curve, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_fadeout_time: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_fadeout_time")
        return withUnsafePointer(to: &AnimationNodeOneShot.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fadeout_time(_ time: Double) {
        withUnsafePointer(to: time) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeOneShot.method_set_fadeout_time, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_fadeout_time: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_fadeout_time")
        return withUnsafePointer(to: &AnimationNodeOneShot.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fadeout_time() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AnimationNodeOneShot.method_get_fadeout_time, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_fadeout_curve: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_fadeout_curve")
        return withUnsafePointer(to: &AnimationNodeOneShot.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 270443179)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fadeout_curve(_ curve: Curve?) {
        withUnsafePointer(to: curve?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeOneShot.method_set_fadeout_curve, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_fadeout_curve: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_fadeout_curve")
        return withUnsafePointer(to: &AnimationNodeOneShot.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2460114913)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fadeout_curve() -> Curve? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(AnimationNodeOneShot.method_get_fadeout_curve, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_break_loop_at_end: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_break_loop_at_end")
        return withUnsafePointer(to: &AnimationNodeOneShot.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_break_loop_at_end(_ enable: Bool) {
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeOneShot.method_set_break_loop_at_end, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_loop_broken_at_end: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_loop_broken_at_end")
        return withUnsafePointer(to: &AnimationNodeOneShot.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_loop_broken_at_end() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimationNodeOneShot.method_is_loop_broken_at_end, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_autorestart: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_autorestart")
        return withUnsafePointer(to: &AnimationNodeOneShot.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_autorestart(_ active: Bool) {
        withUnsafePointer(to: active) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeOneShot.method_set_autorestart, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_has_autorestart: GDExtensionMethodBindPtr = {
        let methodName = StringName("has_autorestart")
        return withUnsafePointer(to: &AnimationNodeOneShot.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func has_autorestart() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimationNodeOneShot.method_has_autorestart, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_autorestart_delay: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_autorestart_delay")
        return withUnsafePointer(to: &AnimationNodeOneShot.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_autorestart_delay(_ time: Double) {
        withUnsafePointer(to: time) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeOneShot.method_set_autorestart_delay, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_autorestart_delay: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_autorestart_delay")
        return withUnsafePointer(to: &AnimationNodeOneShot.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_autorestart_delay() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AnimationNodeOneShot.method_get_autorestart_delay, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_autorestart_random_delay: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_autorestart_random_delay")
        return withUnsafePointer(to: &AnimationNodeOneShot.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_autorestart_random_delay(_ time: Double) {
        withUnsafePointer(to: time) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeOneShot.method_set_autorestart_random_delay, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_autorestart_random_delay: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_autorestart_random_delay")
        return withUnsafePointer(to: &AnimationNodeOneShot.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_autorestart_random_delay() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AnimationNodeOneShot.method_get_autorestart_random_delay, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_mix_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_mix_mode")
        return withUnsafePointer(to: &AnimationNodeOneShot.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1018899799)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mix_mode(_ mode: AnimationNodeOneShot.MixMode) {
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeOneShot.method_set_mix_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_mix_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_mix_mode")
        return withUnsafePointer(to: &AnimationNodeOneShot.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3076550526)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mix_mode() -> AnimationNodeOneShot.MixMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AnimationNodeOneShot.method_get_mix_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return AnimationNodeOneShot.MixMode (rawValue: _result)!
    }
    
}

