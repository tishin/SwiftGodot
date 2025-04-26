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


/// A node used for animation playback.
/// 
/// An animation player is used for general-purpose playback of animations. It contains a dictionary of ``AnimationLibrary`` resources and custom blend times between animation transitions.
/// 
/// Some methods and properties use a single key to reference an animation directly. These keys are formatted as the key for the library, followed by a forward slash, then the key for the animation within the library, for example `"movement/run"`. If the library's key is an empty string (known as the default library), the forward slash is omitted, being the same key used by the library.
/// 
/// ``AnimationPlayer`` is better-suited than ``Tween`` for more complex animations, for example ones with non-trivial timings. It can also be used over ``Tween`` if the animation track editor is more convenient than doing it in code.
/// 
/// Updating the target properties of animations occurs at the process frame.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``currentAnimationChanged``
/// - ``animationChanged``
open class AnimationPlayer: AnimationMixer {
    private static var className = StringName("AnimationPlayer")
    override open class var godotClassName: StringName { className }
    public enum AnimationProcessCallback: Int64, CaseIterable {
        /// 
        case physics = 0 // ANIMATION_PROCESS_PHYSICS
        /// 
        case idle = 1 // ANIMATION_PROCESS_IDLE
        /// 
        case manual = 2 // ANIMATION_PROCESS_MANUAL
    }
    
    public enum AnimationMethodCallMode: Int64, CaseIterable {
        /// 
        case deferred = 0 // ANIMATION_METHOD_CALL_DEFERRED
        /// 
        case immediate = 1 // ANIMATION_METHOD_CALL_IMMEDIATE
    }
    
    
    /* Properties */
    
    /// The key of the currently playing animation. If no animation is playing, the property's value is an empty string. Changing this value does not restart the animation. See ``play(name:customBlend:customSpeed:fromEnd:)`` for more information on playing animations.
    /// 
    /// > Note: While this property appears in the Inspector, it's not meant to be edited, and it's not saved in the scene. This property is mainly used to get the currently playing animation, and internally for animation playback tracks. For more information, see ``Animation``.
    /// 
    final public var currentAnimation: String {
        get {
            return get_current_animation ()
        }
        
        set {
            set_current_animation (newValue)
        }
        
    }
    
    /// If playing, the current animation's key, otherwise, the animation last played. When set, this changes the animation, but will not play it unless already playing. See also ``currentAnimation``.
    final public var assignedAnimation: String {
        get {
            return get_assigned_animation ()
        }
        
        set {
            set_assigned_animation (newValue)
        }
        
    }
    
    /// The key of the animation to play when the scene loads.
    final public var autoplay: String {
        get {
            return get_autoplay ()
        }
        
        set {
            set_autoplay (newValue)
        }
        
    }
    
    /// The length (in seconds) of the currently playing animation.
    final public var currentAnimationLength: Double {
        get {
            return get_current_animation_length ()
        }
        
    }
    
    /// The position (in seconds) of the currently playing animation.
    final public var currentAnimationPosition: Double {
        get {
            return get_current_animation_position ()
        }
        
    }
    
    /// If `true`, performs ``AnimationMixer/capture(name:duration:transType:easeType:)`` before playback automatically. This means just ``playWithCapture(name:duration:customBlend:customSpeed:fromEnd:transType:easeType:)`` is executed with default arguments instead of ``play(name:customBlend:customSpeed:fromEnd:)``.
    /// 
    /// > Note: Capture interpolation is only performed if the animation contains a capture track. See also ``Animation/UpdateMode/capture``.
    /// 
    final public var playbackAutoCapture: Bool {
        get {
            return is_auto_capture ()
        }
        
        set {
            set_auto_capture (newValue)
        }
        
    }
    
    /// See also ``playWithCapture(name:duration:customBlend:customSpeed:fromEnd:transType:easeType:)`` and ``AnimationMixer/capture(name:duration:transType:easeType:)``.
    /// 
    /// If ``playbackAutoCaptureDuration`` is negative value, the duration is set to the interval between the current position and the first key.
    /// 
    final public var playbackAutoCaptureDuration: Double {
        get {
            return get_auto_capture_duration ()
        }
        
        set {
            set_auto_capture_duration (newValue)
        }
        
    }
    
    /// The transition type of the capture interpolation. See also ``Tween.TransitionType``.
    final public var playbackAutoCaptureTransitionType: Tween.TransitionType {
        get {
            return get_auto_capture_transition_type ()
        }
        
        set {
            set_auto_capture_transition_type (newValue)
        }
        
    }
    
    /// The ease type of the capture interpolation. See also ``Tween.EaseType``.
    final public var playbackAutoCaptureEaseType: Tween.EaseType {
        get {
            return get_auto_capture_ease_type ()
        }
        
        set {
            set_auto_capture_ease_type (newValue)
        }
        
    }
    
    /// The default time in which to blend animations. Ranges from 0 to 4096 with 0.01 precision.
    final public var playbackDefaultBlendTime: Double {
        get {
            return get_default_blend_time ()
        }
        
        set {
            set_default_blend_time (newValue)
        }
        
    }
    
    /// The speed scaling ratio. For example, if this value is `1`, then the animation plays at normal speed. If it's `0.5`, then it plays at half speed. If it's `2`, then it plays at double speed.
    /// 
    /// If set to a negative value, the animation is played in reverse. If set to `0`, the animation will not advance.
    /// 
    final public var speedScale: Double {
        get {
            return get_speed_scale ()
        }
        
        set {
            set_speed_scale (newValue)
        }
        
    }
    
    /// If `true` and the engine is running in Movie Maker mode (see ``MovieWriter``), exits the engine with ``SceneTree/quit(exitCode:)`` as soon as an animation is done playing in this ``AnimationPlayer``. A message is printed when the engine quits for this reason.
    /// 
    /// > Note: This obeys the same logic as the [signal AnimationMixer.animation_finished] signal, so it will not quit the engine if the animation is set to be looping.
    /// 
    final public var movieQuitOnFinish: Bool {
        get {
            return is_movie_quit_on_finish_enabled ()
        }
        
        set {
            set_movie_quit_on_finish_enabled (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_animation_set_next: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("animation_set_next")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3740211285)!
            }
            
        }
        
    }()
    
    /// Triggers the `animationTo` animation when the `animationFrom` animation completes.
    public final func animationSetNext(animationFrom: StringName, animationTo: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: animationFrom.content) { pArg0 in
            withUnsafePointer(to: animationTo.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimationPlayer.method_animation_set_next, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_animation_get_next: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("animation_get_next")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1965194235)!
            }
            
        }
        
    }()
    
    /// Returns the key of the animation which is queued to play after the `animationFrom` animation.
    public final func animationGetNext(animationFrom: StringName) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: animationFrom.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationPlayer.method_animation_get_next, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_blend_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_blend_time")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3231131886)!
            }
            
        }
        
    }()
    
    /// Specifies a blend time (in seconds) between two animations, referenced by their keys.
    public final func setBlendTime(animationFrom: StringName, animationTo: StringName, sec: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: animationFrom.content) { pArg0 in
            withUnsafePointer(to: animationTo.content) { pArg1 in
                withUnsafePointer(to: sec) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(AnimationPlayer.method_set_blend_time, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_blend_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_blend_time")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1958752504)!
            }
            
        }
        
    }()
    
    /// Returns the blend time (in seconds) between two animations, referenced by their keys.
    public final func getBlendTime(animationFrom: StringName, animationTo: StringName) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: animationFrom.content) { pArg0 in
            withUnsafePointer(to: animationTo.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimationPlayer.method_get_blend_time, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_default_blend_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_default_blend_time")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_default_blend_time(_ sec: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: sec) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationPlayer.method_set_default_blend_time, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_default_blend_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_default_blend_time")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_default_blend_time() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AnimationPlayer.method_get_default_blend_time, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_auto_capture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_auto_capture")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_auto_capture(_ autoCapture: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: autoCapture) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationPlayer.method_set_auto_capture, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_auto_capture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_auto_capture")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_auto_capture() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimationPlayer.method_is_auto_capture, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_auto_capture_duration: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_auto_capture_duration")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_auto_capture_duration(_ autoCaptureDuration: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: autoCaptureDuration) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationPlayer.method_set_auto_capture_duration, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_auto_capture_duration: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_auto_capture_duration")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_auto_capture_duration() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AnimationPlayer.method_get_auto_capture_duration, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_auto_capture_transition_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_auto_capture_transition_type")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1058637742)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_auto_capture_transition_type(_ autoCaptureTransitionType: Tween.TransitionType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: autoCaptureTransitionType.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationPlayer.method_set_auto_capture_transition_type, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_auto_capture_transition_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_auto_capture_transition_type")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3842314528)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_auto_capture_transition_type() -> Tween.TransitionType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AnimationPlayer.method_get_auto_capture_transition_type, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return Tween.TransitionType (rawValue: _result)!
    }
    
    fileprivate static let method_set_auto_capture_ease_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_auto_capture_ease_type")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1208105857)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_auto_capture_ease_type(_ autoCaptureEaseType: Tween.EaseType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: autoCaptureEaseType.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationPlayer.method_set_auto_capture_ease_type, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_auto_capture_ease_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_auto_capture_ease_type")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 631880200)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_auto_capture_ease_type() -> Tween.EaseType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AnimationPlayer.method_get_auto_capture_ease_type, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return Tween.EaseType (rawValue: _result)!
    }
    
    fileprivate static let method_play: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("play")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3118260607)!
            }
            
        }
        
    }()
    
    /// Plays the animation with key `name`. Custom blend times and speed can be set.
    /// 
    /// The `fromEnd` option only affects when switching to a new animation track, or if the same track but at the start or end. It does not affect resuming playback that was paused in the middle of an animation. If `customSpeed` is negative and `fromEnd` is `true`, the animation will play backwards (which is equivalent to calling ``playBackwards(name:customBlend:)``).
    /// 
    /// The ``AnimationPlayer`` keeps track of its current or last played animation with ``assignedAnimation``. If this method is called with that same animation `name`, or with no `name` parameter, the assigned animation will resume playing if it was paused.
    /// 
    /// > Note: The animation will be updated the next time the ``AnimationPlayer`` is processed. If other variables are updated at the same time this is called, they may be updated too early. To perform the update immediately, call `advance(0)`.
    /// 
    public final func play(name: StringName = StringName (""), customBlend: Double = -1, customSpeed: Double = 1.0, fromEnd: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: customBlend) { pArg1 in
                withUnsafePointer(to: customSpeed) { pArg2 in
                    withUnsafePointer(to: fromEnd) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(AnimationPlayer.method_play, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_play_section_with_markers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("play_section_with_markers")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1421431412)!
            }
            
        }
        
    }()
    
    /// Plays the animation with key `name` and the section starting from `startMarker` and ending on `endMarker`.
    /// 
    /// If the start marker is empty, the section starts from the beginning of the animation. If the end marker is empty, the section ends on the end of the animation. See also ``play(name:customBlend:customSpeed:fromEnd:)``.
    /// 
    public final func playSectionWithMarkers(name: StringName = StringName (""), startMarker: StringName = StringName (""), endMarker: StringName = StringName (""), customBlend: Double = -1, customSpeed: Double = 1.0, fromEnd: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: startMarker.content) { pArg1 in
                withUnsafePointer(to: endMarker.content) { pArg2 in
                    withUnsafePointer(to: customBlend) { pArg3 in
                        withUnsafePointer(to: customSpeed) { pArg4 in
                            withUnsafePointer(to: fromEnd) { pArg5 in
                                withUnsafePointer(to: UnsafeRawPointersN6(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5)) { pArgs in
                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 6) { pArgs in
                                        gi.object_method_bind_ptrcall(AnimationPlayer.method_play_section_with_markers, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_play_section: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("play_section")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 284774635)!
            }
            
        }
        
    }()
    
    /// Plays the animation with key `name` and the section starting from `startTime` and ending on `endTime`. See also ``play(name:customBlend:customSpeed:fromEnd:)``.
    /// 
    /// Setting `startTime` to a value outside the range of the animation means the start of the animation will be used instead, and setting `endTime` to a value outside the range of the animation means the end of the animation will be used instead. `startTime` cannot be equal to `endTime`.
    /// 
    public final func playSection(name: StringName = StringName (""), startTime: Double = -1, endTime: Double = -1, customBlend: Double = -1, customSpeed: Double = 1.0, fromEnd: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: startTime) { pArg1 in
                withUnsafePointer(to: endTime) { pArg2 in
                    withUnsafePointer(to: customBlend) { pArg3 in
                        withUnsafePointer(to: customSpeed) { pArg4 in
                            withUnsafePointer(to: fromEnd) { pArg5 in
                                withUnsafePointer(to: UnsafeRawPointersN6(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5)) { pArgs in
                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 6) { pArgs in
                                        gi.object_method_bind_ptrcall(AnimationPlayer.method_play_section, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_play_backwards: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("play_backwards")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2787282401)!
            }
            
        }
        
    }()
    
    /// Plays the animation with key `name` in reverse.
    /// 
    /// This method is a shorthand for ``play(name:customBlend:customSpeed:fromEnd:)`` with `custom_speed = -1.0` and `from_end = true`, so see its description for more information.
    /// 
    public final func playBackwards(name: StringName = StringName (""), customBlend: Double = -1) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: customBlend) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimationPlayer.method_play_backwards, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_play_section_with_markers_backwards: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("play_section_with_markers_backwards")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 910195100)!
            }
            
        }
        
    }()
    
    /// Plays the animation with key `name` and the section starting from `startMarker` and ending on `endMarker` in reverse.
    /// 
    /// This method is a shorthand for ``playSectionWithMarkers(name:startMarker:endMarker:customBlend:customSpeed:fromEnd:)`` with `custom_speed = -1.0` and `from_end = true`, see its description for more information.
    /// 
    public final func playSectionWithMarkersBackwards(name: StringName = StringName (""), startMarker: StringName = StringName (""), endMarker: StringName = StringName (""), customBlend: Double = -1) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: startMarker.content) { pArg1 in
                withUnsafePointer(to: endMarker.content) { pArg2 in
                    withUnsafePointer(to: customBlend) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(AnimationPlayer.method_play_section_with_markers_backwards, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_play_section_backwards: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("play_section_backwards")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 831955981)!
            }
            
        }
        
    }()
    
    /// Plays the animation with key `name` and the section starting from `startTime` and ending on `endTime` in reverse.
    /// 
    /// This method is a shorthand for ``playSection(name:startTime:endTime:customBlend:customSpeed:fromEnd:)`` with `custom_speed = -1.0` and `from_end = true`, see its description for more information.
    /// 
    public final func playSectionBackwards(name: StringName = StringName (""), startTime: Double = -1, endTime: Double = -1, customBlend: Double = -1) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: startTime) { pArg1 in
                withUnsafePointer(to: endTime) { pArg2 in
                    withUnsafePointer(to: customBlend) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(AnimationPlayer.method_play_section_backwards, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_play_with_capture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("play_with_capture")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1572969103)!
            }
            
        }
        
    }()
    
    /// See also ``AnimationMixer/capture(name:duration:transType:easeType:)``.
    /// 
    /// You can use this method to use more detailed options for capture than those performed by ``playbackAutoCapture``. When ``playbackAutoCapture`` is `false`, this method is almost the same as the following:
    /// 
    /// If `name` is blank, it specifies ``assignedAnimation``.
    /// 
    /// If `duration` is a negative value, the duration is set to the interval between the current position and the first key, when `fromEnd` is `true`, uses the interval between the current position and the last key instead.
    /// 
    /// > Note: The `duration` takes ``speedScale`` into account, but `customSpeed` does not, because the capture cache is interpolated with the blend result and the result may contain multiple animations.
    /// 
    public final func playWithCapture(name: StringName = StringName (""), duration: Double = -1.0, customBlend: Double = -1, customSpeed: Double = 1.0, fromEnd: Bool = false, transType: Tween.TransitionType = .linear, easeType: Tween.EaseType = .`in`) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: duration) { pArg1 in
                withUnsafePointer(to: customBlend) { pArg2 in
                    withUnsafePointer(to: customSpeed) { pArg3 in
                        withUnsafePointer(to: fromEnd) { pArg4 in
                            withUnsafePointer(to: transType.rawValue) { pArg5 in
                                withUnsafePointer(to: easeType.rawValue) { pArg6 in
                                    withUnsafePointer(to: UnsafeRawPointersN7(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6)) { pArgs in
                                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 7) { pArgs in
                                            gi.object_method_bind_ptrcall(AnimationPlayer.method_play_with_capture, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_pause: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("pause")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Pauses the currently playing animation. The ``currentAnimationPosition`` will be kept and calling ``play(name:customBlend:customSpeed:fromEnd:)`` or ``playBackwards(name:customBlend:)`` without arguments or with the same animation name as ``assignedAnimation`` will resume the animation.
    /// 
    /// See also ``stop(keepState:)``.
    /// 
    public final func pause() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(AnimationPlayer.method_pause, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_stop: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("stop")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 107499316)!
            }
            
        }
        
    }()
    
    /// Stops the currently playing animation. The animation position is reset to `0` and the `custom_speed` is reset to `1.0`. See also ``pause()``.
    /// 
    /// If `keepState` is `true`, the animation state is not updated visually.
    /// 
    /// > Note: The method / audio / animation playback tracks will not be processed by this method.
    /// 
    public final func stop(keepState: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: keepState) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationPlayer.method_stop, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_playing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_playing")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if an animation is currently playing (even if ``speedScale`` and/or `custom_speed` are `0`).
    public final func isPlaying() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimationPlayer.method_is_playing, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_current_animation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_current_animation")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_current_animation(_ animation: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let animation = GString(animation)
        withUnsafePointer(to: animation.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationPlayer.method_set_current_animation, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_current_animation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_current_animation")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_current_animation() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(AnimationPlayer.method_get_current_animation, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_assigned_animation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_assigned_animation")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_assigned_animation(_ animation: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let animation = GString(animation)
        withUnsafePointer(to: animation.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationPlayer.method_set_assigned_animation, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_assigned_animation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_assigned_animation")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_assigned_animation() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(AnimationPlayer.method_get_assigned_animation, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_queue: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("queue")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    /// Queues an animation for playback once the current animation and all previously queued animations are done.
    /// 
    /// > Note: If a looped animation is currently playing, the queued animation will never play unless the looped animation is stopped somehow.
    /// 
    public final func queue(name: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationPlayer.method_queue, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_queue: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_queue")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2981934095)!
            }
            
        }
        
    }()
    
    /// Returns a list of the animation keys that are currently queued to play.
    public final func getQueue() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(AnimationPlayer.method_get_queue, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_clear_queue: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_queue")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears all queued, unplayed animations.
    public final func clearQueue() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(AnimationPlayer.method_clear_queue, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_set_speed_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_speed_scale")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_speed_scale(_ speed: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: speed) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationPlayer.method_set_speed_scale, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_speed_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_speed_scale")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_speed_scale() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AnimationPlayer.method_get_speed_scale, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_playing_speed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_playing_speed")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the actual playing speed of current animation or `0` if not playing. This speed is the ``speedScale`` property multiplied by `custom_speed` argument specified when calling the ``play(name:customBlend:customSpeed:fromEnd:)`` method.
    /// 
    /// Returns a negative value if the current animation is playing backwards.
    /// 
    public final func getPlayingSpeed() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AnimationPlayer.method_get_playing_speed, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_autoplay: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_autoplay")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_autoplay(_ name: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationPlayer.method_set_autoplay, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_autoplay: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_autoplay")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_autoplay() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(AnimationPlayer.method_get_autoplay, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_movie_quit_on_finish_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_movie_quit_on_finish_enabled")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_movie_quit_on_finish_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationPlayer.method_set_movie_quit_on_finish_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_movie_quit_on_finish_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_movie_quit_on_finish_enabled")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_movie_quit_on_finish_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimationPlayer.method_is_movie_quit_on_finish_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_current_animation_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_current_animation_position")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_current_animation_position() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AnimationPlayer.method_get_current_animation_position, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_current_animation_length: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_current_animation_length")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_current_animation_length() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AnimationPlayer.method_get_current_animation_length, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_section_with_markers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_section_with_markers")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 794792241)!
            }
            
        }
        
    }()
    
    /// Changes the start and end markers of the section being played. The current playback position will be clamped within the new section. See also ``playSectionWithMarkers(name:startMarker:endMarker:customBlend:customSpeed:fromEnd:)``.
    /// 
    /// If the argument is empty, the section uses the beginning or end of the animation. If both are empty, it means that the section is not set.
    /// 
    public final func setSectionWithMarkers(startMarker: StringName = StringName (""), endMarker: StringName = StringName ("")) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: startMarker.content) { pArg0 in
            withUnsafePointer(to: endMarker.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimationPlayer.method_set_section_with_markers, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_section: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_section")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3749779719)!
            }
            
        }
        
    }()
    
    /// Changes the start and end times of the section being played. The current playback position will be clamped within the new section. See also ``playSection(name:startTime:endTime:customBlend:customSpeed:fromEnd:)``.
    public final func setSection(startTime: Double = -1, endTime: Double = -1) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: startTime) { pArg0 in
            withUnsafePointer(to: endTime) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimationPlayer.method_set_section, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_reset_section: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("reset_section")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Resets the current section if section is set.
    public final func resetSection() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(AnimationPlayer.method_reset_section, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_get_section_start_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_section_start_time")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the start time of the section currently being played.
    public final func getSectionStartTime() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AnimationPlayer.method_get_section_start_time, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_section_end_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_section_end_time")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the end time of the section currently being played.
    public final func getSectionEndTime() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AnimationPlayer.method_get_section_end_time, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_has_section: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_section")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if an animation is currently playing with section.
    public final func hasSection() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimationPlayer.method_has_section, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_seek: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("seek")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1807872683)!
            }
            
        }
        
    }()
    
    /// Seeks the animation to the `seconds` point in time (in seconds). If `update` is `true`, the animation updates too, otherwise it updates at process time. Events between the current frame and `seconds` are skipped.
    /// 
    /// If `updateOnly` is `true`, the method / audio / animation playback tracks will not be processed.
    /// 
    /// > Note: Seeking to the end of the animation doesn't emit [signal AnimationMixer.animation_finished]. If you want to skip animation and emit the signal, use ``AnimationMixer/advance(delta:)``.
    /// 
    public final func seek(seconds: Double, update: Bool = false, updateOnly: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: seconds) { pArg0 in
            withUnsafePointer(to: update) { pArg1 in
                withUnsafePointer(to: updateOnly) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(AnimationPlayer.method_seek, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_process_callback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_process_callback")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1663839457)!
            }
            
        }
        
    }()
    
    /// Sets the process notification in which to update animations.
    public final func setProcessCallback(mode: AnimationPlayer.AnimationProcessCallback) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationPlayer.method_set_process_callback, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_process_callback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_process_callback")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4207496604)!
            }
            
        }
        
    }()
    
    /// Returns the process notification in which to update animations.
    public final func getProcessCallback() -> AnimationPlayer.AnimationProcessCallback {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AnimationPlayer.method_get_process_callback, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return AnimationPlayer.AnimationProcessCallback (rawValue: _result)!
    }
    
    fileprivate static let method_set_method_call_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_method_call_mode")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3413514846)!
            }
            
        }
        
    }()
    
    /// Sets the call mode used for "Call Method" tracks.
    public final func setMethodCallMode(_ mode: AnimationPlayer.AnimationMethodCallMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationPlayer.method_set_method_call_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_method_call_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_method_call_mode")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3583380054)!
            }
            
        }
        
    }()
    
    /// Returns the call mode used for "Call Method" tracks.
    public final func getMethodCallMode() -> AnimationPlayer.AnimationMethodCallMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AnimationPlayer.method_get_method_call_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return AnimationPlayer.AnimationMethodCallMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_root: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_root")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    /// Sets the node which node path references will travel from.
    public final func setRoot(path: NodePath) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationPlayer.method_set_root, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_root: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_root")
        return withUnsafePointer(to: &AnimationPlayer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    /// Returns the node which node path references will travel from.
    public final func getRoot() -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(AnimationPlayer.method_get_root, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    // Signals 
    /// Emitted when ``currentAnimation`` changes.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.currentAnimationChanged.connect { name in
    ///    print ("caught signal")
    /// }
    /// ```
    public var currentAnimationChanged: SignalWithArguments<String> { SignalWithArguments<String> (target: self, signalName: "current_animation_changed") }
    
    /// Emitted when a queued animation plays after the previous animation finished. See also ``AnimationPlayer/queue(name:)``.
    /// 
    /// > Note: The signal is not emitted when the animation is changed via ``AnimationPlayer/play(name:customBlend:customSpeed:fromEnd:)`` or by an ``AnimationTree``.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.animationChanged.connect { oldName, newName in
    ///    print ("caught signal")
    /// }
    /// ```
    public var animationChanged: SignalWithArguments<StringName, StringName> { SignalWithArguments<StringName, StringName> (target: self, signalName: "animation_changed") }
    
}

