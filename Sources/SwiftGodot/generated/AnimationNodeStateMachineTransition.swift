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


/// A transition within an ``AnimationNodeStateMachine`` connecting two ``AnimationRootNode``s.
/// 
/// The path generated when using ``AnimationNodeStateMachinePlayback/travel(toNode:resetOnTeleport:)`` is limited to the nodes connected by ``AnimationNodeStateMachineTransition``.
/// 
/// You can set the timing and conditions of the transition in detail.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``advanceConditionChanged``
open class AnimationNodeStateMachineTransition: Resource {
    private static var className = StringName("AnimationNodeStateMachineTransition")
    override open class var godotClassName: StringName { className }
    public enum SwitchMode: Int64, CaseIterable {
        /// Switch to the next state immediately. The current state will end and blend into the beginning of the new one.
        case immediate = 0 // SWITCH_MODE_IMMEDIATE
        /// Switch to the next state immediately, but will seek the new state to the playback position of the old state.
        case sync = 1 // SWITCH_MODE_SYNC
        /// Wait for the current state playback to end, then switch to the beginning of the next state animation.
        case atEnd = 2 // SWITCH_MODE_AT_END
    }
    
    public enum AdvanceMode: Int64, CaseIterable {
        /// Don't use this transition.
        case disabled = 0 // ADVANCE_MODE_DISABLED
        /// Only use this transition during ``AnimationNodeStateMachinePlayback/travel(toNode:resetOnTeleport:)``.
        case enabled = 1 // ADVANCE_MODE_ENABLED
        /// Automatically use this transition if the ``advanceCondition`` and ``advanceExpression`` checks are `true` (if assigned).
        case auto = 2 // ADVANCE_MODE_AUTO
    }
    
    
    /* Properties */
    
    /// The time to cross-fade between this state and the next.
    /// 
    /// > Note: ``AnimationNodeStateMachine`` transitions the current state immediately after the start of the fading. The precise remaining time can only be inferred from the main animation. When ``AnimationNodeOutput`` is considered as the most upstream, so the ``xfadeTime`` is not scaled depending on the downstream delta. See also ``AnimationNodeOneShot/fadeoutTime``.
    /// 
    final public var xfadeTime: Double {
        get {
            return get_xfade_time ()
        }
        
        set {
            set_xfade_time (newValue)
        }
        
    }
    
    /// Ease curve for better control over cross-fade between this state and the next. Should be a unit ``Curve``.
    final public var xfadeCurve: Curve? {
        get {
            return get_xfade_curve ()
        }
        
        set {
            set_xfade_curve (newValue)
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
    
    /// If `true`, the destination animation is played back from the beginning when switched.
    final public var reset: Bool {
        get {
            return is_reset ()
        }
        
        set {
            set_reset (newValue)
        }
        
    }
    
    /// Lower priority transitions are preferred when travelling through the tree via ``AnimationNodeStateMachinePlayback/travel(toNode:resetOnTeleport:)`` or ``advanceMode`` is set to ``AdvanceMode/auto``.
    final public var priority: Int32 {
        get {
            return get_priority ()
        }
        
        set {
            set_priority (newValue)
        }
        
    }
    
    /// The transition type.
    final public var switchMode: AnimationNodeStateMachineTransition.SwitchMode {
        get {
            return get_switch_mode ()
        }
        
        set {
            set_switch_mode (newValue)
        }
        
    }
    
    /// Determines whether the transition should be disabled, enabled when using ``AnimationNodeStateMachinePlayback/travel(toNode:resetOnTeleport:)``, or traversed automatically if the ``advanceCondition`` and ``advanceExpression`` checks are `true` (if assigned).
    final public var advanceMode: AnimationNodeStateMachineTransition.AdvanceMode {
        get {
            return get_advance_mode ()
        }
        
        set {
            set_advance_mode (newValue)
        }
        
    }
    
    /// Turn on auto advance when this condition is set. The provided name will become a boolean parameter on the ``AnimationTree`` that can be controlled from code (see <a href="https://docs.godotengine.org/en//tutorials/animation/animation_tree.html#controlling-from-code">Using AnimationTree</a>). For example, if ``AnimationTree/treeRoot`` is an ``AnimationNodeStateMachine`` and ``advanceCondition`` is set to `"idle"`:
    /// 
    final public var advanceCondition: StringName {
        get {
            return get_advance_condition ()
        }
        
        set {
            set_advance_condition (newValue)
        }
        
    }
    
    /// Use an expression as a condition for state machine transitions. It is possible to create complex animation advance conditions for switching between states and gives much greater flexibility for creating complex state machines by directly interfacing with the script code.
    final public var advanceExpression: String {
        get {
            return get_advance_expression ()
        }
        
        set {
            set_advance_expression (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_switch_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_switch_mode")
        return withUnsafePointer(to: &AnimationNodeStateMachineTransition.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2074906633)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_switch_mode(_ mode: AnimationNodeStateMachineTransition.SwitchMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeStateMachineTransition.method_set_switch_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_switch_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_switch_mode")
        return withUnsafePointer(to: &AnimationNodeStateMachineTransition.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2138562085)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_switch_mode() -> AnimationNodeStateMachineTransition.SwitchMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AnimationNodeStateMachineTransition.method_get_switch_mode, handle, nil, &_result)
        return AnimationNodeStateMachineTransition.SwitchMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_advance_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_advance_mode")
        return withUnsafePointer(to: &AnimationNodeStateMachineTransition.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1210869868)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_advance_mode(_ mode: AnimationNodeStateMachineTransition.AdvanceMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeStateMachineTransition.method_set_advance_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_advance_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_advance_mode")
        return withUnsafePointer(to: &AnimationNodeStateMachineTransition.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 61101689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_advance_mode() -> AnimationNodeStateMachineTransition.AdvanceMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AnimationNodeStateMachineTransition.method_get_advance_mode, handle, nil, &_result)
        return AnimationNodeStateMachineTransition.AdvanceMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_advance_condition: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_advance_condition")
        return withUnsafePointer(to: &AnimationNodeStateMachineTransition.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_advance_condition(_ name: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeStateMachineTransition.method_set_advance_condition, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_advance_condition: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_advance_condition")
        return withUnsafePointer(to: &AnimationNodeStateMachineTransition.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_advance_condition() -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(AnimationNodeStateMachineTransition.method_get_advance_condition, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_xfade_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_xfade_time")
        return withUnsafePointer(to: &AnimationNodeStateMachineTransition.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_xfade_time(_ secs: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: secs) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeStateMachineTransition.method_set_xfade_time, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_xfade_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_xfade_time")
        return withUnsafePointer(to: &AnimationNodeStateMachineTransition.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_xfade_time() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AnimationNodeStateMachineTransition.method_get_xfade_time, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_xfade_curve: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_xfade_curve")
        return withUnsafePointer(to: &AnimationNodeStateMachineTransition.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 270443179)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_xfade_curve(_ curve: Curve?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: curve?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeStateMachineTransition.method_set_xfade_curve, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_xfade_curve: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_xfade_curve")
        return withUnsafePointer(to: &AnimationNodeStateMachineTransition.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2460114913)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_xfade_curve() -> Curve? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(AnimationNodeStateMachineTransition.method_get_xfade_curve, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_break_loop_at_end: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_break_loop_at_end")
        return withUnsafePointer(to: &AnimationNodeStateMachineTransition.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_break_loop_at_end(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeStateMachineTransition.method_set_break_loop_at_end, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_loop_broken_at_end: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_loop_broken_at_end")
        return withUnsafePointer(to: &AnimationNodeStateMachineTransition.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_loop_broken_at_end() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimationNodeStateMachineTransition.method_is_loop_broken_at_end, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_reset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_reset")
        return withUnsafePointer(to: &AnimationNodeStateMachineTransition.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_reset(_ reset: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: reset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeStateMachineTransition.method_set_reset, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_reset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_reset")
        return withUnsafePointer(to: &AnimationNodeStateMachineTransition.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_reset() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimationNodeStateMachineTransition.method_is_reset, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_priority: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_priority")
        return withUnsafePointer(to: &AnimationNodeStateMachineTransition.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_priority(_ priority: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: priority) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeStateMachineTransition.method_set_priority, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_priority: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_priority")
        return withUnsafePointer(to: &AnimationNodeStateMachineTransition.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_priority() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AnimationNodeStateMachineTransition.method_get_priority, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_advance_expression: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_advance_expression")
        return withUnsafePointer(to: &AnimationNodeStateMachineTransition.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_advance_expression(_ text: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let text = GString(text)
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeStateMachineTransition.method_set_advance_expression, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_advance_expression: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_advance_expression")
        return withUnsafePointer(to: &AnimationNodeStateMachineTransition.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_advance_expression() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(AnimationNodeStateMachineTransition.method_get_advance_expression, handle, nil, &_result.content)
        return _result.description
    }
    
    // Signals 
    /// Emitted when ``advanceCondition`` is changed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.advanceConditionChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var advanceConditionChanged: SimpleSignal { SimpleSignal (target: self, signalName: "advance_condition_changed") }
    
}

