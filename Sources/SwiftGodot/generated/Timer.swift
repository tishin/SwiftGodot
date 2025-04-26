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


/// A countdown timer.
/// 
/// The ``Timer`` node is a countdown timer and is the simplest way to handle time-based logic in the engine. When a timer reaches the end of its ``waitTime``, it will emit the [signal timeout] signal.
/// 
/// After a timer enters the tree, it can be manually started with ``start(timeSec:)``. A timer node is also started automatically if ``autostart`` is `true`.
/// 
/// Without requiring much code, a timer node can be added and configured in the editor. The [signal timeout] signal it emits can also be connected through the Node dock in the editor:
/// 
/// > Note: To create a one-shot timer without instantiating a node, use ``SceneTree/createTimer(timeSec:processAlways:processInPhysics:ignoreTimeScale:)``.
/// 
/// > Note: Timers are affected by ``Engine/timeScale``. The higher the time scale, the sooner timers will end. How often a timer processes may depend on the framerate or ``Engine/physicsTicksPerSecond``.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``timeout``
open class Timer: Node {
    private static var className = StringName("Timer")
    override open class var godotClassName: StringName { className }
    public enum TimerProcessCallback: Int64, CaseIterable {
        /// Update the timer every physics process frame (see ``Node/notificationInternalPhysicsProcess``).
        case physics = 0 // TIMER_PROCESS_PHYSICS
        /// Update the timer every process (rendered) frame (see ``Node/notificationInternalProcess``).
        case idle = 1 // TIMER_PROCESS_IDLE
    }
    
    
    /* Properties */
    
    /// Specifies when the timer is updated during the main loop (see ``Timer/TimerProcessCallback``).
    final public var processCallback: Timer.TimerProcessCallback {
        get {
            return get_timer_process_callback ()
        }
        
        set {
            set_timer_process_callback (newValue)
        }
        
    }
    
    /// The time required for the timer to end, in seconds. This property can also be set every time ``start(timeSec:)`` is called.
    /// 
    /// > Note: Timers can only process once per physics or process frame (depending on the ``processCallback``). An unstable framerate may cause the timer to end inconsistently, which is especially noticeable if the wait time is lower than roughly `0.05` seconds. For very short timers, it is recommended to write your own code instead of using a ``Timer`` node. Timers are also affected by ``Engine/timeScale``.
    /// 
    final public var waitTime: Double {
        get {
            return get_wait_time ()
        }
        
        set {
            set_wait_time (newValue)
        }
        
    }
    
    /// If `true`, the timer will stop after reaching the end. Otherwise, as by default, the timer will automatically restart.
    final public var oneShot: Bool {
        get {
            return is_one_shot ()
        }
        
        set {
            set_one_shot (newValue)
        }
        
    }
    
    /// If `true`, the timer will start immediately when it enters the scene tree.
    /// 
    /// > Note: After the timer enters the tree, this property is automatically set to `false`.
    /// 
    /// > Note: This property does nothing when the timer is running in the editor.
    /// 
    final public var autostart: Bool {
        get {
            return has_autostart ()
        }
        
        set {
            set_autostart (newValue)
        }
        
    }
    
    /// If `true`, the timer is paused. A paused timer does not process until this property is set back to `false`, even when ``start(timeSec:)`` is called.
    final public var paused: Bool {
        get {
            return is_paused ()
        }
        
        set {
            set_paused (newValue)
        }
        
    }
    
    /// If `true`, the timer will ignore ``Engine/timeScale`` and update with the real, elapsed time.
    final public var ignoreTimeScale: Bool {
        get {
            return is_ignoring_time_scale ()
        }
        
        set {
            set_ignore_time_scale (newValue)
        }
        
    }
    
    /// The timer's remaining time in seconds. This is always `0` if the timer is stopped.
    /// 
    /// > Note: This property is read-only and cannot be modified. It is based on ``waitTime``.
    /// 
    final public var timeLeft: Double {
        get {
            return get_time_left ()
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_wait_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_wait_time")
        return withUnsafePointer(to: &Timer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_wait_time(_ timeSec: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: timeSec) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Timer.method_set_wait_time, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_wait_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_wait_time")
        return withUnsafePointer(to: &Timer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_wait_time() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Timer.method_get_wait_time, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_one_shot: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_one_shot")
        return withUnsafePointer(to: &Timer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_one_shot(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Timer.method_set_one_shot, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_one_shot: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_one_shot")
        return withUnsafePointer(to: &Timer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_one_shot() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Timer.method_is_one_shot, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_autostart: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_autostart")
        return withUnsafePointer(to: &Timer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_autostart(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Timer.method_set_autostart, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_has_autostart: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_autostart")
        return withUnsafePointer(to: &Timer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func has_autostart() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Timer.method_has_autostart, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_start: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("start")
        return withUnsafePointer(to: &Timer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1392008558)!
            }
            
        }
        
    }()
    
    /// Starts the timer, or resets the timer if it was started already. Fails if the timer is not inside the tree. If `timeSec` is greater than `0`, this value is used for the ``waitTime``.
    /// 
    /// > Note: This method does not resume a paused timer. See ``paused``.
    /// 
    public final func start(timeSec: Double = -1) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: timeSec) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Timer.method_start, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_stop: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("stop")
        return withUnsafePointer(to: &Timer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Stops the timer.
    public final func stop() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Timer.method_stop, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_set_paused: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_paused")
        return withUnsafePointer(to: &Timer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_paused(_ paused: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: paused) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Timer.method_set_paused, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_paused: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_paused")
        return withUnsafePointer(to: &Timer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_paused() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Timer.method_is_paused, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_ignore_time_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_ignore_time_scale")
        return withUnsafePointer(to: &Timer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_ignore_time_scale(_ ignore: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: ignore) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Timer.method_set_ignore_time_scale, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_ignoring_time_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_ignoring_time_scale")
        return withUnsafePointer(to: &Timer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_ignoring_time_scale() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Timer.method_is_ignoring_time_scale, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_stopped: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_stopped")
        return withUnsafePointer(to: &Timer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the timer is stopped or has not started.
    public final func isStopped() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Timer.method_is_stopped, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_time_left: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_time_left")
        return withUnsafePointer(to: &Timer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_time_left() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Timer.method_get_time_left, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_timer_process_callback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_timer_process_callback")
        return withUnsafePointer(to: &Timer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3469495063)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_timer_process_callback(_ callback: Timer.TimerProcessCallback) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: callback.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Timer.method_set_timer_process_callback, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_timer_process_callback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_timer_process_callback")
        return withUnsafePointer(to: &Timer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2672570227)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_timer_process_callback() -> Timer.TimerProcessCallback {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(Timer.method_get_timer_process_callback, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return Timer.TimerProcessCallback (rawValue: _result)!
    }
    
    // Signals 
    /// Emitted when the timer reaches the end.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.timeout.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var timeout: SimpleSignal { SimpleSignal (target: self, signalName: "timeout") }
    
}

