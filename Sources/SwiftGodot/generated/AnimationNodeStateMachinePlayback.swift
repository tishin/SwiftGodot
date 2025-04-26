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


/// Provides playback control for an ``AnimationNodeStateMachine``.
/// 
/// Allows control of ``AnimationTree`` state machines created with ``AnimationNodeStateMachine``. Retrieve with `$AnimationTree.get("parameters/playback")`.
/// 
open class AnimationNodeStateMachinePlayback: Resource {
    private static var className = StringName("AnimationNodeStateMachinePlayback")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_travel: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("travel")
        return withUnsafePointer(to: &AnimationNodeStateMachinePlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3823612587)!
            }
            
        }
        
    }()
    
    /// Transitions from the current state to another one, following the shortest path.
    /// 
    /// If the path does not connect from the current state, the animation will play after the state teleports.
    /// 
    /// If `resetOnTeleport` is `true`, the animation is played from the beginning when the travel cause a teleportation.
    /// 
    public final func travel(toNode: StringName, resetOnTeleport: Bool = true) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: toNode.content) { pArg0 in
            withUnsafePointer(to: resetOnTeleport) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimationNodeStateMachinePlayback.method_travel, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_start: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("start")
        return withUnsafePointer(to: &AnimationNodeStateMachinePlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3823612587)!
            }
            
        }
        
    }()
    
    /// Starts playing the given animation.
    /// 
    /// If `reset` is `true`, the animation is played from the beginning.
    /// 
    public final func start(node: StringName, reset: Bool = true) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: node.content) { pArg0 in
            withUnsafePointer(to: reset) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimationNodeStateMachinePlayback.method_start, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_next: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("next")
        return withUnsafePointer(to: &AnimationNodeStateMachinePlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// If there is a next path by travel or auto advance, immediately transitions from the current state to the next state.
    public final func next() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(AnimationNodeStateMachinePlayback.method_next, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_stop: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("stop")
        return withUnsafePointer(to: &AnimationNodeStateMachinePlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Stops the currently playing animation.
    public final func stop() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(AnimationNodeStateMachinePlayback.method_stop, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_is_playing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_playing")
        return withUnsafePointer(to: &AnimationNodeStateMachinePlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if an animation is playing.
    public final func isPlaying() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimationNodeStateMachinePlayback.method_is_playing, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_current_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_current_node")
        return withUnsafePointer(to: &AnimationNodeStateMachinePlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    /// Returns the currently playing animation state.
    /// 
    /// > Note: When using a cross-fade, the current state changes to the next state immediately after the cross-fade begins.
    /// 
    public final func getCurrentNode() -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(AnimationNodeStateMachinePlayback.method_get_current_node, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_current_play_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_current_play_position")
        return withUnsafePointer(to: &AnimationNodeStateMachinePlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the playback position within the current animation state.
    public final func getCurrentPlayPosition() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AnimationNodeStateMachinePlayback.method_get_current_play_position, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_current_length: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_current_length")
        return withUnsafePointer(to: &AnimationNodeStateMachinePlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the current state length.
    /// 
    /// > Note: It is possible that any ``AnimationRootNode`` can be nodes as well as animations. This means that there can be multiple animations within a single state. Which animation length has priority depends on the nodes connected inside it. Also, if a transition does not reset, the remaining length at that point will be returned.
    /// 
    public final func getCurrentLength() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AnimationNodeStateMachinePlayback.method_get_current_length, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_fading_from_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_fading_from_node")
        return withUnsafePointer(to: &AnimationNodeStateMachinePlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    /// Returns the starting state of currently fading animation.
    public final func getFadingFromNode() -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(AnimationNodeStateMachinePlayback.method_get_fading_from_node, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_travel_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_travel_path")
        return withUnsafePointer(to: &AnimationNodeStateMachinePlayback.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns the current travel path as computed internally by the A* algorithm.
    public final func getTravelPath() -> TypedArray<StringName> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(AnimationNodeStateMachinePlayback.method_get_travel_path, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<StringName>(takingOver: _result)
    }
    
}

