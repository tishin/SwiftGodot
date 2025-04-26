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


/// An input animation for an ``AnimationNodeBlendTree``.
/// 
/// A resource to add to an ``AnimationNodeBlendTree``. Only has one output port using the ``animation`` property. Used as an input for ``AnimationNode``s that blend animations together.
open class AnimationNodeAnimation: AnimationRootNode {
    private static var className = StringName("AnimationNodeAnimation")
    override open class var godotClassName: StringName { className }
    public enum PlayMode: Int64, CaseIterable {
        /// Plays animation in forward direction.
        case forward = 0 // PLAY_MODE_FORWARD
        /// Plays animation in backward direction.
        case backward = 1 // PLAY_MODE_BACKWARD
    }
    
    
    /* Properties */
    
    /// Animation to use as an output. It is one of the animations provided by ``AnimationTree/animPlayer``.
    final public var animation: StringName {
        get {
            return get_animation ()
        }
        
        set {
            set_animation (newValue)
        }
        
    }
    
    /// Determines the playback direction of the animation.
    final public var playMode: AnimationNodeAnimation.PlayMode {
        get {
            return get_play_mode ()
        }
        
        set {
            set_play_mode (newValue)
        }
        
    }
    
    /// If `true`, on receiving a request to play an animation from the start, the first frame is not drawn, but only processed, and playback starts from the next frame.
    /// 
    /// See also the notes of ``AnimationPlayer/play(name:customBlend:customSpeed:fromEnd:)``.
    /// 
    final public var advanceOnStart: Bool {
        get {
            return is_advance_on_start ()
        }
        
        set {
            set_advance_on_start (newValue)
        }
        
    }
    
    /// If `true`, ``AnimationNode`` provides an animation based on the ``Animation`` resource with some parameters adjusted.
    final public var useCustomTimeline: Bool {
        get {
            return is_using_custom_timeline ()
        }
        
        set {
            set_use_custom_timeline (newValue)
        }
        
    }
    
    /// If ``useCustomTimeline`` is `true`, offset the start position of the animation.
    final public var timelineLength: Double {
        get {
            return get_timeline_length ()
        }
        
        set {
            set_timeline_length (newValue)
        }
        
    }
    
    /// If `true`, scales the time so that the length specified in ``timelineLength`` is one cycle.
    /// 
    /// This is useful for matching the periods of walking and running animations.
    /// 
    /// If `false`, the original animation length is respected. If you set the loop to ``loopMode``, the animation will loop in ``timelineLength``.
    /// 
    final public var stretchTimeScale: Bool {
        get {
            return is_stretching_time_scale ()
        }
        
        set {
            set_stretch_time_scale (newValue)
        }
        
    }
    
    /// If ``useCustomTimeline`` is `true`, offset the start position of the animation.
    /// 
    /// This is useful for adjusting which foot steps first in 3D walking animations.
    /// 
    final public var startOffset: Double {
        get {
            return get_start_offset ()
        }
        
        set {
            set_start_offset (newValue)
        }
        
    }
    
    /// If ``useCustomTimeline`` is `true`, override the loop settings of the original ``Animation`` resource with the value.
    /// 
    /// > Note: If the ``Animation/loopMode`` isn't set to looping, the ``Animation/trackSetInterpolationLoopWrap(trackIdx:interpolation:)`` option will not be respected. If you cannot get the expected behavior, consider duplicating the ``Animation`` resource and changing the loop settings.
    /// 
    final public var loopMode: Animation.LoopMode {
        get {
            return get_loop_mode ()
        }
        
        set {
            set_loop_mode (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_animation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_animation")
        return withUnsafePointer(to: &AnimationNodeAnimation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_animation(_ name: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeAnimation.method_set_animation, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_animation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_animation")
        return withUnsafePointer(to: &AnimationNodeAnimation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_animation() -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(AnimationNodeAnimation.method_get_animation, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_play_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_play_mode")
        return withUnsafePointer(to: &AnimationNodeAnimation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3347718873)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_play_mode(_ mode: AnimationNodeAnimation.PlayMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeAnimation.method_set_play_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_play_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_play_mode")
        return withUnsafePointer(to: &AnimationNodeAnimation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2061244637)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_play_mode() -> AnimationNodeAnimation.PlayMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AnimationNodeAnimation.method_get_play_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return AnimationNodeAnimation.PlayMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_advance_on_start: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_advance_on_start")
        return withUnsafePointer(to: &AnimationNodeAnimation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_advance_on_start(_ advanceOnStart: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: advanceOnStart) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeAnimation.method_set_advance_on_start, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_advance_on_start: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_advance_on_start")
        return withUnsafePointer(to: &AnimationNodeAnimation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_advance_on_start() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimationNodeAnimation.method_is_advance_on_start, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_use_custom_timeline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_custom_timeline")
        return withUnsafePointer(to: &AnimationNodeAnimation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_custom_timeline(_ useCustomTimeline: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: useCustomTimeline) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeAnimation.method_set_use_custom_timeline, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_using_custom_timeline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_using_custom_timeline")
        return withUnsafePointer(to: &AnimationNodeAnimation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_using_custom_timeline() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimationNodeAnimation.method_is_using_custom_timeline, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_timeline_length: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_timeline_length")
        return withUnsafePointer(to: &AnimationNodeAnimation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_timeline_length(_ timelineLength: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: timelineLength) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeAnimation.method_set_timeline_length, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_timeline_length: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_timeline_length")
        return withUnsafePointer(to: &AnimationNodeAnimation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_timeline_length() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AnimationNodeAnimation.method_get_timeline_length, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_stretch_time_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_stretch_time_scale")
        return withUnsafePointer(to: &AnimationNodeAnimation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_stretch_time_scale(_ stretchTimeScale: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: stretchTimeScale) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeAnimation.method_set_stretch_time_scale, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_stretching_time_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_stretching_time_scale")
        return withUnsafePointer(to: &AnimationNodeAnimation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_stretching_time_scale() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimationNodeAnimation.method_is_stretching_time_scale, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_start_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_start_offset")
        return withUnsafePointer(to: &AnimationNodeAnimation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_start_offset(_ startOffset: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: startOffset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeAnimation.method_set_start_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_start_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_start_offset")
        return withUnsafePointer(to: &AnimationNodeAnimation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_start_offset() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AnimationNodeAnimation.method_get_start_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_loop_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_loop_mode")
        return withUnsafePointer(to: &AnimationNodeAnimation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3155355575)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_loop_mode(_ loopMode: Animation.LoopMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: loopMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeAnimation.method_set_loop_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_loop_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_loop_mode")
        return withUnsafePointer(to: &AnimationNodeAnimation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1988889481)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_loop_mode() -> Animation.LoopMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AnimationNodeAnimation.method_get_loop_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return Animation.LoopMode (rawValue: _result)!
    }
    
}

