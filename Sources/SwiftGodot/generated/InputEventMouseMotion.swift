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


/// Represents a mouse or a pen movement.
/// 
/// Stores information about a mouse or a pen motion. This includes relative position, absolute position, and velocity. See ``Node/_input(event:)``.
/// 
/// > Note: By default, this event is only emitted once per frame rendered at most. If you need more precise input reporting, set ``Input/useAccumulatedInput`` to `false` to make events emitted as often as possible. If you use InputEventMouseMotion to draw lines, consider using ``Geometry2D/bresenhamLine(from:to:)`` as well to avoid visible gaps in lines if the user is moving the mouse quickly.
/// 
/// > Note: This event may be emitted even when the mouse hasn't moved, either by the operating system or by Godot itself. If you really need to know if the mouse has moved (e.g. to suppress displaying a tooltip), you should check that `relative.is_zero_approx()` is `false`.
/// 
open class InputEventMouseMotion: InputEventMouse {
    private static var className = StringName("InputEventMouseMotion")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Represents the angles of tilt of the pen. Positive X-coordinate value indicates a tilt to the right. Positive Y-coordinate value indicates a tilt toward the user. Ranges from `-1.0` to `1.0` for both axes.
    final public var tilt: Vector2 {
        get {
            return get_tilt ()
        }
        
        set {
            set_tilt (newValue)
        }
        
    }
    
    /// Represents the pressure the user puts on the pen. Ranges from `0.0` to `1.0`.
    final public var pressure: Double {
        get {
            return get_pressure ()
        }
        
        set {
            set_pressure (newValue)
        }
        
    }
    
    /// Returns `true` when using the eraser end of a stylus pen.
    /// 
    /// > Note: This property is implemented on Linux, macOS and Windows.
    /// 
    final public var penInverted: Bool {
        get {
            return get_pen_inverted ()
        }
        
        set {
            set_pen_inverted (newValue)
        }
        
    }
    
    /// The mouse position relative to the previous position (position at the last frame).
    /// 
    /// > Note: Since ``InputEventMouseMotion`` may only be emitted when the mouse moves, it is not possible to reliably detect when the mouse has stopped moving by checking this property. A separate, short timer may be necessary.
    /// 
    /// > Note: ``relative`` is automatically scaled according to the content scale factor, which is defined by the project's stretch mode settings. This means mouse sensitivity will appear different depending on resolution when using ``relative`` in a script that handles mouse aiming with the ``Input/MouseMode/captured`` mouse mode. To avoid this, use ``screenRelative`` instead.
    /// 
    final public var relative: Vector2 {
        get {
            return get_relative ()
        }
        
        set {
            set_relative (newValue)
        }
        
    }
    
    /// The unscaled mouse position relative to the previous position in the coordinate system of the screen (position at the last frame).
    /// 
    /// > Note: Since ``InputEventMouseMotion`` may only be emitted when the mouse moves, it is not possible to reliably detect when the mouse has stopped moving by checking this property. A separate, short timer may be necessary.
    /// 
    /// > Note: This coordinate is _not_ scaled according to the content scale factor or calls to ``InputEvent/xformedBy(xform:localOfs:)``. This should be preferred over ``relative`` for mouse aiming when using the ``Input/MouseMode/captured`` mouse mode, regardless of the project's stretch mode.
    /// 
    final public var screenRelative: Vector2 {
        get {
            return get_screen_relative ()
        }
        
        set {
            set_screen_relative (newValue)
        }
        
    }
    
    /// The mouse velocity in pixels per second.
    /// 
    /// > Note: ``velocity`` is automatically scaled according to the content scale factor, which is defined by the project's stretch mode settings. This means mouse sensitivity will appear different depending on resolution when using ``velocity`` in a script that handles mouse aiming with the ``Input/MouseMode/captured`` mouse mode. To avoid this, use ``screenVelocity`` instead.
    /// 
    final public var velocity: Vector2 {
        get {
            return get_velocity ()
        }
        
        set {
            set_velocity (newValue)
        }
        
    }
    
    /// The unscaled mouse velocity in pixels per second in screen coordinates. This velocity is _not_ scaled according to the content scale factor or calls to ``InputEvent/xformedBy(xform:localOfs:)``. This should be preferred over ``velocity`` for mouse aiming when using the ``Input/MouseMode/captured`` mouse mode, regardless of the project's stretch mode.
    final public var screenVelocity: Vector2 {
        get {
            return get_screen_velocity ()
        }
        
        set {
            set_screen_velocity (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_tilt: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tilt")
        return withUnsafePointer(to: &InputEventMouseMotion.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tilt(_ tilt: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: tilt) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventMouseMotion.method_set_tilt, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tilt: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tilt")
        return withUnsafePointer(to: &InputEventMouseMotion.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tilt() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(InputEventMouseMotion.method_get_tilt, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_pressure: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_pressure")
        return withUnsafePointer(to: &InputEventMouseMotion.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pressure(_ pressure: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pressure) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventMouseMotion.method_set_pressure, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_pressure: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_pressure")
        return withUnsafePointer(to: &InputEventMouseMotion.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pressure() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(InputEventMouseMotion.method_get_pressure, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_pen_inverted: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_pen_inverted")
        return withUnsafePointer(to: &InputEventMouseMotion.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pen_inverted(_ penInverted: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: penInverted) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventMouseMotion.method_set_pen_inverted, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_pen_inverted: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_pen_inverted")
        return withUnsafePointer(to: &InputEventMouseMotion.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pen_inverted() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(InputEventMouseMotion.method_get_pen_inverted, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_relative: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_relative")
        return withUnsafePointer(to: &InputEventMouseMotion.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_relative(_ relative: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: relative) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventMouseMotion.method_set_relative, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_relative: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_relative")
        return withUnsafePointer(to: &InputEventMouseMotion.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_relative() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(InputEventMouseMotion.method_get_relative, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_screen_relative: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_screen_relative")
        return withUnsafePointer(to: &InputEventMouseMotion.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_screen_relative(_ relative: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: relative) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventMouseMotion.method_set_screen_relative, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_screen_relative: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_screen_relative")
        return withUnsafePointer(to: &InputEventMouseMotion.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_screen_relative() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(InputEventMouseMotion.method_get_screen_relative, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_velocity")
        return withUnsafePointer(to: &InputEventMouseMotion.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_velocity(_ velocity: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: velocity) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventMouseMotion.method_set_velocity, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_velocity")
        return withUnsafePointer(to: &InputEventMouseMotion.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_velocity() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(InputEventMouseMotion.method_get_velocity, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_screen_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_screen_velocity")
        return withUnsafePointer(to: &InputEventMouseMotion.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_screen_velocity(_ velocity: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: velocity) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventMouseMotion.method_set_screen_velocity, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_screen_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_screen_velocity")
        return withUnsafePointer(to: &InputEventMouseMotion.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_screen_velocity() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(InputEventMouseMotion.method_get_screen_velocity, handle, nil, &_result)
        return _result
    }
    
}

