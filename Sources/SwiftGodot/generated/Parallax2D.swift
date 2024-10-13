// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A node used to create a parallax scrolling background.
/// 
/// A ``Parallax2D`` is used to create a parallax effect. It can move at a different speed relative to the camera movement using ``scrollScale``. This creates an illusion of depth in a 2D game. If manual scrolling is desired, the ``Camera2D`` position can be ignored with ``ignoreCameraScroll``.
/// 
/// > Note: Any changes to this node's position made after it enters the scene tree will be overridden if ``ignoreCameraScroll`` is `false` or ``screenOffset`` is modified.
/// 
open class Parallax2D: Node2D {
    override open class var godotClassName: StringName { "Parallax2D" }
    
    /* Properties */
    
    /// Multiplier to the final ``Parallax2D``'s offset. Can be used to simulate distance from the camera.
    /// 
    /// For example, a value of `1` scrolls at the same speed as the camera. A value greater than `1` scrolls faster, making objects appear closer. Less than `1` scrolls slower, making objects appear further, and a value of `0` stops the objects completely.
    /// 
    final public var scrollScale: Vector2 {
        get {
            return get_scroll_scale ()
        }
        
        set {
            set_scroll_scale (newValue)
        }
        
    }
    
    /// The ``Parallax2D``'s offset. Similar to ``screenOffset`` and ``Node2D/position``, but will not be overridden.
    /// 
    /// > Note: Values will loop if ``repeatSize`` is set higher than `0`.
    /// 
    final public var scrollOffset: Vector2 {
        get {
            return get_scroll_offset ()
        }
        
        set {
            set_scroll_offset (newValue)
        }
        
    }
    
    /// Repeats the ``Texture2D`` of each of this node's children and offsets them by this value. When scrolling, the node's position loops, giving the illusion of an infinite scrolling background if the values are larger than the screen size. If an axis is set to `0`, the ``Texture2D`` will not be repeated.
    final public var repeatSize: Vector2 {
        get {
            return get_repeat_size ()
        }
        
        set {
            set_repeat_size (newValue)
        }
        
    }
    
    /// Velocity at which the offset scrolls automatically, in pixels per second.
    final public var autoscroll: Vector2 {
        get {
            return get_autoscroll ()
        }
        
        set {
            set_autoscroll (newValue)
        }
        
    }
    
    /// Overrides the amount of times the texture repeats. Each texture copy spreads evenly from the original by ``repeatSize``. Useful for when zooming out with a camera.
    final public var repeatTimes: Int32 {
        get {
            return get_repeat_times ()
        }
        
        set {
            set_repeat_times (newValue)
        }
        
    }
    
    /// Top-left limits for scrolling to begin. If the camera is outside of this limit, the ``Parallax2D`` stops scrolling. Must be lower than ``limitEnd`` minus the viewport size to work.
    final public var limitBegin: Vector2 {
        get {
            return get_limit_begin ()
        }
        
        set {
            set_limit_begin (newValue)
        }
        
    }
    
    /// Bottom-right limits for scrolling to end. If the camera is outside of this limit, the ``Parallax2D`` will stop scrolling. Must be higher than ``limitBegin`` and the viewport size combined to work.
    final public var limitEnd: Vector2 {
        get {
            return get_limit_end ()
        }
        
        set {
            set_limit_end (newValue)
        }
        
    }
    
    /// If `true`, this ``Parallax2D`` is offset by the current camera's position. If the ``Parallax2D`` is in a ``CanvasLayer`` separate from the current camera, it may be desired to match the value with ``CanvasLayer/followViewportEnabled``.
    final public var followViewport: Bool {
        get {
            return get_follow_viewport ()
        }
        
        set {
            set_follow_viewport (newValue)
        }
        
    }
    
    /// If `true`, ``Parallax2D``'s position is not affected by the position of the camera.
    final public var ignoreCameraScroll: Bool {
        get {
            return is_ignore_camera_scroll ()
        }
        
        set {
            set_ignore_camera_scroll (newValue)
        }
        
    }
    
    /// Offset used to scroll this ``Parallax2D``. This value is updated automatically unless ``ignoreCameraScroll`` is `true`.
    final public var screenOffset: Vector2 {
        get {
            return get_screen_offset ()
        }
        
        set {
            set_screen_offset (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_scroll_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_scroll_scale")
        return withUnsafePointer(to: &Parallax2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_scroll_scale(_ scale: Vector2) {
        withUnsafePointer(to: scale) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Parallax2D.method_set_scroll_scale, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_scroll_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_scroll_scale")
        return withUnsafePointer(to: &Parallax2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_scroll_scale() -> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(Parallax2D.method_get_scroll_scale, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_repeat_size: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_repeat_size")
        return withUnsafePointer(to: &Parallax2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_repeat_size(_ repeatSize: Vector2) {
        withUnsafePointer(to: repeatSize) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Parallax2D.method_set_repeat_size, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_repeat_size: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_repeat_size")
        return withUnsafePointer(to: &Parallax2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_repeat_size() -> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(Parallax2D.method_get_repeat_size, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_repeat_times: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_repeat_times")
        return withUnsafePointer(to: &Parallax2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_repeat_times(_ repeatTimes: Int32) {
        withUnsafePointer(to: repeatTimes) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Parallax2D.method_set_repeat_times, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_repeat_times: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_repeat_times")
        return withUnsafePointer(to: &Parallax2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_repeat_times() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Parallax2D.method_get_repeat_times, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_autoscroll: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_autoscroll")
        return withUnsafePointer(to: &Parallax2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_autoscroll(_ autoscroll: Vector2) {
        withUnsafePointer(to: autoscroll) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Parallax2D.method_set_autoscroll, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_autoscroll: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_autoscroll")
        return withUnsafePointer(to: &Parallax2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_autoscroll() -> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(Parallax2D.method_get_autoscroll, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_scroll_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_scroll_offset")
        return withUnsafePointer(to: &Parallax2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_scroll_offset(_ offset: Vector2) {
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Parallax2D.method_set_scroll_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_scroll_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_scroll_offset")
        return withUnsafePointer(to: &Parallax2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_scroll_offset() -> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(Parallax2D.method_get_scroll_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_screen_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_screen_offset")
        return withUnsafePointer(to: &Parallax2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_screen_offset(_ offset: Vector2) {
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Parallax2D.method_set_screen_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_screen_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_screen_offset")
        return withUnsafePointer(to: &Parallax2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_screen_offset() -> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(Parallax2D.method_get_screen_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_limit_begin: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_limit_begin")
        return withUnsafePointer(to: &Parallax2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_limit_begin(_ offset: Vector2) {
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Parallax2D.method_set_limit_begin, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_limit_begin: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_limit_begin")
        return withUnsafePointer(to: &Parallax2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_limit_begin() -> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(Parallax2D.method_get_limit_begin, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_limit_end: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_limit_end")
        return withUnsafePointer(to: &Parallax2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_limit_end(_ offset: Vector2) {
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Parallax2D.method_set_limit_end, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_limit_end: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_limit_end")
        return withUnsafePointer(to: &Parallax2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_limit_end() -> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(Parallax2D.method_get_limit_end, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_follow_viewport: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_follow_viewport")
        return withUnsafePointer(to: &Parallax2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_follow_viewport(_ follow: Bool) {
        withUnsafePointer(to: follow) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Parallax2D.method_set_follow_viewport, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_follow_viewport: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_follow_viewport")
        return withUnsafePointer(to: &Parallax2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_follow_viewport() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Parallax2D.method_get_follow_viewport, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_ignore_camera_scroll: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_ignore_camera_scroll")
        return withUnsafePointer(to: &Parallax2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_ignore_camera_scroll(_ ignore: Bool) {
        withUnsafePointer(to: ignore) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Parallax2D.method_set_ignore_camera_scroll, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_ignore_camera_scroll: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_ignore_camera_scroll")
        return withUnsafePointer(to: &Parallax2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_ignore_camera_scroll() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Parallax2D.method_is_ignore_camera_scroll, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}
